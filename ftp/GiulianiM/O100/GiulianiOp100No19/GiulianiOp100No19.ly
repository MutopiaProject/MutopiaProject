\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 19"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 19. Prelude."
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2012/01/14-1819"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
  ragged-last-bottom = ##t
}

posI = \markup{"I"}
posII = \markup{"II"}
posIII = \markup{"III"}
posIV = \markup{"IV"}
posV = \markup{"V"}
posVI = \markup{"VI"}
posVII = \markup{"VII"}
posVIII = \markup{"VIII"}

global = {
  \time 4/4
  \key g \major
  \set Staff.autoBeaming = ##f
}

upperVoice = \relative c {
  \voiceOne
  \slurDown

  g8_\mf[ a16( b] c)[ d( e fis)] g([ a) b( c] d)[ e fis^\posVII( g) ] |
  fis16([ g fis) e] fis([ g a) b] c([ b) a( g)] fis[ e( d) c] |

  b16[ g b d] g[ b, d g] b[ d, g b] d8.[ b16] |
  a[ c g b] fis16[ a e g] d^\posV[ fis c^\posIII e] b^\posII[ d a c^\posI] |
  <g b>16[ g,( a b] c)[ d( e fis)] g16([ a) (b c] d)[ e fis g] |

  fis16([ g fis) e] fis([ g a) b] c([ b) a( g)] fis[ e( d) c] |
  b16[ g b d] g[ b, d g] b[ d, g b] d8.[ b16] |
  a16[ c g b] fis^\posV[ a e^\posIII g] d[^\posII fis c e^\posI] b[ d a c] |

  <g b>8[ g,16 a8(] b16[ c) d( e] f)[ f'16( e)] f([ e) d( c)] |
  b8[ g16( a)] b[ c d e] f([ e) d( c)] b([ a g) f] |

  e16[ c e g] c[ e, g c] e[ g, c e] g8[ g] |
  bes8^\posIII[ g16( bes)] e,16^\posII[ g cis, e] bes[ cis g bes] e,[ g cis, e] |
  r4^\posI <g b g'>4 r4 <a d fis> |
  <g b g'>4 r4 r2
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \repeat unfold 4 {
    R1 |
    d4 r d r |
  }
  % slide the rest over
  \once \override MultiMeasureRest #'extra-offset = #'( 8 . 0 )
  R1 |
  \repeat unfold 3 { R1 | }
  d4 r d r |
  g,4 r r2 |
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Vivace."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \clef "treble_8"
      \global
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
  >>
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
