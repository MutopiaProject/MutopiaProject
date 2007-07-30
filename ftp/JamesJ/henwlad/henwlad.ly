% -*- coding: utf-8 -*-
\version "2.10.10"

\paper {
    line-width = 18\cm
}

\header {
    title = "Hen Wlad Fy Nhadau"
    subtitle = "Anthem Genedlaethol Cymru - Welsh National Anthem"
    composer = "Iago ap Ieuan (1833-1902)"
    poet = "Ieuan ap Iago (1809-1878)"
    source = "Llyfrgell Genedlaethol Cymru"
    enteredby = "David Chan"
    maintainer = "David Chan"
    maintainerEmail = "david@MutopiaProject.org"
    lastupdated = "2007-08-28"

    mutopiacomposer = "JamesJ"
    mutopiainstrument = "Voice"
    style = "Song"
    mutopiacopyright = "Public Domain"
    license = "Public Domain"

 footer = "Mutopia-2007/07/30-1017"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {
<<
  \new Voice { \relative {
    \clef "treble"
    \key es \major
    \time 3/4
    % verse
    s2 es4 |
    g f es | bes' as g | es' es c8( d) | es2 c4 |
    bes g es | es d es | g f f | f2 g8( as) |
    bes4 bes g8( as) | bes4 bes c8( d) | es4 es c8( d) | es2 c4 |
    bes g es | f8 g4. f4 | es2.-\fermata |
    \bar "||"
    % chorus
    bes'-\fermata |
    \once \override Script #'padding = #1.5 % make rest high
    es-\fermata |
    bes4( g) es | es( d) es | f2-\fermata g8( as) |
    bes2 g8( as) | bes2 c8( d) | es2 c8( d) | es2 c4 |
    bes g es | f8 g4. f4 | es2. |
    \bar "|."
  }}
  \addlyrics {
    Mae hen wlad fy nha -- dau yn an -- nwyl i __ mi;
    Gwlad beirdd a chan -- tor -- ion, en -- wog -- ion o fri;
    Ei __ gw -- rol ry -- fel -- wyr, gwlat -- gar -- wyr tra mad;
    Tros ry -- ddid co -- llas -- ant eu gwaed.

    Gwlad! Gwlad! Plei -- diol wyf __ i'm gwlad;
    Tra'r môr yn fur i'r bur hoff bau,
    O by -- dded i'r hen -- iaith bar -- hau.
  }
  \addlyrics {
    \set stanza = "IPA hints " % show non-Welsh speakers how to pronounce
    \override LyricText #'font-family = #'sans
    \override LyricText #'font-size = #-1
    ɑɨ " " ʷl və " " ɑɨ ə " " ui " "  " "
    ʷl ð " " χ " "  " "  " "  " "  " "  " " v
    " "  u  " "  ə  v    i, ʷl  " "  i  " "  " "
    " " ə ðid " " ɬ " " ei ɑɨ

    ʷl, ʷl " "  " " uiv " " ʷl
    " "  " " ə vɨ " " ɨ " " ɑɨ
    " "  ə ðed " "  " "  ʲɑi " " ɑɨ
  }
>>

\layout {}
\midi {}
}
