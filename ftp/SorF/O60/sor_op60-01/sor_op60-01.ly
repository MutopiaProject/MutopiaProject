\version "2.6.5"
\header {
 title    = "25 Progressive Lessons"
 opus     = "Opus 60.1"
 composer = "Fernando Sor"

 mutopiatitle      = "25 Leçons Progressives, no 1"
 mutopiacomposer   = "SorF"
 mutopiaopus       = "O 60"
 mutopiainstrument = "Guitar"
 source            = "http://fernandosor.free.fr/op60/sorf-op60-n01.gif"
 date              = "19th C."
 style             = "Classical"
 copyright         = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer        = "Fabrice De Volder"
 maintainerEmail   = "fabrice.devolder@fr.sfr.com"
 lastupdated       = "2006/02/10"
 filename          = "sor_op60_01.ly"

 source            = "http://fernandosor.free.fr/op60/sorf-op60-n01.gif"
 enterdby          = "Fabrice De Volder"

 footer = "Mutopia-2006/02/10-666"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

oneVoice = \relative c' {
  \repeat volta 2 {
    c'2-1 b4 g
    c2-1 b4 g
    c-1 d-4 e g-4
    f-1 e d-4 g,
    c2-1 b4 g
    c-1 e d-4 b
    a-2 c-1 d, fis'-3
    g-4 <d, g b> g,-2 r
  }
  \repeat volta 2 {
    g''-4 g, e' g-4
    f-1 g, d'-4 f-1
    e g, c-1 e
    d-4 b g f-3
    e-2 g c-1 e,
    f-3 a-2 d, f
    e-2 g g,-3 b-2
    c-3 \set fingeringOrientations = #'(left)<g' c-1 e> c, r
  }
}

\score {
  \context Staff <<
    \time 4/4
    \key c \major
    \clef violin
    \set Staff.midiInstrument ="acoustic guitar (nylon)"
    \oneVoice
  >>
\layout {}
\midi { \tempo 4=160}
}
