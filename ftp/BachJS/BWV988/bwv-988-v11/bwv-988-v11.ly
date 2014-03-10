\version "2.18.0"

%#(set-default-paper-size "letter")

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

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 11. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 11"
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
	
 footer = "Mutopia-2014/03/10-1409"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-------------------definitions
padFerm = \override Voice.Script.padding = #1
adjBeamOne = \once \override Beam.positions = #'( 0.3 . 3.2 )
adjBeamTwo = \once \override Beam.positions = #'( -1.8 . -0.2 )
adjBeamTre = \once \override Beam.positions = #'( -3.9 . -2.3 )
adjBeamQtr = \once \override Beam.positions = #'( -1.6 . -0.2 )
adjBeamCin = \once \override Beam.positions = #'( 3.7 . 1.6 )
adjBeamSix = \once \override Beam.positions = #'( 2.7 . 1.7 )
adjBeamSev = \once \override Beam.positions = #'( 1.4 . 0.3 )
adjBeamOct = \once \override Beam.positions = #'( 2.1 . 1.0 )
adjBeamNov = \once \override Beam.positions = #'( 0.5 . -0.3 )
adjBeamTen = \once \override Beam.positions = #'( 1.3 . 1.3 )
adjTieOne = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieTwo = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieTre = \shape #'((0.1 . -0.6) (0 . -1.0) (0 . -1.0) (0.1 . -0.6)) Tie
adjTieQtr = \shape #'((0.1 . 0.6) (0 . 1.0) (0 . 1.0) (0.1 . 0.6)) Tie

soprano =   \relative b' {
    \repeat volta 2 { %begin repeated section

        b16 [ a g ] fis [ e d ] cis8. ~ [ cis8 e16 ] | % 1
        a16 [ g fis ] e [ d cis ] \adjBeamOne b8. ~ [ b8 a'16 ] | % 2
        g16 [ fis e ] d [ cis b ] a8 [ cis16] e8[ g16 ] | % 3
        fis16 [ e d ] cis [ b a ]  \clef "bass" g [ fis e ] d [ e c! ] | % 4
        b16 [ d g ] \adjBeamTwo b [ d g ] d [ b g ] f [ e d ] | % 5
        \adjBeamTre cis16 [ e g ] \adjBeamQtr bes [ e g ] e [ bes a ] g [ fis e ] | % 6
        d16 [ g b ]  d_[  \clef "treble" g b ] a [ fis d ] c [ b a ] | % 7
        g16 [ b d ] g [ b d ] g8 [ d16 ] b8 [ fis16 ] | % 8
        \adjTieTwo g8. ~ [ g8 b16 ] e [ d cis ] b [ a g ] | % 9
        \adjTieTwo fis8. ~ [ fis8 e'16 ] d [ cis b ] a [ g fis ] | % 10
        \adjTieTwo e8. ~ e16 [ fis g ] cis, [ b' a ] g [ a b ] | % 11
        e,16_[ d' cis ] b [ cis d ] cis [ e fis ] g [ fis e ] | % 12
        \adjTieOne d4. ~ \downprall d8_[ fis,16 ] a8 [ d16 ] | % 13
        \adjTieOne d4. ~ \upprall d8 [ gis,16 ] b8 [ d16 ] | % 14
        \adjTieOne d4. ~ \upprall d16 [ e g ] cis, [ e g ] | % 15
        fis8. ~ fis16 [ d a ] fis [ d fis ] a [ cis d] | % 16
		
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		r4. a'16 [ g fis ] e [ d c ] | % 17
        b16 [ a g ] r8. d''16 [ c b ] a [ g f ] | % 18
        e16 [ d c ] b [ a g ] fis8_[ dis'16 ] e8 [ ais,16 ] | % 19
        b8 [ dis,16 ] fis8 [ a16 ] c^[ b a ] g [ a fis ] | % 20
        e16 [ g b ] e [ g b ] g [ e b ] g [ fis e ] | % 21
        f16 [ a c ] f [ a c ] a [ f c ] a [ g fis ] | % 22
        g16 [ b e ] g [ e c' ] b [ a g ] fis [ e dis ] | % 23
        e16 [ g e ] b [ g fis ] g [ e g ] b [ e dis ] | % 24
        e16 [ d c ] b [ a g ] \adjTieTwo fis8. ~ [ fis8 a16 ] | % 25
        d16 [ c b ] a [ g fis ] \adjTieTwo e8. ~ [ e8 d'16 ] | % 26
        c16 [ b a ] g [ fis e ] fis [ e d ] cis [ d e ] | % 27
        fis16 [ e d ] \clef "bass" c! [ b a ] b [ a g ] fis [ g a ] | % 28
        b16 [ a g ] f [ e d ] e [ d c ] b [ c d ] | % 29
        e16 [ c e ] g [ c e ] c [ a c ] \clef "treble" e [ a c ] | % 30
        fis,16 [ d fis ] a [ d fis ] d [ a d ] fis [ a c ] | % 31
        b16 [ g d ] b [ g fis ] g [ b d ] \padFerm g8.^\fermata | % 32

    } %end repeated section
}



%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
        \adjTieOne g8. ~ [ g8 b16 ] e [ d cis ] b [ a g ] | % 1
        fis8. ~ [ fis8 e'16 ] d [ cis b ] a [ g fis ] | % 2
        e8 [ g16 b8 d16 ] cis [ b a ] g [ fis e ] | % 3
        d16 [ e fis ] g [ a b ] \clef "treble" cis [ d e ] fis [ g a ] | % 4
        \adjTieTwo g4. ~ \prallprall g8 [ b,16 ] d8 [ g16 ] | % 5
        \adjTieTwo g4. ~ \upprall g8 [ cis,16 ] e8 [ g16 ] | % 6
        \adjTieTwo g4. ~ \upprall g16 [ a c ] fis, [ a c ] | % 7
        \stemUp \adjTieTwo  b8.~ \stemNeutral \adjBeamCin b16 [ g d ] b [ g b ] d [ g a ] | % 8
        b16 [ a g ] fis [ e d ] cis8. ~ [ cis8 e16 ] | % 9
        a16 [ g fis ] e [ d cis ] b8. ~ [ b8 a'16 ] | % 10
        \adjBeamSix g16 [ fis e ] \adjBeamSev d [ cis b ] \adjBeamOct e [ d cis ] \adjBeamNov b [ a g ] \clef "bass" | % 11
        cis16 [ b a ] g [ fis e ] a [ g fis ] e [ fis g ] | % 12
        fis16 [ a d ] \clef "treble"  fis [ a d ] a [ fis d ] c [ b a ] | % 13
        gis16 [ b d ] f [ b d ] b [ f e ] d [ cis b ] | % 14
        a16 [ d fis! ] a [ d fis ] e [ cis a ] g [ fis e ] | % 15
        d16 [ \clef "bass" a fis ] d [ a fis ] d [ fis a ] d8. | % 16

    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
         d16 [ e fis ] g [ a b ] c [ d, c' ( ] c ) [ b a ] | % 17
        g16 [ a b ] \clef "treble" c [ d e ] f [ g, f' ~ ] f [ e d ] | % 18
        c8. ~ c16 [ e g ] c^[ b a ] g [ fis e ] | % 19 
        dis16 [ cis b ]  \clef "bass" a [ g fis ] e [ dis cis ] b [ c a ] | % 20
        \adjTieTwo g8. ~ g16 [ b e ] g [ b dis ] \adjBeamTen e8 [ \stemUp  g,,16 ] \stemNeutral | % 21
        \adjTieTwo a8. ~ a16 [ c f ] a [ c dis ] \adjBeamTen e8 [ \stemUp ais,,16 ] \stemNeutral | % 22
        \adjTieTwo b8. ~ b16 [ cis dis ] e [ fis g ] a [ g fis ] | % 23
        g16 [ e g ] b [ e dis ] e [ g e ] b [ g b ] | % 24
        \stemUp \adjBeamTen \adjTieTre c,8. ~ [ c8 \stemDown e'16 ] \stemNeutral \clef "treble"  a [ g fis ] e [ d c ] | % 25
        \adjTieTwo b8. ~ [ b8 a'16 ] g [ fis e ] d [ c b ] | % 26
        \adjTieTwo a8. ~ a16 [ b c ] d [ e fis ] g [ fis e ] | % 27
        \adjTieTwo d8. ~ d16 [ e fis ] g [ a b ] c^[ b a ] | % 28
        \adjTieTwo g8. ~ g16 [ a b ] c [ d e ] f [ e d ] | % 29
        \adjTieQtr c8. ~ c16 [ e c ] a [ e c ] a [ c e ] | % 30
        a16 [ c a ] fis [ d a ] \clef "bass" fis [ d fis ] a [ c fis, ] | % 31
        g16 [ b d ] \clef "treble"  g [ b d ] g [ d b ] \padFerm g8._\fermata% \clef "bass" | % 32
  
    } %end repeated section
}



%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key g \major \time 12/16 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key g \major \time 12/16 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 93 }

}
