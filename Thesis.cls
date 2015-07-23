%%
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{rotating}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\usepackage[toc]{glossaries}
\usepackage{ltablex}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\usepackage[inline]{enumitem} % load this one
\setlist[description]{style=unboxed}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage[table,xcdraw]{xcolor}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\usepackage{accsupp}
\usepackage[tikz]{bclogo}

\definecolor{commentGreen}{RGB}{128,127,41}
\definecolor{stringGreen}{RGB}{0,127,38}
\definecolor{keywordRed}{RGB}{151,0,11}
\definecolor{typePurple}{RGB}{128,3,82}
\definecolor{variableBlue}{RGB}{0,0,255}
\definecolor{annotationRed}{RGB}{198,4,38}
\definecolor{annotationBlue}{RGB}{32,21,223}
\definecolor{amber}{rgb}{0.94,1.0,0.94}
\definecolor{columbiablue}{rgb}{0.94,1.0,1.0}
\definecolor{carnationpink}{rgb}{0.99,0.76,0.8}
\definecolor{grannysmithapple}{rgb}{0.74,0.83,0.9}
\definecolor{britishracinggreen}{rgb}{0.0, 0.26, 0.15}
\definecolor{flashwhite}{rgb}{0.95, 0.95, 0.96}
\definecolor{cobalt}{rgb}{0.0, 0.28, 0.67}
\definecolor{aliceblue}{rgb}{0.94, 0.97, 1.0}


\lstdefinestyle{numbers} {captionpos=t,tabsize=1,frame=lines,keywordstyle=\color{blue},commentstyle=\color{britishracinggreen},stringstyle=\color{red},numbers=left,numberstyle=\tiny,numbersep=5pt,breaklines=true,showstringspaces=false,basicstyle=\footnotesize,emph={label}t}

\newcommand{\mysinglespacing}{%
  \setstretch{1}% no correction afterwards
}

\lstdefinelanguage{drools}{
    sensitive=true,
    captionpos=t,
    numbers=left,
    keywordsprefix=\$,
    alsoletter={:, },
    morekeywords=[2]{long,int,boolean,double,float,enum},
    morekeywords=[3]{declare,end,extends,from,insert,modify,not,new,no loop,query,retract,rule,salience,then,this,when, eval},
    morekeywords=[4]{after,before,during,over window:length,over window:time,overlaps},
    morekeywords=[5]{{no loop},over window:length,over window:time},
    morecomment=[l]{//},
    morecomment=[s]{/*}{*/},
    moredelim=[s][\color{annotationRed}\itshape]{@}{)},
    moredelim=[s][\color{annotationBlue}\itshape]{@[}{]},
    morestring=[b]",
    morestring=[d]',
    breaklines=true,
%%% default style
    basicstyle=\ttfamily\footnotesize\mysinglespacing,
    % identifierstyle=\normalfont,
    commentstyle=\color{commentGreen}\itshape,
    keywordstyle=\color{keywordRed}\bfseries,
    keywordstyle=[1]\color{variableBlue}\itshape,
    keywordstyle=[2]\color{typePurple}\bfseries,
    keywordstyle=[3]\color{keywordRed}\bfseries,
    keywordstyle=[4]\color{keywordRed}\bfseries,
    keywordstyle=[5]\color{stringGreen}\bfseries,
    stringstyle=\color{stringGreen}
}[comments,keywords,strings]

\usepackage{float}
\lstdefinestyle{UmplePlainFrame}{ breaklines=true, backgroundcolor=\color{flashwhite},keywordstyle=\color{cobalt},frame=shadowbox, basicstyle=\ttfamily\footnotesize\mysinglespacing}
\lstdefinestyle{UmpleInFrame}{ breaklines=true,backgroundcolor=\color{grannysmithapple},keywordstyle=\color{cobalt},keywordstyle=\color{blue},frame=shadowbox,basicstyle=\ttfamily\footnotesize\mysinglespacing}
\lstdefinestyle{UmpleOutFrame}{ breaklines=true,backgroundcolor=\color{grannysmithapple},keywordstyle=\color{cobalt},frame=shadowbox,basicstyle=\ttfamily\footnotesize\mysinglespacing}
\lstdefinestyle{JavaFrame}{ breaklines=true,backgroundcolor=\color{amber},frame=shadowbox, basicstyle=\normalfont\ttfamily\mysinglespacing}

\lstdefinestyle{java} {language=Java,style=numbers,style=JavaFrame,frame=lines,basicstyle=\ttfamily\footnotesize\mysinglespacing, morekeywords={include,printf}}

\lstdefinestyle{umpleIn} {language=Java,style=numbers,style=UmpleInFrame,frame=lines, morekeywords={isA, depend,const, after, lazy, immutable,namespace, String, association,Integer,autounique,unique,Float, Double, Date, Time, before, key, associationClass}}

\lstdefinestyle{umplePlain} {language=Java, style=UmplePlainFrame, morekeywords={isA, depend,const, after, lazy, immutable,namespace, String, association,Integer,autounique,unique,Float, Double, Date, Time,before,key, associationClass, function, replace, by, end, include}}

\lstdefinestyle{umplePlainNumbers} {language=Java, style=UmplePlainFrame, morekeywords={isA, depend,const, after, lazy, immutable,namespace, String, association,Integer,autounique,unique,Float, Double, Date, Time,before,key, associationClass, function, replace, by, end, include}}

\lstdefinestyle{atl} {language=Java,style=numbers, style=UmplePlainFrame, morekeywords={isA, depend,const, after, lazy, immutable,namespace, String, association,Integer,autounique,unique,Float, Double, Date, Time,before,key, associationClass, function, replace, by, end, include,module, OUT, from, IN, helper, context, if, else, rule, out,to,endif}}

\lstdefinestyle{mine} {style=numbers, style=UmplePlainFrame, morekeywords={Transformation, params, helpers, out, in, mappings, conditions}}

\lstdefinelanguage{grammar}{
    sensitive=true,
    captionpos=t,
    numbers=left,
    morekeywords=[2]{classDefinition,methodBody, classContent,attribute, autouniqueAttribute,derivedAttribute,complexAttribute,association,symmetricReflexiveAssociation inlineAssociation,inlineAssociationEnd,singleAssociationEnd ,associationEnd,multiplicity,isSorted,
   classDefinition, trace, emitMethod, templateAttributeDefinition, primitiveDefinition, portDefinition, portBindingDefinition, position ,displayColor, abstract, keyDefinition, softwarePattern, depend, symmetricReflexiveAssociation, attribute ,stateMachine, activeMethodDefinition, inlineAssociation, concreteMethodDeclaration ,constantDeclaration, modelConstraint ,invariant ,exception ,extraCode,codeLangs, precondition, postcondition, comment, fixml, typedName, moreCode},
    morekeywords=[3]{self, sorted, settable, internal, defaulted, const,immutable, unique, lazy,class},
    morekeywords=[4]{type, roleName, lowerBound, upperBound, bound, priority,name},  %green
    breaklines=true,
%%% default style
    basicstyle=\ttfamily\footnotesize\mysinglespacing,
    % identifierstyle=\normalfont,
    commentstyle=\color{commentGreen},
    keywordstyle=\color{keywordRed},
    keywordstyle=[2]\color{variableBlue},
    keywordstyle=[3]\color{keywordRed},
    keywordstyle=[4]\color{stringGreen},
}[comments,keywords,strings]

\lstdefinestyle{umpleOut} {language=Java,style=numbers,style=UmpleOutFrame,frame=lines,morekeywords={isA, depend,const, after, lazy, immutable,namespace, String, association,Integer,autounique,unique,Float, Double, Date, Time,before,key, associationClass}}


\lstset{captionpos=t,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
        
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}

\usepackage{siunitx}
\abovecaptionskip=\skip50
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {}
\examiner    {}
\degree      {}
\authors     {}
\university  {\texorpdfstring{\href{University Web Site URL Here (include http://)}
                {University Name}}
                {University Name}}
\UNIVERSITY  {\texorpdfstring{\href{University Web Site URL Here (include http://)}
                {UNIVERSITY OF OTTAWA}}
                {UNIVERSITY NAME (IN BLOCK CAPITALS)}}
\department  {\texorpdfstring{\href{Department or School Web Site URL Here (include http://)}
                {Computer Science}}
                {Computer Science}}
\DEPARTMENT  {\texorpdfstring{\href{Department or School Web Site URL Here (include http://)}
                {DEPARTMENT OR SCHOOL NAME (IN BLOCK CAPITALS)}}
                {DEPARTMENT OR SCHOOL NAME (IN BLOCK CAPITALS)}}
\group       {\texorpdfstring{\href{Research Group Web Site URL Here (include http://)}
                {Research Group Name}}
                {Research Group Name}}
\GROUP       {\texorpdfstring{\href{Research Group Web Site URL Here (include http://)}
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
\faculty     {\texorpdfstring{\href{Faculty Web Site URL Here (include http://)}
                {Faculty of Graduate and Postdoctoral Studies}}
                {Faculty Name}}
\FACULTY     {\texorpdfstring{\href{Faculty Web Site URL Here (include http://)}
                {FACULTY NAME (IN BLOCK CAPITALS)}}
                {FACULTY NAME (IN BLOCK CAPITALS)}}
\addresses   {}
\subject     {}
\keywords    {}
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\UNIVNAME}\par}
      \vfill
      {\huge \bf \@title \par}
      \vfill
      {\LARGE by \par}
      \smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large Thesis submitted to the \par}
      {\large Faculty of Graduate and Postdoctoral Studies \par}
      {\large in partial fulfillment of  the requirements for the degree of \par}
      \bigskip
      \bigskip
      {\large Doctor of Philosophy \par}
      {\large in \par}
      {\large Computer Science \par}
      {\large Under the auspices of the Ottawa-Carleton Institute for Computer Science \par}
      \bigskip
      \bigskip
      {\large in the \par}
      {\large \facname \par}
      {\large \deptname \par}
      \bigskip
      \bigskip
      \bigskip
      {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \UNIVNAME \par}
    \bigskip
    {\huge{\textit{Abstract}} \par}
    \bigskip
    {\normalsize \facname \par}
    {\normalsize \deptname \par}
    \bigskip
    {\normalsize Doctor of Philosophy\par}
    \bigskip
    {\normalsize\bf \@title \par}
    \medskip
    {\normalsize by \authornames \par}
    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\usepackage{multicol}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\usepackage{textcomp}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\usepackage{pbox}
\usepackage{array, ltablex, multirow} 
\newcolumntype{Y}{>{\centering\arraybackslash}X}
\newcolumntype{b}{X}
\newcolumntype{s}{>{\hsize=.5\hsize}X}

\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
%%
%% End of file `Thesis.cls'.
