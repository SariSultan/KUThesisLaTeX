% kuwait university thesis template
% author Sari Sultan: contact :: sarisultan[!at.]ieee!org
%					Include "[KU LaTeX Template]" in the Subject line.
%% ---------------------<START COPYRIGHT AND PERMISSION>---------------
%Copyright <2019> <SARI SULTAN>
%
%Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
%
%
%THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
%% ---------------------<END COPYRIGHT AND PERMISSION>--------------------
% TEMPLATE VERSIONS :
%		- VERSION 1.0 (December 10, 2017)
%				+ CREATED THE INITIAL TEMPLATE
%		- VERSION 1.1 
%				+ CREATED ARABIC TITLE PAGE
%		- VERSION 1.2
%				+ ADDED FANCY HEADER FIX FOR PAGE NUMBERING
%%					BECAUSE THERE IS A BUG FOR BABEL PACKAGE
%					WHEN ARABIC LANGUAGE IS USED WHICH MAKES
%					ROMAN NUMBERS BE DISPLAYED AS ARABIC NUMBERING
%		- VERSION 1.3 
%				+ FIXED CHAPTER HEADER PLACEMENT AND SIZE
%		- VERSION 1.4
%				+ ADDED GEOMETRY PACKAGE WITH MARGINS
%		- VERSION 1.5
%				+ FIXED SPACING BEFORE LISTS (ITEMIZE, ENUMERATE)
%		- VERSION 1.6
%				+ CHANGED GEOMETRY MARGINS
%	    - VERSION 1.7
%				+ CHANGED TO MEMOIR DOCUMENT CLASS 
%		- VERSION 1.8 
%				+ ADDED A LINE BREAK AFTER PARAGRAPH AND SUBPARAGRAPH (25-AUG-2018)
%		- VERSION 1.9
%				+ ADDED COMMENT ON THE TITLE PAGE FOR THIS CLASS VERSION 
%					IT IS BETTER TO BE IDENTIFIED AND UPGRADED 
%					(06-SEP-2018)
%		- VERSION 2.0 (SEP 14 2018)
%				+ CHANGED 'CONTENTS' TO 'TABLE OF CONTENTS' (see \contentsname)
%				+ FIXED AN ISSUE IN LIST OF TABLES (it was Table.) (changed to Table) [removed the .]
%				+ EDITED FONT SIZES TO MATCH WORD TEMPLATE (model of thesis.docx)
%				+ EDITED HEADING STYLES TO MATCH WORD TEMPLATE (model of thesis.docx)
%		- VERSION 2.1 (Oct 30 2018)
%				+ ADJUSTED SECTIONS HEADINGS' SPACING
%				+ REMOVED THE TEMPLATE VERSION ON COPYRIGHT PAGE
%		- VERSION 3.0 (Dec 4, 2018)
%				+ The COGS reviewed the template and gave me comments on the template.
%		- VERSION 3.1 (Dec 6, 2018)
%				+ Received comments from COGS on v3.0, and was added in V3.1.
%		- VERSION 3.2 (Dec 7, 2018)
%				+ Changed "Table Of Contents" to "Table of Contents". 
%				+ OPEN ISSUE: (For references with more than 6 references, it should print only the first 6 references followed by "et al.") This cannot be done in BibTex. It can be solved with BibLaTeX (but not implemented yet). Solution: student should adjust the bibtex file and remove authors after the sixth one. Implication: this will not produce "et al." in the references. 
%		- VERSION 3.3 (Dec 8, 2018)
%				+ Fixed bug in (\paragraph) head style (thnx: atta).  
%		- VERSION 3.4 (Dec 9, 2018)
%				+ Fixed an issue with section heading styles when they used 2 lines		
%		- VERSION 3.5 (Dec 11, 2018)
%				+ Changed some of the wording to meet COGS stringent requirements. Easter told me today that they do not follow the standard APA format, she want to replace the bibliography item that has more than 6 authors with (et al.) instead of (... last author name). The latter is the standard APA format. 
%		- VERSION 3.6 (Dec 12, 2018)
%				+ Change minor wording (capital to small letters), and changed the CV sections and data.
% ---------------------<START DISCLAIMAR>--------------------------------
% DISCLAIMAR: 	USING THIS TEMPLATE MIGH NOT RESULT IN THE 		SAME 
%				TEMPLATE REQUIRED BY KUWAIT UNIVERSITY, IT IS 	 THE 
%				STUDENT'S JOB TO REVIEW AND MAKE SURE THAT WHAT THEY
%				DELIVER MEETS THE DEPARTMENT REQUIREMENTS. AND 	 THE 
%				AUTHOR OF THIS TEMPLATE HOLDS NO RESPONSABILITY  FOR
%				ANY DOCUMENTS GENERATED USING THIS 		   TEMPLATE.
%				
%				THIS IS A VOLUNTARY WORK DONE BY THE AUTHOR OF   THE
%				TEMPLATE, THAT HAS NOT BEEN FUNDED BY ANY ENTITY  OR
%				ORGANIZATION. THE MEAN REASON WHY I DID THIS      IS
%				BECAUSE THE UNIVERSITY DID NOT HAVE A LaTeX TEMPLATE
%				AND IT IS HARD TO WRITE THE THESIS USING MS    WORD. 
% ---------------------<END DISCLAIMAR>----------------------------------

\def\CurrentVersion{3.6}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kuwaituniversitythesis}[2018/12/09]


%=====================
%=   LINE SPACING OPTION =
%=====================
\def\mystretch{1.5}		% Double spacing hack

\DeclareOption{doublespace}{}	% This is default
% So we do not read this style twice
\DeclareOption{singlespace}{		% If he explicitly wants single spacing
	\typeout{Single spaced}
	\def\mystretch{1}
}


\DeclareOption{largeparskip}{	
	\AtBeginDocument{	
\setlength{\parskip}{2ex}
\def\afterHeadingSpacing{0.0\parskip}% +0pt plus 2pt minus 2pt
\def\beforeHeadingSpacing{\parskip}%0pt plus 4pt minus 2pt

%\titlespacing\chapter{0pt}{100pt}{0pt} %this was not working in v3.1 fixed to the following
\makeatletter

\def\@makechapterhead#1{%
  %%%%\vspace*{50\p@}% %%% removed!
  {\parindent \z@ %\raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \centering \fontsize{14pt}{\baselineskip} \bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip -20\p@
    \fi
    \interlinepenalty\@M
		%	\begingroup
%\singlespacing
 \vskip 20\p@
     \centering \fontsize{14pt}{15pt} \bfseries #1\par\nobreak
	 %\endgroup
    \vskip 5\p@
  }}
\def\@makeschapterhead#1{%
  %%%%%\vspace*{50\p@}% %%% removed!
  {\parindent \z@ %\raggedright
    \normalfont
    \interlinepenalty\@M
	\begingroup
\singlespacing
    \centering \fontsize{14pt}{\baselineskip} \bfseries  #1\par\nobreak
	  \endgroup
    \vskip 5\p@
  }}

\makeatother



\titlespacing\section{0pt}{\beforeHeadingSpacing}{\afterHeadingSpacing}
\titlespacing\subsection{0pt}{\beforeHeadingSpacing}{\afterHeadingSpacing}
\titlespacing\subsubsection{0pt}{\beforeHeadingSpacing}{\afterHeadingSpacing}
\titlespacing\paragraph{0pt}{\beforeHeadingSpacing}{\afterHeadingSpacing}
\titlespacing\subparagraph{0pt}{\beforeHeadingSpacing}{\afterHeadingSpacing}
}
}


%\newif\if@largeparskip
%\@largeparskiptrue

%\if@largeparskip
%%----------------SPACING
%
%\setlength{\parskip}{1cm}

%
%\fi

%=====================
%=  LOADING MEMOIR 			 =
%=====================
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}} 


\ProcessOptions\relax

\LoadClass{memoir}

\RequirePackage{titlesec}

\DisemulatePackage{setspace}
\usepackage{setspace}
\def\baselinestretch{\mystretch}	

%\setlength{\oddsidemargin}{0.25in}	% 1.25in left margin
%\setlength{\evensidemargin}{0.25in}	% 1.25in left margin (even pages)
%\setlength{\topmargin}{0.0in}		% 1in top margin
%\setlength{\textwidth}{6.0in}		% 6.0in text - 1.25in rt margin
%\setlength{\textheight}{9in}		% Body ht for 1in margins
%\addtolength{\topmargin}{-\headheight}	% No header, so compensate
%\addtolength{\topmargin}{-\headsep}	% for header height and separation
% The next two macros compensate page style for headers and footers
% We only need them in page styles that USE headers and footers.
% If we have a header, it must be 1in from top of page.
%\def\pulldownheader{			% Shift header down 1in from top
%	\addtolength{\topmargin}{\headheight}
%	\addtolength{\topmargin}{\headsep}
%	\addtolength{\textheight}{-\headheight}
%	\addtolength{\textheight}{-\headsep}
%}
%% If we have a footer, put it 1in up from bottom
%\def\pullupfooter{				% Shift footer up
%	\addtolength{\textheight}{-\footskip}
%	%    \addtolength{\textheight}{-\footheight}  %footheight doesn't
%	%    						exist in 2e
%}


%=====================
%=   VARIABLES  					   =
%=====================
\def\prevdegrees#1{\gdef\@prevdegrees{#1}}
\def\@prevdegrees{}

\def\department#1{\gdef\@department{#1}}

% If you are getting two degrees, use \and between the names.
\def\degree#1{\setbox0\hbox{#1}	 %for side effect of setting \@degreeword
	\gdef\@degree{#1}}

\def\program#1{\setbox0\hbox{#1}	 %program
	\gdef\@program{#1}}
% \and is used inside the \degree argument to separate two degrees
\def\and{\gdef\@degreeword{degrees} \par and \par}
\def\@degreeword{degree}

\def\thesisdate#1{\gdef\@thesisdate{#1}}
% typically just a month and year
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\copyrightYear#1{\gdef\@copyrightYear{#1}}
\def\degreecountry#1{\gdef\@degreecountry{#1}}
\def\supervisor#1#2#3{
	\gdef\@supervisorPrefix{#1\space}
	\gdef\@supervisorName{#2}
	\gdef\@supervisorTitle{#3}
}
\def\cosupervisor#1#2#3{
	\gdef\@cosupervisorPrefix{#1\space}
	\gdef\@cosupervisorName{#2}
	\gdef\@cosupervisorTitle{#3}
}
\def\sampleThesis#1{
	\gdef\@samplep{#1\space}
}


\def\convener#1#2#3{
	\gdef\@convenerPrefix{#1\space}
	\gdef\@convenerName{#2}
	\gdef\@convenerTitle{#3}
}
\def\memberA#1#2#3{
	\gdef\@memberAPrefix{#1\space}
	\gdef\@memberAName{#2}
	\gdef\@memberATitle{#3}
}
\def\memberB#1#2#3{
	\gdef\@memberBPrefix{#1\space}
	\gdef\@memberBName{#2}
	\gdef\@memberBTitle{#3}
}
\usepackage[table,dvipsnames]{xcolor}%https://tex.stackexchange.com/questions/83101/option-clash-for-package-xcolor
%moved xcolor package here because if it is loaded after eso-pic it generates
%open clash error
\usepackage[pscoord]{eso-pic}
\newcommand{\placetextbox}[3]{% \placetextbox{<horizontal pos>}{<vertical pos>}{<stuff>}
  \setbox0=\hbox{#3}% Put <stuff> in a box
  \AddToShipoutPictureFG*{% Add <stuff> to current page foreground
    \put(\LenToUnit{#1\paperwidth},\LenToUnit{#2\paperheight}){\vtop{{\null}\makebox[0pt][c]{#3}}}%
  }%
}%

%=====================
%=   TITLE PAGE  					   =
%=====================
\def\maketitlepage{
	%\phantomsection
	%\addcontentsline{toc}{chapter}{Title Page}
	\begin{titlepage}
	\newcommand{\titlelineskip}{\vspace*{5ex}}
	\begingroup
	\fontsize{18pt}{\baselinestretch} \bfseries
		{Kuwait University}
		\titlelineskip
		\vfill
		{\@title} 
	\endgroup
	\par
	\begingroup
	\fontsize{16pt}{\baselinestretch} \bfseries
		\titlelineskip
		{Submitted by:} 
		\par
		{\@author}
		
	\titlelineskip
	\vfill 
	
		{ A Thesis Submitted to the College of Graduate Studies in Partial Fulfillment of the Requirements for the \@degree\\ Degree in:}
		\par
		{\@program}
		
	\titlelineskip
		\vfill
		
		{Supervised by:}
		\par
		\ifdef{\@samplep}{Name of Supervisor}{{\@supervisorPrefix}{\@supervisorName}}
		

		\ifdef{\@samplep}{
		(Co-Supervisor) (if any)
}{		\ifdef{\@cosupervisorName}{
%\titlelineskip
%		{Co-Supervisor:}
		\par
		{\@cosupervisorPrefix}{\@cosupervisorName} (Co-Supervisor)
}{}}

		\titlelineskip
		\vfill
		{\@degreecountry}
		\par
		{\@degreemonth , \@degreeyear}
		\endgroup
		%\begin{picture}(10,6)
		%  \put(0.1cm,0.2cm) {\makebox[0pt][r]{Kuwat University \LaTeX\space Template Version \CurrentVersion}}
		%\end{picture}
\end{titlepage}
}
\def\titlepage{\cleardoublepage\centering
	\pagenumbering{roman}
	\thispagestyle{empty}		
	\parindent 0pt \parskip 10pt plus 1fil minus 1fil
	\def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup
}
% The \kern0pt pushes any depth into the height.  Thanks to Richard Stone.
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}
%=====================
%=   COPYRIGHT PAGE  					   =
%=====================
\def\makecopyright{
		%\phantomsection
	%\addcontentsline{toc}{chapter}{Copyrights \textcopyright}
	\begin{copyrightpage}
		\vfill
		{ \textcopyright \space \@copyrightYear}
		\par
		{All Rights Reserved}
		%\vfill
		\mbox{}
		%\placetextbox{0.5}{0.02}{\makebox[0pt][c]{\textsc{\bfseries \footnotesize Generated Using Kuwat University \LaTeX\space Template \textsl{(not official, created by a student)} Version [\CurrentVersion]}}}%
\end{copyrightpage}}
\def\copyrightpage{
%	\hbox{}\par\vfill\centerline%
%	{THIS PAGE INTENTIONALLY LEFT BLANK}%
%	\vfill\newpage
	\global\@topnum\z@		% Prevents figures from going at top of page.
	\centering
	\thispagestyle{plain}
	\parindent 0pt \parskip 10pt plus 1fil minus 1fil
	\def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup
}
% The \kern0pt pushes any depth into the height.  Thanks to Richard Stone.
\def\endcopyrightpage{
	\par\kern 0pt\egroup\vss\egroup\newpage}
%=====================
%=   SIGNATORY PAGE  		=
%=====================
\usepackage{ifthen}
\usepackage{ragged2e} %to use \justify in signatory page
\usepackage[normalem]{ulem} %to use underline in signatory page
\def\dr{Dr.\space}
\def\makesignatory{
%	\cleardoublepage
	%\phantomsection
	%\addcontentsline{toc}{chapter}{Signatory Page}
	\begin{signatorypage}
		\newcommand{\signatorylineskip}{\vspace*{5ex}}
\begingroup
		\fontsize{14pt}{\baselineskip} \bfseries
		{ {Kuwait University}}
		\par
		{ {College of Graduate Studies}}
		
		\signatorylineskip
		{\uline{Signatory Page} }
		
		{ (Thesis Examination Committee) }
\endgroup
		\signatorylineskip
	\begingroup
	\begin{doublespace}
	\justify
				
		  { \fontsize{12pt}{13pt} \selectfont \hspace{\parindent} The undersigned certify that they have read, and recommend to the College of Graduate Studies for acceptance, a \@degree\space thesis entitled \ifdef{\@samplep}{"XXX" }{"\@title" } submitted by \ifdef{\@samplep}{XXX}{\@author\space} in partial fulfillment of the requirements for the \@degree\space degree in \ifdef{\@samplep}{XXX}{\@program}, \ifdef{\@samplep}{Faculty of XXX }{\@department}.
		  }
		 \end{doublespace}
	\endgroup
	\par
		\begingroup
		\begin{singlespace}
		\justify
		\fontsize{12pt}{\baselineskip}
		\signatorylineskip		
		{\noindent \bfseries Signature of committee members \hfill Date\hspace{0cm}\hfill}
		\par~\\
		
		{\noindent \underline{\hspace{8cm}} \hfill \underline{\hspace{3cm}}\hfill}
		
		\ifdef{\@samplep}{ \par\noindent{\bfseries XXX - XXX }(Convener)}
		{{\par\noindent\bfseries  \@convenerPrefix \@convenerName
		\ifthenelse{\equal{\@convenerPrefix}{\dr}}{, \@convenerTitle}{\space}}{(Convener)}}
		
		\signatorylineskip
		{\noindent \underline{\hspace{8cm}} \hfill \underline{\hspace{3cm}}\hfill}
		\par
		\ifdef{\@samplep}{
		\noindent{\bfseries Supervisor, Associate Professor }(Supervisor)
		
		\signatorylineskip
		{\noindent \underline{\hspace{8cm}} \hfill \underline{\hspace{3cm}}\hfill}
		\par
		{\noindent\bfseries Co-Supervisor (if any), Assistant Professor
		} {(Co-Supervisor)}
		
		}
		{{\noindent\bfseries \@supervisorPrefix \@supervisorName
\ifthenelse{\equal{\@supervisorPrefix}{\dr}}{, \@supervisorTitle}{\space}
		} {(Supervisor)}
		
			\ifdef{\@cosupervisorName}{
		\signatorylineskip
		{\noindent \underline{\hspace{8cm}} \hfill \underline{\hspace{3cm}}\hfill}
		\par
		{\noindent\bfseries \@cosupervisorPrefix \@cosupervisorName
\ifthenelse{\equal{\@cosupervisorPrefix}{\dr}}{, \@cosupervisorTitle}{\space}
		} {(Co-Supervisor)}
}{}
		}
		

		\signatorylineskip
		{\noindent \underline{\hspace{8cm}} \hfill \underline{\hspace{3cm}}\hfill}
		\par
		\ifdef{\@samplep}{\noindent {\bfseries XXX, Associate Professor}  (Member)}{
		{\noindent\bfseries \@memberAPrefix \@memberAName 
\ifthenelse{\equal{\@memberAPrefix}{\dr}}{, \@memberATitle}{\space}
		} {(Member)}
		}
		
%		\ifdef{\@memberBName}{
%		\signatorylineskip
%		{\noindent \underline{\hspace{8cm}} \hfill \underline{\hspace{3cm}}\hfill}
%		\par
%		{\noindent\bfseries \@memberBName, \@memberBTitle} {(Member)}
%}{}
		\vfill
		\end{singlespace}
		\endgroup
\end{signatorypage}
}
\def\signatorypage{\clearpage\centering
	
	\thispagestyle{plain}
	\parindent 0pt \parskip 10pt plus 1fil minus 1fil
	\def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
% The \kern0pt pushes any depth into the height.  Thanks to Richard Stone.
\def\endsignatorypage{\par\kern 0pt\egroup\vss\egroup\newpage}

%=====================
%=   ARABIC TITLE PAGE  		=
%=====================

\def\maketitleArabic{

	\begin{titlepageArabic}
%		\thispagestyle{empty}
	\begin{Arabic}
			%\phantomsection
		%\addcontentsline{toc}{chapter}{\textarabic{عُنوانُ الأُطرُوحة باللُّغة العربية}}
			\begin{center}
\newcommand{\arabiccoverspacing}{\vspace*{2ex}}
\newcommand{\arabiccoverspacingtwo}{\vspace*{1ex}}
\fontsize{20pt}{\baselineskip} \bfseries
				\universityName


\vfill

				\titleArabic
\arabiccoverspacing

\titleArabicLb \\
	\titleArabicLbDegree
	
\vfill
				
				\titleArabicLa  \\
				\studentName
								
\arabiccoverspacing


				\titleArabicLc		\\
				\supervisorArabic
				
\par
				\cosupervisorArabic\space\titleArabicLcCOsupervisor\\
				
				
				\vfill
				
				\KuwaitArabic\\											
				\thesisMonthArabic - \yearr				
			\end{center}
	\end{Arabic}
\end{titlepageArabic}}
\def\titlepageArabic{
		\cleardoublepage
		\centering
%		\pagenumbering{Roman}
		\thispagestyle{empty}

	}

	\def\endtitlepageArabic{

	}

%%<VERSION 1.8>
%\titleformat{\paragraph}[hang]{\normalfont\normalsize\bfseries}{\theparagraph}{1em}{}
%\titlespacing*{\paragraph}{0pt}{3.25ex plus 1ex minus .2ex}{0.5em}
%\titleformat{\subparagraph}[hang]{\normalfont\normalsize\bfseries}{\thesubparagraph}{1em}{}
%\titlespacing*{\subparagraph}{0pt}{3.25ex plus 1ex minus .2ex}{0.5em}
%%</VERSION 1.8>

\usepackage{etoolbox}
%====================
%= FONT SIZE ==========
%====================
\def\sarispacingsec{2pt}
\renewcommand{\partnumfont}{\fontsize{17pt}{\baselineskip}\bfseries}
\renewcommand{\partnamefont}{\fontsize{17pt}{\baselineskip}\bfseries}
\renewcommand{\parttitlefont}{\fontsize{17pt}{\baselineskip}\bfseries}

\renewcommand{\chapnumfont}{\fontsize{14pt}{0pt}\bfseries}
\renewcommand{\chapnamefont}{\fontsize{14pt}{0pt}\bfseries}
\renewcommand{\chaptitlefont}{\fontsize{14pt}{15pt}\bfseries}

\renewcommand{\secheadstyle}{\fontsize{12pt}{\baselineskip}\bfseries}
\preto{\secheadstyle}{\setSpacing{1}} % requires package "etoolbox"
\addtolength{\beforesecskip}{-\parskip}

\renewcommand{\subsecheadstyle}{\fontsize{12pt}{\baselineskip}\bfseries}
\preto{\subsecheadstyle}{\setSpacing{1}} % requires package "etoolbox"
\addtolength{\beforesubsecskip}{-\parskip}

%\usepackage{ulem} % this solution dont work due to incompatability with titlesec
%\newcommand\underlinedhead[1]{\noindent\uline{#1}}% this solution dont work due to incompatability with titlesec

%\renewcommand{\subsubsecheadstyle}{\fontsize{12pt}{\baselineskip}}
\usepackage{soulutf8}%to use \ul
%\titleformat{\subsubsection}{\normalfont\fontsize{12pt}{\baselineskip}}{\thesubsubsection}{1em}{\ul}[]
\renewcommand{\subsubsecheadstyle}{\fontsize{12pt}{\baselineskip}\itshape\bfseries}
\preto{\subsubsecheadstyle}{\setSpacing{1}} % requires package "etoolbox"
\addtolength{\beforesubsubsecskip}{-\parskip}

%\renewcommand{\paraheadstyle}{\fontsize{12pt}{\baselineskip}\itshape}
%\setparaheadstyle{\normalsize\itshape}
\titleformat{\paragraph}{\setSpacing{1} \itshape \fontsize{12pt}{\baselineskip}}{\theparagraph}{1em}{\itshape}[]
%\renewcommand{\paraheadstyle}{\fontsize{12pt}{\baselineskip}\itshape}
%\setafterparaskip{1sp}
%\preto{\paraheadstyle}{\setSpacing{1}} % requires package "etoolbox"
%\addtolength{\beforeparaskip}{-\parskip}



%\renewcommand{\subparaheadstyle}{\fontsize{12pt}{\baselineskip}\itshape}
\titleformat{\subparagraph}{\setSpacing{1} \itshape \fontsize{12pt}{\baselineskip}}{\itshape \ul  \thesubparagraph }{1em}{\itshape \ul }[]
%\preto{\subparagraph}{\setSpacing{1}} % requires package "etoolbox"
%\addtolength{\beforesubparaskip}{-\parskip}

%================================
%= CHAPTER STYLE AND HEADING =
%==================================
\makeevenfoot{headings}{}{\thepage}{}
\makeoddfoot{headings}{}{\thepage}{}
\makeevenhead{headings}{}{}{}
\makeoddhead{headings}{}{}{}

\copypagestyle{chapter}{plain} % make chapter a page style of its own
\makeevenfoot{chapter}{}{\thepage}{}
\makeoddfoot{chapter}{}{\thepage}{}
\makeevenhead{chapter}{}{}{}
\makeoddhead{chapter}{}{}{}


\renewcommand{\printchaptertitle}[1]{\centering\chaptitlefont{#1}}%\chaptitlefont\MakeUppercase%\textsc{#1}
\makeatletter
\renewcommand{\printchaptername}{\centering\chapnamefont{\@chapapp}}%\textsc
%\chapnamefont\MakeUppercase
\makeatother
%\renewcommand{\printchapternum}{\chapnumfont\Arabic{chapter}}

%<Begin X1> The following is used to add CHAPTER word in TOC before the chapter name and make it caps
%\usepackage{titlesec}
\usepackage{tocloft}
%\renewcommand\printtoctitle[1]{\HUGE\bfseries #1}

\renewcommand{\cftpartfont}{\bfseries} %\scshape
\renewcommand{\cftchapterfont}{\bfseries}   %\scshape
\renewcommand{\cftchapterleader}{\cftdotfill{\cftdotsep}} % for chapters

\renewcommand{\cftchaptername}{\bfseries Chapter~}%\scshape
\renewcommand{\cftchapteraftersnum}{:}
\newlength{\mylength}
\settowidth{\mylength}{\cftchapterpresnum} %\cftchapteraftersnumb\cftchapteraftersnum\cftchapterpresnum
\addtolength\cftchapternumwidth{\mylength}
%\renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}} % for parts

%\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}} % for sections, 

\renewcommand*{\cftappendixname}{Appendix\space}
\renewcommand{\cftfigurename}{Figure\space}
\renewcommand{\cfttablename}{Table\space}

%%% no extra space before the entry, or in the LoF/LoT
\setlength{\cftbeforechapterskip}{0pt plus 0pt}
\renewcommand*{\insertchapterspace}{}

\renewcommand{\cftfigureaftersnum}{.}
\renewcommand{\cfttableaftersnum}{.}
%<End X1>

\AtBeginDocument{

%\renewcommand{\bibname}{References} % this changes the name from bibliography to references. Dont move it.
%\renewcommand{\refname}{References} 
\setsecnumdepth{subparagraph}
\setcounter{secnumdepth}{5} % see this https://tex.stackexchange.com/questions/130795/how-can-i-number-sections-below-subsection-in-latex
\setcounter{tocdepth}{5}

\addto\captionsenglish{% Replace "english" with the language you use
	\renewcommand{\contentsname}%
	{Table of Contents}%
}

}

%=====================
%=   MARGINS							 =
%=====================

\setlrmarginsandblock{2.5cm}{2.5cm}{*} % left right
\setulmarginsandblock{3cm}{*}{1} % top bottom
\checkandfixthelayout 
