%%
%% This is file `iisvlsi.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% iisvlsi.dtx  (with options: `package')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2013 by Michael Muehlberghuber
%% 
%% This file my be distributed and/or modified under the conditions of the
%% LaTeX Project Public License, either version 1.2 of this license or (at your
%% option) any later version. The latest version of this license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
\newif\if@notes
\@notesfalse
\newif\if@cadrem
\@cadremfalse
\newif\if@toolver
\@toolverfalse
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\DeclareOption{notes}{\@notestrue}
\DeclareOption{cadrem}{\@cadremfalse}
\DeclareOption{toolver}{\@toolvertrue}
\ProcessOptions\relax
\LoadClass[a4paper,titlepage]{scrartcl}
\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}
\if@notes
 \RequirePackage[colorinlistoftodos,shadow]{todonotes}
\else
 \RequirePackage[disable]{todonotes}
\fi
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{capt-of}
\RequirePackage{fancybox}
\RequirePackage{xspace}
\RequirePackage{listings}
\RequirePackage{svn-multi}
\RequirePackage{xifthen}
\RequirePackage{setspace}
\RequirePackage[hang]{footmisc}
\RequirePackage{hyperref}
\newcommand{\@linewrapchar}{\textbackslash}
\newcommand{\@cadremen}{%
 \textbf{Reminder:}\\%
 With the execution of this training you declare that you understand
 and accept the regulations about using CAE/CAD software
 installations at the ETH Zurich. These regulations can be read
 anytime at \url{\show@reglink}.
}%
\newcommand{\misspar}[1]{\textcolor{red}{\textbf{$<$#1$>$}}}
\def\@dept{Department of Information Technology and Electrical
Engineering}%
\newcommand{\setdept}[1]{\def\@dept{#1}}%
\let\dept\setdept%
\newcommand{\show@dept}{\@dept}%
\def\@course{\misspar{Specify Course Name}}%
\newcommand{\setcourse}[1]{\def\@course{#1}}%
\let\course\setcourse%
\newcommand{\show@course}{\@course}%
\def\@coursenr{\misspar{Specify Course Number}}%
\newcommand{\setcoursenr}[1]{\def\@coursenr{#1}}%
\let\coursenr\setcoursenr%
\newcommand{\show@coursenr}{\@coursenr}%
\def\@exdesc{\misspar{Specify Exercise Description}}
\newcommand{\setexdesc}[1]{\def\@exdesc{#1}}%
\let\exdesc\setexdesc%
\newcommand{\show@exdesc}{\@exdesc}%
\def\@extitle{\misspar{Specify Exercise Title}}
\newcommand{\setextitle}[1]{\def\@extitle{#1}}%
\let\extitle\setextitle%
\newcommand{\show@extitle}{\@extitle}%
\def\@lecturer{Prof. Dr. H. Kaeslin\\Dr. N. Felber}%
\newcommand{\setlecturer}[1]{\def\@lecturer{#1}}%
\let\lecturer\setlecturer
\newcommand{\show@lecturer}{\@lecturer}%
\def\@docvers{\misspar{Specify Document Version}}
\newcommand{\setdocvers}[1]{\def\@docvers{#1}}%
\let\docvers\setdocvers%
\newcommand{\show@docvers}{\@docvers}%
\def\@reglink{http://eda.ee.ethz.ch/index.php/Regulations}%
\newcommand{\setreglink}[1]{\def\@reglink{#1}}%
\let\reglink\setreglink%
\newcommand{\show@reglink}{\@reglink}%
\global\let\@lastchange\@empty%
\def\@lastchange{\misspar{Specify Last Document Change Date}}
\newcommand{\setlastchange}[1]{\def\@lastchange{#1}}%
\let\lastchange\setlastchange%
\newcommand{\show@lastchange}{\@lastchange}%
\newcommand{\titleline}
{%
 \nointerlineskip \vspace{0.5\baselineskip}%
 \rule{\textwidth}{.7pt}\par%
 \nointerlineskip \vspace{0.5\baselineskip}%
}%
\renewcommand{\maketitle}{%
 %
 % Remove the page number in the footer.
 \thispagestyle{empty}
 %
 \begin{minipage}[b]{0.5\textwidth}%
  \includegraphics{ethlogo.pdf}%
 \end{minipage}%
 %
 \begin{minipage}[b]{0.5\textwidth}%
  \begin{flushright}%
   {\fontfamily{let}\fontseries{b}\fontsize{\@xpt}{18}\selectfont
   Institut f\"ur Integrierte Systeme\\Integrated Systems
   Laboratory}%
  \end{flushright}%
 \end{minipage}%
 %
 \vspace{4em}%
 %
 \begin{center}%
  %
  \ifx\@dept\@empty%
   \relax%
  \else%
   \show@dept \\ \vspace{0.5em}%
  \fi%
  %
  \ifx\@course\@empty%
   \relax%
  \else%
   \begin{spacing}{1.5}
    {\LARGE \textbf{\show@course}}
   \end{spacing} \vspace{0.5em}%
  \fi%
  %
  \ifx\@coursenr\@empty%
   \relax%
  \else%
   \show@coursenr%
  \fi%
  %
 \end{center}%
 %
 \vspace{9em}%
 %
 \begin{center}%
  %
  \ifx\@exdesc\@empty%
   \relax%
  \else%
   {\LARGE \show@exdesc} \\%
  \fi%
  %
  \ifx\@extitle\@empty%
   \relax%
  \else%
   \titleline%
   {\Huge \textbf{\show@extitle}}\\%
   \titleline%
  \fi%
  %
  \ifx\@lecturer\@empty%
   \relax%
  \else%
   \show@lecturer \\%
  \fi%
  %
  \bigskip\small\@date\@empty%
  %
 \end{center}%
 %
 \vspace{8em}%
 %
 \begin{center}%
  \begin{tabular}{rl}%
   %
   \ifx\@docvers\@empty%
    %
   \else%
    SVN Rev.: & \show@docvers \\%
   \fi%
   %
   \ifx\@docvers\@empty%
    %
   \else%
    Last Changed: & \show@lastchange \\%
   \fi%
   %
  \end{tabular}%
 \end{center}%
 %
 %\vspace{13em}%
 %
 \vfill%
 %
 \if@cadrem
  %
  \begin{center}%
   %
   \iflanguage{german}{%
    \textbf{Erinnerung:}\\%
    Mit der Bearbeitung dieser \"Ubung erkl\"aren Sie, dass Sie die
Regeln f\"ur die Verwendung von CAD-Software an der ETH Z\"urich
kennen und beachten. Diese Regeln k\"onnen Sie jederzeit
nachlesen unter
\url{http://dz.ee.ethz.ch/regulations/index.en.html}.
   }{}
   %
   \iflanguage{ngerman}{%
    \textbf{Erinnerung:}\\%
    Mit der Bearbeitung dieser \"Ubung erkl\"aren Sie, dass Sie die
Regeln f\"ur die Verwendung von CAD-Software an der ETH Z\"urich
kennen und beachten. Diese Regeln k\"onnen Sie jederzeit
nachlesen unter
\url{http://dz.ee.ethz.ch/regulations/index.en.html}.
   }{\@cadremen%
   }
   %
  \end{center}%
  %
 \fi
 %
 \pagebreak%
 %
 % Change the page layout such that the footer is included.
 \newgeometry{left=2cm,right=2cm,top=2cm,bottom=2cm,includefoot}
}%
\def\@modelsimver{10.3a}%
\newcommand{\setmodelsimver}[1]{\def\@modelsimver{#1}}%
\let\modelsimver\setmodelsimver
\newcommand{\show@modelsimver}{\@modelsimver}%
\def\@calibrever{2013.3}%
\newcommand{\setcalibrever}[1]{\def\@calibrever{#1}}%
\let\calibrever\setcalibrever
\newcommand{\show@calibrever}{\@calibrever}%
\def\@synopsysver{2013.12}%
\newcommand{\setsynopsysver}[1]{\def\@synopsysver{#1}}%
\let\synopsysver\setsynopsysver
\newcommand{\show@synopsysver}{\@synopsysver}%
\def\@tetramaxver{2010.03}%
\newcommand{\settetramaxver}[1]{\def\@tetramaxver{#1}}%
\let\tetramaxver\settetramaxver
\newcommand{\show@tetramaxver}{\@tetramaxver}%
\def\@encounterver{13.14}%
\newcommand{\setencounterver}[1]{\def\@encounterver{#1}}%
\let\encounterver\setencounterver
\newcommand{\show@encounterver}{\@encounterver}%
\def\@dfiiver{ic-610}%
\newcommand{\setdfiiver}[1]{\def\@dfiiver{#1}}%
\let\dfiiver\setdfiiver
\newcommand{\show@dfiiver}{\@dfiiver}%
\def\@xilinxver{14.5}%
\newcommand{\setxilinxver}[1]{\def\@xilinxver{#1}}%
\let\xilinxver\setxilinxver
\newcommand{\show@xilinxver}{\@xilinxver}%
\def\@alteraver{11.0}%
\newcommand{\setalteraver}[1]{\def\@alteraver{#1}}%
\let\alteraver\setalteraver
\newcommand{\show@alteraver}{\@alteraver}%

\def\@keilver{}%
\newcommand{\setkeilver}[1]{\def\@keilver{#1}}%
\let\keilver\setkeilver
\newcommand{\show@keilver}{\@keilver}%

\def\@stmcubeidever{}%
\newcommand{\setstmcubeidever}[1]{\def\@stmcubeidever{#1}}%
\let\stmcubeidever\setstmcubeidever
\newcommand{\show@stmcubeidever}{\@stmcubeidever}%

\def\@stmcubever{}%
\newcommand{\setstmcubever}[1]{\def\@stmcubever{#1}}%
\let\stmcubever\setstmcubever
\newcommand{\show@stmcubever}{\@stmcubever}%
\def\@termver{}%
\newcommand{\settermver}[1]{\def\@termver{#1}}%
\let\termver\settermver
\newcommand{\show@termver}{\@termver}%
\global\mdfdefinestyle{studtaskstyle}{backgroundcolor=lightgray,
splittopskip=15pt,splitbottomskip=5pt}
\newcounter{studtaskcnt}
\newenvironment{studtask}[1][]{%
 \refstepcounter{studtaskcnt}\begin{mdframed}[style=studtaskstyle]%
 \ifthenelse{\isempty{#1}}
   {\textbf{Task~\thestudtaskcnt: }}%
   {\textbf{Task~\thestudtaskcnt~(#1): }}%
 }%
{\end{mdframed}}
\newenvironment{studtask*}[1][]{%
 \begin{mdframed}[style=studtaskstyle]%
 \ifthenelse{\isempty{#1}}
   {\textbf{Student Task: }}%
   {\textbf{Student Task~(#1): }}%
 }%
{\end{mdframed}}
\global\mdfdefinestyle{notestyle}{outerlinecolor=black,
roundcorner=5pt,splittopskip=15pt,splitbottomskip=5pt}
\newcounter{notecnt}
\newenvironment{note}[1][]{%
 \refstepcounter{notecnt}\begin{mdframed}[style=notestyle]%
 \ifthenelse{\isempty{#1}}
   {\textbf{Note~\thenotecnt: }}%
   {\textbf{Note~\thenotecnt~(#1): }}%
 }%
{\end{mdframed}}
\newenvironment{noteenv}[1][]{%
 \refstepcounter{notecnt}\begin{mdframed}[style=notestyle]%
 \ifthenelse{\isempty{#1}}
   {\textbf{Note~\thenotecnt: }}%
   {\textbf{Note~\thenotecnt~(#1): }}%
 }%
{\end{mdframed}}
\newenvironment{note*}[1][]{%
 \begin{mdframed}[style=notestyle]%
 \ifthenelse{\isempty{#1}}
   {\textbf{Note: }}%
   {\textbf{Note~(#1): }}%
 }%
{\end{mdframed}}
\newenvironment{noteenv*}[1][]{%
 \begin{mdframed}[style=notestyle]%
 \ifthenelse{\isempty{#1}}
   {\textbf{Note: }}%
   {\textbf{Note~(#1): }}%
 }%
{\end{mdframed}}
\global\mdfdefinestyle{remstyle}{splittopskip=15pt,
splitbottomskip=5pt,middlelinewidth=0pt}
\newcounter{remcnt}
\newenvironment{rem}[1][]{%
 \refstepcounter{remcnt}\begin{mdframed}[style=remstyle]%
 \ifthenelse{\isempty{#1}}
   {\textbf{Remark~\theremcnt: }}%
   {\textbf{Remark~\theremcnt~(#1): }}%
 }%
{\end{mdframed}}
\newenvironment{remarkenv}[1][]{%
 \refstepcounter{remcnt}\begin{mdframed}[style=remstyle]%
 \ifthenelse{\isempty{#1}}
   {\textbf{Remark~\theremcnt: }}%
   {\textbf{Remark~\theremcnt~(#1): }}%
 }%
{\end{mdframed}}
\newenvironment{rem*}[1][]{%
 \begin{mdframed}[style=remstyle]%
 \ifthenelse{\isempty{#1}}
   {\textbf{Remark: }}%
   {\textbf{Remark~(#1): }}%
 }%
{\end{mdframed}}
\newenvironment{remarkenv*}[1][]{%
 \begin{mdframed}[style=remstyle]%
 \ifthenelse{\isempty{#1}}
   {\textbf{Remark: }}%
   {\textbf{Remark~(#1): }}%
 }%
{\end{mdframed}}
 \newcommand{\button}[1]{\textsc{#1}}
 \newcommand{\option}[1]{\textsc{#1}}
\lstdefinestyle{filestyle}
{
 language          = bash,
 columns           = fullflexible,
 basicstyle        = \itshape,
 tabsize           = 2,
 showspaces        = false,
 showstringspaces  = false,
 captionpos        = b,
 frame             = tbrl,
 frameround        = tttt,
 breaklines        = true,
 breakatwhitespace = false,
 numbers           = none,
 linewidth         = \linewidth,
 xleftmargin       = 2em,
 xrightmargin      = 0.5em,
 mathescape        = true,
 literate          = {~} {$\sim$}{1},
 prebreak          = {\@linewrapchar}
}
\newcommand{\file}[1]{\lstinline[style=filestyle]|#1|}
\lstnewenvironment{fileenv}[1][]
  {\lstset{style=filestyle,#1}}
  {}
\lstdefinestyle{defaultcmdstyle}
{
 basicstyle        = \ttfamily,
 framexleftmargin  = 0.5em,
 captionpos        = t,
 frame             = shadowbox,
 breaklines        = true,
 breakatwhitespace = true,
 rulesepcolor      = \color{black},
 linewidth         = \linewidth,
 prebreak          = {\@linewrapchar},
 numbers           = none,
 numberstyle       = \ttfamily,
 xleftmargin       = 0.9em,
 xrightmargin      = 0.5em,
}%
\newcommand{\cmd}[1]{%
  {\lstinline[style=defaultcmdstyle,breaklines=true,xrightmargin=1.5em]|#1|}%
}%
\def\redefnumbering#1{%
 \edef\thelstnumber{#1}%
 \ifx\othelstnumber=\relax\else%
  \let\othelstnumber\relax%
 \fi%
}%
\lstnewenvironment{cmdenv}[1][]{%
 \ifthenelse{\isempty{#1}}%
 {\lstset{style=defaultcmdstyle}}%
 {\ifthenelse{\equal{sh}{#1}}{%
   \redefnumbering{sh\,>}%
   \lstset{style=defaultcmdstyle,numbers=left,%
    framexleftmargin=3.3em,xleftmargin=3.7em}%
  }{\ifthenelse{\equal{dvc}{#1}}{%
    \redefnumbering{dvc\,>}%
    \lstset{style=defaultcmdstyle,numbers=left,%
     framexleftmargin=3.9em,xleftmargin=4.3em}%
   }{\ifthenelse{\equal{dcs}{#1}}{%
     \redefnumbering{dcs\,>}%
     \lstset{style=defaultcmdstyle,numbers=left,%
      framexleftmargin=3.9em,xleftmargin=4.3em}%
     }{\ifthenelse{\equal{enc}{#1}}{%
       \redefnumbering{enc\,>}%
       \lstset{style=defaultcmdstyle,numbers=left,%
        framexleftmargin=3.9em,xleftmargin=4.3em}%
       }{\ifthenelse{\equal{tmax}{#1}}{%
         \redefnumbering{tmax\,>}%
         \lstset{style=defaultcmdstyle,numbers=left,%
          framexleftmargin=4.5em,xleftmargin=4.9em}%
         }{\ifthenelse{\equal{vsim}{#1}}{%
           \redefnumbering{vsim\,>}%
           \lstset{style=defaultcmdstyle,numbers=left,%
           framexleftmargin=4.5em,xleftmargin=4.9em}%
           }{}%
}}}}}}}{}%
\lstnewenvironment{shcmdenv}[1][]{%
 \ifthenelse{\isempty{#1}}%
 {\lstset{style=defaultcmdstyle}}%
 {\ifthenelse{\equal{sh}{#1}}{%
   \redefnumbering{sh\,>}%
   \lstset{style=defaultcmdstyle,numbers=left,%
    framexleftmargin=3.3em,xleftmargin=3.7em}%
  }{\ifthenelse{\equal{dvc}{#1}}{%
    \redefnumbering{dvc\,>}%
    \lstset{style=defaultcmdstyle,numbers=left,%
     framexleftmargin=3.9em,xleftmargin=4.3em}%
   }{\ifthenelse{\equal{dcs}{#1}}{%
     \redefnumbering{dcs\,>}%
     \lstset{style=defaultcmdstyle,numbers=left,%
      framexleftmargin=3.9em,xleftmargin=4.3em}%
     }{\ifthenelse{\equal{enc}{#1}}{%
       \redefnumbering{enc\,>}%
       \lstset{style=defaultcmdstyle,numbers=left,%
        framexleftmargin=3.9em,xleftmargin=4.3em}%
       }{\ifthenelse{\equal{tmax}{#1}}{%
         \redefnumbering{tmax\,>}%
         \lstset{style=defaultcmdstyle,numbers=left,%
          framexleftmargin=4.5em,xleftmargin=4.9em}%
         }{\ifthenelse{\equal{vsim}{#1}}{%
           \redefnumbering{vsim\,>}%
           \lstset{style=defaultcmdstyle,numbers=left,%
           framexleftmargin=4.5em,xleftmargin=4.9em}%
           }{}%
}}}}}}}{}%
\newcommand{\vhdl}[1]{\lstinline[style=defaultcmdstyle,language=VHDL]|#1|}
\lstnewenvironment{vhdlenv}[1][]
  {\lstset{style=defaultcmdstyle,language=VHDL,#1}}
  {}
\newcommand{\verilog}[1]{\lstinline[style=defaultcmdstyle,language=Verilog]|#1|}
\lstnewenvironment{verilogenv}[1][]
  {\lstset{style=defaultcmdstyle,language=Verilog,#1}}
  {}
\newcommand{\tcl}[1]{\lstinline[style=defaultcmdstyle,language=tcl]|#1|}
\lstnewenvironment{tclenv}[1][]
  {\lstset{style=defaultcmdstyle,language=tcl,#1}}
  {}
\newcounter{lincnt}
\newcommand{\answerrule}[1][]{%
 %
 %
 \ifthenelse{\isempty{#1}}
 {\noindent\hrulefill}%
 {%
  \noindent\hrulefill\\[2em]
  \setcounter{lincnt}{1}
  \whiledo {\value{lincnt} < #1}%
  {%
   \noindent\rule{\linewidth}{0.5pt}\\[2em]
   \stepcounter{lincnt}
  }%
  \noindent\rule{\linewidth}{0.5pt}
 }%
}%
\newcommand{\mnu}[1]{\lstinline[style=defaultcmdstyle]|#1|}
\newcommand{\menu}[1]{\lstinline[style=defaultcmdstyle]|#1|}
\newcommand{\submnu}[1]{\lstinline[style=defaultcmdstyle,mathescape=true]
|$\rightarrow$ #1|}
\newcommand{\submenu}[1]{\lstinline[style=defaultcmdstyle,mathescape=true]
|$\rightarrow$ #1|}
\newcommand{\todoin}[2][]{%
 \ifthenelse{\isempty{#1}}%
  {\todo[inline]{#2}}%
  {\todo[inline,caption={#1}]{%
  \begin{minipage}{\linewidth}
   #2
  \end{minipage}}}%
}

\newcommand{\T}{\rule{0pt}{2.6ex}}
\newcommand{\latexcls}[1]{\lstinline[style=defaultcmdstyle]|#1|}
\newcommand{\latexpkg}[1]{\lstinline[style=defaultcmdstyle]|#1|}
\newcommand{\eoe}[1]{
\begin{center}
\begin{minipage}[c]{0.1\textwidth}
 \raggedleft
 \Huge
 $\mathcal{E}$
\end{minipage}%
\hfill%
\begin{minipage}[c]{0.75\textwidth}
 \begin{center}
 \textbf{#1}
 \end{center}
\end{minipage}%
\hfill%
\begin{minipage}[c]{0.1\textwidth}
 \raggedright
 \Huge
 $\mathcal{E}$
\end{minipage}
\end{center}
}
\newcommand{\testat}[1]{
\begin{center}
\begin{minipage}[c]{0.1\textwidth}
 \raggedleft
 \Huge
 $\mathcal{T}$
\end{minipage}%
\hfill%
\begin{minipage}[c]{0.75\textwidth}
 \begin{center}
 \textbf{#1}
 \end{center}
\end{minipage}%
\hfill%
\begin{minipage}[c]{0.1\textwidth}
 \raggedright
 \Huge
 $\mathcal{T}$
\end{minipage}
\end{center}
}
\newcommand{\modelsim@str}{\textsc{Mentor Graphics Modelsim}\xspace}
\newcommand{\modelsim}[1][]{%
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\modelsim@str \show@modelsimver\xspace}%
   {\modelsim@str #1\xspace}%
  \else%
   \modelsim@str\xspace%
  \fi%
}
\newcommand{\calibre@str}{\textsc{Mentor Graphics Calibre}\xspace}
\newcommand{\calibre}[1][]{%
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\calibre@str \show@calibrever\xspace}%
   {\calibre@str #1\xspace}%
  \else%
   \calibre@str\xspace%
  \fi%
}
\newcommand{\synopsys@str}{\textsc{Synopsys Design Compiler}\xspace}
\newcommand{\synopsys}[1][]{%
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\synopsys@str \show@synopsysver\xspace}%
   {\synopsys@str #1\xspace}%
  \else%
   \synopsys@str%
  \fi%
}
\newcommand{\tetramax@str}{\textsc{Synopsys TetraMAX ATPG}\xspace}
\newcommand{\tetramax}[1][]{%
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\tetramax@str \show@tetramaxver\xspace}%
   {\tetramax@str #1\xspace}%
  \else%
   \tetramax@str\xspace%
  \fi%
}
\newcommand{\encounter@str}{\textsc{Cadence EDI Encounter}\xspace}
\newcommand{\encounter}[1][]{%
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\encounter@str \show@encounterver\xspace}%
   {\encounter@str #1\xspace}%
  \else%
   \encounter@str\xspace%
  \fi%
}
\newcommand{\dfii@str}{\textsc{Cadence IC}\xspace}
\newcommand{\dfii}[1][]{%
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\dfii@str \show@dfiiver\xspace}%
   {\dfii@str #1\xspace}%
  \else%
   \dfii@str\xspace%
  \fi%
}
\newcommand{\xilinx@str}{\textsc{Xilinx ISE}\xspace}
\newcommand{\xilinx}[1][]{%
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\xilinx@str \show@xilinxver\xspace}%
   {\xilinx@str #1\xspace}%
  \else%
   \xilinx@str\xspace%
  \fi%
}
\newcommand{\altera@str}{\textsc{Altera Quartus}\xspace}
\newcommand{\altera}[1][]{
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\altera@str \show@alteraver\xspace}%
   {\altera@str #1\xspace}%
  \else%
   \altera@str\xspace%
  \fi%
}

\newcommand{\stmcubeide@str}{\textsc{STM32 Cube IDE}\xspace}
\newcommand{\stmcubeide}[1][]{
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\stmcubeide@str \show@stmcubeidever\xspace}%
   {\stmcubeide@str #1\xspace}%
  \else%
   \stmcubeide@str\xspace%
  \fi%
}

\newcommand{\keil@str}{\textsc{Keil \textmu Vision}\xspace}
\newcommand{\keil}[1][]{
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\keil@str \show@keilver\xspace}%
   {\keil@str #1\xspace}%
  \else%
   \keil@str\xspace%
  \fi%
}

\newcommand{\stmcube@str}{\textsc{STM Cube MX}\xspace}
\newcommand{\stmcube}[1][]{
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\stmcube@str \show@stmcubever\xspace}%
   {\stmcube@str #1\xspace}%
  \else%
   \stmcube@str\xspace%
  \fi%
}

\newcommand{\term@str}{\textsc{Tera Term}\xspace}
\newcommand{\term}[1][]{
 \if@toolver%
  \ifthenelse{\isempty{#1}}
   {\term@str \show@termver\xspace}%
   {\term@str #1\xspace}%
  \else%
   \term@str\xspace%
  \fi%
}

\AtBeginDocument
{
 \fontfamily{phv} \selectfont
 \renewcommand{\ttdefault}{pcr}
\renewcommand{\footnotemargin}{1.5em}
}
\endinput
%%
%% End of file `iisvlsi.cls'.
