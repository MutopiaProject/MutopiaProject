%Cello 1, 3rd movement
\version "2.19.80"

FirstCelloThirdMovement =
{
 \relative c {  
  \key g \minor
  \time 2/4
  \clef "bass"
  g4\pp^\markup{\bold\italic "pizz."}  r8 d |
  \repeat volta 2 {
   g4 r8 d |
   g d g d |
   g d g g |
   d r r d |
   d r r d16^\markup{\bold\italic "arco"} d |
   d2:16 |
   d2:16 |
   g8 r r d^\markup{\bold\italic "pizz."} |
   g r r d |
   g d g d |
   g d g r |
   ees r r bes' |
   ees, r r bes' |
   ees, bes' ees, bes' |
   ees, bes' ees, r |
   R2 |
   r8 c'32^\markup{\bold\italic "arco"} c c c c8 bes16-. c-. |
   d8 r r4 |
   R2 |
   bes'8^\markup{\bold\italic "pizz."} r r4 |
   r8 bes,32^\markup{\bold\italic "arco"} bes bes bes bes8 bes16-. c-. |
   d8 r r4 |
   R2 |
   bes'8 bes16-. bes-. bes8-. bes16-. bes-. |
   bes8-. bes-. bes4~ |
   bes8 bes16-. bes-. bes8-. bes16-. bes-. |
   bes8-. bes-. bes4~ |
   bes8 bes16 bes bes8 bes16 bes |
   a8 a a4 |
   <d, a'>2~ |
   <d a'>~ |
   <d a'>~ |
   <d a'>~ |
   <d a'>4 g( |
   c, f |
   bes,8) bes'16 bes bes8 bes16 bes |
   bes8 bes bes4~ |
   bes8 bes16 bes bes8 bes16 bes |
   bes8 bes bes4~ |
   bes8 bes16 bes bes8 bes16 bes |
   aes8 aes aes4 |
   \repeat "tremolo" 4 {d,16\( a'} |
   \repeat "tremolo" 4 {d,16 a'} |
   \repeat "tremolo" 4 {d,16 a'} |
   \repeat "tremolo" 4 {d,16 a'} |
   \repeat "tremolo" 4 {d,16 a'} |
   d,8\) fis,-. g-. a-. |
   d,( a' d cis |
   d a d cis |
   d a d cis |
   d) r r4 |
   R2*2 |
   d'8\p( cis c b |
   a gis g e) |
   d'( cis c b |
   a gis g e) |
   fis d,16-.( e-. fis-. g-. a-. b-. |
   cis-. d-. e-. fis-. g-. a-. b-. cis-. |
   d8-.) r r4 |
   R2*4 |
   r4 r8 d,16\pp r |
   c! r a r fis r g r |
   bes! r gis r a r a r |
  }
  \alternative
  {
   {
    d, r r8 r4 |
    d'16( ees d ees c d c d |
    bes8) r r d,^\markup{\bold\italic "pizz."} |
   }
   {
    d16 r r8 r4 |    
   }
  }
  R2*3 |
  \repeat "tremolo" 4 {g16\( aes} |
  \repeat "tremolo" 4 {f g} |
  ees8\) r r4 |
  R2 |
  \repeat "tremolo" 4 {c'16\( des} |
  \repeat "tremolo" 4 {bes c\)} |
  \repeat "tremolo" 4 {a!\( bes} |
  \repeat "tremolo" 4 {a bes} |
  \repeat "tremolo" 4 {a bes} |
  \repeat "tremolo" 4 {a b\)} |
  a\( cis a bes! a bes a bes |
  \repeat "tremolo" 4 {a bes} |
  \repeat "tremolo" 4 {a bes} |
  \repeat "tremolo" 4 {a bes\)} |
  \repeat "tremolo" 4 {b\( c} |
  \repeat "tremolo" 4 {b c} |
  \repeat "tremolo" 4 {b c} |
  \repeat "tremolo" 4 {b cis\)} |
  b( dis b c! b c b c |
  b c b c b c b c |
  b4) r |
  R2 |
  r4 r8 b16-.^\markup{\bold\italic "stacc."} a-. |
  g a fis g e fis d e |
  c2~ |
  c2~ |
  c8 r r4 |
  r r8 \afterGrace {e'8\trill\( } {d16[ e]} |
  b'8\) r8 r4 |
  R2 |
  r4 r8 b,16-. a-. |
  gis-. a-. b-. gis-. e-. f-. d-. e-. |
  cis2~ |
  cis~ |
  cis~ |
  cis |
  c2~ |
  c8 r r4 |
  r8 c'16-. bes-. a-. bes-. a-. g-. |
  fis-. g-. fis-. e-. d-. d-. e-. fis-. |
  g2~\p |
  g~ |
  g~ |
  g |
  aes~ |
  aes4( a |
  bes2)~ |
  bes4( b |
  c) g'~ |
  g2~ |
  g4 g~ |
  g2~ |
  g4 g4~ |
  g g~ |
  g2~ |
  g8 g-.( g-. g-.) |
  g2~ |
  g8 g-.( g-. g-.) |
  g2~ |
  g8 \deprecateddim g-.( g-. g-.) |
  g2~ |
  g8 d-.( d-. d-.) |
  ees2~\pp |
  ees~ |
  ees~ |
  ees |
  ees~ |
  ees~ |
  ees~ |
  ees |
  d8 r r d,^\markup{\bold\italic "pizz."} |
  g r r d |
  g d g d |
  g r r16 bes-.^\markup{\bold\italic "arco"} a-. g-. |
  fis-. g-. a-. g-. fis-. d'-. c-. bes-. |
  a-. bes-. c-. bes-. a-. ees'-. ees-. d-. |
  c-. d-. bes-. c-. a-. bes-. g-. a-. |
  fis-. g-. a-. bes-. c-. ees-. d-. c-. |
  bes8-. r r4 |
  r r8 \afterGrace { d,\trill\( } {c16[ d]} |
  g8\) r r4 |
  R2 |
  r8 bes'-. ees( d |
  ees) d( ees16) f-. g8\accent~ |
  g2~ |
  g |
  ees,~ |
  ees~ |
  ees~ |
  ees |
  d8 r ees r |
  c r d r |
  ees2~ |
  ees |
  f~ |
  f |
  <cis, g'>~ |
  <cis g'>~ |
  <cis g'>~ |
  <cis g'> |
  \repeat "tremolo" 4 {g''16\( fis } |
  \repeat "tremolo" 4 {g fis\) } |
  f!-. ees-. f-. ees-. f-. ees-. f-. ees-. |
  f-. ees-. f-. ees-. f-. ees-. f-. ees-. |
  d8 r g r |
  ees r f r |
  \repeat "tremolo" 4 {d16\( e } |
  \repeat "tremolo" 4 {d e\) } |
  c-. d-. c-. d-. c-. d-. c-. d-. |
  c-. d-. c-. d-. c-. d-. c-. d-. |
  ees8 ees r ees |
  r d r d |
  ees8 ees'16-. ees-. ees8-. ees16-. ees-. |
  ees8-. ees-. ees4~ |
  ees8 ees16-. ees-. ees8-. ees16-. ees-. |
  ees8-. ees-. ees4~ |
  ees8 ees16 ees ees8 ees16 ees |
  d8 f f4( |
  ees8) ees ees4~ |
  ees8 ees d4( |
  ees8) ees16 ees ees8 ees16 ees |
  ees8 ees ees4~ |
  ees8 ees16 ees ees8 ees16 ees |
  ees8 ees ees4( |
  c8) ees16 ees ees8 ees16 ees |
  d8 d d4 |
  b2~ |
  b~ |
  b16 b-. a-. b-. g-. b-. a-. b-. |
  g-. b-. a-. b-. g-. b-. a-. b-. |
  g-. b-. a-. b-. g-. b-. a-. b-. |
  g8 b,-. c-. d-. |
  b16-. d-. c-. d-. b-. d-. c-. d-. 
  b d c d b d c d |
  b d c d b d c d |
  b8 r r4 |
  R2*2 |
  g''2\sfp~ |
  g4( d)\accent |
  g2\sf~ |
  g4( d)\accent |
  g2\sf~ |
  g4( d)\accent |
  g,8 g,16-.( a-. b-. c-. d-. e-. |
  fis-. g-. a-. b-. c-. d-. e-. fis-. |
  g8-.) r r4 |
  R2*4 |
  r4 r8 g,16\pp r |
  f r d r b r c r |
  ees r b r c r g r |
  aes r fis r g r d r |
  ees r b' r c r e, r |
  f r cis r d r fis r |
  g r a r bes r fis r |
  g r d r ees r b' r |
  c r gis r a r e r |
  f r cis' r d r a r |
  bes r fis r g r ees r |
  d r g r bes r cis r |
  d r g r bes r ees,, r |
  d r bes' r cis r d r |
  g r bes r d r d,, r |
  g r \deprecateddim g r g r g r |
  g r g r g r g r |
  g\! r r8 r4 |
  \bar "|."
 }    
}

FirstCelloThirdMovementTiming =
{
 s2^\markup {" " \raise #2.0 \bold\huge "Allegro leggierissimo"} |
 s2*74 \pageBreak
 s2*138 \pageBreak
}