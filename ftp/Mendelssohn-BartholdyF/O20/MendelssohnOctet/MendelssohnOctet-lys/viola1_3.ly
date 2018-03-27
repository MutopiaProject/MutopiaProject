%Viola 1, 3rd movement
\version "2.19.80"

FirstViolaThirdMovement =
{
 \relative c' {  
  \key g \minor
  \clef "alto"
  \time 2/4
  bes16-.\pp d-. c-. d-. bes-. d-. c-. d-. |
  \repeat volta 2 {
   bes-. d-. c-. d-. bes-. d-. c-. d-. |
   bes-. d-. c-. d-. bes-. d-. c-. d-. |
   bes d c d bes bes c d |
   ees d c d ees bes c d |
   ees d c d ees a, a bes |
   c c d d ees ees e e |
   fis fis g g a a fis fis |
   g d c d bes d c d |
   bes d c d bes d c d |
   bes d c d bes d c d |
   bes d c d bes a g fis |
   g bes aes bes g bes aes bes |
   g bes aes bes g bes aes bes |
   g bes aes bes g bes aes bes |
   g bes aes bes g8 r |
   r c'16-. d-. ees8 r |
   r fis,,32 fis fis fis fis8 r |
   r4 r8 bes'16-. c-. |
   d8 r r4 |
   r8 bes16-. c-. des8 r |
   r8 e,,32 e e e e8 r |
   r d16-. ees!-. f8 r |
   R2 |
   r8 d''16-. d-. d8-. d16-. d-. |
   d8-. bes-. bes4( |
   d8) d16-. d-. d8-. d16-. d-. |
   d8-. bes-. bes4( |
   c8) c16 c c8 c16 c |
   c8 c c4 |
   d,16( fis e fis d fis e fis |
   d fis e fis d fis e fis) |
   d( fis e fis d fis e fis |
   d fis e fis d fis e fis) |
   d( fis e fis d f d f |
   c e c e c ees c ees |
   d8) d'16 d d8 d16 d |
   d8 bes bes4( |
   bes8) d16 d d8 d16 d |
   
   %% Bar 40
   d8 bes bes4( |
   c8) c16 c c8 c16 c |
   c8 c c4 |
   d,16( fis e fis d fis e fis |
   d fis e fis d fis e fis) |
   d( fis e fis d fis e fis |
   d fis e fis d fis e fis) |
   d( fis e fis d fis e fis |
   d8) a'-. g-. e-. |
   d16( a g a fis a g a |
   
   %% Bar 50
   fis a g a fis a g a) |
   fis( a g a fis a g a |
   fis8) d'-. g-. e-. |
   d-. d-. g-. e-. |
   d a16 a g g g g |
   fis8(\sfp d4.)~ |
   d2 |
   d(\sf |
   d) |
   d4 r |
   R2 |
   r8 d16-.( e-. fis-. g-. a-. b-. |
   cis-. d-. e-. fis-. g-. a-. b-. cis-. |
   d8-.) r r4 |
   R2 |
   r4 r8 a16\pp r |
   g r e r cis r d r |
   c! r a r fis r g r |
   bes! r gis r a r g r |
  } 
  \alternative
  {
   {
    fis r r8 r4 |
    R2 |
    bes16-. d-. c-. d-. bes-. d-. c-. d-. |
   }
   {
    fis, r r8 r4 |
   }
  }
  R2 |
  r4 r8 d'16 r |
  c r aes r fis r g r |
  R2*4 |
  c2~ |
  c( |
  cis) |
  g( |
  f |
  d) |
  a'( |
  g |
  f4) r |
  R2 |
  fis2~ |
  fis( |
  g)~ |
  g |
  fis~ |
  fis( |
  g4) r8 c-. |
  b-. r b-. r |
  r b16-.^\markup{\bold\italic "stacc."} a-. g-. a-. fis-. g-. |
  e-. fis-. dis8-. e r |
  <c g' e' c'>^\markup{\bold\italic "pizz."} r r4 |
  R2 |
  r8 g'16^\markup{\bold\italic "arco"} f-. e-. f-. d-. g-. |
  c,8 g'\(\trill \grace { fis16[ g]} c8\) r |
  R2*2 |
  r8 d16 c b c a b |
  e, e e e e d f e |
  e2 |
  r8 e'8\trill\( \grace {d16[ e]} a8\) r |
  r a,16-. b-. cis-. b-. d-. cis-. |
  e8-. r r \afterGrace {e,\trill\( } {d16[ e]} |
  a8\) r r4 |
  r8 \once \override Script.script-priority = #-100 a'\trill^\markup{\tiny\flat}\( \grace {g16[ a]} d8\) r |
  r4 r8 c,16 bes |
  a bes a g fis fis g a |
  bes8(\p g d4)~ |
  d2( |
  ees)~ |
  ees~ |
  ees4 e( |
  f ees! |
  d2)~ |
  d4 r |
  r g'4~ |
  g( f! |
  ees) g~ |
  g( f |
  ees8) g4( f8 |
  ees) g4( f8 |
  ees2)~ |
  ees8 ees-.( ees-. ees-.) |
  ees2~ |
  ees8 ees-.( ees-. ees-.) |
  f2~ |
  f8 \deprecateddim f-.( f-. f-.) |
  f2~ |
  f8 f-.( f-. f-.) |
  aes16\pp( c bes c aes c bes c |
  aes c bes c aes c bes c) |
  aes( c bes c aes c bes c |
  aes c bes c aes c bes c) |
  a!( c bes c a c bes c |
  a c bes c a c bes c) |
  g( bes a bes g bes a bes |
  g bes a bes g bes a bes) |
  g8 r r4 |
  r8 d16-. d-. d8-. d16-. d-. |
  d2~ |
  d2~ |
  d16 d-. d-. d-. d4:16-. |
  d2~ |
  d16 d d d d4:16 |
  d8 r r4 |
  r r8 d16-. c-. |
  bes-. c-. a-. bes-. g-. d-. d'-. d,-. |
  \repeat tremolo 4 {d' d,} |
  d' r d,8\trill( \grace {c16[ d]} g8) r |
  R2 |
  r8 bes16-. aes-. g-. f-. ees-. d-. |
  c2~ |
  c2~ |
  c16 c'( bes c a! c bes c |
  a c bes c a c bes c |
  a c bes c a c bes c |
  a c bes c a c bes c |
  d8) r r4 |
  R2 |
  c16( ees d ees c ees d ees |
  c ees d ees c ees d ees) |
  d( f ees f d f ees f |
  d f ees f d f ees f) |
  e( g f g e g f g |
  e g f g e g f g) |
  e( g f g e g f g |
  e g f g e g f g) |
  \repeat tremolo 4 {e\( d} |
  \repeat tremolo 4 {e d\)} |
  d-. c-. d-. c-. d-. c-. d-. c-. |
  d-. c-. d-. c-. d-. c-. d-. c-. |
  c8 r bes r |
  ees r d r |
  \repeat tremolo 4 {aes16\( g} |
  \repeat tremolo 4 {aes16 g\)} |
  ges-. f-. ges-. f-. ges-. f-. ges-. f-. |
  ges-. f-. ges-. f-. ges-. f-. ges-. f-. |
  ees8 c' r c |
  r bes r c |
  r g'16-._\markup{\bold\italic "leggiero"} aes-. bes8-. c16-. d-. |
  ees8-. g,-. \afterGrace { \once \override Script.script-priority = #-100 g4^\markup{\tiny \flat}\trill\( } {f16[ g]} |
  ees'8\) g,16-. aes-. bes8-. c16-. d-. |
  ees8-. g,-. \afterGrace { \once \override Script.script-priority = #-100 g4^\markup{\tiny \flat}\trill\( } {f16[ g]} |
  ees'8\) a,!16-. bes-. c8-. d16-. ees-. |
  f8-. d-. \afterGrace { d4\trill\( } {c16[ d]} |
  g8\) ees-. \afterGrace { ees4\trill\( } {d16[ ees]} |
  f8\) bes,-. \afterGrace { bes4\trill\( } {a16[ bes]} |
  ees8\) g,16-. aes-. bes8-. c16-. d-. |
  ees8-. g,-. \afterGrace { \once \override Script.script-priority = #-100 g4^\markup{\tiny \flat}\trill\( } {f16[ g]} |
  ees'8\) g,16-. aes-. bes8-. c16-. d-. |
  ees8 g,-. \afterGrace { \once \override Script.script-priority = #-100 g4\trill\(^\markup{\tiny \flat} } {f16[ g]} |
  
  %% Bar 200
  ees'8\) a,!16-. bes-. c8-. d16-. ees-. |
  f8 d-. \afterGrace { d4\trill\( } {c16[ d]\)} |
  <g, b>2~\pp |
  <g b>2~ |
  <g b>8 <g, d'>4.~ |
  <g d'>2~ |
  <g d'>2~ |
  <g d'>8 g'-. c-. a-. |
  g-. d-. d,4~ |
  d2~ |
  d2~ |
  d8 d'-. e-. a-. |
  g-. g,-. c-. a-. |
  g8 g16 g g g fis fis |
  g4 r |
  R2*3 |
  g8\p( fis f e |
  d cis c a') |
  g d16 d d8 r |
  R2 |
  r8 g16-.( a-. b-. c-. d-. e-. |
  fis-. g-. a-. b-. c-. d-. e-. fis-. |
  g8-.) r r4 |
  R2 |
  r4 r8 d16\pp r |
  c r a r fis r g r |
  f! r d r b r c r |
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
  g r bes r d r fis,, r |
  g r \deprecateddim g r bes r bes r |
  bes r bes r bes r bes r |
  bes\! r r8 r4 |
  \bar "|."
 }    
}

FirstViolaThirdMovementTiming =
{
 s2^\markup {" " \raise #4.0 \bold\huge "Allegro leggierissimo"} | 
 s2*104 \pageBreak
}