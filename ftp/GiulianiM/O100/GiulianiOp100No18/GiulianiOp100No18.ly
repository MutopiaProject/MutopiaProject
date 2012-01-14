\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 18"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 18. Prelude."
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2012/01/14-1818"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
  ragged-last-bottom = ##t
  \context {
    \Staff
      \remove Time_signature_engraver
  }
  \context {
    \Score
    \remove Bar_number_engraver
  }
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
  \key c \major
  \override Staff.BarLine #'transparent = ##t
  \set Staff.autoBeaming = ##f
}

upperVoice = \relative c {
  \voiceOne
  \slurDown |
  \cadenzaOn
  c8[ e16 g c e, g c e, g c e g g8]
  b,,8[ e16 gis b e, gis b e gis, b e gis8 gis ]
  a,,8[ e'16 a c e, a c e a, c e a gis8 f e ]
  \bar "|"
  dis16^\posIV [ a c dis ]
  e[ gis, b e]
  cis^\posII [ g! bes cis ]
  dis[ f, a dis ]
  c![ f, aes bes]
  c[ e, g c]
  g,8[ \once \override Voice.Accidental #'stencil = ##f a'32
  dis cis e dis f( e) g( f) a^\posIV gis b a g^\posI f16 e( g f) a,8 e' dis]
  \bar "|"
  << {
    \repeat unfold 4 { g,,32[ e' g c] }
    \repeat unfold 4 { g,32[ ees' g c] }
    \repeat unfold 4 { g,32[ d' g c] }
  } \\ { g,8[ g g g] g[ g g g ] g[ g] g[ g] } >>
  \bar "|"
  \repeat unfold 4 { g32[ d' g b] }
  c32[ c, e g] c[ e, g c] e[ g,^\posIII c e] g[ c, e g]
  c32^\posVIII [ e, g c]
  % last pos markup is tweaked closer to the beam below
  e[ c g c e, g c, e
     \once \override TextScript #'extra-offset = #'( 0 . -1.5 )
     g,^\posI c e, g c,8] s4
  << { <e g c e>4 } \\ { c4 } >>
  \override Staff.BarLine #'transparent = ##f \bar "|."
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Allegro."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \clef "treble_8"
      \global
      \context Voice = "upperVoice" \upperVoice
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
