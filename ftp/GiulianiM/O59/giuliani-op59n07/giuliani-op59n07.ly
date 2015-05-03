\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 7"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 7"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

mbreak = {} % { \break }
global = {
  \time 6/8 \key g \major
}

upperVoice = \relative c' {
  \voiceOne
%  \slurDown
  \partial 8 d8\mf |
  d4. b4 g'8 |
  g4. e4 e8 |
  d8 b-\tweak X-offset #-1 \sf e c a d-\tweak X-offset #-3 \sf |
  <b g>8 <c a> <b g> <a fis>4 d8 |
  d4. b4 g'8 |
  g4. e4 e8 |
  d8 b e-\tweak X-offset #-3 \sf c a d |
  \mbreak

  <b g>8 <c a> a g4 b8 |
  a4 d8 cis4 g'8 |
  r8 fis d r <d b> <b g> |
  a8 d fis \grace fis16 e8 d cis |
  d16-\tweak X-offset #.5 \f fis( e) d cis b a4 r8 |
  R2. |
  \mbreak

  fis16 a d fis( e) d cis b a( g) fis e-! |
  R2. |
  d16 b fis' d a' fis d' a fis' d a' g |
  fis( e) d-! cis-! e d cis( d) e-! d-! cis d |
  d4.-\tweak X-offset #-2 \f b4 g'8 |
  \mbreak
  
  g4. e4 e8 |
  d8-\tweak X-offset #-3 \sf b e c a d-\tweak X-offset #-3 \sf |
  <b g>8 <c a> <b g> <a fis>4 d8\f |
  d4. b4 g'8 |
  g4. e4 e8 |
  d8-\tweak X-offset #-3 \sf b e c a d-\tweak X-offset #-3 \sf |
  <b g> <c a> <d b> <e c> <fis d> <g e> |
  \mbreak

  r8 <d b> <b g> r8 <c a> <a e> |
  \repeat unfold 2 {
    g4 gis8 a4 ais8 |
    b4. d8 c a |
  }
  g4. <g' b,>8-\tweak X-offset #-1.5 \f <g b, g> q |
  q4. q |
  <g, d b>2.

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 8 r8 |
  \repeat unfold 2 { g8 b d } |
  \repeat unfold 2 { c8 e g } |
  g,4 gis8 a4 fis8 |
  g4. d'4 r8 |
  \repeat unfold 2 { g,8 b d } |
  \repeat unfold 2 { c8 e g } |
  g,4 gis8 a4 fis8 |

  g4 d'8 b4 r8 |
  fis8 b d e, b' e |
  d4. g, |
  <fis' a,>4. <g a,> |
  d4. r16 gis, a( cis) e g |
  fis16 a a, a' fis a g a a, a' g a |

  r4 r8 r4 r8 |
  d,16( fis) a, fis'( e) d-! fis g a, g' fis e |
  R2. R2. |
  g,8 b d g, b d |

  c8 e g c, e g |
  g,4 gis8 a4 fis8 |
  g4. d'4 r8 |
  g,8 b d g, b d |
  c8 e g c, e g |
  g,4 gis8 a4 fis8 |
  g4. c |

  d4. d |
  \repeat unfold 4 { g,8 b d fis, a d | }
  g,4. g'8 d b |
  g4. g |
  g2.
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegretto."

      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    % tabs are not completely developed
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 104
  }
}
