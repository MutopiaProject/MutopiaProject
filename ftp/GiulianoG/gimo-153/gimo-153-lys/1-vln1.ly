\version "2.16.0"

IVlnI =  \relative c'' {
  \clef "treble"
  \key bes\major
  \time 4/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % Note: This removes tuplet brackets from  c8[ \times 2/3 {c16 c c]}.
  \override TupletBracket   #'bracket-visibility = ##f

  %page 12
  \partial 8 f8 | <bes d, f,>4 r8 d,16 es  f8[ \times 2/3 {bes16 a g]}
     f8[ \times 2/3 {bes16 a g]} |
  %2
  f4 r8 d,16 es  f8[ \times 2/3 {bes16 a g]}
     f8[ \times 2/3 {bes16 a g]} |
  %3
  f4 r8 f'16 fis g8. g16 f es d c |
  \times 2/3 { d16[ es f} f8] r f,16 fis g8. g16 f? es d c |
  \times 2/3 { d[ c bes} bes8] r4 d'16 d bes bes d d f f |
  %6
  bes8. f16 bes f bes f bes8 f d bes |
  c16 c a a c c f f a8 f a16 f a f |
  a8 f c a bes g bes e | g d c bes bes a a4 |
  %10
  f8 a r c r es \grace f8 es[ d16 c] | bes8 d r f r bes bes16 f d bes |
  f8 a r c r \grace f8 es  es[ d16 c] |
  %13
  d8. f16 bes a g f es d c bes bes'8 bes |
  bes8. f16 bes a g f es d c bes bes'8 bes |
   bes8[ r16 d,] d16. bes32 bes16. d32  c8[ r16 g'] f es d c |
  %16
   bes8[ r16 d,] d16. bes32 bes16. d32  c8[ r16 g'] f es d c |
   bes8[ <d bes>16 <d bes>] <d bes>8 <d bes> <d bes>4 r4 |
  %18
  r8 d d d d d d d | r d d d d d d d |
   d[ d']  c[ a] \times 2/3 { bes16[ c d} d8] f, d' |
  %21
   d[ d]  c[ a] \times 2/3 { bes16[ a bes} bes8] f8 d | r a' a a g g g g |
  f f f f f e \times 4/6 { c'16[ g f e f g]} | e8 e e e e4 r |
  %25
  f8 f f f f4 r | e8 e e e e4 r | e8 e e e f4 r | r8 a a a r bes bes bes |
  %29
  r bes bes bes r a a a | r a a a r g e e | r e e e f d' c bes |
  a d c bes <<a4 \\ f>> r | f8 d c c <f a,>4 r |
  %34
  f8 d c c <f' c f,>4 r8 a,16 bes |
   c8[ \times 2/3 {f16 e d]}  c8[ \times 2/3 {f16 e d]} c4 r8 e!16 g |
  %36
  bes a g f e d c bes bes8 a r e'!16 g |
  bes a g f e d c bes  a8[ \times 2/3 {a'16 bes c]} \times 4/6 { c[ c c c c c]} |
   c8[ r16 c,16]  c8.[ bes32 a]  g8[ \times 2/3 {g'16 a bes]}
    \times 4/6 { bes[ bes bes bes bes bes]} |
   bes8[ r16 bes,16] bes8.^\trill a32 g  a8[ r16 c16] f c c a |
  %40
  a' f f c c' a a es d4. bes'8 |
  \times 4/6 { a16[ g f e d c]  a'[ a a g g g]}  f8[ \times 2/3 {a16 bes c]}
    \times 4/6 { c[ c c c c c]} |
   c8[ \times 2/3 {a,16 bes c]} \times 4/6 { c[ c c c c c]} c4 r4 |
  %43
  r8 a a a % Note: Here the bars get out of sync by s2
  r a a a | a a g e f a a a | a a g e f4 r | r8 g g g d4 r16 d fis? a |
  %47
  fis8 fis fis fis r <<{a a a} \\ {fis fis fis}>> | <<{a2 r8 bes! bes bes} \\ {fis2 s8 g g g}>> | r8 <<{bes! bes bes a2} \\ {g8 g g fis2}>> |
  %50
  r8 <<{a a a} \\ {fis fis fis}>> r <<{a a a} \\ {fis fis fis}>> | r <<{bes! bes bes} \\ {g g g}>> r <<{a a a} \\ {fis fis fis}>> |
  g4 c8 a g4 a8 a |
  %53
  a a a a g4 r | d8 d16 es \times 4/6 { fis[ g fis fis g fis]} g4 r |
  d8 d d d g16 bes' bes bes bes bes bes bes |
  %56
  a16 fis d c  c[ c-|( bes  a)]  bes[ bes' bes bes]  bes[ bes bes bes] |
  a( fis d  c)  c[ c-|( bes  a)] bes8 d r g |
  r es16 c d bes c a bes8 d r g |
  %59
  r es16 c d bes c a  g8[ r16 g16] f es d c | bes8^"Dolce" d d d r d d d |
  
  %61 page 13
  r d d d r d d d | r d d d d d' c a |
  %63
  \times 2/3 { bes16[ c d} d8] bes bes bes d c a |
  \times 2/3 { bes16[ a bes} bes8] r4 r8 d, d d |
  r <es! g,> <es g,> <es g,> r d d d |
  r <es g,> <es g,> <es g,> r g g g |
  %67
  r a a a r g g g | r a a a r a a a | bes4 r a r | r2 bes4 r |
  %71
  r8 g8 f es d4 r | r8 es d c d4 r | r8 bes'4 a8 bes4 r4 |
  %74
  r8 bes4 a8 bes8\f d16 es  f[-. f( es  d)] |
  c8 c16 d  es[-. es( d  c)] d8 d,16^"Dolce" es  f[-. f( es  d)] |
  c8 c16 d  es[-. es( d  c)]  bes8[ bes''16 f] bes8 bes16 f |
  %77
  bes8 d,, es f g bes'16 f bes8 bes16 f |
  bes8 d,, es f bes, d'16 es f g f g |
  f8 <bes d, f,>16 <bes d, f,> <bes d, f,>8 <bes d, f,> <bes d, f,>4 r^\fermata \bar "|."
}
