\version "2.18.0"

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

% #(set-default-paper-size "letter")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 17. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 17"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        license = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2014/03/24-1414"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-----------------definitions
adjBeamOne = \once \override Beam.positions = #'( -0.6 . -0.9 )
adjBeamTwo = \once \override Beam.positions = #'( 0.4 . 2.8 )

adjTieOne = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieTwo = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie


soprano =   \relative b' {
    \repeat volta 2 { %begin repeated section
        b16 [ d fis a ] g8. [ c,16 ] b [ a g b ] | % 1
        a16 [ cis e g ] fis8. [ b,16 ] a [ g fis a ] \noBreak | % 2
        g16 [ b d fis ] e8. [ a,16 ] g [ fis e g ] | % 3
        fis16 [ e fis e ] fis [ a d cis ] d [ fis a c, ] | % 4
        b16 [ g' a, fis' ] g, [ e' f, d' ] e, [ c' d, b' ] | % 5
        c16 [ e, b' d, ] a' [ c, g' b, ] fis'! [ a, e' g, ] \clef "bass" | % 6
        a16 [ fis' g, e' ] fis, [ d' e, c' ] d, [ b' c, a' ] | % 7
        b,16 [ a b a ] b [ d g fis ] g8 r8 \clef "treble" | % 8
        d''16 [ b' c, a' ] b, [ g' a, fis' ] g, [ e' fis, d' ] | % 9
        e,16 [ d' cis b ] cis [ e a8 ] a8 \downmordent r8 | % 10
        b,16 [ g' a, fis' ] g,^[ e' fis, d' ] e, [ cis' d, b' ] | % 11
        cis,16 [ b' a gis ] a [ cis e8 ] \adjTieTwo e4 \prallmordent ~  | % 12
        e16 [ d e cis ] d [ b c a ] b [ g a fis ] | % 13
        g16 [ e' fis, d' ] e, [ cis' \grace d32 cis16 ( b )] \grace cis32 b16 [ ( a ) b  g' ] | % 14
        g8. [ fis32 e ] fis16 [ d b g ] a [ fis g e' ] | % 15
        fis,16 [ e fis e ] fis [ a d cis ] d8 r8 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        a'16 [ fis g e ] fis [ d e c! ] d [ b c a ] | % 17
        b16 [ g a fis ] g [ e fis dis ] e [ c d b ] \clef "bass" | % 18
        c16 [ a b gis ] a [ fis g e ] f [ dis e cis ] | % 19
        dis16_[ cis dis cis ] \adjTieTwo dis4 ~ dis16 [ fis b a ] \clef "treble" | % 20
        g16 [ b a c ] b [ dis cis e ] dis [ fis e g ] | % 21
        fis16 [ a g b ] a [ c b d ] c [ e dis fis ] | % 22
        e16 [ g fis a ] g [ b a c ] b [ g a fis ] | % 23
        g16 [ e fis dis ] e [ c b a ] g [ fis e8 ~ ] | % 24
        e16_[ e' b d ] c [ b a c ] b [ d c e ] | % 25
        d16 [ b a c ] b_[ a gis b ] a [ c b d ] | % 26
        c16 [ a g! b ] a [ fis' g e ] fis [ d e c' ] | % 27
        \adjTieTwo c8 ~ [ c32 b a g ] fis16 [ g a fis ] \grace e8 \adjTieTwo d4 ~ | % 28
        d16 [ b c a ] b [ g' a, f' ] g, [ e' f, d' ] | % 29
        e,8 r32 g32 [ a b ] c16 [ a b g ] a [ fis g e  ] | % 30
        fis16 [ e'  d8 ~ ] d32 [ e fis g fis e d c ] b16 [ g'16 a,16 fis'16 ] | % 31
        g,16 [ fis g fis ] g [ b d fis ] g8 r8 | % 32
    } %end repeated section
}

%%
%% Bass Clef
%% 

bass = \relative g, {
	\repeat volta 2 { %begin repeated section
        g16 [ b a c ] b [ d c e ] d [ fis e g ] | % 1
        fis16 [ a g b ] a [ \clef "treble" cis b d ] cis [ e d fis ] | % 2
        e16 [ g fis a ] g_[ b a cis ] b [ d cis e ] | % 3
        d16 [ cis d cis ] d2 ( | % 4
        d16 ) [ b c a ] b [ g a f ] g [ e f d ] \clef "bass" | % 5
        \adjBeamOne e16 [ c d b ] c [ a b g ] a [ fis! g e ] | % 6
        fis16 [ d e c ] d [ b c a ] b [ g a fis ] | % 7
        g16 [ fis g fis ] g4 ~ g16_[ d' g fis ] \clef "treble"  | % 8
        \adjBeamTwo g16 [ b d fis ] g8. [ a16 ] b [ cis d b ] | % 9
        cis16_[ b a g ] fis [ e dis cis ] \clef "bass" b [ a g fis ] | % 10
        e16 [ g b dis ] \clef "treble" e8. [ fis16 ] g [ a b g ] | % 11
        a16 [ d, cis b ] cis [ e a b ] cis [ e g b, ] | % 12
        a16 [ fis' g, e' ] fis, [ d' e, c' ] d, [ b' c, a' ] \clef "bass" | % 13
        b,16 [ g' a, fis' ] g, [ e' fis, d' ] e, [ cis' d, b' ] | % 14
        cis,16 [ a' b, g' ] a, [ fis' g, e' ] fis, [ d' e, cis'! ] | % 15
        d16 [ cis d cis ] d [ a fis a ] d,8 r8 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d16 [ fis a cis ] d8. [ e16 ] fis [ g a fis ] | % 17
        g16 [ b, c d ] g,8. [ fis'16 ] g [ a b gis ] | % 18
        a16 [ c, d e ] a,8. [ gis'16 ] a [ b c ais ] | % 19
        b16 [ ais b ais ] b [ fis g a ] b,8 [ \clef "treble" dis'8 ] | % 20
        e16 [ g fis a ] g [ fis e g ] fis [ dis e cis ] \clef "bass" | % 21
        dis16 [ cis b d ] c [ a b gis ] a [ g fis a ] | % 22
        g16 [ e fis dis ] e [ dis cis e ] dis [ e fis dis ] | % 23
        e16 [ g, a b ] e, [ fis g a ] b [ c d b ] | % 24
        c16 [ e d f ] e [ g fis a ] gis [ b a c ] \clef "treble" | % 25
        b16 [ d c e ] d [ f e gis ] fis [ a gis b ] | % 26
        a16 [ c b d ] c_[ a b g ] a [ fis g e ] | % 27
        fis16 [ d e cis ] d [ b' c, a' ] b, [ g' a, fis' ] | % 28
        b,8 r32 d32 [ e fis ] g16 [ e f d ] e [ c d b ] \clef "bass" | % 29
        g16 [ e f d ] e [ c' d, b' ] c, [ a' b, g' ] | % 30
        a,16 [ g' fis c ] b [ d g b ] d [ b c a ] | % 31
        b16 [ a b a ] b [ g d b ] g8 r8 | % 32
  
    } %end repeated section
}

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 105 }

}
