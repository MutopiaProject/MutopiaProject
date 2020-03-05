\version "2.18.2"
\include "includes.ly"

pianoleft = {
\set Staff.midiInstrument = "acoustic grand"
\clef bass
\key ees \major
\time 4/4
\repeat volta 2 {
  <ees, ees>4 r r2 |
  r <ees, ees>4-. <ees, ees>-. |
  <ees, ees>-. r r2 |
  r <ees, ees>4-. <ees, ees>-. |
  <aes,, aes,>-. r r2 |
  r \clef treble \dslur <bes f' aes'>( |
  <c' ees' g'>2.) <aes f'>4( |
  <bes ees'>) \undslur r <bes d'> r |
  \clef bass ees r r2 |
  r d( |
  ees4) r8 ees-. g-._[ bes-. \change Staff = "right" ees'-. g'-.] |
  bes'4-. \change Staff = "left" r <bes, f aes>2\sf |
  ees8( g bes ees' ees g bes ees' |
  ees f aes d' ees f aes d' |
  ees g bes des' ees g bes des' |
  ees aes c' ees' ees f aes d') |
  ees'( ees bes ees g ees ees' ees |
  d' ees aes ees f ees d' ees) |
  des' ees bes ees g ees des' ees |
  <aes c'> ees <aes c'> ees <f d'> ees <f d'> ees |
  <ees g bes ees'>4 r r2 |
  \clef treble r4 r8 c'-. ees'-. g'-. c''-. bes'-. |
  a'4 \clef bass r8 f-. a-._[ c'-. \change Staff = "right" f'-. a'-.] |
  bes'4 \change Staff = "left" r8 bes-. \change Staff = "right" d'-._[ f'-. bes'-. a'-.] \change Staff = "left" |
  <g bes e' g'>1\sf |
  <f f'>4 f r r8 f |
  <g, bes, e>1\sf |
  \stemDown <f, c>4 f \stemNeutral f f |
  f r8 <bes d'>( <a c'>4) r8 <g bes>( |
  <a f>4) r <f, f> r |
  <f,, f,> r r2 |
  r1 |
  bes,2-. bes,-. |
  bes,2.\rf b,4( |
  c g, ees, d, |
  c, ees, g,) r |
  c2-. c-. |
  a,2. a,4-. |
  \stemDown bes,_. a,_. bes,_. g,_. |
  f,2. r4 |
  <bes, f bes>2-. <bes, f bes>-. |
  <bes, f bes>2. <b d'>4( |
  c' g' ees' d' |
  c' ees' g') r |
  c'2-. <bes c'>-. |
  <a c'>2. <a c'>4-. |
  <bes d'>-. <a c'>-. <bes d'>-. <g bes>-. |
  <f c'>2. <a c'>4 |
  <bes d'>-. <a c'>-. <bes d'>-. <g bes>-. |
  <f c'>2. <d c'>4 |
  ees8( g bes ees' ees f a c') |
  d( f bes d') r2 |
  \clef treble ees'8( g' bes' g' ees' f' a' f') |
  d'( f' bes' f') r2 |
  \clef bass ees8( g bes ees' ees f a c') |
  d( f bes d' \clef treble f' d' ees' bes') |
  f'( bes' g' bes') ees'4 f' |
  bes r r2 |
  \clef bass <ees ees,>1_( |
  <d d,>4) r r2 |
  <ees ees,>1_( |
  <d d,>4) r r2 |
  <e e,>_( <ees ees,> |
  <d d,>4) r r2 |
  \clef treble d'( ees'4 f') |
  ees'4 r r2 |
  c'( d'4 ees') |
  <bes d'>4 r r2 |
  \clef bass f4( g8 f ees d c b,) |
  c4 r r2 |
  ees4( f8 ees d c bes, a,) |
  bes,4-. aes,-. g,-. d-. |
  ees-. d-. ees-. c-. |
  <d f bes>\arpeggio r <ees g bes ees'>\arpeggio r |
  <f bes d'>\arpeggio r r ees |
  <d f bes>\arpeggio r <ees g bes ees'>\arpeggio r |
  <f bes d'>\arpeggio r r2 |
  f,4 r r2 |
  <f, a, c ees>1 |
  \repeat unfold 2 {bes,,8_[ bes, bes,, bes,]} |
  \repeat unfold 3 { \repeat unfold 2 {bes,,8^[ bes, bes,, bes,]} | }
  %{Placeholder
  %}
  \stemUp bes,,4 \stemNeutral \tuplet 3/2 4 {d8-. ees-. f-. g8-. a-. bes-. c'-. d'-. ees'-.} |
  \clef treble \stemUp f'2( g'4-.) a'-. \stemNeutral |
  bes' \clef bass \tuplet 3/2 4 {d8-. ees-. f-. g8-. a-. bes-. c'-. d'-. ees'-.} |
  \clef treble \stemUp f'2( g'4 a') \stemNeutral |
  bes'2( c''4 d'') |
  <g' ees''>2( <a' f''>4 <bes' g''>) |
  <c'' a''> r \clef bass fis,,2 |
  \tuplet 3/2 4 {g,,8-. a,,-. bes,,-. c,-. d,-. e,-. fis,-. g,-. a,-. bes,-. c-. d-. |
  e-. fis-. g-. a-. bes-. c'-.} d'4-. <ees ees'>-. |
  <f f'> r <f, f> r |
  \tuplet 3/2 4 {g,8( a, bes, c d e fis g a bes c' d' |
  \clef treble e' fis' g' a' bes' c''} d''4-.) \clef bass <ees ees'>-. |
  <f f'> r <f, f> r |
  \repeat unfold 4 {bes,8 f4 bes8 a f4 a,8 |}
  %{Placeholder
  
  %}
  \repeat unfold 2 { \repeat unfold 2 {bes,8 f4 f,8} | }
  %Placeholder
  bes,4-. r bes r |
} % repeat volta
\alternative {
  {bes,4 r r2 |}
  {bes,4 r r2 |}
}
r2 <bes, bes>4-. <bes, bes>-. |
<g, g>-. r r2 |
r <g, g>4-. <g, g>-. |
<c c'>-. r r2 |
r4 r8 c-. ees-. g-. c'-. ees'-. |
g'2( ees'4-.) <c c'>-. |
<g, g>-. <ees, ees>-. <c, c>-. <g,, g,>-. |
\tuplet 3/2 4 {<aes,, aes,>8 c ees aes ees c aes, c ees aes ees c |
aes, c ees aes ees c aes, c ees aes ees c |
bes, des ees g ees des bes, des ees g ees des |
bes, des ees g ees des bes, des ees g ees des |
c ees aes c' aes ees c ees aes c' aes ees |
c ees aes c' aes ees c ees aes c' aes ees |
des f aes bes aes f des f aes bes aes f |
ees aes c' ees' c' aes ees bes des' ees' des' bes |
aes, c ees aes ees c aes, c ees aes ees c |
aes, c ees aes ees c aes, c ees aes ees c |
a, c ees f ees c a, c ees f ees c |
a, c ees f ees c a, c ees f ees c |
bes, des f bes f des bes, des f bes f des |
ges,_[ des ges] bes ges des ges,_[ des ges] bes ges des |
aes,_[ des f] aes f des aes,_[ des f] aes f des |
aes, ees ges aes ges ees aes, ees ges aes, ees ges} |
\repeat unfold 4 { \repeat unfold 4 {des,8 des8} | }
%{Placeholder

%}
des,4 r r2 |
\dslur <des' f'>1( |
<c' g'>4) \undslur \tuplet 3/2 4 {c8-. d-. e-. f-. g-. a-. b-. c'-. d'-.} |
e'2( f'4 d' |
e') r r2 |
<c' e'>1 |
<bes f'>4 r r2 |
bes,4 bes bes bes |
bes r r2 |
<bes des'>1 |
<< {r4 c'2 c'4} \\ {aes2. g4} >> |
<< {\stemDown f4} \\ {\stemUp c'4} >> \stemNeutral d( ees <a, a>) |
bes,8 bes4 d8 ees bes4 g8 |
f bes4 d8 ees bes4 a,8 |
bes, bes4 d8 ees bes4 ges8 |
f bes4 d8 ees bes4 a,8 |
\repeat unfold 3 {bes, bes4 a,8 bes, bes4 a,8 |}
%{Placeholder
%}
bes,4 r r2 |
bes,4 bes bes bes |
bes \tuplet 3/2 4 {bes,8-. c-. d-. ees-. f-. g-. a-. bes-. c'-.} |
d'2( ees'4 c') |
d'2( ees'4 c') |
bes2( c'4 d') |
e'2( f'4 g') |
<f aes>2\<( <g bes>4 <aes c'>\!) |
<bes d'>2( <c' ees'>4 <d' f'>) |
ees r r2 |
r <ees, ees>4-. <ees, ees>-. |
<ees, ees>-. r r2 |
r <ees, ees>4-. <ees, ees>-. |
<aes,, aes,>-. r r2 |
\clef treble r \dslur <bes f' aes'>( |
<c' ees' g'>4) r r \clef bass <aes c' f'>( |
<bes ees'>) \undslur r bes, r |
ees8( g bes ees' ees g bes ees' |
ees f aes d' ees f aes d' |
ees g bes des' ees g bes des' |
ees aes c' ees' ees f aes d') |
<g bes> ees <g bes> ees <g bes> ees <g bes> ees |
<aes d'> ees <aes d'> ees <aes d'> ees <aes d'> ees |
<g bes> ees <g bes> ees <g bes> ees <g bes> ees |
<c ees a>1\sf |
<bes, bes>4 r8 bes,-. d-. f-. bes-. d'-. |
<c ees a>1\sf |
bes,4 bes bes bes |
r16 bes, c d ees f g a \stemDown bes c' \change Staff = "right" d' ees' f' g' aes' a' |
bes'4 \change Staff = "left" \stemNeutral r <bes, bes> r |
<bes,, bes,> r r2 |
r1 |
<ees, ees>2-. <ees, ees>-. |
<ees, ees>2. e4( |
f c' aes g |
f aes c') r |
<f, f>2-. <f, f>-. |
<d, d>2. d,4-. |
ees,-. d,-. ees,-. c,-. |
bes,,2. r4 |
<ees g bes ees'>2-. <ees g bes ees'>-. |
<ees g bes ees'>2. <e e'>4 |
<f f'> \clef treble c''( aes' g' |
f' aes' c'') r |
f'2-. <ees' f'>-. |
<d' f'>2. <d' f'>4-. |
ees'-. d'-. ees'-. <c' ees'>-. |
<c' ees'>2( <bes d'>4) <d' f'>-. |
ees'-. d'-. ees'-. <c' ees'>-. |
<c' ees'>2( <bes d'>4) g |
aes8( c' ees' c' aes bes d' bes) |
g( bes ees' g') bes'4 r8 g' |
aes'8( c'' ees'' c'' aes' bes' d'' bes') |
g'( bes' ees'') r r2 |
a8( c' ees' c' aes ces' d' ces') |
g( bes ees' g' bes' g' aes' ees'') |
bes'( ees'' c'' ees'') aes'4 bes' |
ees' r r2 |
\clef bass \dslur <aes, aes>1( |
<g, g>4) r r2 |
<aes, aes>1( |
<g, g>4) r r2 |
\undslur a8( c' ees' c' aes ces' d' ces') |
\tuplet 3/2 {r8 g bes} ees'4 r2 |
\clef treble g'( aes'4 bes') |
<f' aes'> r r2 |
f'( g'4 aes') |
<ees' g'> r r2 |
\clef bass <c e g c'>1 |
<f aes c' f'>4 r r2 |
<bes, f aes>1 |
<ees g>4-. \clef treble d'-. ees'-. f'-. |
g'-. d'-. ees'-. f'-. |
<g bes ees' g'>\arpeggio r <aes c' ees' aes'>\arpeggio r |
<bes ees' g'>\arpeggio r r <aes bes f'>\arpeggio |
<g bes ees'>\arpeggio r <aes c' ees'>\arpeggio r |
<bes ees' g'>\arpeggio r r2 |
\clef bass <bes, ees g>4 r r8 <bes, ees g> <bes, ees g> <bes, ees g> |
<bes, f aes>1\fp |
\stemDown ees,8 ees ees, ees ees, ees ees, ees \stemNeutral |
\repeat unfold 3 { \repeat unfold 4 { ees, ees } | }
%{Placeholder
%}
ees,4 \tuplet 3/2 4 {ees8-. f-. g-. aes-. bes-. c'-. d'-. ees'-. f'-.} |
\clef treble g'2( aes'4-.) f'-. |
g' \clef bass \tuplet 3/2 4 {ees8-. f-. g-. aes-. bes-. c'-. d'-. ees'-. f'-.} |
\clef treble g'2( aes'4 f') |
\stemUp g'2_( aes'4 bes') \stemNeutral |
c'' <c' aes'>( <d' bes'> <ees' c''>) |
<f' d''> r \clef bass b,,2 |
\tuplet 3/2 4 {c,8-. d,-. ees,-. f,-. g,-. a,-. b,-. c-. d-. ees-. f-. g-. |
a-. b-. c'-. d'-. ees'-. f'-.} g'4-. <aes, aes>-. |
<bes, bes> r <bes,, bes,> r |
\tuplet 3/2 4 {c8( d ees f g a b c' d' \clef treble ees' f' g' |
a' b' c'' b' c'' d''} c''4-.) \clef bass <aes, aes>-. |
<bes, bes> r <bes,, bes,> r |
<ees, ees> r r2 |
r1 |
<g bes>2-. <g bes>-. |
<g c'>2.\rf \clef treble g'4( |
f' c') c'( e' |
f') f'( e') r |
<c' f'>2-. <ces' f' aes'>-. |
<bes f' aes'>2. \clef bass d4-. |
ees-. d-. ees-. c-. |
bes, bes2\sf d4-. |
ees-. d-. ees-. c-. |
bes, bes2\sf <g bes>4( |
<aes c'> <g b> <aes c'> <f aes>) |
<g bes> ees'2\sf <g g'>4( |
<aes aes'> <g g'> <aes aes'> <f f'>) |
<g bes ees' g'>\arpeggio r <aes c' ees' aes'>\arpeggio r |
<bes ees' g'>\arpeggio r r <aes bes f'>\arpeggio |
<g bes ees'>\arpeggio r <aes c' ees'>\arpeggio r |
bes \clef treble bes'2\sf( b'4) |
c''-. <aes aes'>-. <bes g'>-. <bes f'>-. |
\clef bass <ees ees'> r r r8 ees,-. |
g,-._[ bes,-. ees-. g-.] bes4-. r8 g,-. |
aes,-. c-. ees-. aes-. c'4-. r8 aes,-. |
a,-. c-. ees-. ges-. a-. c'-. ees'-. ges'-. |
\clef treble \repeat unfold 4 {<bes ees' g'>} \repeat unfold 4 {<bes d' aes'>} |
<ees' g'>4 \clef bass r8 ees,-. g,-. bes,-. ees-. g-. |
bes4-. r8 g,-. bes,-. ees-. g-. bes-. |
c'4-. r8 aes,-. c-. ees-. aes-. c'-. |
ees'4( c'8-.) a-. ges-. ees-. c-. a,-. |
bes,4 r r2 |
r1 |
\clef treble \repeat unfold 8 {<bes ees' g'>8} |
\repeat unfold 4 {<bes ees' aes'>8} \repeat unfold 4 {<bes d' aes'>8} |
\clef bass \repeat unfold 4 {ees8 bes4 ees'8 d'8 bes4 d8 |}
%{Placeholder

%}
ees8 bes4 bes,8 ees bes4 bes,8 |
ees4 r r r8 bes,, |
\repeat unfold 2 { \repeat unfold 2 {ees,8 bes,4 bes,,8} | }
% Placeholder
ees,4 r r2 |
<bes, f aes>1 |
<ees g>4 r8 ees-. g-. bes-. ees'-. g'-. |
\clef treble <bes f' aes'>1 |
<ees' g'>4-. r \clef bass <ees ees'>-. r |
<ees, ees>-. r r2 | \bar "|."
} % pianoleft
