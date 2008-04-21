\version "2.10.33"

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
        piece = "Variatio 12. Canone alla Quarta"
        mutopiatitle = "Goldberg Variations - 12"
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
	
 footer = "Mutopia-2008/04/21-1388"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

soprano =   \relative g' {
    \repeat volta 2 { %begin repeated section
        r8 g16 [ fis ] g8 [ a16 b ] c16 [ b a g ] | % 1
        d'16 [ a b cis ] d [ e fis g ] a8 r8 | % 2
        r8 g16 [ fis ] e16 [ d cis b ] a16 [ g fis g ] | % 3
        g8 [ fis16 \prall e ] d8 r8 r4 | % 4
        r16 d'8. ~ d16  [ b a g ] f16 [ e d f ] | % 5
        e16 [ g16 c16 d16 ] e8 a,4 a8 ~ | % 6
        a16 [ b fis g ] a [ g fis e' ] d [ c b a ] | % 7
        g4 r4 r4 | % 8
        r16 fis16 [ g a ] b [ cis d fis ] e [ d cis b ] | % 9
        a16 [ g fis e ] d8 r8 r4 | % 10
        r8 cis'8 ~ cis16 [ b a b ] cis [ d e fis ] | % 11
        g8 [ g,16 fis ] g4 ~ g16 [ b a g ] | % 12
        fis16 [ e fis g ] fis [ a g fis ] e4 ~ | % 13
        e8 [ d' cis b ] a [ fis' ] | % 14
        g,4. fis8 e16 [ a g8 ~ ] | % 15
        g8 [ fis16 e ] fis [ d'8 cis16 ] d8 r8 | % 16	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        R1*3/4 | % 17
        r8 g,16 [ fis ] g8 [ a16 b ] c [ b a g ] | % 18
        g'4 ~ g16 [ fis a g ] fis [ g e8 ] | % 19
        \grace e16 fis8 ~ [ fis32 eis32 fis g ] fis8 [ a, ] r8 fis'8 | % 20
        g16 [ fis g a ] g [ fis e d ] c [ b a g ] | % 21
        fis2. ~ | % 22
        fis8 [ fis16 g16 ] fis8 [ fis8 ] fis8 ~ [ g16 a16 ] | % 23
        g4 a'4 \rest e,4 ( | % 24
        e16 ) [ fis16 g16 e16 ] fis16 [ g16 gis16 a16 ] b16 [ c16 d16 e16] | % 25
        d8 a'8 \rest a4 \rest a4 \rest | % 26
        a16 \rest c,,16 [ d16 e16 ] d16 [ es16 fis16 g16 ] fis16 [ g16 a16  b16 ] | % 27
        a2. ~ | % 28
        a8 [ d,  e  fis ] g16 [ b a c ] | % 29
        b8 [ a b c ] d8. ^\prallmordent [ e16 ] | % 30
        d4 ~ d16 [ b c d ] e [ fis g a ] | % 31
        b16 [ g d b ] g8 r8 r4  | % 32
    } %end repeated section
}


%%
%% Bass Clef
%% 

bassOne =   \relative fis' {
    \repeat volta 2 { %begin repeated section
    \stemUp
        R1*3/4 | % 1
        r8 d16 [ e ] d8 [ c16 b ] a [ b c d ] | % 2
        g,16 [ c b a ] g [ fis e d ] cis8 r8 | % 3
        r8 d16 [ e ] fis [ g a b ] c [ d e d ] | % 4
        d8 [ e16 fis ] g8 r8 r4 | % 5
        r16 g,8. ~ g16 [ b c d ] e [ fis g e ] | % 6
        fis16 [ d a g ] fis8 c'4  c8 ~ | % 7
        c16 [ b e d ] c [ d e fis, ] g [ a b c ] | % 8
        d4 r4 r4 | % 9
        r16 e16 [ d cis ] b [ a g e ] fis [ g a b ] | % 10
        cis16 [ d e fis ] g8 r8 r4 | % 11
        r8 a,8 ~ a16 [ b cis b ] a [ g fis e ] | % 12
        d8 [ d'16 e ] d4 ~ d16 [ b cis d ] | % 13
        e16 [ fis e d ] e [ cis d e ] fis4 ~ | % 14
        fis8 [ g, a b ] cis [ e, ] | % 15
        d'4. e8 fis16 [ cis d8 ] % 16
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        r8 d16 [ e ] d8 [ c16 b ] a [ b c d ] | % 17
        d,4 ~ d16 [ e c d ] e [ d f8 ] | % 18
        \grace fis16 e8 ~ [ e32 f e dis ] e8 [ c' ] r8 e,8 | % 19
        dis16 [ e dis cis ] dis [ e fis g ] a [ b cis dis ] | % 20
        e2. ~ | % 21
		e8 [ e16 dis ] e8 [ e ] e [ d16 cis ] | % 22
		dis4 r4 fis4 ~ | % 23 
		fis16 [ e dis fis ] e [ d  cis c ] b [ a  g fis ] % 24
        g8 r8 r4 r4 | % 25
		r16 a'16 [ gis fis ] gis [ f e d ] e [ d c b ] | % 26
        c2. ~  | % 27
        c8 [ g' ] fis [ e ] d16 [ b c a ] | % 28
        b8 [ c b a ] g8. ^\prallprall [ fis16 ] | % 29
        g4 ~ g16 [ b a g ] fis [ e d c ] | % 30
        b16 [ d g b ] d8 [ g, ~ ] g16 [ a fis8 ] | % 31
        g4 r4 r4 | % 32
    } %end repeated section
}

bassTwo =   \relative g {
    \repeat volta 2 { %begin repeated section
    \stemDown
        g4 g g | % 1
        fis fis fis | % 2
        e e e | % 3
        d16 [ d, d'8 ] r8 c16 [ b a8 c ] | % 4
        b4 b b | % 5
        c c c | % 6
        d d d | % 7
        g8. [ b,16 ] e [ d c e ] d [ c b a ] | % 8
        b8 [ g ] r8 g'16 [ fis ] g8 [ e ] | % 9
        fis8 [ b ] r8 b,16 [ cis d8 b ]  | % 10
        e16 [ fis g fis ] e8 [ fis  e  d ] | % 11
        cis16 [ d e d ] cis8 [ e ] cis [ a ] | % 12
        d4 r16 d16 [ e fis ] g [ a g fis ] | % 13
        g8 [ g, ] r16 e'16 [ fis g ] a [ fis e d ] | % 14
        b'16 [ b, e d ] cis [ a d g ] a [ e cis a] | % 15
        d16 [ e d cis ] d8 [ a ] d, r8 | % 16
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d'4 d c | % 17
        b8 [ c b a ] g [ a16 b16 ] | % 18
        c8 [ b ] c [ e ] a, [ c ] | % 19
        b4 r4 r4 | % 20
        r8 e8 [ fis g a b ]  | % 21
		c16 [ d c b ] c [ b a g ] a [ fis g a ] | % 22
        b16 [ c b a ] b [ fis dis fis ] b,16 [ dis cis  b ] | % 23
		e16 [ c b a ] g [ b e dis ] e8 [ d ] | % 24
		c8 [ c' ] r16 e,16 [ d c ] d [ c b a ] | % 25
		b8 [ b' ] r16 d,16 [ c b ] c [ b a gis ] | % 26
        a8 [ a' ] r16 b16 [ a g ] a [ g fis e ] | % 27
        fis16 [ e d cis ] d [ c b a ] b [ a g fis ] % 28
		g16 [ a' g fis ] g [ fis e dis ] e4 ~ | % 29
        e16 [ d c e ] d4. a8 | % 30
        b8 r8 r8 e8 [ c d ] | % 31
        g,4 ~ g16 [ b d fis ] g4 | % 32
    } %end repeated section
}


bass = << \bassOne \\ \bassTwo>>


%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key g \major \time 3/4 \soprano  }
        \context Staff = "lower"  { \clef "bass" \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }

}
