% The file sjrp.cls is mainly used for response.
% Copyright (C) 2016-2017 by Jun Shang <shangjunthu@gmail.com>
%% The latest version:
%% https://github.com/ShangJunTHU/TEX

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sjrp}
              [2017/03/37 v1.05 @Tsinghua University]

\LoadClass[11pt]{article}
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
\theorempostskipamount=-1pt
\newframedtheorem{comment}[fin]{Comment}

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
