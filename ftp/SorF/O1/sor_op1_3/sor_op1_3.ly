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

\version "2.2.0"
\header {
  mutopiatitle = "Divertissements pour la guitare, n°3 Allegretto "
  mutopiacomposer = "Fernando Sor (1778- 1839)"
  mutopiaopus = "O 1.3"
  mutopiainstrument = "Guitar"
  date = "1820s"
  source = "Golden Music Press/GFA/Frederic Noad facsimile edition"
  style = "Classical"
  copyright = "Creative Commons plus audio permission"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  lastupdated = "2004/May/03"
  filename	= "sor_op1_3.ly"
  title 	= "Six divertissements pour la guitare"
  opus		= "Opus 1.3"
  instrument	= "Guitarre"
  meter		= "Allegretto"
  subtitle = 	"3. Allegretto"
  source =	"Golden Music Press/GFA/Frederic Noad facsimile edition"
  composer =	"Fernando Sor"
  enteredby	= "Mark Van den Borre"
  tagline =	"\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright " + \maintainer + " 2004.} \\makebox[\\textwidth][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License, with the additional permission that attribution is not} \\makebox[\\textwidth][c]{\\footnotesize required in an audio derivative of this work. To view a copy of that license visit \\texttt{http://creativecommons.org/licenses/by-sa/1.0/} } \\makebox[\\textwidth][c]{\\footnotesize or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}"
  footer = 	"Mutopia-2004/05/03-453"
}

upperVoice = \notes \relative c'''{
 \key d \major
 \partial 8*1 \stemUp <a fis>8^\markup {La 6e corde en Re}|			%upbeat
 <a fis>4 <fis d>8 <g e>4 <b g>8|						%1
 <a fis>4. r4 <a fis>8|								%2
 <b g>4 <cis a>8 <d b>4 <cis a>8|						%3
 <cis a>4 \grace cis16 <b g>8 <a fis> r8 <fis d>|				%4
 <g e>4 a8 <fis d> r <fis d>|							%5
 <g e>4 <a cis,>8 <fis d> r dis|						%6
 e4 fis8  a[ g e]|								%7
 <d a fis>4. <cis a e>8 r8 <a' fis a,>|						%8
 <a fis>4 <fis d>8 g4 <b g>8|							%9
 <a fis>4. r4 <ais fis>8|							%10
 <b g>4 <cis a>8 <d b>4 <cis a>8|						%11
 <cis a>4 <b g>8 <a fis>4 <fis d>8|						%12
 <g e>4 <a cis,>8 <fis d> r <fis d>|						%13
 <g e>4 <a cis,>8 <fis d> r <a d,>|						%14
 a4 <g e>8 <fis d>8. g16 <e cis>8|						%15
 <d fis,>4 <d fis,>8 <d fis,>4 r8 \bar "||"					%16
 \partial 8*1 <fis d>8|								%upbeat
 <e cis>4 a8 a( gis) d'|							%17
 \slurUp d( cis b) b( a gis)|							%18
 <g e> <fis d> <eis cis> <g e> <fis d> <d b>|					%19
 <cis a>4. <b gis>4 e8|								%20
 e4 e8 e4 e8|									%21
 e4 a8 e4 e8|									%22
 e4 e8 e4 e8|									%23
 e4 a8 e4 <e cis e,>8|								%24
 <fis d fis,>4 <gis e gis,>8 <a fis a,>4 <gis e gis,>8				%25
 <gis e gis,>4 \grace gis16 <fis d fis,>8 <e cis e,>4 <eis cis eis,>8|		%26
 <fis d fis,>4 <gis e gis,>8 <b gis b,> <a fis a,> <gis e gis,>|		%27
 <gis e gis,>4 \grace gis16 <fis d fis,>8 <e cis e,> r <cis' a cis,>|		%28
 <cis e, cis> <b gis b,> <a fis a,> <a fis a,> <gis e gis,> <fis d fis,>|	%29
 <eis cis eis,>4 <fis d fis,>8 <a fis a,> <fis d fis,> <d b d,>|		%30
 <cis a>4 <cis a>8 <b gis>4 e8|							%31
 <d b a,>4. <cis a e>8 r <cis' e, cis>|						%32
 <cis e, cis> <b gis b,> <a fis a,> <a fis a,> <gis e gis,> <fis d fis,>|	%33
 <eis cis eis,>4 <fis d fis,>8 <a fis a,> <gis e gis,> <fis d fis,>|		%34
 <e cis>4 <cis a>8 <d b>4 <b gis>8|						%35
 a4 r8 r4 a'8|									%36
 <fis dis>4 <fis dis>8 <fis dis>4 <fis dis>8|					%37
 <g e g,>4. <b e,>4 b8|								%38
 <e, cis>4 <e cis>8 <e cis>4 <e cis>8|						%39
 <fis d fis,>4. <a fis>4 a8|							%40
 gis4 gis8 gis4 gis8|								%41
 a4 s8 s4 a8|									%42
 gis4 gis8 gis4 gis8|								%43
 <a cis,>4 r8 r4 <a e cis>8|							%44
 <b gis d>4 r8 r4 <b gis d>8|							%45
 <cis g! e>4 r8 r4 <cis g e>8|							%46
 <d fis, d>4 r8 r4 <d fis, d>8|							%47
 \stemDown <e g, cis, a,>4. r4 <d fis,>8|					%48
 <cis a>8 <cis a> r <b g> r <b g>|						%49
 \stemUp <a fis>4 <fis d>8 <g e>4 <b g>8|					%50
 <a fis>4. r4 <a fis>8|								%51
 <b g>4 <b g>8 \grace e8 <d b>4 <cis a>8|					%52
 <cis a>4 \grace cis16 <b g>8 <a fis> r <fis d>|				%53
 <g e>4 <a cis,>8 <fis d> r <fis d>|						%54
 <g e>4 <a cis,>8 <fis d>8 r <dis c>|						%55
 e4 fis8 a g e|									%56
 <d a fis>4. <cis a e>8 r <a' fis a,>|						%57
 <a fis>4 <fis d>8 <g e>4 <b g>8|						%58
 <a fis>4. r4 <ais fis>8|							%59
 <b g>4 <cis a>8 <d b>4 <cis a>8|						%60
 <cis a>4 <b g>8 <a fis>4 <fis d>8|						%61
 <g e>4 <a cis,>8 <fis d> r <fis d>|						%62
 <g e>4 <a cis,>8 <fis d> s <a d,>|						%63
 a4 <g e>8 fis8.[ \grace {g32[ fis e fis]} g16 e8]|				%64
 <d fis,>8 r4 r r8|								%65 facsimile : r8 r4 r8
 <c a>4 s8 <c a>4 s8|								%66
 b4 s8 s4.|									%67
 <e cis g>4. <e cis g>4.|							%68
 <d fis,>4 r8 r4 r8|								%69
 <a' fis c>4. <a fis c>4.|							%70
 <gis eis b>4. r4 r8|								%71
 <g! e bes>4. <g cis, bes>4.|							%72
 <fis d a>4. r4 r8|								%73
 <e b gis>4. <e bes g>4.|							%74
 <d a fis>4. r4 r8|								%75
 <cis g e>4. <cis g e>4.|							%76
 <d fis,>4. r4 r8|								%77
 <d fis,>4. <d fis,>4 s8|							%78
 <d fis, d,>4. r4 r8\bar "||"							%79
}										%end upperVoice

middleVoice = \notes \relative c{
 \stemUp \partial 8*1 s8|							%upbeat
 d8 d' d d, d' d|								%1
 d,8 d' d d, d' d|								%2
 d,8 d' d d, d' d|								%3
 d,8 d' d d, d' s8|								%4
 \stemDown r a' cis s a a|							%5
 \stemUp r a4 \stemDown s8 a <fis c'!>|						%6
 <g b>4 <dis b'>8 <e b'>4 <g b>8|						%7
 s2.|										%8
 \stemUp a8 d, fis g d b'|							%9
 a d, d \stemDown a' d, ais'|							%10
 \stemUp b d, cis' \stemDown d d, cis'|						%11
 \stemUp cis d, b' \stemDown a4.|						%12
 r8 a4. a4|									%13
 r8 a4 r8 a8 s8|								%14
 \stemUp d dis s8 s4.|								%15
 s2.\bar "||"									%16
 \partial 8*1 s8|								%upbeat
 s2.|										%17
 \stemDown e4 d8 cis4 e8|							%18
 s2.|										%19
 s2.|										%20
 b,16[ d' gis, d' gis, d'] e,,[ d'' gis, d' e, d']|				%21
 a,[ cis' a cis e, cis'] a,[ cis' a cis e, cis']|				%22
 b,[ d' gis, d' e, d'] e,,[ d'' gis, d' e, d']|					%23
 a,[ cis' a cis e, cis'] a, cis' a8 s|						%24
 s2.|s2.|s2.|s2.|s2.|s2.|s2.|s2.|s2.|s2.|s2.|s2.|				%25-36
 r4 r8 c b a|									%37
 s4. \stemUp g4.|								%38
 r4 r8 \stemDown bes a g|							%39
 \stemUp fis4. fis4.|								%40
 \stemDown <d' b>4 <e cis>8 <f d> <e cis> <d b>|				%41
 \stemUp <cis a>4 r8 r4 s8|							%42
 \stemDown <d b>4 <e cis>8 <f d> <e cis> <d b>|					%43
 \stemUp a, \stemDown a' a a a a|						%44
 \stemUp a, \stemDown a' a a a a|						%45
 \stemUp a, \stemDown a' a a a a|						%46
 \stemUp a, \stemDown a' a a a a|						%47
 s2.|s2.|									%48-49
 \stemUp d,,8 d' d d, d' d|							%50
 d, d' d \stemDown d d d|							%51
 \stemUp d, d' d d, d' d|							%52
 d, d' d d, d' r8|								%53
 r8 \stemDown a'4 r8 a4|							%54
 r8 a4 r8 a fis|								%55
 s2.|s2.|									%56-57
 \stemUp a8 d, fis \stemDown g d b'|						%58
 \stemUp a d, d \stemDown d d ais'|						%59
 b \stemUp d, \stemDown cis' d \stemUp d, \stemDown cis'|			%60
 cis \stemUp d, \stemDown b' a d, s8|						%61
 r8 a'4 r8 a4|									%62
 r8 a4 r8 a <c fis,>|								%63
 \stemUp d dis s8 s4.|								%64
 s2.|										%65
 fis,8  d d fis d d|								%66
 g d d d d d|									%67
 \stemDown d, d' d d, d' d|							%68
 d, d' d d d d|									%69
 \stemUp d, d' d d, d' d|							%70
 d, d' d d d d|									%71
 d, d' d d, d' d|								%72
 \stemDown d, d' d d d d|							%73
 d, d' d d, d' d|								%74
 d, d' d d d d|									%75
 d, a' a d, a' a|								%76
 s2.|s2.|s2.\bar "||"								%77-79
}										%end middleVoice

lowerVoice = \notes \relative c {
 \stemDown \partial 8*1 r8|							%upbeat
 d4. d|										%1
 d d|										%2
 d d|										%3
 d d4 r8|									%4
 a'4. d|									%5
 a8 a'4 d,4.|									%6
 s4. s|										%7
 r8 a a a r4|									%8
 d,4. s|									%9
 d s|										%10
 d s|										%11
 d s|										%12
 a' d|										%13
 a d4 <fis c'>8|								%14
 <g b>4. a4 <g a,>8|								%15
 d8 a8 fis8 d4 s8|								%16
 \partial 8*1 r8|								%upbeat
 r4 <cis'' a>8 <d b>4 <gis e,>8|						%17
 a,4. a,4.|									%18
 d4 r8 d4 r8|									%19
 r8 e e e4 s8|									%20
 \stemUp b4. e,4.|								%21
 a4. a4.|									%22
 b4. e,4.|									%23
 a4 s8 s4.|									%24
 \stemDown a8 a a a a a|							%25
 a a a a a a|									%26
 a a a a a a|									%27
 a a a a r r|									%28
 a r r a r r|									%29
 d,4. s4.|									%30 facsimile: missing line gives fis
 e'4. e4.|									%31
 \slurDown a,8( e' e a,) r r|							%32
 a4 r8 a4 r8|									%33
 d,4. r4 d'8|									%34
 e4 r8 e4 r8|									%35
 a,8 a a a a a|									%36
 a a a a4.|									%37
 a8 a a a a a|									%38
 a a a a4.|									%39
 a8 a a a a a|									%40
 a a a a a a|									%41
 a a a a a a|									%42
 a a a a a a|									%43
 a4. s4.|									%44
 a2.|										%45
 a2.|										%46
 a2.|										%47
 s2.|										%48
 s2.|										%49
 d,4. d4.|									%50
 d4. d4.|									%51
 d4. d4.|									%52
 d4. s4.|									%53
 a'4 s8 d4 s8|									%54
 a4 s8 d4 s8|									%55
 <b' g>4 <b dis,>8 <b e,>4 <b g>8|						%56
 s8 a, a a s4|									%57
 d,4. s4.|									%58
 d4. s4.|									%59
 d4. s4.|									%60
 d4. s4.|									%61
 a'4. d4.|									%62
 a4. d4 fis8|									%63
 <b g>4. <d! a>4 <cis g a,>8|							%64 facsimile says 4 for last chord
 d,8 d d d d d|									%65
 d,4. d4.|									%66
 d4. s4.|									%67
 d4. d4.|									%68
 d4. s4.|									%69
 d4. d4.|									%70
 d4. s4.|									%71
 d4. d4.|									%72
 d4. s4.|									%73
 d4. d4.|									%74
 d4. s4.|									%75
 d4. d4.|									%76
 d8 d' cis d a fis|								%77
 d fis a d a fis|								%78
 s2.|										%79
}										%end lowerVoice

\score {
 \context Staff <<
  \time 6/8
  \override NoteCollision #'merge-differently-dotted = ##t
  \override NoteCollision #'merge-differently-headed = ##t
  \clef violin 
  \context Voice = one \override TupletBracket #'number-visibility = ##f \upperVoice
  \context Voice = two \lowerVoice
  \context Voice = three \middleVoice
>>
\midi { \tempo 8=180}
\paper {}
}
