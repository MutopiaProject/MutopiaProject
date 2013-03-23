\version "2.16.1"
\header {
 title    = "25 Progressive Lessons"
 opus     = "Opus 60.5"
 composer = "Fernando Sor"

 mutopiatitle      = "25 Leçons Progressives, no 5"
 mutopiacomposer   = "SorF"
 mutopiaopus       = "O 60"
 mutopiainstrument = "Guitar"
 source            = "http://fernandosor.free.fr/op60/sorf-op60-n05.gif"
 date              = "19th C."
 style             = "Classical"
 copyright         = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer        = "Fabrice De Volder"
 maintainerEmail   = "fabrice.devolder@fr.sfr.com"
 filename          = "sor_op60_05.ly"

 source            = "http://fernandosor.free.fr/op60/sorf-op60-n05.gif"
 enterdby          = "Fabrice De Volder"

 footer = "Mutopia-2013/03/23-673"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

basse = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \repeat volta 2 {
    a2.
    d2.
    e4. g,4.
    a2.
    a
    d
    e
    s2. 
  }
  \repeat volta 2 {
    e2.~ 
    e2.
    e,2.
    a2.
    d4. g4.
    c,-3 f-4
    d e-2
    a, s
  }
  \repeat volta 2 {
    \key a \major
    a2. 
    e
    e
    e
    a
    e
    e
    a4. s
  }
  \repeat volta 2 {
    e2.
    e
    e~
    e
    e
    e
    e
    e'
    a,
    e
    a
    e
    a
    d
    e4. e,
    a s
  }
}

melodie = \relative c' {
  \voiceOne
  \override Staff.NoteCollision #'merge-differently-headed = ##t
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  \repeat volta 2 {
    a8\segno a'-2 b c-1 d-4 e
    d, d'-4 e f-1 d-4 b
    e,-2 gis-1 b g, e'' d-4 
    a, c'-1 b d-4( c-1) b
    a, a'-2 b c-1 d-4 e
    d, d'-4 e f-1 d-4 b
    e,-2 gis-1 b a-3 e-2 c'-1
    b gis e' \oneVoice e,,4 r8
  }
  \repeat volta 2 {
    \voiceOne e'8-2  gis-1 b e d-4 b
    c-1 a-2 c-1 e c a
    e, gis'-1 b e d-4 b
    a, c'-1 b a-2 c-1 e
    d, f'-1 f g, b b
    c, e' e f, a-2 a
    d, b' b e, gis-1 gis
    a, a'-3 e-2 \oneVoice a,4 r8
    \mark "Fin."
  }
  \repeat volta2 {
    \key a \major
    \voiceOne a8 cis'-2 a-1 e'4.
    e,,8 d''-2 cis-1 b4.
    e,,8 cis''-1 b a-1 b cis-2
    b e dis-4 fis-1( e) d-2
    a, cis'-1 e-2 e4.
    e,,8 d''-2 cis-1 b4.
    e,,8 cis''-2 e d-4 b-0 gis-1
    a, a'-2 cis-3 \oneVoice a,4 r8 
  }
  \repeat volta 2 {
    \voiceOne e8 gis'-1 b d4.-4
    e,,8 cis''-2 e a4.-4
    e,,8 gis''-3 fis-1 fis e d-2
    cis-1 d-2 dis-3 e-0 cis-3 a-2
    e, gis'-1 b d4.-4
 
    e,,8 cis''-1 e a4.~
    a8 fis-1 dis-3 b-0 a-2 fis-4
    e-2 gis-1 b-0 e-0 d-4 b-0
    a, cis'-3 a-2 e'4.-0
    e,,8 d''-4 cis-3 b4.
    a,8 cis'-3 b-0 a-2 b cis
    
    b e dis-4 fis-1( e-0) d-2
    a, cis'-1 d-2 e4.~
    e8 d-2 fis-1 a4.-4~
    a8 e cis-2~ cis d-4 b
    a-3 e-2 cis'-4 \oneVoice a,4 r8\segno
   }
}


\score {
      \context Staff = "guitar" << 
      \time 6/8
      \key c \major
      \clef violin
      \set Staff.midiInstrument ="acoustic guitar (nylon)"
      \transposition c
        \context Voice = "melody" { \melodie }
        \context Voice = "bass"   { \basse  }
      >>
  \layout {}

  \midi {
    \tempo 4 = 80
    }


}
