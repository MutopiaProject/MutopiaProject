\version "2.23.7"

Global = {
  \key f \major
  \time 3/4
}

Upper = \relative c'' {
  \clef treble
  \Global
  f,8 g  g4.\prall f16 g
  \repeat volta 2 {
  | a8 bes c4 f
  | a,8 bes c4 d
  | bes2.\prall
  %5
  | g8 a a4.\prall g16 a
  | bes8 c d4 g4
  | f8 (e d c bes a)
  | g (a bes a g f)
  | a b! b4.\prall a16 b
  %10
  | c8 (d e d f e)
  | e8 f f4.\prall e16 f
  | g2.
  | a4 d,8 e f d
  | g4 b,! c~
  %15
  | c8 f d4.\prall c8
  }
  \alternative {
    { c2.  f,8 g g4.\prall f16 g }
    { c2. }
  }
  \break
  \repeat volta 2 {
  | e8 f f4.\prall e16 f
  %20
  | g8 f e d e c
  | f8 g g4.\prall f16 g
  | a2.
  | a,8 b! cis4 d
  | cis8 d e4 f
  %25
  | f8 e f e d cis
  | d2.
  | f4 ees8 d c d
  | ees d c bes d4
  | g4 f8 e! d e
  %30
  | f8 e d c d e
  | f8 g g4.\prall f16 g
  | a8 bes c4 c,
  | d4 e16( f g8) f8 e
  }
  \alternative {
    { f2. }
    { f2. }
  }
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
  \clef bass
  \Global
  f4 e8 d e c
  \repeat volta 2 {
  | f4 f,8 g a bes
  | c8 d e g fis a
  | g8 a bes a g f!
  %5
  | e8 d c d e f
  | g4 g,8 a bes g
  | c4 d e
  | f4 c a
  | f4 f'8 e f d
  %10
  | e4 f g
  | c,8 (d e d c d)
  | e8 (d f e d c)
  | f8 e f2~
  | f8 e f g a e
  %15
  | f8 d g4 g,4
  }
  \alternative {
    { c8 bes c d c bes  a4 bes c }
    { c4 e g }
  }
  \repeat volta 2 {
  | c8 bes a g a f
  %20
  | c'4 c,4 bes
  | a8 c bes a bes c
  | f,4 f'8 e f d
  | cis d e g f a
  | a,8 b! cis e d f
  %25
  | bes,4 g a
  | d,8 a' d e f g
  | a8 g f g  a4
  | bes4 bes,8 f' g a
  | bes8 a g a b!4
  %30
  | c4 c,8 d' c bes
  | a8 bes a g f e
  | f8 g f e d c
  | bes8 a g4 c
  }
  \alternative {
    { \stemUp f,8 c' f g a bes }
    { f,2. }
  }
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano-cautionary
    \new Staff = "upper" \Upper
    \new Staff = "lower" \Lower
  >>
  \header {
    subtitle = "Menuet I."
  }
  \layout { }
  \midi {
    \tempo 4 = 150
  }
}
