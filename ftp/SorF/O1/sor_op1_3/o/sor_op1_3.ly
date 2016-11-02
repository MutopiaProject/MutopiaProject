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

\version "2.18.2"
\header {
  mutopiatitle = "Divertissements pour la guitare, n°3 Allegretto "
  mutopiacomposer = "SorF"
  mutopiaopus = "O 1.3"
  mutopiainstrument = "Guitar"
  date = "1820s"
  source = "Golden Music Press/GFA/Frederic Noad facsimile edition"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  lastupdated = "2016/10/24"   %------Javier Ruiz-Alma
  filename	= "sor_op1_3.ly"
  title 	= "Six divertissements pour la guitare"
  opus		= "Opus 1.3"
  instrument	= "Guitarre"
  meter		= "Allegretto"
  subtitle = 	"3. Allegretto"
  source =	"Golden Music Press/GFA/Frederic Noad facsimile edition"
  composer =	"Fernando Sor"
  enteredby	= "Mark Van den Borre"
 footer = "Mutopia-2016/10/25-453"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2016 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
\paper {
  top-margin = 8\mm
  line-width = 18.6\cm
  top-system-spacing.basic-distance = #8
  last-bottom-spacing.padding = #2
}

partialEigth = {
  \partial 8
  \set Score.measureLength = #(ly:make-moment 5/8)
}
revertFullMeas = {
  \set Score.measureLength = #(ly:make-moment 6/8)
  %\set Timing.measureLength = #(ly:make-moment 6/8)
}

posBeamA = \once \override Beam.positions = #'(1 . 0)
posBeamB = \once \override Beam.positions = #'(1.2 . 1.6)
posBeamC = \once \override Beam.positions = #'(1.8 . 2)
posBeamD = \once \override Beam.positions = #'(1.8 . 1.4)
posBeamE = \once \override Beam.positions = #'(-2 . -3)
posBeamF = \once \override Beam.positions = #'(-1.7 . -2.6)
posBeamG = \once \override Beam.positions = #'(-2.2 . -2.2)
posBeamH = \once \override Beam.positions = #'(-1.2 . -0.8)
posBeamJ = \once \override Beam.positions = #'(-1.3 . -1)
posBeamK = \once \override Beam.positions = #'(-0.7 . -1)
posBeamL = \once \override Beam.positions = #'(-0.8 . -1.2)
posBeamM = \once \override Beam.positions = #'(2.5 . 2.7)

posNoteLeft = \once \override NoteColumn #'force-hshift = #1
ignoreCollision = \once \override Staff.NoteColumn.ignore-collision = ##t

upperVoice =  \relative c'''{
 \key d \major
 \partial 8 \voiceOne <a fis>8^\markup {La 6e corde en Re} 		 	%upbeat
 <a fis>4 <fis d>8 <g e>4 <b g>8 |						%1
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
 <d fis,>4 <d fis,>8 <d fis,>4 b8\rest | \bar "||"					%16
 \partialEigth <fis' d>8 \revertFullMeas  					%upbeat
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
 <cis a cis,> <b gis b,> <a fis a,> <a fis a,> <gis e gis,> <fis d fis,>|	%29
 <eis cis eis,>4 <fis d fis,>8 <a fis a,> <fis d fis,> <d b d,>|		%30
 <cis a>4 <cis a>8 <b gis>4 e8|							%31
 <d b a,>4. <cis a e>8 r <cis' a cis,>|						%32
 <cis a cis,> <b gis b,> <a fis a,> <a fis a,> <gis e gis,> <fis d fis,>|	%33
 <eis cis eis,>4 <fis d fis,>8 <a fis a,> <gis e gis,> <fis d fis,>|		%34
 <e cis>4 <cis a>8 <d b>4 <b gis>8|						%35
 a4 b8\rest b4\rest a'8|							%36
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
 <g e>4 <a cis,>8 <fis d> f\rest <fis d>|						%54
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
 <d fis, d,>4. b4\rest b8\rest \bar "||"					%79
}										%end upperVoice

middleVoice =  \relative c {
 \voiceThree \shiftOff \partial 8 s8 						%upbeat
 d8 d' d d, d' d|								%1
 d,8 d' d d, d' d|								%2
 d,8 d' d d, d' d|								%3
 d,8 d' d d, d' s8|								%4
 \stemDown g\rest a cis s a a|							%5
 \stemUp g\rest a4 \stemDown s8 a  <fis c'!>|					%6
 <g b>4 <dis b'>8 <e b'>4 <g b>8|						%7
 s2.|										%8
 \stemUp \posBeamA a8 d, fis \posBeamB g d b'|					%9
 \posBeamA a d, d \stemDown a' d, ais'|						%10
 \stemUp \posBeamC b d, cis' \stemDown d d, cis'|				%11
 \stemUp \posBeamD cis d, b' \stemDown a4.|					%12
 g8\rest a4. a4|								%13
 g8\rest a4 a8\rest a8 s8|							%14
 \stemUp \posBeamM d dis s8 s4.|						%15
 s2.\bar "||"									%16
 \partialEigth s8 \revertFullMeas 						%upbeat
 s2.|										%17
 \stemDown e4 d8 cis4 e8|							%18
 s2.|										%19
 s2.|										%20
 b,16[ d' gis, d' gis, d'] e,,[ d'' gis, d' e, d']|				%21
 a,[ cis' a cis e, cis'] a,[ cis' a cis e, cis']|				%22
 b,[ d' gis, d' e, d'] e,,[ d'' gis, d' e, d']|					%23
 a,[ cis' a cis e, cis'] a, cis' a8 s|						%24
 s2.|s2.|s2.|s2.|s2.|s2.|s2.|s2.|s2.|s2.|s2.|s2.|				%25-36
 g4\rest g8\rest \shiftOn c \shiftOff b a|					%37
 s4. \stemUp g4.|								%38
 f4\rest f8\rest \stemDown \posBeamE \shiftOn bes \shiftOff a g|		%39
 \stemUp \shiftOff fis4. fis4.|							%40
 \stemDown <d' b>4 <e cis>8 \posBeamF \shiftOn <f d> \shiftOff <e cis> <d b>|	%41
 \stemUp <cis a>4 r8 r4 s8|							%42
 \stemDown <d b>4 <e cis>8 \posBeamF \shiftOn <f d> \shiftOff <e cis> <d b>|	%43
 \stemUp \posBeamG a, \stemDown a' a a a a|					%44
 \stemUp \posBeamG a, \stemDown a' a a a a|					%45
 \stemUp \posBeamG a, \stemDown a' a a a a|					%46
 \stemUp \posBeamG a, \stemDown a' a a a a|					%47
 s2.|s2.|									%48-49
 \stemUp d,,8 d' d d, d' d|							%50
 d, d' d  \stemDown d d d \stemUp|						%51
 \stemUp d, d' d d, d' d|							%52
 d, d' d d, d' g8\rest|								%53
 g8\rest \stemDown a4 a8\rest a4|						%54
 g8\rest a4 g8\rest a fis|							%55
 s2.|s2.|									%56-57
 \stemUp \posBeamA a8 d, fis \stemDown g d b'|					%58
 \stemUp \posBeamA a d, d \stemDown d d ais'|					%59
 \posBeamJ b \stemUp d, \stemDown cis' \posBeamK d \stemUp d, \stemDown cis'|	%60
 \posBeamL cis \stemUp d, \stemDown b' a d, s8|					%61
 g8\rest a4 g8\rest a4|								%62
 g8\rest a4 g8\rest a\noBeam \shiftOn <c fis,> \shiftOff |			%63
 \stemUp \posBeamM d dis s8 s4.|						%64
 s2.|										%65
 \shiftOn fis,8 \shiftOff  d d \shiftOn fis \shiftOff d d|			%66
 \shiftOn g \shiftOff d d d d d|						%67
 \stemDown d, d' d d, d' d|							%68
 d, d' d d d d|									%69
 \stemUp d, d' d d, d' d|							%70
 d, d' d \stemDown d d d \stemUp|						%71
 d, d' d \posBeamH d, d' d|							%72
 \stemDown d, d' d d d d|							%73
 d, d' d d, d' d|								%74
 d, d' d d d d|									%75
 d, a' a d, a' a|								%76
 s2.|s2.|s2.\bar "||"								%77-79
}										%end middleVoice

lowerVoice =  \relative c {
 \voiceTwo \partial 8 r8 		 					%upbeat
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
 d8 a8 fis8 d4 s8								%16
 \partialEigth r8 \revertFullMeas 						%upbeat
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
 \slurDown a,8([ e' e] a,) r r|							%32
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
 d4. s4.|									%51
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
 a4. d4 s8 |									%63
 <b' g>4. <d! a>4 <cis g a,>8|							%64 facsimile says 4 for last chord
 d,8 d d d d d|									%65
 d,4. d4.|									%66
 d4. s4.|									%67
 \stemUp d4. d4.|								%68
 d4. s4.|									%69
 \stemDown d4. d4.|								%70
 d4. s4.|									%71
 d4. d4.|									%72
 \stemUp d4. s4.|								%73
 d4. d4.|									%74
 d4. s4.|									%75
 d4. d4.|									%76
 \stemDown d8 d' cis d a fis|							%77
 d fis a d a fis|								%78
 s2.|										%79
}										%end lowerVoice

\score {
 \context Staff <<
  \time 6/8
  \override Staff.NoteCollision.merge-differently-dotted = ##t
  \override Staff.NoteCollision.merge-differently-headed = ##t
  \clef violin 
  \new Voice = "one" { \override TupletNumber.transparent = ##t \upperVoice }
  \new Voice = "two" { \lowerVoice }
  \new Voice = "three" { \middleVoice }
>>

  \midi {
    \tempo 4. = 60
    }

\layout { }
}
