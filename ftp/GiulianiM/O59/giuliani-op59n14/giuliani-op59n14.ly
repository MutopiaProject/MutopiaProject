\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 14"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 14"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/08/04-2038"
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
  \time 2/4 \key a \major
}

mainDynamics = {
  \partial 4 { s8 s8\p } | s2*7 | s4 s8 s8\f | s2*2 |
  s2*41 | s4 s8 s8\f | s2*2
}

upMotifA = {
  cis8 a d b |
  e8 cis a fis' |
  e8 d b dis |
  e8 cis a b |
  cis8 a d b |
  e8 cis a' gis |
}

upperVoice = \relative c' {
  \voiceOne
  \partial 4 { a8 b } |
  \upMotifA
  \slashedGrace { gis8 } <fis d>8 <e cis> <d b> <cis a> |
  <b gis>4 a8 b |
  \upMotifA
  \slashedGrace { gis16} <fis d>8 <e cis> <d b> <cis a> |
  <b gis>4 gis8 a |
  b8 gis cis a |
  d8 b e, d' |
  cis8 a e cis' |
  b8 gis e fis |
  gis8 a b cis |

  d8 b e d |
  cis8 a e' cis |
  b8 gis b e |
  fis8 b, gis' fis |
  e8 gis, b e |
  fis8 b, gis'( fis) |
  \repeat unfold 2 { r8 gis,[ b e] } |
  r8 a,[ c fis] |
  r8 b,[ d gis] |
  r8 cis,[ e a] |

  r8 cis,[ e a] |
  r8 d,[ e b'] |
  r8 cis,[ e ais] |
  <b e, d>4 a,8 b |
  cis8 a d b |
  e8 a, cis e |
  g8 e a g |
  fis8 d fis a |
  gis e gis b |
  a8( e) cis a |
  e'( d) b gis |

  r8 a[ cis e] |
  d8 b d e |
  cis8 a cis e |
  d8 b d e |
  a,,8 <cis' a> fis, <cis' a> |
  d,8 <b' a> e, <b' gis> |
  r8 a[ cis e] |
  a8[ e cis e] |
  s2 |
  <a cis, a>4 r |
  <a, e cis a>2

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 4 { a4\rest } |
  \repeat unfold 2 { a4 a\rest } |
  e4 a\rest |
  \repeat unfold 4 { a4 a\rest } |
  e4 a\rest |
  \repeat unfold 2 { a4 a\rest } |

  e4 a\rest |
  \repeat unfold 4 { a4 a\rest } |
  \repeat unfold 6 { e4 e\rest } |

  e4 e\rest |
  a4 a\rest |
  \repeat unfold 2 { e4 e\rest | <e a'>4 e\rest } |
  \repeat unfold 5 { e4 e\rest } |

  \repeat unfold 4 { e4 e\rest } |
  \repeat unfold 3 { a4 a\rest } |
  d4 r |
  e,4 e\rest |
  a4 a\rest |
  e4 e\rest |

  a4 a\rest |
  e4 e\rest |
  a4 a\rest |
  e4 e\rest |
  a4 fis' |
  d4 e |
  a,4 a\rest |
  R2 |
  a4 a\rest |
  a4 a\rest |
  a2
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
    \new Dynamics { \mainDynamics }
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
