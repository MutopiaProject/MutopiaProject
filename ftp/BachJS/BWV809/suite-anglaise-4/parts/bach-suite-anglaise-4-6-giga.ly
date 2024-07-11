Global = {
  \key f \major
  \time 12/8
  \include "../global.ly"
}

Upper = \relative c'' {
  \clef treble
  \Global
  \partial 8
  \repeat volta 2 {
    c,8
  | f8 c f  a f a  c4 f,8  f'4.~
  | f8 e d  c d bes  { \stemUp a c f  b,! d f }
  | e8 g e << { c8 e c  b! c d  e f g } \\ {  e,8 c e  g4 c,8  c'4.~ } >>
  | << { a'8 b! c  d, c' b!  c4.  r8 r8 a8 } \\ { c,8 b! a  g a f  e g c  fis, a c } >>
  %5
  | << { bes8 d a'  g fis g  bes,4.  r8 r8 g' } \\ { g,4.  r8 r8 g8  d f! bes  e, g bes } >>
  | << { a8 c g'  f e f  g, c f  ees d ees } \\ { a,4 r8  r4.  g4.  r8 r8 a } >>
  | << { d4 e!8  e4\prall d16 e  f8 e d  c d bes } \\ { bes4.  r4.  r8 r8 bes  a4 g8 } >>
  | << { a8 g f  c' a f  c'4.\mordent  c8 g e } \\ { f8 } >>
  | c'4.\mordent  c8 a f  c'4.\mordent  r8 r8 a
  %10
  | bes d, g  bes g bes  fis d fis  a fis a
  | bes d, g  bes g bes  fis d fis  a fis a
  | bes g bes  d bes d  f4.\mordent  f8 c a
  | f'4.\mordent  f8 d bes  f'4.\mordent  r8 r8 c,8
  | f8 c f  a f a  c4 f,8  f'4.\mordent~
  % 15
  | f8 e d  c d bes  a d g  f e f
  | g,8 c f  e d e  f, a e'  d cis d
  | e,8 a d  c! b! c  d, f c'  bes a bes
  | c, f bes  a g a  b,! d g  c, e g
  | a,8 c f  b,! d f  e g c  fis, a c
  %20
  | b! a g  g a b!  c d e  e f g
  | g4.\mordent  g8 e c  g'4.\mordent  g8 d b!
  | g'4.\mordent  g8 e c  g'4.\mordent  g8 d b!
  | c8 a f'  b,! g e'  a, f d'  g, e c'
  | f,8 d c'  f, d b'!  c e, g  c,4
  }
  \break
  \repeat volta 2 {
    << r8 \\ g'8 >>
  %25
  | << { r4.  r8 r8 g' } \\ { e, g e  c e c } >>  e' g e  c e c
  | g8 c bes  a bes g  f e g  f4 \once \stemDown c''8
  | { \stemDown a8 c a  f a f  c4 f8 }  \once \stemUp f,4.~
  | f8 g a  bes a c  d c ees  d e! fis
  | g8 fis a  g f! e  f e g f e d
  %30
  | cis8 b! d  cis a cis  d cis e  d a d
  | e8 d f  e a, e'  f e g  f e d
  | cis8 e d  cis e d  cis e d  cis4\prall \once \stemUp a8
  | a'4 \once \stemUp a,8  a'4.~\mordent  a4 \once \stemUp a,8  a'4\mordent \once \stemUp a,8
  | a'4 \once \stemUp a,8  a'4.~\mordent  a4 \once \stemUp a,8  a'4\mordent e8
  %35
  | f16 g a8 d,  a d cis  d4.~  d4 d8
  | c!8 f c!  a c a  f4 c'8  c,4.~
  | c8 d ees  f g ees  d f c'  bes a bes
  | c,8 f bes  a g a  bes, d a'  g fis g
  | fis4 \once \stemUp d8  d'4.~\mordent  d4 \once \stemUp d,8  d'4\mordent \once \stemUp d,8
  %40
  | d'4 \once \stemUp d,8  d'4.~\mordent  d4 \once \stemUp d,8  d'8 e fis
  | g8 fis a  g d g  a g bes  a d, a'
  | bes8 a c  bes a g  fis e d  a'4 c,8
  | bes16 c d8 g,  d8 g fis  g4.  r8 r8 bes
  | c,8 e g  { \stemUp bes g a }  a e f  a e f
  %45
  | bes,8 d f  a f g  g d e  g d e
  | \override Stem.details.beamed-lengths = #'(7)
    \change Staff = "lower" { \stemUp a,8 }
    \revert Stem.details.beamed-lengths
    \change Staff = "upper" { c e  g e f }
    \change Staff = "lower" { g, bes }
    \change Staff = "upper" { d f d e }
  | \change Staff = "lower" { f,8 a }
    \change Staff = "upper" { c  g' e f  a e f  b! e, f }
  | c'8 e, g  { \stemDown c d e  f g a  a bes c }
  | c4.\mordent  c8 a f  c'4.\mordent  c8 g e
  %50
  | c'4.\mordent  c8 a f  c'4.\mordent  c8 g e
  | f8 d bes'  e, c a'  d, bes g'  c, a f'
  | bes, g f'  bes, g e'  f a, c  \once \stemUp f,4
  }
  \fine
}

Lower = \relative c {
  \clef bass
  \Global
  \partial 8
  \repeat volta 2 {
    r8
  | r4.  r8 r8 c  f c f  a f a
  | c4.  c,4.  f4 e8  d4 g8
  | c8 g c  s4.  s4.  s4.
  | s4. s4. s4. s4.
  %5
  | r2. r4. r8 r8 c,8
  | f8 c f  a f a  c4 f,8  f'4.~
  | f8 e d  c d bes  a4 bes8  c4 c,8
  | f c f  a f a  e c e  g e g
  | a c, f  a f a  e c e fis d fis
  %10
  | g4.  d8 bes g  d'4.\mordent  d8 a fis
  | d'4.\mordent  d8 bes g  d'4.\mordent  r8 r8 d8
  | g8 d g  bes g bes  a f a  c a c
  | d8 f, bes  d bes d  a f a  c a r8
  | r4.  r8 r8 c,,  f c f  a f a
  %15
  | c g c  e c e  f c f  a f a
  | c4.  r8 r8 cis,8  d a d  f d f
  | a4.  r8 r8 f,8  bes f bes  d bes d
  | f4 f,8  f'4.\mordent~  f4 e,8  e'4.~
  | e4 d,8  d'4 g,8  c4 e8  a,4 d8
  %20
  | g,4.  r8 g'8 f  e f g  g a b!
  | c8 g, c  e c e  b! g b!  d b! d
  | e8 g, c  e c e  b! g b!  d b! d
  | e8 c a  d b! g  c a f  b! g e
  | a8 f d  g f g c,4.~ c4
  }
  \break
  \repeat volta 2 {
    s8
  %25
  | s4.  s4.  g''4 c8  c,4.~
  | c8 d e  f e g  a g bes  a bes c
  | f,4.  r8 r8 f8  a f a  c a c
  | ees4 ees,8  d4 c8  bes4 f'8  bes c a
  | bes c a  b!4 cis8  d8 cis e  d g, bes
  %30
  | a4 a,8  a'4.\mordent~  a4 a,8  a'4\mordent a,8
  | a'4 a,8  a'4.\mordent~  a4 a,8  a'4\mordent a,8
  | a'8 g bes  a g bes  a g bes a bes g
  | f8 e g  f a e  f e g  f e d
  | cis8 b! d  cis e b!  cis b d  cis b a
  %35
  | d4 f8  a4 a,8  d8 a d  f d f
  | a4.  r8 r8 c8  a8 c a  f a f
  | c8 f c  a f a  bes f bes  d bes d
  | f4.  r8 r8 fis,  g d g  bes g bes
  | d c ees  d ees c  bes a c  bes c a
  %40
  | g fis a  g bes a  fis g a  d,4.~
  | d4 d8  d'4.\mordent~  d4 d,8  d'4\mordent d,8
  | d'4 d,8  d'4.\mordent~  d8 d e  fis e d
  | g bes, c  d c d  g, d'' bes g bes g
  | e4 c'8  c,4.~  c8 c' a  f a f
  %45
  | d4 bes'8  bes,4.  bes8 bes' g  e g e
  | \once \stemDown c4 a'8  a,4 d8  \once \stemDown bes4 g'8  g,4 c8
  | \once \stemDown a4 f'8  b,!4 g'8  c,4 a'8  d,4 b'!8
  | c,4.  r8 c8 bes  a g f  f g a
  | a8 c, f  a f a  c g c  e c e
  | f8 c f  a f a  c g c  e c e
  | a8 f d  g e c  f d bes  e c a
  | d8 bes g  c4 c,8  f,4.~  f4
  % ...
  }
  \fine
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
    title = "Giga"
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
    \tempo 4 = 200
  }
}
