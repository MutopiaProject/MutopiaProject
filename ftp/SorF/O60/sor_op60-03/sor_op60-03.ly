\version "2.16.0"
\header {
 title    = "25 Progressive Lessons"
 opus     = "Opus 60.3"
 composer = "Fernando Sor"

 mutopiatitle      = "25 Leçons Progressives, no 3"
 mutopiacomposer   = "SorF"
 mutopiaopus       = "O 60"
 mutopiainstrument = "Guitar"
 source            = "http://fernandosor.free.fr/op60/sorf-op60-n03.gif"
 date              = "19th C."
 style             = "Classical"
 copyright         = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer        = "Fabrice De Volder"
 maintainerEmail   = "fabrice.devolder@fr.sfr.com"
 filename          = "sor_op60_03.ly"

 source            = "http://fernandosor.free.fr/op60/sorf-op60-n03.gif"
 enterdby          = "Fabrice De Volder"

 footer  = "Mutopia-2006/02/16-671"
 tagline = ""
}

notes = \relative c' {
  \repeat volta 2 {
    c4-2 b-1 c-2 e-1
    g g,-2 g' f-2
    e-1 d c-2 d
    b-1 a g-2 a8 b-1
    c4-2 d e-1 c-2
    d e8-1 fis-3 g a-1 b-3 g

   e4-1 c-2 a d
   g,-2 g'8 f-3 e4-1 d
  }
  \repeat volta 2 {
    cis-3 e-1 a, b8-1 cis-3
    d4 e-1 f-2 g8 a-1 
    bes4-2  g e-1 a8-1 g
    f4-2 e d c-2

    b-1 d g,-2 g'8 f-3
    e4-2 d c-3 c'8-1 b
    a-2[ g] fis-4[ e-1] d[ c-2] b-1 a
    g4-2 b8-1 d g4 f-3
    e-1 d c-2 d8 e-1
    f4-2 g a-1 g 

    fis-3 e-1 d e8-1 fis-3
    g4 a-1 b-3 a-1
    gis-1 fis-4 e-2 fis8-4 gis-1
    a4-2 b-0 c-1 b-0
    a8-2[ g] f-3 e d4 g
    c,-3 c'-1 c,-3 r
  }
}

\score {
  \context Staff <<
    \time 4/4
    \key c \major
    \clef violin
    \set Staff.midiInstrument ="acoustic guitar (nylon)"
    \transposition c \notes
  >>
\layout {}

  \midi {
    \tempo 4 = 160
    }


}
