% The file sjrp.cls is a LaTeX class for authors' response.
% Copyright (C) 2016-2019 by Jun Shang <shangjunthu@gmail.com>
%% The latest version:
%% https://github.com/ShangJunTHU/Responses

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sjrp}
              [2019/07/16 v1.10 @ University of Alberta]

\def\@sizeopt{10pt}
\DeclareOption{8pt}{\def\@sizeopt{8pt}}
\DeclareOption{9pt}{\def\@sizeopt{9pt}}
\DeclareOption{11pt}{\def\@sizeopt{11pt}}
\DeclareOption{12pt}{\def\@sizeopt{12pt}}
\DeclareOption{13pt}{\def\@sizeopt{13pt}}

\DeclareOption{naked}{
\newcommand{\mynewtheorem}{\newtheorem}
\def\@skipsizeopt{0pt}
}

\DeclareOption{framed}{
\newcommand{\mynewtheorem}{\newframedtheorem}
\def\@skipsizeopt{-1pt}
}

\newcommand\placeauthor{
{\bf Authors:}~\Monster@value@author \par
\vskip 3pt
}
\DeclareOption{anonymous}{
\renewcommand\placeauthor{\relax}
}
\ProcessOptions

\LoadClass[\@sizeopt]{extarticle}

\RequirePackage{amsmath,amsfonts,amssymb,bm}
\RequirePackage{titlesec,textcomp,framed}
\RequirePackage[framed,amsmath]{ntheorem}
\RequirePackage[margin=20mm]{geometry}

\renewcommand\author[1]{\def\Monster@value@author{#1}}
\newcommand\msID[1]{\def\Monster@value@msID{#1}}
\renewcommand\title[1]{\def\Monster@value@title{#1}}

\newcommand\makelion{%
      {\bf Submission number:}~\Monster@value@msID \par
      \vskip 3pt
      {\bf Title:}~\Monster@value@title \par
      \vskip 3pt
      \placeauthor
      \begin{center}%
      {\LARGE \bf Authors' responses \par}%
      \vskip 15pt
      \end{center}
}

\newcounter{fin}
\newcounter{naught}
\theoremstyle{break}

\mynewtheorem{com}[fin]{Comment}
\mynewtheorem{gcom}[naught]{Comment}
\theorempostskipamount=\@skipsizeopt
\newenvironment{response}{
{\vskip -2pt \noindent \bf Response: \par \vskip -5pt}
}

\newcommand{\RAE}{\section*{\centering Responses to the Associate Editor}}
\newcommand{\RE}{\section*{\centering Responses to the Editor}}
\newcommand{\RR}[1]{\section*{\centering Responses to Reviewer No.#1} \setcounter{fin}{0} \setcounter{naught}{-1}  }

\parindent=0pt
\parskip=0.5\baselineskip plus 5pt

\linespread{1.2}

\endinput
%% End of file `sjrp.cls'.
