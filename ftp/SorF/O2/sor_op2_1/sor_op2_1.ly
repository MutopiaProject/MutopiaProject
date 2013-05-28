%{
This document aims for a clean and consistent LilyPond editing style:
 * comments on 10 tabs (further if necessary)
 * line numbers at end of line
 * brackets documented at end of line
 * differences from the facsimile documented at end of line
 * ugly tweaks documented at end of line (look for %tweak)

I try to keep this file portable to future LilyPond versions. Therefore, I limit layout tweaks to a minimum.

Enjoy this music!

Mark Van den Borre <mark@markvdb.be>
%}

\version "2.4.2"
\header {
 mutopiatitle = "Six divertissements pour la guitarre, n°1 Minuetto"
 mutopiacomposer = "SorF"
 mutopiaopus = "O 2.1"
 mutopiainstrument = "Guitar"
 date = "1813"
 source = "Golden Music Press/GFA/Frederic Noad facsimile of Meissonier edition"
 style = "Classical"
 maintainer = "Mark Van den Borre"
 maintainerEmail = "mark@markvdb.be"
 maintainerWeb = "http://markvdb.be"
 lastupdated = "2004/Dec/26"
 filename	= "sor_op2_1.ly"
 title 	= "Six divertissements pour la guitare"
 opus		= "Opus 2.1"
 instrument	= "Guitarre"
 meter		= ""
% footer		= ""
 subtitle = 	"1. Minuetto"
 source =	"Golden Music Press/GFA/Frederic Noad facsimile edition"
 composer =	"Fernando Sor"
 enteredby	= "Mark Van den Borre"
 copyright = "Creative Commons Attribution-ShareAlike 2.0"
 footer = "Mutopia-2004/12/26-513"
 tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright "+ \maintainer + " 2004.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

upperVoice = \relative c'''{
 \repeat volta 2 {
  g4 g g|									%1
  g2 fis4|									%2
  a a a|									%3
  a2 g4| 									%4
  b a g|									%5
  g fis e|									%6
  d c b|									%7
  <b g> <a fis> s|								%8
 }										%end 1st repeat

 \repeat volta 2 {
  d e fis|									%9
  g2 fis4|									%10
  d e fis|									%11
  g2 fis4|									%12
  d e fis|									%13
  g <f d>2|									%14
  <e c>4 <a e> <fis c>|								%15
  <fis c> <g b,> s|								%16
 }										%end 2nd repeat
}										%end upperVoice


middleVoice = \relative c''{
 \repeat volta 2 {
  \stemUp b4 b b|								%1
  c2.|										%2
  c4 c c|									%3
  c2 b4| 									%4
  g' fis e|									%5
  e d c|									%6
  s2.|										%7
  s2 r4|									%8
 }										%end 1st repeat

 \repeat volta 2 {
  \stemDown d4 cis c|								%9
  b cis d|									%10
  d cis c|									%11
  b <cis bes> <d a>|								%12
  d cis c|									%13
  s2.|										%14
  s2.|										%15
  s2 r4|									%16
 }										%end 2nd repeat
}										%end middleVoice

lowerVoice = \relative c''{
 \repeat volta 2 {
  \stemDown g4 d g|								%1
  a d,2|									%2
  d4 e fis|									%3
  g d g,| 									%4
  g'2.|										%5
  g2.|										%6
  <b g>4 <a c,> <g cis,>|							%7
  d2 s4|									%8
 }										%end 1st repeat

 \repeat volta 2 {
  d2.|										%9
  d2.|										%10
  d2.|										%11
  d2.|										%12
  d2 s4|									%13
  <b' g>4 <g b,>2\ff|								%14 facsimile: "FF" instead of "ff", left of b
  <g c,>4 <c a,> <a d,>|							%15
  g2 s4|									%16
 }										%end 2nd repeat
}										%end lowerVoice


\score {
  \context Staff=upper <<
    \time 3/4
    \key g \major
    \clef violin
    \set Staff.midiInstrument ="acoustic guitar (nylon)"
    \context Voice = one {
        \voiceOne
	\upperVoice
    }
    \context Voice = two {
        \voiceTwo
	\middleVoice
    }
    \context Voice = three {
    	\voiceThree
	\lowerVoice
    }
  >>
\midi { \tempo 4=84}
\layout {
  %linewidth = 455.244096\pt
}
}

