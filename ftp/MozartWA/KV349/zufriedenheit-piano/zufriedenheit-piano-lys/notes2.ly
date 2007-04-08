\version "1.6.6"

Marks = \notes {
  \context Voice = A
  s4. s4 \mark #'(music "scripts-segno") s8 |
  s2.*12 |
  s2 
  \property Staff.TextScript \set #'self-alignment-X = #1
  s16
  \mark #'(music "scripts-segno")
  s32._"Vom Zeichen" s64 \bar "|."
}

Voice = \notes \relative c' {
  \context Voice = A
  \clef "treble"
  \key g\major
  \time 6/8
  %1
  r4 r8 r4 d8 | [d'()b] g [e()c'] a |
  [fis()d'] c b4 b8 |
  [a()d] a \grace {\property Voice.Stem \set #'stroke-style = #() a16(} [)g8()fis] e |
  %5
  d4 r8 r4 d'8 |
  a4 a8 [b()a] b |
  c4 d8 e4 [c16( )a] |
  fis4 fis8 [g()a] b |
  a4 r8 r4 a8 |
  %10
  b4 b8 [c()b] c |
  d4 dis8 e4 e8 |
  [d!()fis,] fis [g()c] a |
  g4.~ [g8()b] a |
  %14
  g4 r8 r4 
}

Lyr = \context Lyrics \lyrics {
  Was frag' ich viel nach Geld und Gut, wenn ich zu -- frie -- den bin!
  Gibt Gott mir nur__ ge -- sun -- des Blut, so hab' ich fro -- hen Sinn
  und sing' aus dank -- ba -- rem Ge -- m\"ut mein Mor -- gen- und mein A -- bend -- lied.
}

RightHand = \notes \relative c''' {
  \context Voice = A
  \clef "treble"
  \key g\major
  \time 6/8

  <{g8_\f g b g4} {b,8 b d b4}> r8 |
  b,,8(_\p d )g c,( e )a |
  a,( c )fis b,( d )g |
  a( d, <{)a' g( fis )e} {fis e d cis}> |
  %5
  d16 fis g a b cis d8 r r |
  a,( d )fis b,( d )gis |
  c,( e )a c,( e )a |
  a,( d )fis b,( d )g |
  fis16 d fis a cis d d,4 r8 |
  %10
  b8( d )g c,( e )g |
  d( f )g c,( e )g |
  a,( d )fis! g( e )c |
  b( d )g c,( d )fis |
  <g4 b,> r8 r4
}

LeftHand = \notes \relative c' {
  \context Voice=A
  \clef "bass"
  \key g\major
  \time 6/8

  <{g8 g g g4} {g,8 g g g4}> r8 |
  <g4 g,> r8 <g4 g,> r8 |
  <g4 g,> r8 <g4 g,> r8 |
  fis4 d8 g a a, |
  %5
  d4 r8 r4 r8 |
  d4 c!8 b4 e8 |
  a,4 r8 r4 r8 |
  d4 c8 b4 g8 |
  %9
  d'4 r8 r4 r8 |
  g4 f8 e4. |
  b c4 r8 |
  c4. b8 c4 |
  d4. d, |
  %14
  g4 r8 r4 
}

Piano = \context PianoStaff <
  \context Staff=up \RightHand
  \context Staff=down <\LeftHand \Marks>
>