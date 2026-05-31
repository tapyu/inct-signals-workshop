%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% UFC Beamer Class File
%% author: Rubem Vasconcelos Pacelli
%% description: This file creates a custom beamer class for the Federal University of Ceará (UFC).
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{beamer_class}[04/03/2022 v1.0 ufc template beamer]
\LoadClass[12pt, aspectratio=169]{beamer}

\NeedsTeXFormat{LaTeX2e}
%% Packages Used
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{microtype}
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}
\RequirePackage{pdfpages}
\RequirePackage{tcolorbox}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage{fancybox}
\RequirePackage[footnotesize,hang]{caption}
\RequirePackage{ragged2e} % % Package to justify text
% Option management
\RequirePackage{beamerbaseoptions}

% make the itemize environment justified. For more info, see: https://tex.stackexchange.com/questions/50004/justify-text-inside-itemize-environment-with-beamer-class
\renewcommand{\itemize}[1][]{%
  \beamer@ifempty{#1}{}{\def\beamer@defaultospec{#1}}%
  \ifnum \@itemdepth >2\relax\@toodeep\else
    \advance\@itemdepth\@ne
    \beamer@computepref\@itemdepth% sets \beameritemnestingprefix
    \usebeamerfont{itemize/enumerate \beameritemnestingprefix body}%
    \usebeamercolor[fg]{itemize/enumerate \beameritemnestingprefix body}%
    \usebeamertemplate{itemize/enumerate \beameritemnestingprefix body begin}%
    \list
      {\usebeamertemplate{itemize \beameritemnestingprefix item}}
      {\def\makelabel##1{%
          {%
            \hss\llap{{%
                \usebeamerfont*{itemize \beameritemnestingprefix item}%
                \usebeamercolor[fg]{itemize \beameritemnestingprefix item}##1}}%
          }%
        }%
      }
  \fi%
  \beamer@cramped%
  \justifying% NEW
  %\raggedright% ORIGINAL
  \beamer@firstlineitemizeunskip%
}