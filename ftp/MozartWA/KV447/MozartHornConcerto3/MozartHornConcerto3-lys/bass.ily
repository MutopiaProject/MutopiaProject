\version "2.13.9"

\include "defs.ily"

bassAllegro = \relative c
{
  \clef bass
  \key ees \major
  r4 |
  ees\p r bes r |
  ees r r ees8 r |
  d r bes r c r d r |
  ees4 r r2 |
  ees'8 ees ees ees d d d d |
  c c c c b b bes bes |
  a a aes aes g g g g |
  f4 r8 bes,16 c d bes c d ees f g aes |
  bes4 bes, r2 |
  R1*3 |
  <<
    \repeat unfold 6 {\repeat unfold 8 ees8 |}
    {
      s1\p |
      s | s | s |
      \crescTextCresc
      s\< |
      s |
    }
  >>
  ees8\f ees ees ees g g g g |
  \repeat unfold 8 aes |
  \repeat unfold 6 bes aes aes |
  \repeat unfold 8 g |
  \repeat unfold 8 aes |
  \repeat unfold 6 bes bes, bes |
  ees4 r r2 |
  R1 |
  bes1(\p |
  ees,8) r ees' r ees, r r4 |

  %A
  ees'4\p r bes r |
  ees, r ees' r |
  d( bes c d) |
  ees r r2 |
  R1*2 |
  aes4 r bes r |
  ees, r r2 |
  r2 r4 bes'~ |
  bes( aes2 g4) |
  aes r bes r |
  ees, r r2 |
  f4 r bes, r |
  ees r r2 |
  f4 r bes, r |
  ees r ees r |
  d r r2 |
  a4 r r2 |
  bes4 r bes( c) |
  d1( |
  ees |
  e) |
  f8 f f, f' f,4 r |
  R1*4 |
  d'4 r d r |
  r ees2( e4) |
  f r r2 |
  \repeat unfold 16 bes,8 |
  \repeat unfold 4 {bes r bes' r} |
  bes,1 |
  aes'4-.\f f-. d-. bes-. |
  s1*0\p \repeat unfold 16 ees8 |
  \crescTextCresc
  f8 f f\< f \repeat unfold 12 f |
  bes8\f bes bes bes a a a a |
  g g g g f f f f |
  ees ees ees ees d d des des |
  c c bes bes a a a a |
  bes bes bes bes d d d d |
  ees ees ees ees ees ees ees ees |
  f f f f f f ees ees |
  d d d d d d d d |
  ees ees ees ees ees ees ees ees |
  f f f f f f f, f |
  bes4 r r2 |
  R1 |
  f'1(\p |
  bes,4) r r2 |
  R1 |
  aes'1(\p |
  des,4) r r2 |
  ges,4 r r2 |
  aes4 r r2 |
  des8 r des' r des, r r4 |
  aes'2( des,4) r |
  a'2( bes4) r |
  ges2 aes4 aes, |
  aes2( des4) r |
  aes'2( des4) r |
  aes,2( des4) r |
  R1 |
  a'1 |
  \repeat unfold 6 {a,8 r a' r} |
  \repeat unfold 2 {bes, r bes' r} |
  \repeat unfold 2 {b, r b' r} |
  \repeat unfold 2 {c, r c' r} |
  \repeat unfold 2 {aes, r aes' r} |
  \repeat unfold 5 {g4 r r8 g g g |}
  fis4 r r8 fis fis fis |
  f4 r r8 f f f |
  d4 r r2 |
  ees4 r bes r |
  ees r r ees8 r |
  d r bes r c r d r |
  ees4 r r2 |
  ees'8\f ees ees ees d d d d |
  c c c c b b bes bes |
  a a aes aes g g g g |
  f4 r8 bes,16 c d bes c d ees f g aes |
  bes4 bes, r2 |
  ees4\p r bes r |
  ees, r ees' r |
  d( bes c d) |
  ees r r2 |
  R1*2 |
  aes4 r bes r |
  ees, r r2 |
  r2 r4 bes'~ |
  bes( aes2 g4) |
  aes4 r bes r |
  ees, r r2 |
  f4 r bes, r |
  ees r r2 |
  f4 r bes, r |
  ees r g, r |
  aes aes' aes, r |
  aes2.( a4) |
  bes8 bes' bes, bes bes4 r |
  R1*4 |
  g4 r g r |
  r aes aes( a) |
  bes r bes r |
  \repeat unfold 32 ees8 |
  ees4 r bes r |
  ees, r c' r |
  g1 |
  des''4-.\f bes-. g-. ees-. |
  s1*0\p \repeat unfold 16 aes8 |
  bes4 r bes r |
  bes, r bes r |
  ees r r bes'( |
  ees) r r bes( |
  ees) r r bes,( |
  ees) r r bes( |
  \times 2/3 {ees8) ees ees} ees4 \times 2/3 {r8 ees ees} ees4 |
  \times 2/3 {r8 ees ees} ees4 \times 2/3 {r8 ees ees} ees4 |
  \crescTextCresc
  bes8 bes' bes bes bes\< bes bes bes |
  bes bes bes bes bes, bes bes bes |
  ees\f ees' ees ees d d d d |
  c c c c bes bes bes bes |
  aes aes aes aes g-. ees'( d ees) |
  b( c b c) g-. g( aes a) |
  bes2 r\fermata |
  ees,8 ees ees ees g g g g |
  aes aes aes aes aes aes aes aes |
  bes bes bes bes bes bes aes aes |
  g g g g g g g g |
  aes aes aes aes aes aes aes aes |
  bes bes bes bes bes bes bes, bes |
  ees4 r r2 |
  R1 |
  bes1\p |
  ees8\f g bes g ees g bes g |
  ees g bes g ees g bes g |
  ees2 r |
}

bassRomanze = \relative c
{
  \clef bass
  \key aes \major
  aes4\p r aes r |
  g r g r |
  aes8 r bes r c r des r |
  ees2~ ees4 r |
  aes,4 r aes r |
  g r g r |
  ees2( aes8) r des r |
  ees r ees, r aes-. aes(\f c ees) |
  aes4 r aes r |
  g r g r |
  aes8\p r f r c r des r |
  ees( d ees d ees4) r |
  aes4\f r aes r |
  g r g r |
  ees2(\p aes8) r des, r |
  ees r ees r aes,4 r |
  ees' r ees r |
  ees r ees r |
  ees8\f ees ees ees ees ees ees ees |
  ees4 r r2 |
  ees4\p r ees r |
  ees4 r ees r |
  ees8\f ees ees ees ees ees ees ees |
  ees4 r r bes(\p |
  ees) r r bes( |
  ees) r r2 |
  r8 g\f g g g g g g |
  aes4 r aes r |
  g r g r |
  aes8\p r f r c r des r |
  ees( d ees d ees4) r |
  aes\f r aes r |
  g r g r |
  ees2(\p aes8) r des, r |
  ees r ees r aes,4 r |
  c'8 r c r f,4 r |
  bes,2.( aes4) |
  g2.( bes4) |
  aes2.( f4) |
  bes8( a bes a bes4) r |
  ees r ees r |
  d r d r |
  ees8 r f r g r aes r |
  bes( a bes a bes4) r |
  ees,2( c') |
  f,2( bes4 aes) |
  g2( aes) |
  bes8-. r bes,-. r ees4 r |
  r8 ees\sfp ees ees ees ees ees ees |
  r8 des\sfp des des des des des des |
  r8 ces\sfp ces ces ces ces ces ces |
  r8 bes\sfp bes bes bes bes bes bes |
  aes\f aes' aes aes fes fes fes fes |
  \repeat unfold 16 ees |
  ees4 r r2 |
  r4 r8. ees32(\p f g8[) r16 g32( aes] bes8[) r16 bes32( c] |
  des4) r r2 |
  aes4 r aes r |
  g r g r |
  aes8 r f r c r des r |
  ees( d ees d ees4) r |
  aes, r aes r |
  g r g r |
  ees2( aes8) r des r |
  ees r ees, r aes4 r |
  aes8 aes' aes aes aes aes aes aes |
  aes,8 aes' aes aes aes r des, r |
  ees r ees, r aes4 r |
  r8 aes c aes ees'4 r |
  r8 ees g ees aes r des, r |
  ees r ees, r f4 r |
  R1*2 |
  g'2( aes8) r des, r |
  ees r ees, r aes4 r |
  R1 |
  r4 ees'8-. r aes-. r r4 |
  r4 ees,8-. r aes-. r r4 |
}

bassRondo = \relative c
{
  \clef bass
  \key ees \major
  r8 |
  ees4.\p r8 r ees( |
  bes') bes bes bes bes bes |
  bes4. r8 r bes,( |
  ees) ees ees ees ees ees |
  ees2.~ |
  ees4.~ ees4 bes8 |
  ees4( bes8) ees4( aes,8) |
  bes4.~ bes8 r r |
  ees4.\f r8 r ees( |
  bes') bes-. bes-. bes-. bes-. bes-. |
  bes4. r8 r bes,( |
  ees) ees-. ees-. ees-. ees-. ees-. |
  ees2.~\p |
  ees |
  aes,8 r r bes r r |
  ees4 ees8-.\f aes4( g8) |
  aes4( g8) aes4( g8) |
  d4 r8 aes'4.(\p |
  g8) r r bes r r |
  ees, r ees-.\f aes4( g8) |
  aes4( g8) aes4( g8) |
  d4\fermata r8 aes'4.(\p |
  g bes) |
  ees, aes( |
  g bes) |
  ees,8\f g bes ees, g bes |
  ees, g bes ees, g bes |
  ees,4 ees'16 ees ees4 bes16 bes |
  bes8 g g g ees ees |
  ees bes g' ees bes g' |
  ees bes g' ees bes g' |
  ees4 r8 ees'4 r8 |
  ees,4 r8 r4 r8 |
  ees4\p r8 bes4 r8 |
  ees4 r8 r4 r8 |
  ees4 r8 bes4 r8 |
  ees4 r8 r4 r8 |
  ees2.( |
  f) |
  g4 r8 r4 ees8 |
  bes'4.( bes,8) r r |
  ees' r r bes r r |
  ees,4 r8 r4 r8 |
  ees' r r bes r r |
  ees,4 r8 r4 r8 |
  ees'4.( d) |
  c4 r8 r4 r8 |
  d4.( c) |
  bes4 r8 r4 r8 |
  g2.( |
  f4) r8 r4 r8 |
  R2.*9 |
  r8 r ges( f) r ges( |
  f) r ges( f) r ges( |
  f4) r8 a,4.( |
  bes a |
  bes8) r r ees r r |
  f r r f, r r |
  bes4 r8 a4.( |
  bes a |
  bes8) r r ees r r |
  f r r f, r r |
  bes\f bes bes bes d d |
  d f f f bes bes |
  bes4 r8 r4 r8 |
  R2. |
  bes,2.~\p |
  bes |
  ees4. r8 r ees( |
  bes') bes bes bes bes bes |
  bes4. r8 r bes,( |
  ees) ees ees ees ees ees |
  ees2.~ |
  ees4.~ ees4 bes8 |
  ees4( bes8) ees4( aes,8) |
  bes4.~ bes8 r r |
  ees4.\f r8 r ees( |
  bes') bes-. bes-. bes-. bes-. bes-. |
  bes4. r8 r bes,( |
  ees) ees-. ees-. ees-. ees-. ees-. |
  ees2.~\p |
  ees |
  aes,8 r r bes r r |
  ees r r r4 r8 |
  r4 r8 bes r r |
  ees r r r4 r8 |
  r4 r8 g, r r |
  c8-.\f b-. c-. des-. ees-. f-. |
  ees-. des-. c-. bes-. aes-. g-. |
  aes4 r8 r4 r8 |
  aes'4\p r8 r4 r8 |
  g4 r8 r4 r8 |
  g,4 r8 r4 r8 |
  aes4 r8 aes'4 r8 |
  aes,4. r8 r e''( |
  f4.) r8 r des |
  ees4.( ees,8) r r |
  aes,4 r8 r4 r8 |
  aes'4 r8 r4 r8 |
  g4 r8 r4 r8 |
  g,4 r8 r4 r8 |
  aes4 r8 aes'4 r8 |
  aes,4. r8 r c( |
  des4.) r8 r ees8 |
  aes,4.~ aes8 r r |
  ees'8 r r ees r r |
  ees2. |
  ees8 r r ees r r |
  ees4.~ ees8 r r |
  R2. |
  r4 r8 r4 c8( |
  des) r r ees r r |
  aes,4.~ aes8 r r |
  ees' r r ees r r |
  ees2. |
  ees8 r r ees r r |
  ees4.~ ees8 r r |
  R2. |
  r4 r8 r4 c8( |
  des) r r ees r r |
  aes,4 r8 r4 r8 |
  R2.*7 |
  r8 r ges'( f) r ges( |
  f) r ges( f) r ges( |
  f) f f f f f |
  f2. |
  bes,4 r8 r4 r8 |
  bes8\f bes' bes bes bes bes |
  bes4 r8 r4 r8 |
  bes,2.~\p |
  bes4 r8 r4 r8 |
  bes8\f bes' bes bes bes bes |
  bes4 r8 r4 r8 |
  bes,2.~\p |
  bes4 r8 bes'4 r8 |
  bes,4 r8 bes'4 r8 |
  r8 bes\f bes bes f f |
  f d d d bes bes |
  bes4 r8 r4 r8 |
  R2. |
  ees4.\p r8 r ees( |
  bes') bes bes bes bes bes |
  bes4. r8 r bes,( |
  ees) ees ees ees ees ees |
  ees2.~ |
  ees4.~ ees4 bes8 |
  ees4( bes8) ees4( aes,8) |
  bes4.~ bes8 r r |
  ees4.\f r8 r ees( |
  bes') bes-. bes-. bes-. bes-. bes-. |
  bes4. r8 r bes,( |
  ees) ees-. ees-. ees-. ees-. ees-. |
  ees2.~\p |
  ees |
  aes,8 r r bes r r |
  ees4 r8 r4 r8 |
  R2.*3 |
  ees'8\p r r bes r r |
  g r r ees r r |
  bes' r r f r r |
  d r r bes r r |
  ees r r r4 r8 |
  R2.*3 |
  g4 r8 r4 r8 |
  g,4 r8 r4 r8 |
  aes4 r8 r4 r8 |
  aes'4 r8 r4 r8 |
  bes4 r8 bes4 r8 |
  g4 r8 ees4 r8 |
  bes4 r8 bes ees g |
  bes4 r8 bes,4 r8 |
  ees4 ees8-.\f aes4( g8) |
  aes4( g8) aes-. aes( g) |
  d4 r8 aes'4.(\p |
  g8) r r bes r r |
  ees, r ees-.\f aes4( g8) |
  aes4( g8) aes-. aes( g) |
  d4\fermata r8 aes'4.( |
  g bes) |
  ees, aes( |
  g bes) |
  ees,8\f g bes ees, g bes |
  ees, g bes ees, g bes |
  ees,4 ees'16 ees ees4 bes16 bes |
  bes8 g g g ees ees |
  ees bes g' ees bes g' |
  ees bes g' ees bes g' |
  ees4 r8 r4 r8 |
  ees4 r8 ees4 r8 |
  ees4 r8 r4 r8 |
}

