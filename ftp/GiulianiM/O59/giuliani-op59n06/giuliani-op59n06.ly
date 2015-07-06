\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 6"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 6"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/06/11-2013"
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
  \time 3/4 \key a \major
}

upperVoice = \relative c' {
  \voiceOne
%  \slurDown
  <cis a>8.\mf <b gis>16 <e cis>4 r4 |
  <b gis>8. <cis a>16 <d b>4 r |
  <cis a>8 <b gis> <d e,> <cis fis,> <b d,> <a cis,> |
  <cis a>4 <b gis>\f r |
  <b a>4. q8 <b gis>4 |
  <b a>4. q8 <b gis>8[ e] |

  \mbreak
  <cis a>16 a' gis fis r8 <e gis,>8 r <dis fis,> |
  <e gis,>4 r <b gis>8. <a fis>16 |
  <a fis>4 <gis e> <gis' b,>8. <fis a,>16 |
  <fis a,>4 <e gis,> <d b>8. <cis a>16 |
  <cis a>4 <b gis> <b d,>8. <a cis,>16 |
  <a cis,>4 <gis b,> <fis' d>8. <e cis>16 |

  \mbreak
  <d b>8 <cis ais> <d b> <fis a,> <e gis,> <d b> |
  <cis a>8. <d b>16 <e cis>4 r16 <cis a> <d b> <cis a> |
  <b gis>8. <cis a>16 <d b>4 r16 <b gis> <cis a> <d b> |
  \tuplet 6/4 { <cis a>16 b cis d b e } r8 a,16 cis e d b gis\mf |
  a16 e cis e a e cis' a gis e d' b |

  \mbreak
  a16 e cis e a e cis' a gis e d' b |
  a16 e' cis a e cis' a e cis a' e cis |
  r16 a' cis e a e cis e a e cis e |
  a4\f <a, e cis>4 q |
  q2 r4

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  a4 r8 a cis a |
  e'4 r8 e, gis e |
  a4 a r |
  e'4 e,8 gis b[ e] |
  dis8 fis, b dis e[ b] |
  dis8 fis, b[ dis] e4 |

  a,4 b b |
  \repeat unfold 6 {e,8} |
  \repeat unfold 4 { \repeat unfold 6 e8 } |

  e8 e e e e e |
  a4 r16 e a cis d4 |
  e,4 r16 e gis b e4 |
  a,8 d e4 e, |
  a4 a e |

  a4 a e |
  a4 r r |
  a4 a a |
  a4 a a |
  a2 r4
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \global
      \clef "treble_8"
      \tempo "Moderato."

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
    \tempo 4 = 100
  }
}
