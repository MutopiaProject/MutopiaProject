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
\paper {
 linewidth = 160 \mm
}
    
\version "2.2.0"

\header {
  mutopiatitle = "Divertissements pour la guitare"
  mutopiacomposer = "Fernando Sor (1778- 1839)"
  mutopiaopus = "O 1"
  mutopiainstrument = "Guitar"
  date = "1820s"
  source = "Golden Music Press/GFA/Frederic Noad facsimile edition"
  style = "Classical"
  copyright = "Enjoy and share this music under the terms of the Creative Commons BY/SA license. See p.7 for details."
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  lastupdated = "2004/May/03"
  filename	= "boekje.ly"
  title 	= "Six divertissements pour la guitare"
  dedication = "Composés et dédiés à Mrs Davenport"
  opus		= "Opus 1"
  instrument	= "Guitarre"
  source =	"Golden Music Press/GFA/Frederic Noad facsimile edition"
  composer =	"Fernando Sor"
  enteredby	= "Mark Van den Borre"
  tagline =	"\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright " + \maintainer + " 2004.} \\makebox[\\textwidth][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License, with the additional permission that attribution is not} \\makebox[\\textwidth][c]{\\footnotesize required in an audio derivative of this work. To view a copy of that license visit \\texttt{http://creativecommons.org/licenses/by-sa/1.0/} } \\makebox[\\textwidth][c]{\\footnotesize or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}"
  footer = 	"Mutopia-2004/05/03"
}

upperVoice = \notes \relative c''{
 \repeat volta 2 {
  b4 b c|									%1
  d4.. e16 d4|									%2
  <e c> <fis d> <g e>|								%3
  <fis d> 
  \once \override Slur  #'attachment-offset = #'((0 . -0.4) . (-0.6 . -1.5))	%tweak slur
  \grace fis16( <e c>8.) d16 <d b>4|						%4 facsimile: grace fis slurs to e, not c
  <g b,><b b,> <d b,>|								%5
  fis,4. \slurDown \times 2/3 {g16( fis  e)} <fis c>8[ fis]|			%6
  <g b,>4 <b b,> <d b,>|							%7
  <fis, c>4. \times 2/3 {g16( fis  e)}  fis8[ fis]|				%8
  <g b, g e>4 r8<cis, g a,>[ <cis g a,><cis g a,>]|				%9
  <d fis, d>4<d fis, d> r4|							%10
 }										%end 1st repeat
 
 \repeat volta 2 {
  <c! a>4. \grace d16 <c a>16<b gis> <c a>8<c a>|				%11
  b g' <fis d> <e c> <d b> <cis! ais!>|						%12
  <c! a!>4. <c a>16<b gis> <c a>8<c a>|						%13 corrected: facsimile says g
  <b g> g' <fis d> <e c> <d b> <c a>|						%14
  <b gis>4<b gis>4<b gis>4|							%15
  <c a>8.<d b>16 <e c>4 r8. <e c>16|						%16 corrected: facsimile says <e c>8
  <d b g>8.<c a c,>16 <b g d>4 <a fis d>|					%17
  <a fis c><g b,>r|								%18
 }										%end 2nd repeat
}										%end upperVoice

lowerVoice = \notes \relative c'{
 \repeat volta 2 {
  \stemDown g2.|								%1
  g2.|										%2
  g'8[ g g g g g]|								%3
  g[ g g g] g4|									%4
  g8[\f d g d g d]|								%5
  <c' a>[ d, a' d, a' d,]|							%6
  g[ d g d g d]|								%7
  a'[ d, a' d,] <c' a>[ <c a d,>]|						%8
  s2.|										%9
  s2.||										%10
 }										%end 1st repeat
 \repeat volta 2 {
  fis,,8[_\markup \italic "dol" d' fis, d' fis, d']|				%11
  <g, g'>4 r r|									%12 corrected: facsimile says e
  fis8[ d' fis, d' fis, d']|							%13
  g,4 r r|									%14
  r8  f'[ e d c b]|								%15
  a4 r fis'|									%16
  g8. c,16 d4 d|								%17
  g,2 s4||									%18
 }										%end 2nd repeat
}										%end lowerVoice

middleVoice = \notes \relative c'{
 \repeat volta 2 {
  \stemUp  g'8[ d] \stemDown  g[ d a' d,]|					%1
  b'8[ g] b[ g16 c]  b8[ g]|							%2
  s2.|										%3
  s2.|										%4
  s2.|										%5
  s4 \stemUp c s|								%6
  s2.|										%7
  s4 c s4|									%8
  s2.|										%9
  s2.||										%10
 }										%end 1st repeat
 
 \repeat volta 2 {
  s2.|										%11
  s2.|										%12
  s2.|										%13
  s2.|										%14
  s2.|										%15
  s2.|										%16
  s2.|										%17
  s2.||										%18
 }										%end 2nd repeat
}										%end middleVoice

\score {
  \context Staff=upper \notes <<
    \time 3/4
    \key g \major
    \clef violin 
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
	\header {
	%meter = "Andante"
	piece = "N.°1 Andante"
	}
}



upperVoice = \notes \relative c'{
 \repeat volta 2 {								%begin repeat #1
  \partial 8*1 \stemDown d'8|							%upbeat
  \stemUp b16. d32  g8[ g]|							%1
  g16 d  b8[ <d b>]|								%2
  <c a> \grace d16 \slurDown <c a>16( <b g>) <c a>8|				%3
  <b g> <c a> <cis ais>|							%4
  \slurUp \times 2/3 {d16( e  d)}  g8[ g]|					%5
  g16. d32  b8[ d]|								%6
  cis[ \grace d16 \slurDown cis16(  b) cis8]|					%7
  <d fis,>r8									%8.1
  }										%end repeat #1
  
 \repeat volta 2 {								%begin repeat #2
  \stemDown d|									%8.2
  \stemUp c!16. fis32  a8[ fis]|						%9
  g4 d8|									%10
  c16. fis32  a8[ c,]|								%11
  g'4 d8|									%12
  d16. g,32  g'8[ g]|								%13
  e16. g,32  g'8[ g]|								%14
  <b, g> <c a> <a fis>|								%15
  <g g,> r8									%16.1
 }										%end repeat #2
  
 \repeat volta 2 {								%begin repeat #3
  \stemDown d'16 b|								%16.2
  g' d b' g d b|								%17
  \stemUp g b d, b' g b|							%18
  a c fis, c' d, c'|								%19
  g b d, d' b d|								%20
  \stemDown g d b' g d b|							%21
  \stemUp g b d, b' g b|							%22
  a c fis, a d, fis|								%23
  g8 r8										%24.1
 }										%end repeat #3
  
 \repeat volta 2 {								%begin repeat #4
  g16 b|									%24.2
  fis a d, a' a c|								%25
  g b d, b' b d|								%26
  a c d, c' c e|								%27
  b d g, d' e g|								%28
  dis fis e g c, e|								%29
  b dis c e a, c|								%30
  g b a c fis, a|								%31
  g8 r										%32.1
 }										%end repeat #4
 
 \repeat volta 2 {								%begin repeat #5
  \stemDown d'8 |								%32.2
  \stemUp b16. d32  g8[ g]|							%33
  g16 d  b8[ <d b>]|								%34
  <c a> \grace d16 \slurDown <c a>16( <b g>) <c a>8|				%35
  <b g> <c a> <cis ais>|							%36
  \times 2/3 {d16 e d}  g8[ g]|							%37
  g16. d32  b8[ d]|								%38
  cis[ \grace d16 \slurDown cis16(  b) cis8]|					%39
  <d fis,>r8									%40.1
 }										%end repeat #5
  
 \repeat volta 2 {								%begin repeat #6
  \stemDown d|									%40.2
  \stemUp c16. fis32  a8[ fis]|							%41
  g4 d8|									%42
  c16. fis32  a8[ c,]|								%43
  g'4 d8|									%44
  d16. g,32  g'8[ g]|								%45
  e16. g,32  g'8[ g]|								%46
  <b, g> <c a> <a fis>|								%47
  <g g,> r8									%48.1
 }										%end repeat #6
}

lowerVoice = \notes \relative c'{
 \partial 8*1 s8|								%upbeat
 \stemDown g'4 r8|								%1
 g4 r8|										%2
 d4 r8|										%3
 g,8 r r|									%4
 <g' b>4.|									%5
 g4 r8|										%6
 <g a,>4.|									%7
 d8 r8 s8|									%8
 d4 <a' c>8|									%9
 <b g> <c a> b|									%10
 d,4 r8|									%11
 <b' g> <c a> b|								%12
 b,4 r8|									%13
 c4 r8|										%14
 d4 r8|										%15
 s4.|										%16
 s4.|										%17
 s4.|										%18
 s4.|										%19
 s4.|										%20
 s4.|										%21
 s4.|										%22
 s4.|										%23
 s4 g8|										%24
 fis d a'|									%25
 g d b'|									%26
 a d, c'|									%27
 b g e'|									%28
 dis e c|									%29
 b c c,|									%30
 d a' fis|									%31
 s4 s8|										%32
 \stemDown g4 r8|								%33
 g4 r8|										%34
 d4 r8|										%35
 g,8 r r|									%36
 <g' b>4.|									%37
 g4 r8|										%38
 <g a,>4.|									%39
 d8 r8 s8|									%40
 d4 <a' c>8|									%41
 <b g> <c a> b|									%42
 d,4 r8|									%43
 <b' g> <c a> b|								%44
 b,4 r8|									%45
 c4 r8|										%46
 d4 r8|										%47
}

\score {
 \context Staff=guitar \notes <<
  \time 3/8
  \key g \major
  \clef violin 
  \context Voice = one {
   \voiceOne
   \override TupletBracket #'number-visibility = ##f				%no tuplet numbers in this voice
   \upperVoice
  }
  \context Voice = two {
   \voiceTwo
   \lowerVoice
  }
>>
	\header {
	meter = "Allegretto"
	piece = "N.°2 Waltz"
	}
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
	\header {
	%meter = "Allegretto"
	piece = "N.°3 Allegretto"
	}
}



upperVoice = \notes \relative c''' {
 \repeat volta 2 {
  \stemUp
  <g e>4 <g e> <g e>|					%1
  g4.. c16 <c e,>4|					%2
  <e, c> <e c> g8. f16					%3
  e4 \grace e16 d8. c16 c4|				%4
  <e c> <e c> <e c>|					%5
  <d c> <c' fis,> <b g>|				%6
  \stemDown \dynamicUp
  \appoggiatura b16\p a8 s s2|				%7
  \dynamicBoth
  \stemUp
  <fis c>4 <g b,> r|					%8
 }
 \repeat volta 2 {
  <g e> <f d> <e cis>|					%9
  <f d>4.. <g e>16 <a f>4|				%10
  d, <e c> <f b,>|					%11
  <e c>4.. <f d>16 <g e>4|				%12
  <c e,> e, <fis c>\trill|				%13
  g <f! d> <e c>|					%14
  \dynamicUp
  \grace e16\p d8 s8 s2|				%15
  <b f>4 <c e,> r|					%16
 }
}

middleVoice = \notes \relative c'' {
 \repeat volta 2 {
  s2.|s|s|s|s|s|s|s|
 }
 \repeat volta 2 {
  s2.|							%9
  s2.|							%10
  b8[ g] e[ g] d[ g]|					%11
  c,4 s s|						%12
  s2.|							%13
  s2.|							%14
  \stemUp
  <d' a f>8[ r16 <cis a e> <d a f>8 r16 <e a, cis,> <f a, d,>8 r16 <b, f g,>]|%15
  s2.|							%16
 }
}
lowerVoice = \notes \relative c' {
 \repeat volta 2 {
  \stemDown
  c4 c' c|						%1
  c, c' c|						%2
  c, a' <d f,>|						%3
  <c g> <b f g,> <g e c>|				%4
  c, a' g|						%5
  fis d g|						%6
  \stemDown
  <a' e c>8[ r16 <gis f d> <a e c>8 r16 <b e, gis,> <c e, a,>8 r16 <fis, c a e>]|	%7
  g,4\> g,\! r|
 }
 \repeat volta 2 {
  g'8[ g g g g g]|
  g[ g g g g g]|
  f4 e d|
  c8 g' g4 r|
  r c a|
  <b g> <g b,> <g c,>|
  s2.|
  c,2 r4|
 }
}
\score {
 \context Staff <<
  \time 3/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \context Voice = one \upperVoice
  \context Voice = two \middleVoice
  \context Voice = three \lowerVoice
  >>
	\header {
	%meter = "Andante"
	piece = "N.°4 Andante"
	}
}



upperVoice = \notes \relative c' {
 \repeat volta 2 {
 \partial 8*2 <e' c>8 <g b,>|			%1
 \stemUp \grace g16 <f a,>8[ r16 <e g,>] <d f,>8 <b g g,>|%slur between grace note and f missing
 <c e, c> r \stemBoth <c' e, c> <b g>|		%3
 \stemUp <a f>[ r16 <g e>] <f d>8 <e c>|	%4 16th rest position too low
 <d b> r <e c> <g b,>|				%5
 \grace g16 <f a,>8[ r16 <e g,>] <d f,>8 <b g>|	%6
 <c e, c> r8 \stemBoth <c' e, c> <b d, gis,>|	%7
 <a c, a>[ r16 g] <fis c d,>8 <a c, d,>|	%8
 \stemUp <g b, g,> r8 }
 \repeat volta 2 {
 \stemBoth <g d b g>_\markup {\italic {cres}} <a fis c g>| %9
 <b f d g,>[ r16 <c e, c>] <d g, f b,>8\f <e g, e c>|%10 facsimile says "f" instead of "F"
 <f d, b g> r <e c>\p <b gis>|		%11
 <c a>[ r16 <gis e>] <a f>8 <f d f,>|	%12
 \stemUp <d b g>4 <e c c,>8 <g bes, e,,>|	%13
 \grace g16 <f a,>8[ r16 <e g,>] <d f,>8 <b f>|	%14
 <c e, c> r \stemBoth <gis' d b e,> <a c, f,>16 r|%15
 \stemUp <b f d>8[] \stemBoth <c e, c a>16. <a es c fis,>32 \stemUp <g e c g>8 <b, f g,>|%16
 \partial 8*2 <c e, c> r }			%17
 
}

lowerVoice = \notes \relative c'' {
 \partial 8*2 s4|	%1
 \stemDown s2|			%2
 s2|			%3
 r8 g b, c|		%4
 g s c c|		%5
 c r f, g|		%6
 s2|			%7
 s|			%8
 s|			%9
 s|			%10
 s|			%11
 s|			%12
 s|			%13
 f8 r g g|		%14
 s2|			%15
 g'16 gis s4.|	%16
 s4|			%17
}     

\score {
 \context Staff <<
  \time 2/4
  \upperVoice
  \lowerVoice
  >>
	\header {
	%meter = "Andante sostenuto"
	piece = "N.°5.1 Thema (Andante sostenuto)"
	}
} 
				

upperVoice = \notes \relative c' {
 \repeat volta 2 {
  \partial 4*1 \stemUp e'8 ~ \set tupletSpannerDuration = #(ly:make-moment 1 8)			%1
  \tupletUp \slurDown \times 2/3 {e16[ fis( g)]}|
  \override TupletBracket #'bracket-visibility = ##f
  \override TupletBracket #'number-visibility = ##f
  \times 2/3 {f[ gis( a)] e([ f d)]} b8 ~ \times 2/3 {b16[ d( b)]}|				%2
  c8 r c' b|											%3
  a[ g f e]|											%4
  \times 2/3 { d16[ g, g]} \grace a \times 2/3 {g[ fis g]} e'8 ~ \times 2/3 {e16[ fis( g)]}|	%5
  \times 2/3 {f[ gis( a)] e( f) d} b8 ~ \times 2/3 {b16[ d b]}| 				%6
  c8 r c' b |											%7
  a \times 2/3 {c16([ b a)]} g8 fis|								%8
  g r												%9
 }
 \repeat volta 2 {
  g a|												%10
  b8. c16 d8 e|											%11
  f r \stemDown \slurUp \times 2/3 {e16[ c e(] b)[ gis b(]}|					%12
  \times 2/3 {c)[ a c(] gis)[ e gis] \grace b <a f>[ <gis e> <a f>] c( a) <f d>}|		%13
  \stemUp <e c>8 <d b e,,> e ~ \times 2/3 {e16[ fis g]}|					%14
  \slurDown
  \times 2/3 {f16[ gis( a)] e( f) d} \slurUp b!8( \times 2/3 {b16)[ \slurDown d( b)]}|		%15
  c8 r gis' a|											%16
  b											%17.1
  \times 2/3 {\stemUp c8 <a es c>16} 							%17.2
  g8											%17.3
  b,|											%17.4
  <c c,> s										%18
 }
}

middleVoice = \notes \relative c' {
 \repeat volta 2 {
  \partial 4*1 s4
  \override TupletBracket #'bracket-visibility = ##f
  \override TupletBracket #'number-visibility = ##f
  s2 s s s s s s s4
 }
 \repeat volta 2 {
  s4 s2 s s s s s 
  \times 2/3 {\stemUp gis'16[ d' f]} 								%17.1
  \times 2/3 { c[ e] s}										%17.2
  \times 2/3 {g,16[ c e]}									%17.3
  \times 2/3 {g,,16[ d' fis]}|									%17.4
  s4
 }
}
lowerVoice = \notes \relative c' {
 \repeat volta 2 {
  \partial 4*1 \tupletDown \times 2/3 {c16[ b' c]} \stemDown bes8				%1
  a r \times 2/3 {r16 as([ g)]} f8|								%2
  \override TupletBracket #'bracket-visibility = ##f
  \override TupletBracket #'number-visibility = ##f
  \times 2/3 {r16 e[ g]} c,8 \times 2/3 {a''16[ c, a'] g c, g'}|				%3
  \times 2/3 {f[ c f] e[ c e] d[ g, b] c[ c, e]}|						%4
  \slurUp \times 2/3 {g s8 s8. c,16[ b'( c)]} bes8|						%5
  a r \times 2/3 {r16 as[ g]} f8|								%6
  \times 2/3 {r16 e[ g]} c,8 \times 2/3 {e'16[ c e] d[ gis, e']}|				%7
  \times 2/3 {c[ a e']} r8 \times 2/3 {d16[ b d] c[ a c]}|					%8
  \times 2/3 {b[ d, g]} g,8									%9
 }
 \repeat volta 2 {
  \times 2/3 {b'16[ g d'] c[ g fis']}|								%10
  \times 2/3 {d[ g, f'!] d[ f <e c>] b[ f' g] c,[ e g]}|					%11
  \times 2/3 {d[ g b,]} g8 s4|									%12
  s2|												%13
  \times 2/3 {r16 fis([ g)] s8. c,16[ b'( c)]} bes8|						%14
  a r \times 2/3 {s16 as([ g)]} f8|								%15
  \times 2/3 {r16 e[ g]} c,8 \times 2/3 {e16[ b' d] a'[ f, c']}|				%16
  gis8												%17.1
  \times 2/3 {a8 fis16]}									%17.2
  g8												%17.3
  g,8|												%17.4
  \stemDown \partial 4*1 \times 2/3 {c16[ e g]} c8|						%18
 }
}
\score {
 \context Staff <<
  \time 2/4 %Original says "C"
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \context Voice = one \upperVoice
  \context Voice = two \middleVoice
  \context Voice = three \lowerVoice
  >>
	\header {
	meter = ""
	piece = "N.°5.2 Variation"
	}
}



upperVoice = \notes \relative c'' {
 \key c \minor
 \repeat volta 2 {
  \partial 8*2
  g8 \tieUp c~|
  \stemUp
  c b16 c d8 d~|						%1
  d c16. d32 es8 g~|						%2
  g f16. es32 d8 c|						%3
  b d g, c|							%4
  c bes!16. a32 bes8 g'|					%5
  as g16. f32 es8 <bes' es,>|					%6 tie from last e to non-existing note in next measure
  bes as16. g32 as8 f|						%7
  <es g,> r							%8.1
 }
 \repeat volta 2 {
  \partial 8*2 g8 a|						%8.2
  bes4 f8 g|							%9
  as4 <as c,>8 g|						%10
  f4 fis|							%11
  <g b, g>8 r g, c|						%12
  c b16. as32 g8 f'~|						%13
  f es16. d32 c8 <g' c,>~|					%14
  g8 f16. es32 d8 <b f>|					%15
  <c es, c> r							%16.1
 }
 \repeat volta 2 {
  \key c \major
  \stemDown
  <e c> <g b,>|							%16.2
  \stemBoth
  \grace g16 <f a,>8[ r16 <e g,>] <d f,>8 <b g g,>|		%17
  <c e, c> r \stemDown <c' e, c> <b g>|				%18
  \stemBoth
  <a f>[ r16 <g e>] <f d b,>8 <e c c,>|				%19
  <d b g,> r <e c c,> <g b, c,>|				%20
  <f a,>[ r16 e] <d f, f,>8 <b f g,>|				%21
  <c e, c> r \stemDown <c' e, c> <b d, gis,>|			%22
  <a c, a>[ r16 g] <fis c d,>8 <a c, d,>|			%23
  \stemBoth
  <g b, g,> r							%24.1
 }
 \repeat volta 2 {
  \stemDown
  <g d b g> <a fis c g>|					%24.2
  <b f! d g,>[ r16 <c e, c>] <d g, f b,>8 <e g, e c>		%25
  <f d, b g> r <e c> <b gis>|					%26
  <c a>[ r16 <gis e>] <a f>8 <f d f,>|				%27
  \stemBoth <d b g>4 <e c c,>8 <g bes, e,>|			%28
  \grace g16 <f a, f,>8[ r16 <e g,>] <d f, g,>8 <b f g,>|		%29
  <c e, c> r <gis' d b e,> <a c, f,>|				%30
  <b f d> <c e, c a>16.[ <a es c fis,>32] <g e c g>8 <b, f g,>|	%31
  \partial 8*2 <c e, c> r|					%32
 }
}

middleVoice = \notes \relative c'' {
 \key c \minor
 \repeat volta 2 {
  \partial 8*2 s4|s2|s|s|s|s|s|					%1-6
  s4. <as bes,>8|						%7
  s4								%8.1
 }
 \repeat volta 2 {
  es'8 <es c>~|							%8.2
  \stemUp es8 d16. c32 s8 des~|					%9
  des! c16. b32 s4|						%10
  c8 d16. es32 d8 c|						%11
  s2|s|								%12-13
  g4. \stemDown bes8|						%14
  s2|s4								%15-16.1
 }
 \repeat volta 2 {

 }
 \repeat volta 2 {

 }
}

lowerVoice = \notes \relative c'' {
 \key c \minor
 \repeat volta 2 {
  \partial 8*2 r8 \stemDown <g es c>|
  <g f d>4 r8 <g f b,>|						%1
  <g es c>8 r r <c g es>|					%2
  <as f>4. <a es fis,>8|					%3
  <g d g,>4 r8 <es c>|						%4
  <f d>4 r8 <d' bes,>|						%5
  <bes es,>8. <as f>16 <bes g>8 <des g,>|			%6
  <c as>16 e[ f16. e32] f8 d|					%7
  es, s								%8.1
 }
 \repeat volta 2 {
  s4|								%8.2
  bes'4 <d bes>8 <des bes es,>|					%9
  as4 as|							%10
  as as|							%11
  s r8 <g es c>|						%12
  <f d>4 s8 <g b,>|						%13
  c,8. d16 es8 es|						%14
  <c' a f>4. g,8|						%15
  s4								%16.1
 }
 \repeat volta 2 {
  \key c \major
  s4|								%16.2
  s2|								%17
  s2|								%18
  s8 g' s4|							%19
  s2|								%20
  c,8 r s4|							%21
  s2|								%22
  s2|								%23
  s4								%24.1
 }
 \repeat volta 2 {
  s4|								%24.2
  s2|								%25
  s2|								%26
  s2|								%27
  s2|								%28
  s2|								%29
  s2|								%30
  g'16 gis s8 s4|						%31
  \partial 8*2 s4|						%32
 }
}
\score {
 \context Staff <<
  \time 2/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \context Voice = one \upperVoice
  \context Voice = two \middleVoice
  \context Voice = three \lowerVoice
  >>
	\header {
	meter = ""
	piece = "N.°5.3 Minore"
	}
}




upperVoice = \notes \relative c'' {
 \key f \major
 \repeat volta 2 {
  \stemDown
  <f f,>2\f_\markup {La 6e corde en Fa} <a a,>|					%1 source says "F" instead of "f", move left
  <c c,> r4 <a a,>8. <f f,>16|							%2
  \stemUp
  <e e,>4 <g g,> <c, c,> <e bes c,>|						%3
  <f a, f,>8 f,16 f f8 f f f f f|						%4
  c'8.[ f16 f,8. f'16] d8.[ f16 f,8. f'16]|					%5
  <c a f,>8 f,16 f f8 f f f f f|						%6
  c'8.[ f16 f,8. f'16] d8.[ f16 f,8. f'16]|					%7
  <c a>8 f,16 f f8 f16 a \stemDown c8 f a c\f|					%8
  <b f d g,>4 <b f d g,>8. b16 <b f d g,>4 <b f d g,>|				%9
  <c e, c>4 r8. b16 \grace b16( a8.[) g16 \grace g( f8.) e16]|			%10
  d4 <f d f,> <e c g> <d b g>|							%11
  <e c c,>8 \times 2/3 {g,16[ g' g]} g,8 <g' g,> <g g,>4 <b f d g,>|		%12
  <c e, c>8 \times 2/3 {g,16[ g' g]} g,8 <g' g,> <g g,>4 <b f d g,>|		%13
  <c e, c>4 \stemUp <c, e, c> <c e, c>  r|					%14
 }
 \repeat volta 2 {
  d2 es4.. es16|								%15
  s2. fis8. fis16|								%16
  g4 g8. g16 a4 a8. a16|							%17
  bes4 a <g bes,>r|								%18
  c,2 des4.. des16|								%19
  s2. e8. e16|									%20
  f4 f8. f16 g4 g8. g16|							%21
  a4 g f8 c d e|								%22
  f4 f8. f16 f4 f|								%23
  des,16 as'' as, f' d as' as, f' d as' as, f' d as' as, f'|			%24
  des,4 \stemDown <b'' f d>8. f16 <b f d>8.[ as16 <b g d>8. f16]|		%25
  <c' e, c>4 \stemUp c,8. c16 \stemDown <c c,>4 r|				%26
  \stemUp <f, a,>2\p <a f>4 <g c,>|						%27
  f8 c'16 c c8 c c c c c|							%28
  c8 c16 c c8 c c c c c|							%29
  c c b c cis d es e|								%30
  \dynamicUp
  f4 f8. f16 g4.\> e8\!|							%31
  f4 f8. f16 g4.\> e8\!|							%32
  \dynamicBoth
  <f a, f,>4 <f c a f>\f <g e bes f> <a es c f,>|				%33
  \stemDown <bes d, bes> <c f, es a,> <d f, d bes> r|				%34
  <e bes g c,>\ff <e bes g c,>8. e16 <e bes g c,>4 <e bes g c,>|		%35
  <f a, f>2 <c a f>4 r8. a16|							%36
  <g d bes>4 <g d bes,> \stemUp<e g, c,>8. <f a,>16 <g bes, c,>8. <e g,>16|	%37
  <f a, f,>8 c16 c c8 c c4 <bes' e,>|						%38
  <a f>8 c,16 c c8 c c4 g'8.( e16)|						%39
  <f a, f,>4 <f a, f> <f a, f,> r|						%40
 }
}

middleVoice = \notes \relative c' {
 \key f \major
 \repeat volta 2 {
  s1|
  s|
  s|
  s|
  <c' a>2 <d bes>|
  s1|
  <c a>2 <d bes>|
  s1 s s s s s s
 }
 \repeat volta 2 {
  s1|
  d4 d8 d d d c d|								%16
  bes8\p d bes d c[ d] c[ d]|							%17
  \stemUp
  bes8[ d] c[ d] s2|								%18
  s1 s s s s s s s s s s s|
  a8[ c] a[ c] bes[ c] \stemDown bes[ c] \stemUp				%31
  a8[ c] a[ c] bes[ c] bes[ c]							%32
  s1 s s s s s s s
 }
}

lowerVoice = \notes \relative c {
 \key f \major
 \repeat volta 2 {
 s1|										%1
 s|										%2
 s|										%3
 s|										%4
 \stemDown f4 f' f, f'|								%5
 s1|										%6
 f,4 f' f, f'|									%7
 f,4 s2.|									%8
 s1|										%9
 s|										%10
 s|										%11
 s|										%12
 s|										%13
 s|										%14
 }
 \repeat volta 2 {
  d'2 es|									%15
  d4 s2.|									%16
  s2. fis4|									%17
  g4 d g r|									%18
  c,2\f des|									%19
  <c' c,>8 c16 c c8 c c c bes c|						%20
  a\p c a c e, c' e, c'|							%21
  f, c' bes c a4 r|								%22
  s4 f f f|									%23
  s1\f|										%24
  s1|										%25
  s4 c c s|									%26
  s1|										%27
  <f a,>2 s2|									%28
  <g c,>2 <bes g>4 <a f>|							%29
  <g e c>4 r r2|								%30
  f,4 f' e c|									%31
  f,4 f' e c|									%32
  s1|										%33
  s|										%34
  s|										%35
  f,2 s|									%36 original f points up (last line of page)
  s1|										%37
  s4 r r c'|									%38
  f r r <bes c,>|								%39
  s1|										%40
 }
}

\score {
 \context Staff <<
  \time 4/4
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \context Voice = one \upperVoice
  \context Voice = two \middleVoice
  \context Voice = three \lowerVoice
  >>
	\header {
	metre = ""
	piece = "N.°6 Marcia"
	}
}
