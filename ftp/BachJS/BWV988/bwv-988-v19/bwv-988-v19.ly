\version "2.18.2"

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%#(set-default-paper-size "letter")

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
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        license = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2014/03/28-1415"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-----------------------definitions
global = { \key g \major \time 3/8 }
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

adjTieDown = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieUp = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieOne = \shape #'(
                       ((0 . -1.0) (0 . -1.2) (0 . -1.2) (0 . -1.0))
                       ((0 . -1.0) (0 . -1.2) (0 . -1.2) (0 . -1.0))
                       ) Tie
adjTieTwo = \shape #'(
                        ((0 . 0.4) (0 . 0.6) (0 . 0.6) (0 . 0.4))
                        ((0 . 0.4) (0 . 0.6) (0 . 0.6) (0 . 0.4))
                        ) Tie
adjTieTre = \shape #'(
                        ((0 . 1.0) (0 . 1.3) (0 . 1.3) (0 . 1.0))
                        ((0 . 1.0) (0 . 1.3) (0 . 1.3) (0 . 1.0))
                        ) Tie
adjTieQtr = \shape #'((0 . 0.2) (1.0 . 0.5) (-1.0 . 0.5) (0 . 0.2)) Tie

adjBeamOne = \once \override Beam.positions = #'( 5.5 . 4.6 )
adjBeamTwo = \once \override Beam.positions = #'( 4.8 . 3.9 )
adjBeamTre = \once \override Beam.positions = #'( 4.1 . 4.0 )
adjBeamQtr = \once \override Beam.positions = #'( 3.6 . 3.6 )
adjBeamCin = \once \override Beam.positions = #'( 0.3 . 0.3 )
adjBeamSix = \once \override Beam.positions = #'( 5.2 . 4.3 )
adjBeamSev = \once \override Beam.damping = #+inf.0
adjBeamOct = \once \override Beam.positions = #'( 4.6 . 4.5 )


sopranoOne =   \relative d'' {
    \repeat volta 2 { %begin repeated section
    \stemUp
	d8 \adjTieUp d4 ~ | % 1
        d8 \adjTieUp d4 ~ | % 2
        d8 [ d cis ] | % 3
        d4 r8 | % 4
        \adjBeamOne g16 [ fis g d b d ] | % 5
        \adjBeamTwo e16 [ d e c a c ] | % 6
        \adjBeamTre d16 [ c d e d c ] | % 7
        \adjBeamQtr b16 [ a b c b a ] | % 8
        g8 g'4 ~ | % 9
        g8 fis4 ~ | % 10
        fis8  [ e d ] | % 11
        cis16 [ d ] \adjTieUp e4 ~ | % 12
        e8 d c! ~ | % 13
        c8 [ b g' ~ ] | % 14
        \adjBeamSix g16 [ e fis d e cis! ] | % 15
        d4. | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        \adjBeamOne fis16 [ e16 fis d a d ] | % 17
        \adjBeamOne g16 [ fis g d b d ] | % 18
        e16 [ dis e g fis e ] | % 19
        \adjBeamOct dis16 [ e fis dis b dis ] | % 20
        e8 \adjTieTwo e4 ~ | % 21
        e8 \adjTieUp e4 ~ | % 22
        e8 [ e dis ] | % 23
        e4 f8\rest | % 24
        r8 e16 [ c a c ] | % 25
        \adjTieQtr d4. ~ \noBreak | % 26
        d8 [ c16 b \adjTieTre c8 ~ ] | % 27
        c8 [ d16 c b a ] | % 28
        \stemDown d16 [ c d b g b ] | % 29
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
        g8  \adjTieOne g4 ~ | % 5
        g8 \adjTieOne g4 ~ | % 6
        g8 [ g fis ] | % 7
        g4 e8\rest | % 8
        c8\rest r8 d'8 | % 9
        cis4 c8 | % 10
        b8 [ e, gis ] | % 11
        a4 g!8 | % 12
        fis4 a8 | % 13
        d,8 [ g b ] | % 14
        cis8 [ a \adjTieDown g ~ ] | % 15
        g8 fis4  | % 16 
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        \staffDown \stemUp d8 d4^~ | % 17
        \adjBeamSev d8 b \staffUp \stemDown \adjTieOne g' ~ | % 18
        g8 [ g c ] | % 19
        fis,8 r8 e8\rest | % 20
        b'16  [ a b g e g ] | % 21
        c16 [ b c a fis a ] | % 22
        b16 [ a b c b a ] | % 23
        g16 [ fis g a b g ] | % 24
        e4 r8 | % 25
        r8 d16 [ g b g ] | % 26
        e4. | % 27
        d8 r8 e8\rest | % 28
        \stemUp \staffDown g,8 \adjTieUp g4^~ | % 29
        g8 [ c, c'^~ ] | % 30
        c8 [ a c^~ ] | % 31
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
        \adjBeamCin a8 [ \stemUp a, \stemNeutral a' ] | % 15
        d16 [ cis d a fis d16 ] | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d'8  d, c' | % 17
        b8 g b | % 18
        c8 [ b a ] | % 19
        b8 [ a16 g a fis ] | % 20
        g8 [ e g ] | % 21
        \adjBeamCin a8 [ \stemUp a, \stemNeutral a' ] | % 22
        g16 [ fis g a b8 ] | % 23
        e,8 [ e' d ] | % 24
        c16 [ b c a fis a ] | % 25
        b16 [ a b g e g ] | % 26
        a16 [ g a c e, g ] | % 27
        fis16 [ e fis a d, fis ] | % 28
        b,8_[ g b ] | %29
        c8_[ a c ] | % 30
        d8_[ c d ] | % 31
        g4. | % 32
    } %end repeated section
}

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \global \soprano  }
        \new Staff = "lower" { \clef bass \global \bass }
    >>
    \layout{  }
    \midi { \tempo 8 = 138 }

}
