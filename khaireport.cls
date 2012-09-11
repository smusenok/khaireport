\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{khaireport}
              [2012/09/04 v0.1h
 KhAI lab report document class]

\LoadClass[a4paper, 12pt, oneside]{scrreprt}

\RequirePackage[a4paper, top=25mm, left=25mm, right=15mm, bottom=15mm]{geometry}
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[english, russian]{babel}
\RequirePackage{ifxetex}
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

%--Use Times New Roman font
\renewcommand{\rmdefault}{jtm}
%--Document properties
\newcommand{\workauthor}{Смусенок~С.А.}
\def\tema{Тема}
\def\predmet{Предмет}
\def\rabota{Лабораторная работа №1}
\def\id{ХАИ.503.555aМ.12О.011501.0805101Лр}
\def\proveril{Препод~А.В.}
\def\proverilstepen{канд. техн. наук}
\definecolor{linkcolor}{rgb}{0,0,0}

\hypersetup{
        pdftitle={\rabota}, 
        pdfsubject={\tema},
        pdfauthor={\workauthor},
        colorlinks=true,
        linkcolor=linkcolor}

\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{2}

%не переносит chapter на новую страницу
\makeatletter
\patchcmd{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi}{}{}{}
\makeatother

\headheight=5mm
\headsep=5mm

\renewcommand\normalsize{\fontsize{14}{21pt}\selectfont}
\renewcommand\small{\fontsize{9}{9pt}\selectfont}

\newcolumntype{x}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}

\pagestyle{fancy}
\lhead{}\chead{}\rhead{\normalsize{\thepage}}
\lfoot{}\cfoot{}\rfoot{}
\renewcommand{\headrulewidth}{0pt}
\fancypagestyle{plain}{\pagestyle{fancy}}
\newcommand{\makeupper}[1]{\MakeUppercase{#1}}

\setlength{\cftbeforechapskip}{0pt}
\setlength{\cftbeforesecskip}{0pt}
\renewcommand{\cftchapfont}{%
  \normalfont\normalsize\selectfont
}
\AtBeginDocument{\renewcommand{\contentsname}{Содержание}
\renewcommand{\bibname}{Список литературы}}

\titleformat{\chapter}
  {\normalfont\normalsize\bfseries\centering}{\thechapter}{1em}{\makeupper}
\titlespacing*{\chapter}{1cm}{4ex plus .1ex minus .2ex}{1ex plus .2ex}
\titleformat{\section}
  {\normalfont\normalsize\bfseries}{\thesection}{1em}{}
\titlespacing*{\section}{1cm}{4ex plus .1ex minus .2ex}{.1ex plus .2ex}
\titleformat{\subsection}
  {\normalfont\normalsize\bfseries\itshape}{\thesubsection}{1em}{}
\titlespacing*{\subsection}{1cm}{.5ex plus .1ex minus .2ex}{.1ex plus .2ex}
\titleformat{\subsubsection}
  {\normalfont\normalsize\bfseries\itshape}{\thesubsubsection}{1em}{}
\titlespacing*{\subsubsection}{1cm}{.5ex plus .1ex minus .2ex}{.1ex plus .2ex}

\renewcommand\maketitle{%
\thispagestyle{empty}
\begin{center}
  МИНИСТЕРСТВО ОБРАЗОВАНИЯ И НАУКИ, МОЛОДЕЖИ И СПОРТА УКРАИНЫ\\[0.5ex]
  Национальный аэрокосмический университет им. Н.Е. Жуковского\\[0.5ex]
 ``Харьковский авиационный институт''\\[1.0ex]
  Кафедра компьютерных систем и сетей\\[1cm]
  \textbf{\rabota}\\[1ex]
  по курсу\\[0.5ex]
  ``\predmet''\\[0.5ex]
  Тема: ``\tema''\\[1cm]
  \id\\
  \end{center}
  \vfill
  
  \def\titletablewidth{10cm}
  \setlength{\extrarowheight}{-0.5ex}
  \begin{flushright}
  \begin{tabular*}{\titletablewidth}{lc@{\extracolsep{\fill}}c}
  Выполнил студент & 555а & \workauthor \\[-0.3ex]\cline{2-3}
  & \small{(№ группы)} & \small{(Ф.И.О.)} \\
  \multicolumn{3}{c}{} \\[-0.3ex]\hline
  \multicolumn{3}{c}{\small{(подпись, дата)}} \\
  \end{tabular*}\\
  \begin{tabular*}{\titletablewidth}[]{lc@{\extracolsep{\fill}}c@{\extracolsep{\fill}}c}
  Проверил & &\proverilstepen & \\[-0.3ex]\cline{2-4}
  & &\small{(научная степень, учёное звание, должность)} & \\
  \end{tabular*}\\
  \begin{tabular*}{\titletablewidth}[]{x{4cm}@{\extracolsep{\fill}}c}
  & \proveril \\[-0.3ex]\hline
  \small{(подпись, дата)} & \small{(Ф.И.О.)} \\
  \end{tabular*}
  \end{flushright}
  
  \vfill
  \begin{center}
  \number\year
  \end{center}
  \clearpage
  }
