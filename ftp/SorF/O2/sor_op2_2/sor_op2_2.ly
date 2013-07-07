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
 mutopiatitle = "Six divertissements pour la guitarre, n°2 Waltz"
 mutopiacomposer = "SorF"
 mutopiaopus = "O 2.2"
 mutopiainstrument = "Guitar"
 date = "1813"
 source = "Golden Music Press/GFA/Frederic Noad facsimile of Meissonier edition"
 style = "Classical"
 maintainer = "Mark Van den Borre"
 maintainerEmail = "mark@markvdb.be"
 maintainerWeb = "http://markvdb.be"
 lastupdated = "2004/Dec/27"
 filename	= "sor_op2_2.ly"
 title 	= "Six divertissements pour la guitare"
 opus		= "Opus 2.2"
 instrument	= "Guitarre"
 meter		= ""
% footer		= ""
 subtitle = 	"2. Waltz"
 source =	"Golden Music Press/GFA/Frederic Noad facsimile edition"
 composer =	"Fernando Sor"
 enteredby	= "Mark Van den Borre"
 copyright = "Creative Commons Attribution-ShareAlike 2.0" 
 footer = "Mutopia-2004/12/27-514"
 tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright "+ \maintainer + " 2004.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

% MACRO for hiding tuplet brackets and numbers
tupletNumbersOff = {
	\override TupletBracket #'bracket-visibility = ##f
	\override TupletBracket #'number-visibility = ##f
}

upperVoice = \relative c''{
 \tupletNumbersOff								%tweak to switch tuplet brackets and numbers off
 \repeat volta 2 {
  \times 2/3 {d16[( e d])} {b8 c}|						%1
  e4 d8|									%2
  fis \appoggiatura g32 fis16 e fis8|						%3
  g( b) d,| 									%4
  \times 2/3 {d16[( e d])} b8 c|						%5
  cis( d) g|									%6
  <d b> <c a> <b g>|								%7
  <a fis>4 r8|									%8
 }										%end 1st repeat

 \repeat volta 2 {
  c \appoggiatura d32 c16 b c8|							%9
  <b g> <d b>8. <b g>16|							%10
  c8 \appoggiatura d32 c16 b c8|						%11
  <b g> <d b>4|									%12
  <g b,>8 <fis c> <f d>|							%13
  <e c> <a e> r|								%14
  fis \appoggiatura g32 fis16 e fis8|						%15
  <g b,>4 r8|									%16
 }										%end 2nd repeat

 \repeat volta 2 {
  <b d,>4.^\markup \italic {dol} |						%17
  <g b,>4.|									%18
  e8 e16( fis) g8|								%19
  <d b>4 b8|									%20
  <b' d,>4.|									%21
  <g b,>4.|									%22
  e8 a a|									%23
  <d, fis,>4 r8|								%24
 }										%end 3rd repeat

 \repeat volta 2 {
  <c' a>4.|									%25
  <a fis>4.|									%26
  fis8 <fis c> <fis c>|								%27
  \appoggiatura a32 g16( fis) g a b8| 						%28
  <c a>4.|									%29
  <a fis>4.|									%30
  fis8 <fis c> <fis c>|								%31
  g4 r8|									%32
 }										%end 4th repeat

  \times 2/3 {d16[( e d])} {b8 c}|						%33 33 to 48 == 1 to 16
  e4 d8|									%34
  fis \appoggiatura g32 fis16 e fis8|						%35
  g( b) d,| 									%36
  \times 2/3 {d16[ e d]} b8 c|							%37
  cis( d) g|									%38
  <d b> <c a> <b g>|								%39
  <a fis>4 r8|									%40
  c \appoggiatura d32 c16 b c8|							%41
  <b g> <d b>8. <b g>16|							%42
  c8 \appoggiatura d32 c16 b c8|						%43
  <b g> <d b>4|									%44
  <g b,>8 <fis c> <f d>|							%45
  <e c> <a e> r|								%46
  fis \appoggiatura g32 fis16 e fis8|						%47
  <g b,>4 r8 \bar "||"								%48

}										%end upperVoice

lowerVoice = \relative c''{
 \repeat volta 2 {
  \stemDown
  b8 g a|									%1
  c4 b8|									%2
  d, <c' a> <c a>|								%3
  <b g>4 r8|									%4
  b8 g a|									%5
  ais b4|									%6
  d,4.|										%7
  d4 s8|									%8
 }										%end 1st repeat

 \repeat volta 2 {
  << {\stemDown <a' d,,>8 <a d,> <a d,>} \\ {\stemUp d,,4.} >>|			%9
  g8 d' d|									%10
  <a' d,,> <a d,> <a d,>|							%11
  g, d' d|									%12
  <g g,> <g a,> <g b,>|								%13
  <g c,> <c a,> s|								%14
  << {\stemUp d,4.} \\ { d8 <c' a> <c a>} >>					%15
  g4 s8|									%16
 }										%end 2nd repeat

 \repeat volta 2 {
  g8 g16 g g8|									%17
  g8 g16 g g8|									%18
  <c g> <c g> <c g>|								%19
  g g g|									%20
  g g16 g g8|									%21
  g g16 g g8|									%22
  <cis g a,>4.|									%23
  d,8 d d|									%24
 }										%end 3rd repeat

 \repeat volta 2 {
  d d16 d d8|									%25
  d d16 d d8|									%26
  d <d a'> <d a'>|								%27
  <g b>4 r8|									%28
  d d16 d d8|									%29
  d d16 d d8|									%30
  d <d a'> <d a'>|								%31
  <g b>4 s8|									%32
 }										%end 4th repeat

  b8 g a|									%33
  c4 b8|									%34
  d, <c' a> <c a>|								%35
  <b g>4 r8|									%36
  b8 g a|									%37
  ais b4|									%38
  d,4.|										%39
  d4 s8|									%40
  << {\stemDown <a' d,,>8 <a d,> <a d,>} \\ {\stemUp d,,4.} >>|			%41
  g8 d' d|									%42
  <a' d,,> <a d,> <a d,>|							%43
  g, d' d|									%44
  <g g,> <g a,> <g b,>|								%45
  <g c,> <c a,> s|								%46
  << {\stemUp d,4.} \\ { d8 <c' a> <c a>} >>					%47
  g4 s8|									%48

}										%end lowerVoice


\score {
  \context Staff=upper <<
    \time 3/8
    \key g \major
    \clef violin
    \set Staff.midiInstrument ="acoustic guitar (nylon)"
    \context Voice = one {
        \voiceOne
	\upperVoice
    }
    \context Voice = two {
    	\voiceTwo
	\lowerVoice
    }
  >>
\midi { \tempo 4=84}
\layout {
  %linewidth = 455.244096\pt
}
}

