% The file sjrp.cls is mainly used for response.
% Copyright (C) 2016-2017 by Jun Shang <shangjunthu@gmail.com>
%% The latest version:
%% https://github.com/ShangJunTHU/Responses

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sjrp}
              [2017/04/07 v1.08 @Tsinghua University]

\def\@sizeopt{11pt}
\DeclareOption{9pt}{\def\@sizeopt{9pt}}
\DeclareOption{10pt}{\def\@sizeopt{10pt}}
\DeclareOption{12pt}{\def\@sizeopt{12pt}}
\DeclareOption{13pt}{\def\@sizeopt{13pt}}

\DeclareOption{naked}{
\newcommand{\mynewtheorem}{\newtheorem}
\def\@skipsizeopt{0pt}
}

\DeclareOption{framed}{\newcommand{\mynewtheorem}{\newframedtheorem}
\def\@skipsizeopt{-1pt}
}
\ProcessOptions

\LoadClass[\@sizeopt]{article}

\RequirePackage{amsmath,amsfonts,amssymb,bm}
\RequirePackage{titlesec,textcomp,framed}
\RequirePackage[framed,amsmath]{ntheorem}
\RequirePackage[margin=20mm]{geometry}

\newcommand\msID[1]{\def\Monster@value@msID{#1}}
\renewcommand\title[1]{\def\Monster@value@title{#1}}
\renewcommand\author[1]{\def\Monster@value@author{#1}}

\newcommand\makelion{%
      {\bf Submission number:}~\Monster@value@msID \par
      \vskip 3pt
      {\bf Title:}~\Monster@value@title \par
      \vskip 3pt
      {\bf Authors:}~\Monster@value@author \par
      \vskip 3pt
      \begin{center}%
      {\LARGE \bf Authors' responses \par}%
      \vskip 15pt
      \end{center}
}

\newcounter{fin}
\theoremstyle{break}

\mynewtheorem{comment}[fin]{Comment}
\theorempostskipamount=\@skipsizeopt
\newenvironment{response}{
{\vskip 2pt \noindent \bf Response: \par}
}

\newcommand{\RAE}{\section*{\centering Responses to the Associate Editor}}
\newcommand{\RR}[1]{\section*{\centering Responses to Reviewer No.#1} \setcounter{fin}{0} }

\parindent=0pt
\parskip=0.5\baselineskip plus 2pt

\linespread{1.2}

\endinput
%%
%% End of file `sjrp.cls'.
