\version "2.11.44"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
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
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
		comment = "Kollidierende Notenspalten ignorieren."
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/05/18-1413"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


sopranoOne =   \relative g' {
    \repeat volta 2 { %begin repeated section
		\stemDown
		r4 r32 g32 [ a b c d e fis ] g8. [ d16 b8. g16 ] | % 1
		d'4. \prallmordent e8 c4 ~ \downprall 
		c8. [ \times 2/3 {b32 c d ] } | % 2
		g,8. [ g'32 fis32 ] g8. [ e16 ] \grace d8 cis8. [ b'16 a8. g16 ] | % 3
		\stemUp fis4. \downprall \stemDown g8 \grace g8 a2 ~ | % 4
		a8. [ \times 2/3 { a32 g fis ]  } 
		g8. [ d16 ] ~ d2 | % 5 
		\stemUp \grace f8 
		e8. [ \times 2/3 { d32 c b ] } 
		c8. [ \times 2/3 { b32 a g ] } a8. [ a16] \stemDown g'8. \prallmordent [ g16] | % 6
		\stemUp <d g>4 ~ \stemDown g32 [ b a g fis e d c ] a'8. [ c,16 ] a'8. [ c,16 ] | % 7
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
		d4. e8 e4. \downprall d8 |  % 15
    } %end of repeated section

	\alternative {
		{<fis, a d>1 | } % 16
		{ \time 3/8 d'8 [ a'16 g fis e ] |} % 16
    } %end alternative

	
    \repeat volta 2   { %begin repeated section
		fis8 [ g a ] | % 17
		d,16 [ fis e g fis a ]| % 18
		g8 [ fis g ] | % 19
		e8 [dis e ]| % 20
		a4. ~ | % 21
		a8 [ g16 e fis dis ] | % 22
		b'4. ~ | % 23
		b16 [ c b a g fis ] | % 24
		g16 [ e a e b' e, ] | % 25
		c'16 [ b a g fis e ] | % 26
		d16 [ fis e g fis a ] | % 27
		g16 [ a a8. \prallprall g32 a ] | % 28
		b4 g8 | % 29
		e8 [fis dis ] | % 30
		d4 r8 | % 31
		r8 e16 [ d c b ] | % 32
		c8 [ d e ] | % 33
		a,16 [ c b d cis e ] | % 34
		d32 [ e fis16 ] fis8. \downprall [e32 fis] | % 35
		g8 [ fis16 e d c ] | % 36
		b16 [ d c e d f ] | % 37
		e4. ~ | % 38
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
		{g4 r8 | r8 a'16 [g fis e ] | } % 47
		{ \time 4/4 < d, g>1 |} % 46
    } %end alternative

}

sopranoTwo =   \relative c'' {
	\repeat volta 2 { %begin repeated section
		\stemUp s1| % 1
		s1| % 2
		s1| % 3
		d4 s1*3/4 | % 4
		s2 \grace e8 f4. \prallprall g8 | % 5
		\stemDown c,8 s1*7/8 | % 6
		b4 s1*3/4  | % 7
		s1 | % 8
		s1*15/16 b16| % 9
		a4 r8 r16 a'16 dis,8. [fis16] b,4 ~ | % 10
		b4 r4 b2 | % 11
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
		c16 [ g' fis e dis e ]  | % 21
		b4. ~  | % 22
		b16 [ cis dis e fis dis ]  | % 23
		\stemDown r8 e,8 [ dis ] | % 24
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
		\stemDown r8 d16 [ c b a ] | % 17
		b8 [ c d ] | % 18
		g,16 [ b a c b d ] | % 19
		r8 a16 [ g fis e ]    | % 20
		fis8 [ g a ]   | % 21
		dis,16 [ fis e g fis a ]   | % 22
		g8 [ fis] r8 | % 23
		e'8 s4 | % 24
		s1*3/8   | % 25
		s1*3/8   | % 26
		a,8 [ b c ]  | % 27
		d8 [ e fis ]  | % 28
		g4 d8 | % 29
		g,8 [a fis ]   | % 30
		g8 [ gis8. \prallprall fis32 g ]  | % 31
		a4 gis8  | % 32
		a8 g4  | % 33
		fis8 [g e ]  | % 34
		fis16 r16 r8 r8  | % 35
		s1*3/8   | % 36
		s1*3/8   | % 37
		r8 fis8 [ g ] \turn   | % 38
		a8 r8 r8  | % 39
		s1*3/8   | % 40
		s1*3/8   | % 41
		s1*3/8   | % 42
		r16 g16 [ fis g a fis ] | % 43
		d4. ~   | % 44
		d16 [ fis e g fis8 ]   | % 45
		s1*3/8 | % 46
	} %end repeated section

	\alternative {
		{b4 r8|  % 47
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
		\stemDown r8 b16 [a g fis ] | % 23
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
		d8 r8 r8 | % 35
		\stemUp r8 g,8 [fis] | % 36
		g4. ~ | % 37
		g8 r8 r8 | % 38
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
		\stemDown g4 r4 r4 r8 r16 g'16 | % 1
		fis4 ~ fis32 [ d e fis g a b c ] d8. [ a16 fis8. d16 ] | % 2
		e4. g8 e4 ~ \downprall 
		e8. [ \times 2/3 { d32 e fis ] } | % 3
		d8. [ c'32 b ] c8. [ a16 ] fis8. [ e'16 d8. c16 ] | % 4
		b4. \downprall b8 
		b8. [ \times 2/3 { c32  b a ] } 
		b8. [ g16 ] | % 5
		c4 ~ 
		c8. [ \times 2/3 { d32 c b ] }
		c8. [ \times 2/3 { b32 a g ] }
		a8. [ \times 2/3 { g32 fis e ] }| % 6
		d2 ~ \stemUp d16  [ c32 b a g fis e ] d16 [ fis a d ] | % 7
		g,16-. [ d'-. e-. fis-. ] \stemDown g-. [ fis-. g-. a-. ] b4 ~ \prallprall 
		b8. [ \times 2/3 {  a32 g fis ] } | % 8
		g16-. [ b-. cis-. dis-. e-. dis-. e-. fis-. ] g8. [ g,16 g'8. g16 ] | % 9
		g4 ~ 
		g8. [ \times 2/3 { g32  fis e ] }
		fis8. [ \times 2/3 {  b,32  cis dis ] } e8. [ e16 ] | % 10
		e4 ~ 
		e8. [ \times 2/3 {  c32 b a ] } gis8. [ b16 e,8. gis16 ] | % 11
		a4 ~ a16 [ a,32 b cis d e fis ] g8. [ e16 ] cis8. [ a16 ] | % 12
		fis'4 ~ 
		fis8. [ \times 2/3 {  g32 fis e ] } \stemUp 
		d8. [ \times 2/3 { c32 b a ] } 
		g8. [ \times 2/3 { d'32 e fis ] } \stemDown | % 13
		g8. \prallmordent [ g,16  g'8.  g16 ] g4 ~ 
		g8. [ \times 2/3 {  g32 fis e ] } | % 14
		fis16 ~ [ fis32 d e fis g a ] b8. [ g16 ] a4 a, | % 15
	} %end of repeated section

	\alternative {
		{d,4 ~ d16 [ d'32 e fis g a b ] c8. [ a16 fis8. d16 ] | } % 16
		{ \time 3/8 d,4 r8 |} % 16
	} %end alternative

	\repeat volta 2 { % begin repeated section
		r1*3/8 | % 17
		r1*3/8 | % 18
		r1*3/8 | % 19
		r1*3/8 | % 20
		r1*3/8 | % 21
		r1*3/8 | % 22
		s1*3/8 | % 23
		s1*3/8 | % 24
		s1*3/8 | % 25
		s1*3/8 | % 26
		s1*3/8 | % 27
		s1*3/8 | % 28
		s1*3/8 | % 29
		s1*3/8 | % 30
		e'8 r8 r8 | % 31
		s1*3/8 | % 32
		s1*3/8| % 33
		s1*3/8| % 34
		r8 d16 [ c b a ] 
		\stemDown b8 [c d] | % 36
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
		{g,16 [ fis g a b c ] |  d8 [d,] r8 | } % 46-47
		{ \time 4/4 <g b'>1 |} % 46
	} %end alternative
}

bass = << \bassOne \\ \bassTwo>>


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 4/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }

}
