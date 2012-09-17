\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{khaireport}
              [2012/09/04 v0.1h
 KhAI lab report document class
 Developed by Smusenok Sergei]

\LoadClass[a4paper, 12pt, oneside]{report}

%TODO: убрать лишние пакеты
\RequirePackage[a4paper, top=25mm, left=25mm, right=15mm, bottom=15mm]{geometry}
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[english, russian]{babel}
\RequirePackage{color}
\RequirePackage{import}
\RequirePackage{babel}
\RequirePackage[pdftex]{hyperref}
\RequirePackage{titlesec}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage[perpage]{footmisc}
\RequirePackage[warn]{mathtext}
\RequirePackage{caption3}
\RequirePackage{array}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage[titles]{tocloft}
\RequirePackage{etoolbox}
\RequirePackage{indentfirst}
\RequirePackage{listings}

%--использовать шрифт Times New Roman
\renewcommand{\rmdefault}{jtm}

%--свойства документа
\renewcommand{\author}{Смусенок~С.А.}                               %Автор работы
\newcommand{\group}{555вМ}                                          %Группа
\newcommand{\topic}{Тема}                                           %Тема работы
\newcommand{\subject}{Предмет}                                      %Предмет
\renewcommand{\title}{Лабораторная работа №1}                       %Заголовок
\newcommand{\worktype}{Лр}                                          %Тип работы сокращенно
\newcommand{\cathedra}{503}                                         %Кафедра
\newcommand{\specialty}{011501}                                     %Специальность
\newcommand{\recordbook}{0805101}                                   %Номер зачетной книжки
\newcommand{\id}{                                                   %Идентификатор работы
  ХАИ.\cathedra.\group.12О.\specialty.\recordbook\worktype}         
\newcommand{\academic}{Преподаватель~И.О.}                          %Проверил
\newcommand{\academicdegree}{канд. техн. наук}                      %Ученая степень
\definecolor{linkcolor}{rgb}{0,0,0}

\hypersetup{
        pdftitle={\title}, 
        pdfsubject={\topic},
        pdfauthor={\author},
        colorlinks=true,
        linkcolor=linkcolor}

\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{2}

%--не переносит chapter на новую страницу
\makeatletter
\patchcmd{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi}{}{}{}
\makeatother

\headheight=5mm
\headsep=5mm

\pagestyle{fancy}
\lhead{}\chead{}\rhead{\normalsize{\thepage}}
\lfoot{}\cfoot{}\rfoot{}
\renewcommand{\headrulewidth}{0pt}
\fancypagestyle{plain}{\pagestyle{fancy}}
\newcommand{\makeupper}[1]{\MakeUppercase{#1}}

%--тип колонки с заполнением оставшегося пространства ячейки
\newcolumntype{x}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}

%--размеры шрифтов
\makeatletter
\renewcommand{\normalsize}{%
   \@setfontsize\normalsize\@xivpt{17.5}%
   \abovedisplayskip 14\p@ \@plus3\p@ \@minus8\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 7\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\renewcommand{\small}{%
   \@setfontsize\small\@xiipt{14.5}%
   \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 11\p@ \@plus4\p@ \@minus6\p@
               \parsep 6\p@ \@plus3\p@ \@minus\p@
               \itemsep \parsep
%%               \itemindent\z@
              }%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand{\footnotesize}{%
   \@setfontsize\footnotesize\@xipt{13.6}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6.5\p@ \@plus3.5\p@ \@minus3\p@
               \parsep 4\p@ \@plus3\p@ \@minus\p@
               \itemsep \parsep
%%               \itemindent\z@
              }%
   \belowdisplayskip \abovedisplayskip
}
\newcommand*{\miniscule}{\@setfontsize\miniscule\@viiipt{9.5}}
\renewcommand*{\tiny}{\@setfontsize\tiny\@ixpt{10}}
\renewcommand*{\scriptsize}{\@setfontsize\scriptsize\@xpt{12}}
\renewcommand*{\large}{\@setfontsize\large\@xviipt{22}}
\renewcommand*{\Large}{\@setfontsize\Large\@xxpt{25}}
\renewcommand*{\LARGE}{\@setfontsize\LARGE\@xxvpt{30}}

\if@twocolumn
  \setlength\parindent{1em}
\else
  \setlength\parindent{1.5em}
\fi
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\headheight{17.5\p@}
\setlength\headsep{.30in}
\setlength\topskip{14.4\p@}
\setlength\footskip{.4in}
\setlength\maxdepth{.5\topskip}
\setlength\@maxdepth\maxdepth
\setlength\footnotesep{9.5\p@}
\setlength{\skip\footins}{13\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep    {14\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\textfloatsep{20\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\intextsep   {14\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\dblfloatsep    {14\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{10\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{12\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\if@twocolumn
  \setlength\marginparsep{10\p@}
\else
  \setlength\marginparsep{7\p@}
\fi
\setlength{\marginparpush}{7\p@}

\renewcommand\chapter{\@startsection {chapter}{1}{\z@}%
                                   {-4ex \@plus -1ex \@minus -.2ex}%
                                   {.1ex \@plus.2ex}%
                                   {\normalfont\normalsize\bfseries\centering\makeupper}}
%TODO: привести содержание к стандартам
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    \newpage
    \if@restonecol\twocolumn\fi
    }
\makeatother

%TODO: использовать переопределение комманд из repport.cls
\AtBeginDocument{\renewcommand{\contentsname}{Содержание}
\renewcommand{\bibname}{Список литературы}}

\titleformat{\chapter}
  {\normalfont\normalsize\bfseries\centering}{\thechapter}{1em}{\makeupper}
\titlespacing*{\chapter}{1cm}{4ex plus .1ex minus .2ex}{.1ex plus .2ex}
\titleformat{\section}
  {\normalfont\normalsize\bfseries}{\thesection}{1em}{}
\titlespacing*{\section}{1cm}{4ex plus .1ex minus .2ex}{.1ex plus .2ex}
\titleformat{\subsection}
  {\normalfont\normalsize\bfseries\itshape}{\thesubsection}{1em}{}
\titlespacing*{\subsection}{1cm}{.5ex plus .1ex minus .2ex}{.1ex plus .2ex}
\titleformat{\subsubsection}
  {\normalfont\normalsize\bfseries\itshape}{\thesubsubsection}{1em}{}
\titlespacing*{\subsubsection}{1cm}{.5ex plus .1ex minus .2ex}{.1ex plus .2ex}

%TODO: проверить на соответствие стандартам
\renewcommand\maketitle{%
\thispagestyle{empty}
\begin{center}
  \large {МИНИСТЕРСТВО ОБРАЗОВАНИЯ И НАУКИ, МОЛОДЕЖИ И СПОРТА УКРАИНЫ}\\[0.5ex]
  Национальный аэрокосмический университет им.~Н.Е.~Жуковского\\[0.5ex]
 ``Харьковский авиационный институт''\\[1.0ex]
  Кафедра компьютерных систем и сетей\\[1cm]
  \large {\title}\\[1ex]
  по курсу\\[0.5ex]
  ``\subject''\\[0.5ex]
  Тема: ``\topic''\\[1cm]
  \id\\
  \end{center}
  \vfill
  
  \def\titletablewidth{10cm}
  \setlength{\extrarowheight}{-0.5ex}
  \begin{flushright}
  \begin{tabular*}{\titletablewidth}{lc@{\extracolsep{\fill}}c}
  Выполнил студент & \group & \author \\[-0.3ex]\cline{2-3}
  & \miniscule{(№ группы)} & \miniscule{(Ф.И.О.)} \\
  \multicolumn{3}{c}{} \\[-0.3ex]\hline
  \multicolumn{3}{c}{\small{(подпись, дата)}} \\
  \end{tabular*}\\
  \begin{tabular*}{\titletablewidth}[]{lc@{\extracolsep{\fill}}c@{\extracolsep{\fill}}c}
  Проверил & &\academicdegree & \\[-0.3ex]\cline{2-4}
  & &\miniscule{(научная степень, учёное звание, должность)} & \\
  \end{tabular*}\\
  \begin{tabular*}{\titletablewidth}[]{x{4cm}@{\extracolsep{\fill}}c}
  & \academic \\[-0.3ex]\hline
  \miniscule{(подпись, дата)} & \miniscule{(Ф.И.О.)} \\
  \end{tabular*}
  \end{flushright}
  
  \vfill
  \begin{center}
  \number\year
  \end{center}
  \clearpage
}