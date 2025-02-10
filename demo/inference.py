# Copyright 2021 ETH Zurich and University of Bologna.
# Licensed under the Apache License, Version 2.0, see https://www.apache.org/licenses/LICENSE-2.0 for details.
# SPDX-License-Identifier: Apache-2.0
#
# Author: Viviane Potocnik <vivianep@iis.ee.ethz.ch> (ETH Zurich) 

from pickletools import uint8
import matplotlib.pyplot as plt
import numpy as np
import serial
import sys
import time
import tkinter as tk
import customtkinter as ctk
from matplotlib.figure import Figure
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from PIL import Image, ImageTk

if __name__ == '__main__':
    x_test = np.load('x_test_fmnist.npy')
    y_test = np.load('y_test_fmnist.npy').squeeze()

    ctk.set_appearance_mode("dark")
    # ctk.set_default_color_theme("dark-blue")

    classes = ["T-shirt/top","Trouser","Pullover","Dress","Coat","Sandal","Shirt","Sneaker","Bag","Ankle boot"]
    
    print(f'Loaded x with shape: {x_test.shape}')
    print(f'Loaded y with shape: {y_test.shape}')

    ser = serial.Serial(port='COM3', baudrate=115200, timeout=3)
    # flush the serial port
    ser.flush()
    ser.flushInput()
    ser.flushOutput()

    correct_count = 0
    # define how many images from the test set to send to the MCU
    test_len = 20
    # get how many prediction we iterated over
    num_pred = 0

    for x,y in zip(x_test[:test_len], y_test[:test_len]):
        num_pred += 1
        class_idx = y
        ser.write(x.tobytes())
        time.sleep(1)
        img = ser.read(28*28)
        img = np.frombuffer(img, dtype=np.uint8)
        print("Image sent to the MCUs: \n {}".format(img))
        time.sleep(1)
        pred = ser.read(10)
        pred = np.frombuffer(pred, dtype=np.uint8)
        print(pred)
        print(f'Target: {classes[class_idx]}, Prediction (from MCU): {classes[np.argmax(pred)]}')
        if (np.argmax(pred) == class_idx):
            correct_count += 1

        root = ctk.CTk()
        root.title('Real-time inference')
        imgplot = plt.imshow(x.astype(np.uint8))
        f = Figure()
        a = f.add_subplot(111)
        a.imshow(x.astype(np.uint8))
        # store figure to file
        f.savefig('test.png')
        image = Image.open('test.png')
        photo = ImageTk.PhotoImage(image)
        root.grid_rowconfigure((0, 1, 2, 3, 4), weight=1)
        root.grid_columnconfigure((0, 1, 2, 3, 4), weight=1)
        color = '#0B8457' if (np.argmax(pred) == class_idx) else '#F24C4C'
        darkgrey = '#2D2D2D'
        yellow = '#FFC107'
        quit = '#DA0037'
        next = '#3E497A'
        next2 = '#3AB4F2'
        ctk.CTkButton(master=root, image = photo, text=None).grid(row=0, column=0, padx=(10, 5), pady=10, columnspan=2)
        # pre label should be on the left of the grid
        text_var = tk.StringVar(value=f'Prediction: {classes[np.argmax(pred)]}')
        pred_label = ctk.CTkButton(root, textvariable=text_var, font=('Helvetica', 18, 'bold'), fg_color=color, text_color='white', hover=False)
        pred_label.grid(row=1, column=0, padx=(10, 5), pady=10, columnspan=1, sticky='nsew')
        target_label = ctk.CTkButton(root, text=f'Target: {classes[class_idx]}' , font=('Helvetica', 18, 'bold'), fg_color=color, text_color='white', hover=False)
        target_label.grid(row=1, column=1, padx=(5, 10), pady=10, columnspan=1, sticky='nsew')
        # accuracy = (correct_count/test_len) * 100
        accuracy = (correct_count/num_pred) * 100
        text_var = tk.StringVar(value=f'Accuracy: {accuracy:.2f}%')
        accuracy_label = ctk.CTkButton(root, textvariable=text_var, font=('Helvetica', 18, 'bold'), fg_color=yellow, text_color=darkgrey, hover=False)
        accuracy_label.grid(row=2, column=0, padx=(10, 10), pady=10, columnspan=2, sticky='nsew')
        # add button to go to the next image
        ctk.CTkButton(master=root, text='Next', command=root.destroy, fg_color=next, font=('Helvetica', 18, 'bold'), hover_color=next2).grid(row=3, column=0, padx=(10, 5), pady=10, columnspan=2, sticky='nsew')
        ctk.CTkButton(master=root, text='Quit', command=sys.exit, fg_color=next, hover_color=quit, font=('Helvetica', 18, 'bold')).grid(row=4, column=0, padx=(10, 5), pady=10, columnspan=2, sticky='nsew')

        root.mainloop()

