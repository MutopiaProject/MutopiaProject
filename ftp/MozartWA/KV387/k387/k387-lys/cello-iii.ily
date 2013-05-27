\version "2.16.0"
celloThirdMov = \relative c, {
    \clef bass
    \override TupletBracket   #'bracket-visibility = ##f 

    r4
    |  c8[(\f  c') c\p c c c]
    |  c,8[(\f  c') c\p c c c]
    |  c,8[(\f  c') c\p c- \markup{\italic "cresc."} c c]
    | g'4(\f  c,) r
    | f(\p  c) r
    | g(  c) r
    |  g(\pp   c,8)[  c'(-. c-.  c)-.]
      
    |  c[(\p  fis,)] fis2 
    | g2(  c,4)
% 10
    | f!4.   f'16.[(- \markup{\italic "cresc."} e32]  d8[  c)] 
    | b4(  f'2)
    | e4(\f a  g)
    | f8\p r g r g, r
    | \times 4/6 {  c,16[ e f]  g[ a b] } c8 r r4
    | \times 4/6 {  c16[-.\f e-. f-.]  g[-. a-. b-.] }
\override TupletNumber #'stencil = ##f
      \times 8/12 {
       c[( b  c)]  g[( fis  g)]  e[( d  e)]  c[( b  c)] }
    | \times 12/18 {  b[-. d-. e-.]  fis[-. g-. a-.]  b[( a  b)]  g[( fis
       g)]  d[( c  d)]  b[( a  b)] }
    | \times 12/18 {  a[-. c-. e-.]  a[-. c-. b-.]  a[(  b) g-.]  fis[(  g)
      e-.]  d[ a' g]  fis[ e d] }
    | \times 12/18 {  g,[-. b-. c-.]  d[-. e-. fis-.]  g[( fis  g)]  d[( c
       d)]  b[( a  b)]  g[( fis  g)] }
    | c8 r r4 c8\p r
% 20
    | b r r4 b'8 r
    | a r d r d, r
    | r  g,[(\sf  g') g-.\p g-. g-.]
    | r  es,[(\sf  es') es-.\p es-. es-.]
    | c8 r r4 d8 r
    | g,4 r r
    | fis'2(  g4)
    | d2.
    | d,
\revert TupletNumber #'stencil
    | \times 4/6 {  d''16[(\f cis a d cis a]  d[ c a d c a]  bes[ d c
      bes a  g)] }
% 30
    |  cis8.[(\trill  d16)] d,4 r
    | r8  b![\p b b b b]
    | r  c![ c c c c]
    | r  c[ c c a a]
    | r  d,[(  d') d(- \markup{\italic "cresc."}  c) c]
    | r b\p r a r g
    | fis2.\fp
    | r8  b'[(\p  a16)] r  a8[(  g16)] r g8(
    |  fis16) r r8 r4 r
    |   g8[(-. g-. c,-. c-. bes-.  bes)-.]
% 40
    |  a[(-. a-. dis-. dis-. e-.  e)-.] 
    | r c r d! r d
    |  g[-. d-.] g,-. r r  d'16.[( e64 fis]
    |   g8)[ f!(  e) e d d]
    |  c[ c a a g g]
    | c r d r d r
    | \times 4/6 {  g,16[ b c]  d[ e fis] } g8-. r r  d,16.[( e64 fis]
    |  g8) r
\override TupletNumber #'stencil = ##f
      \times 4/6 { r16  b[ c]  d[ e fis] }
\revert TupletNumber #'stencil
      \times 2/3 { g[ a b } c8(]
    % In the Breitkopf & Haertel edition, the following three bars
    % end with a `r16. x16' rythm, which is obviously wrong.  I chose
    % the `r16. x32' rythm over the `r16 x16' because it seems me more
    % suitable to the context.  Also, this is the solution chosen by
    % the Quartetto Italiano in the Philips 8-CD set `Mozart String
    % Quartets'.
    |  b) r g,\p r r r16. g'32
    | f!8 r f, r r r16. f'32
% 50
    | es8 r es, r r r16. es'32
    | d8 r g, r r4
    |  c,8[(\f  c') c\p c c c]
    |  c,8[(\f  c') c\p c c c]
    |  c,8[(\f  c') c\p c- \markup{\italic "cresc."} c c]
    | g'4(\f  c,) r
    | f(\p  c) r
    | g(  c) r
    |  g(\pp   c,8)[  c'(-. c-.  c)-.]
      
    |  c[(\p  fis,)] fis4 r
% 60
    | r r8  bes[(-.- \markup{\italic "cresc."} bes-.  bes)-.]
    |   bes[(\p  e,)] e4 r
    | r r8   as[(-.- \markup{\italic "cresc."} as-.  as)-.] 
    |  as[(\p  des,)] des2  
    | c4(  c'2)
    | des4(  des,2)
    | c4(  c'2)
    | ces4(  ces'2)
    | bes4(  bes,2)
    | as4(- \markup{\italic "cresc."}  as'2)
% 70
\override TupletNumber #'stencil = ##f
    |  \times 12/18 {  g,16[\f b! d]  g[ b! a!]  g[( fis  g)]  d[( c  d)]
       b[( a  b)]  g[( fis  g)] }
    | \times 12/18 {  c[ es g]  c[ es d]  c[( b  c)]  g[( fis  g)]  es[( d  es)]
       c[( b  c)] }
    | \times 12/18 {  g[ b d]  g[ b a]  g[( fis  g)]  d[( c  d)]  b[( a  b)]
       g[( fis  g)] }
    | \times 12/18 {  c[ es g]  c[ es d]  c[( b  c)]  g[( fis  g)]  es[( d  es)]
       c[( b  c)] }
    | g4 r b'\p
    | cis( d  c)
    | b( c  b)
    | a( b  g)
    | r8  c,[(\sf  c')  c(-.\p c-.  c)-.] 
    % Here it is a `forte' instead of a `sforzato', unlike the
    % previous bar and bar 23.
    | r8  as,[(\f  as')  as(-.\p as-.  as)-.] 
% 80
    | f8 r r4 g8\p r
    | c,4 r r
    | b2(  c4)
    | g2. ~
    | g4 r8   g'[(-.\f g-.  g)-.] 
\revert TupletNumber #'stencil
    | \times 4/6 {  g16[( fis d g fis d]  g[ f d g f d]  es[ g f es d  c)] }
    |  fis8.[(\trill  g16)] g,4 r
    | r8  e[\p e e e e]
    | r  f[ f f f f]
    | r   f[(-. f-. f-. d-.  d)-.] 
% 90
    | r  g[- \markup{\italic "cresc."} g g]  f[(  f')]
    | r e\p r d r c
    | b2.\sf 
    | r8  e'8[(\p  d16)] r  d8[(  c16)] r c8(
    |  b16) r r8 r4 r
    |   c,8[-.(  c)-. f(-. f-. es-.  es)-.]
    |  d[(-. d-. gis,-. gis-. a-.  a)-.] 
    | r f' r g r g
    |  c[-. g-.] c, r r  g16.[( a64 b]
    |   c8)[ c(  b) b(  bes) bes(]
% 100
    |   a)[ a'(  g) g(- \markup{\italic "cresc."}]  f) r
    | f r g r g, r
    | \times 2/3 {  c,16[\f e f] } \times 2/3 {  g[ a b] } c8 r r  g16.[(
      a64 b]
\override TupletNumber #'stencil = ##f
    | \times 8/12 {   c16)[ e f]  g[ a b]  c[ e d]  c[ b a] }  g8[-. g,]
    | c,4 r g''(\p
    |  c8) r r4 g4\pp
    | c,(  c,8) r r4
}


