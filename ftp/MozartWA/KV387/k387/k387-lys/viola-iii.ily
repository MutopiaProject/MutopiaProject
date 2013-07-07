\version "2.16.0"

violaThirdMov = \relative c' {
    \clef alto
    \override TupletBracket   #'bracket-visibility = ##f

    r4
    | r8 c4\p c c8
    | r8 c4\p c c8
    | r8 c4\p c(  e8)
    |  g[(\f f]  e4) r
    | c4.\p   g8[(-. g-.  g)-.] 
    |  g8.[( b16]    c8)[ <e, g>(-. <e g> <e g>)-.]
      
    | << { g2 r4 } \\ { e8.[( f16]  e4)} >>
    | d2 ~  d8[(  e)]
    | f2(  e8.[  d16)]
% 10
    |  c8[( d16 e]   f8)[  a(- \markup{\italic "cresc."} b!  c)]
      
    | <g d'>4.  c16[( b]  c[ a d  b)]
    | c4(\f  e)  g8[(  e)]
    | d\p r e r f r
    | e r \times 4/6 { r16  e,[ f]  g[ a b] } c8 r
    | e4(\f   g8)[ e(\p c  e)]
    | d4(\f   g8)[ b(\p]  b,[  d)]
    | e4(  d2)
    | d4.  g,8[( b  d)]
    | c8 r r4 c8\p r
% 20
    | d r r4 d8 r
    | d r a' r <<d,8 \\ c8 >> r
    | r8  g[(\sf  d') d-.\p d-. d-.]
    | r8  g,[(\sf  es') es-.\p es-. es-.]
    | c8 r r4 a8\p r
    | g4 r r
    | r r8   d'[(-. d-.  d)-.] 
    | \times 4/6 {  d16[( cis a d cis a] } \times 4/6 {  d[ c a d c a] }
      \times 4/6 {  bes[ d c bes a  g)] }
    |  fis8[(  a)] r  fis[( g  bes)]
    | \times 4/6 {  d16[(\f cis a d cis a] } \times 4/6 {  d[ c a d c a] }
      \times 4/6 {  bes[ d c bes a  g)] }
% 30
    |  cis8.[(\trill  d16)] d,4 r
    | r8 g4\p g g8
    | r g4 g g8
    | r a4 c c8
    | r a4   fis8[(- \markup{\italic "cresc."} a  fis')] 
    | r g\p r fis r g
    | <d a'>2.\fp
    | r8  d[(\p  fis16)] r  fis8[(  g16)] r g8(
    |  d16) r r8 r4 r4
    |   b8[(-. b-. c-. c-. g-.  g)-.]
% 40
    |  a[(-. a-. a-. a-. g-.  g)-.] 
    | r e' r b r c
    |  b[-. d-.]  d[ a'16.( b64 c]  b8) r
    | r g,16.[( a64 b] c4)(   b8)[ g'16.( a64 b]
    |  c4)(  fis,) r8  b16.[( c64 d]
    |  c8) r b r a r
    | g r \times 4/6 { r16  b,[ c]  d[ e fis] }  \times 2/3 { g16[ a b } c8(]
    | \times 4/6 {   b16)[ b, c]  d[ e fis] } g8 r r  d,16.[(^\f e64 fis]
    % In the Breitkopf & Haertel edition, the following three bars
    % end with a `r16. x16' rythm, which is obviously wrong.  I chose
    % the `r16. x32' rythm over the `r16 x16' because it seems me more
    % suitable to the context.  Also, this is the solution chosen by
    % the Quartetto Italiano in the Philips 8-CD set `Mozart String
    % Quartets'.
    |  g8) r d'\p r r r16. b32
    | b8 r b' r r r16. b,32
% 50
    | c8 r g' r r r16. c,32
    | c8 r b r r4
    | r8 c4\p c c8
    | r8 c4\p c c8
    | r8 c4\p c(  e8)
    |  g[(\f f]  e4) r
    | c4.\p   g8[(-. g-.  g)-.] 
    |  g8.[( b16]    c8)[ <e, g>(-. <e g> <e g>)-.]
      
    | << {g2 r4} \\ {e8.[( f16] e4)} >>
    | r4 r8   fis[(-. fis-.  fis)-.] 
% 60
    |  fis[(  g)] g4 r
    | r r8   e[(-. e-.  e)-.] 
    |  e[(  f!)] f4 r
    | des'2.
    | es
    | des
    | es
    | es ~
    | es ~
    | es4.- \markup{\italic "cresc."}  c8[( b!  c)]
% 70
    | d4.\f  g,8[(\p b  d)]
    | c4(\f   es8)[ es\p]  g,[(  c)]
    | b4.\f  g8[(\p b  d)]
    | c4(\f   es8)[ es\p]  g,[(  c)]
    | b4 r d\p
    | e!( f  e)
    | d( e  d)
    | c( d  b)
    | r8  c[(\sf  g')  g(-.\p g-.  g)-.] 
    % Here it is a `forte' instead of a `sforzato', unlike the
    % previous bar and bar 23.
    | r8  c,[(\f  as')  as(-.\p as-.  as)-.] 
% 80
    | f8 r r4 d8\p r
    | c4 r r
    | r r8   g[(-. g-.  g)-.] 
    | \times 4/6 {  g16[( fis d g fis d] } \times 4/6 {  g[ f d g f d] }
      \times 4/6 {  es[ g f es d  c)] }
    | g'4 r8   g'[(-.\f g-.  g)-.] 
    | \times 4/6 {  g16[( fis d g fis d] } \times 4/6 {  g[ f d g f d] }
      \times 4/6 {  es[ g f es d  c)] }
    |  fis8.[(\trill  g16)] g,4 r
    | r8 c,4\p c c8
    | r c4( f  e8)
    | r8 d4 ~  d8[(  f) f-.]
% 90
    | r8 d4 d(  b'8)
    | r c\p r b r c
    | <g d'>2.\sf
    | r8  g'8[(\p  b16)] r  b8[(  c16)] r c8(
    |  g16) r r8 r4 r
    |   e8[(-. e-. f-. f-. c-.  c)-.]
    |  d[(-. d-. d-. d-. c-.  c)-.] 
    | r c r c r d
    |  c[-. g'-.] g r r4
    | r8  d,16.[( e64 fis]   g8)[\p f] ~  f16[ e d(  c)]
% 100
    | c8[ c'( bes- \markup{\italic "cresc."} c] ~  c) r
    | a' r g r f r
    | e r \times 2/3 { r16  e,[\f f] } \times 2/3 {  g[ a b] } \times
      2/3 {  c[ d e] } f8(
\override TupletNumber #'stencil = ##f
    |  e) r \times 2/3 { r16  c[ b] } \times 2/3 {  a[ g f] }  e8[(  f)]
    | \times 12/18 {  e16[ c'\p d]  e[ f d]   e[( g f]
         e[\trill d  e)]  d[( b' d]  f[ e  d)]
       }
    | \times 8/12 {  c[-. e( d]   c)[ g( f]   e)[ g-. f-.]  e[-. d-. c-.] }
      b4\pp
    | b(  c8) r r4
}
