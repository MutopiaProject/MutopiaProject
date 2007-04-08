\version "2.6.5"
\header {
 title    = "25 Progressive Lessons"
 opus     = "Opus 60.2"
 composer = "Fernando Sor"

 mutopiatitle      = "25 Leçons Progressives, no 2"
 mutopiacomposer   = "SorF"
 mutopiaopus       = "O 60"
 mutopiainstrument = "Guitar"
 source            = "http://fernandosor.free.fr/op60/sorf-op60-n02.gif"
 date              = "19th C."
 style             = "Classical"
 copyright         = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer        = "Fabrice De Volder"
 maintainerEmail   = "fabrice.devolder@fr.sfr.com"
 lastupdated       = "2006/02/10"
 filename          = "sor_op60_02.ly"

 source            = "http://fernandosor.free.fr/op60/sorf-op60-n02.gif"
 enterdby          = "Fabrice De Volder"

 footer = "Mutopia-2006/02/10-667"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

total = \relative c' {
    g'4 e' c-1
    c b8 c-1 d4-4
    g, f' d-4
    d c8-1 d-4 e4
    g, c-1 e
    g-4 f d8-4 b
    c4-1 g e'

    cis-2 d8-4 c-1 b a-2
    g4 e' c-1
    c b8 c-1 d4-4
    g, f' d-4
    d c8-1 d-4 e4
    g, c-1 e
    g-4 f-1 d-4
    c8 g e'4 d8-4 b

    c4-1 c, r
    b' g d'-4
    c2-1 a4-2
    d, a'-2 c-1
    b2 g4
    g'-4 fis-2 f-1
    e c-1 a-2
    b8 d, d'4-4 c8-1 a-2

    g4 g,-3 r
    g' b d-4
    g, c-1 e 
    g, f'-1 e 
    d8-4 cis-2 d b g4 
    g b8 c-1 d4-4 
    g, c8-1 d-4 e4 
    g, d'8-4[ f] e c-1

    d2-4 g,4 
    e' d-4 c-1 
    b gis-1 a-2 
    f'-1 e d-4 
    c2-1 b4 
    g g'-4 f-1
    \voiceOne
    <<
      {
        e b c-1
        d-4 a-2 b
        c2-1 b4\rest \bar "|." 
      }
      \context Voice="1" { \voiceTwo
         c,4-3 d e-2
         f2-3 g4
         c,2-3 s4
      }
    >> 
    \oneVoice
}


\score {
  \context Staff <<
    \time 3/4
    \key c \major
    \clef violin
    \set Staff.midiInstrument ="acoustic guitar (nylon)"
    \total 
  >>
\layout {}
\midi { \tempo 4=120}
}
