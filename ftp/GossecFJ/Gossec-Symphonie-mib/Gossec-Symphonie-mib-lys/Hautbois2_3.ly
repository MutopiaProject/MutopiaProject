\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Hautbois2 - 3ème mvt
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
r8 r g' g4 f8
ees ees ees ees bes aes
g4 g'8 g4 f8
ees bes bes bes4 aes8
g4. r4 r8
R2.
r4 r8 r4 bes8
c4 f8 ees f d
g, g g g g g
g4 \bar "||" r8 r4 r8
\set Score.skipBars = ##t R2. * 5 
%
%
%
%
r4 r8 r4 d'8
d4( bes8) d4( bes8)
ees4.( bes8) g' ees
d4( bes8) d4( bes8)
ees4.( bes8) g' ees
d4. r4 r8
\set Score.skipBars = ##t R2. * 2 
%
r4 r8 g8. f16 ees8
d ees c bes d16( c bes a)
bes4. r4 d8
d4( bes8) d4( bes8)
ees4.( bes8) g' ees
d4( bes8) d4( bes8)
ees4.( bes8) g' ees
d4. r4 r8
\set Score.skipBars = ##t R2. * 2 
%
r4 r8 g8. f16 ees8
d ees c bes d16( c bes a)
bes4. g'8. f16 ees8
d ees c bes d16( c bes a)
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
r8 r g g4 f8
ees ees ees ees bes aes
g4 g'8 g4 f8
ees bes bes bes4 aes8
g4. r4 r8
R2.
r4 r8 r4 bes8
c4 f8 ees f d \bar "||" \override Score.RehearsalMark #'break-align-symbols = #'(time-signature) \override Score.RehearsalMark #'self-alignment-X = #left \override Score.RehearsalMark #'padding = #2.0 \time 3/8 \mark \markup {\bold "Presto"} \tempo 4.=90
g,4 r8
\set Score.skipBars = ##t R4. * 8 
%
%
%
%
%
%
%
r8 d'( f)
r ees( g)
r f( d)
r ees( c)
r8 d( f)
r ees( g)
r f( d)
ees4 r8
\set Score.skipBars = ##t R4. * 7 
%
%
%
%
%
%
ees4. 
f
\repeat unfold 4 {ees16( d ees f) g8}
%
%
%
aes4.
c
g
f
ees4 r8
r8 d( f)
r ees( g)
r f( d)
r ees( c)
r8 d( f)
r ees( g)
r f( d)
ees f g
\repeat unfold 7 {aes( g) g-|}
%
%
%
%
%
%
g4.
f
ees
ees8 f g
aes4. ~
aes
g ~
g8 f ees
aes,4. ~
aes8 g f
g4 r8
R4.
c4 r 8
d4 r8
ees4 r8
R4.
c4 r 8
d4 r8
ees4 r8
\set Score.skipBars = ##t R4. * 5 
%
%
%
%
r8 ees ees 
ees ees ees
ees4 r8
ees4 r8
ees4 r8 \bar "|." 
}
