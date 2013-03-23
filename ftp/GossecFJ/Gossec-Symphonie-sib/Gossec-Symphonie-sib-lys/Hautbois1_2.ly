\version "2.16.0"      %Gossec - Symphonie si bémol
                        %Hautbois1 - 2e mvt  (ou flûte1)
\relative c''{
\clef treble
\key ees \major
\time 6/8




R2.
r8 r bes'-. g4-. bes8-.
g4-. r8 r4 r8
r r bes-. g4-. bes8-.
g4-. r8 r4 r8
\set Score.skipBars = ##t R2. * 3
%
%
r8 r f g-| g( bes)
f4 r8 r4 r8
a4 r8 r4 r8
bes4 r8 r4 r8
a4 r8 r4 r8
bes4 r8 r4 r8
\set Score.skipBars = ##t R2. * 2
%
r8 r f bes8. c16 d8
\appoggiatura d8 c8. bes16 a8 \appoggiatura a8 g8. f16 ees8
ees4( d8) bes'8. c16 d8
\appoggiatura d8 c8. bes16 a8 \appoggiatura a8 g8. f16 ees8
ees4( d8) r4 r8
\set Score.skipBars = ##t R2. * 2
%
r8 r d'-. bes4-. d8-.
bes4 d8 bes4 d8
bes bes bes bes4 r8 \bar ":|:"
\repeat unfold 3 {bes4. bes8 bes bes}
%
%
ges4. ges8 f ees
d4r8 r4 r8
bes'4 bes8 bes4 r8
R2.
r8 r bes g4 bes8
g4 r8 r4 r8
r r bes g4 bes8
g4 r8 r4 r8
r r ees f8. g16 aes8
aes4 g8 r4 r8
r r ees f8. g16 aes8
aes( g16)( aes bes b) c8 bes16( aes g f)
ees4.( d8) r aes'32( g f ees)
d8 d d d r32 aes'( bes c bes aes g f)
ees8 ees ees ees r32 g( aes bes aes g f ees)
d8 d d d r32 aes'( bes c bes aes g f)
ees8 ees ees ees4 e8
f16-.[ f-. f-. f-.] f( g32 aes) bes16. c32 ees,8 \appoggiatura g8 f8
ees4 r8 r4 r8
R2.
r4 r8 \appoggiatura {aes16[ bes]} c4.      % SIEBER c4, violon c4.
bes8. c16 bes8 \appoggiatura bes8 aes8 g f
ees4 bes'8-. g4-. bes8-.
g4-. bes8-. g4-. bes8-.
g g g g4 r8 \bar ":|" 
}
