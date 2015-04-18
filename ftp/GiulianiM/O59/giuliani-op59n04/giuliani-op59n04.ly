\version "2.19.18"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 4"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiatitle = "16 Studies for the Guitar: 4"
  mutopiainstrument = "Guitar"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/04/15-2007"
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
  \time 2/4 \key f \major
}

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \set Timing.measureLength = #(ly:make-moment 5/16)
  c16 b16[( c\p) d c] |
  \set Timing.measureLength = #(ly:make-moment 2/4)
  <a f>8. c16 <bes! e,>8. c16 |
  <a f>8. c16 b( c) d c |
  <g e>8. <e' g,>16 <d f,>8. <b d,>16 |
  \mbreak

  <c e,>8. c16 b( c) d c |
  r16\< bes f' d r a f' c\! |
  r16 g f' d r g, c e\f |
  f16 c d bes c, a' c,[ a'\p] |
  f8\< r16 <f' a,> <e g,>16[ <g bes,> <f a,> <d bes>16 ]\! |
  \mbreak

  <c a>8.\sf <a f>16\p <bes d,>8 <c e,> |
  <a f>8.\< <f' a,>16 <e g,>16 <d bes> <c a> <b gis>\! |
  <c a>8.\sf <a e>16\p <bes d,>16 d <c e,> bes |
  a16 c c c c4 |
  r16 c c c c4 |
  \mbreak

  r16 c c c c d e f |
  <e g,>16\mf q8 <d bes> <c a> <bes e,>16 |
  <a e>16 c d c c4\p |
  r16 b16 c b c4 |
  r16 c d c c d e f |
  \mbreak

  <e bes>16 q8 <g bes,> <f a,> <e g,>16 |
  <f a,>8 r16 a, bes\< b c cis |
  d,16 d' bes,!\f bes'! g, g' c, <e' c bes> |
  <f c>4 r

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set Timing.measureLength = #(ly:make-moment 5/16)
  r16 r4 |
  \set Timing.measureLength = #(ly:make-moment 2/4)
  r16 c c8 r16 c c8 |
  r16 c c8 r4 |
  r16 c c8 r16 g g8 |

  r16 c c8 r4 |
  d4 c |
  b4 bes |
  a8 bes c c |
  f,16 f f f f f f f |

  \repeat unfold 3 { f16 f f f f f f f | }
  <f' f,>4 r16 <f a,> q q |
  q4 r16 q q q |

  <a f>4 r |
  c,8 c c c |
  f,4 r16 <f' a,> q q |
  <g c,>4 r16 q q q |
  <a e>4 q |

  c,8 c c c |
  f,8 r16 a bes b c cis |
  d8 bes! g c |
  <a' f>4 r |
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
    \tempo 4 = 80
  }
}
