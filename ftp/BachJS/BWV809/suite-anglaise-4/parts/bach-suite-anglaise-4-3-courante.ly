Global = {
  \key f \major
  \time 3/2
  \include "../global.ly"
}

Upper = \relative c'' {
  \clef treble
  \Global
  \partial 8
  \repeat volta 4 {
    f8
  | f4. c8  d4. f8  \once \stemUp c4 bes8\prall a16 bes
  | { \stemUp a8 c d e }  f( a g a)  bes( a g f)
  | c'4 c,4  d4. bes'8  a4( g8.\prall f16)
  | e4.\prall f8  g4 a8 bes  a g f e
  %5
  | { \stemDown f4.\mordent e8  d4 c8 b!  c4.\mordent d8 }
  | b!4.\prall a8  g4. g'8  f e d c
  | a'4. e8  f4. g8  d4.\prall c8
  | << c2.~ \\ { } >>  << { c2 c8\rest } \\ { g2 g8\rest } \\ { e2 d8\rest } >>
  }
  \repeat volta 4 {
    g8
  | g4. c8  bes4.\prall a8  bes8 d c4
  %10
  | << { a8\prall c d ees  f a, bes g'  c, ees d ees } \\ { r4 r8 f,  ees4.\prall d8  ees8 g f4~ } >>
  | << { ees'8 d c bes  d4. ees8  c4.\prall c8 } \\ { f,4 r4  bes2  bes2 } >>
  | << { c4.\mordent d8  bes4.\prall a8  a4.\prall g8 } \\ { a2  g2 fis2 } >>
  | << g2. \\ g2. >> g'4 d4.\prall e8
  | f4.\mordent e8  d4 c8 bes  a4.\prall bes8
  %15
  | c4. bes8  a4 g8 f  bes4.\mordent c8
  | d4.\mordent { \stemUp c8  bes8 a g bes  a g a f }
  | e4. d8  c4 { \stemDown c'  f4.\mordent( g16 a) }
  | { \stemDown a4 g8 f  e8 d bes'4  e,4.\prall f8 }
  | << { bes,4.\mordent c8  a4.\prall g8  g4.\prall f8 } \\ { g2 f e }>>
  %20
  | << f2.~ \\ { } >> << { f2 b8\rest } \\ { c,2 c8\rest } >>
  }
}

Lower = \relative c {
  \clef bass
  \Global
  \partial 8
  \repeat volta 4 {
    r8
  | <<
    {
      r8 g'8 a4
      bes4 c
      \change Staff = "upper" {
        \stemDown d e
      }
    }
      \\ f,1.
    >>
  | \change Staff = "upper" {
      \stemDown f'4. c8 d4. f8
    }
    \change Staff = "lower" {
      \stemDown c4( bes8\prall a16 bes)
    }
  | a8 f g a  bes( c a bes  c b! a g)
  | c8 b! c
    \change Staff = "upper" {
      d  e g f g
    }
    \change Staff = "lower" {
      cis,4 a
    }
  %5
  | d4 d,8 e  f8( g e f  g fis e d)
  | g8 a g f!  e g f e  d8 c  c'4
  | f,8 e d c  { \stemUp b!8 g c4 }  \once \stemDown g'4 g,4
  | << { c2. c2 r8 } \\ { r4 << { a4\rest g } \\ c,2~ >>  c2  r8 } >>
  }
  \repeat volta 2 {
    r8
  | << { a''4\rest d,  e f  g e } \\ c1. >>
  %10
  | f1.
  | bes8 f g a  bes d, e! c' fis, a g a
  | { \stemDown fis4\prall d  g c,  d } \once \stemUp d,
  | g8 d' e fis  g bes a bes  c bes a g
  | d'4 d,4.  f8 e f  g f e d
  %15
  | a'8 bes a g  f a bes c  d ees d c
  | bes8
    \change Staff = "upper" {
      d e! f  g4
    }
    \change Staff = "lower" {
      \once \stemUp d,  e f
    }
  | c8 e d e  f e d c  { \stemUp bes a g f }
  | bes2~  bes8 c d c  bes a g f
  | e8 c' d e  f4 { \stemUp bes,  c } c,
  %20
  | << { r4 a' c << a'2 \\ f2 >> }
       \\ { f,2.~ f2 } >>
    << a'8\rest \\ d,8\rest \\ f,8\rest >>
  }
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Upper
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Lower
    >>
  >>
  \header {
    title = "Courante"
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 2 = 90
  }
}
