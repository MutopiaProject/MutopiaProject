\version "2.23.7"

Global = {
   \key f \major
   \time 4/4
}

Upper = \relative c' {
   \clef treble
   \tempo \markup { \italic Vitement }
   %1
   | r16 c-. d-. e-.  f-. g-. a-. f-.  bes-. c-. bes-. a-.  g-. c-. bes-. c-.
   %2-19
   \repeat unfold 2 {
   | a8[f]  f'8.[f16]  f8.\mordent[g16]  e8.\prall[f16]
   | \stemUp { f16[g f e]  d^([e f a])  b,^([c d g])  c,^([d e g]) }
   | \stemUp { a,16^([ b c f])  b,^([ c d f])  g, a b e  a, b c e }
   %5
   | f,8[a]  d8.[d16]  d16 g, a b  c d e c
   | f16 g f e  d g f g  e8 c  c'8. c16
   | c8^~[c32 b c a]  b8.b16  b8 e,  a8. a16
   | a8.[g32 f]  g8.g16  g8 c,  f8.f16
   | f16 a g f  e f g e  f g f e  d g f g
   %10
   | e c d e  f g a f  bes c bes a  g c bes c
   | a bes a g  f e d c  b g a b  c d e f
   | g8.\turn[a16]  d,8.\prall[c16]  c16 g a b  c d e c
   | f g f e  d g f g  e8 c  f8.\mordent[f16]
   | f8.g16  ees8.ees16  ees f, g a  bes c d bes
   %15
   | ees f ees d  c f ees f  d8 bes  << { bes'8. bes16 } \\ { \stemUp \shiftOn g8. g16 } \\ { \stemDown d8. d16 } >>
   | << { bes'8. c16 } \\ { \stemUp \shiftOn g8. g16 } \\ { \stemDown e8. e16 } >>
     << { a8. a16 } \\ { \stemUp \shiftOn f8. f16 } \\ { \stemDown e8. e16 } >>
     << { a8 d, } \\ { \stemUp \shiftOn f8 g,\rest } \\ { \stemDown d'8 } >>
     << { \stemUp g8. g16 } \\ { \stemDown d8. d16 } >>
   | << { g8. a16 } \\ { c,8. c16 } >>  << { f8. f16 } \\ { c8. c16 } >>  << { f8. g16 } \\ { bes,8. bes16 } >>  << { e8. f16  } \\ {{ bes,8. bes16 }} >>
   | << { f'8 d,16 e } \\ a8 >>  f16 g a f  bes c bes a  g c bes a
   | a8 c,  << { f8. f16 } \\ { r8 r16 c } >>  << f4 \\ { d16 c bes a } >>  e'8.e16
   }
   \alternative {
     {
   %20
   | f4\fermata  r16 f' e f  c f d f  c f bes, f'
   | a, f' bes, f'  a, f' g, f'  f, f' g, f'  a, f' b, f'
   | << { e16 g, a b  c d d\prall c32d } \\ c16 >>  e8 f e d
   | << { r8 a' g f  e8 f g a } \\ { c,2~  c8 c b a } >>
   | << { d16 g, b d } \\ b16>>  << { b g b d } \\ r4 >>  << { f8 f  f f } \\ { r16 d, f a  f d f a } >>
   %25
   | << { f'8 f f f } \\ { b, d d d } >>  << { e e e e } \\ { g, g g g } \\ { d' d c c } >>
   | << { e e e e } \\ { f, f f f } \\ { c' c c c } >>  << { d d d d } \\ { f, f f f } \\ { g g g g } >>
   | << { d' c c b } \\ { f e d d } \\ { g g g g } >>
     << { c16 \change Staff = "lower" g, a b } \\ { \stemUp \shiftOn g' } \\ { \stemDown e } >>
     c16 d e c
   | f g f e  d g f g  e8 c  << { c' c } \\ { r8 e, } >>
   | << { c'8 b16 c } \\ d,4 >>  << { d'8 d } \\ { r8 b } >>  << { d8 c16 d } \\ g,4 >>  << { e'8 e } \\ { r8 c } >>
   %30
   | << { e8 d16 e } \\ a,4 >>  << { f'8 f } \\ { r8 a, } >>  << { f'8 e16 f } \\ b,4 >>  << { g'8 g } \\ { r8 b, } >>
   | << { g'16 b a g  fis g e fis } \\ c2~ >>  << { g'8 d } \\ { c16 c b a } >>  << { g'8. g16  } \\ { b,8. b16 } >>
   | << { g'8. a16 } \\ a,4 >>  << { f'8. f16 } \\ { a,8. a16 } >>  << { f'8. e32 d } \\ b!4 >>  << { e8. e16 } \\ { c8. c16 } >>
   | << { e16 g f e } \\ a,4 >>  d16 c b a  b8 g  << { c8. c16 } \\ { r8 r16 e, } >>
   | << { c'8. d16 } \\ { e,8. f16 } >>  << { b8. c16 } \\ { d,8. e16 } >>  << c'4 \\ e,4 >>  r16 c' b c
   %35
   | g16 c a c  g c f, c'  e, c' f, c'  e, c' d, c'
   | c,16 c' d, c'  e, c' fis, c'  << { bes d, e fis } \\ g16 >>  g a a\prall g32 a
   | b8 c  b a  << { r8 ees' d c } \\ g2~ >>
   | << { bes8 c  d e! } \\ { g, g  f e } >>  << { a8 a } \\ { d,8 d16 e } >>  << { d'8. d16 } \\ { f,8. f16 } >>
   | << { d'8. e16 } \\ e,4 >>  << { cis'8. d16 } \\ r4 >>  << { d16 a b! cis  d e f d } \\ { r8 a,  d d } >>
   %40
   | << { g'16 a g f  e a g a  f g f e  d f g a } \\ { d,,8 cis16 d  e8 e  e d16 e  f8 f } >>
   | << { bes'16 c bes a  g c bes c  a bes a g  f e d cis } \\ { f,8 e16 f  g8 g  g f16 g  a8 a } >>
   | << d2~ \\ { a16 c! b! a  gis a fis gis } >>  << { d'16 d c b!  c b! c a } \\ a2~ >>
   | << bes4~ \\ { a8. a16 } >>  << { bes8. bes16 } \\ g4~ >>  << a4~ \\ { g8. g16 } >>  << { a8. a16 } \\ { f8. f16~ } >>
   | << { a16 c bes a } \\ { f16 e d c } >>  g' f e d  cis8 a  << { a'8. e16 } \\ d8 >>
   %45
   | << { f8. g16 } \\ d4 >>  e8. d16  d e f a  f g a d
   | g,16 a b! d  b c d g  c,,d e g  e f g c
   | f, g a c  a b! c f  b,,! c d f  d e f b!
   | e, fis gis b!  gis a b e  a, b! c e  g,! a bes e
   | fis, g a e'  f,! g a d  e, fis gis d'  e, gis a c
   %50
   | dis, e fis c'  d,! e f b!  cis, d e b'!  c,! d e a
   | b,! c d a'  b,! c d gis  << a4 \\ c, >>  r4
   | b'2\rest  r16 f' e d  c b! a c
   | f,16 e' d c  b! a gis b!  e, d' c b!  a g! f a
   | << { d8\rest gis,16 a  b!8 b  b8 a16 b  c8 c }
       \\ { d,4  e8\rest \stemUp \shiftOn gis  gis4  f8\rest a }
       \\ { s4. \stemDown d,8  \stemDown e b8\rest  b8\rest e } >>
   %55
   | << { c'8 b!16 c  d8 d  d c16 b!  b8. a16 }
       \\ { a8 gis16 a  b!8 b  b a  gis4 }
       \\ { \stemDown \override NoteColumn.force-hshift = 0.3 d4  e8\rest f  e4 } >>
   | << { a16 a c e  c a c e  a8 a  a a } \\ { a,16 r16 c,8\rest  r4  r16 f a c  a f a c } >>
   | << { a'8 a  a a  } \\ { d,8 f  f f } >>  << { g g  g g } { f e  e e } \\ { g,8 bes  bes bes } >>
   | << { g' g  g g  g f  f f } \\ { \stemUp \shiftOn e e  e e  e d  d d } \\ { \stemDown a8 a  a a  a a  a a } >>
   | << { f'16 g, bes d } \\ \once \shiftOn \stemUp d16 \\ { \once \stemDown g,16 } >>
     bes16 g bes d
     << { e8 d  d cis } \\ { d,8\rest \stemUp \shiftOn a'  a a } \\ { g8\rest \stemDown f e \shiftOn <e g> } >>
   %60
   | << { d'16 \change Staff = "lower" { a, b cis } } \\ { \stemUp \shiftOn a'16 } \\ { \stemDown f16 } >>
     d16 e f d  g a g f  e a g a
   | fis16 d e fis  g a bes g  c e, fis g  a bes c a
   | d16 fis, g a  bes c d bes  ees d c bes  a d c d
   | << { bes4. a8~ } \\ { r16 a g f  ees4 } >>  << { a8 g4 fis8 } \\ { d4 c } >>
   | << { g'16 f! ees d } \\ { bes8 r } >>
     { \stemUp ees16 \change Staff = "lower" { bes c fis,  g } }
     \change Staff = "upper" { ees' d }
     \change Staff = "lower" { c  bes }
     \change Staff = "upper" { g' }
     \change Staff = "lower" { a, }
     \change Staff = "upper" { fis' }
   %65
   | << r4 \\ { g8 bes16 a } >>  << { r8 g' } \\ { bes, bes } >>  << { g'8 a16 g } \\ a,4 >>  << { f'!8 f } \\ { r a, } >>
   | << { f'8 g16 f } \\ g,4 >>  << { ees'8 ees } \\ { r c } >>  << { ees8 f16 ees } \\ a,4 >>  << { d8 d } \\ { r c } >>
   | << { d8 ees16 d } \\ { \once \shiftOn bes4 } >>
     << { c8 c } \\ { r bes } >>
     << { c8 f,  bes bes } \\ { a4 { r8 << f \\ d >> } } >>
   | << { bes'8 a16 bes } \\ { << g8 \\ d >> r8 } >>  << { c' c } \\ { r << g \\ ees >> } >>
     << { c'8 bes16 c } \\ { << a8 \\ ees >> r8 } >>  << { d' d } \\ { r << bes \\ f >> } >>
   | << { d'8 c16 d } \\ { << bes8 \\ g >> r8 } >>  << { ees' ees } \\ { r << c \\ g >> } >>
     << { ees'8 d16 c } \\ { << c8 \\ a >> bes8 } >>  << { c8. bes16 } \\ a4 >>
   %70
   | << { bes16 a bes c } \\ bes16 >>  d ees f bes  c, d ees g  a, bes c a'
   | bes, c d f  g, a bes g'  a, bes c ees  f, g a f'
   | g, a bes d  ees, f g ees'  f, g a c  d, ees f d'
   | ees, d' d, d'  ees, c' c, c'  d, c' ees, c'  f, bes d, bes'
   | g bes f bes  ees, bes' g bes  f bes ees, bes'  d, bes' c, bes'
   %75
   | bes, bes' c, bes'  d, bes' e,! bes'  << { a16 c, d e } \\ f >>  f16 g g\prall f32 g
   | a8 bes  a g  << { r8 d' c bes } \\ f2~ >>
   | << { a8 bes  c d } \\ f,2~ >>  << g4 \\ { f8 e16 d } >>  << { r8 c' } \\ { e, << g \\ e >> } >>
   | << { c'8 d16 c } \\ { < a d, >4 } >>  << { bes8 bes8 } \\ { r8 << g \\ d >> } >>
     << { bes'8 c16 bes } \\ { < g c, >4 } >>  << { a8 f' } \\ { r8 << c \\ a >> } >>
   | << { f'8 g16 f } \\ { < d g, >4 } >>  << { ees8 ees } \\ { r8 << c \\ g >> } >>
     << { ees'8 f16 ees } \\ { < c f, >4 } >>  << { d8 bes' } \\ { r8 << f \\ d >> } >>
   %80
   | << { bes'8 c16 bes } \\ { < g c, >4 } >>  << { a8 a } \\ { g,8\rest << f' \\ c >> } >>
     << { a'8 bes16 a } \\ { < f bes, >4 } >>  << { g8 g } \\ { a,8\rest << d \\ bes >> } >>
   | << { g'8 a16 g } \\ { << c,8 \\ bes >> r8 } >>  << { f'16 a g f } \\ r4 >>  e16 d c d  e d e c
   | d16 e f a  g a bes d,  c d e g  f g a c,
   | bes c d f  e f g bes,  a8 c  f8. f16
   | f16 bes a g  g8. f16  f4  r8 f,
   % 85
   | e16 f g
     \once \override Stem.details.beamed-lengths = #'(8)
     \change Staff = "lower" { bes,  a bes }
     \once \override Stem.details.beamed-lengths = #'(8)
     \change Staff = "upper" { c f }
     e f g
     \change Staff = "lower" { bes,  a bes }
     \change Staff = "upper" { c e }
   | f g aes c,  b! c d e  f g aes c,  b! c d f
   | e f g c,  bes c des \change Staff = "lower" { aes } \change Staff = "upper" { s2 }
   | r2  << { r8 a'!16 bes32 c  a8 g16 f } \\ { r8 f  f e } >>
   | << { f16 c d e } \\ f16 >>  f g a f  bes c bes a  g c bes c
     }
     {
   %108
   | f,4  r4  r2
     }
   }
   \fine
   \pageBreak

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
   \clef bass
   %1
   | r1
   %2-19
   \repeat unfold 2 {
   %2
   | r16 c d e  f g a f  bes c bes a  g c bes c
   | a8 f
     \change Staff = "upper" {
       \override Stem.details.beamed-lengths = #'(4)
       \stemDown
       f'8.[f16]  f8.[g16]
       \once \override Script.padding = #0.5
       e8._\prall[e16]
   |     e8
       \revert Stem.details.beamed-lengths
     }
     \change Staff = "lower" {
       \stemDown a, } d8.[d16]  d8.[e16]  c8.\prall[c16]
   %5
   | c16 e d c  b a g f  e4~  e16 d c b
   | a g a f  g8 g'  c,16 g' a b  c d e c
   | \change Staff = "upper" {
       f16 g f e  d g f g  c, d e g
     }
     \change Staff = "lower" {
       f, g a c
     }
   | b c d f  e, f g b  a b c e  d, e f a
   | g8 c,  c'8.c16  c8.d16  bes8.\prall[bes16]
   %10
   | bes8 c16 bes  a g f e  d c d bes  c8 c,
   | \stemUp f4  r8 { \stemDown f'  g16 c b a }  g f e d
   | c8 f  g g,  \once \stemUp c,4  c''8.c16
   | c8.d16  bes8.\prall[bes16]  bes16 c, d e  f g a f
   | bes c bes a  g c bes c  a8 f  bes8.bes16
   %15
   | bes8.c16  a8.\prall[bes16]  bes16 d, e f  g a bes g
   | c c, d e  f g a f  bes a g f  e d c bes
   | a bes c e  d e f a  g g, a bes  c a bes c
   | \once \stemUp d,4  r8 d'8  g16 a g f  e c d e
   | << { \stemDown f g f e  d16 c bes a  bes8[g]  c[c,] } \\ { \stemUp s4 c''8\rest c16\rest a16 g8  s8  g16 c bes c } >>
   }
   \alternative {
     {
   %20
   | << a4 \\ { f,8\fermata  f'16 e } >>  f8 g  a bes  a g
   | << { r8 d' c bes  a bes c d } \\ { f,2~  f8 f e d } >>
   | << g4 \\ c, >>  r16 c' b c  g c a c  g c f, c'
   | e, c' f, c'  e, c' d, c'  c, c' d, c'  e, c' f, c'
   | << { b8 r } \\ { g[ g,] } >>  r8 g'  d r  r4
   %25
   | r16 g b d  b g b d  r c, e g  e c e g
   | a f, a c  { \stemUp a f a c  b g b d  b g b d }
   | e,8 e'16 f  g8 g,  c,4  c'8. c16
   | c8. d16  b8. c16  c g a b  c d e c
   | f g f e  d g f g  e g a b  c d e c
   %30
   | \clef "violin" f g f e  d e f d  g a g f  e f g e
   | a8 g  a d,  g4~  g16 f! e d
   | cis a bes cis  d e f d  g a g f  e a g a
   | f4  r8 \clef "bass" f,~  f16 a g f  e d c b
   | a g a f  << { r8 g' } \\ g,4 >> c,8 c'16 b  c8 d
   %35
   | e8 f  e d  << { r8 a' g f } \\ c2~ >>
   | << { e8 fis g a } \\ { c, c bes a } >>  << d4 \\ g, >>  r16 g' fis g
   | d g ees g  d g c, g'  bes, g' c, g'  bes, g' a, g'
   | g,16 g' a, g'  b, g' cis, g'  f g f e  d e f d
   | g16 a g f  e a g a  f4  r8 bes
   %40
   | e,4  g8\rest cis8  << a4 \\ d, >>  r8 d'8
   | g,4  << { e'8\rest e8 } \\ { a,8\rest c } >>  << c4 \\ f, >>  c'8\rest f
   | b,!8 c16 d  e8 e,  a4~  a16 g f e
   | d16 bes c d  ees f g ees  cis d cis b!  a d c! d
   | g,8 r8  << { bes'16 a g f } \\ r4 >>  << e4 \\ { r16 bes a g } >>  << { a'8. a16 } \\ { f,16 e d cis } >>
   %45
   | << { a''8 b  cis4 } \\ { d,,8 g a a } >>  d,4  r8 d''8
   | b!8 g  r g  e c  r c'
   | a8 f  r f  d b!  r b'!
   | gis e  r e  c a  r cis
   | d d,  r f'  gis, e'  r a
   %50
   | b! a  b! gis  a g!  f! c
   | d b!  e e,  a16 e' fis gis  a b! c a
   | { \change Staff = "upper" { \stemDown d16 e d } }
     { \change Staff = "lower" { c b! } }
     { \change Staff = "upper" { e d e } }
     { \change Staff = "lower" { c8 e,  a a } }
   | a8 gis16 a  b!8 b  b a16 b  c8 c~
   | c16 c b! a  gis16 fis e gis  c,16 f! e d  c16 b! a c
   %55
   | fis,16 e' d c  b! a gis b!  c,8 c'16 d  e8 e,
   | a8 a'  a g  f r8  r4
   | r16 bes d f  d bes d f  r16 e, g bes  g e g bes
   | cis16 a, cis e  cis a cis e  f d, f a  f d f a
   | bes4  r8 bes'  cis, d  a' a,
   %60
   | d,4  << { r8 a'' } \\ { r8 d, } >>  << bes'4 \\ { d,8 e16 d } >>  << { r8 e } \\ { c c } >>
   | << { a'4  r8 g  e4  r8 fis }  \\ { c8 d16 c  bes8 bes  bes c16 bes  a8 a } >>
   | << { bes'4  r8 bes } \\ { a,8 bes16 a  g8 g'8 } >>
     << { c8 r } \\ { \stemUp a } \\ { \stemDown g8 a16 g } >>
     << { r8 fis } \\ { fis8 d } >>
   | << g16 \\ { g16 f ees d } >>  c f ees f  bes, c d ees  a, d c d
   | \stemDown g,8 bes  c a  bes c  d d,
   %65
   | g16 d' e fis  g a bes g  c d c bes  a d c d
   | bes16 g a bes  c d ees c  f a, bes c  d ees f d
   | \change Staff = "upper" { g } \change Staff = "lower" { bes, c d }
     ees f g e!  f g f ees  d c bes d
   | g, f' ees d  c bes a c  f, ees' d c  bes a g bes
   | ees, f ees d  c bes a c  f,8 bes  f' f,
   %70
   | bes16 f' g a  bes c d bes  ees f ees d  c f ees f
   | d ees d c  bes ees d ees  c d c bes  a d c d
   | bes c bes a  g c bes c  a bes a g  f bes a bes
   | g8 f  g a  bes c  d bes,
   | ees d  c ees  d c  << { r c } \\ bes4~ >>
   %75
   | << { d8 e  f g } \\ { bes, bes  a g } >>  << c4 \\ f, >>  r16 f' e f
   | c16 f d f  c f bes, f'  a, f' bes, f'  a, f' g, f'
   | f, f' g, f'  a, f' bes, f'  c g a b!  c d e c
   | f g f e  d g f g  e c d e  f g a f
   | bes c bes a  g c bes c  a f g a  bes c d bes
   %80
   | ees f ees d  c f ees f  d ees d c  bes a g f
   | e! d c bes  a g a f  c8 g''  c c
   | c8 d16 c  bes8 bes  bes8 c16 bes  a8 a
   | a8 bes16 a  g16 f e g  f bes a g  f e d f
   | { \stemUp bes,16 d c bes  c8 c,8  f16 c d e  f g a f }
   %85
   | c'8 c,  r8 c'  c c,  r8 c'
   | c8 c,  r8 c'  c c,  r8 c'
   | c8 c,  g'4\rest  << { g'16 aes bes f  e! f g c, } \\ r2 >>
   | \stemUp bes16 c des aes  g a bes f  e8 f  c' c,
   | \stemUp f16 r16 r8  r4 r2
     }
     {
   %108
   | << { a'4  r4  r2 } \\ { f,4  r4  r2 } >>
     }
   }
   \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano-cautionary
    \new Staff = "upper" {
      \Global
      \Upper
    }
    \new Staff = "lower" {
      \Global
      \Lower
    }
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 809"
    subtitle = "Prélude"
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Suite IV - avec Prélude."
      %}
    }
  }
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}
