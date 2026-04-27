% Tesiclassica.cls

% Classe che mette insieme sotto forma di classe parte del preambolo di Lorenzo Pantieri, % come modificate da Tommaso Gordini e ulteriormente modificate da Claudio Beccari. 
%
% Nessuna delle persone citate è tenuta a riconoscere la paternità di questa classe
%
% Gli statement seguenti:
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[english,italian]{babel}[2014/09/01]
% non sono inclusi nella classe, anche se sono fortemente raccomandati nel preambolo
% della tesi.
%
% I font, invece, sono specifici di questa classe e non devono essere cambiati.
%

\NeedsTeXFormat{LaTeX2e}[2014/01/01]
\ProvidesClass{tesiclassica}[2014/10/13 v1.0 Classe per comporre tesi di stile classico]
\DeclareOption{*}{\PassOption\CurrentOptionToClass{scrreprt}}
\ProcessOptions*\relax
\LoadClass[%
    open=right,
    titlepage,
    fleqn,
    cleardoublepage=empty,
    abstract=true,
    numbers=noenddot,
    BCOR5mm,
    captions=abovetable
]{scrreprt}[2013/12/01]


% per avere rientrato anche il primo capoverso dopo un titolo di sezione
\RequirePackage{indentfirst}
% supporto alla scrittura della matematica avanzata
\RequirePackage{amsmath}[2013/01/01]
\RequirePackage{amssymb}
\RequirePackage{amsthm}[2009/07/01]
% per avere i riferimenti incrociati completi dell'indicazione della pagina
\RequirePackage[italian]{varioref}[2014/07/01]
% per la bibliografia
\RequirePackage[autostyle,italian=guillemets]{csquotes}[2011/10/01]
\RequirePackage[%
    %style=philosophy-modern,
    %style = numeric
    %bibstyle=numeric,
    %citestyle = philosophy-modern,
    hyperref,
    natbib,%
    backref,
    %square,
    backend=biber]{biblatex}[2014/06/01]
% bibliografia nell'indice con le testatine giuste
\defbibheading{bibliografia}[\bibname]{\chapter{#1}\markboth{#1}{#1}}
% Non è incluso il nome della o delle risorse bibliografiche. Ulteriori personalizzazioni
% per la bibliografia possono essere eseguite nel preambolo della tesi.
% Va da sé che la bibliografia va compilata con biber; ma repetita iuvant.
%
% per gli eventuali miniindici                                          
%\RequirePackage[tight,italian]{minitoc}[2008/07/01]
% per impostare i margini del frontespizio
\RequirePackage{chngpage}[2009/10/01]
\RequirePackage{calc}[2007/08/01]
% per i sottooggetti mobili
\RequirePackage{subfig}
% per il simbolo dell'euro
\RequirePackage{eurosym}
% per gestire le immagini e per assicurare uno spazio dopo i comandi che producono testo
\RequirePackage{graphicx}[2014/02/01]
\RequirePackage{xspace}[2009/10/01]
% Pacchetto di stile classicthesis
\RequirePackage[%
    eulerchapternumbers,
    subfig,% 
    beramono,
    eulermath,%
    pdfspacing]{classicthesis}[2012/08/01]
% ulteriore stile ArsClassica
\RequirePackage{arsclassica}[2012/02/01]

\setlength{\textheight}{\dimexpr\textheight-6\baselineskip}
\setlength{\topmargin}{\dimexpr\topmargin+3\baselineskip}
\setlength{\textwidth}{\dimexpr\textwidth+6pt}
\setlength{\evensidemargin}{\dimexpr\evensidemargin-6pt}
% molte impostazioni utili
%
% un ambiente ad hoc per le citazioni
\newenvironment{citazione}%
  {\begin{quotation}\small}%
  {\ignorespaces\end{quotation}}

% definizione di \omissis con gli spazi giusti
\newcommand{\omissis}{[\textellipsis\unkern]}

% eccezioni all'algoritmo di sillabazione
\hyphenation{Fortran ma-cro-istru-zio-ne nitro-idrossil-amminico}

% imposta un nuovo contatore
\newcounter{dummy}

%%% MATEMATICA %%%

% comandi per gli insiemi numerici (serve il pacchetto amssymb)
\newcommand{\numberset}{\mathbb} 
\newcommand{\N}{\numberset{N}} 
\newcommand{\R}{\numberset{R}} 

% un ambiente per i sistemi
\newenvironment{sistema}%
  {\left\lbrace
  \array{@{}l@{}}}%
  {\endarray\right.}

% definizioni di enunciati matematici (serve il pacchetto amsthm)
\theoremstyle{definition} 
\newtheorem{definizione}{Definizione}

% teoremi, leggi e decreti  pacchetto amsthm è già caricato)
\theoremstyle{plain} 
\newtheorem{teorema}{Teorema}
\newtheorem{legge}{Legge}
\newtheorem{decreto}[legge]{Decreto}
\newtheorem{murphy}{Murphy}[section]


\endinput














