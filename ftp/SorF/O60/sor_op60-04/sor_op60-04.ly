\version "2.6.5"
\header {
 title    = "25 Progressive Lessons"
 opus     = "Opus 60.4"
 composer = "Fernando Sor"

 mutopiatitle      = "25 Leçons Progressives, no 4"
 mutopiacomposer   = "SorF"
 mutopiaopus       = "O 60"
 mutopiainstrument = "Guitar"
 source            = "http://fernandosor.free.fr/op60/sorf-op60-n04.gif"
 date              = "19th C."
 style             = "Classical"
 copyright         = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer        = "Fabrice De Volder"
 maintainerEmail   = "fabrice.devolder@fr.sfr.com"
 lastupdated       = "2006/02/21"
 filename          = "sor_op60_04.ly"

 source            = "http://fernandosor.free.fr/op60/sorf-op60-n04.gif"
 enterdby          = "Fabrice De Volder"

 footer  = "Mutopia-2006/02/25-672"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

oneVoice = \relative c' {
  \repeat volta 2 {
    \partial 4 g'4
    ees8.-1 d16 c4-3 c'-1
    b8. c16-1 d4-4 g,
    c8.-1 d16-3 ees8-4[ e] f-1 fis-2
    g4-4 g, g
    c8.-1 d16-3 ees4-4 d8.-3 c16-1

    bes8.-3 aes16-2 g8 f-3 ees-1 d
    c4-3 aes'-1 f8.-4 d16
    \partial 4*2 ees4-1 r
  }
  \repeat volta 2 {
    \partial 4 bes'4-3
    g'8.-4 f16-1 e4 c-1
    aes'8.-4 g16-3 f4-1 ees-4
    des8-2 c-1 des-2 aes'-4 f-1 des-2
    c4-1 b g
    f'8.-1 d16-4 b4 g
    c8.-1 d16-3 ees8-4 d-3 c-1 bes-3
    aes-1 g f-3 ees-1 d c-3
    g'4-0 g,-2 g'
    ees8.-1 d16 c4-3 c'-1
    b8. c16 d4-4 g,

    c8.-1 d16-3 ees8-4[ e] f-1 fis-2
    g4-4 g, g'8.-4 f16-1
    e8 g-4 e c-1 bes-4 g
    f8.-3 g16 aes4-1 g8 fis-4
    g8. c16-1 ees4-4 d8.-3 b16
    c4-1 c,4 r
  }
}

\score {
  \context Staff <<
    \time 3/4
    \key ees \major
    \clef violin
    \set Staff.midiInstrument ="acoustic guitar (nylon)"
    \transposition c
    \oneVoice
  >>
\layout {}
\midi { \tempo 4=160}
}
