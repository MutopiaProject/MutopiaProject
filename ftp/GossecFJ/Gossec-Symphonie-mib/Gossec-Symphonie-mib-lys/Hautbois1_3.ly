\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Hautbois1 - 3ème mvt
\relative c''{
\clef treble
\key ees \major
\time 6/8
\override Score.MetronomeMark #'transparent = ##t
\tempo 4.=60


\set Score.skipBars = ##t R2. * 8 
%
%
%
%
%
%
%
r8 r bes' bes4 aes8
g g g g4 f8
ees bes bes' bes4 aes8
g g g g8. aes16 f8
ees4. r4 r8
R2.
r4 r8 r4 bes8
c4 aes'8 g aes f
ees ees ees ees ees ees
ees4 \bar "||" r8 r4 r8
\set Score.skipBars = ##t R2. * 5 
%
%
%
%
r4 r8 r4 f8
f4( d8) f4( d8)
g4.( ees8) bes' g
f4( d8) f4( d8)
g4.( ees8) bes' g
f4. r4 r8
\set Score.skipBars = ##t R2. * 2 
%
r4 r8 bes8. a16 g8
f g ees d f16( ees d c)
bes4. r4 f'8
f4( d8) f4( d8)
g4.( ees8) bes' g
f4( d8) f4( d8)
g4.( ees8) bes' g
f4. r4 r8
\set Score.skipBars = ##t R2. * 2 
%
r4 r8 bes8. a16 g8
f g ees d f16( ees d c)
bes4. bes'8. a16 g8
f g ees d f16( ees d c)
bes4 r8 bes d f
bes4. r4 r8
\set Score.skipBars = ##t R2. * 8 
%
%
%
%
%
%
%
r8 r bes bes4 aes8
g g g g4 f8
ees bes bes' bes4 aes8
g g g g8. aes16 f8
ees4. r4 r8
R2.
r4 r8 r4 bes8
c4 aes'8 g aes f \bar "||" \override Score.RehearsalMark #'break-align-symbols = #'(time-signature) \override Score.RehearsalMark #'self-alignment-X = #left \override Score.RehearsalMark #'padding = #2.0 \time 3/8 \mark \markup {\bold "Presto"} \tempo 4.=90
ees4  r8
\set Score.skipBars = ##t R4. * 8 
%
%
%
%
%
%
%
r8 f( aes)
r g( bes)
r aes( f)
r g( ees)
r8 f( aes)
r g( bes)
r aes( f)
g4 r8
\set Score.skipBars = ##t R4. * 7 
%
%
%
%
%
%
bes4. 
aes
\repeat unfold 4 {g16( f g aes) bes8}
%
%
%
c4.
ees
ees
d
ees4 r8
r8 f,( aes)
r g( bes)
r aes( f)
r g( ees)
r8 f( aes)
r g( bes)
r aes( f)
g aes bes
\repeat unfold 7 {c( bes) bes-|}
%
%
%
%
%
%
bes4.
aes
g
g8 aes bes
c4. ~
c
bes ~
bes8 aes g
f4. ~
f8 ees d
ees4 r8
R4.
aes4 r 8
f4 r8
g4 r8
R4.
aes4 r 8
f4 r8
g4 r8
\set Score.skipBars = ##t R4. * 5 
%
%
%
%
r8 g g
g g g
g4 r8
g4 r8
g4 r8 \bar "|." 
}
