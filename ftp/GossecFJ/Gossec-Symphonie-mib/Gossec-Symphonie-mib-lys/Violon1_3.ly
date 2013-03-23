\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Violon1 - 3ème mvt
\relative c''{
\clef treble
\key ees \major
\time 6/8
\override Score.MetronomeMark #'transparent = ##t
\tempo 4.=60


r8 r bes\p bes4 aes8
g g g g( aes) f
ees bes bes' bes4 aes8
g g g g( aes) f
ees4 bes'8 c( d) ees
\appoggiatura f ees d16( c bes aes) g8( aes bes)
\appoggiatura c bes aes16( g f ees) d4 ees8
f bes, bes bes bes bes
bes4 bes''8\f <bes, bes'>4 aes'8
g g g g8. aes16 f8
ees bes bes' <bes, bes'>4 aes'8
g g g g8. aes16 f8
ees4 bes8 c( d e)
f16( g f e f g) aes8-. bes-. c-.
\appoggiatura ees, d8. c16 bes8 ees4 bes'8
c8. bes16 aes8 g aes f
<g, ees'> <g ees'> <g ees'> <g ees'> <g ees'> <g ees'> 
<g ees'>4 \bar "||" \noBreak bes8\p g8. a16 bes8
f4 bes8 f4( \afterGrace ees8\prall) {d16[ ees]}
\appoggiatura ees8 d4 bes'8 g8. a16 bes8
f4 bes8 f4( \afterGrace ees8\prall) {d16[ ees]}
\appoggiatura ees8 d4 f'8\f g16( a g fis) g8
g-. a-. bes-. c-. d-. ees-.
bes4.( a4) r8
\set Score.skipBars = ##t R2. * 4 
%
%
%
f8\p ees16( d c bes) a8( c ees)
f ees16( d c bes) a8( c ees)
f ees16( d c bes) a8( c ees)
f( d bes) bes'8.\f a16 g8
f( g) ees d f16( ees d c)
bes8 f d bes4 r8
\set Score.skipBars = ##t R2. * 4 
%
%
%
f''8\p ees16( d c bes) a8( c ees)
f ees16( d c bes) a8( c ees)
f ees16( d c bes) a8( c ees)
f( d bes) bes'8.\f a16 g8
f( g) ees d f16( ees d c)
bes4 f8 bes8. a16 g8
f( g) ees d f16( ees d c)
bes8-| d-| f-| bes-| d-| f-|     % SIEBER: bes d g bes d f (violon2: bes d f bes d f)
<d, bes' bes'>4 r8 r4 r8
r8 r bes'\pp bes4 aes8
g g g g( aes) f
ees bes bes' bes4 aes8
g g g g( aes) f
ees4 bes'8 c( d) ees
\appoggiatura f ees d16( c bes aes) g8( aes bes)
\appoggiatura c bes aes16( g f ees) d4 ees8
f bes, bes bes bes bes
bes4 bes''8\f <bes, bes'>4 aes'8
g g g g8. aes16 f8
ees bes bes' <bes, bes'>4 aes'8
g g g g8. aes16 f8
ees4 bes8 c( d e)
f16( g f e f g) aes8-. bes-. c-.
\appoggiatura ees, d8. c16 bes8 ees4 bes'8
c8. bes16 aes8 g aes f \bar "||" \override Score.RehearsalMark #'break-align-symbols = #'(time-signature) \override Score.RehearsalMark #'self-alignment-X = #left \override Score.RehearsalMark #'padding = #2.0 \time 3/8 \mark \markup {\bold "Presto"} \tempo 4.=90
<g, ees'>4 g'16 ees
c8 c c
c4 ees16 c
aes4 c16 aes
f8 f f
f4 aes16 f
d4 f16 d
bes8 bes bes
bes4 r8
<bes' f'>4 r8
<bes g'>4 r8
<bes aes'>4 r8
<bes bes'>4 r8
<bes f'>4 r8
<bes g'>4 r8
<bes aes'>4 r8
<bes bes'>8 r bes\p
\repeat unfold 7 {c( bes) bes-.}
%
%
%
%
%
%
<bes bes'>4.:16\f
<bes aes'>:
g'16( f g aes) bes8
g16( f g aes) bes8
g16( f g aes) bes8
g16( f g aes) bes8
c4. 
ees
bes16 bes g g ees ees
aes aes f f d d
<g,, ees'>4 r8
<bes' f'>4 r8
<bes g'>4 r8
<bes aes'>4 r8
<bes bes'>4 r8
<bes f'>4 r8
<bes g'>4 r8
<bes aes'>4 r8
<bes bes'>8 r bes\p
\repeat unfold 7 {c( bes) bes-.}
%
%
%
%
%
%
<bes bes'>4.:16\f
<bes aes'>:
g':
g16 g aes aes bes bes
c4.:16
aes16 aes c c aes aes
bes4.:16
bes16 bes aes aes g g
f4.:16
f16 f ees ees d d
ees8 g, bes
ees g bes
<c, aes'>4 r8
<d, bes' f'>4 r8
<ees bes' g'> g bes
ees g bes
<c, aes'>4 r8
<bes f'>4 r8
<bes g'>4 bes'16 g
ees8 g ees
bes4 ees16 bes
g8 bes g
ees4 g16 ees
bes8 ees bes
g <ees' bes' g'> <ees bes' g'>
<ees bes' g'> <ees bes' g'> <ees bes' g'>
<ees bes' g'>4 r8
<ees bes' g'>4 r8
<ees bes' g'>4 r8 \bar "|." 
}
