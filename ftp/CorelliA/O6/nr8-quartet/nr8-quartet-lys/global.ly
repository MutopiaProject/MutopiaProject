\version "1.6.6"
\include "english.ly"

padtext = \property Voice.TextScript \override #'padding = #'1.5
padbarnos = \property Score.BarNumber \override #'padding = #'2.0

textUp = \property Voice.TextScript \override #'direction = #1

\header {
 tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by Ian Bailey-Mortimer.} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
 footer = "Mutopia-2003/03/18-298"
}

