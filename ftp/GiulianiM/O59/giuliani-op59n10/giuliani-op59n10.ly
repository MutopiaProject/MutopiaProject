\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 10"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 10"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/06/22-2019"
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
  \time 2/4 \key c \major
}

upperVoice = \relative c' {
  \voiceOne
  \partial 4 { g16 a\p b g } |
  c8 c d d |
  e8 c\f g' g |
  e8 c g' g |
  <e c>4 f16(\mf e) d c |
  c16 b d b b a c a |
  \mbreak

  g4\p a8 a |
  b8 g a a |
  b4 d8 d |
  b4 d8 d |
  g,4 g16 a\mf b g |
  \mbreak

  c8 c d d |
  e8 c c16 d e c |
  f8 f g g |
  r16 c, a' c, r a e' g |
  g16( f) e f r g, d' f |
  f16( e) d c b a e' d |
  \mbreak

  r16 e, g c r d, g b\f |
  c4 d8 d |
  e8 c d d |
  e4 g8 g |
  e4 g8 g |
  e4 b16 c d\mf c |
  \mbreak

  b16 a g f e d g f |
  f8 e c'16 e d c |
  b16 a f' d c e d b\f |
  c16 g e g c g c e |
  c16 g e g c g c e |
  c4 <e c g e>4 |
  <c g>2

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 4 { f4 } |
  e8 c b g |
  c4 b8 g |
  c4 b8 g |
  c4 r |
  d4 d |

  g,16 d' b d fis, d' a d |
  g,16 d' b d fis, d' a d |
  g,16 d' b d fis, d' a d |
  g,16 d' b d fis, d' a d |
  g,16 d' b d f,4 |

  e16 g' c, g' b, g' g, g' |
  c,16 g' e g bes,4 |
  a16 c' f, c' e, c' c, c' |
  f,4 cis |
  d4 b |
  c4 f, |

  g4 g |
  c16 g' e g  b, g' d g |
  c,16 g' e g  b, g' d g |
  c,16 g' e g b, g' d g |
  c,16 g' e g b, g' d g |
  c,16 g' e g e,4 |

  f4 g |
  a4 e |
  f4 g |
  \repeat unfold 3 { c4 c | }
  c2
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \global
      \clef "treble_8"
      \tempo "Vivace."

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
    \tempo 4 = 90
  }
}
