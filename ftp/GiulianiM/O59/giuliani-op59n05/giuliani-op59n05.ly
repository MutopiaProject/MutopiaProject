\version "2.19.18"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 5"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 5"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/04/15-2008"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

mbreak = { } % { \break }
global = {
  \time 6/8
}

upperVoice = \relative c' {
  \voiceOne
%  \slurDown
  e4.\mf e |
  c4. \grace d32 c8 b c |
  d4 d8 d4 d8 |
  g4. e4 r8 |
  c4. b8 a g |
  c4. d8 c d |
  \mbreak

  e8 d c a f' d |
  e,8\p g c b4 r8 |
  d4. r8 a c |
  b4. r8 g b |
  d4. r8 e c |
  ais4. b4 r8 |
  d4. g4. |
  g4. r8 e c |
  \mbreak

  b8 d g, a c fis, |
  r8\< g a b c d\f |
  e4. d |
  c4. \grace d16 c8 b c |
  d4 d8 d4 d8 |
  g4. e4 r8 |
  e4. d |
  \mbreak

  c4. d8 f d |
  c4. b |
  c4.\p r4 r8 |
  g'4 f8 d4 r8 |
  g4 e8 c4 r8 |
  b4. b8 c d |
  c4. r4 r8 |
  \mbreak

  g'4\f f8 d4 r8 |
  g4 e8 c4 r8 |
  d4. d8 c b |
  c4. d8 c b |
  c4. d8 c b |
  c8 e g, c e, g |
  c,4. <e' c g> |
  <c g e>2. |

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  c8 e g b, f' g |
  c,8 e g c,4. |
  b8 f' g b, f' g |
  c,8 e g c, e g |
  <g e>8 q q <g f>4. |
  <g e>8 q q <g b,>4. |

  <g c,>4. f, |
  g4. <g' d b g>4 r8 |
  fis,8 a d fis,4. |
  g8 b d g,4. |
  fis8 a d g,4 r8 |
  g8 b d g, b d |
  b8 d g b, d g |
  c,8 e g c,4 r8 |

  d4. d |
  g,4 r8 r4 r8 |
  c8 e g b, f' g |
  c,8 e g c,4. |
  b8 f' g b, f' g |
  c,8 e g c, e g |
  c,8 e g b, f' gis |

  a,8 e' a f,4. |
  g8 e' g g, d' g |
  c,8 e g c, e g |
  b,8 d g b, d g |
  c,8 e g c, e g |
  c, f g c, f g |
  c, e g c, e g |

  b,8 d g b, d g |
  c,8 e g c, e g |
  c,8 f g c, f g |
  c,8 e g c, e g |
  c,8 e g c, f g |
  c,4. r4 r8 |
  c4. c |
  c2. |
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \global
      \clef "treble_8"
      \tempo "Grazioso."

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
