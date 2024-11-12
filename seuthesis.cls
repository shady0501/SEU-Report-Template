%%
%% This is file `seuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% seuthesis.dtx  (with options: `cls')
%% 
%% Copyright (C) 2007-2012 by Xu Yuan <xuyuan.cn@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
 % \NeedsTeXFormat{LaTeX2e}[1999/12/01]
 % \ProvidesClass{seuthesis}[2012/04/19 2.1.2 The LaTeX template for thesis of Southeast University]
 % \typeout{Document Class `seuthesis' v2.1.2 by Xu Yuan, Song Yihan, Huang Xiaoyu (2012/04/19)}

 
% 定义三种封面显示方式 
% seutextlogo-仅含文本的SEUlogo
\newif\ifseutextlogo
\DeclareOption{seutextlogo}{\seutextlogotrue}
% seutextandcolorlogo-包含文本和彩色校徽的SEUlogo
\newif\ifseutextandcolorlogo
\DeclareOption{seutextandcolorlogo}{\seutextandcolorlogotrue}
% noseulogo-不显示任何SEUlogo
\newif\ifnoseulogo
\DeclareOption{noseulogo}{\noseulogotrue}

\newif\ifbachelordegree\bachelordegreetrue
\DeclareOption{bachelor}{\bachelordegreetrue}
\newif\ifnocolorlinks\nocolorlinksfalse
\DeclareOption{nocolorlinks}{\nocolorlinkstrue}
\newif\ifdoublecover\doublecoverfalse
\DeclareOption{doublecover}{\doublecovertrue}
\DeclareOption{printedition}{\doublecovertrue\nocolorlinkstrue}
\newif\ifstoneside\stonesidefalse
\DeclareOption{printoneside}{%
  \PassOptionsToClass{openany}{scrbook}
  \stonesidetrue
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions
\LoadClass[a4paper,captions=tableheading]{scrbook}
\let\todayeng\today

\newif\ifshowreporttitle
\showreporttitletrue % 默认显示报告标题
\newif\ifshowdepartment
\showdepartmenttrue % 默认显示院系
\newif\ifshowmajor
\showmajortrue % 默认显示专业
\newif\ifshowstudentid
\showstudentidtrue % 默认显示学号
\newif\ifshowstudentname
\showstudentnametrue % 默认显示学生姓名
\newif\ifshowadvisor
\showadvisortrue % 默认显示导师姓名
\newif\ifshowduration
\showdurationtrue % 默认显示起讫日期
\newif\ifshowaddress
\showaddresstrue % 默认显示设计地点

% my change
\RequirePackage{lmodern}
\RequirePackage{doc}
\RequirePackage{keyval}
\RequirePackage{ifthen}
\RequirePackage{xltxtra}
\RequirePackage{graphicx}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{indentfirst}
\RequirePackage{makeidx} % 索引
\RequirePackage[nottoc]{tocbibind} % 将参考文献、索引、表格目录和图形
\RequirePackage[numbers,sort&compress]{natbib} % 修改引用参考文献格式
\RequirePackage{array} % 扩展了 array 和 tabular 环境功能
\RequirePackage{caption} % 定义图的标题格式：居中. 使用caption3.0
\captionsetup{%
  format=plain,%
  labelformat=simple,%
  justification=centering,%
  singlelinecheck=off}
\RequirePackage{paralist}% 修改列表格式
\setdefaultenum{1)}{a)}{i.}{A.}% 设置列表模式
\setdefaultleftmargin{4ex}{}{}{}{}{}
\RequirePackage[CJKnumber,slantfont,boldfont]{xeCJK}
\RequirePackage{CJKulem}

% my change
\RequirePackage{ulem}

% 加粗改黑体
\renewcommand{\textbf}[1]{{\normalfont\bfseries #1}}
% my change
\def\CJKindent{%
    \setlength{\parindent}{2em}
    }

% 修改中文字体族，增加黑体
\setCJKmainfont[
Path = ./font/,
BoldFont=simhei.ttf,
ItalicFont=simkai.ttf,
BoldItalicFont=simfang.ttf
]{simsun.ttf}
\setCJKfamilyfont{zhsong}[Path = ./font/]{simsun.ttf}
\newcommand{\song}{\CJKfamily{zhsong}}
\setCJKfamilyfont{zhhei}[Path = ./font/]{simhei.ttf}
\newcommand{\hei}{\CJKfamily{zhhei}}
\setCJKfamilyfont{zhkai}[Path = ./font/]{simkai.ttf}
\newcommand{\kai}{\CJKfamily{zhkai}}
\setCJKfamilyfont{zhfs}[Path = ./font/]{simfang.ttf}
\newcommand{\fs}{\CJKfamily{zhfs}}

% my change, 英文字体使用 Times New Roman
\setmainfont[
Path = ./font/,
BoldFont=timesbd.ttf,
ItalicFont=timesi.ttf,
BoldItalicFont=timesbi.ttf
]{times.ttf}

\newcommand{\chuhao}{\fontsize{42pt}{46pt}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{40pt}\selectfont}
\newcommand{\yichu}{\fontsize{32pt}{36pt}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{32pt}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{24pt}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{20}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{18pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{16pt}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{14pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{13pt}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{11pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{9pt}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5pt}{7.5pt}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{6.5pt}\selectfont}


  \renewcommand\frontmatter{%
  \ifstoneside\clearpage\else\cleardoublepage\fi

  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{empty}}
\renewcommand\mainmatter{%
  \ifstoneside\clearpage\else\cleardoublepage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{plain}}
\renewcommand\backmatter{%
  \ifstoneside\clearpage\else\cleardoublepage\fi
  \@mainmattertrue}

% my change
\DeclareCaptionFont{capFont}{\song\wuhao} % 表格名及图名用5号宋体
\DeclareCaptionLabelSeparator{twospace}{~~}
\captionsetup{
  labelsep=twospace,% 去掉图标签后的冒号
  font={capFont},%
  figurename=图,%
  tablename=表,%
  listfigurename=插图目录,%
  listtablename=表格目录}

\RequirePackage{hyperref}
\AtBeginDocument{\CJKindent{}%
    \InputIfFileExists{seuthesis-utf8.cfg}% 引入配置文件
    {\typeout{[seuthesis]: Load seuthesis-utf8.cfg successfully!}}%
    {\typeout{[seuthesis]: Load seuthesis-utf8.cfg failed!}}%
    \makeindex%
    \wuhao%
    \linespacing{\mainlineskip}
  }

\RequirePackage[top=2cm,bottom=2cm,left=2cm,right=2cm]{geometry}
\RequirePackage[pagestyles, rm]{titlesec}
\RequirePackage{titletoc} % 设置目录
\hypersetup{bookmarksnumbered=true}%书签中章节编号
\defaultfontfeatures{Mapping=tex-text} % --- as em-dash

\setlength{\parskip}{0pt}% 段距
\newcommand{\mainlineskip}{1.3}% 主行距1.3
\titlespacing{\section}{0pt}{3.5ex plus .05ex minus .01ex}{2.9ex plus .04ex} % 标题间距
\titlespacing{\subsection}{0pt}{3ex plus .05ex minus .01ex}{2ex plus .04ex}
\titlespacing{\subsubsection}{0pt}{1.5ex plus .05ex minus .01ex}{1ex plus .01ex}

%my change


\newcommand{\linespacing}[1]{\linespread{#1}\selectfont}% 行距命令
\newcommand{\stcleardp}{%
  \ifstoneside
  \clearpage
  \else
  \cleardoublepage
  \fi
}
\ifnocolorlinks
\hypersetup{colorlinks=false}
\else
\hypersetup{colorlinks=true}
\fi
\hypersetup{
  linkcolor=blue,
  anchorcolor=black,
  citecolor=olive,
  filecolor=magenta,
  menucolor=red,
  urlcolor=magenta
}
\newpagestyle{seustyle}{
  \sethead[][{\song{}\xiaowuhao{}\@headerlabel}][\song{}\xiaowuhao{}第\thepage 页] % 偶数页
  {}{{\song{}\xiaowuhao{}\@headerlabel}}{\song{}\xiaowuhao{}第\thepage 页} % 奇数页
  \setfoot{}{}{}
  \headrule
}
\newpagestyle{seufrontstyle}{
  \pagestyle{seunolabelstyle}
}
\newpagestyle{seunolabelstyle}{
  \sethead[][{\song{}\xiaowuhao{}\@headerlabel}][]
  {}{{\song{}\xiaowuhao{}\@headerlabel}}{}
  \setfoot{}{}{}
  \headrule
}
\renewpagestyle{plain}{
  \pagestyle{seunolabelstyle}
}

\newcommand{\@headerlabel}{} % 初始化为空
\newcommand{\headerlabel}[1]{\renewcommand{\@headerlabel}{#1}} % 用于设置 reporttitle 内容

\renewcommand{\author}[1]{
  \def\@author{#1}
}
\renewcommand{\title}[2]{
  \def\@title{#1}
  \renewcommand{\@subtitle}{#2}
}
\newcommand{\newtitleline}{\hfill\\%
  \hspace*{\fill}\hspace{0em}}
\newcommand{\@advisorname}{}
\newcommand{\advisor}[1]{
  \renewcommand{\@advisorname}{#1}
}
\newcommand{\@categorynumber}{}
\newcommand{\categorynumber}[1]{\renewcommand{\@categorynumber}{#1}}
\newcommand{\@UDC}{}
\newcommand{\UDC}[1]{\renewcommand{\@UDC}{#1}}
\newcommand{\@studentid}{}
\newcommand{\studentid}[1]{\renewcommand{\@studentid}{#1}}
\newcommand{\@reporttitle}{}
\newcommand{\reporttitle}[1]{\renewcommand{\@reporttitle}{#1}}
\newcommand{\degree}[1]{
  \renewcommand{\@appdegree}{#1}
}
\newcommand{\@majorlen}{8em}
\newcommand{\@major}{}
\newcommand{\major}[2][12em]{
  \renewcommand{\@major}{#2}
  \renewcommand{\@majorlen}{#1}
}
\newcommand{\@department}{}
\newcommand{\@departmentlen}{8em}
\newcommand{\department}[1]{
  \renewcommand{\@department}{#1}
}
\newcommand{\@duration}{}
\newcommand{\duration}[1]{\renewcommand{\@duration}{#1}}
\newcommand{\@address}{}
\newcommand{\address}[1]{\renewcommand{\@address}{#1}}
\renewcommand{\maketitle}{
  %
  % 设置书签
  % Note: The `CJKbookmarks' option should only be used for bookmarks
  % *not* in Unicode.
  \GetFileInfo{seuthesis.cls} % get the correct fileversion
  \hypersetup{
    pdfauthor={\@author},
    pdftitle={\universityname{}\@academicdegree}, %文件标题
    pdfsubject={\@title \@subtitle}, %文件主题
    pdfcreator={The \seuthesis{} class (v \fileversion)} % 应用程序
  }

  \pagestyle{empty}
  \ifdoublecover
  \stcleardp
  \else\fi
  \chinesecover

  \renewcommand*\frontmatter{%
    \if@twoside\cleardoubleoddpage\else\clearpage\fi
    \@mainmatterfalse\pagenumbering{Roman}% 大写罗马字母
  }

}
\newcommand{\seuthesis}{%
  S\hspace{-0.3ex}\raisebox{-0.5ex}{E}\hspace{-0.3ex}U\hspace{0.1em}%
  \textsc{Thesis}
}
\let\orig@emph=\emph
\renewcommand{\emph}[1]{{\normalfont\slshape #1}}

\newcommand{\CoverTopOption}[3][s]{
  \makebox[1.5cm][#1]{\xiaowuhao #2}:{
    \underline{\makebox[1.5cm][c]{\xiaowuhao #3}}}
}

\newcommand{\CoverBottomOption}[3][4.5cm]{
  \makebox[7cm][s]{
    {\song\xiaosihao#2} %宋体小四号
    \underline{\makebox[#1][c]{\hei\xiaosihao#3}} %黑体小四号粗体
  }
}

% 报告封面
\newcommand{\chinesecover}{
  \begin{titlepage}
    \linespacing{1.0}
    \begin{center}
      \ifseutextlogo
        \vspace*{20pt}
        \includegraphics[height=2.7cm]{figures/seu-text-logo} \\ % 东南大学的文本 logo 图标
        \vspace*{80pt}
        \xiaochuhao\hei \@coursetitle \\
        \vspace*{10pt}
      \fi
      \ifnoseulogo
        \vspace*{60pt} % 距离控制
        \xiaochuhao\hei \@coursetitle \\
        \vspace*{30pt}
      \fi
      \ifseutextandcolorlogo
        \vspace*{20pt}
        \raisebox{-0.5cm}{\includegraphics[height=3.8cm]{figures/seu-color-logo.png}}
        \quad \quad 
        \includegraphics[height=2.7cm]{figures/seu-text-logo} \\ % 东南大学的文本 logo 图标
        \vspace*{80pt}
        \xiaochuhao\hei \@coursetitle \\
        \vspace*{10pt}
      \fi
      
      \vspace*{70pt}

      \renewcommand{\arraystretch}{1.3}
        \setlength{\tabcolsep}{0pt}
        \begin{tabular}{c}
          \ifshowreporttitle
            \sanhao\reporttitlepre\quad\underline{%
              \makebox[20em][s]{\makebox[20em][c]{%
                  \textsf{\@reporttitle}}}} \\
          \fi          
          \ifshowdepartment
            \sanhao\underline{%
              \makebox[8em][s]{\makebox[8em][c]{%
                  \textsf{\@department}}}}\quad\departmentpre
          \fi
          \ifshowmajor
            \sanhao\underline{%
              \makebox[8em][s]{\makebox[8em][c]{%
                  \textsf{\@major}}}}\quad\majorpre\\
          \fi
          \ifshowstudentid
            \sanhao\studentidpre\quad\underline{%
              \makebox[20em][s]{\makebox[20em][c]{%
                  \textsf{\@studentid}}}} \\
          \fi
          \ifshowstudentname
            \sanhao\studentnamepre\quad\underline{\makebox[20em][s]{%
                \makebox[20em][c]{\fs{\@author}}}} \\
          \fi
          \ifshowadvisor
            \sanhao\advisorpre\quad\underline{\makebox[20em][s]{%
                \makebox[20em][c]{\fs{\@advisorname}}}} \\
          \fi
          \ifshowduration
            \sanhao\durationpre\quad\underline{\makebox[20em][s]{%
                \makebox[20em][c]{\fs{\@duration}}}} \\
          \fi
          \ifshowaddress
            \sanhao\addresspre\quad\underline{\makebox[20em][s]{%
                \makebox[20em][c]{\fs{\@address}}}} \\
          \fi
        \end{tabular}

    \end{center}
  \end{titlepage}
}


\let\tableofcontents@orig=\tableofcontents
\renewcommand{\tableofcontents}
{
  \stcleardp
  {\linespacing{1.15}%
  \song\xiaosihao%
  \phantomsection
  \pagestyle{seunolabelstyle}
  \tableofcontents@orig \par
  \clearpage} %目录部分字体可采用小四号宋体。

  \renewpagestyle{plain}{\pagestyle{seustyle}}
}
\newenvironment{terminology}[1][\@terminologytitle]
{
  \stcleardp
  \phantomsection
  \addcontentsline{toc}{chapter}{#1}
  \chapter*{#1}
  \song\xiaosihao
}{
  \par
}
\newenvironment{Main}
{
  \mainmatter % 开始正文部分
  \song\xiaosihao % 小四号宋体
}{
  \par
  \backmatter % 开始正文之后的部分
}
\renewcommand{\textfraction}{0.07}
\renewcommand{\topfraction}{0.9}
\renewcommand{\bottomfraction}{0.8}
\renewcommand{\floatpagefraction}{0.85}
\setcounter{totalnumber}{6}
\let\originalcite=\cite
\renewcommand{\cite}[1]{\textsuperscript{\originalcite{#1}}}
\renewcommand{\citet}[1]{\originalcite{#1}}

% my change
\newif\ifthu@bachelor
\def\thudot{\ifthu@bachelor\else\unskip.\fi}
\bibliographystyle{thuthesis}
% my change
\let\orig@bibliography=\bibliography
\renewcommand{\bibliography}[1]{
  \orig@bibliography{#1}
  \pagestyle{seustyle}\clearpage % 使参考文献使用 seunolabel 页面样式
  \pagestyle{seufrontstyle}} % 恢复原有样式给后续部分
{\par}
\newenvironment{Appendix}
{%
  \pagestyle{seustyle}
  \@mainmattertrue
  \appendix
  \titlecontentsappendix
}{\@mainmatterfalse\par
  \thispagestyle{seustyle}\clearpage
}


\endinput
%%
%% End of file `seuthesis.cls'.
