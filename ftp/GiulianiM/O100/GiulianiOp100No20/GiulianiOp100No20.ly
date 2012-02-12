\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 20"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 20. Prelude."
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2012/01/14-1820"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

% As a prelude, Giuliani chose to write without bar lines or a time
% signature, allowing the musician to play 'a piacere' or 'at your
% pleasure.'  There is a closing bar line so the bar engraver is not
% removed, the bars are simply made invisible until the end.

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

upperVoice = \relative c, {
  \voiceOne
  \slurDown
  \cadenzaOn
  \key g \major
  \override Script #'direction = #DOWN
  \override Staff.BarLine #'transparent = ##t
  \set Staff.autoBeaming = ##f

  e8([ g16 b)] e8[ g16 b] e8[ g16^\posII fis] a16([ g) fis e]
  dis32^\posIV[ a b dis] e[ a, b e] dis[ a b dis] e[ a, b e] d4^\fermata
  \bar "|"
  fis,,8[ a( b) dis fis a b] dis16^\posII_\staccato[ e( fis) g\staccato]
  a([ fis) e\staccato dis\staccato]
  e32[ g, b e] e^\markup{" I"}[ a, c e] e[ g, b e] e[ a, c e] <g, b e>4^\fermata
  \bar "|"
  e,8[ gis16 b] d!([ e) gis\staccato b\staccato] dis[ e f( e)]
  g!16([ f) e\staccato dis\staccato] c[ gis,! a( c)] e16[ a c e]
  a8^\posV[ c16( b)] a\staccato[ g(fis) e\staccato] dis!16^\posIV[ a c dis] dis[ a c dis]
  \bar "|"
  e16^\posV[ ais, cis e] e[ ais, cis e] b,8^\posI[ e16 gis] b[ e, gis b] e[ gis, b e]
  g16^\posIII[ cis, e g] b4 g8[ e b gis e^\posI] s8
  << { s8 b[ <gis' b g'>8 ] dis8[ <ais' b fis'>8 ] <b, e gis b e>4^\fermata } \\
     { s8 b4 dis4 e,4 } >>

  \override Staff.BarLine #'transparent = ##f \bar "|."
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"A piacere."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \clef "treble_8"
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
