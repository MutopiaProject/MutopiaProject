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
        piece = "Variatio 23. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 23"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/05/18-1418"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


sopranoOne =   \relative g' {
    \repeat volta 2 { %begin repeated section
    \stemUp
     	r8 g8 b'16 [ a g fis ] e [ d cis b ] | % 1
		a16 [ g fis8 ] a'16 [ g fis e ] d [ cis b a ] | % 2
		g16 [ fis e8 ] g'16 [ fis e d ] cis [ b a g ] | % 3
		fis16 [ e d8 ] r8 r16 e32 [ fis32 ] g [ a b cis d8 ~ ] | % 4
		d8 [ b,16 c ] d [ e fis g ] a [ b c d ] | % 5
		e8 [ c,16 d ] e [ fis g a ] b [ c d e ] | % 6
		fis8 [ d,16 e ] fis [ g a b ] c [ d e fis ] | % 7
		g8 r8 r16 fis32 [ e d c b a ] g16 r16 r8 | % 8
		r16 b'16 [ b ] r16 r32 g32 [ fis e d16 ] r16 r32 c32 [ b a g16 ] r16 | % 9
		r16 a'16 [ a ] r16 r32 d,32 [ cis b a16 ] r16 r32 g32 [ fis e d16 ] r16 | % 10
		r16 g'16 [ g ] r16 r32 c,32 [ b a g16 ] r16 r32 a32 [ g fis e16 ] r16 | % 11
		r16 g'16 [ g ] r16 r32 fis,32 [ e d cis16 ] r16 r32 d32 [ cis b a16 ] r16 | % 12
		r16 a'16 [ a' g ] fis [ e d c ] b [ a g fis ] | % 13
		b16 [ g fis e ] d [ c b a ] g [ b e d ] | % 14
		cis16 [ b a b ] cis [ d e fis ] g [ a b cis ] | % 15
		d16 [ cis32 b a g fis e ] d8 r8 r4 | % 16
	} %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		a''8 \prallmordent  r16 g16 \grace g16 fis8  r16 e16 \grace e16 d8 r16 c16  | % 17
		b8 \prallprall r16 a16 \grace a16 g8 r16 fis16 \grace fis16 e8 \clef "bass" r16 d16 | % 18
		c8 r16  b16 \grace b16 a8 r16 g16 \grace g16 fis8 r16 e16 | % 19
		\grace e16 dis8 r16 fis16 a8 r16 c16 b8 \prallprall r16 a16 | % 20
		g8 r8 \clef "treble" r16 dis''16 [ e fis ] g [ gis a b ] | % 21
		c16 [ a g f ] e [ d c b ] a [ g fis e ] | % 22
		dis16 [ \grace d'16 c b8 ] r32 b32 [ cis dis e fis g16 ~ ] g [ fis e \prallprall dis ] | % 23
		e32 [ c b a b ] r32 r16 r32 fis32 [ e dis e ] s4 s16 s32 | % 24
		r16 e16 [ f g ] a [ b c d ] e8 r8 | % 25
		r16 d16 [ c b ] a [ g fis e ] d8 r8 \clef "bass" | % 26
		r16 d16 r16 b16 r16 d16 r16 b16 r16 b16 r16 g16 | % 27
		r16 g16  r16 e16  r16 g16  r16 e16  r16 e16  r16 c16  | % 28
		r16 c16 r16 a16 r16 c16 r16 e16 r16 g16 r16 b16 | % 29
		r16 d16 r16 b16 r16 d16 r16 \clef "treble" fis16 r16 a16 r16 c16 | % 30
		r16 cis16 [ d e ] fis [ g a b ] c8 r8 | % 31
		r16 b16 [ a g ] fis [ e d c ] b8 r8  | % 32
    } %end repeated section
}

sopranoTwo =   \relative b' {
  \repeat volta 2 { %begin repeated section
	  \stemDown
	  s1*3/4 | % 1
	  s1*3/4 | % 2
	  s1*3/4 | % 3
	  s1*3/4 | % 4
	  s1*3/4 | % 5
	  s1*3/4 | % 6
	  s1*3/4 | % 7
	  s1*3/4 | % 8
	  r16 d16 [ d ] r16 s1*2/4 | % 9
	  r16 d16 [ d ] r16 s1*2/4 | % 10
	  r16 b16 [ b ] r16 s1*2/4 | % 11
	  r16 a16 [ a ] r16 s1*2/4 | % 12
	  s1*3/4 | % 13
	  s1*3/4 | % 14
	  s1*3/4 | % 15
	  s1*3/4 | % 16

    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		s1*3/4 | % 17
		s1*3/4 | % 18
		s1*3/4 | % 19
		s1*3/4 | % 20
		s1*3/4 | % 21
		s1*3/4 | % 22
		s1*3/4 | % 23
		s8 s32 a32 [ g fis g ] s4 s8 s16 s32 | % 24
		r16 c,16 [ d e ] f [ g a b ] c8 r8 | % 25
		r16 b16 [ a g ] fis [ e d c ] b8 r8 \clef "bass" | % 26
		r16 b16  r16 gis16 r16 b16 r16 g16 r16 g16 r16 e16 | % 27
		r16 e16 r16 cis16 r16 e16 r16 c16 r16 c16 r16 a16 | % 28
		r16 a16 r16 fis16 r16 a16 r16 c16 r16 e16 r16 g16 | %29
		r16 f16 r16 d16 r16 f16 r16 \clef "treble" a16 r16 c16 r16 e16 | % 30
		r16 a16 [ b cis ] d [ e fis g ] a8 r8 | % 31
		r16 d,16 [ c b ] a [ g fis e ] d8 r8 | % 32 

    } %end repeated section
}

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bassOne = \relative g' {
	\repeat volta 2 { %begin repeated section
		\stemUp
		\clef "treble" g8 [ b'16 a ] g [ fis e d ] cis [ b a g ] | % 1
		fis8 [ a'16 g ] fis [ e d cis ] b [ a g fis ] | % 2
		e8 [ g'16 fis ] e [ d cis b ] a [ g fis e ] | % 3
		d8 \clef "bass" r16 c32 [ b ] a [ g fis e d8 ] r8 r16 c16 | % 4
		b8 r8 \clef "treble" b'16 [ c d e ] fis [ g a b ] | % 5
		c16 [ d e8 ] c,16 [ d e fis ] g [ a b c ] | % 6
		d16 [ e fis8 ] d,16 [ e fis g ] a [ b c a ] | % 7
		b32 [ g a b c d e fis ] g16 r16 r8 r16 fis,32 [ e d c b a ] | % 8
		g8 r16 a16 b8 \prallmordent r16 c16 d8 \prallmordent r16 e16 | % 9
		fis8 \prallmordent r16 g16 a8 \prallmordent r16 b16 cis8 \prallmordent r16 d16 | % 10
		e8 \prallmordent r16 fis16  g8 \prallmordent  r16 a16  b8 r16 d,16 | % 11
		cis8 r16 e16 g,8 r16 b16 a8 \prallmordent r16 g16 | % 12
		fis8 r16 a,16 a' [ g fis e ] d [ c b a ] | % 13
		g16 [ b d c ] b [ a g fis ]  \clef "bass" e [ d cis b ] | % 14
		a16 [ e' g fis ] e [ d cis b ] a [ g fis e ] | % 15
		d4 ~ d16 [ e32 fis g a b cis ] d8 r8 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		r16 d16 [ d ] r16 s1*2/4 | % 17
		r16 g16 [ g ] r16 s1*2/4 | % 18
		r16 a'16 [ a ] r16 s1*2/4  | % 19
		r16 c'16 [ c ] r16 s1*2/4 | % 20
		r16 e,16 [ d c ] b [ a g fis ] e [ d c b ] | % 21
		a8 r8 r16 gis16 [ a b ] c [ cis dis e ] | % 22
		fis8 \clef "bass" r16 a,16 g8 [ c8 ] a8 [ b8 ] | % 23
		e,8 r32 s4 c'32 [ b a ] b  r32 r16 r32 f32 [ e d ] | % 24
		c8 r8 r16 d'16 [ c b ] a [ g  fis  e ]  | % 25
		d8 r8 r16 c16 [ d e ] fis [ g a b ] | % 26
		c8 [ c c c a a ] | % 27
		fis8 [ fis fis fis d d ] | % 28
		b8 [ b b d f a ] | % 29
		c8 [ c c \clef "treble" e g b ] | % 30
		d16 r16 r8 \clef "bass" r16 e,16 [ d c ] b [ a g fis ] | % 31
		g16 [ b, c d ] e [ fis g a ] b8 r8 | % 32
  
    } %end repeated section
}

bassTwo = \relative d, {
    \repeat volta 2 { %begin repeated section
		\stemDown
		s1*3/4 | % 1
		s1*3/4 | % 2
		s1*3/4 | % 3
		s1*3/4 | % 4
		s1*3/4 | % 5
		s1*3/4 | % 6
		s1*3/4 | % 7
		s1*3/4 | % 8
		s1*3/4 | % 9
		s1*3/4 | % 10
		s1*3/4 | % 11
		s1*3/4 | % 12
		s1*3/4 | % 13
		s1*3/4 | % 14
		s1*3/4 | % 15
		s1*3/4 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		r16 d16 [ d ] r16 r32 e'32 [ fis g a16 ] r16 r32 a32 [ b c32 d16 ] r16 | % 17
		r16 g,,16 [ g ] r16 r32 \clef "treble" d''32 [ e fis g16 ] r16 r32 fis32 [ g a b16 ] r16 | % 18
		r16 e,16 [ e ] r16 r32 b'32 [ c d e16 ] r16 r32 e32 [ fis g a16 ] r16 | % 19
		r16 a16 [ a ] r16 r32 b32 [ a g fis16 ] r16 r32 g32 [ fis e dis16 ] r16 | % 20
		s1*3/4 | % 21
		s1*3/4 | % 22
		s1*3/4 | % 23
		s2 s32 a,32 [ g fis g ]  s16 s32 | % 24
		r8 r8 r16 b16 [ a  g ] fis [ e  d  c ] | % 25
		b8 r8 r16 a16 [ b c ] d [ e fis g ] | % 26
		a8 [ a a a fis fis ] | % 27
		d8 [ d d d b b ] | % 28
		g8 [ g g b d f ] | % 29
		e8 [ e e g b d ] | % 30
		fis16 r16 r8 \clef "bass" r16 g,16 [ fis e ] d [ c b a ] | % 31
		g8 [ a16 b ] c [ d e fis ] g8 r8 | % 32

    } %end repeated section
}

bass = << \bassOne \\ \bassTwo>>

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }

}
