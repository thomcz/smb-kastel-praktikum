%Klasse für AIFB-Seminare
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{AIFB_ITI_Crypto_Seminar}[2009/07/22 Vorlage AIFB-Seminararbeiten]

%Baut auf article auf.
\LoadClass[a4paper,12pt]{scrartcl}

%Deutsche Sprache und deutscher Zeichensatz
\RequirePackage[ngerman]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

%Schriftart und -satz
\RequirePackage{lmodern}
\RequirePackage{microtype}

%Tabellen
\RequirePackage{tabularx}

%Grafiken
\RequirePackage{graphicx}

%Verweise
\RequirePackage[colorlinks=false, pdfborder={0 0 0}]{hyperref}

%Maßeinheiten
\RequirePackage{siunitx}


%Seminar definieren
\def\Seminartitel#1{\gdef\@Seminartitel{#1}}
%Semester definieren
\def\Semester#1{\gdef\@Semester{#1}}
%Autor definieren
\def\Autor#1{\gdef\@Autor{#1}}
%Matrikelnummer definieren
\def\Matrikelnummer#1{\gdef\@Matrikelnummer{#1}}
%Betreuer definieren
\def\Betreuer#1{\gdef\@Betreuer{#1}}
%Titel der Arbeit definieren
\def\Arbeitstitel#1{\gdef\@Arbeitstitel{#1}}


%Titelseite und Inhaltsverzeichnis erstellen
\newcommand{\makeTitleAndTOC}{
\thispagestyle{empty}
\noindent
\begin{figure}[h!]
  \begin{minipage}{0.6\textwidth}
  \raggedright
	  	Kompetenzzentrum für angewandte
		Sicherheitstechnologie\\
		Karlsruher Institut für Technologie\\
		\vspace{1em}
		~\\
  \end{minipage}\hfill
  \begin{minipage}{0.3\textwidth}
  	\raggedleft
  	\includegraphics[width=3.5cm]{Bilder/KASTEL-Logo_1000}
   \end{minipage}
\end{figure}

\vspace{1cm}

\noindent
\@Seminartitel
\newline
\@Semester

\vspace{3cm}

\noindent
{\Large\textbf{\@Arbeitstitel}}

\vspace{3cm}

\noindent
\begin{tabular}{ll}
Autor:	      & \@Autor\\
Matrikelnr.:  & \@Matrikelnummer \\
              &           \\
Betreuer:	  & \@Betreuer\\
\end{tabular}

%Eigenständigkeitserklärung
\clearpage
\thispagestyle{empty}
\section*{Erklärung}
\vspace*{2em}
Wir versichern wahrheitsgemäß, die Arbeit selbstständig angefertigt, alle 
benutzten Hilfsmittel vollständig und genau angegeben und alles kenntlich gemacht zu haben, was aus Arbeiten anderer unverändert oder mit Abänderungen entnommen wurde.
\vspace{3em}

Karlsruhe, \@Semester
\vspace{4em}
\\..........................................................................................\\
\@Autor


%Inhaltsverzeichnis
\clearpage
\thispagestyle{empty}
\tableofcontents
\clearpage

\setcounter{page}{1}
}

