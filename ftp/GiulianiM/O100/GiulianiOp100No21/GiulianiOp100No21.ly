\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 21"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 21. Prelude."
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2012/01/14-1821"
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

global = {
  \time 4/4
  \key d \major
  \override Staff.BarLine #'transparent = ##t
  \set Staff.autoBeaming = ##f
}

% I followed a number of sources during this transcription. The
% original has no bar lines and no time signature but it clearly
% follows 4/4 time until the last 2 measures so I didn't turn
% \cadenzaOn until then and used bar checks to make my work easier.
% I also chose to follow the original beaming style.

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  %\cadenzaOn

  <d fis d'>8^VII[ cis'16( b)] a16[ g fis e] d^II[ cis b a] g[ fis e d] |
  cis16[ g' e cis] b[ g' e d] bes[ g' e bes] a[ g' e a,] |
  d8^II[ fis16 a] d[ fis, a d] fis[ d a'( g)] fis[ e d( c)] |
  b16[ g, b d] g[ b, d g] b[ d,^III g b] d[ g, b d] |
  g16[ b, d g] b[ d, g b] d4 <b, eis>4^I |
  <d fis>4 <d fis> <d g> <d gis> |
  a,8[ d16 fis] a[ d fis a] d8^X[ fis] a[ g,,,] |
  \cadenzaOn
  a8[ <d' fis d'>8^VII ] a,8[ <e'' g cis!>8 ]
    <d fis d'>16[ a'^II fis] d[ a fis] 
  d2\fermata

  \override Staff.BarLine #'transparent = ##f
  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  d,4_\mf s2 s4 |
  \skip 1*3 |
  s4 s2 gis,4 |
  a4 c b bes |
  s1 |
  s2 d4
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \global
      \set Staff.instrumentName = #"Vivace."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \clef "treble_8"
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
