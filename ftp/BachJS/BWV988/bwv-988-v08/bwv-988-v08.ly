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
        piece = "Variatio 8. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 8"
        composer = "Johann Sebastian Bach (85-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz@gmail.com"
	
 footer = "Mutopia-2008/04/26-1408"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

soprano= \relative d' {
    \repeat volta 2 { %begin repeated section
    d16 [ g b a ] g [ b d c ] b [ d g ] r | % 1
    d,16 [ fis a g ] fis [ a c b ] a [ d fis ] r | % 2
    b,,16 [ e g fis ] e [ g b a ] g [ cis e ] r | % 3
    a,,16 [ d fis e ] d [ fis a g ] fis [ a d8 ~ ] | % 4
    d16 [ b g a ] b [ g d e ] f [ d b ] r | % 5
    e'16 [ c a b ] c [ a e fis ] g [ e c ] r | % 6
    a''16 [ fis d e ] fis [ d a b ] c [ a fis c' ] | % 7
    b16 [ g d fis ] g [ d b c ] d [ b g a ] | % 8
    b8 [ b''16 a ] g [ fis e d ] cis [ e d e ] | % 9
    a,8 [ a'16 g ] fis [ e d cis ] b [ d cis d ] | % 10
    g,8 [ g'16 fis ] e [ d cis b ] a [ cis b d ] | % 11
    cis16 [ e a, b ] cis [ a e fis ] g [ e cis e ] | % 12
    d8 [ fis a d ] r16 c16 [ a fis ] | % 13
    g8 [ b d g ] r16 g16 [ fis g ] | % 14
    a,8 [ cis e g ] r16 g16 [ a cis, ] | % 15 
    d16 [ fis a cis ] d [ cis32 b32 a32 g32 fis32 e32 ] d4  | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
     a16 [ d fis e ] d [ fis a g ] fis [ a c ] r | % 17
    d,,16 [ g b a ] g [ b d c ] b [ d f ] r | % 18
    e16 [ c a b ] c [ a fis g ] a [ fis dis e ] \clef "bass" | % 19
    fis16 [ dis b cis ] dis [ b fis g ] a [ fis dis fis ] \clef "treble" | % 20
    g16 [ b e dis ] e [ g b a ] g [ b e ] r16 | % 21
    e,16 [ a c b ] a [ c e d ] c [ e a ] r16 | % 22
    r16 c,16 [ b fis' ] g [ dis e g, ] fis [ e' dis a' ] | % 23
    g16 \prallprall [ fis e8 ] r16 a,16 [ g fis ] \grace fis16 e4 ~ | % 24
    e8 [ e'16 d ] c [ b a g ] fis [ ais cis e ] | % 25
    d16 [ fis, d' c ] b [ a gis fis ] e [ gis b d ] | % 26
    c16 [ e, c' b ] a [ c e d ] c [ e a g ] | % 27
    fis16 [ a c b ] a [ g fis e ] d [ fis a c ] | % 28
    b16 [ d g, a ] b [ g d e ] f [ d b d ] | % 29
    e16 [ g c, d ] e [ c a b ] c [ a e g ] | % 30
    fis16 [ a d, e ] fis [ d \clef "bass" a b ] c [ a fis a ] | % 31
    b16 [ d g, a ] b [ g b d ] g4 | % 32


    } %end repeated section
}



%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
    g8 [ d b g ] r16 g'16 [ fis e ] | % 2
    fis8 [ d a fis ] r16 fis'16 [ e d ]  | % 3
    e8 [ b g e ] r16 e'16 [ d cis ] | % 4
    d8 [ a fis d ] r16 c'16 [ b a ] | % 5
    b8 [ d g b ] r16 g16 [ f g ] | % 6
    c,8 [ e a c ] r16 a16 [ g a ] | % 7
    d,8 [ fis a d ] r16 d,16 [ c d ] | % 8
    g,8 [ g' b, d ] g, r8 \clef "treble" | % 8
    g'16 [ b d c ] b [d g fis ] e [g b ] r16 | % 9
    fis,16 [a cis b ] a [ cis fis e] d [ fis a ]  r16 \clef "bass" | % 10
    e,16 [ g b a ] g [ b e d ] \clef "treble" cis [ e g fis ]  | % 11
    e16 [ g cis b ] a [ cis e d ] cis [ e a g] | % 12
    fis16 [ a d, e ] fis [d a b ] c [ a fis a ] | % 13
    b16 [ d  g, a ] b [ g e fis ] g [ e b d] \clef "bass" | % 14
    cis16 [ e a, b ] cis [a e fis ] g [ e cis e ] | % 15
    fis16 [a d, e ] fis [ d fis a ] d4 | % 16
    
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
     d8 [ a fis d ] r16 c'16 [ b a ] | % 17
    g8 [ d b g ] r16 f'16 [ e d ] | % 18
    c16 [ e a g ] fis [ a c b ] a [ c dis c ] \clef "treble"  | % 19
    b16 [ dis fis e ] dis [ fis a g ] fis [ a c a ] | % 20
    b16 [ g e fis ] g [ e b dis ]e [ b g b ]  \clef "bass" | % 21
    c16 [ a e gis ] a [ e c d ] e [ c a c ] | % 22
    dis,8 [ dis' e c a b ] | % 23
    e,8 [ g b e ] r16 d16 [ c b ] | % 24
    c16 [ e g f ] e [ g c b ] ais [ cis fis ] r16 | % 25
    b,,16 [ d fis e ] d [ fis b a ] gis [ b e ] r16 | % 26
    a,,16 [ c e d ] c [ a c e ] a [ c fis, g ] | % 27
    a16 [ fis d e ] fis [ d a b ] c [ a fis d ] | % 28
    g8 [ b d f ] r16 f16 [ e d ] | % 29
    c8 [ e g c ] r16 c16 [ b c ] | % 30
    d,8 [ fis a c ] \clef "treble" r16 c16 [ d fis, ] | % 31
    g16 [ b d fis ] g [ fis32 e32 d32 c32 b32 a32 ] g4 | % 32
    } %end repeated section
}



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
