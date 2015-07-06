\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 11"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 11"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/06/26-2028"
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
  \time 3/4 \key g \major
}

upperVoice = \relative c' {
  \voiceOne
  \partial 16 { d16\mf } |
  g4 d4.. b16 |
  e4 c4 r16 a c e |
  e4 d4 r8 c8 |
  ais4 b r8 d |
  \mbreak

  d4 b r8 d |
  d4 a r16 a d fis |
  fis16 e g e r fis, a d r e, a cis |
  r16 d a fis r8\< <fis' d> <g e> <a fis>\sf |
  <b g>4\> r8 <e, cis> <fis d>\! <g e> |
  \mbreak

  % Impossible or ambiguous (de)crescendo in MIDI in this section
  <a fis>4\sf r8\< <d, fis,> <e g,>\! <fis a,>\f | % *
  % this is what it looks like in the scanned document:
  % fis16 e g e r e, a d \tuplet 3/4 { e, a cis\p } |
  % I've modified it to the following to match the 7th measure:
  fis16 e g e r e, a d r e, a cis\p |
  d4 r8\< d16 fis e g fis a\sf |
  <b g>4 r8 cis,16\< e d fis e\! g\sf | % *
  <a fis>4 r8\< fis,16 d' g, e' a, fis'\! |

  \mbreak

  fis16\f e g e r8 <d fis,> r <cis e,> |
  d8 <e c> <d b> <c a> <b g> <a d,>16 d\p |
  g4 d4.. b16\f |
  e4 c r8 e |
  e4 d4. c8 |
  \mbreak

  ais4 b r8 d |
  d4 a r8 d |
  d4 b r8 b |
  b16 a c e r8 <g b, g> r <fis d a>\f |
  <g b, g>4 <g, d b> r

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 16 { r16} |
  \repeat unfold 3 { b16 g' d g } |
  \repeat unfold 2 { c,16 g' e g } c,4 |
  \repeat unfold 3 { fis,16 d' a d } |
  \repeat unfold 3 { g,16 d' b d } |

  \repeat unfold 3 { g,16 d' b d } |
  \repeat unfold 2 { fis,16 d' a d } fis,4 |
  <b' g,>4 a, a |
  d4 d8 d d d |
  d8 d d d d d |

  d8 d d d d d |
  <b' g,>4 a, a |
  d8 d16 d d8 d d d |
  d8 d16 d d8 d d d |
  d8 d16 d d8 fis g a |

  <b g>4 a, a |
  d4 r r |
  \repeat unfold 3 { b16 g' d g } |
  \repeat unfold 3 { c,16 g' e g } |
  \repeat unfold 3 { fis,16 d' a d } |

  \repeat unfold 3 { g,16 d' b d } |
  \repeat unfold 3 { fis,16 d' a d } |
  \repeat unfold 3 { g,16 d' b d } |
  c4 d d |
  g,4 g r
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \global
      \clef "treble_8"
      \tempo "Andantino."

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
