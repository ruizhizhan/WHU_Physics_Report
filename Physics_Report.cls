%% This simple program is a LaTeX class file for physics experiment report
%% of the School of Physics and Technology, Wuhan University
%% Version 1.0, Edit Time:03-25-2021, Writer:snowflakes
%% -----------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{test}

%% ---- Load Class ---- %%
\LoadClass[a4paper,12pt]{article}% A4 size, article type

%% ---- Complie Options ---- %%
%\RequirePackage{ifxetex}
%\RequireXeTeX
%\ifxetex\else
%\ClassError{Physics_Report}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
%Just choose `xelatex', no `pdflatex' or `latex' and so on.}
%\fi

%% ---- Loading Packages ---- %%
\RequirePackage{ctex} % to support Chinese in your LaTeX
%% Math packages
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{titletoc}

%% pictures
\RequirePackage{graphicx}

%% tables
\RequirePackage{array}
\RequirePackage{longtable}
% booktabs:\toprule etc.
\RequirePackage{booktabs}
% multirow: support to wrap lines in the table; bigstrut:adjust the interval
\RequirePackage{multirow}
\RequirePackage{bigstrut}
\RequirePackage{bigdelim}
\RequirePackage{cprotect}
\RequirePackage{multicol}
\RequirePackage{lipsum}
\RequirePackage{zhlipsum}
\RequirePackage{framed}

%% ---- Set Environment ---- %%
\RequirePackage{listings}
\RequirePackage{xcolor}

%% ---- Load Typeface ----%%
\RequirePackage{xeCJK}
\RequirePackage[titles]{tocloft}
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftsecdotsep}{1.5} 
\setlength{\cftbeforesecskip}{7pt}
\setlength{\cftbeforesubsecskip}{3pt}
\renewcommand{\cftsecfont}{\bfseries\zihao{3}\heiti}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsecaftersnumb}{\hskip.4em}
\setmonofont{Lucida Console}
\setsansfont{SimHei}


\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=3,
}

\RequirePackage{indentfirst}
\RequirePackage{caption}
\RequirePackage{enumitem}
\RequirePackage{ulem}
\RequirePackage{calc}

\RequirePackage{titlesec}

\RequirePackage[titletoc,title]{appendix}

\RequirePackage{etoolbox}
\AtBeginEnvironment{thebibliography}{%
    \phantomsection
    \addcontentsline{toc}{section}{\refname}
    }
\RequirePackage{hyperref}

%% ---- Set Document Layout ---- %%
\RequirePackage{geometry}
\geometry{top=25mm,bottom=25mm,left=25mm,right=25mm}
\renewcommand*{\baselinestretch}{1.38}
\setlength\parindent{2em}
\setmainfont{Times New Roman}
%\setmonofont{Courier New}
\setsansfont{Arial}
\setCJKfamilyfont{kai}[AutoFakeBold]{simkai.ttf}
\newcommand*{\kai}{\CJKfamily{kai}}
\setCJKfamilyfont{song}[AutoFakeBold]{SimSun}
\newcommand*{\song}{\CJKfamily{song}}

\renewcommand\normalsize{%
	\@setfontsize\normalsize{12.05}{14.45}%
	\abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
	\abovedisplayshortskip \z@ \@plus3\p@
	\belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@}

%% ---- Set Pictures ---- %%
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
\graphicspath{{figures/}{figure/}{pictures/}%
  {picture/}{pic/}{pics/}{image/}{images/}}

\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{-4}}
\captionsetup[figure]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,minusfour,bf}, % 图的字体, 宋体小四
	position=bottom % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
\captionsetup[table]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,minusfour,bf}, % 表的字体, 宋体小四
	position=top % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
% 列表环境设置
\setlist{%
	topsep=0.3em, % 列表顶端的垂直空白
	partopsep=0pt, % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
	itemsep=0ex plus 0.1ex, % 列表项之间的额外垂直空白
	parsep=0pt, % 列表项内的段落之间的垂直空白
	leftmargin=1.5em, % 环境的左边界和列表之间的水平距离
	rightmargin=0em, % 环境的右边界和列表之间的水平距离
	labelsep=0.5em, % 包含标签的盒子与列表项的第一行文本之间的间隔
	labelwidth=2em % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}

%% ---- Set Hyper ---- %%
\hypersetup{%
	xetex,
	% unicode=false, % hyperref 和 xetex 同时使用时不能开启 Unicode 选项.
    pdfstartview=FitH,
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    colorlinks, %注释掉此项则交叉引用为彩色边框(将colorlinks和pdfborder同时注释掉)
    pdfborder=001,   %注释掉此项则交叉引用为彩色边框
	allcolors=black,
	breaklinks=true}%

%\lstnewenvironment{tcode}
%  {
%    \lstset{basicstyle = \small\ttfamily,
%        language=TeX,
%        tabsize = 4,
%        frame = single,
%        escapechar = `,
%        breaklines = true,
%        breakatwhitespace = true,
%        frameround = tttt,
%    }
%  }

%% ---- Define the Paragraph Styles ----%%
\setcounter{secnumdepth}{3}
% 节标题格式, 居中, 使用\chinese命令修改计数器
\def\@seccntformat#1{\csname the#1\endcsname\ }
\renewcommand\thesection{\chinese{section}、}%copy
\renewcommand\thesubsection{\arabic{section}\thinspace.\thinspace\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection\thinspace.\thinspace\arabic{subsubsection}}
\renewcommand\section{\@startsection{section}{1}{\z@}%
 	{-1.5ex \@plus -1ex \@minus -.2ex}%
	{0.8ex \@plus0.1ex}%
	{\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-1.5ex\@plus -1ex \@minus -.2ex}%
	{0.5ex \@plus0.1ex}%
	{\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{-1.25ex\@plus -1ex \@minus -.2ex}%
	{0.5ex \@plus0.1ex}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{3.25ex \@plus1ex \@minus.2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	 {3.25ex \@plus1ex \@minus .2ex}%
	 {-1em}%
	 {\normalfont\normalsize\bfseries}}


\titlespacing{\subsection}{2em}{*4}{*1.5}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{comment}{rgb}{0.56,0.64,0.68}

\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  xleftmargin=2em,
  xrightmargin=2em,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{comment},
  stringstyle=\color{dkgreen},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
}