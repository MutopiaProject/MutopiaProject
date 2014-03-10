\version "2.18.0"

%#(set-default-paper-size "letter")

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 5. a 1 ovvero 2 Clav."
        mutopiatitle = "Goldberg Variations - 5"
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
	
 footer = "Mutopia-2014/03/10-1406"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-------------------definitions
padFerm = \override Voice.Script.padding = #1
adjBeamOne = \once \override Beam.positions = #'( -3.2 . -4.6 )
adjBeamTwo = \once \override Beam.positions = #'( 1.8 . 0.3 )
adjBeamTre = \once \override Beam.positions = #'( 0.2 . 0.2 )
adjBeamQtr = \once \override Beam.positions = #'( 1.2 . -0.2 )
adjBeamCin = \once \override Beam.positions = #'( 2.3 . -2.1 )

adjTieOne = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie

hidePP = \tweak #'stencil ##f\pp
hideMF = \tweak #'stencil ##f\mf

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

soprano =   \relative d' {
    \repeat volta 2 { %begin repeated section
    r16-\hidePP d16 [ e fis ] g [ fis g a ] b [ a g b ] | % 1
    a16 [ g fis e ] d [ e fis g ] a [ fis e d ] | % 2
    g16 [ fis e d ] cis [ d e fis ] g [ b a g ] | % 3
    fis16 [ e d cis ] d [ a d e ] fis [ d fis a ] | % 4
    d16 [ b a b ] g [ b a b ] d, [ g fis g ] | % 5
    e16 [ g d g ] c, [ g' b, g' ] a, [ g' b, g' ] | % 6
    c,16 [ g' b, g' ] c, [ fis e fis ] d [ fis c fis] | % 7
    b,16 [ g' fis e ] \adjBeamTwo d [ c b a ] g8 r8 | % 8
    b''8-\hideMF r8 g,8 r8 b'4 | % 9
    a8 r8 fis,8 r8 a'4 | % 10
    g16 [ fis e dis ] e [ g d g ] cis, [ g' b, g' ] | % 11
    cis,16 [ g' e g ] a,8 [ g' fis g \turn ] | % 12
    \adjBeamTre a8 [ \stemUp e, fis \stemDown fis' g  a ] | % 13
    \adjBeamTre b8 [ \stemUp fis, e \stemDown g' a  b8 ] \stemNeutral | % 14
    e,8 [ g,8 \clef "bass" a, e' cis a ] | % 15
    fis8 [ \clef "treble" d'8 fis8  a8 ] d4 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
  fis8 r8 d,8 r8 fis'4 \downmordent | % 17
  g8 [ d16 g a8 d,16 a' ] b8 ( [g ] ) | % 18
  e8 [ c a g' ] fis32 [ e dis16 e8 ~ ] | % 19
  e8 [ dis \prall ] r8 \clef "bass" a,8 [ g \prallprall fis ] | % 20
  e8 r8 \clef "treble" e''8 r8 \clef "bass" d,,4 \prallmordent | % 21
  c8 r8 \clef "treble" e''8 r8 \clef "bass" a,,,4 \prallmordent | % 22
  b8 r8 \clef "treble" g''' [ fis e dis ] | % 23
  e8 r8 \clef "bass" \adjTieOne e,,4 ~ e16-\hidePP_[ d c b ] | % 24
  c16^[ e d e ] g^[ e d e ] c' [ a g a] \clef "treble" | % 25
  \adjBeamCin fis'16^[ \staffDown a, g a ] \staffUp g' [ d c d ] b' [ g fis g ] | % 26
  e'16 [ d c d ] fis [ d c d ] g [ d c d ] | % 27
  a'16 [ d, c b ] c_[ b a g ] fis [ a' g fis ] | % 28
  g8[-\hideMF b, ] r8 \clef "bass" f,8 [ e d ] | % 29
  c16 [c' b c ] \clef "treble" d [ c e c ] fis [ c g' c, ]| % 30
  a'16 [ c, b a ] b8[ d' \clef "bass" d,, \clef "treble" c'' ] | % 31
  b16 [ g d g ] b^[ g d' b ] \padFerm g'4^\fermata | % 32

    } %end repeated section
}



%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
    g8-\hideMF r8 \clef "treble" b'8 r8 \clef "bass" g,4 | % 1
    fis8 r8 \clef "treble" a'8 r8 \clef "bass" fis,4 | % 2
    e8 r8 \clef "treble" g'8 r8 \clef "bass" e,4 | % 3
    d8 r8 \clef "treble" fis'8 r8 \clef "bass" d,8 [ c!8 ] | % 4
    b8 r8 \clef "treble" d''8 r8 \clef "bass" b,,4 | % 5
    c8 r8 \clef "treble" e''8 r8 \clef "bass" c,,4 | % 6
    d8 r8 \clef "treble" a''8 r8 \clef "bass" d,,4 | % 7
    g,8 r8 \clef "treble" \adjTieOne b''4 ~ \adjBeamOne b16_[-\hidePP a g fis ] | % 8
    g16 b cis d ] e [ fis e d ] cis_[ b a g ] | % 9
    fis_[ a b cis ] d [ e d cis ] b [ a g fis ] | % 10
    e8 [ fis g b] e4 \prallmordent ~ | % 11
    e8 [ d ] cis16 [e b e ] a, [ e' g, e'] | % 12
    fis,16 [ e' d cis ] d_[ a d, d' ] e,_[ d' fis, d' ] | % 13
    g,16 [ e' d cis ] d_[ b e, d'] fis,_[ d' g, d'] | % 14
    a [ d cis b ] cis [e a, cis ] e, [ g fis e ] | % 15
	fis [a d, fis ] \clef "bass" a, [ d fis, a ] d,4 \clef "treble" | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
    r16 d''16 [ c b ] a [ g fis e ] d [ c' b a ] | % 17
    b16 [ g fis e ] \adjBeamQtr d [ c b a ] g [ g' a b ] | % 18
    c16 [ d e d ] c_[ b a g ] a_[ b c a ] | % 319
    b16 [ a b fis ] b, [ cis dis e ] fis [ g a fis] | % 20
    g16 [ b g e ] g [ b g e ] g-\hideMF [ b g e ] | % 21
    a16 [ c a e ] g [ c g e ] fis [ c' fis, e ] | % 22
    g16 [ b g e ] b [ b' a b ] g [ b fis b ] | % 23
    g16 [ e g b ] e^[ b g b ] e,8 r8 \clef "bass" | % 24
	e8 r8 c,8 r8 e'4 | % 25
    d8 r8 b,8 r8 d'4 | % 26
    c8 b a g fis e | % 27
    fis8 [g16 a ] \adjTieOne d,4 ~ d16 [c' b a ] | % 28
    b16[-\hidePP g fis g ] a [ g b g ] c [g d' g, ]  | % 29
    e'8 [ g, ] r8 b8 [ a  g ] | % 30
    fis16[-\hidePP d' e fis ] g [ d b g ] a [ c g' fis ] | % 31
    g8[-\hideMF g, d b ] \padFerm g4_\fermata | % 32
      
    } %end repeated section
}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 130 }
}
