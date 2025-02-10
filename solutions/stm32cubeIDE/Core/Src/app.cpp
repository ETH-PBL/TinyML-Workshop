#include "app.h"
#include "usart.h"


#include "tensorflow/lite/micro/all_ops_resolver.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_allocator.h"
#include "tensorflow/lite/micro/system_setup.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "q8fmnist.h"
#include "data.h"

/* DWT (Data Watchpoint and Trace) registers, only exists on ARM Cortex with a DWT unit */
#define KIN1_DWT_CONTROL             (*((volatile uint32_t*)0xE0001000))
  /*!< DWT Control register */
#define KIN1_DWT_CYCCNTENA_BIT       (1UL<<0)
  /*!< CYCCNTENA bit in DWT_CONTROL register */
#define KIN1_DWT_CYCCNT              (*((volatile uint32_t*)0xE0001004))
  /*!< DWT Cycle Counter register */
#define KIN1_DEMCR                   (*((volatile uint32_t*)0xE000EDFC))
  /*!< DEMCR: Debug Exception and Monitor Control Register */
#define KIN1_TRCENA_BIT              (1UL<<24)
  /*!< Trace enable bit in DEMCR register */

#define KIN1_InitCycleCounter() \
  KIN1_DEMCR |= KIN1_TRCENA_BIT
  /*!< TRCENA: Enable trace and debug block DEMCR (Debug Exception and Monitor Control Register */

#define KIN1_ResetCycleCounter() \
  KIN1_DWT_CYCCNT = 0
  /*!< Reset cycle counter */

#define KIN1_EnableCycleCounter() \
  KIN1_DWT_CONTROL |= KIN1_DWT_CYCCNTENA_BIT
  /*!< Enable cycle counter */

#define KIN1_DisableCycleCounter() \
  KIN1_DWT_CONTROL &= ~KIN1_DWT_CYCCNTENA_BIT
  /*!< Disable cycle counter */

#define KIN1_GetCycleCounter() \
  KIN1_DWT_CYCCNT
  /*!< Read cycle counter register */

tflite::ErrorReporter* error_reporter = nullptr;
const tflite::Model* nn = nullptr;
tflite::MicroInterpreter* interpreter = nullptr;
TfLiteTensor* nn_input = nullptr;
TfLiteTensor* nn_output = nullptr;
constexpr size_t kTensorArenaSize = 60*1024;
uint8_t tensor_arena[kTensorArenaSize];



// Choose one!!
#define GUI
//#define SERIAL_TERMINAL


int application(void)
{
	// Setup code
//	MicroPrintf("Hello there");
	TfLiteStatus tflite_status;
	tflite::InitializeTarget();
	// Set up logging (modify tensorflow/lite/micro/debug_log.cc)
	static tflite::MicroErrorReporter micro_error_reporter;
	error_reporter = &micro_error_reporter;

	//   Map the model into a usable data structure
	nn = tflite::GetModel(q8fmnist);
	if (nn->version() != TFLITE_SCHEMA_VERSION)
	{
		error_reporter->Report("Model version does not match Schema\n");
	}

	static tflite::AllOpsResolver micro_op_resolver;

	static tflite::MicroAllocator *micro_allocator;
	micro_allocator = tflite::MicroAllocator::Create(tensor_arena, kTensorArenaSize, error_reporter);
	// Build an interpreter to run the model with.
	static tflite::MicroInterpreter static_interpreter(
			nn, micro_op_resolver, micro_allocator, error_reporter);
	interpreter = &static_interpreter;

	// Allocate memory from the tensor_arena for the model's tensors.
	tflite_status = interpreter->AllocateTensors();
	if (tflite_status != kTfLiteOk){
		error_reporter->Report("AllocateTensors() failed\n");
	}

	TfLiteTensor* nn_input = interpreter->input(0);
	TfLiteTensor* nn_output = interpreter->output(0);


	while(1){
#ifdef GUI
		HAL_UART_Receive(&huart1, (uint8_t*)nn_input->data.int8, 28*28*1, HAL_MAX_DELAY);
		HAL_Delay(1000);
		HAL_UART_Transmit(&huart1, (uint8_t*)nn_input->data.int8, 28*28*1, HAL_MAX_DELAY);
		HAL_Delay(1000);
#endif
		uint32_t cycles; /* number of cycles */

		KIN1_InitCycleCounter(); /* enable DWT hardware */
		KIN1_ResetCycleCounter(); /* reset cycle counter */
		KIN1_EnableCycleCounter(); /* start counting */

		tflite_status = interpreter->Invoke();

		cycles = KIN1_GetCycleCounter(); /* get cycle counter */
		KIN1_DisableCycleCounter(); /* disable counting if not used any more */

		if(tflite_status != kTfLiteOk){
			error_reporter->Report("Invoke failed");
		}

#ifdef SERIAL_TERMINAL
		printf("Latency of the inference: %d", cycles);
#endif

#ifdef GUI
		// Comment this if you use the Serial
		HAL_UART_Transmit(&huart1, (uint8_t*)nn_output->data.int8, 10, HAL_MAX_DELAY);
#endif
	}
}

void DebugLog(const char* s)
{
//	return;
	HAL_UART_Transmit(&huart1, (uint8_t*)s, strlen(s), 100);
}
