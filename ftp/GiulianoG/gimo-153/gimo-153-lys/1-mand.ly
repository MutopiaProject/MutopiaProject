\version "2.16.0"

IMand =  \relative c'' {
  \clef "treble"
  \key bes\major
  \time 4/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % Note: This removes tuplet brackets from  c8[ \times 2/3 {c16 c c]}.
  \override TupletBracket   #'bracket-visibility = ##f

  %page 5
  \partial 8 f8 | <bes d, f,>4 r8 d,16 es  f8[ \times 2/3 {bes16 a g]}
     f8[ \times 2/3 {bes16 a g]} |
  %2
  f4 r8 d,16 es  f8[ \times 2/3 {bes16 a g]}
     f8[ \times 2/3 {bes16 a g]} |
  %3
  f4 r8 f'16 fis g8. g16 f? es d c |
  \times 2/3 { d16[ es f} f8] r f,16 fis g8. g16 f es d c |
  d c bes8 r4 d'16 d bes bes d d f f |
  %6
  bes8. f16 bes f bes f bes8 f d bes |
  c16 c a a c c f f a8 f a16 f a f |
  a8 f c a bes g bes e | g d c bes bes a a4 |
  %10
  f8 a r c r es es d16 c | bes8 d r f r bes bes16 f d bes |
  f8 a r c r \grace f8 es es d16 c |
  %13
  d8. f16 bes a g f es d c bes bes'8 bes |
  bes8. f16 bes a g f es d c bes bes'8 bes |
   bes8[ r16 d,] d16. bes32 bes16. d32  c8[ r16 g'] f es d c |
  %16
   bes8[ r16 d,] d16. bes32 bes16. d32  c8[ r16 g'] f es d c |
   bes8[ <d bes>16 <d bes>] <d bes>8 <d bes> \breathe <d bes>4 r8 d'16^"Solo" es |
  %18
  \times 4/6 { f16[ g f bes a bes]  f[ g f bes a bes]} f4 r8 d16 es |
  \times 4/6 { f16[ g f bes a bes]  f[ g f bes a bes]} f4 r8 d16 es |
  \times 4/6 { f16[ d es f es d]  es[ c d es d c]} \times 2/3 { d[ es f} f8] r d16 es |
  %21
  \times 4/6 { f16[ d es f es d]  es[ c d es d c]} \times 2/3 { d[ c bes} bes8] r d |
  \times 4/6 { c16[ d c c d c]  f[ e d c bes a]  bes[ c bes bes c bes]  g'[ f e! d c bes] |
   a[ bes a a bes a]  f'[ e d c bes a]} a8 g r4 |
  %24
   e!32[ g-. g-. g-.]  g[-. g-. g-. g-.]  e![ g-. g-. g-. g-. g-. g-. g-.]
     c,[-.( c-. e!-. e-. g-. g-. bes-. bes-. e-. e-. g-.  g)-. bes8-|] |
   a,32[-| c-.( c-. c-. c-. c-. c-.  c)-.]  a[-| c-.( c-. c-. c-. c-. c-.  c)-.]
     f,[-.( f-. a-. a-. c-. c-. f-. f-. a-. a-. a-.  a)-. c8]
   e,,!32[ g-. g-. g-.]  g[-. g-. g-. g-.]  e[ g-. g-. g-. g-. g-. g-. g-.]
     c,[-. c-. e!-. e-. g-. g-. bes-. bes-. e-. e-. g-. g-. bes8-|] |  
  %27
   bes32[( a g a g f e f e d c d c bes a  bes)]  a16[-|( c-| f-|  a)-|]
     f32[-| c( bes c d c bes  c)] |
   a16[-|( c-| f-|  a)-|]  f32[-| c( bes c d c bes  c)]  bes16[ d f bes]
     f32[-| d( c d es d c  d)] |
   bes16[ d f bes]  f32[ d-|( c d es d c  d)]  a16[ c f a]
     f32[-| c( bes c d c bes  c)] |
  %30
   a16[ c f a]  f32[-| c( bes c d c bes  c)]
     c,16[-|( e-| g-| bes-| e-| g-| bes-|  g)-|] |
   c,,[-|( e-| g-| bes-| e-| g-| bes-|  g)-|]  a32[ f g f] \times 2/3 { d16[ f f]}
    \times 4/6 { c[ f f bes, e! e]} |
   a32[ f g f] \times 2/3 { d16[ f f]} \times 4/6 { c[ f f bes, e e]
     a,[ bes a c d c]  f[ g f a f a]} |
  %33
  c8 f,16 g \times 4/6 { a[ g f e f g]  a,[ bes a c d c]  f[ g f a f a]} |
  c8 f,16 g \times 4/6 { a[ g f e f g]} <f c f,>4 r |
  
   c8[ \times 2/3 {f16 e? d]}  c8[ \times 2/3 {f16 e! d]} c4 r8 e!16 g |
  %36
  bes a g f e d c bes bes8 a r e'!16 g |
  bes a g f e d c bes  a8[ \times 2/3 {a'16 bes c]} \times 4/6 { c[ c c c c c]} |
   c8[ r16 c,16]  c8.[^\trill bes32 a]  g8[ \times 2/3 {g'16 a bes]}
    \times 4/6 { bes[ bes bes bes bes bes]} |
   bes8[ r16 bes,16] bes8. a32 g  a8[ r16 c16] f c c a |
  %40
  a' f f c c' a a es! d4. bes'8 |
  \times 4/6 { a16[ g f e d c]  a'[ a a g g g]}  f8[ \times 2/3 {a16 bes c]}
    \times 4/6 { c[ c c c c c]} |
   c8[ \times 2/3 {a,16 bes c]} \times 4/6 { c[ c c c c c]} c4 r8 a16^"Solo" bes |
  %43
  \times 4/6 { c[ d c f e f]  c[ d c f e! f]} c4 r8 a16 bes |
  %44 page 6
  \times 4/6 { c16[ d c c d c]  bes[ c bes bes c bes]} a4 r8 a16 bes |
  \times 4/6 { c16[ d c c d c]  bes[ c bes bes c bes]} a4 r8 c |
  \times 4/6 { c16[ d c c d c]  es![ d c bes a g]} g8 fis r4 |
  %47
  \times 4/6 { d16[ e d fis g fis]  a[ bes a c d c]  fis[ g fis a fis a]} fis4^\trill |
   d,32[ cis d cis d cis d cis] d4^\trill \times 4/6 { d16[ e d g a g]  bes[ c bes d es d] |
   g[ a g bes a bes]} g4 d,32 cis d cis d cis d cis d4 |
  %50
  \times 4/6 { d16[ e d fis g fis]  a[ bes a c d c]  fis[ g fis a fis a]  fis[ g fis a fis a] |
   g[ a g bes a bes]  g[ a g bes a bes]  a[ bes a c a c]  a[ bes a c a c]} |
   bes8[ r16 d,16]  es32[-| c( bes  a)]  es'[-| c( bes  a)] bes8. bes16
     c32[-| bes a bes]  c[-| bes( a  bes)] |
  %53
  %Note: one note is missing in manuscript: it says  bes[ d d g g bes...]
  c8. d16  es32[ c-|( bes  a)]  es'[ c-|( bes  a)]  bes[ bes d d g g bes bes g g d d bes bes g g] |
  d8 fis16 g \times 4/6 { a[ bes a a bes a]}  bes32[ bes d d g g bes bes g g d d bes bes g g] |
   d8[ g'16 a] \times 4/6 { bes[ a g fis g a]} g bes bes bes bes bes bes bes |
  %56
  a16 fis d c  c[-| c( bes  a)]  bes[ bes' bes bes]  bes[ bes bes bes] |
  a fis d c  c[-| c( bes  a)] bes8 d r g | % Note: ends with one extra r8 in the manuscript
  r es16 c d bes c a bes8 d r g |
  %59
  r es16 c d bes c a  g8[ r16 g16] f es d c |
  bes4^"Solo" r8 d'16 es \times 4/6 { f16[ g f bes a bes]  f[ g f bes a bes]} |
  f4 r8 d16 es \times 4/6 { f16[ g f bes a bes]  f[ g f bes a bes]} |
  %62
  f4 r8 d16 es \times 4/6 { f16[ d es f es d]  es[ c d es d c]} |
  \times 2/3 { d[ es f} f8] r d16 es \times 4/6 { f16[ d es f es d]  es[ c d es d c]} |
  \times 2/3 { d[ c bes} bes8] r bes \times 4/6 { d,16[ bes'' bes f, bes' bes]
     d,,[ bes'' bes f, bes' bes] |
  %65
   es,,[ bes'' bes g, bes' bes]  es,,[ bes'' bes g, bes' bes]
     d,,[ bes'' bes f, bes' bes]  d,,[ bes'' bes f, bes' bes] |
   es,,[ bes'' bes g, bes' bes]  es,,[ bes'' bes g, bes' bes]
     es,,[ c' c g c c]  es,[ c' c g c c] |
   f,[ c' c a c c]  f,[ c' c a c c]  es,[ c' c g c c]  es,[ c' c g c c] |
  %68
   f,[ c' c a c c]  f,[ c' c a c c]  a[ f' f c f f]  a,[ f' f c f f] |
   d[ f f es! f f]  d[ f f c f f]  a,[ f' f c f f]  a,[ f' f c f f] |
   es![ f f d f f]  es[ f f c f f]}  d16[ bes c d es f g a] |
  %71
   bes8[ \times 2/3 {g,16 bes' bes]}
    \times 4/6 { f,[ bes' bes es,, bes'' bes]}  d,,[ bes' c d es f g a] |
   bes8[ \times 2/3 {es,,16 bes'' bes]}
    \times 4/6 { d,,[ bes'' bes c,, bes'' bes]}  bes,,[ bes' d f bes f d bes] |
  f8 bes16 c c4\trill  bes16[ c d es f g a bes] |
  %74
  f,8 bes16 c c4\trill bes8 d16 es  f[-. f( es  d)] |
  c8 c16 d  es[-. es( d  c)] d8 d,16 es  f[-. f( es  d)] |
  c8 d16 es  es[-. es( d  c)]  bes8[ bes''16 f] bes8 bes16 f |
  %77
  bes8 d,, es f g bes'16 f bes8 bes16 f |
  bes8 d,, es f bes, d'16 es f g f g |
  f8 <bes d, f,>16 <bes d, f,> <bes d, f,>8 <bes d, f,> <bes d, f,>4 r^\fermata \bar "|."
}
