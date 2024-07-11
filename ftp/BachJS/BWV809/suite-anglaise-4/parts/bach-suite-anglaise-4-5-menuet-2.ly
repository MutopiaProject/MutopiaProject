Global = {
  \key f \major
  \time 3/4
  \include "../global.ly"
}

Upper = \relative c'' {
  \clef treble
  \Global
  \repeat volta 2 {
  | f4 e d
  | cis\prall \appoggiatura cis8 d2
  | a4 bes8 a g bes
  | a4 g8 f e d
  %5
  | f'4 e d
  | bes'4 << a2~ \\ { } >>
  | << { a4 g8 f e d } \\ { r8 cis, d e f g } >>
  }
  \alternative {
    { << c2.\prall \\ a2. >> }
    { << c2.\prall \\ a2. >> }
  }
  \repeat volta 2 {
  %10
  | << { e'4 f8 e d e } \\ cis2. >>
  | f4 bes,2~
  | bes4 a8 g a f
  | g4 c, c'~
  | c4 bes8 a g f
  %15
  | ees'4 d2\prall~
  | d4 c8 b! a g
  | f'4 e!2\prall~
  | e8 g f e d c
  | bes'4 a8 g a f
  %20
  | d4 << { g e } \\ { bes g } >>
  | << f'2. \\ a,2. >>
  | a4 b!\prall c
  | b!4 g'2~
  | g4 f8 e f d
  | e4 d8 cis b! a
  | f'4 e d
  | cis!4\prall d2
  | a4 bes8 a g bes
  | a4 g8 f e d
  | << { bes'4 a g } \\ { r8 d ees d cis d } >>
  | ees'4 d8 cis d4~
  | d8 e! << { e4. d8 } \\ cis2 >>
  }
  \alternative {
    { d2. }
    { d2. }
  }
  \fine
}

Lower = \relative c {
  \clef bass
  \Global
  \repeat volta 2 {
  | d8 a' e a f a
  | g8 a f a e a
  | f8 a g f e d
  | cis4\prall d2
  %5
  | d8 d' e, d' f, d'
  | << { r8 d cis a d4 } \\ { g,2 d8\rest f8 } >>
  | bes2.
  }
  \alternative {
    { r8 bes a g f e }
    {
      \change Staff = "upper" {
	\stemDown r8 f' e d
      }
      \change Staff = "lower" {
	cis b!
      }
    }
  }
  \break
  \repeat volta 2 {
  %10
  | a8 bes a g f e
  | << { r8 e f g a bes } \\ d,2. >>
  | << c'2. \\ { r8 e, f e f d } >>
  | e8 f e d c bes
  | << { r8 bes c4 f~ } \\ a,2. >>
  %15
  | << { f'8 g f ees d c } \\ bes2. >>
  | << { r8 c d4 g~ } \\ b,!2. >>
  | << { g'8 a g f e d } \\ c2. >>
  | c8 e d c bes a
  | g8 d' e c f a,
  %20
  | bes8 d g, bes c c,
  | f8 a bes c d e
  | f8 a g f e d
  | g8 f e d cis b!
  | << { r8 e a4 g } \\ { cis,4 d bes } >>
  %25
  | a8 a' b,! a' cis, a'
  | d,8 a' e a f a
  | g8 a f a e a
  | f8 a g f e d
  | c4\prall d2
  %30
  | g2.
  | g8 bes a g f e
  | d8 g a4 \once \stemUp a,
  }
  \alternative {
    { d8
      \change Staff = "upper" {
	f' e d
      }
      \change Staff = "lower" {
        cis b!
      }
    }
    { \stemUp d,4 a d, }
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
    title = "Menuet II"
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
    \tempo 4 = 140
  }
}
