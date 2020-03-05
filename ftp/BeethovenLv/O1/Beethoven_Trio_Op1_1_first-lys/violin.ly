\version "2.18.2"
\include "includes.ly"

violinMusic = {
\set Staff.midiInstrument = "violin"
\set Staff.instrumentName = "Violino"
\clef treble
\key ees \major
\time 4/4
\repeat volta 2 {
  \tempo "Allegro."
  <g ees' ees''>4\f r r2 |
  r <g ees'>4-.\p <g ees'>-. |
  <g ees'>-. r r2 |
  r g4-. g-. |
  aes-. r r2 |
  r4 d'( f' aes') |
  aes'( g') r f'( |
  ees') r <aes d'>-. r |
  <g ees'>-. r r2 |
  bes'4-.\p bes'~( bes'8 b' c'' aes') |
  g'4 r8 ees'-.\f g'-. bes'-. ees''-. g''-. |
  bes''4-. r <aes d'>2\fp( |
  <g ees'>4) ees'( g' ees') |
  r f'( aes' f') |
  r g'( bes' g') |
  aes'2( f') |
  g'4-. g'( bes' g') |
  r aes'( ces'' aes') |
  r bes'( des'' bes') |
  ees'' c'' aes' aes' |
  g' r8\p bes-. ees'-. g'-. bes'-. d''-. |
  ees''4-.( ees''-. ees''-. ees''-.) |
  ees''-.( ees''-. ees''-. ees''-.) |
  d''-.( d''-. d''-. d''-.) |
  <bes' e''>1\sfp |
  <a' f''>4 r r r8 a |
  <bes e'>1\sfp |
  <a f'>4 r8 d'( c'4) r8 bes( |
  a4) r8 d'( c'4) r8 bes( |
  a4) r <a' f''>\ff r |
  f' r r2 |
  f'\fp( f'8)( d' ees' c') |
  d'2-.\pp d'-. |
  d'2.-.\rf g'4( |
  ees' d' c' d' |
  ees' g' d') r |
  ees'2-. ees'-. |
  ees'2.\rf f'4-. |
  d'-. c'-. d'-. e'-. |
  e'2( f'8 fis' g' ees') |
  d'4\p( ees'8 f' g' a' bes' c'') |
  d''( c'' bes' a' g' f' ees' d') |
  ees'( g' b' g' c'' g' f' g') |
  ees'( g' c' g' b g' fis' g') |
  r c'( ees' g' c'' b' c'' b') |
  c''( d'' c'' bes' a' g' f' ees') |
  d'( f' c' f' d' f' e' bes') |
  r bes'( c'' bes' a' g' f' ees') |
  d'( f' c' f' d' f' e' bes') |
  r bes'\<( c'' bes' a' g' fis' a'\!) |
  g'2\sfp a' |
  bes'4 r r2 |
  r1 |
  r |
  fis'8\p( g') fis'( g') c'4.( d'16 ees') |
  f'4 r r2 |
  r1 |
  r |
  g'2-.\p c'4.( d'16 ees') |
  f'8( g' a' bes' c'' bes' a' bes') |
  g'2-. c'4.( d'16 ees') |
  f'8-. g'-. a'-. bes'-. c''-. d''-. ees''-. f''-. |
  fis''( g'') fis''( g'') c''4.( d''16 ees'') |
  f''4-. g''8( f'' ees'' d'' c'' bes') |
  b'2( c''4 d'') |
  ees''4-. g''8( f'' ees'' d'' c'' bes') |
  a'2( bes'4 c'') |
  d'' r r2 |
  g'4 g'' g'' g'' |
  g'' r r2 |
  c''( d''4 ees'') |
  d''-. bes'2 bes'4-. |
  bes'-. bes'-. bes'-. ees''-. |
  <bes' f''>-.\sf r <bes' g''>-.\sf r |
  d''-.\sf r r c''-. |
  <bes' f''>-.\sf r <bes' g''>-.\sf r |
  r8\f d''( bes'') a''-. g''-. f''-. ees''-. d''-. |
  r d''( g'') f''-. ees''-.\> d''-. c''-. bes'-.\! |
  \dslur <ees' a'>1\fp( |
  <d' bes'>4) \undslur r r2 |
  d''\p( ees''4-.) c''-. |
  d'' \tuplet 3/2 4 {d'8-. ees'-. f'-. g'8-. a'-. bes'-. c''-. d''-. ees''-.} |
  f''2( g''4-.) a''-. |
  bes'' r r2 |
  r ees''8 ees'' ees'' ees'' |
  d''4 r r2 |
  r ees''8 ees'' ees'' ees'' |
  d''4 r aes''8 aes'' aes'' aes'' |
  g''4 r ees''8 ees'' ees'' ees'' |
  ees''1\p |
  d''\<( |
  d''2.\!) <ees' bes' g''>4\ff |
  <d' bes' f''> r <c' ees' a'> r |
  d''1\pp( |
  d''2.) <ees' c'' g''>4\ff |
  <d' d'' f''> r <f' c'' a''> r |
  <d' bes' bes''> r r2 |
  r1 |
  r4 bes'\p\trill( c''-.) r |
  r bes'\trill( c''-.) r |
  r c''( bes'-.) c''( |
  bes'-.) r r2 |
  <d' bes'>4^. r <d' bes'> r |
} % repeat volta
\alternative {
  {<d' bes'>4 r r2 |}
  {<d' bes'>4 r8 bes-.\p d'-. f'-. bes'-. d''-. |}
}
f''4-. r r2 |
r4 r8 b-. d'-. f'-. b'-. d''-. |
f''4-. r <d' b'>-. <d' b'>-. |
<ees' c''>-. r r2 |
r4 r8 c'\f-. ees'-. g'-. c''-. ees''-. |
g''2\ff( ees''4-.) c''-. |
g'-. ees'-. c'-. g-. |
aes r8 aes\p-. c'-. ees'-. aes'-. c''-. |
ees''4 r r2 |
r4 r8 g-. bes-. des'-. g'-. bes'-. |
des''4 r r2 |
r4 r8 aes-. c'-. ees'-. aes'-. c''-. |
ees''2 <aes ees'> |
<aes f'>1 |
c'4( aes g des') |
c' r8 aes-.\p c'-. ees'-. aes'-. c''-. |
ees''4 r r2 |
r1 |
r |
r |
bes'\p |
f' |
\dslur <aes ges'>( |
<aes f'>4) \undslur r r2 |
aes'2( bes'4-.) c''-. |
des''4 r r2 |
f''( ges''4-.) ees''-. |
f'' r r2 |
aes'\sfp( bes'4 b' |
c''-.) r r2 |
g'( aes'4 f') |
g' \tuplet 3/2 4 {c'8-. d'-. e'-. f'-. g'-. a'-. b'-. c''-. d''-.} |
ees''1( |
d''4) r r2 |
bes'2.( a'4) |
bes'-. \tuplet 3/2 4 {bes8-. c'-. d'-. ees'-. f'-. g'-. a'-. bes'-. c''-.} |
des''1( |
d''4\<) c''2( bes'4\!) |
a'( aes'2\sf\> g'4\!) |
f' r r2 |
r r4 ees''\p( |
d''-.) r r2 |
r r4 ees''( |
d''-.) r r2 |
r1 |
r |
r |
f'2( ges'4 ees' |
f') r r2 |
bes'2.( a'4 |
bes'2. a'4) |
bes'1\<( |
bes') |
aes'4\! r r2 |
aes1\f |
<g ees'>4\ff r r2 |
r <g ees'>4-.\p <g ees'>-. |
<g ees'>-. r8 ees'-. g'-. bes'-. ees''-. g''-. |
bes''4-. r g-. g-. |
aes-. r8 c'-. ees'-. aes'-. c''-. ees''-. |
aes''4-. d'( f' aes') |
aes'( g') r f'( |
ees') r <aes d'>-. r |
<g ees'>-. g'( ees') r |
r aes'( f') r |
r bes'( g') r |
aes'2( f') |
ees'8-.( g bes ees') g'( ees' g' ees') |
aes'4( f') r8 f'( aes' f') |
bes'4( g') r8 g'( bes' g') |
<ees' a'>1\sfp |
<d' bes'>4 r r2 |
a1\sfp |
bes4 r8 g'( f'4) r8 ees'( |
d'4) r8 g''( f''4) r8 ees''( |
d''4) r <d' bes' bes''>\ff r |
bes4 r r2 |
bes'\fp ~ bes'8( g' aes' f') |
<bes g'>2-. <bes g'>-. |
<bes g'>2.\rf c''4(
aes' g' f' g' |
aes' c'' g') r |
aes'2-. aes'-. |
aes'2.\rf bes'4-. |
g'-. f'-. g'-. a'-. |
a'2( bes'8 b' c'' aes') |
g'-. g\p( bes ees' g' bes' ees'' f'') |
g''( f'' ees'' d'' c'' bes' aes' g') |
aes'( c'' e' c'' f' c'' bes' c'') |
aes'( c'' f' c'' e' c'' b' c'') |
r f'( aes' c'' f'' e'' f'' e'') |
f''( g'' f'' ees'' d'' c'' bes' aes') |
g'( bes' f' bes' g' bes' a' ees'') |
r ees''( f'' ees'' d'' c'' bes' aes') |
g'( bes' f' bes' g' bes' a' ees'') |
r ees''\<( f'' ees'' d'' c'' b' d'') |
c''4\! r f'2\fp( |
g'4) r r2 |
r1 |
r |
b'8( c'') b'( c'') f'4.( g'16 aes') |
bes'4 r r2 |
r1 |
r |
c''2-. f'4.( g'16 aes') |
bes'8( c'' d'' ees'' f'' ees'' d'' ees'') |
c''2-. f'4.( g'16 aes') |
bes'8-. c''-. d''-. ees''-. f''-. g''-. aes''-. bes''-. |
b''( c''') b''( c''') f''4.( g''16 aes'') |
bes''4-. c'''8( bes'' aes'' g'' f'' ees'') |
e''2( f''4 g'') |
aes''-. c'''8( bes'' aes'' g'' f'' ees'') |
d''2( ees''4 f'') |
g'' r r2 |
bes'4( c''8 bes' aes' g' f' e') |
f'4 r r2 |
aes'4( bes'8 aes' g' f' ees' d') |
ees'4-. f'-. g'-. aes'-. |
bes'-. bes'-. bes'-. d''-. |
ees''-.\sf r <ees' c''>-.\sf r |
<ees' bes'>-.\sf r r <f' d''>-.\f |
<ees' ees''>-.\sf r <ees' c''>-.\sf r |
g'\sf r r2 |
g'4-.\f fis'16( g' aes' g') f'8\>-. ees'-. aes'-. g'-. |
f'\!-. ees'-. d'-. c'-. bes-. aes-. g-. aes-. |
g4 r r2 |
bes( c'4-.) d'-. |
ees' \tuplet 3/2 4 {ees'8-. f'-. g'-. aes'-. bes'-. c''-. d''-. ees''-. f''-.} |
g''2( aes''4-.) f''-. |
g'' \tuplet 3/2 4 {g8-. aes-. bes-. c'-. d'-. ees'-. f'-. g'-. aes'-.} |
bes'2( c''4-.) d''-. |
ees''-. \tuplet 3/2 4 {g8-. aes-. bes-. c'-. d'-. ees'-. f'-. g'-. aes'-.} |
bes'2( c''4 d'') |
ees''2\<( f''4 g'') |
aes''8 aes'' aes'' aes'' aes'' aes'' aes'' aes'' |
aes''1 |
g''\p\<~ |
g''2.\! <f' c'' aes''>4\ff |
<ees'' g''> r <bes f' d''> r |
g''1\pp~ |
g''2. <aes' ees'' c'''>4\ff |
<g' ees'' bes''> r <bes f' d''> r |
<bes g' ees''> r r2 |
bes'\fp~ bes'8( g' aes' f') |
<bes g'>2-. <bes g'>-. |
g'2.\rf c''4( |
aes' g' f' g' |
aes' c'' g') r |
<c' aes'>2-. <ces' aes'>-. |
<bes aes'>2.\rf bes'4-. |
g'-. f'-. g'-. a'-. |
a'2( bes'4) aes'-. |
g'-. f'-. g'-. a'-. |
a'2( bes'4) b'( |
c'' b' c'' d'') |
r8 ees''( g'' f'' ees'' d'' c'' b') |
c''4( b' c'' d'') |
<ees' ees''>^.\sf r <ees' c''>^.\sf r |
g'^.\sf r r <f' d''>^. |
<ees' ees''>^.\sf r <ees' c''>^.\sf r |
g'\sf r r2 |
r1 |
ees'8\p \repeat unfold 7 {ees'} |
\repeat unfold 8 {ees'} |
ees' ees'\< \repeat unfold 6 {ees'} |
\repeat unfold 7 {ees'} ees'\! |
ees'\ff\> ees' ees' ees' d' d' d' d'\! |
ees'4\p r r r8 ees''-.\p |
bes'-. g'-. ees'-. bes-. g4-. r8 ees''-. |
c''-. aes'-. ees'-. c'-. aes4-. r8 ees''\f-. |
c''-. a'-. r a'-. ges'-. ees'-. c'-. a-. |
bes4 r r2 |
r1 |
g16\f bes ees' bes \repeat unfold 3 {g bes ees' bes} |
aes bes ees' bes aes bes ees' bes aes bes d' bes aes bes d' bes |
<g ees'>4 r r2 |
r r4 aes''\p( |
g''-.) r r2 |
r r4 aes''\p( |
g''-.) aes''( g''-.) aes''( |
g''-.) r r2 |
r1 |
r |
ees''16\pp( f'' g'' aes'' bes'' aes'' g'' f'' ees'' d'' c'' bes' aes' g' f' ees') |
d'4-. r8 bes-. d'-. f'-. bes'-. d''-. |
ees''16( f'' g'' aes'' bes'' aes'' g'' f'' ees'' d'' c'' bes' aes' g' f' ees') |
d'4^.\ff r8 bes-. d'-. f'-. bes'-. d''-. |
ees''4-. r <ees' bes' g''>-. r |
<g ees' ees''>-. r r2 | \bar "|."
} % violinMusic

violinStaff = {
 \new Staff {
  \violinMusic
 }
}
