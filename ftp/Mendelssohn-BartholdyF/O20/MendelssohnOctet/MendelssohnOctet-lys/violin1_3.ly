%Violin 1, 3rd movement
\version "2.19.80"

FirstViolinThirdMovement =
{
 \relative c' {  
  \key g \minor
  \time 2/4
  r8 d'-.\pp g( fis |
  \repeat volta 2 {
   g) d-. g( fis |
   \override Script.padding = #'1.0
   g) fis(\trill g) fis\trill( |
   g) fis\trill( g16) \revert Script.padding bes-. a-. g-. |
   fis-. g-. a-. g-. fis-. d'-. c-. bes-. |
   a-. bes-. c-. bes-. a-. ees'-. ees-. d-. |
   c-. d-. bes-. c-. a-. bes-. g-. a-. |
   fis g ees! f d ees c d|
   bes8-. d-. g( fis |
   g) d-. g( fis |
   \override Script.padding = #'1.0
   g) fis\trill( g) fis\trill( |
   g) fis\trill( g16) \revert Script.padding a-. bes8~\accent |
   bes2~ |
   bes2~ |
   bes2~ |
   bes4. c16-. d-. |
   ees8 r r4 |
   R2*2 |
   
   % Bar 20
   r8 g32 g g g g8 bes,16-. c-. |
   des8 r r4 |
   R2*2 |
   r8 c,16-.( d-. ees-. f-. g-. a-. |
   bes8) d,16-. ees-. f8-. g16-. a-. |
   bes8-. d,-. \afterGrace {\once\override Script.padding = #'1.0 d4\trill( } {c16[ d]} |
   bes'8) d,16-. ees-. f8-. g16-. a-. |
   bes8-. d,-. \afterGrace {\once\override Script.padding = #'1.0 d4\trill( } {c16[ d]} |
   bes'8) d,16-. e-. f8-. g16-. a-. |
   
   % Bar 30
   c8-. a-. \afterGrace {\once\override Script.padding = #'1.0 a4\trill( } {g16[ a]} |
   d2~) |
   d2~ |
   d8 a( d cis |
   d a d cis |
   d a c b |
   c! g bes! a |
   bes) d,16-. ees-. f8-. g16-. a-. |
   bes8-. d,-. \afterGrace {\once\override Script.padding = #'1.0 d4\trill( } {c16[ d]} |
   bes'8) d,16-.( e-. f8-. g16-. a-. |
   
   % Bar 40
   bes8) d, \afterGrace {\once\override Script.padding = #'1.0 d4\trill( } {c16[ d]} |
   bes'8) e,16-. f-. g8-. a16-. bes-. |
   c8-. a-. \afterGrace {\once\override Script.padding = #'1.0 a4\trill( } {g16[ a]} |
   d2~\accent) |
   d2~ |
   d8 a,-. a'4~ |
   a8 a,-. a'4~ |
   a8 a,,-. a''4 |
   b16( a) g-. fis-. fis( e) d-. cis-. |
   d4( a' |
   
   % Bar 50
   a'2~) |
   a~ |
   a4 r |
   R2 |
   b,,16( a) g-. fis-. fis( e) d-. cis-. |
   d^\markup{\bold\italic "stacc."} fis e g fis a g b |
   a cis b d cis g' e cis |
   d fis e g fis a g b |
   a cis b d cis g' e cis |
   d2\accent |
   a\accent |
   R2*2 |
   r8 d,,16-.( e-. fis-. g-. a-. b-. |
   cis-. d-. e-. fis-. g-. a-. b-. cis-. |
   d-.) r b r gis r a r |
   g! r e r cis r d r |
   c! r a r fis r g r |
   bes! r gis r a r cis, r |
  }
  \alternative
  {
   {
    d16 r r8 r4 |
    R2 |
    r8 d' g( fis) |
   }
   {
    d,16 r r8 r4 |
   }
  }
  R2 |
  g'16 r ees! r cis r d r |
  c! r aes r fis r g r |
  R2*6 |
  a'!16 r e r bis r cis r |
  a r e r bis r cis r |
  R2*2 |
  a''16 r e r gis, r cis r |
  a r e r bis r cis r |
  R2*4 |
  b16 r e r a r g r |
  b r e r a r g r |
  fis r r8 r4 |
  R2 |
  r8 b16^\markup{\bold\italic "stacc."} a g a fis g |
  e fis g fis e fis dis fis |
  \override Script.padding = #'1.0 
  e8 b'\trill( \grace { a16[ b]} e8) r |
  R2 |
  r8 g,16 f e f d e |
  c d e d c d b d |
  c8 g'\trill( \grace {fis16[ g]} c8) r |
  R2 |
  r8 d16 c b c a b |
  gis a b a gis a fis g |
  e8 b'\trill( \grace {a16[ b]} e8) r |
  R2 |
  r8 a,,16 b cis b d cis |
  e d cis d e d f e |
  a,8 e'\trill( \grace {d16[ e]} a8) r |
  R2 |
  r8 a16 g fis g e fis |
  d d d d d d d d |
  d8 a'\trill( \grace{ g16[ a]} d8) r |
  r4 r8 << { c,\trill( } { s16. \grace {bes16[ c]} s32 } >>
  bes8) bes'\trill( \grace{ a16[ bes]} d8) \afterGrace {bes,\trill(} {a16[ bes]} |
  d8) bes,\trill( \grace {a16[ bes]} d8) \afterGrace { bes'\trill(} {a16[ bes]} |
  ees8) bes'\trill( \grace { a16[ bes]} ees8) \afterGrace { bes,\trill( } {a16[ bes]} |
  ees8) bes,\trill( \grace {a16[ bes]} ees8) \afterGrace { bes'\trill( } {a16[ bes]} |
  
  % Bar 120
  c8) c16.\trill( b32 c8) c16.\trill( b32 |
  c8) f16.\trill( e32 f8) f16.\trill( e32 |
  f8) d16.\trill( cis32 d8) d16.\trill( cis32 |
  %d8) \once \override Script.script-priority = #-100 g16.\trill(^\markup{\tiny\flat} fis32 g8) g16.\trill(^\markup{" " \translate #(cons -4 1) {\tiny\flat}} fis32 |
  d8) \once \override Script.script-priority = #-100 g16.\trill(^\markup{\tiny\flat} fis32 g8) \once \override Script.script-priority = #100 g16.\trill(^\markup{\tiny\flat} fis32 |
  g8) \once \override Script.script-priority = #-100 g,_\markup{\dynamic {p} \bold\italic "leggiero"}\trill(^\markup{\tiny\flat} \grace {fis16[ g]} c8) \afterGrace {c\trill( } {b16[ c]} |
  b8) b\trill( \grace {a16[ b]} g'8) \afterGrace {f\trill( } {ees16[ f]} |
  ees8) \once \override Script.script-priority = #-100 g,\trill(^\markup{\tiny\flat} \grace {fis16[ g]} c8) \afterGrace {c\trill( } {b16[ c]} |
  b8) b\trill( \grace {a16[ b]} g'8) \afterGrace {f\trill( } {ees16[ f]} |
  ees8) ees\trill( \grace {d16[ ees]} g8) \afterGrace {f\trill( } {ees16[ f]} |
  ees8) ees\trill( \grace {d16[ ees]} g8) \afterGrace {f\trill( } {ees16[ f]} |
  
  % Bar 130
  ees8) d\trill( \grace {c16[ d]} c8) \afterGrace {bes\trill( } {a!16[ bes]} |
  a2)( |
  ees'8) d\trill( \grace {c16[ d]} c8) \afterGrace {bes\trill( }{a16[ bes]} |
  a2)( |
  f'8) ees\trill( \grace {d16[ ees]} d8) \afterGrace {c\trill( } {b16[ c]} |
  \deprecateddim b2)( |
  f'8) ees\trill( \grace {d16[ ees]} d8) \afterGrace {c\trill( } {b16[ c]} |
  b2)( |
  \revert Script.padding
  c\pp)~ |
  c~ |
  c~ |
  c |
  c~ |
  c |
  cis~ |
  cis |
  r8 d-. g( fis |
  g) d-. g( fis |
  \override Script.padding = #'1.0 
  d) fis\trill( g) fis\trill( |
  g) fis\trill g16 a bes c |
  \revert Script.padding
  d2:16 |
  d2:16 |
  d2:16 |
  d2:16 |
  d16 r d,8-. g( fis |
  g) d-. g( fis |
  \override Script.padding = #'1.0 
  g) fis\trill( g) fis\trill( |
  g) fis\trill( \revert Script.padding g16-.) a-. bes8\accent( |
  bes2)~ |
  bes4.( b8) |
  
  % Bar 160
  c2~ |
  c8( d ees4)~ |
  ees2~ |
  ees~ |
  ees8_\markup{\bold\italic "espress."} d( f ees |
  d c bes a) |
  r \grace { cis32 } d8 r \grace { fis,32 } g8 |
  r \grace { d32 } ees8 r \grace { gis,32 } a8 |
  c2~ |
  c4( bes8 a) |
  d2~ |
  d4( c8 b) |
  bes'!2~ |
  bes8( g e cis |
  bes g e cis |
  bes4 g'') |
  \repeat "tremolo" 4 { g16\( fis } |
  \repeat "tremolo" 4 { g16 fis\) } |
  
  % Bar 180
  f!16-. ees-. f-. ees-. f-. ees-. f-. ees-. |
  f16-. ees-. f-. ees-. f-. ees-. f-. ees-. |
  d8 d r g |
  r g r f! |
  \repeat "tremolo" 4 { f16\( e } |
  \repeat "tremolo" 4 { f16 e\) } |
  ees!16-. d-. ees-. d-. ees-. d-. ees-. d-. |
  ees16-. d-. ees-. d-. ees-. d-. ees-. d-. |
  c8 r ees r |
  d r fis, r |
  g r r4 |
  R2*7 |
  ees''2:16^\markup{\bold\italic "stacc."} |
  ees2:16 |
  ees2:16 |
  ees2:16 |
  ees2:16 |
  d2:16 |
  g2~ |
  g~ |
  g8 d,-. d'4~ |
  d8 d,-. d'4~ |
  d8 d,-. d'4 |
  e16( d) c-. b-. b( a) g-. fis-. |
  g8-. b-. d4~ |
  d8 d d4~ |
  d8 \grace {fis16} g8 d4 |
  e16( d) c-. b-. b( a) g-. fis-. |
  e( d) c-. b-. b( a) g-. fis-. |
  e( d) c-. b-. b( a) c-. a-. |
  g-. b-. a-. c-. b-. d-. c-. e-.  |
  d-. fis-. e-. g-. fis-. c'-. a-. fis-. |
  g b a c b d c e |
  d fis e g fis c' a fis |
  g b a c b d c e |
  \ottava #1
   \set Staff.ottavation = #"8"
   d fis e g fis c' a fis |
  
  % Bar 220
  g2\accent |
  \ottava #0    

  d\accent |
  R2*2 |
  r8 g,,16-.( a-. b-. c-. d-. e-. |
  fis-. g-. a-. b-. c-. d-. e-. fis-. |
  g-.) r ees! r cis r d r |
  c! r a r fis r g r |
  f! r d r b r c r |
  ees r b r c r g r |
  
  % Bar 230
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
  g r bes r d r fis,, r |
  g g \deprecateddim bes bes d d fis fis |
  g g bes bes d d fis fis |
  g\! r r8 r4 |
  \bar "|."
 }    
}

FirstViolinThirdMovementTiming =
{
 s2^\markup {" " \raise #4.0 \bold\huge "Allegro leggierissimo"} |
 s2*22 \pageBreak
 s2*200 \pageBreak
}