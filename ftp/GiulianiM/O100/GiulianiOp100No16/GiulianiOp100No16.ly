\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 16"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 16. Rondo"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2012/01/14-1816"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
  ragged-last-bottom = ##t
}

%mbreak = \break
mbreak = {}

posI = \markup{"I"}
posII = \markup{"II"}
posIII = \markup{"III"}
posIV = \markup{"IV"}
posV = \markup{"V"}
posVI = \markup{"VI"}
posVII = \markup{"VII"}

global = {
  \time 2/4
  \key c \major
}

upperVoice = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(down)
  \override Fingering #'staff-padding = #'()
  c4 d |
  c16_([ b) a g] fis[ g a b] |
  c8[ c] d[ d] |
  f4 e16[ g, c e] |
  \mbreak
  g4 \set minimumFret=2 r16^\posII <a,>16[ <e'> <g> ] |
  \set minimumFret=0
  f4^\posI r16 g,[ d' f] |
  f16_([ e) d c] b[ a f' d] |
  r16 e,[ g c] b[ g e d] |
  r16 e[ g c] r f,[ a d] |
  \mbreak
  c16[ b a g] fis[ g a b] |
  c8[ c] d8[ d] |
  <d f>4 e16[ g, c e] |
  g4 \set minimumFret=2 r16^\posII a,16[ a' g] |
  \set minimumFret=0
  f4^\posI r16 g,[ g' f] |
  \mbreak
  e16[ c a d] c[ g b g] |
  c8 r16 g16 fis[ g a g] |
  e'8[ e] f[ f] |
  e8[ d16 g,] fis[ g a g] |
  f'8[ f] g[ g] |
  \mbreak
  f8[ e16 c] b16_([ c) d c] |
  f16[ c e c] b_([ c) d c] |
  \set minimumFret=3
  a'16^\posIII [ c, \set minimumFret=0 g'^\posI c,] b16_([ c) d e] |
  f16[ g, g' g,] e'[ g, f' g,] |
  d'8 r16 d cis16_([ d) e d] |
  \mbreak
  b8[ b] c[ c] |
  b8[ a16 d] cis_([ d) e d] |
  c8[ c] d[ d] |
  c8[ b16 \set minimumFret=2 g'^\posII ] fis_([ g) a g] |
  \set minimumFret=0
  b,16[^\posI g c g'] \set minimumFret=2 fis^\posII [g a g] |
  \mbreak
  \set minimumFret=0
  cis,16^\posI[ g \set minimumFret=2 d'^\posII g] fis[ g a g] |
  \set minimumFret=0
  fis16_([^\posI e) c a] b_([ d) c a] |
  g4 r16 b[ d g] |
  fis8[ e] d[ c] |
  b4 r16 b[ d g] |
  \mbreak
  fis8[ e] d[ c] |
  b8 r r16 b[ d e] |
  f!16[ g, e' g,] f'[ g, d' g,] |
  e'4 c16[ e g] r |
  \set minimumFret=3
  r16^\posIII b,[ d g] \set minimumFret=0 r^\posI a,[ d fis] |
  \mbreak
  <g, b g'>4 r16 b[ d g] |
  fis8[ e] d[ c] |
  b4 r16 b[ d g] |
  fis8[ e] d[ c] |
  b4 r16 b[ d g] |
  \mbreak
  f!16[ g, e' g,] f'[ g, d' g,] |
  e'16[ g, c e] f[ g, d' f] |
  e16[ g, c e] f[ g, d' f] |
  e8[ g16 e] c[ e g, c] |
  e,16[ g d g] \set minimumFret=3 r16^\posIII g[ bes e] |
  \mbreak
  r16 b![ d g] b_([ g) d b] |
  \set minimumFret=0
  r16^\posI a[ c g'] r a,[ c fis] |
  <g b, g>8 r16 g, fis16[ g a g] |
  b16[ g b g] c[ g c g] |
  \mbreak
  d'8.[ g,16] fis[ g a g] |
  c16[ g c g] d'[ g, d' g,] |
  e'8.[ g,16] fis[ g a g] |
  d'16[ g, d' g,] e'[ g, e' g,] |
  \mbreak
  f'!8[ fis,16 g] fis[ g e' g,] |
  f'!8[ fis,16 g] fis[ g e' g,] |
  f'!16[ g, e' g,] f'[ g, e' g,] |
  f'16[ g, fis g] gis[ a bes b] |
  \mbreak
  c4 d |
  c16_([b) a g] fis[ g a b] |
  c8[ c] d[ d] |
  f4 e16[ g, c e] |
  \mbreak
  g4 \set minimumFret=2 r16^\posII a,[ e' g] |
  \set minimumFret=0
  f4^\posI r16 g,[ d' f] |
  f16_([ e) d c]  b[ a f' d] |
  r16 e,[ g c] b[ g f d] |
  r16 e[ g c] r f,[ a d] |
  \mbreak
  c16_([ b) a g] fis[ g a b] |
  c8[ c] d[ d] |
  <d f>4 e16[ g, c e] |
  g4 \set minimumFret=2 r16^\posII a,[ a' g] |
  \set minimumFret=0
  f4^\posI r16 g,[ g' f] |
  \mbreak
  e16[ c a d] c[ g b g] |
  c16[ g e' d] c[ g b g] |
  c16[ g e' d] c[ g b g] |
  c8[ <g c e>8 ] <g c e>8[ <g c e>8 ] |
  <g' c e>4 <e g c>4 |
  <e, g c>2
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(up)
  \override Fingering #'staff-padding = #'()
  r16 e[ g c] r16 f,[ a d] |
  d,4 r |
  e16[ g c, g'] b,[ g' g, g'] |
  r16 g,[ a b] c4 |

  r16 g'[ e d] <cis>4 |
  r16 f[ d c!] b4 |
  c4 f,4 |
  g4 g |
  c4 f, |

  g4 r |
  e'16[ g c, g'] b,[ g' g, g'] |
  r16 g,[ a b] c4 |
  r16 g'[ e d] cis4 |
  r16 f[ d c!] b4 |

  c8[ f] e[ d] |
  e8 r r4 |
  c16[ g' c, g'] d[ g d g] |
  c,16[ g' b,8] r4 |
  d16[ g d g] e[ g e g] |

  d16[ g c,8] r4 |
  a'8[ g] r4 |
  f8[ e]  r4 |
  d8[ b] c[ d] |
  b8 r8 r4 |

  g16[ d' g, d'] a[ d a d] |
  g,16[ d' fis,8] r4 |
  a16[ d a d] b[ d b d] |
  a16[ d g,8] r4 |
  g8[ a] r4 |

  ais8[ b] r4 |
  c4 d |
  r16 g,[ b d] g8 r |
  d'16[ d, c' d,] b'[ d, a' d,] |
  g16[ g, b d] g4 |

  d'16[ d, c' d,] b'[ d, a' d,] |
  g16[ g, b d] g8 r |
  d8[ c] d[ b] |
  r16 c[ e g] c,8.[ cis16] |
  d4 d |

  r16 g,[ b d] g4 |
  a16[ d, c' d,] b'[ d, b' d,] |
  g16[ g, b d] g8 r |
  a16[ d, c' d,] b'[ d, b' d,] |
  g16[ g, b d] g8 r |

  d8[ c] d8[ c] |
  c4 b |
  c4 b |
  c4 c'8[ g] |
  e8[ d] cis4 |

  d4 r |
  d4 d |
  g,4 r |
  g8[ g] a[ a] |

  b4 r |
  a8[ a] b[ b] |
  c4 r |
  b8[ b] c[ c] |

  d4. cis8 |
  d4. cis8 |
  d8[ cis] d[ cis] |
  d4 r |

  r16 e[ g c] r f,[ a d] |
  d,4 r |
  e16[ g c, g'] b,[ g' g, g'] |
  r16 g,[ a b] c8 r |

  r16 g'[ e d] cis4 |
  r16 f[ d c!] b4 |
  c4 f, |
  g4 g |
  c4 f, |

  g4 r |
  e'16[ g c, g'] b,[ g' g, g'] |
  r16 g,[ a b] c4 |
  r16 g'[ e d] cis4 |
  r16 f16[ d c!] b4 |

  c8[ f] e[ d] |
  c4 c8[ g] |
  c4 c8[ g] |
  c8[ c] g[ e] |
  \ottava #1 c''4\4 \ottava #0 c\4 |
  c,2
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Allegretto."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
%      \mergeDifferentlyHeadedOn
%      \mergeDifferentlyDottedOn
      \clef "treble_8"
      \global
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab"
    <<
      \clef moderntab
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
