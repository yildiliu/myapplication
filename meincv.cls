\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{meincv}[2019/12/25 My custom CV class]

\LoadClass{scrartcl}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	Required Packages       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{titlesec}[2019/12/26] % customize sections
\RequirePackage{tabto}[2019/12/26] % spacing between points
\RequirePackage[T1]{fontenc} % prettier font
\RequirePackage{xcolor} 
\definecolor{moderncvblue}{rgb}{0.22,0.45,0.70}

\RequirePackage[left=2.0cm, right=2.0cm, top=1.7cm, bottom=2.0cm]{geometry}  %Seitenrand anpassen.
\RequirePackage{fontawesome}  %Paket für schönere Symbole bei den persönlichen Daten.
 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 	 Commands       	%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% update font
\renewcommand*\familydefault{\sfdefault} 

% Customize \section command
\titleformat{\section}         
  {\normalfont\Large\raggedright\color{moderncvblue}} 
  {}{0em}                      
  {}                           
  [\titlerule]  

% the following lines should have the same distance too.
% First it makes a distance. Secondly it produces a parbox so all the words are in the parbox

\newcommand*{\mytab}[1]{\tabto{4.5cm}\parbox[t]{\dimexpr\textwidth-4.5cm}{#1}} % \dimexpr is used when a quanitity of a type is needed

% for new lines
\newcommand{\cvline}[2]{
\noindent#1 \mytab{#2}

}


% for following lines with description of the actitvity
\newcommand{\cvsubline}[1]{
\footnotesize#1
}

% huge name placed in the center
\newcommand{\name}[1]{%
  \centerline{\color{moderncvblue}\Huge\textbf{#1} \color{gray}\textbf{| Lebenslauf}}
}


% % contact below name for a modern look and also for a consistently design
% \newcommand{\contact}[4]{%
%     \centerline{%
%         \makebox[0pt][c]{%
%             #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3 {\large\textperiodcentered} #4
%             
%         }%
%     }%
% }













