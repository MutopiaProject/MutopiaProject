\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Alto - 3ème mvt
\relative c'{
\clef alto
\key ees \major
\time 6/8
\override Score.MetronomeMark #'transparent = ##t
\tempo 4.=60


R2.
bes4. bes
bes bes 
bes bes
bes aes
c bes8 aes g
aes4 a8 bes4 c8
bes4.:8 bes:
bes4 r8 bes'4.\f
bes bes
bes bes
bes bes
bes r4 r8
aes,4 aes'8 aes g f
bes4 aes8 g4 es8
aes,4. bes
ees4.:8 ees:
ees4 \bar "||" \noBreak r8 ees4\p ees8
d4 bes8 c4 f8
bes,4. ees4 ees8
d4 bes8 c4 f8
bes,4 d8 ees4.:8
ees8-| f-| g-| ees-| d-| c-|
f16( e f e f e) f4 r8
\set Score.skipBars = ##t R2. * 4 
%
%
%
d4.(\p ees)
d( ees)
d( ees)
d ees4\f ees8
f4 f8 f,4 f8
bes' f d bes4 r8
\set Score.skipBars = ##t R2. * 4 
%
%
%
d4.(\p ees)
d( ees)
d( ees)
d ees4\f ees8
f4 f8 f,4 f8
bes4. ees8 ees ees
f f f f, f f
bes4. bes8-| d-| f-|
bes4 r8 r4 r8
R2.
bes,4. bes
bes bes 
bes bes
bes aes
c bes8 aes g
aes4 a8 bes4 c8
bes4.:8 bes:
bes4 r8 bes'4.\f
bes bes
bes bes
bes bes
bes r4 r8
aes,4 aes'8 aes g f
bes4 aes8 g4 es8
aes,4. bes \bar "||" \override Score.RehearsalMark #'break-align-symbols = #'(time-signature) \override Score.RehearsalMark #'self-alignment-X = #left \override Score.RehearsalMark #'padding = #2.0 \time 3/8 \mark \markup {\bold "Presto"} \tempo 4.=90
ees4 g16 ees
c8 c c
c4 ees16 c
aes4 c16 aes
f8 f f
f4 aes'16 f
d4 f16 d
bes4.
bes4 r8
f'4.:8
ees:
d:
ees:
f:
ees:
d:
ees8 ees ees\p
\repeat unfold 7 {ees4.:8}
%
%
%
%
%
%
ees4.:16\f
d:
\repeat unfold 4 {ees8. f16 g8}
%
%
%
aes4.:8
aes:
bes:
bes,:
ees4 r8
d4 r8
ees4 r8
f4 r8
g4 r8
d4 r8
ees4 r8
f4 r8
g4 r8
ees8\p ees ees
\repeat unfold 6 {ees4.:8}
%
%
%
%
%
bes':\f
bes:
ees,8 bes g
ees4 r8
aes4.:8
aes:
bes:
bes:
bes:
bes:
ees4 r8
R4.
aes,4 r8
bes4 r8
ees4 r8
R4.
aes,4 r8
bes4 r8
ees4 r8
R4.
r8 r ees'16 bes
g8 bes g
ees4 g16 ees
bes8 ees bes
g ees' ees
ees ees ees
ees g bes
ees, g bes
ees,4 r8 \bar "|." 
}
