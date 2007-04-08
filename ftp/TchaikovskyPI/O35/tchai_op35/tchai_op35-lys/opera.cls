%       $Id: opera.cls,v 1.5 2003/03/01 12:43:14 nicolas Exp $  
\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{opera}[2002/03/17 Nicolas Sceaux.
 Opera document class for use with lilypond]

%%%%%%%%%%%%% options, packages %%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

\ProcessOptions\relax
\LoadClass[twoside,10pt]{report}

\RequirePackage{ifthen}
\RequirePackage[latin1]{inputenc}
\RequirePackage{fancyhdr}
\RequirePackage{tocloft}

%%%%%%%%%%%%% page layout %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newlength\operadim
\setlength\headheight{6mm}
\setlength\headsep   {8mm}
\setlength\topskip   {0mm}
\setlength\footskip  {8mm}
\setlength\textwidth {170mm}
\setlength\marginparsep   {0mm}
\setlength\marginparpush  {0mm}
\setlength\marginparwidth {0mm}
\setlength\topmargin   {10mm}
%\setlength\topmargin   {14mm}
\addtolength\topmargin {-1in}
\setlength\textheight  {\paperheight}
\addtolength\textheight{-\headheight}
\addtolength\textheight{-\topmargin}
\addtolength\textheight{-\headsep}
\addtolength\textheight{-\topskip}
\addtolength\textheight{-1in}
\addtolength\textheight{-\footskip}
\addtolength\textheight{-10mm}
%\addtolength\textheight{-14mm}
% oddsidemargin = evensidemargin = (paperwidth - textwidth) / 2 - 1in
\setlength\oddsidemargin{\paperwidth}
\addtolength\oddsidemargin{-\textwidth}
\addtolength{\oddsidemargin}{-0.5\oddsidemargin}
\addtolength\oddsidemargin{-1in}
\setlength\evensidemargin{\oddsidemargin}

%%%%%%%%%%%%% some titling variables and commands %%%%%%%
\newcommand\operatitle{}
\newcommand\operasubtitle{}
\newcommand\operasubsubtitle{}
\newcommand\operacomposer{}
\newcommand\operapoet{}
\newcommand\operaopus{}
\newcommand\operadate{}
\newcommand\operamutopianumber{}
\newcommand\operamaintainer{}
\newcommand\operamaintaineremail{}
\newcommand\operalastupdate{}
\newcommand\operacopyright{}

\renewcommand\title[1]{\renewcommand\operatitle{#1}}
\newcommand\subtitle[1]{\renewcommand\operasubtitle{#1}}
\newcommand\subsubtitle[1]{\renewcommand\operasubsubtitle{#1}}
\newcommand\composer[1]{\renewcommand\operacomposer{#1}}
\newcommand\poet[1]{\renewcommand\operapoet{#1}}
\newcommand\opus[1]{\renewcommand\operaopus{#1}}
\renewcommand\date[1]{\renewcommand\operadate{#1}}
\newcommand\mutopianumber[1]{\renewcommand\operamutopianumber{#1}}
\newcommand\maintainer[1]{\renewcommand\operamaintainer{#1}}
\newcommand\maintaineremail[1]{\renewcommand\operamaintaineremail{#1}}
\newcommand\lastupdate[1]{\renewcommand\operalastupdate{#1}}
\renewcommand\copyright[1]{\renewcommand\operacopyright{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% cleardoublepage redifinition : empty pages
\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}
  \vspace*{\fill}
  \hbox{}
  \vspace{\fill}
  \thispagestyle{empty}
  \newpage
  \if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother

%%%%%%%%%%%%% sectionning variables and commands: acts and scenes %%%%%%%%
% \oddmark defines the head text on odd pages
\newcommand \oddmark {}
% \evenmark defines the head text on even pages
\newcommand \evenmark {}

% act counter. theact is displayed using arabic numbers
\newcounter {act}
\renewcommand \theact {\arabic{act}}
% scene counter. thescene is displayed using roman numbers
\newcounter {scene}[act]
\renewcommand \thescene {\Roman{scene}}
% Ouverture, act and scene names. these should be redefined
\newcommand \ouverturename{Ouverture}
\newcommand \actname {Atto}
\newcommand \scenename {Scena}
% ouverture, act and scene full qualifications : name + number
\newcommand \ouverturemark{\ouverturename}
\newcommand \actmark {\actname\space\ifcase\theact\or%
  Primo\or Secondo\or Terzo\or Quarto\fi}
\newcommand \theuserscene{}
\newcommand \scenemark {\theuserscene}

% ouverture macro:
%  - ouverture title
%  - ouverture in toc
%  - redefines header marks
\newcommand\ouverture{%
  \cleardoublepage
  \thispagestyle{empty}
  \renewcommand \oddmark {\em \MakeUppercase{\ouverturemark}}
  \renewcommand \evenmark{\em \MakeUppercase{\ouverturemark}}
  \typeout{Ouverture}%
  \vspace*{10mm}%
  {\center \Large \MakeUppercase{\ouverturemark}.\par
    \vskip 10mm\nobreak}
  \addcontentsline{toc}{section}{%
    \operawithfixedlength{}{}{}{\characterswidth}{}
    \operawithfixedlength{\ouverturemark}{}{}{0pt}{\sc }}}

% act macro:
%  - act title
%  - act in toc
%  - redifines header marks
\newcommand\act{%
  \cleardoublepage
  \thispagestyle{empty}
  \refstepcounter {act}%
  \typeout{\actmark}%
  \renewcommand \oddmark {\em \MakeUppercase{\scenemark}}
  \renewcommand \evenmark{\em \MakeUppercase{\actmark}}
  \setcounter {scene} {0}%
  \vspace*{10mm}%
  {\center \Huge \bfseries \MakeUppercase{\actmark}\par\nobreak
    \vskip 10mm \nobreak}
  \addtocontents{toc} {\protect\addvspace{4mm}}%
  \addtocontents{toc} {\hfill {\Large \em \actmark.} \hfill \hfill\par}%
  \addtocontents{toc} {\protect\addvspace{4mm}}}

\newcommand\descract[1] {%
  \center \large \MakeUppercase{\scenemark}\\
  \nobreak%
  \parbox[t]{10cm}{\center #1\par\nobreak}
  \vskip 8mm\nobreak}

\newcommand\descractend[1] {%
  \parbox[t]{10cm}{\center #1\par}}

% scene{name}
\newcommand\scene[1] {%
  \refstepcounter {scene}%
  \renewcommand \theuserscene {#1}%
  \penalty -300
  \addvspace{5mm}}

\newcommand\descrscene[1] {%
  \center \large \MakeUppercase{\scenemark}\\
  \nobreak%
  \parbox[t]{10cm}{\center #1\par\nobreak}
  \vskip 8mm\nobreak}

\newcommand\descrsceneend[1] {%
  \center \large \MakeUppercase{\scenemark}\\
  \nobreak%
  \parbox[t]{10cm}{\center #1\par}}

% \newcommand\description[1] {%
%   \center \large \MakeUppercase{\scenemark}\\
%   \nobreak%
%   \parbox[t]{10cm}{\center #1\par\nobreak}
%   \vskip 8mm\nobreak}

% \newcommand\descriptionend[1] {%
%   \center \large \MakeUppercase{\scenemark}\\
%   \nobreak%
%   \parbox[t]{10cm}{\center #1\par}}

%%%%%%%%%%%%% sectionning variables and commands: pieces %%%%%%%%
%
\newcommand\chorusmark{Coro}
%
% variables and lengths used in toc
% first col width (where is displayed character names)
\newlength\characterswidth%
% second col width (where is displayed piece type name=
\newlength\piecetypewidth%
% others private lengths and vars
\newlength\operawidtha%
\newlength\operawidthb%
\newcommand\operaprevchar{}%
\newcommand\operaprevtype{}%
\newcommand\operacharrep{\hspace{2ex}}%
\newcommand\operastra{}%
\newcommand\operastrb{}%
\newcommand\operatyperep{\hspace{2ex}''}%
\setlength\characterswidth{30mm}%
\setlength\piecetypewidth{15mm}

\newcommand\includedir{}

% \operawithfixedlength
%   [extraoffset=0mm] extra offset to add if string is longer than total length
%   {string}          the string to display
%   {string modifier} a modifier, like \sc or \em
%   {previous string} the previous displayed string
%   {string replacement} a replacement if string=previous string
%   {total length}
\newcommand \operawithfixedlength[6][0mm]{%
  \renewcommand\operastra{#6 #2}
  \ifthenelse{% is it the same character than the last time ?
    \equal{#2}{#3}} {%
    \renewcommand\operastrb{#6 #4}} {% yes -> character name replacement
    \renewcommand\operastrb{\operastra}} % no -> we keep character name
  \settowidth{\operawidtha}{\operastrb}% 
  \ifthenelse{%
    \lengthtest{\operawidtha<#5}}{%
    \setlength\operawidthb{-\operawidtha}%
    \addtolength\operawidthb{#5}}{%
    \setlength\operawidthb{#1}}
  {\operastrb\hspace{\operawidthb}}}%
%
\newcommand\ariaWithToc[3]{%
  \addcontentsline{toc}{section}{%
    \operawithfixedlength{#1}{\operaprevchar}{\operacharrep}{\characterswidth}{\sc }%
    \operawithfixedlength{#2}{\operaprevtype}{\operatyperep}{\piecetypewidth}{\em }%
    #3}%
  \renewcommand\operaprevchar{#1}
  \renewcommand\operaprevtype{#2}}%
\newcommand\instrWithToc[1]{%
  \addcontentsline{toc}{section}{%
    \operawithfixedlength{}{}{}{\characterswidth}{}
    \operawithfixedlength{#1}{}{}{0pt}{\sc }}}
\newcommand\piecePageTitle[1]{%
  \ifthenelse{\equal{#1}{}}{}{%
    \par \penalty -9000
      {\center\Large \MakeUppercase{#1.}
      \par\nobreak}\vskip 12mm
      \nobreak}}
\newcommand\includePiece[1]{%
  \input \includedir/#1
  \vspace{7mm}}

%%%%%%%%%% few other commands: characters %%%%%%%%%%%%%%%              
\newcommand \partitle[1] {%
  \begin{center}
    {\Large \em \MakeUppercase{#1}}
  \end{center}}

\newcommand{\charactergroup}[1]{%
  \begin{center}
    {\large #1}
  \end{center}
}
\newcommand{\character}[3]{%
  {\sc #1}, #2 \hfill {\em #3}\\
}

%%%%%%%% title page, toc %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\cfttoctitlefont{\hfill \Large \em}
\renewcommand\cftaftertoctitle{\hfill \thispagestyle{empty}}
\renewcommand\contentsname{CONTENTS}
\renewcommand\maketitle{\begin{titlepage}
    \null\vfil
    \vskip 30mm
    \begin{center}%
      {\Huge\slshape\operacomposer}
      \vskip 3em%
      \vskip 1.5em%
      {\Huge\bfseries\MakeUppercase{\operatitle}}
      \vskip 1.5em%
      {\huge\bfseries\MakeUppercase{\operasubtitle}}
      \vskip 1.5em%
\vspace{50mm}%
{\Large \operaopus \par \operadate \par}%
{\large \operasubsubtitle \par}%
\vfil%
\vfil%
\operacopyright%
\null%
    \end{center}
  \end{titlepage}}
%%%%%%%%%%%%% page decoration %%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}

\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[RO,LE]{\thepage}
\fancyhead[CO]{\oddmark}
\fancyhead[CE]{\evenmark}
\fancyfoot[LO,RE]{\operacopyright}


% commands to print the public domain notice at the end of the music
\newcommand \MutopiaFooterOnThisPage {
  \vfill
  \operamutopianumber\\
  This music is part of the Mutopia project,
  \texttt{http://www.mutopiaproject.org/}\\
  It has been typeset and placed in the public domain by
  \operamaintainer {\tt <\operamaintaineremail>}.\\
  Unrestricted modification and redistribution is permitted
  and encouraged---copy this music and share it!\\
}
% \newcommand \MutopiaFooterOnThisPage {
%   \thispagestyle{fancy}
%   \fancyfoot{}
%   \lfoot{
%     \ \\[-5em]
%     \operamutopianumber\\
%     This music is part of the Mutopia project,
%       \texttt{http://www.mutopiaproject.org/}\\
%     It has been typeset and placed in the public domain by
%   \operamaintainer {\tt <\operamaintaineremail>}.\\
%     Unrestricted modification and redistribution is permitted
%       and encouraged---copy this music and share it!\\
%   }
% }

