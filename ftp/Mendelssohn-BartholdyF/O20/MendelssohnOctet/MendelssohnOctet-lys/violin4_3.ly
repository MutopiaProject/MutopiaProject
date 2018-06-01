%Violin 4, 3rd movement
\version "2.19.80"

FourthViolinThirdMovement =
{
 \relative c' {  
  \key g \minor
  \time 2/4
  R2 |
  \repeat volta 2 {
   R2*8 |
   r8 d'16\pp d d8 d16 d |
   d8 r r4 |
   R2 |
   ees4.(\p bes8) |
   ees4.( bes8) |
   ees( bes ees bes |
   ees bes ees) r |
   r4 r8 a,,16-. bes-. |
   c8 r r4 |
   r8 g16-. a-. bes8 r |
   r g''32\pp g g g g8 r |
   r4 r8 g,,16-. a-. |
   bes8 r r4 |
   r8 bes16-. c-. d8 r |
   r c32 c c c c8 f |
   f8 d16-. d-. d8-. d16-. d-. |
   d8-. d-. d4~ |
   d8 d16-. d-. d8-. d16-. d-. |
   d8-. d-. d4( |
   c8) c16 c c8 c16 c |
   c8 c c4 |
   R2*2 |
   r8 a'( d cis |
   d a d cis |
   d a c! b |
   c g bes! a |
   bes) d,16 d d4~\startTrillSpan
   d2~ |
   d2~
   
   %% Bar 40
   \afterGrace { d2\( } {c16\stopTrillSpan[ d]\)} |   
   c2~\startTrillSpan |
   \afterGrace {c\( } {bes16\stopTrillSpan[ c]} |
   \repeat "tremolo" 2 {a'8\)\( d,} |
   \repeat "tremolo" 2 {a' d,\)} |
   \repeat "tremolo" 4 {a'16\( a,} |
   \repeat "tremolo" 4 {a' a,} |
   \repeat "tremolo" 4 {a' a,} |
   a'8\) r r4 |
   a,16( d cis d a8 a' |
   a,16 d cis d a8 a' |
   a,16 d cis d a8 a' |
   d,) a'-. b-. g-. |
   fis-. a-. b-. g-. |
   fis d16 d b b a a |
   d2~\sfp |
   d4( a)\accent |
   d2~\sf |
   d4( a)\accent |
   d r |
   R2*7 |
   r4 r8 g16\pp r |
   bes! r gis r a r a, r |
  }
  \alternative
  {
   {
    a r r8 r4 |
    R2*2 |
   }
   {
    a16 r r8 r4 |
   }
  }
  R2*9 |
  a2~\p |
  a~ |
  a( |
  d) |
  <e cis'>~ |
  <e cis'> |
  <d d'>( |
  a'4 g |
  fis2) |
  b,~ |
  b~ |
  b~ |
  b~ |
  b~ |
  b4 r |
  r r8 b'16^\markup{\bold\italic "stacc."} a |
  g a fis g e f dis e |
  b8 r r4 |
  <g g' c e>8^\markup{\bold\italic "pizz."} r r4 |
  r r8 g'16^\markup{\bold\italic "arco"} f |
  e f d e c d b d |
  g8 a,16 b c8 r |
  R2 |
  r4 r8 b'16 a |
  gis a b a gis a fis gis |
  e f! d b gis a gis gis |
  g2~ |
  g4 r8 \afterGrace {e''\trill\( } {d16[ e]} |
  a8\) r r4 |
  R2 |
  <d,, a' fis'>8^\markup{\bold\italic "pizz."} r r4 |
  r r8 \afterGrace {\once \override Script.script-priority = #-100 a''8\trill^\markup{\tiny\flat}\(} {g16[ a]} |
  d8\) r r4 |
  R2 |
  bes,,2\p~ |
  bes~ |
  bes~ |
  bes |
  c~ |
  c4( cis |
  d2)~ |
  d2( |
  c4) r |
  R2*13 |
  aes'2~ |
  aes~ |
  aes~ |
  aes |
  a!~ |
  a |
  g~ |
  g |
  bes,16-. d-. c-. d-. bes-. d-. c-. d-. |
  bes-. d-. c-. d-. bes-. d-. c-. d-. |
  bes-. d-. c-. d-. bes-. d-. c-. d-. |
  bes d c d bes a bes c |
  d2:16 |
  d2:16 |
  d2:16 |
  d2:16 |
  d8 r r4 |
  R2 |
  r8 d'16\pp c bes c a bes |
  g d d' d, d' bes g d |
  g,8 r r4 |
  R2 |
  r8 g'-.\p c( b |
  c) b( c16) d-. ees8\accent~ |
  ees2~ |
  ees~ |
  ees~ |
  ees |
  d8 r r4 |
  R2 |
  c,2~ |
  c |
  d~ |
  d |
  g~\pp |
  g~ |
  g~ |
  g |
  \repeat "tremolo" 4 {g16\( fis} |
  \repeat "tremolo" 4 {g fis\)} |
  f!16-. ees-. f-. ees-. f-. ees-. f-. ees-. |
  f-. ees-. f-. ees-. f-. ees-. f-. ees-. |
  a!8 a r ees' |
  r ees r d |
  \repeat "tremolo" 4 {f,16\( e} |
  \repeat "tremolo" 4 {f e\)} |
  ees!-. d-. ees-. d-. ees-. d ees-. d-. |
  ees-. d-. ees-. d-. ees-. d ees-. d-. |
  g8 r c, r |
  d r a r |
  g r r4 |
  R2*7 |
  ees''2:16^\markup{\bold\italic "stacc."} |
  ees2:16 |
  ees2:16 |
  ees2:16 |
  ees2:16 |
  d2:16 |
  <d, d'>2~ |
  <d d'>~ |
  <d d'>~
  <d d'>~
  <d d'>~
  <d d'>8 g-. e'-. c-. |
  b-. d,-. g( fis |
  g) d-. g( fis |
  g) d-. g( fis |
  g) r r4 |
  R2*2 |
  g'2\sfp~ |
  g4( d)\accent |
  g2\sf~ |
  g4( d)\accent |
  g2\sf~ |
  g4( d)\accent |
  g,8 r r4 |
  R2 |
  d'8 d16-. d-. d8-. r |
  R2 |
  r4 d,8 d16-. d-. |
  d8-. r r4 |
  R2*2 |
  r4 r8 c'16 r |
  ees r b r c r g r |
  aes r fis r g r d r |
  ees r b r c r e r |
  f r cis r d r fis r |
  g r a r bes r fis r |
  g r d r ees r b' r |
  c r gis r a r e r |
  f r cis' r d r a r |
  bes r fis r g r ees r |
  d r g r bes r cis r |
  d r g r bes r ees,, r |
  d r bes' r cis r d r |
  g r bes r d r a,, r |
  bes r \deprecateddim bes r d r d r |
  d r d r d r d r |
  d\! r r8 r4 |
  \bar "|."
 }
}

FourthViolinThirdMovementTiming =
{
 s2^\markup {" " \raise #4.0 \bold\huge "Allegro leggierissimo"} |
 %s2*136\pageBreak
 %s2.*187 \pageBreak
}