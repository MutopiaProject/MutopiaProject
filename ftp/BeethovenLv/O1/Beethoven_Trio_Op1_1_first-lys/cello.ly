\version "2.18.2"
\include "includes.ly"

celloMusic = {
\set Staff.midiInstrument = "cello"
\set Staff.instrumentName = "Violoncello"
\global
\clef bass
\repeat volta 2 {
  ees4\f r r2 |
  r ees4-.\p ees4-. |
  ees4-. r r2 |
  r ees4-. ees4-. |
  aes,-. r r2 |
  r bes( |
  c') r4 aes( |
  bes) r bes,-. r |
  ees-. r8 ees,-.\p g,-. bes,-. ees-. g-. |
  bes4-. r d2( |
  ees4) r8 ees,-.\f g,-. bes,-. ees-. g-. |
  bes4-. r bes,2\fp |
  ees4( g bes g) |
  r d'( f' d') |
  r bes( des' bes) |
  c'2( d') |
  ees'1 |
  d' |
  des' |
  c'4 aes f bes |
  ees r r2 |
  r1 |
  r4 r8 f,-.\p a,-. c-. f-. a-. |
  bes4-. r8 bes,-. d-. f-. bes-. a-. |
  g1\sfp |
  f4 r r r8 f, |
  g,1\sfp |
  f,4 r8 bes,( a,4) r8 g,( |
  f,4) r8 bes( a4) r8 g( |
  f4) r f,\ff r |
  f2\fp( f8) fis( g ees |
  f d ees c d bes, c a,) |
  bes,2-.\pp bes,-. |
  bes,2.-.\rf b,4( |
  c g, ees, d, |
  c, ees, g,) r |
  c2-. c-. |
  a,2.\rf a,4-. |
  bes,-. a,-. bes,-. g,-. |
  f,2. r4 |
  bes,2-.\p bes,-. |
  bes,2.\rf b,4( |
  c g ees d |
  c ees g) r |
  c2-. bes,-. |
  a,2.\rf a,4-. |
  bes,4-. a,-. bes,-. g,-. |
  f,2 f4-. a-. |
  bes-. a-. bes-. g-. |
  f2.\< d4\! |
  ees2\sfp ees( |
  d4) r r2 |
  r1 |
  r |
  ees2\p ees( |
  d4) r r2 |
  r1 |
  r |
  ees( |
  d4) r r2 |
  ees,1( |
  d,4) r r2 |
  e\<( ees\> |
  d4\!) r r2 |
  g1 |
  c'4 r r2 |
  f1 |
  bes8 f'\p([ g' f'] ees' d' c' bes) |
  b2( c'4 d') |
  ees' r r2 |
  ees'4( f'8 ees' d' c' bes a) |
  bes4-. aes-. g-. d'-. |
  ees'-. d'-. ees'-. c'-. |
  d'-.\sf r ees'-.\sf r |
  f'-.\sf r r ees'-. |
  d'-.\sf r ees'-.\sf r |
  f'\sf r r2 |
  f4 r r2 |
  f,1\fp( |
  bes,4) r r2 |
  r1 |
  r |
  r |
  r4 \tuplet 3/2 4 {bes,8\p-. c-. d-. ees-. f-. g-. a-. bes-. c'-.} |
  d'2( ees'4-.) c'-. |
  d' \tuplet 3/2 4 {bes,8\p-. c-. d-. ees-. f-. g-. a-. bes-. c'-.} |
  d'2( ees'4 c') |
  d'2( ees'4 f') |
  g' r r2 |
  r c'2\p |
  bes1\<( |
  bes2.\!) ees4\ff |
  f r f r |
  bes1\pp( |
  bes2.) ees4\ff |
  f r f, r |
  bes, r r2 |
  r1 |
  r4 d'\p( ees'-.) r |
  r d'( ees'-.) r |
  r1 |
  r4 c'\pp( bes-.) c'( |
  bes-.) r bes, r |
} % repeat volta
\alternative {
  {bes,4 r r2 |}
  {bes,4 r r2 |}
}
r2 bes,4-.\p bes,-. |
g,-. r8 g,-. b,-. d-. g-. b-. |
d'4-. r g,-. g,-. |
c-. r r2 |
r4 r8 c,\f-. ees,-. g,-. c-. ees-. |
g2\ff( ees4-.) c-. |
g,-. ees,-. c,-. g,-. |
aes, r r2 |
r aes\p( |
g4) r r2 |
r g( |
aes4) r r2 |
c1 |
des |
ees |
aes,4 r r2 |
r1 |
r4 r8 f,-.\p a,-. c-. f-. a-. |
c'4-. r r2 |
bes,1\p |
ges, |
aes, |
aes,( |
des,4) r r2 |
r1 |
r |
r |
r |
des'\sfp( |
c'4) r r2 |
c4 c' c' c' |
c' r r2 |
c4 c' c' c' |
bes \tuplet 3/2 4 {bes,8-.\p c-. d-. ees-. f-. g-. a-. bes-. c'-.} |
d'2( ees'4 c' |
d') r r2 |
bes,4 bes bes bes |
aes2.\<( g4\! |
f d\sf\> ees a,\!) |
bes, r r2 |
r r4 g'\p( |
f'-.) r r2 |
r r4 ges'( |
f'-.) r r2 |
r1 |
r |
r |
bes,4 bes bes bes |
bes r r2 |
bes,4 bes bes bes |
bes, bes bes bes |
bes, r r2 |
r1 |
f,2_\p^\<( g,4 aes,\!) |
bes,2\f_( c4 \stemUp d) \stemNeutral |
ees\ff r r2 |
r ees4\p-. ees-. |
ees-. r r2 |
r ees4-. ees-. |
aes,-. r r2 |
r bes( |
c'4) r r aes( |
bes) r bes,-. r |
ees-. bes( g) r |
r f'( d') r |
r des'( bes) r |
c'2( aes) |
g4 ees ees ees |
ees, ees ees ees |
ees, ees ees ees |
c'1\sfp |
bes4 r r2 |
c1\sfp |
bes,4 r8 ees( d4) r8 c( |
bes,4) r r2 |
bes,4 r bes\ff r |
bes, r r2 |
r1 |
ees2\p-. ees-. |
ees2.\rf e4( |
f c aes, g, |
f, aes, c) r |
f2-. f-. |
d2.\rf d4-. |
ees-. d-. ees-. c-. |
bes,2. r4 |
r1 |
r2 r4 e\p( |
f c' aes g |
f aes c') r |
f2-. ees-. |
d2.\rf d4-. |
ees-. d-. ees-. c-. |
bes,2. d4-. |
ees-. d-. ees-. c-. |
bes,2.\< g,4\! |
aes,2\fp aes,( |
g,4) r r2 |
r1 |
r |
a,2( aes, |
g,4) r r2 |
r1 |
r |
aes,( |
g,4) r r2 |
aes,1( |
g,4) r r2 |
a2\<( aes\> |
g4\!) r r2 |
c'1 |
f4 r r2 |
bes1 |
ees8 bes\p([ c' bes] aes[ g f ees]) |
e2( f4 g) |
aes-. c'8( bes aes g f ees) |
d2( ees4-.) f-. |
g-. d-. ees-. f-. |
g-. d-. ees-. f-. |
g\sf-. r aes\sf-. r |
bes\sf-. r r aes\f-. |
g\sf-. r aes\sf-. r |
bes\sf r r2 |
bes,4\f r r8 bes,\> bes, bes, |
bes,1\fp |
ees,4 r r2 |
r1 |
r |
r |
r |
r |
r |
r |
ees'2.\<( des'4) |
c'2( d'4 ees') |
f'1 |
ees'\p\<~ |
ees'2.\! aes4\ff |
bes r bes, r |
ees'1\pp~ |
ees'2. aes4\ff |
bes r bes, r |
ees r r2 |
r1 |
ees2-.\p ees-. |
e2.\rf e4( |
f c' aes g |
f aes c') r |
f2-. ees-. |
d2.\rf bes4-. |
bes-. bes-. bes-. ees'-. |
ees'2( d'4) bes-. |
bes-. bes-. bes-. ees'-. |
ees'2( d'4) g( |
aes g aes f) |
g2. g4( |
aes g aes f) |
g-.\sf r aes-.\sf r |
bes-.\sf r r aes-. |
g-.\sf r aes-.\sf r |
bes\sf r r2 |
r4 aes\p bes bes, |
ees r r2 |
des'8\p \repeat unfold 7 {des'} |
c' c'\< \repeat unfold 6 {c'} |
\repeat unfold 7 {c'} c'\! |
bes\ff\> bes bes bes bes, bes, bes, bes,\! |
ees4\p r8 ees,-. g,-. bes,-. ees-. g-. |
bes4-. r8 g,-. bes,-. ees-. g-. bes-. |
c'4-. r8 aes,-. c-. ees-. aes-. c'-. |
ees'4\f( c'8-.) a-. ges-. ees-. c-. a,-. |
bes,4 r r2 |
r1 |
bes8\f \repeat unfold 7 {bes} |
\repeat unfold 8 {bes,} |
ees4 r r2 |
r r4 f'\p( |
ees'-.) r r2 |
r r4 f'\p( |
ees'-.) f'( ees'-.) f'( |
ees'-.) r r2 |
r1 |
r |
ees,4\pp r8 ees,-. g,-. bes,-. ees-. g-. |
aes1( |
g4) r r2 |
bes,1\ff |
ees4-. r ees,-. r |
ees,-. r r2 | \bar "|."
} % celloMusic

celloStaff = {
 \new Staff {
  \celloMusic
 }
}
