\version "2.23.7"

Global = {
  \key f \major
  \time 3/4
}

Upper = \relative c'' {
  \clef treble
  \Global
  \repeat volta 2 {
    << { c8. ees32 d  ees2 }
        \\ { \once \stemUp \override NoteColumn.force-hshift = #0.4 a,4
	     \override NoteColumn.force-hshift = #0 a2 }
	\\ { \stemDown \override NoteColumn.force-hshift = #0 f4  f2 } >>
  | << { d'8 c d2 } \\ { \stemUp bes8 a bes2 } \\ { \stemDown f8 ees f2 } >>
  | << { g8 a a\turn bes bes\turn c } \\ { e,!4 f e } >>
  | << { a4\prall g8 a f4 } \\ { f4 e c } >>
  %5
  | << { a'8. c32 b!  b!4.\prall c8 } \\ { f,4 f2 } \\ { c4 d2 } >>
  | << { \appoggiatura ees'16 d16 c d8  << f2 \\ d2 >> } \\ { f,4 g2 } >>
  | << { e'!8\prall d d\prall c c\prall b! } \\ { g8 f f e e d } >>
  | << { b'!8 c c2 } \\ { d,8 e << g2 \\ e2 >> } >>
  }
  \repeat volta 2 {
  | << { e'8. f32 g  e2\prall( }
         \\ { \once \stemUp \override NoteColumn.force-hshift = #0.4 c4
	      \override NoteColumn.force-hshift = #0 \stemUp c2 }
	 \\ { \stemDown g4  g2 } >>
  %10
  | << g'4)( \\ \stemUp e \\ \stemDown a, \\ e >>  << cis'2)\prall \\ \stemUp a2 \\ \stemDown e2~ >>
  | << { bes''8( a) a g g16 f g e }
        \\ { \once \stemUp \override NoteColumn.force-hshift = #0.4 cis4
	     \once \stemUp d \override NoteColumn.force-hshift = #0 e }
        \\ { \stemDown e,4 f } >>
  | << { f'4\prall e8 f d4 } \\ { a4 g f } >>
  | << { fis'8. a32 g  (g2 }
       \\ { \once \stemUp \override NoteColumn.force-hshift = #0.4 d4
            \once \stemUp \override NoteColumn.force-hshift = #0 d2 }
       \\ { \stemDown a4  g2 } >>
  | << { ees'16) c d8 d4.\prall d8 } \\ { a4 aes2 } >>
  %15
  | << { \override NoteColumn.force-hshift = #0.8 g'8. a16 }
       \\ { < g~ g, >4 } >>
    << { \override NoteColumn.force-hshift = #-0.6 a4.\prall
         \override NoteColumn.force-hshift = #0 g8 }
       \\ { \stemUp g4 fis }
       \\ { \stemDown ees4 d } >>
  | << { g4 g2 } \\ { d4 < d g, >2 } >>
  | << { b!8. d32 c  c4. c8 }
        \\ { \once \stemUp \override NoteColumn.force-hshift = #0.4 g4
             \override NoteColumn.force-hshift = #0 g2 }
        \\ { \stemDown \override NoteColumn.force-hshift = #0 d4 c2 } >>
  | << { f'8 a, bes4. c16 d } \\ { <a f>4 f2 } >>
  | << { ees'8 g f ees d ees }
       \\ { \stemUp \override NoteColumn.force-hshift = #0.4 c4 c \override NoteColumn.force-hshift = #0.6 c }
       \\ { \stemDown g4 c, f } >>
  %20
  | << d'4 \\ \stemUp bes \\ \stemDown f >>
    << { c'8 d bes4 } \\ { \override NoteColumn.force-hshift = #0 ees,4 d } >>
  | << { g8 a16 g }
       \\ \once \override NoteColumn.force-hshift = #0.6 \stemUp f4
       \\ \once \override NoteColumn.force-hshift = #0.6 \stemDown d4 >>
    << g2
       \\ { \once \override NoteColumn.force-hshift = #0.8 \stemUp f4 e! }
       \\ { \once \override NoteColumn.force-hshift = #0.8 \stemDown d4 c }\prall >>
  | << { g'8 aes16 g  \appoggiatura c16 b!4.\prall a16 b }
       \\ { \once \override NoteColumn.force-hshift = #0.6 f4 f2 } >>
  | << { c'8 c, f\mordent bes a g }
       \\ { \stemUp \override NoteColumn.force-hshift = #0.4 g8 s s f f e }
       \\ { \stemDown c8 s c d c bes } >>
  | << { f'8 e f2 } \\ { \stemUp \once \override NoteColumn.force-hshift = #0.2 c4 c2 }
       \\ { \stemDown \once \override NoteColumn.force-hshift = #1 bes4 a2 } >>
  }

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
  \clef bass
  \Global
  \repeat volta 2 {
    << { c'4 c2 } \\ { f,4 f2 } >>
  | << { bes4 bes2 } \\ { bes,4 bes2 } >>
  | << { c'4 c c } \\ { bes4 a g } >>
  | << { c4 bes a } \\ { f4 c f, } >>
  %5
  | f'8. aes32 g  aes2
  | << { g4 g2 } \\ { b,!8 a b!4. c16 d } >>
  | << { g8 a a g g4 } \\ { e8 f f g g g, } >>
  | << { g'4 c,2 } \\ { c4 c,2 } >>
  }
  \repeat volta 2 {
  | c''4 bes2
  %10
  | << cis4 \\ { a4 g2~ } >>
  | << { } \\ g4 >> f << cis' \\ e, >>
  | << { d'4 cis d } \\ { d, a' d } >>
  | << d4 \\ c!4 >>  << d2 \\ bes2 >>
  | << c4 \\ fis,4 >>  << b!2 \\ f!2 >>
  %15
  | << c'4 \\ ees,4 >>  << c'2~ \\ { c,4 d4 } >>
  | << { c'8 a bes2 } \\ { g4 g2 } >>
  | << { g4 g2 } \\ { f4 e!2 } >>
  | << { c'4 bes2 } \\ { ees,4 d2 } >>
  | << { bes'4 bes a } \\ { c,4 f f } >>
  %20
  | << { bes4 a bes } \\ { bes4 f bes, } >>
  | \stemDown b!4 c2
  | << { bes'4 aes g8\prall f } \\ { des4 d!2 } >>
  | << { g8 a a f c c } \\ { e!8 f a, bes c c, } >>
  | << { c'4 f2 } \\ { f,4 f2 } >>
  }

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
    subtitle = "Sarabande."
  }
  \layout { }
  \midi {
    \tempo 4 = 50
  }
}
