\version "2.18.2"
\include "includes.ly"

pianoright = {
\set Staff.midiInstrument = "acoustic grand"
\tupletSpan 4
\override DynamicTextSpanner.style = #'none
\global
\clef treble
\repeat volta 2 {
  <g bes ees'>4\f r8 ees'-.\p g'-. bes'-. ees''-. g''-. |
  bes''4-. r <g bes ees'>-.\p <g bes ees'>-. |
  <g bes des'>-. r8 ees'-. g'-. bes'-. ees''-. g''-. |
  bes''4-. r <g bes des'>-.\p <g bes des'>-. |
  <aes c'>-. r8 ees'-. aes'-. c''-. ees''-. aes''-. |
  c'''4( bes''8 aes'' g'' f'' ees'' d'') |
  f''( ees'' g'' ees'' d'' c'' bes' aes') |
  aes'( g' bes' g') g'( f' aes' f') |
  ees'4 r r2 |
  r \dslur <bes f' aes'>\p( |
  <bes ees' g'>4) \undslur r8 ees'-.\f g'-.^[ bes'-. ees''-. g''-.] |
  \stemUp bes''4^. \stemNeutral bes''\sf ~ bes''16( b'' c''' aes'' g'' f'' ees'' d'') |
  f''4\p( ees'') r8 ees''( g'' ees'') |
  aes''4( f'') r8 f''( aes'' f'') |
  bes''4( g'') r8 g''( bes'' g'') |
  b''( c''' bes'' aes'' g'' f'' bes'' aes'') |
  fis''4( g'') r8 d''16( ees'' f'' ees'' g'' ees'') |
  aes''4( f'') r8 e''16( f'' g'' f'' aes'' f'') |
  bes''4( g'') r8 fis''16( g'' aes'' g'' bes'' g'') |
  b''8 ( c''' ) bes''\prall( aes'') g''\prall( f'') ees''\prall( d'') |
  ees''4 < ees'' g'' >-.\p (< ees'' g'' >-. < ees'' g'' >-.) |
  < ees'' g'' >-.( < ees'' g'' >-. < ees'' g'' >-. < ees'' g'' >-.) |
  < ees'' f'' >-.( < ees'' f'' >-. < ees'' f'' >-. \stemUp < ees'' f'' >-.) |
  < d'' f'' >-.^( < d'' f'' >-. < d'' f'' >-. < d'' f'' >-.) \stemNeutral |
  bes''4.\f d'''16 c''' bes'' a'' g'' f'' e'' d'' c'' bes' |
  a' c'' bes' a' bes' c'' d'' e'' f'' e'' d'' c'' bes' a' g' f' |
  bes'\f c'' bes' a' bes' c'' d'' c'' bes' a' g' f' e' d' c' bes |
  \change Staff = "left" a^[ f g a] bes^[ \change Staff = "right" c' d' e'] f' g' a' bes' c'' d'' ees'' e'' |
  f'' f' g' a' bes' c'' d'' e'' f'' g'' a'' bes'' c''' d''' ees''' e''' |
  f'''4 r <f' f''>\ff r |
  <f f'> r r2 | % Future: Cross-staff chord
  r1 |
  <f bes d'>2-.\pp <f bes d'>-. | % Future: Cross-staff chord
  <f bes d'>2.\rf <g d'>4( | % Future: Cross-staff chord
  <g c'> b c' <b d'> | % Future: Cross-staff chord
  <g c' ees'>2 <g b d'>4) r | % Future: Cross-staff chord
  <g c' ees'>2-. <g c' ees'>-. | % Future: Cross-staff chord
  <f c' ees'>2.\rf <f c'>4-. | % Future: Cross-staff chord
  \change Staff = "left" \stemUp f^. f^. f^. bes^. |
  bes2( a4) \change Staff = "right" \stemNeutral r |
  <d' d''>2-.\p <d' d''>-. |
  <d' d''>2.\rf <g' g''>4( |
  <g' ees''> d'' c'' <b' d''> |
  <c'' ees''> g'' <b' d''>) r |
  <g' ees''>2-. <ges' ees''>-. |
  <f' ees''>2.\rf <f' ees''>4-. |
  <f' d''>-. <f' c''>-. <f' d''>-. <bes' e''>-. |
  <bes' e''>2( <a' f''>4) <f' ees''> |
  <f' d''>-. <f' c''>-. <f' d''>-. <bes' e''>-. |
  <bes' e''>2\<( <a' f''>4 <a' fis''>\!) |
  <g' g''>2\fp c''4. d''16 ees'' |
  f''8( g'' a'' bes'' c''' bes'' a'' bes'') |
  g''2 c''4.( d''16 ees'') |
  e''8( f'' g'' f'' ees'' d'' c'' bes') |
  fis''8( g'') fis''( g'') c''4.\trill( d''16 ees'') |
  f''8( g'' a'' bes'' c''' bes'' a'' g'') |
  g''( f'') ees''( d'') d''( c'') bes'( a') |
  bes'-. a'-. g'-. f'-. ees'-. d'-. c'-. bes-. |
  g^(^[ bes c' bes] a^[ c' a \change Staff = "left" f]) \change Staff = "right" |
  bes^( d' f' d' bes^[ d' bes \change Staff = "left" f]) |
  g^(^[ bes c' bes] a^[ ges c' a]) |
  f^(^[ bes d' bes] \change Staff = "right" f'^[ d' \change Staff = "left" bes f]) |
  g^(^[ bes c' bes] a^[ ges c' a]) |
  b16\rest f^[ g a] bes^[ \change Staff = "right" c' d' ees'] f' g' a' bes' c'' d'' ees'' e'' |
  f''4( g''8 f'' ees'' d'' c'' b') |
  c''4 r r2 |
  ees''4( f''8\turn ees'' d'' c'' bes' a') |
  bes'4 r r2 |
  <g' d''>2( <g' ees''>4 <g' f''>) |
  <g' ees''>-. g''8( f'' ees'' d'' c'' bes') |
  <f' a'>2( <f' bes'>4 <f' c''>) |
  <f' bes'>4-. d''8.\trill( c''32 d'' ees''4-.) f''8.\trill( ees''32 f'' |
  g''4-.) f''8.\trill( ees''32 f'' g''4-.) a''8.\trill( g''32 a'' |
  bes''4-.\sf) a''16( bes'' c''' bes'' g''4-.\sf) fis''16( g'' a'' g'' |
  f''4-.\sf) ees''16( d'' c'' bes' a' bes' c'' d'' ees'' f'' g'' a'' |
  bes''4-.\sf) a''16( bes'' c''' bes'' g''4-.\sf) fis''16( g'' a'' g'') |
  f''8.\sf\trill( e''32 f'') d'''8-. c'''-. bes''-. a''-. g''-. f''-. |
  r\f f''\trill( bes'') a''-. g''-.\> f''-. ees''-. d''-.\! |
  c''-.\fp bes'-. a'-. g'-. f'-. ees'-. d'-. c'-. |
  bes4 \change Staff = "left" \tuplet 3/2 4 {d8-.^[ ees-. f-.] g-.^[ a-. bes-.] \change Staff = "right" c'-. d'-. ees'-.} |
  f'2( g'4-.) a'-. |
  bes'4-. \tuplet 3/2 4 {bes8-. c'-. d'-. ees'-. f'-. g'-. a'-. bes'-. c''-.} |
  d''2( ees''4-.) c''-. |
  d''8 f'' f'' f'' f'' f'' f'' f'' |
  f'' f'' f'' f'' <ees'' f''> <ees'' f''> <ees'' f''> <ees'' f''> |
  <d'' f''> f'' f'' f'' f'' f'' f'' f'' |
  f'' f'' f'' f'' <ees'' f''> <ees'' f''> <ees'' f''> <ees'' f''> |
  <d'' f''> bes'' bes'' bes'' <aes'' bes''> <aes'' bes''> <aes'' bes''> <aes'' bes''> |
  <g'' bes''>\< ees''' ees''' ees''' ees''' ees''' ees''' ees'''\! |
  ees'''4\> r\! \clef bass fis,2\fp |
  \tuplet 3/2 4 {g,8-.\< a,-. bes,-. c-. d-. e-. fis-. g-. a-. bes-. c'-. d'\!-. |
  \clef treble e'-. fis'-. g'-. a'-. bes'-. c''-.} d''4-. <g' bes' ees'' g''>4\ff-. |
  <bes' d'' f''> r <c' ees' a'> r |
  \tuplet 3/2 4 {g8\pp( a bes c' d' e' fis' g' a' bes' c'' d'' |
  e'' fis'' g'' a'' bes'' c'''} d'''4-.) <ees'' g'' c''' ees'''>\ff-. |
  <d'' f'' bes'' d'''> r <c'' ees'' f'' a''> r |
  <bes' d'' f'' bes''> <d' bes'>\p( <ees' c''>-.) <ees'' c'''>( |
  <d'' bes''>-.) <d' bes'>( <ees' c''>-.) <c''' ees'''>( |
  <bes'' d'''>-.) <bes' d''>( <c'' ees''>-.) <ees'' c'''>( |
  <d'' bes''>-.) <bes' d''>( <c'' ees''>-.) <c''' ees'''>( |
  <bes'' d'''>-.) <ees'' a''>( <d'' bes''>-.) <ees'' a''>( |
  <d'' bes''>-.) <ees' a'>\pp( <d' bes'>-.) <ees' a'>( |
  <d' bes'>-.) r <d' f' bes'> r |
} % repeat volta
\alternative {
  {<d' f' bes'>4 r r2 |}
  {<d' f' bes'>4 r r2 |}
}
r2 <d' f' bes'>4-.\p <d' f' bes'>-. |
<d' f' b'>-. r r2 |
r <d' f' b'>4-. <d' f' b'>-. |
<ees' c''> r8 c'-. ees'-. g'-. c''-. ees''-. |
g''4-. r8 c'\f-. ees'-. g'-. c''-. ees''-. |
g''2\ff( ees''4-.) c''-. |
g'-. ees'-. c'-. g-. |
aes\p r8 aes'-. c''-. ees''-. aes''-. c'''-. |
ees'''1\startTrillSpan |
ees''' |
ees''' |
\afterGrace ees'''1\< {d'''16( ees''')\stopTrillSpan} |
ees'''2\> des'''16( c''') r8 bes''16( aes'') r8\! |
g''16( f'') r8 bes''16( aes'') r8 g''16( f'') r8 ees''16( des'') r8 |
<< { c''4 ( ees'' ~ } { s8 \once \override Script.script-priority = #-100 s8^\turn^\markup { \flat } s4 } >> ees''8 des'' bes' g') |
aes'4\p r r2 |
r \dslur <ges' ges''>( |
<f' f''>4) r r2 |
r <ees' ees''>( |
<des' des''>4) \undslur r8 f'-.\< bes'-. des''-. f''-. bes''-. |
\acciaccatura des''\> des'''2 c'''16( bes'') r8 aes''16( ges'') r8\! |
f''16( aes'') r8 des''16( f'') r8 aes'16( des'') r8 f'16( aes') r8 |
ges'16( bes') r8 ees'16( ges') r8 c'16( ees') r8 aes16( c') r8 |
des'4 \tuplet 3/2 4 {des'8-. ees'-. f'-. ges'-. aes'-. bes'-. c''-. des''-. ees''-.} |
f''2( ges''4-.) ees''-. |
f''4 \tuplet 3/2 4 {f'8-. ges'-. aes'-. bes'-. c''-. des''-. ees''-. f''-. ges''-.} |
aes''2( bes''4-.) c'''-. |
\crescTextCresc des''' \tuplet 3/2 4 {des'8-.\< ees'-. f'-. ges'-. aes'-. bes'-. c''-. des''-. ees''-.} |
f''1\sfp( \crescHairpin |
e''4) r r2 |
c''2.( b'4 |
c'') r r2 |
g'( aes'4 a' |
bes') r r2 |
f'2( ges'4 ees' |
f') r r2 |
f'( ges'4 g') |
aes'2\<^( ees'4 <e' bes'>\!) |
<f' a'>^( <bes f' aes'>2\sf\> <ees' g'>4\!) |
<d' f'>\p-. <f' aes'>( <ees' g'>-.) <bes' ees''>( |
<aes' d''>-.) <f'' aes''>( <ees'' g''>-.) <g'' ees'''>( |
<f'' d'''>-.) <f' aes'>( <ees' ges'>-.) <bes' ees''>( |
<aes' d''>-.) <f'' aes''>( <ees'' ges''>-.) <ges'' ees'''>( |
<f'' d'''>-.) <ees'' ges''>( <d'' f''>-.) <ges' ees''>( |
\stemDown <f' d''>-.) \stemNeutral <ees' ges'>\pp( <d' f'>-.) <ees' ges'>( |
<d' f'>-.) <ees' ges'>( <d' f'>-.) <ees' ges'>( |
<d' f'>-.) \tuplet 3/2 4 {bes8-. c'-. d'-. ees'-. f'-. g'-. a'-.^[ bes'-. c''-.]} |
<< {d''2^( ees''4 c'')} \\ {bes'2. a'4}>> |
<bes' d''> r r2 |
f'2( ges'4 ees') |
f'2( ges'4 ees') |
d'2( ees'4 f'\<) |
<g' c''>2( <aes' d''>4 <bes' e''>\!) |
<c'' f''>-. c'''2\sf bes''16( aes'' g'' f'') |
ees''\f d'' g'' f'' ees'' d'' c'' bes' a' bes' c'' bes' aes' g' aes' f' |
<g bes ees'>4\ff r8 ees'\p-. g'-. bes'-. ees''-. g''-. |
bes''4-. r <g bes ees'>-.\p <g bes ees'>-. |
<g bes des'>-. r8 g'-. bes'-. ees''-. g''-. bes''-. |
des'''4-. r <g bes des'>-. <g bes des'>-. |
<aes c'>-. r8 ees'-. aes'-. c''-. ees''-. aes''-. |
c'''4( bes''8 aes'' g'' f'' ees'' d'') |
f''( ees'' g'' ees'' d'' c'' bes' aes') |
aes'( g' bes' g') g'( f' aes' f') |
ees'4 ees'' r8 ees''( g'' ees'') |
aes''4( f'') r8 f''( aes'' f'') |
bes''4( g'') r8 g''( bes'' g'') |
b''( c''' bes'' aes'' g'' f'' ees'' d'') |
f''4( \autoBeamOff ees''8) ees'-. \autoBeamOn g'-. bes'-. ees''-. g''-. |
aes''4 r8 f'-. aes'-. d''-. f''-. aes''-. |
bes''4 r8 g'-. bes'-. ees''-. g''-. bes''-. |
\acciaccatura ees''8 ees'''4\f~( ees'''16 d''' c''' bes'') a'' bes'' c''' bes'' a'' g'' f'' ees'' |
d'' f'' ees'' d'' ees'' f'' g'' a'' bes'' a'' g'' f'' ees'' d'' c'' bes' |
ees''\f( f'' g'' f'' ees'' d'' c'' bes') a'^[ bes' c'' bes'] a' g' f' ees' |
d' bes c' d' ees' f' g' a' bes' c'' d'' ees'' f'' g'' aes'' a'' |
bes''4 r8 <ees'' g''>( <d'' f''>4) f''8\rest \stemUp <c'' ees''>^( |
d''4) \stemNeutral r <bes' bes''>\ff r |
\stemUp bes'2\fp ~ bes'8 b'( c'' aes' \stemNeutral |
bes' g' aes' f' g' ees' f' d') |
<bes ees'>2-. <g bes ees' g'>-. |
<g bes ees' g'>2.\rf <c' g'>4( |
<c' f'> e' <c' f'> <bes e' g'> |
<c' f' aes'>2 <e' g'>4) r |
<c' f' aes'>2-. <c' f' aes'>-. |
<bes f' aes'>2.\rf <bes f'>4-. |
bes-. bes-. bes-. ees'-. |
ees'2( d'4) r |
<g' bes' ees'' g''>2\p-. <g' bes' ees'' g''>-. |
<g' bes' ees'' g''>2.\rf c'''4( |
aes'' g'' f'' <e'' g''> |
<f'' aes''> c''' <e'' g''>) r |
<aes' c'' f'' aes''>2-. <aes' ces'' f'' aes''>-. |
<aes' bes' f'' aes''>2.\rf <bes' aes''>4-. |
<bes' g''>-. <bes' f''>-. <bes' g''>-. <ees'' a''>-. |
<ees'' a''>2( <d'' bes''>4) <bes' aes''>-. |
<bes' g''>-. <bes' f''>-. <bes' g''>-. <a' a''>-. |
<a' a''>2\<( <bes' bes''>4 <b' b''>\!) |
<c'' c'''>2\fp f''4.( g''16 aes'') |
bes''8( c''' d''' ees''' d''' ees''' f''' ees''') |
c'''2 f''4.( g''16 aes'' |
a''8 bes'' c''' bes'' aes'' g'' f'' ees'') |
b''( c''') b''( c''') f''4.\trill( g''16 aes'') |
bes''8( c''' d''' ees''' f''' ees''' d''' c''') |
c'''( bes'') aes''( g'') g''( f'') ees''( d'') |
ees''-. d''-. c''-. bes'-. aes'-. g'-. f'-. ees'-. |
c'( ees' f' ees' d' bes f' d') |
ees'( bes ees' g' bes' g' ees' bes) |
c'( ees' f' ees' d' ces' f' d') |
ees'( bes ees' g' bes' g' bes' g') |
b'( c'') b'( c'') f'4.( g'16 aes') |
bes'4 \tuplet 3/2 {r8 g' aes'} bes'16 c'' d'' ees'' f'' g'' aes'' a'' |
bes''4( c'''8 bes'' aes'' g'' f'' e'') |
f''4 r r2 |
aes''4\turn( bes''8 aes'' g'' f'' ees'' d'') | % TODO: Turn
ees''4 r r2 |
<bes' e'' g'' bes''>1\fp |
<aes' f'' aes''>4 r r2 |
aes''4\trill( bes''8 aes'' g'' f'' ees'' d'') |
ees''4-. f''8.\trill( ees''32 f'' g''4-.) d''8.\trill( c''32 d'' |
ees''4-.) f''8.\trill( ees''32 f'' g''4-.) aes''8.\trill( g''32 aes'' |
bes''4\sf-.) d'''16( ees''' f''' ees''' c'''4\sf-.) b''16( c''' d''' c''' |
bes''4\sf-.) aes''16( g'' f'' ees'' d'' ees'' f'' g'' aes'' bes'' c''' d''' |
ees'''4\sf-.) d'''16( ees''' f''' ees''' c'''4\sf-.) b''16( c''' d''' c''' |
bes''4\sf-.) a''16( bes'' c''' bes'' aes''8-.) g''-. f''-. ees''-. |
<bes' ees'' g'' bes''>4\f-. a''16( bes'' c''' bes'' aes''8\>-.) g''-. f''-. ees''-. |
d''\!-. c''-. bes'-. aes'-. g'-. f'-. ees'-. d'-. |
ees'4 \stemUp \tuplet 3/2 4 {\change Staff = "left" ees8^. f^. g^. aes^. bes^. c'^. \change Staff = "right" d'-. ees'-. f'-.} \stemNeutral |
g'2( aes'4-.) f'-. |
g' \tuplet 3/2 4 {g'8-. aes'-. bes'-. c''-. d''-. ees''-. f''-. g''-. aes''-.} |
bes''2( c'''4-.) d'''-. |
ees'''8 bes'' bes'' bes'' bes'' bes'' bes'' bes'' |
bes'' bes'' bes'' bes'' <aes'' bes''> <aes'' bes''> <aes'' bes''> <aes'' bes''> |
<g'' bes''> bes'' bes'' bes'' bes'' bes'' bes'' bes'' |
bes'' bes'' bes'' bes'' <aes'' bes''> <aes'' bes''> <aes'' bes''> <aes'' bes''> |
<g'' bes''>\< ees''' ees''' ees''' ees''' ees''' ees''' ees''' |
ees''' aes'' aes'' aes'' aes'' aes'' aes'' aes'' |
aes''4\> r \clef bass b,2\fp |
\tuplet 3/2 {c8-.\cresc d-. ees-. f-. g-. a-. b-. c'-. d'-. \clef treble ees'-. f'-. g'-.\! |
a'-. b'-. c''-. d''-. ees''-. f''-.} g''4-. <aes' c'' f'' aes''>-.\ff |
<g' bes' ees'' g''> r <f' aes' bes' d''> r |
\tuplet 3/2 {c'8\pp( d' ees' f' g' a' b' c'' d'' ees'' f'' g'' |
a'' b'' c''' d''' ees''' f'''} ees'''4-.) <c'' ees'' aes'' c'''>-.\ff |
<bes' ees'' g'' bes''> r <f' aes' bes' d''> r |
<g' bes' ees''> bes''\sfp~( bes''8 b'' c''' aes'') |
bes''( g'' aes'' f'' g'' ees'' f'' d'') |
ees''4 r r2 |
r8 e'( g' c'' e'' g'' c''' bes'') |
aes''( c''' e'' c''' f'' c''' g'' c''') |
aes''( c''' aes'' c''' g'' c''' b'' c''') |
aes''-. aes'( bes' c'' d'' ees'' f'' g'') |
aes''\rf( d''' f''' ees''' d''' c''' bes'' aes'') |
g''( bes'' f'' bes'' g'' bes'' a'' ees''') |
r ees'''\trill( f'''\sf ees''' d''' c''' bes'' aes'') |
g''( bes'' f'' bes'' g'' bes'' a'' ees''') |
r e'''\trill( f''' ees''' d''' c''' bes'' b'') |
c'''( ees'' b'' ees'' c''' ees'' d''' ees'') |
d'''2( ees'''4) b''8( ees'' |
c''' ees'' b'' ees'' c''' ees'' d''' ees'') |
ees'''4-.\sf d'''16( ees''' f''' ees''' c'''4-.\sf) b''16( c''' d''' c''' |
bes''4-.\sf) aes''16( g'' f'' ees''  d'' ees'' f'' g'' aes'' bes'' c''' d''' |
ees'''4-.\sf) d'''16( ees''' f''' ees''' c'''4-.\sf) b''16( c''' d''' c''') |
<g'' bes''>2.( <f'' aes''>4) |
<ees'' g''>-. <c'' f''>-. <bes' ees''>-. <aes' d''>-. |
<g' ees''> r8 ees'-.\p g'-. bes'-. ees''-. g''-. |
bes''4-. r8 g'-. bes'-. ees''-. g''-. bes''-. |
c'''4-. r8 aes'-. c''-. ees''-. aes''-. c'''-. |
ees'''4-.\rf\<( c'''8-.) a''-. ges''-. ees''-. c''-. a'-.\! |
bes'4 bes''4.\> c'''16 bes'' aes'' g'' aes'' f''\! |
ees''8\p \repeat unfold 7 {ees''} |
\repeat unfold 8 {<des'' ees''>} |
\repeat unfold 8 {<c'' ees''>} |
<a' c'' ees'' ges''>\f \repeat unfold 7 {<a' c'' ees'' ges''>} |
<bes' ees'' g''>16 g' aes' bes' b' c'' cis'' d'' ees'' e'' f'' fis'' g'' aes'' a'' bes'' |
b'' c''' cis''' d''' ees''' d''' des''' c''' b'' bes'' a'' aes'' g'' fis'' f'' e'' |
ees''8-. bes'-. bes''4.\sf c'''16 bes'' aes'' g'' f'' ees'' |
f''1\trill |
ees''4 <g' ees''>\p( <aes' f''>-.) <aes'' f'''>( |
<g'' ees'''>-.) <g' ees''>( <aes' f''>-.) <f'' aes''>( |
<ees'' g''>-.) <g' ees''>( <aes' f''>-.) <aes'' f'''>( |
<g'' ees'''>-.) <g' ees''>( <aes' f''>-.) <f'' aes''>( |
<ees'' g''>-.) <aes' d''>( <g' ees''>-.) <aes' d''>( |
<g' ees''>-.) <ees' g'>^( <f' aes'> <aes d'> |
<g ees'>\pp) <aes d'>( <g ees'>-.) <aes d'>( |
<g ees'>-.) <aes d'>( <g ees'>-.) \dslur <aes d'>( |
<g ees'>-.) \undslur r r2 |
bes'16\pp( c'' d'' ees'' f'' ees'' d'' c'' bes' aes' g' f' ees' d' c' bes) |
ees'4 r8 ees'-. g'-. bes'-. ees''-. g''-. |
bes''16\ff( c''' d''' ees''' f''' ees''' d''' c''' bes'' aes'' g'' f'' ees'' d'' c'' bes') |
ees''4-. r <g' bes' ees'' g''>-. r |
<ees' g' bes' ees''>-. r r2 | \bar "|."
} % pianoright
