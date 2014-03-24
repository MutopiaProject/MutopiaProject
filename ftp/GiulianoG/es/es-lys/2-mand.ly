\version "2.18.0"

IIMand =  \relative c''' {
  \clef "treble"
  \key c\minor
  \time 4/4

  \repeat "volta" 2 {
  \partial 8 g8 |
  %1 page 5
  c,16. d32 c8 r g' d16. es32 d8 r g |
  d16. es32 d8 r16. as'32 g16. f32 es16 d c8 r g |
  \grace d'16 c8 b16 c d8 d \grace es16 d8 c g'4 ~ |
  g8 f16 es d8 c b16-. fis'( g) d es-. d( es) c-. |
  %5
\octaveCheck b'
  b16-. fis'( g) d-. es-. d( es) c-. <b d, g,>4 r8 b |
  \grace d16 es8 es, \tuplet 6/4 {bes'16 g as bes c d} es8 es, r bes''16 g |
  es8 es r16 es f g e8 f r as16 f |
  d d r es f g as f bes16. g32 es8 r bes32 as g f |
\octaveCheck f'
  es8 es r16 es f g es8 f r as32 g f es |
  %10
  d16 f r as r f r d bes'8. g16 es8 as'32 g f es |
  d16 f r as r f r d \grace d es8 es, r bes''16 g |
  %12 Note: The r16 rests are not visible
  es g r bes r bes r g \grace bes16 as g32 f f8 ~ f des16 bes |
  \grace bes as8 g16 f e32[ f g f] \grace as16 g16[ f32 e] f8 c as as''16 f |
\octaveCheck d''
  d16 f r as r g r f \grace as g f32 es es8 ~ es c16 as |
  %15
  \grace as16 g8 f16 es d32[ es f es] \grace g16 f[ es32 d] es8 bes g g''16 es |
  %16 page 6
\octaveCheck d''
  d8 d ~ d16 d es c b8 g ~ g16 as b! c |
  d es f g \appoggiatura {f32[ g]} as8 g16 f \grace f es d32 c c16 c c8 g'16 es |
  d8 d ~ d16 d es c b8 g ~ g16 as b c |
  d es f g \appoggiatura {f32[ g]} as8 g16 b, c8 c, r g'' |
\octaveCheck c'''
  %20
  c16 c r g c bes as g as as r f bes as g f |
  g g r es as g f es f f r as g f es d |
  es es r g f es d c d d r f es d c b |
  c8[ r16 c] \grace d c[ b32 c] \grace d16 c[ b32 c] as'8 g as g16 b,! |
\octaveCheck b'
  \grace d16 c b32 c c,16 c' \grace d16 c b32 c \grace d16 c b32 c as'8 g as g16 b,! |
  %25
  c4^\fermata r8
  }
}
