\version "2.16.0"

IVlnII =  \relative c'' {
  \clef "treble"
  \key bes\major
  \time 4/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % Note: This removes tuplet brackets from  c8[ \times 2/3 {c16 c c]}.
  \override TupletBracket   #'bracket-visibility = ##f

  %page 16
  \partial 8 f8 | <bes d, f,>4 r8 d,16 es  d8[ \times 2/3 {g16 f es]}
     d8[ \times 2/3 {g16 f es]} |
  %2
  d4 r8 bes,16 c  d8[ \times 2/3 {g16 f es]}
     d8[ \times 2/3 {g16 f es]} |
  %3
  d4 r8 f'16 fis g8. es16 d c bes a |
  \times 2/3 { bes16[ c d} d8] r f,16 fis g8. g16 f? es d c |
  \times 2/3 { d[ c d} d8] r4 f16-| bes( d  bes) f16-| bes( d  bes) |
  %7
  f16-| bes( d  bes) f16-| bes( d  bes) f16-| bes( d  bes) f16-| bes( d  bes) |
  f-| a( c  a) f-| a( c  a) f-| a( c  a) f-| a( c  a) |
  f-| a( c  a) f-| a( c  a) c,-| e( g  e) c-| e( g  e) |
  %10
  c-| e( g  e) c-| e( g  e) g8 f f4 |
  f16-| a( c  a) f-| a( c  a) f-| a( c  a) f-| a( c  a) |
  bes-| d( f  d) bes-| d( f  d) bes-| d( f  d) bes-| d( f  d) |
  %13 
  f,-| a( c  a) f-| a( c  a) f-| a( c  a) f-| a( c  a) |
  bes8. f'16 bes a g f es d c bes bes'8 bes |
  bes8. f16 bes a g f es d c bes bes'8 bes |
   bes8[ r16 d,] d16. bes32 bes16. d32  c8.[ g'16] f es d c |
  %16 Note: d16. bes32 bes16. d32 was written d16 bes bes d in the manuscript.
   bes8.[ d,16] d16. bes32 bes16. d32  c8[ r16 g'] f es d c |
   bes8[ <d bes>16 <d bes>] <d bes>8 <d bes> <d bes>4 r4 |
  %18
  r8 bes d bes r bes16 c d8 bes | r bes d bes r bes16 c d8 bes |
  bes bes' a f bes bes,16 c d8 bes |
  %21
  bes8 bes' a f \times 2/3 { bes16[ a bes} bes8] f d | r f f f c c c c |
  f f f f c c \times 4/6 { c'16[ g f e f g]} | c,8 c c c c4 r |
  %25
  c8 c c c f4 r | c8 c c c c4 r | c8 c c c f4 r | r8 f f f r f f f |
  %29
  r f f f r f f f | r f f f r c c c | r c c c f bes a g | f bes a g f4 r |
  %33
  f8 bes, c c <f a,>4 r | f8 bes, c c % Note: Here the bars get out of sync
    <f' c f,>4 r8 <<{a,16 bes} \\ {f g}>> |
  %35
   a8[ \times 2/3 {d16 c bes]}  a8[ \times 2/3 {d16 c bes]} a8 a r4 |
  e8 e e e f4 r |
  e8 e e e  f8[ \times 2/3 {f'16 g a]} \times 4/6 { a[ a a a a a]} |
  %38
   a8[ r16 c,] <c\trill a>8.[ <bes g>32 f]  e8[ \times 2/3 {es'16 f g]}
    \times 4/6 { g[ g g g g g]} |
  g8. g,16 g8. f32 e  f8[ r16 c'] f c c a |
  f' c c a a' f f a, \grace a8 bes4. bes'8 |
  %41
  \times 4/6 { a16[ g f e d c]  f[ f f e! e e]}  f8[ \times 2/3 {f16 g a]}
    \times 4/6 { a[ a a a a a]} |
   a8[ \times 2/3 {f,16 g a]} \times 4/6 { a[ a a a a a]} a8 f16 g a8 f |
  %43
  r f a f r f16 g a8 f | f f c c f f16 g a8 f | f f c c f4 r |
  %46
  r8 es! es es d4 r16 d fis a | d,8 d d d r d d d | d2 r8 d d d |
  r d d d r d d d | r d d d r d d d | r d d d r d d d |
  %52
  g4 c8 fis, g4 fis8 fis | fis fis fis fis g4 r |
  d8 d d d g4 r | d8 d d d  g16[_"tutti" g' g g g g g g] |
  %56
  fis16 d bes a  a[-| a( g  fis)]  g[ g' g g]  g[ g g g] |
  fis16 d bes a  a[-| a( g  fis?)] g8 bes r bes |
  r c16 a bes g a fis g8 bes r bes |
  %59
  r c16 a bes g a fis  g8[ r16 g] f es d c |
  bes8 bes16 c d8 bes r bes bes bes |
  r bes16 c d8 bes r bes d bes | bes bes16 c d8 bes bes bes' a f |
  %63
  bes bes,16 c d8 bes  bes[ bes']  a[ f] | bes bes, r4 r8 bes bes bes |
  r bes bes bes r bes bes bes | r <es g,> <es g,> <es g,> r c c c |
  %67
  r f f f r c c c | r f f f r f f f | d4 r f r | r2 bes,4 r |
  %71
  r8 g' f es d4 r | r8 es d c d4 r | r8 f f f bes,4 r |
  %74
  r8 f' f f bes-| bes16(  c) d16( d c  bes) |
  a8 a16(  bes) c-| c( bes  a) bes8 bes,16 c d-| d( c  bes) |
  a8 a16 bes c c bes a  bes8[ bes''16 f] bes8 bes16 f |
  %77
  bes8 d,, es f g bes'16 f bes8 bes16 f |
  bes8 d,, es f bes, d'16 es f g f g |
  f8 <d f, bes,>16[ <d f, bes,>] <d f, bes,>8[ <d f, bes,>] <d f, bes,>4 r^\fermata \bar "|."
}
