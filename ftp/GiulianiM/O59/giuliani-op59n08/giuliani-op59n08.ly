\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 8"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 8"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/05/31-2011"
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
  \time 2/4 \key d \major
}

upperVoice = \relative c {
  \voiceOne
%  \slurDown
  \partial 4 { d16( fis) a d\mf } |
  d16( cis) e cis a8 r |
  r4 r16 a d cis |
  ais16 b e dis fis e g e |
  d!16( cis) b a! d, e a d |
  d16( cis) e cis a8 r |
  r4 r16 fis'( e) d |
  \mbreak

  cis16 e d b e, a e gis |
  a4 r16 a a' fis |
  dis4 r16 b dis fis |
  g4 r16 b, g' e |
  cis4 r16 a cis e |
  fis4 r16 a, d cis |
  ais16 b dis e r a, d cis |
  \mbreak

  ais16 b dis e r a, d cis |
  ais16 b g' fis e b e d |
  d16( cis) b a d,( fis) a d |
  d16( cis) e cis r4 |
  r4 r16 a d cis |
  ais16 d e dis fis e g e |
  d16( cis) b a d,( fis) a d\f |
  d16( cis) e cis r4 |
  \mbreak

  r4 r16 fis( e) d |
  cis16 b g' e d fis e cis |
  d16 a' fis( d) cis a' g( e) |
  d,16 <fis' d> b,, <fis'' d> g,, <e'' d> a,, <e'' cis> |
  R2 |
  d,16 <fis' d> b,, <fis'' d> g,, <e'' d> cis, <e' cis>\f |
  r16 d a' fis d a fis a |
  d,4 <fis' d a> |
  <d, a>2

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 4 { r4 } |
  a4 a16( cis) e g |
  g16 fis a fis d4 |
  g,4 r |
  a4 r |
  a4 a16( cis) e g |
  g16 fis a fis d4 |

  a8 d e e |
  r16 a,( cis) e a,4 |
  r16 c' a fis dis4 |
  r16 e g b e,,4 |
  r16 bes''16 g e b4 |
  r16 d' a fis d4 |
  g,4 fis |

  g4 fis |
  g4 gis |
  a4 r |
  a4 a16( cis) e g |
  g16 fis a fis d4 |
  g,4 r |
  a4 r |
  a4 a16( cis) e g |

  g16 fis a fis d4 |
  g,4 a8 a |
  d4 a |
  d8 b g a |
  d16 a' fis d cis a' g e |
  d8 b g cis |
  d4 r |
  d4 d |
  fis,2
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
    \tempo 4 = 82
  }
}
