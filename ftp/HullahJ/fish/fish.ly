\version "2.18.2"
\include "english.ly"

#(set-global-staff-size 18)

\header {
  title = "The Three Fishers"
  composer = "S. D. S. & J. Hullah"
  mutopiacomposer = "HullahJ"
  poet = "Rev. C. Kingsley"
  instrument = "Voice and Piano"
  source = "New York: S. T. Gordon, 1856"
  license = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"

  mutopiapoet = "C. Kingsley (1819-1875)"
  mutopiadate = "1856"
  mutopiastyle = "Song"
  mutopiasource = "New York: S. T. Gordon"

 footer = "Mutopia-2014/11/13-429"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 7 \mm
  % default vertical spacing values have been multiplied by 1.5, except where noted with **
  system-system-spacing = #'((basic-distance . 18) (minimum-distance . 12) (padding . 1.5))
  % defaults are 12, 8, and 1
  score-system-spacing = #'((basic-distance . 21) (minimum-distance . 12) (padding . 1.5))
  % defaults are 14, 8, and 1
  markup-system-spacing = #'((basic-distance . 7.5) (padding . 13))
  % defaults are 5 and 0.5**
  score-markup-spacing = #'((basic-distance . 18) (padding . 0.75))
  % defaults are 12 and 0.5
  markup-markup-spacing = #'((basic-distance . 1.5) (padding . 0.75))
  % defaults are 1 and 0.5
  top-system-spacing = #'((basic-distance . 1.5) (padding . 1.5))
  % defaults are 1 and 1
  top-markup-spacing = #'((basic-distance . 4) (padding 1.5))
  % defaults are none** and 1
  last-bottom-spacing = #'((basic-distance . 1.5) (padding . 7))
  % defaults are 1 and 1**
}

\layout {
  % #(set-paper-size = "letter")
  indent = 8 \mm
  % interscoreline = 4.0 \mm
  % default vertical spacing values have been multiplied by 1.5, except where noted with **
  \context {
    \Staff
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 13.5) (minimum-distance . 12) (padding . 1.5))
    % defaults are 9, 8, and 1
    \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
  \context {
    \Lyrics
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
    #'((basic-distance . 7.5) (padding . 0.75))
    % defaults are 5.5** and 0.5
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
    % default is 1
  }
}


%% Spelling curiosities not corrected!

melody =  \relative c'' {
  \key c\major \time 6/8
  s4.*2*4 \break s4.*2*4 \break
  r4. r4 c8 | c e, a g c, f | e e d c4 c8 | d^\< e f g a b\! |
  c4^\> c8 b4\! b8 | d d d c c c | b b b f'\fermata f, f |
  f e d e^\markup {\italic "un poco rall."} c a |
  b b b e4\fermata e8^\markup {\italic "a tempo."} | e4 e8 e4 e8 |
  f8 e f d8. d16 d8 | e16 e8. e8 e4 e8 | f16 e8. f8 d g8. g16 |
  g4^\markup { \italic cresc. } g8 g4 g8 | c4.^\f(\melisma c) | g4.^>( g^>)\melismaEnd |

  e4 r8 r4 r8 |r4. r4 c'8 | c8( e,) a g c, f |
  e4 d8 c4 c16 c | d8^\<( e) f g a b\! | c4^\> c8 b4\! b8 |
  d8 d d c c c | b b b f'\fermata f, f |
  f e d e c a | b16 b8. b8 e4\fermata e8^\markup {\italic "a tempo."} | e4 e8 e4 e8 |
  f8 e f d4 d8^\markup { \italic cresc. } | e4 e8 e16 e8. e8 | f( e) f d g8. g16 |
  g4^\markup { \italic cresc. } g8 g4 g8 | c4.^\f(\melisma c) | g4.^>( g^>)\melismaEnd |

  e4 r8 r4 r8 |r4. r4 c'8 | c( e,) a g c, f | e4 d8 c4 c16 c | d8( e) f g a b |
  c4 c8 b4 b16 b | d8^\markup {\italic "accel."} d d c c c | b b b f'4\fermata f,8 |
  f8^\markup {\italic "rall."} e d e16 c8. a8 | b8. b16 b8 e4\fermata e8 |
  e4^\markup {\italic "a tempo."} e8 e4 e8 | f e f d4 d16 d |
  e16 e8. e8 e e e | f e f d g g | g8.^\markup {\italic "cresc."} g16 g8 g g g |
  c4.^\f(\melisma c) | g4.^>( g^>)\melismaEnd | e4 r8 r4 r8 |\break
}

textA = \lyricmode {
  Three fish -- ers went sail -- ing out in -- to the west, Out in -- to the west
  as the sun went down; Each thought on the wo -- man who lov'd him the best,
  And the child -- ren stood watch -- ing them out of the town
  For men must work and wo -- men must weep And there's lit -- tle to earn,
  and man -- y to keep; Tho the har -- bor bar be moan __ ing.
  Three wives sat up in the light house tow'r And they trimm'd the lamps
  as the sun went down They look'd at the squall, and they look'd at the show'r,
  And the night -- rack came roll -- ing up rag -- ged and brown!
  But men must work and wo -- men must weep Though storms be sud -- den,
  and wa -- ters deep, And the har -- bor bar be moan __ ing.
  Three corpses lay out on the shin -- ing sands, In the morn -- ing gleam as the
  tide went down, And the wo -- men are weep -- ing and wring --ing their hands
  For those who will nev- er come back to the town, For men must work,
  and wo -- men must weep, And the soon- er it's o- ver, the soon- er to sleep,
  And good bye to the bar and its moan __ ing.
}

%%%% page numbers refer to original edition

upper = \relative c' {
  \key c\major \time 6/8
  <g c e>8^\markup {\bold "Andantino."} r <g c e> <a c e> r <a c e> |
  <a d f>8 <a c e> <a d f> <g b d>4 r8 | <g c e> r <g c e> <a c e> r <a c e> |
  <a d f>8 <a c e> <a d f> <g b d> <g' g'>8.[ <g g'>16] |
  <g c g'>4 <g c g'>8 <g c g'>4 <g c g'>8 | <c g' c>4. <c g' c> | <g c d g> <g b d g> |
  <g c e>8 r <c, e> <c e> r <c e> |
  <c e> r <c e> <c e> r <c e> | <c e> r <c ds> <c e> r <a c f> |
  <g c e> r <g b f'> <g c e> r <g c e> | <g b d> r <b d> <c g'> r <c g'> |
  <c g'>8 r <c fs> <b g'> r <d g b> | <d a' d> r <d a' d> <e a c> r <e a c> |
  <f a b>8 r <f a b> <f a f'>\fermata r r |
  %% page2
  f8 e d e c a | b r <a b ds> <gs b e>4\fermata r8 | <g! c e> r <g c e> <a c e> r <a c e> |
  <a d f>8 <a c e> <a d f> <g b d> r <g b d> | <g c e> r <g c e> <a c e> r <a c e> |
  <a d f>8 <a c e> <a d f> <g b d> <g g'> <g g'> |
  <c g'>8 r <c g'> <b c g'> r <b c g'> | <a c g'> r <a c g'> <a c f> r <a c f> |
  <g c d> r <g c d> <b d> <c e> <d f> |
  <c e> r <c e> <c e> r <c e> | <c e> r <c e> <c e> r <c e> | <c e> r <c ds> <c e> r <a c f> |
%%% page 3
  <g c e>8 r <g b f'> <g c e> r <g c e> | <g b d> r <b d> <c g'> r <c g'> |
  <c g'> r <c fs> <b g'> r <d g b> |
  <d a' d> r <d a' d> <e a c> r <e a c> | <f a b> r <f a b> <f a f'>\fermata r r |
  f8 e d e c a | b r <a b ds> <gs b e>4\fermata r8 | <g! c e> r <g c e> <a c e> r <a c e> |
  <a d f>8 <a c e> <a d f> <g b d> r <g b d> | <g c e> r <g c e> <a c e> r <a c e> |
  <a d f>8 <a c e> <a d f> <g b d> <g g'>[ <g g'>] |
%%% page4
  <g' c,> r <g c,> <g c, b> r <g c, b> | <g c, a> r <g c, a> <f c a> r <f c a> |
  <d c g> r <d c g> <d b> <e c> <f d> |
  <e c> r <e c> <e c> r <e c> |
  \break % fixes markup spacing issue in next measure
  <e c> r <e c> <e c> r <e c>^\markup {\italic "un poco meno mosso."} |
  <e c> r <ds c> <e c> r <f c a> |
  <e c g> r <f b, g> <e c g> r <e c g> | <d b g> r <d b> <g c,> r <g c,> |
  <g c,> r <fs c> <g b,> r <b g d> |
  <d a d,> r <d a d,> <c a e> r <c a e> | <b a f> r <b a f> <f' a, f>4\fermata r8 |
  f, e d e c a |
%%% page 5
  b r <ds b a> <e b gs>4\fermata r8 | <e c g!> r <e c g> <e c a> r <e c a> |
  <f d a> <e c a> <f d a> <d b g> r <d b g> |
  <e c g> r < e c g> <e c a> r <e c a> | <f c a> <e c g> <f c a> <d b g> <g g,>[ <g g,>] |
  <g c,> r <g c,> <g c, b> r < g c, b> |
  <g c, a> r <g c, a> <f c a> r <f c a> | <d c g> r <d c g>^\markup { \italic dim. } <d b> <e c> <f d> |
  <e c> r <e c> <e c> r <e c> |
  <f c a> <e c g> <f c a> <e c g> r <e c g> | <f c a> <e c g> <f c a> <e c g> r <e c g> |
  <e c g> r r <e c g> r r | <e c g>4. ~ <e c g>
}

lower = \relative c {
  \key c\major \time 6/8
  c8^\p r c a r a | d a d g,4 r8 | c^\pp r c a r a | f c' f, g^\f r r |
  <c' e>4 <c e>8 <b c e>4 <b c e>8 | <a c>4.^\f <a c> | <g d'>^\f <<{ d'8 e f }\\{ g,4.}>> |
  <c e>8 r^\pp <c, g'> <c g'> r <c g'> |
  <c g'>8 r <c g'> <c g'> r <c g'> | <c g'> r <c fs> <c g'> r f, | g r g c r c |
  f r <f g> <e g> r e |
  <e a,>8^\mf r^\> <d a> <d g,>\! r g | <f a> r <f a> <e a> r <e a> |
  <d a'>8 r <d a'> <d a' b>^\sf\fermata r r
  %% page2
  f^\p e d e c a | b r <b b,> <e e,>4_\fermata r8 | c^\pp r c a r a |
  d a d g, r g | c r c a r a |f c' f, g\sf r r |
  <c e,>^\markup {\italic cres. } r <c e,> <c e,> r <c e,> | <c f,>^\f r <c f,> <d f,> r <d f,> |
  <d g,> r <d g,>^\markup { \italic dim. } <g g,> r <g g,> |
  <g c,> r <g c,>^\pp <g c,> r <g c,> | <g c,> r <g c,> <g c,> r <g c,> |
  <g c,> r <fs c> <g c,> r f, |
%%% page 3
  g8 r g c r c | f^\< r <f g> <e g> r e\! | <e a,>^\> r <d a>\! <d g,> r g |
  <f a>^\mf r <f a> <e a> r <e a> | <d a'>8 r <d a'> <d a' b>^\sf\fermata r r
  f^\mf e d e c a | b r^\f <b b,> <e e,>4_\fermata r8 | c^\pp r c a r a |
  d a d g, r g^\markup {\italic cresc. } | c r c a r a | f c' f, g r^\sf r
%%% page 4
  <c e,>^\markup {\italic cresc. } r <c e,> <c e,> r <c e,> | <c f,>^\sf r <c f,> <d f,> r <d f,> |
  <d g,> r^\markup {\italic dim. } <d g,> <g g,> r <g g,> |
  <g c,> r^\pp <g c,> <g c,> r <g c,> | <g c,> r <g c,> <g c,> r <g c,> |
  <g c,> r <fs c> <g c,> r f, |
  g r g c r c | f r <f g> <e g> r e | <e a,> r <d a> <d g,> r g |
  <f a>^\f r <f a> <e a> r <e a> | <d a'>8 r <d a'> <d a' b>4^\sf\fermata r8 |
  f^\p e d e c a |
%%% page 5
  b8 r^\f <b b,> <e e,>4_\fermata r8 | c^\pp r c a r a | d a d g, r g |
  c r c a r a | f c' f, g r^\sf r | <c e,>^\markup {\italic cresc. } r <c e,> <c e,> r <c e,> |
  <c f,>^\sf r <c f,> <d g,> r <d g,> | <d g,> r <d g,> <g g,> r <g g,> |
  <g c,>^\p r <g c,> <g c,> r <g c,> |
  f c f c r^\pp c |f c f c r c | c r r c r r | c4.( c) | \bar "|."
}

\score {
  <<
    \new Staff = "melodystaff" \with {
      midiInstrument = #"choir aahs"
    } <<
      \new Voice = "mel" {
        \autoBeamOff
        \melody
      }
      \lyricsto mel \new Lyrics \textA
    >>

    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" <<
        \clef bass
        \lower
      >>
    >>
  >>
  \layout { }
  \midi {
    \tempo 4. = 40
  }
}
