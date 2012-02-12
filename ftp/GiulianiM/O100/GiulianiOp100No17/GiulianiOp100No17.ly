\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 17"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 17. Prelude."
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2012/01/14-1817"
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

%mbreak = \break
mbreak = {}

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
  \key c \major
  \override Staff.BarLine #'transparent = ##t
}

upperVoice = \relative c {
  \voiceOne
  \slurDown
  a16^\markup{\italic "a piacere"} [ a' c e b' c^\posV b a]
  a8^\posII [ ^\markup{\italic tenuto} gis8]
  g8^\posI [ \trill f] |
  f^\trill[ e] e^\trill[ d] d^\trill[ c c c] |
  \mbreak
  b8[ c16( b) ais] b[ c( d) e f( e) g( f) e d( c) |
  b16 a] gis8[ e] dis16([ fis) a c dis fis a( c) ] s8 |
  \mbreak
  s8 a,,16[ c e a c e a^\posVIII c e f] r4 |
  <b,, e g>4^\posIV <c e a>8[^\posV c'16 a e(^\posI a) c, e a, c e, a c, e] a,4^\fermata
  \override Staff.BarLine #'transparent = ##f \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  a4 s4 <b' d>4 <a c> |
  <gis b>4 <e gis!> <f a> s4 |
  <d a'>4 s4*3 |
  s4*4 |
  e,4 s4 s4 e4 |
  r4 a4 s2
}

\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
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
