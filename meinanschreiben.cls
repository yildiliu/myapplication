\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{meinanschreiben}[2019/12/29 My custom cover letter class]
\LoadClass{scrlttr2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	Required Packages       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[T1]{fontenc} % prettier font
\RequirePackage{xcolor} 
\definecolor{moderncvblue}{rgb}{0.22,0.45,0.70}


\RequirePackage[left=2.0cm, right=2.0cm, top=1.8cm, bottom=2.0cm]{geometry}  % change margin
\RequirePackage{fontawesome}  % for beautiful icons


\RequirePackage{nopageno} % no pagen numbers
\RequirePackage[ngerman]{babel} 
%\RequirePackage{datetime} %ngerman and datetime dont cooperate well. ToDO: research
\RequirePackage{graphicx}  % to insert images

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	 Commands       	%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% omit identation
\setlength{\parindent}{0pt}

% update font
\renewcommand*\familydefault{\sfdefault} 

% huge name placed in the center
\newcommand{\name}[1]{%
  \centerline{\color{moderncvblue}\Huge\textbf{#1} \color{gray}\textbf{| Anschreiben}}
\vskip 0.1cm
}





% contact below name for a modern look and also for a consistently design
 \newcommand{\contact}[4]{%
     \centerline{%
         \makebox[0pt][c]{%
         \color{gray}    #1 \ {\footnotesize\textbullet} \ #2 \ {\footnotesize\textbullet} \ #3 \ {\footnotesize\textbullet} \ #4 
         }%
     }%
 }

