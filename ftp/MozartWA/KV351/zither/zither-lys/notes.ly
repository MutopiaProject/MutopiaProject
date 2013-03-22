\version "2.16.0"

Marks =  {
  \context Voice = A
  s2.*2 | s4. s4 \mark \markup{\musicglyph #"scripts.segno"} s8 |
  s2.*19 |
  s2 
  \override Staff.TextScript   #'self-alignment-X = #1
  s16
  \mark \markup{\musicglyph #"scripts.segno"}
  s32._"dal segno" s64 \bar "|."
}

Voice =  \relative c'' {
  \clef "treble"
  \key c\major
  \time 6/8
  \set autoBeaming = ##f

  R2.*2 |
  %3
  r4 r8 r4 g8 |
  c4 c8  c[ b] c |
  a4 r8 r4 a8 |
   d[ f] d  b[ a] b |
  %7
  b4( c8) g4 r8 |
  c4.~c8 b a |
   d[ g] b,  d[ c] a |
  g4. r4 r8 | R2.
  %12
  r4 r8 r4 g8 |
  d'4 d8  d[ c d] |
  e4. c4 b8 |
   a[( b)] c \slurDashed  d[( e)] f |
  \slurSolid c4( d8) b r g |
  %17
  e'4.~ e8[( d)] c |
  a4 d8 c4 b8 |
  e4.~e8 d c |
  d4  e16[ f] c4 b8 |
  %21
  c4 r8 r4 r8 | R2. | r4 r8 r4
}

LyrI = \lyricmode {
  Komm,4 lie -- be Zi -- ther, komm,
  du Freun -- din stil -- ler Lie -- be,
  du __ sollst auch mei -- ne Freun -- din sein.
  Komm, dir ver -- trau'2 __ ich4
  die ge -- heim -- sten mei -- ner Trie -- be,
  nur dir __ ver -- trau' ich mei -- ne Pein __
  ", dir" ver -- trau' ich mei -- ne Pein.
}

LyrII = \lyricmode {
  Sag'4 ihr an mei -- ner Statt,
  Ich darf's ihr noch nicht sa -- gen,
  Wie ihr so ganz mein Herz ge -- hört;
  Sag' ihr an mei -- ner Statt,2
  Ich4 darf's ihr noch nicht kla -- gen,
  Wie sich für sie mein Herz ver -- zehrt __
  ", sich" für sie mein Herz ver -- zehrt.
}

Mand =  \relative c'' {
  \context Voice = A
  \clef "treble"
  \key c\major
  \time 6/8

  c8 e g c16 a g f e d |
  c e a, c g c f, a d f g, b |
  c8 <<{c c c4} {e,8 e e4} {c8 c c4}>> r8 |
  e16 c' g' c, e, c' e, c' g' c, e, c' |
  f,8 <<{ f8[ f] f4} {c'8 c c4} {a'8 a a4}>> r8 |
  f,16 d' a' d, f, d' g, d' b' d, g, d' |
  g, b c d e f e f e d c b |
  <<{fis'8 fis fis fis4} {a,8 a a a4} {d,8 d d d4}>> r8 |
  g16 b d b g b d, fis a fis d fis |
  g g' b g fis g e g d g c, g' |
  b, g' g g e g c, a' a a d, fis |
  g e d c b a g4 r8 |
  g16 b d g d b g g' g g g g |
  c, e g e c g e g c g e g |
  f a c a f a f a d a f a |
  g g' g g g g g, a g f e d |
  c e g c e g c4 r8 |
  f,,16 a c f a f e g c, e g, b |
  c, e g c e g c c c c c c |
  f,, d' f d f, d' g, c e c g g |
  c c e c b c a c g c f, c' |
  e, g c e g c a f d b g b | 
  c8 <<{c c c4} {e,8 e e4} {c8 c c4}>>
}


