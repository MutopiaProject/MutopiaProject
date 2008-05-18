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
        piece = "Variatio 19. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 19"
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
	
 footer = "Mutopia-2008/05/18-1415"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


sopranoOne =   \relative d'' {
    \repeat volta 2 { %begin repeated section
    \stemUp
		d8 d4 ~ | % 1
        d8 d4 ~ | % 2
        d8 [ d cis ] | % 3
        d4 r8 | % 4
        g16 [ fis g d b d ] | % 5
        e16 [ d e c a c ] | % 6
        d16 [ c d e d c ] | % 7
        b16 [ a b c b a ] | % 8
        g8 g'4 ~ | % 9
        g8 fis4 ( | % 10
        fis8 ) [ e d ] | % 11
        cis16 [ d ] e4 ~ | % 12
        e8 d c | % 13
        c8 [ b g' ~ ] | % 14
        g16 [ e fis d e cis ] | % 15
        d4. | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        fis16 [ e16 fis d a d ] | % 17
        g16 [ fis g d b d ] | % 18
        e16 [ dis e g fis e ] | % 19
        dis16 [ e fis dis b dis ] | % 20
        e8  e4 ~ | % 21
        e8 e4 ~ | % 22
        e8 [ e dis ] | % 23
        e4 r8 | % 24
        r8 e16 [ c a c ] | % 25
        d4. ~ | % 26
        d8 [ c16 b c8 ~ ] | % 27
        c8 [ d16 c b a ] | % 28
        d16 [ c d b g b ] | % 29
        e16 [ d e c a c ] | % 30
        fis16 [ e fis a d, fis ] | % 31
        g16 [ fis g d b g ] | % 32

    } %end repeated section
}

sopranoTwo =   \relative b' {
  \repeat volta 2 { %begin repeated section
  \stemDown
        b16 [ a b g d g ] | % 1
        a16 [ g a fis d fis ] | % 2
        g16 [ fis g b a g ] | % 3
        fis16 [ e fis g a fis ] | % 4
        g8  g4 ~ | % 5
        g8 g4 ~ | % 6
        g8 [ g fis ] | % 7
        g4 r8 | % 8
        r8 r8 d'8 | % 9
        cis4 c8 | % 10
        b8 [ e, gis ] | % 11
        a4 g8 | % 12
        fis4 a8 | % 13
        d,8 [ g b ] | % 14
        cis8 [ a g ~ ] | % 15
        g8 fis4  | % 16 
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d8 d4 | % 17
        d8 b g' ~ | % 18
        g8 [ g c ] | % 19
        fis,8 r8 r8 | % 20
        b16  [ a b g e g ] | % 21
        c16 [ b c a fis a ] | % 22
        b16 [ a b c b a ] | % 23
        g16 [ fis g a b g ] | % 24
        e4 r8 | % 25
        r8 d16 [ g b g ] | % 26
        e4. | % 27
        d8 r8 r8 | % 28
        g,8  g4 ~ | % 29
        g8 [ c, c' ~ ] | % 30
        c8 [ a c ~ ] | % 31
        c8 b4 | % 32
    } %end repeated section
}

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
       g8  [ g, g' ] | % 1
        fis8 [ fis, fis' ] | % 2
        e8 [ e, e' ] | % 3
        d8 [ d, c' ] | % 4
        b8 [ b' g ] | % 5
        c8 [ c, c' ] | % 6
        b16 [ a b c d8 ] | % 7
        g,8 [ g,16 d' g a ] | % 8
        b16 [ a b g e g ] | % 9
        a16 [ g a fis d fis ] | % 10
        g16 [ fis g e b e ] | % 11
        g16 [ fis g e cis e ] | % 12
        a16 [ g a fis d fis ] | % 13
        b16 [ a b g e g ] | % 14
        a8 [ a, a' ] | % 15
        d16 [ cis d a fis d16 ] | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d'8  d, c' | % 17
        b8 g b | % 18
        c8 [ b a ] | % 19
        b8 [ a16 g a fis ] | % 20
        g8 [ e g ] | % 21
        a8 [ a, a' ] | % 22
        g16 [ fis g a b8 ] | % 23
        e,8 [ e' d ] | % 24
        c16 [ b c a fis a ] | % 25
        b16 [ a b g e g ] | % 26
        a16 [ g a c e, g ] | % 27
        fis16 [ e fis a d, fis ] | % 28
        b,8 [ g b ] | %29
        c8 [ a c ] | % 30
        d8 [ c d ] | % 31
        g4. | % 32
    } %end repeated section
}

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 3/8 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 3/8 \bass }
    >>
    \layout{  }
    \midi { }

}
