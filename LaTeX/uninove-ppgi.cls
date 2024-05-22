% ----------------------------------------------------------------------------------------- % 
%	Esta classe contém o modelo latex de dissertação ou tese utilizado pela uninove
%	no programa de pós graduação do PPGIGC e está de acordo com o modelo institucional
%	
%	Alguns parâmetros foram baseados no modelo latex do IME USP, desenvolvido
% 	pelo professor Jesús P. Mena-Chalco:
%	http://latex-exemplo.blogspot.com.br/2015/11/modelo-latex-para-dissertacoes-e-teses.html
%
% ----------------------------------------------------------------------------------------- % 

\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt,oneside,a4paper]{book}
% ----------------------------------------- % 
%
%	Carregando pacotes
%
% ----------------------------------------- % 
\RequirePackage[T1]{fontenc}
\RequirePackage{courier}					% fonte padrão
\RequirePackage[brazil]{babel}				% especificação de mais de um idioma
\RequirePackage[utf8]{inputenc}				% codificações de caracteres especiais
\RequirePackage[pdftex]{graphicx}           % usamos arquivos pdf/png como figuras
\RequirePackage{setspace}                   % espaçamento flexível
\RequirePackage{indentfirst}                % indentação do primeiro parágrafo
\RequirePackage{imakeidx}                   % índice remissivo
\RequirePackage[nottoc]{tocbibind}          % acrescentamos a bibliografia/indice/conteudo no Table of Contents
\RequirePackage{type1cm}                    % fontes realmente escaláveis
\RequirePackage{listings}                   % para formatar código-fonte (ex. em Java)
\RequirePackage{titletoc}					% permite mais de duas colunas no documento
\RequirePackage[fixlanguage]{babelbib}		% correção para bibliografia
\RequirePackage[font=small,format=plain,labelfont=bf,up,textfont=it,up]{caption}
\RequirePackage[usenames,svgnames,dvipsnames]{xcolor}
\RequirePackage[a4paper,top=3cm,bottom=2.0cm,left=3cm,right=2.0cm]{geometry} % margens
\RequirePackage[hyphens,spaces,obeyspaces]{url}
\RequirePackage[pdftex,plainpages=false,pdfpagelabels,pagebackref,colorlinks=true,citecolor=teal,linkcolor=NavyBlue,urlcolor=blue,filecolor=Black,bookmarksopen=true]{hyperref} 				% links coloridos
\RequirePackage[all]{hypcap} 				% soluciona o problema com o hyperref e capitulos
\RequirePackage[alf]{abntex2cite} 			% citações no padrão abnt 6023 
\RequirePackage{amssymb} 					% matemática
\RequirePackage{amsmath} 					% matemática
\RequirePackage{amsthm} 					% matemática
\RequirePackage{mathtools} 					% matemática
\RequirePackage{tikz,tikz-3dplot} 			% tikz 
\RequirePackage{capt-of} 					% tikz 
\RequirePackage{pgfplots} 					% gráficos
\RequirePackage{pgfgantt} 					% gráficos de Gantt
\RequirePackage{titlesec} 					% chapter, section, subsection...
\RequirePackage[titles]{tocloft} 			% ajuste de espaçamentos de lista de tabelas e figuras
\RequirePackage{fancyhdr, lipsum} 			% header das páginas (padrão baseado no template do IME-USP)
\RequirePackage{verbatim} 					% comentários longos por meio do enviromment comment
\RequirePackage{enumerate} 					% modificar estilo do ambiente enumerate
\RequirePackage{tabularx}
\RequirePackage[normalem]{ulem}
\RequirePackage{listings}
\RequirePackage{color, colortbl}
\RequirePackage[toc,page]{appendix}
\RequirePackage{booktabs}
\RequirePackage{leading}
\RequirePackage{multicol}
\RequirePackage{booktabs, cellspace, multirow}
\RequirePackage{adjustbox}
\RequirePackage{array}
\RequirePackage{newfloat}
\RequirePackage{graphicx}
\RequirePackage{subfig}
\RequirePackage[portuguese, onelanguage, ruled, vlined, linesnumbered]{algorithm2e}
\RequirePackage{lmodern}
\RequirePackage{anyfontsize}
\RequirePackage{pythonhighlight}
\RequirePackage{emptypage}
\RequirePackage{epigraph}
\RequirePackage{lscape} 					% tabela no modo retrato
\RequirePackage{xspace} 					% remove espaços em renewcommand
\usepackage{tcolorbox}                      % caixa de texto colorida

% ----------------------------------------- % 
%
%	Algumas configurações de pacotes e 
%	outros ajustes
%
% ----------------------------------------- % 

%
%	{tikz}
%
\usetikzlibrary{arrows,shapes,backgrounds,fit,trees,positioning,calc}

%
% 	{titlesec}
%
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4} % for subsubsection


\DeclareFloatingEnvironment[listname=Lista de Quadros,fileext=frm,placement={!ht},name=Quadro]{quadros}
\captionsetup[quadros]{labelfont=bf, labelformat=simple, labelsep=endash}
\captionsetup[figure]{labelformat=simple, labelsep=endash}
\captionsetup[table]{labelformat=simple, labelsep=endash}
\captionsetup{justification=centering}
\renewcommand*{\arraystretch}{1.1}

% local definitions (utilizado para controlar a posição do número da equação)
\newcommand{\numberequation}[1]{\addtocounter{equation}{#1}\tag{\theequation}}
\newcommand\mycommfont[1]{\textnormal{#1}} 

\setlength\arrayrulewidth{0.7pt}
\setlength{\parindent}{0.9cm}
\setlength\aboverulesep{2pt}
\setlength\belowrulesep{2pt}
\setlength\cellspacetoplimit{3pt} 
\setlength\cellspacebottomlimit{3pt}
\setlength{\headheight}{15.5pt}

\SetCommentSty{mycommfont}
\SetFuncSty{textsc}
\SetKwComment{Comment}{$\triangleright$\ }{}
\SetNlSty{bfseries}{\color{black}}{}
\SetArgSty{textnormal}
\SetKwBlock{Begin}{}{}
\pgfplotsset{compat=1.16}

\newcommand{\regularchapterstyle}{%
	\titleformat{\chapter}
	{\normalfont\Large\bfseries}
	{\thechapter}
	{.5em}
	{\MakeUppercase}
	[\vspace{.5ex}\titlerule]
}

\newcommand{\centeredchapterstyle}{%
	\titleformat{\chapter}
	{\normalfont\Large\bfseries\centering}
	{\centering\thechapter}
	{.5em}
	{\MakeUppercase}
	[\vspace{.5ex}\titlerule]
}

\titlespacing*{\chapter}{0pt}{-30pt}{6mm}

\titleformat{\section}
		{\normalsize\normalfont\scshape}
		{\textbf{\thesection~}}
		{2pt}
		{}

\titlespacing*{\section}{0pt}{6mm}{6mm}

\titleformat{\subsection}
		{\normalsize\fontsize{12}{14}\bfseries}
		{\textbf{\thesubsection~}}
		{2pt}
		{}

\titlespacing*{\subsection}{0pt}{6mm}{6mm}

\titleformat{\subsubsection}
		{\normalsize\fontsize{11}{14}\normalfont}
		{\thesubsubsection~}
		{2pt}
		{}

\titlespacing*{\subsubsection}{0pt}{6mm}{6mm}

%
%	{tocloft}
%

\cftsetindents{figure}{0em}{2em}
\cftsetindents{table}{0em}{2em}

% 
%	{fancyhdr}
%
% Original
\pagestyle{fancy}
\fancyhf{}
\fancyheadoffset{0cm}
\renewcommand{\headrulewidth}{0pt} 
\renewcommand{\footrulewidth}{0pt}
\fancyhead[L]{\rightmark}
\fancyhead[L]{\leftmark}
\fancyhead[R]{\thepage}


\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{#1}}{}}
\fancypagestyle{plain}{%
	\fancyhf{}%
	\fancyhead[R]{\thepage}%
}

% 
%	{amsthm}
%

\theoremstyle{definition}
\newtheorem{definition}{Definição}[chapter]
\newenvironment{definicao}[1]
	{\begin{definition}[#1]}
	{\end{definition}}


\newtheorem{proposition}{Proposição}[chapter]
\newenvironment{proposicao}
	{\begin{proposition}\itshape}
	{\end{proposition}}

\newtheorem{lacuna}{Lacuna de Pesquisa}
\newenvironment{lacunapesq}[1]
	{\begin{lacuna}[#1]}
	{\end{lacuna}}

\newtheorem{pergunta}{\textit{Pergunta}}[lacuna]
\newenvironment{perguntapesq}[1]
	{\begin{pergunta}[#1]}
	{\end{pergunta}}

\newtheorem{algorithms}{Algoritmo}[chapter]
\newenvironment{algoritmo}
	{\begin{algorithm}}
	{\end{algorithm}}

\newtheorem{theorem}{Teorema}[chapter]
\newenvironment{teorema}[1]
	{\begin{theorem}[#1]\itshape}
	{\end{theorem}}

%
%	Novos operadores matemáticos
%

\DeclareMathOperator*{\argmin}{arg\,min}

%
%	Path de imagens
%

\graphicspath{{./figuras/}}

%
%  Links das citações para as referências
%

\renewcommand*{\backreflastsep}{, }
\renewcommand*{\backreftwosep}{, }
\renewcommand*{\backref}[1]{}
\renewcommand*{\backrefalt}[4]{{\tiny%
    \ifcase #1 Not cited.%
		\or Citado na p\'{a}g.~#2.%
		\else Citado na p\'{a}g. #2.%
    \fi%
    }}

%
%  Espaçamento e fonte
%

\onehalfspacing

\fontsize{60}{62}\usefont{OT1}{cmr}{m}{n}{\selectfont}

%
%	Tirando espaço superior extra das figuras
%

\makeatletter
	\setlength{\@fptop}{0pt}
\makeatother

%
%   Arruma o espaço: id est (i.e.) e exempli gratia (e.g.) 
%

\frenchspacing                        

%
%	URL com o mesmo estilo do texto e não mono-spaced
%

\urlstyle{same}                        

%
%	Para não permitir espaços extra no texto
%

\raggedbottom                          

% ------------------------------------------------------- % 
%
%	Variáveis para criar capa e folha de rosto
%
%	Atenção : Sempre configure todas as variáveis antes de
%	          chamar os métodos.
%
% ------------------------------------------------------- % 

\newcommand{\Universidade}[1]{
	\newcommand{\universidade}{#1}
}

\newcommand{\Projeto}[1]{
	\newcommand{\projeto}{#1}
}

\newcommand{\Autor}[1]{
	\newcommand{\autor}{#1}
}

\newcommand{\Titulo}[1]{
	\newcommand{\titulo}{#1}
}

\newcommand{\Ano}[1]{
	\newcommand{\ano}{#1}
}

\newcommand{\Orientador}[1]{
	\newcommand{\orientador}{#1}
}

\newcommand{\Coorientador}[1]{
	\newcommand{\coorientador}{#1}
}

\newcommand{\Ingresso}[1]{
	\newcommand{\ingresso}{#1}
}

\newcommand{\Linha}[1]{
	\newcommand{\linha}{#1}
}

\newcommand{\Curso}[1]{
	\newcommand{\curso}{#1}
}

\newcommand{\Tipoprojeto}[1]{
	\newcommand{\tipoprojeto}{#1}
}

% ----------------------------------------- % 
%	
%	Comando para gerar a capa 
%
% ----------------------------------------- %

\newcommand{\capa}{%

	\begin{center}

		\thispagestyle{empty}
	
		\textbf{%
			\universidade\\
			\tipoprojeto\\
			\vspace*{2cm}
			\autor\\
			\vspace*{4cm}
			\titulo\\
			\vspace*{\stretch{3}}
			São Paulo\\
			\ano
		}
	
	\end{center}}%

% ----------------------------------------- %
%	
%	Comando para gerar a folha de rosto
%
% ----------------------------------------- %
	
\newcommand{\folharosto}{%

	\begin{center}	

		\newpage
	
		\thispagestyle{empty}	
	
		\textbf{%
			\autor\\
			\vspace*{6cm}
			\titulo\\
		}
			
		\vspace*{2cm}
			
		\begin{flushright}
		
			\begin{minipage}{.5\textwidth}
				Projeto apresentado a Universidade Nove de Julho - UNINOVE, como parte dos requisitos obrigatórios para obtenção do título de \curso{}.
			\end{minipage}
			
			\vspace*{1cm}
			Prof. Orientador: \orientador

		\end{flushright}
					
		\textbf{
			\vspace*{\stretch{3}}\\
			São Paulo\\
			\ano
		}
		
	\end{center}}%

% ----------------------------------------- %
%
%	Resumo e abstract do documento
%
% ----------------------------------------- %
\newenvironment{resumo}
	{\chapter*{Resumo}\thispagestyle{empty}}

\newenvironment{abstract}
	{\chapter*{Abstract}\thispagestyle{empty}}

	
	
% ----------------------------------------- %
%
%	Agradecimentos
%
% ----------------------------------------- %
\newenvironment{agradecimentos}
	{\chapter*{Agradecimentos}\thispagestyle{empty}}
	{}

% ----------------------------------------- %
%
%	Dedicatória
%
% ----------------------------------------- %
\newenvironment{dedicatoria}
	{\chapter*{Dedicatória}\thispagestyle{empty}}
	{}
	
% ----------------------------------------- %
%
%	Epígrafe
%
% ----------------------------------------- %
\newenvironment{epigrafe}
	{\chapter*{epígrafe}\thispagestyle{empty}}
	{}
	
% ----------------------------------------- %
%
%	Resumo do capítulo
%
% ----------------------------------------- %
\newenvironment{resumocapitulo}
	{\begin{center}
		\begin{minipage}{1\textwidth}
		\textbf{Resumo do capítulo}\\\itshape}
	{\end{minipage}
	\end{center}}

% ----------------------------------------- %
%
%	Abreviaturas
%
% ----------------------------------------- %
\newenvironment{listaabreviaturas}
	{\chapter*{Lista de Abreviaturas}
	\thispagestyle{empty}
	\addcontentsline{toc}{chapter}{Lista de Abreviaturas}
	\markboth{\MakeUppercase{Lista de Abreviaturas}}{\MakeUppercase{Lista de Abreviaturas}}
	\begin{tabular}{lp{0.8\textwidth}}\small}
	{\end{tabular}}

% ----------------------------------------- %
%
%	Símbolos (não adicione espaços extras dentro dos )
%
% ----------------------------------------- %
\newcommand{\simbolos}[2]{%
	\section*{#1}	
	\begin{tabular}{lp{0.8\textwidth}}\small
		#2
	\end{tabular}%
}%

\newenvironment{listasimbolos}
	{\chapter*{Lista de Símbolos}
	\thispagestyle{empty}
	\addcontentsline{toc}{chapter}{Lista de Símbolos}
	\markboth{\MakeUppercase{Lista de Símbolos}}{\MakeUppercase{Lista de Símbolos}}}
	{}

% ----------------------------------------- %
%
%	Links coloridos
%
% ----------------------------------------- %
\newcommand{\drawlink}[3]{%
	{\hypersetup{linkcolor=#1}\hyperref[#2]{#3}\hypersetup{linkcolor=NavyBlue}}%
}

% ----------------------------------------- %
%
%	Fabrica comandos com o nome passado
%	para ser utilizado como link invisível
%
% ----------------------------------------- %
\newcommand{\factorylinks}[3]{%
	\newcommand{#1}{\hypersetup{linkcolor=black}\hyperref[#2]{#3}\hypersetup{linkcolor=NavyBlue}}
}

% ----------------------------------------- %
%
%	Citar a fonte de figuras
%
% ----------------------------------------- %
\newcommand{\fonte}[1]{%
	{	
		\begin{center}
			\fontsize{10.5pt}{\baselineskip}\selectfont{}
			\linespread{1.5}
			{Fonte:} #1
		\end{center}
	}
}

% ----------------------------------------- %
%
%	Coloca uma observação com destaque em
%	vermelho e azul
%
% ----------------------------------------- %
\newcommand{\observacao}[1]{%
	{	
		\fontsize{12pt}{\baselineskip}\selectfont
		\textit{\textcolor{Blue}{#1}}\xspace
	}
}

% ----------------------------------------- %
% 
% Utilizar este comando para realizar 
% marcações para correção com o orientador
% Após a correção, trocar a cor por "black"
%
% ----------------------------------------- %
\newcommand{\correcao}[1]{%
	\textcolor{red}{\{#1\}}\xspace
}

% ----------------------------------------- %
%
%	Efeito tachado para palavras
%
% ----------------------------------------- %
\newcommand{\tachado}[1]{%
	{
		\textcolor{red}{\sout{#1}}\xspace
	}
}

\newenvironment{prova}
	{\noindent \textbf{Prova:}}
	{}

\newcommand{\appendixtitle}{Apêndices}
\newenvironment{appendixenv}
	{
		\backmatter
		\appendix
		\chapter{\appendixtitle}
		\renewcommand{\appendixname}{Apêndice}
		\begin{subappendices}
		\renewcommand\thesection{\Alph{section}}
	}
	{
		\end{subappendices}
	}

\newenvironment{changemargin}[2]{%
	\begin{list}{}{%
		\setlength{\topsep}{0pt}%
		\setlength{\leftmargin}{#1}%
		\setlength{\rightmargin}{#2}%
		\setlength{\listparindent}{\parindent}%
		\setlength{\itemindent}{\parindent}%
		\setlength{\parsep}{\parskip}%
	}%
	\item[]}{\end{list}}
\endinput

\usepackage{listings}

% ----------------------------------------- %
%
%	Config da lista em C#
%
% ----------------------------------------- %
\lstset{
  language={[Sharp]C},
  tabsize=2,
}