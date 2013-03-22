\version "2.16.1"

\paper {

    %indent = 0.0
    top-markup-spacing  #'basic-distance = 4\mm
    markup-system-spacing #'basic-distance = #8
    system-system-spacing #'basic-distance = #21
    top-system-spacing #'basic-distance = #15
    line-width = 18.0\cm
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 16. Ouverture. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 16"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
		comment = "Kollidierende Notenspalten ignorieren."
		%COMMENT: Turn added to Bar18 treble 1st note, as shown on (1741), yet not shown on Bach-Gesellschaft
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2013/03/22-1413"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

%--------MACROS
delayTurn = \once \override Voice.Script #'X-offset = #10
staffDown = \change Staff = "lower"
liftTie = \shape Tie #'((0 . 1.8) (0 . 2.2) (0 . 2.2) (0 . 1.8))
hideTupletBracket = \override TupletBracket #'bracket-visibility = ##f
hideTupletNumber = \override TupletNumber #'transparent = ##t
tupletBracketDown = \override TupletBracket #'direction = #DOWN
ignoreClashNote = \override NoteColumn #'ignore-collision = ##t
fixBeamAngle = \once \override Beam #'positions = #'(5 . 5)
shiftNoteCol = \once \override NoteColumn #'force-hshift = #0.3
vcenterRest = \override MultiMeasureRest #'staff-position = #0
%------------

sopranoOne =   \relative g' {
	\set Staff.connectArpeggios = ##t
    \repeat volta 2 { %begin repeated section
    	        \ignoreClashNote
		\stemDown
		b4\rest b32\rest g32 [ a b c d e fis ] g8. [ d16 b8. g16 ] | % 1
		d'4. \prallmordent e8 c4 ~ \downprall 
		c8. [ \tupletBracketDown \times 2/3 {b32 c d ] } | % 2
		\hideTupletBracket \hideTupletNumber
		g,8. [ g'32 fis32 ] g8. [ e16 ] \stemUp \grace d8 \stemDown cis8. [ b'16 a8. g16 ] | % 3
		\stemUp fis4. \downprall \stemDown g8 \stemUp \grace g8 \stemDown a2 ~ | % 4
		a8. [ \times 2/3 { a32 g fis ]  } 
		g8. [ d16 ] _~ d2 | % 5 
		\stemUp \grace f8 
		e8. [ \times 2/3 { d32 c b ] } 
		c8. [ \times 2/3 { b32 a g ] } a8. [ a16] \stemDown g'8. \prallmordent [ g16] | % 6
		\stemUp <d g>4 \arpeggio ~ \stemDown g32 [ b a g fis e d c ] a'8. [ c,16 ] a'8. [ c,16 ] | % 7
		b4 ~ \downprall \stemUp 
		b8. [ \times 2/3 { a32 g fis ] } 
		\stemDown g16 [ d'-. e-. fis-. ] g-. [ fis-. g-. a-. ] | % 8
		b8. [ \times 2/3 {  a32 g fis ] } 
		g8. [ \times 2/3 {  fis32 e dis ] } \stemUp e8. [ b16 cis8. \mordent d16 ] | % 9
		\grace d8 
		cis8. [ \times 2/3 {  e32 fis g ] } a8. [ a16 ] a4 ~ 
		a8. [ \times 2/3 { a32 g fis ] } | % 10
		g8. [ \times 2/3 { fis32 e dis ] } e8. [ b'16 ] d,4. \downprall cis16 [ b16 ] | % 11
		cis8. [ \times 2/3 { d32 cis d ] } d8. \prallprall [ cis32 d ] e4 ~ e32 [ d cis b a g fis e ] | % 12
		d8. [ fis16 a8. \prallmordent b16 ] <a c>4 ~ 
		c8. [ \times 2/3 {  c32 b a ] } | % 13
		\stemDown 
		b8. [ \times 2/3 {  cis32 d e ] }
		d8. \prallprall [ \times 2/3 { cis32 d e ] }
		a,8. [ \times 2/3 {  e'32 fis g ]} a8. [ cis,16 ] \stemUp| % 14
		\delayTurn d4.\turn e8 e4. \downprall d8 |  % 15
    } %end of repeated section

	\alternative {
		{<fis, a d>1 | } % 16
		{ \time 3/8 \stemDown d'8 [ a'16 g fis e ] |} % 16
    } %end alternative

	
    \repeat volta 2   { %begin repeated section
		\stemUp fis8\turn [ g a ] | % 17
		d,16 [ fis e g fis a ]| % 18
		g8 [ fis g ] | % 19
		e8 [dis e ]| % 20
		\liftTie a4. ~ | % 21
		a8 [ g16 e fis dis ] | % 22
		\liftTie b'4. ~ | % 23
		b16 [ c b a g fis ] | % 24
		g16 [ e a e b' e, ] | % 25
		c'16 [ b a g fis e ] | % 26
		d16 [ fis e g fis a ] | % 27
		g16 [ a a8. \prallprall g32 a ] | % 28
		b4 g8 | % 29
		e8 [fis dis ] | % 30
		e4 d8\rest | % 31
		r8 e16 [ d c b ] | % 32
		c8 [ d e ] | % 33
		a,16 [ c b d cis e ] | % 34
		d32 [ e fis16 ] fis8. \downprall [e32 fis] | % 35
		g8 [ fis16 e d c ] | % 36
		b16 [ d c e d f ] | % 37
		\liftTie e4. ~ | % 38
		e16 [ d c b c fis ] | % 39
		\stemDown a16 [ d, c b c a ] | % 40
		b16 [ e d c d gis ] | % 41
		b16 [ e, d c d b ] | % 42
		\stemUp c4. ~| % 43
		c16 [ b a b c a ] | % 44
		d4 b8 | % 45
		g8 [ a fis ] | % 46
    } %end repeated section

	\alternative {
		{g4 b8\rest | b8\rest \stemDown a'16 [g fis e ] | } % 47
		{ \time 2/2 < d, g>1 |} % 46
		
    } %end alternative
\bar "|."
}

sopranoTwo =   \relative c'' {
	\set Staff.connectArpeggios = ##t
	\repeat volta 2 { %begin repeated section
		\stemUp s1| % 1
		s1| % 2
		s1| % 3
		d4 s1*3/4 | % 4
		s2 \grace e8 f4. ^\prallmordent g8 | % 5
		\stemDown c,8 s1*7/8 | % 6
		b4 \arpeggio s1*3/4  | % 7
		s1 | % 8
		s1*15/16 b16| % 9
		a4 b8\rest b16\rest a'16 dis,8. [fis16] b,4 ~ | % 10
		b4 s4 b2 | % 11
		a4 b cis s4 | % 12
		s2 fis,4 s4| % 13
		s1 | % 14
		s2 cis'2 | % 15
	} %end of repeated section
   
	\alternative {
		{s1 | } % 16
		{ \time 3/8 s1*3/8 |} % 16
    } %end alternative

    \repeat volta 2 { %begin repeated section
		\stemUp s1*3/8  | % 17
		s1*3/8  | % 18
		s1*3/8 | % 19
		c4. ~ | % 20
		\fixBeamAngle \shiftNoteCol c16 [ g' fis e dis e ]  | % 21
		b4. ^~  | % 22
		\fixBeamAngle \shiftNoteCol b16 [ cis dis e fis dis ]  | % 23
		\stemDown c,8\rest e8 [ dis ] | % 24
		e4. ~   | % 25
		e4 r8  | % 26
		s1*3/8  | % 27
		s1*3/8  | % 28
		s1*3/8  | % 29
		s1*3/8  | % 30
		s1*3/8  | % 31
		s1*3/8  | % 32
		s1*3/8  | % 33
		s1*3/8  | % 34
		s1*3/8  | % 35
		s1*3/8  | % 36
		s1*3/8  | % 37
		s1*3/8  | % 38
		s1*3/8  | % 39
		s1*3/8  | % 40
		s1*3/8  | % 41
		s1*3/8  | % 42
		s1*3/8  | % 43
		s1*3/8  | % 44
		s1*3/8  | % 45
		s1*3/8  | % 46
	} %end repeated section
	
	\alternative {
		{s1*3/8 | s1*3/8 } % 32
		{ \time 4/4 s1|} % 32
	} %end alternative
}

sopranoThree =   \relative c'' {
	\set Staff.connectArpeggios = ##t
	\repeat volta 2 { %begin repeated section
		s1 | % 1
		s1 | % 2
		s1 | % 3
		s1 | % 4
		s1 | % 5
		s1 | % 6
		s1 | % 7
		s1 | % 8
		s1 | % 9
		s1 | % 10
		s1 | % 11
		s1 | % 12
		s1 | % 13
		s1 | % 14
		s1 | % 15
	} %end of repeated section
   
	\alternative {
		{s1 | } % 16
		{ \time 3/8 s1*3/8 |} % 16
	} %end alternative

	\repeat volta 2  { %begin repeated section
		\stemDown b8\rest d16 [ c b a ] | % 17
		b8 [ c d ] | % 18
		g,16 [ b a c b d ] | % 19
		e,8\rest a16 [ g fis e ]    | % 20
		fis8 [ g a ]   | % 21
		dis,16 [ fis e g fis a ]   | % 22
		g8 [ fis] e8\rest | % 23
		e'8 s4 | % 24
		s1*3/8   | % 25
		s1*3/8   | % 26
		a,8 [ b c ]  | % 27
		d8 [ e fis ]  | % 28
		g4 d8 | % 29
		g,8 [a fis ]   | % 30
		g8 [ gis8. \prallprall fis32 gis ]  | % 31
		a4 gis8  | % 32
		a8 g!4  | % 33
		fis8 [g e ]  | % 34
		fis16 e16\rest e8\rest e8\rest  | % 35
		s1*3/8   | % 36
		s1*3/8   | % 37
		g8\rest fis8 [ g ] \turn   | % 38
		a8 e8\rest e8\rest  | % 39
		s1*3/8   | % 40
		s1*3/8   | % 41
		s1*3/8   | % 42
		e16\rest g16 [ fis g a fis ] | % 43
		d4. _~   | % 44
		d16 [ fis e g fis8 ]   | % 45
		s1*3/8 | % 46
	} %end repeated section

	\alternative {
		{ \staffDown \stemUp \shiftOff b,4 r8|  % 47
		s1*3/8 | } % 48 
		{ \time 4/4 s1|} % 48
	} %end alternative
}

soprano = << \sopranoOne \\ \sopranoTwo  \\ \sopranoThree>>

%%
%% Bass Clef
%% 


bassOne =   \relative d {
	\repeat volta 2 { %begin repeated section
		\stemUp <b d g>4 r4 r4 r8 r16 b'16  | % 1
		a4 s1*3/4   | % 2
		s1   | % 3
		s1   | % 4
		s1   | % 5
		s1   | % 6
		s1   | % 7
		s1   | % 8
		s1   | % 9
		s1   | % 10
		s1   | % 11
		s1   | % 12
		s1   | % 13
		s4 r8 r16 b16 cis4 s4   | % 14
		s1   | % 15
	} %end of repeated section

	\alternative {
		{s1 | } % 16
		{ \time 3/8 s1*3/8 |} % 16
	} %end alternative

	\repeat volta 2  \time 3/8 { %begin repeated section
		s1*3/8 | % 17
		s1*3/8 | % 18
		s1*3/8 | % 19
		s1*3/8 | % 20
		s1*3/8 | % 21
		s1*3/8 | % 22
		\stemDown d,8\rest b'16 [a g fis ] | % 23
		g8 [ a b ] | % 24
		e,16 [ g fis a g b ] | % 25
		a8 [ b c ] | % 26
		fis,16 [ a  g b a c ] | % 27
		b8 [ c d ] | % 28
		g,16 [ b a c a d ]| % 29
		c8 [ a b ] | % 30
		r8 e16 [d c b ] | % 31
		c8 [ d e ] | % 32
		a,16 [ c b d cis e ]| % 33
		d4. ~ | % 34
		d8 a8\rest r8 | % 35
		\stemUp r8 g8 [fis] | % 36
		g4. ~ | % 37
		g8 s8 s8 | % 38
		fis,8 [g \turn a ] | % 39
		d,16 [ fis e g fis a ] | % 40
		g8 [ a \turn  b ] | % 41
		e,16 [ gis fis a gis b ] | % 42
		\stemDown a16 [ e' a g fis e ] | % 43
		fis16 [ g fis e d c ] | % 44
		b16 [ d c e d fis ]| % 45
		e8 [ c d ] | % 46
	} %end repeated section

}

bassTwo = \relative c {
	\repeat volta 2 { %begin repeated section
		\hideTupletBracket \hideTupletNumber \ignoreClashNote
		\stemDown g4 r4 r4 r8 r16 g'16 | % 1
		fis4 ~ fis32 [ d e fis g a b c ] d8. [ a16 fis8. d16 ] | % 2
		e4. g8 e4 ^~ ^\downprall 
		e8. [ \times 2/3 { d32 e fis ] } | % 3
		d8. [ c'32 b ] c8. [ a16 ] fis8. [ e'16 d8. c16 ] | % 4
		b4. ^\downprall b8 
		b8. [ \times 2/3 { c32  b a ] } 
		b8. [ g16 ] | % 5
		c4 ^~ ^\prallmordent 
		c8. [ \times 2/3 { d32 c b ] }
		c8. [ \times 2/3 { b32 a g ] }
		a8. [ \times 2/3 { g32 fis e ] }| % 6
		d2 ^~ \stemUp d16  [ c32 b a g fis e ] d16 [ fis a d ] | % 7
		g,16-. [ d'-. e-. fis-. ] \stemDown g^. [ fis^. g^. a^. ] b4 ^~ ^\prallprall 
		b8. [ \times 2/3 {  a32 g fis ] } | % 8
		g16^. [ b^. cis^. dis^.] e^. [ dis^. e^. fis^. ] g8. [ g,16 g'8. g16 ] | % 9
		g4 ^~ 
		g8. [ \times 2/3 { g32  fis e ] }
		fis8. [ \times 2/3 {  b,32  cis dis ] } e8. [ e16 ] | % 10
		e4 ^~ 
		e8. [ \times 2/3 {  c32 b a ] } gis8. [ b16 e,8. gis16 ] | % 11
		a4 ^~ a16 [ a,32 b cis d e fis ] g8. [ e16 ] cis8. [ a16 ] | % 12
		fis'4 ^~ 
		fis8. [ \times 2/3 {  g32 fis e ] } \stemUp 
		d8. [ \times 2/3 { c32 b a ] } 
		g8. [ \times 2/3 { d'32 e fis ] } \stemDown | % 13
		g8. ^\prallmordent [ g,16  g'8.  g16 ] g4 ~ 
		g8. [ \times 2/3 {  g32 fis e ] } | % 14
		fis16 ~ [ fis32 d e fis g a ] b8. [ g16 ] a4 \stemUp a, | % 15
	} %end of repeated section

	\alternative {
		{d,4 ~ \stemDown d16 [ d'32 e fis g a b ] c8. [ a16 fis8. d16 ] | } % 16
		{ \time 3/8 \stemNeutral d,4 d'8\rest |} % 16
	} %end alternative

	\repeat volta 2 { % begin repeated section
		\vcenterRest
		R1*3/8 | % 17
		R1*3/8 | % 18
		R1*3/8 | % 19
		R1*3/8 | % 20
		R1*3/8 | % 21
		R1*3/8 | % 22
		s1*3/8 | % 23
		s1*3/8 | % 24
		s1*3/8 | % 25
		s1*3/8 | % 26
		s1*3/8 | % 27
		s1*3/8 | % 28
		s1*3/8 | % 29
		s1*3/8 | % 30
		e8 s8 s8 | % 31
		s1*3/8 | % 32
		s1*3/8| % 33
		s1*3/8| % 34
		\stemDown r8 d16 [ c b a ] 
		b8 [c d] | % 36
		g,16 [ b a c b d ] | % 37
		c16 [b a g fis e ]  | % 38
		s1*3/8| % 39
		s1*3/8| % 40
		s1*3/8| % 41
		s1*3/8| % 42
		s1*3/8| % 43
		s1*3/8| % 44
		s1*3/8| % 45
		\stemUp b''8 [ c a] | % 46
	} %end repeated section

	\alternative {
		% {b4 r8 |  s1*3/8 | } % 46-47
		{g,16 [ fis g a b c ] |  d8 [d,] d'8\rest | } % 46-47
		{ \time 2/2 <g, b'>1 |} % 46
	} %end alternative
}

nb = \noBreak
breaks = {
	\repeat unfold 5 { s1 \repeat unfold 1 { \nb s1 } } %systems1-5
	\pageBreak
	\repeat unfold 2 { s1 \repeat unfold 1 { \nb s1 } } %systems6-7
	s1 \nb s1 s1*3/8 			%system8
	s1*3/8 \repeat unfold 4 { \nb s1*3/8 } 	%system9
	s1*3/8 \repeat unfold 4 { \nb s1*3/8 } 	%system10
	\pageBreak
	s1*3/8 \repeat unfold 5 { \nb s1*3/8 } 	%system11
	s1*3/8 \repeat unfold 4 { \nb s1*3/8 } 	%system12
	s1*3/8 \repeat unfold 5 { \nb s1*3/8 } 	%system13
	s1*3/8 \repeat unfold 4 { \nb s1*3/8 } \nb s1 %system14
}

bass = << \bassOne \\ \bassTwo \\ \breaks >>


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" \with { \consists "Span_arpeggio_engraver" }
	        { \clef treble \key g \major \time 2/2 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 2/2 \bass }
    >>
    \layout{  }
    \midi { }

}
