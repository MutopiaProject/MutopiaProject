\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 16"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142, http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4171
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 16"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/08/12-2040"
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

mbreak = { }
global = {
  \time 2/4 \key c \major
}

upperVoice = \relative c' {
  \voiceOne
  \partial 8 { g8-\tweak X-offset #2 \p }
  c4. b8 |
  c4. b8 |
  c8 d e f |
  g4 e |
  c4. b8 |
  \mbreak
  c4. b8 |
  c8 d e f |
  d4. r16 g,-\tweak X-offset #1.5 \f |
  c4. b8 |
  c4. b8 |
  c8 d e f |
  \mbreak
  g4 e |
  c4. b8 |
  c4. b8 |
  c8 d e f |
  d4 r-\tweak X-offset #2.5 \p |
  d4. d8 |
  \mbreak
  e4. c8 |
  b8 b b b |
  c8 e g4 |
  d4. d8 |
  e4. c8 |
  b8 c d b |
  \mbreak
  c4 r |
  d4.-\tweak X-offset #-2.5 \f d8 |
  e4. c8 |
  b8 b b b |
  c8 e g4 |
  d4. d8 |
  \mbreak
  e4. c8 |
  b8 b b b |
  c4.-\tweak X-offset #-2.5 \p b8 |
  c4. b8 |
  c8 g' c, b |
  c8 g' c, b |
  \mbreak
  c8 g,16 g'-\tweak X-offset #-0.2 \f a, a' b, b' |
  c,16 c' e, e' g, g' e, e' |
  c4-\tweak X-offset #2 \f <e c g> |
  q4 q |
  <e c g e>4 r <c' g e>4 r |
  <c, g e>2
  
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 8 { r8 }
  e16 g e g e g f g |
  e16 g e g e g f g |
  e16 g b, g' c, g' d g |
  e16 g e g e g e g |
  e16 g e g e g f g |
  
  e16 g e g e g f g |
  e16 g b, g' c, g' d g |
  b,16 g' fis g f g d r |
  c16 g' e g c, g' f g |
  c,16 g' e g c, g' f g |
  c,16 g' b, g' c, g' d g |

  c,16 g' e g c, g' e g |
  c,16 g' e g c, g' f g |
  c,16 g' e g c, g' f g |
  c,16 g' e g c, g' e g |
  b,16 g' d g g,4 |
  f'16 g f g f g f g |

  e16 g e g e g e g |
  f16 g f g f g f g |
  e16 g e g e g e g |
  f16 g f g f g f g |
  e16 g e g e g e g |
  d16 g e g f g d g |

  e16 g e g e g e g |
  b,16 g' f g b, g' f g |
  c,16 g' e g c, g' e g |
  d16 g f g d g f g |
  c,16 g' e g c, g' e g |
  b,16 g' f g b, g' f g |

  c,16 g' e g c, g' e g |
  d16 g f g d g f g |
  c,16 g' e g e g f g |
  e16 g e g e g f g |
  e16 g e g e g f g |
  e16 g e g e g f g |

  e8 g, a b |
  c8 e g e |
  c4 c |
  g4 e |
  c'4 r |
  c'4\4 r |
  c,2
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      \override StringNumber #'stencil = ##f
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
    \tempo 4 = 96
  }
}
