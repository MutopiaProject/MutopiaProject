\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 15"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142, http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4171
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 15"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/08/04-2039"
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

mbreak = { \break }
global = {
  \time 3/8 \key g \major
}

mainDynamics = {
  \partial 16 { s16\mf }
  s4. | s4 s8\p | s4. | s4\sf s8 | s8 s4\sf | s8 s4\sf | s8 s4\p | s8 s8\mf s8 |
  s4. |s4 s8\p | s4\sf s8 | \repeat unfold 3 { s8 s8\sf s8 } | s4. | s4. | s4. |
}

upperVoice = \relative c' {
  \voiceOne
  \partial 16 { <d b>16\mf } |
  <d b>8 <b g> <d b> |
  <d b>8 <b g> <g' e>\p |
  <g e>8 <fis d> <e c> |
  <d b>4-\tweak X-offset #.5 \sf <e b>8 |
  c8 a\sf <d a> |
  b8 g\sf \grace { d'16 } <c a>8 |
  r8 <b g>\p q |
  <a fis d>4-\tweak X-offset #.6 \mf <d b>8 |
  \mbreak
  \repeat unfold 2 { <d b>8 <d g> <d b> } |
  \grace { a'16\p } <g e>8 <fis d> <e c> |
  <d b g>4\sf <e b>8 |
  c8 a\sf <d a> |
  b8 g\sf <c a> |
  r8 <b g> <a fis> |
  g16 d_\markup{"Dolce".} b d gis d |
  a'16 d, a d ais' d, |
  \mbreak
  b'16 d, b d g b |
  d16 d, c' d, a' d, |
  g16 d b d g gis |
  a16 d, a d a' ais |
  b16 d, b d g b |
  d16 d, c' d, a' d,\f |
  g8 <g' b, g> q |
  q4 <b, g>8 |
  <a fis>8-\tweak X-offset #.7 \mf <fis' a,> <e g,> |
  \mbreak
  <d fis,>8 <cis e,> <d fis,> |
  <dis fis,>8 <e g,> q |
  q4 a,8 |
  a8 <g' e> <fis d> |
  <e cis>8 <dis bis> <e cis> |
  <eis cis>8 <fis d> q |
  q4 d8 |
  d16 d, b' d, d' d, |
  d'16 d, a' d, d' d, |
  \mbreak
  cis'16 d e fis g e |
  fis16 d cis d e d |
  d16 d, b' d, b' d, |
  d'16 d, a' d, d' d, |
  cis'16 d e fis g cis,\p |
  d4 r8 |
  r4 <e gis,>8 |
  <c a>4 <d fis,>8 |
  \mbreak
  <b g>4 <c a>8 |
  <a fis>4 r8 |
  r4 <e' gis,>8 |
  <c a>8 q <d fis,> |
  <b g>8 q <c a> |
  <a fis>4. |
  <b g>4. |
  <a fis>4. |
  <bes g>4. |
  \mbreak
  <a fis>8 q q |
  q4 <d b>8\mf |
  \repeat unfold 2 { q8 <b g> <d b> } |
  \grace { a'16\p } <g e>8 <fis d> <e c> |
  <d b>4\sf <e b>8 |
  c8 a\sf <d a> |
  b8 g <c a> |
  r8 <b g> <a fis> |
  \mbreak
  \repeat unfold 2 { g16 d\p b d gis d |
                     a'16 d, d' d, d' d, } |
  g8-\tweak X-offset #-2.5 \f <g' b,> <g b, g> |
  q8 q q |
  q4.

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 16 { r16 } |
  g4. |
  g4. |
  g'8 g g |
  g4 gis,8 |
  a4 fis8 |
  g4 c8 |
  d4. d4 r8 |

  g,4. |
  g4 r8 |
  g'8 g g |
  g4 gis,8 |
  a4 fis8 |
  g4 c8 |
  d4. |
  g,4 r8 |
  fis4 r8 |

  g4 r8 |
  fis4. |
  g4 r8 |
  g4 r8 |
  g4. |
  g4. |
  g8 d' a |
  g4 r8 |
  d'4 r8 |

  d4. |
  a8 cis e |
  \repeat unfold 3 { a,4 r8 } |
  d8 fis a |
  d,4 r8 |
  g,4. |
  fis4. |

  a4. |
  d4. |
  g,4. |
  fis4. |
  a4. |
  \repeat unfold 13 { d8 d d } |
  d4 r8 |
  g,4 r8 |
  g4 r8 |
  g'8 g g |
  g4 gis,8 |
  a4 fis8 |
  g4 c8 |
  d4. |

  g,4 r8 |
  fis8 a a |
  g4 r8 |
  fis8 a a |
  g8 g' d |
  b8 d b |
  g4.
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
%    \new Dynamics { \mainDynamics }
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
