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
        piece = "Variatio 28. a 2 Clav"
        mutopiatitle = "Goldberg Variations - 28"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz@gmail.com"
	
 footer = "Mutopia-2008/05/18-1420"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


sopranoOne =   \relative b'' {
    \repeat volta 2 { %begin repeated section
    \stemUp
        b16 r16 r8 d16 r16 r8 g,16 r16 r8 | % 1
        a16 r16 r8 d16 r16 r8 fis,16 r16 r8 | % 2
        g16 r16 r8 b16 r16 r8 a16 r16 r8 | % 3
        fis16 r16 r8 cis'16 r16 r8 d16 r16 r8 | % 4
        g,8 [ g,, ] a [ e'' ] f [ d ] | % 5
        e8 [ a,, ] b [ fis'' ] s8 a8 | % 6
        b8 [ \clef "bass" a,,8 ] b [ e, ] fis r8 | % 7
        r8 \clef "treble" c'''8 b [ a ] g [ fis ] | % 8
        <b, d g b>16 [ g'16 fis g ] 
		\stemDown e [ b a b ] g [ b e g ] | % 9
        a16 [ fis e fis ] d [ a g a ] fis [ a d fis ] | % 10
        g16 [ e dis e ] 
		\stemUp b [ g fis g ] e [ g b d ] | % 11
        cis16 [ g fis g ] e [ cis b cis ] a [ cis e g ] | % 12
        fis16 r16 r8 g16 r16 r8 a16 r16 r8 | % 13
        b16 r16 r8 a16 r16 r8 g16 r16 r8 | % 14
        a16 r16 r8 b16 r16 r8 a16 r16 r8 | % 15
        fis16 [ d cis d ] \clef "bass" a16 [ fis e fis ] d4 \clef "treble" | % 16
    } %end of repeated section
     \repeat volta 2 { %begin repeated section
        fis'16 [ a g a ] 
		\stemDown d [ fis e fis ] a [ fis c a ] | % 17
        b16 [ d c d ] g [ b a b ] d [ b f d ] | % 18
        e8 [ b8 ] 
		\stemUp c8 [ dis,8 ] e8 [ g,8 ] | % 19
        fis8 [ e''8 ] 
		\stemDown dis16 [ fis e fis ] a [ fis dis fis] | % 20
        r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] | % 21
        r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] | % 22
        r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		r32 fis32 [ g fis g fis g fis ] | % 23
		\stemDown
        e16 [ g, fis g ] b [ e dis e ] g32 [  (f e16 ) f32 ( e d16 ) ] 
		\stemUp| % 24
        e8 [ e,8 ] dis8 [ d8 ] cis8 [ e'8 ] | % 25
        d8 [ d,8 ] cis8 [ c8 ] b8 [ d'8 ] | % 26
        r32 c32 [ d c d c d c ] 
		r32 d32 [ c d c d c ] 
		r32 c32 [ d c d c d c ] r32 | % 27
        r32 c32 [ d c d c d c ] 
		r32 c32 [ d c d c d c ] 
		r32 c32 [ d c d c d c ] | % 28
        b16 r16 r8 c16 r16 r8 d16 r16 r8 | % 29
        e,8 [ e'8 ] 
		\stemDown f8 [ fis8 ] g8 [ gis8 ] | % 30
        a16 [ fis, e fis ] 
		\stemUp g [ b a b ] c [ a fis d ] | % 31
        g16 [ b a b ] 
		\stemDown d [ g fis g ] b4 | % 32

    } %end repeated section

 
}

sopranoTwo =   \relative c' {
  \repeat volta 2 { %begin repeated section
  \stemDown
        r32 d'32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] | % 1
        r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] | % 2
        r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 cis32 [ d cis d cis d cis ] | % 3
        r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ]  | % 4
		s1*3/4 | % 5
        c8 s8*3 g'8  [ cis,8 ]  | % 6
		d8 [ \clef "bass"   fis,,8 ]  g8 [cis,] d [d,] | % 7
        g8 [ \clef "treble" e'''8 ] d [ c ] b [ < a c >8] | % 8
        b16 s16 s8 s2 | % 9
		s1*3/4 | % 10
		s1*3/4 | % 11
		s1*3/4 | % 12		
        r32 d,32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] | % 13
        r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] | % 14
        r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 cis32 [ d cis d cis d cis ] | % 15
		s4 \clef "bass" s2 \clef "treble" | % 16 
    } %end of repeated section

	\repeat volta 2 { %begin repeated section
        s1*3/4 | % 17
        s1*3/4 | % 18
        s1*3/4 | % 19
        s1*3/4 | % 20
        b'16 r16 r8 cis16 r16 r8 dis16 r16 r8 | % 21
        e16 r16 r8 dis16 r16 r8 e16 r16 r8 | % 22
        cis16 r16 r8 b16 r16 r8 a16 r16 r8 | % 23
		s1*3/4 | % 24
        s1*3/4 | % 25
        s1*3/4 | % 26
        e16 r16 r8 d16 r16 r8 e16 r16 r8  | % 27
        fis16 r16 r8 e16 r16 r8 fis16 r16 r8 | % 28
        r32 g32 [ a g a g a g ] 
		r32 fis32 [ g fis g fis g fis ] 
		r32 f32 [ g f g f g f ] | % 29
        s1*3/4 | % 30
        s1*3/4 | % 31
        s1*3/4 | % 32


   } %end repeated section

 }

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bassOne = \relative g {
	\repeat volta 2 { %begin repeated section
	\stemDown
        g8 [ b'8 ] a8 [ fis,8 ] e8 [ g'8 ] | % 1
        fis,8 [ a'8 ] g8 [ e,8 ] d8 [ fis'8 ] | % 2
        e,8 [ g'8 ] fis8 [ g,8 ] a8 [ e'8 ] | % 3
        d,8 [ fis'8 ] e8 [ g,8 ] fis8 [ c'8 ] \clef "treble" | % 4
		\stemUp
        r32 g'32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] | % 5
        r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] | % 6
        r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		r32 fis32 [ g fis g fis g fis ] | % 7
        r32 g32 [ a g a g a g ] 
		g32 [ a g a g a g ] 
		r32 g32 [ a g a g a ] s16 | % 8
        g,16 [ b a b ] e [ g fis g ] b [ g e cis ] | % 9
        fis,16 [ a g a ] d [ fis e fis ] a [ fis d b ] | % 10
        e,16 [ g fis g ] b [ e dis e ] g [ e b g ] | % 11
        a16 [ e' d e ] g [ a g a ] g [ e cis a ] \clef "bass" | % 12
        r32 fis32 [ g fis g fis g fis ] 
		r32 fis32 [ g fis g fis g fis ] 
		r32 fis32 [ g fis g fis g ] r32 | % 13
        r32 fis32 [ g fis g fis g fis ] 
		r32 fis32 [ g fis g fis g fis ] 
		r32 fis32 [ g fis g fis g fis ] | % 14
        r32 fis32 [ g fis g fis g fis ] 
		r32 fis32 [ g fis g fis g fis ] 
		r32 e32 [ fis e fis e fis e ] | % 15
        d,16 [ fis e fis ] a [ d cis d ] fis4 | % 16

    } %end of repeated section
  	    \repeat volta 2 { %begin repeated section
        d'8 [ e,8 ] fis8 [ c'8 ] d,8 [ \clef "treble" fis'8 ] | % 17
        g8 [ a,8 ] b8 [ f'8 ] g,8 [ d''8 ] | % 18
        c16 [ g f g ] e [ c b c ] a [ c e a ]  | % 19
        dis,16 [b ais b ] \clef "bass" fis16 [ dis cis dis ] b [ dis fis a ] \clef "treble" | % 20
        r32 e'32 [ fis e fis e fis e ] 
		r32 e32 [ fis e fis e fis e ] 
		e32 [ fis e fis e fis ] s16 | % 21
        r32 e32 [ fis e fis e fis e ] 
		r32 e32 [ fis e fis e fis e ] 
		r32 e32 [ fis e fis e fis e ] | % 22
        r32 e32 [ fis e fis e fis e ] 
		r32 e32 [ fis e fis e fis e ] 
		r32 dis32 [ e dis e dis e dis ] | % 23
        e,16 [ e' dis e ] b [ g fis g ] e [ g b d ] | % 24
        r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g ] r16 | % 25
        r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		g32 [ a g a g a ] s16 | % 26
        a,8 [ e''8 ] 
		\stemDown f8 [ fis8 ] g8 [  \clef "bass" fis,,8 ]| % 27
        d8 [ \clef "treble" fis''8 ] g8 [ gis8 ] a8 [ \clef "bass" d,,8 ] 
		\stemUp | % 28
        g,8 [ g,8 ] as8 [ a8 ] bes8 [ b8 ] | % 29
        r32 c'32 [ d c d c d c ] 
		r32 b32 [ c b c b c b ] 
		r32 bes32 [ c bes c bes c bes ] | % 30
		\stemDown 
        fis16 [ d' c d ] b [ g fis g ] d [ fis a c ] | % 31
        b16 [ g fis g ] 
		\stemUp d [ b a b ] g4 | % 32
    } %end repeated section


}

bassTwo = \relative c' {
    \repeat volta 2 { %begin repeated section
	\stemDown	    
		s1*3/4 | % 1
		s1*3/4 | % 2
		s1*3/4 | % 3
        s1*3/4 \clef "treble" | % 4
        b16 r16 r8 c16 r16 r8 d16 r16 r8 | % 5
        c16 r16 r8 d16 r16 r8 e16 r16 r8 | % 6
        d16 r16 r8 e16 r16 r8 a,16 r16 r8 | % 7
        b16 r16 r8 c16 r16 r8 d16 r16 r8 | % 8
		s1*3/4 | % 9
		s1*3/4 | % 10
		s1*3/4 | % 11
		s1*3/4 \clef "bass" | % 12
        d,16 r16 r8 b16 r16 r8 a16 r16 r8 | % 13
        g16 r16 r8 a16 r16 r8 b16 r16 r8 | % 14
        a16 r16 r8 g16 r16 r8 a16 r16 r8 | % 15
		s1*3/4 | % 16
    } %end of repeated section
  
 	   \repeat volta 2 { %begin repeated section
		s1*3/4 | % 17
        s1*3/4 | % 18
        s1*3/4 | % 19
        s1*3/4  \clef "treble" | % 20
        g'16 r16 r8 a16 r16 r8 b16 r16 r8 | % 21
        c16 r16 r8 b16 r16 r8 c16 r16 r8 | % 22
        ais16 r16 r8 b16 r16 r8 b16 r16 r8 | % 23
		s1*3/4 | % 24
        c16 r16 r8 b16 r16 r8 a16 r16 r8 | % 25
        b16 r16 r8 a16 r16 r8 g16 r16 r8 | % 26
		s1*3/4 | % 27
        s1*3/4 | % 28
        s1*3/4 | % 29
        c,16 r16 r8 d16 r16 r8 e16 r16 r8 | % 30
		s1*3/4 | % 31
		s1*3/4 | % 32
 
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
