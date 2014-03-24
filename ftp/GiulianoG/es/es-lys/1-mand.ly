\version "2.18.0"

IMand =  \relative c' {
  \clef "treble"
  \key es\major
  \time 4/4

  \repeat "volta" 2 {
  \partial 8 bes8 |
  %1 page 3
  es es \grace g16 f8 es16 f g8 g \grace bes16 as8 g16 as |
  bes8 bes bes c16 d es8 es, r es' |
  f16 es d c bes8 as as16 f g8 g es' |
    f16[ es d c bes as g f] g8 es r es' |
  %5 
  f16 d as'8 g f g16 bes, bes'8 as g |
  as16 bes, as'8 g f g4 r8 es |
  es16 f d es c d bes c as bes g as f8 f' |
  f16 g es f d es c d bes c as bes g8 g' |
  g16 as f g es f d es c d bes c as8 as' |
  %10
  as16 bes g as f g es f d es c d bes8 as' |
  g as16 bes as8 g f4 r8 f, |
  a16 f e f es' c b c a f e f es' c b c |
  b f e f f' d c d b f e! f f' d c d |
  c f, e f es' f g es d8 bes r f' |
  %15 Note: The a8 grace looks like a c''', but the natural sign indicates it's an a''.
  \grace a8 bes bes, ~ bes16 c d es \grace g f e f g f es d c |
  d8 bes bes'16 a8. g16 fis8. f16 e8. |
  es!16 d8. c16 bes8. a16 bes c d es c bes a |
  bes8 bes, bes''16 a8. g16 fis8. f16 e8. |
  es!16 d8. c16 bes8. a16 bes c d es c bes a |
  %20
  bes4 r8 f' f16 d bes d bes( d f  as!)^. |
  g es bes es bes es g bes a f a f a f a f |
    bes[ a g f es d c bes] f' d bes d bes( d f  as)^. |
  g es bes es bes( es g  bes)^. a f a f a f a f |
  bes4 r8 <<{f,8 f f16 f f8 f} {bes, bes bes16 bes bes8 bes}>> |
  %25
  <d bes>4 r8^\fermata
  }
  \repeat "volta" 2 {
  f'8 <<f4 \\ bes,>> bes'8 a |
  %26
  g8[ f es d] c4 f16 g f es |
  d bes a bes c bes a bes <f' bes,>4 bes8 a |
  g8[ f es d] c4 f16 g f es |
  d8 bes bes4 g8[ bes f bes] |
  %30
  \grace f16 es d es f g f g as <<{bes8[ es d c]} \\ es,2>> |
  \acciaccatura d'8 c[ bes bes bes] g[ bes f bes] |
  \grace f16 es d es f g f g as bes8[ g f es] |
  <d bes>4 r8 bes' <des es, bes>4 des8 bes |
    bes,16[ es g, es' bes es g, es']   as,[ c es es es es es es] |
  %35
    as,[( c  es) es es-. es-. es-. es-.] <des' es, bes>4 des8 bes |
    bes,16[ es g, es' bes es g, es']   as,[( c  es) es es-. es-. es-. es-.] |
    as,[( c  es) es es-. es-. es-. es-.] <es' f, a,>4 es8 c |
  a16 f e f g f e f   bes[ c d es f g a bes] |
    bes[ a g f es d c bes] <es f, a,>4 es8 c |
  %40
  a16 f e f g f e f   bes[ c d es f g a bes] |
  bes,4 r8 f' <as bes, d,>16 bes, a bes c bes a bes |
    d,[( f  bes) bes bes-. bes-. bes-. bes-.]   es,[ g bes bes bes bes bes bes] |
  d, es f g as f es d <as''! bes, d,>16 bes, a bes c bes a bes |
  d, f bes bes bes bes bes bes es,4 r8 bes' |
  %45
  \grace d16
 es8 es, es16 f g as bes a bes c bes as g f |
  g8 es es'16(  d8.) c16 b8. bes16 a8. |
    as!16[ g8. f16 es8.] d16 es f g as f es d |
    es8[ es es'16 d8.] c16 b8. bes16 a8. |
  as!16 g8. f16 es8. d16 es f g as f es d |
  %50
  es4 r8 bes' bes16( g es  g) es( g bes  des)^. |
  c as es as es( as c  es)^. d bes d bes d bes d bes |
  es[ d c bes as g f es] bes' g es g es g bes des |
  c as es as es( as c  es)^. d bes d bes d bes d bes |
  es4 r8 <<{bes bes bes16 bes bes8 bes} \\ {g g g16 g g8 g}>> |
  %55
  <g bes,>4 r8^\fermata
  }
}
