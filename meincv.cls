\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{meincv}[2019/12/25 My custom CV class]
\listfiles % show package version in log
\LoadClass[fontsize=11pt]{scrartcl}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	Required Packages       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{titlesec}[2019/12/26] % customize sections
\RequirePackage{tabto}[2019/12/26] % spacing between points
\RequirePackage[T1]{fontenc} % prettier font
\RequirePackage{xcolor} 
\RequirePackage{enumerate}
\RequirePackage{enumitem}

%\setenumerate{noitemsep,topsep=0pt,align=left,leftmargin=*} must be added in .tex file currently //TODO FIX

\definecolor{moderncvblue}{rgb}{0.22,0.45,0.70}

\RequirePackage[left=2.0cm, right=2.0cm, top=1.8cm, bottom=2.0cm]{geometry}  % change margin
\RequirePackage{fontawesome}  % for beautiful icons
\RequirePackage{tikz} % tool for producing graphic elements

\RequirePackage{nopageno} % no pagen numbers


\RequirePackage[ngerman]{babel} 
\RequirePackage{datetime}

\RequirePackage{graphicx}  % to insert images

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	 Commands       	%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




\newcommand{\newparagraph}{
\vskip 0.2cm}

% update font
\renewcommand*\familydefault{\sfdefault} 

% Customize \section command
\titleformat{\section}         
  {\normalfont\Large\raggedright\color{moderncvblue} \vskip 0.05cm} 
  {}{0em}                      
  {}                           
  [\titlerule]  

% Customize \subsection command

\titleformat{\subsection}
  {\vskip -0.3cm \normalfont\Large\raggedright\color{moderncvblue} \vskip 0.2cm} 
  {}{0em}                      
  {}                           

% the following lines should have the same distance too.
% First a distance is produced with tabto. Secondly it produces a parbox, so that the following lines have the same distance too.

\newcommand*{\mytab}[1]{\tabto{4.5cm}\parbox[t]{\dimexpr\textwidth-4.5cm}{#1}} % \dimexpr is used when a quanitity of a type is needed

% for new lines
\newcommand{\cvline}[2]{
\vskip 0.2cm
\noindent#1 \mytab{#2}

}


% for following lines with description of the actitvity
\newcommand{\cvsubline}[1]{
\footnotesize#1
}

% huge name placed in the center
\newcommand{\name}[1]{%
  \centerline{\color{moderncvblue}\Huge\textbf{#1} \color{gray}\textbf{| Lebenslauf}}
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


% new design for bulletpoint symbol 

% Macro for a prettier bulletpoint symbol design

\newcommand{\cvbullet}{\tikz\draw[thick,moderncvblue,fill=white] (0,0) circle (0.05);}

\newcommand{\cvbullethyphen}{\color{moderncvblue}-}

% add picture

\newcommand{\photo}[1]{

\setlength{\unitlength}{1pt}
\begin{picture}(0,0)
	\color{moderncvblue}\setlength{\fboxsep}{0pt}%
	\setlength{\fboxrule}{0.4pt}%
	\put(365,-155){\fbox{\includegraphics[width=4cm]{#1}}}
\end{picture}


}


