\version "2.16.0"

violinISecondMov =  \relative e' {
    \key c \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 16)

    e4(\p  d)
    | c r
    | f(  e)
    | d r
    | g( f
    | e  d)
    |  c8[( d e]  g16.[  f32)]
    | e4(  d8) r
    | a'4 as(

% 10
    |  g8)  b16[(  a)]  c[(  b) d(  c)]
    | a4 as(->
    |  g8)  c16[(  b)]  d[(  c) e(  c)]
    | e,4(  c')->
    |  d,8[ b'16(  a)]  g[(  f) e(  d)]
    | c4  e8.[(  d16)]
    | c8 r r4
    | e'4(  d)
    | c8 r r4
    | f4(  e)

% 20
    | d8 r r4
    | a'4( g
    | fis  f)
    |  e8[( d  c)]  g'16.[(  f32)]
    | e4(  d8) r
    | a'4 as(
    |  g8)  b16[(  a)]  c[(  b) d(  c)]
    | a4 as(
    |  g8)  c16[(  b)]  d[(  c) e(  c)]
    | e,4(  c')

% 30
    | d,8  b'16[(  a)]  g[(  f) e(  d)]
    | c4  e8.[(  d16)]
    | <c c'>8[\f ~ c'32 es-. d-. c-.]  b[-. as-. g-. f-.]  es[-. d-. c-. b-.]
    |  c[-. g-. a-. b-.]  c[-.(  b) d(  c)]  es[(  d) f(  es)]  g[(  fis) as(  g)]
    | <es, c' as' >8[-> ~ <es c' as'>32 c''-. bes-. as-.] 
       g[-. f-. es-. des-.]  c[-. bes-. as-. g-.]
    |  as[ es f g]  as[(  g) bes(  as)]  c[(  bes) des(  c)]  f[(  e) bes'(  as)]
    | <f, c' f>8[\f ~ f'32 as-. g-. f-.]  e[-. des-. c-. bes-.] 
       as[-. g-. f-. e!-.]
    |  f[(  f') f-. f-.]  f[-. f-. f-. f-.]  f[(  es) es-. es-.] 
       es[-. es-. es-. es-.]
    |  es[(  d) d-. d-.]  d[-. d-. d-. d-.]  d[(  c) c-. c-.]  c[-. c-. c-. c-.]
    |  bes[( bes')-\cresc bes-. bes-.]  bes[-. bes-. bes-. bes-.]
       bes[(  a) a-. a-.]  a[-. a-. a-. a-.]

% 40
    |  a32[(  g) g-. g-.]  g[-. g-. g-. g-.]  a[(  g) g-. g-.]  a[(  g) g-. g-.]
    | <a, fis' d'>16 r  fis32[( a d  fis)] <d, bes' g'>16 r  bes'32[( d g  bes)]
    | <a, fis' d'>16 r  fis'32[( a d  fis)] g16 r  es32[( d bes  g)]
    |  d[( cis d  es)]  d16[ d]  d32[( cis d  es)]  d16[ d]
    | d2 ~
\tag #'autograph {
    | \repeat "percent" 2
      { d4 ~  d32[ b'( a g]  fis[ a g  e)] }
}
\tag #'edited {
    | \repeat unfold 2
      { d4 ~  d32[ b'( a g]  fis[ a g  e)] }
}
    |  e[( a, e'  a,)]  e'[( a, e'  a,)] 
       e'[( a, e'  a,)]  e'[( a, \acciaccatura fis'8 e32 d)]
    | d4 ~  d32[ b'( a g]  fis[ a g  e)]
    | cis4 ~  cis32[ d( e fis]  g[ e b'  a)]

% 50
    |  gis[( a d cis]  b[ a g   fis)] 
       e[( d \acciaccatura d8 cis32 b] 
       a[ g' \acciaccatura g8 fis32 e)]
    |  d[(  d') d,(  d')]  d,[(  d') d,(  d')]
       d,[(  d') d,(  d')]  d,[(  d') d,(  d')]
\tag #'autograph {
    | \repeat "percent" 2
      { d,4 ~  d32[ b'( a g]  fis[ a g  e)] }
}
\tag #'edited {
    | \repeat unfold 2
      { d,4 ~  d32[ b'( a g]  fis[ a g  e)] }
}
    |  e[(  a,) e'(  a,)]  e'[(  a,) e'(  a,)]
       e'[(  a,) e'(  a,)]  e'[( a, \acciaccatura fis'8 e32. d64)]
    | d4 ~  d32[ b'( a g]  fis[ g \acciaccatura b8 a32 g)]
    | es4 ~  es32[ c'( b a]  gis[ a b  a)]
    |  e'[(  d) c-. b-.]  a[(  g) fis-. e-.]
      \acciaccatura e8 d32[ c \acciaccatura c8 b32 a]
      \acciaccatura a8 g32[ fis \acciaccatura fis8 e32 d]
\tag #'autograph {
      % [R] There is a mistake here!
    |  g16.[ b32 b16(->\trill a32  b)]
       g16.[ d'32 d16(->\trill cis32  d)] \bar "" \noBreak
}
\tag #'edited {
    |  g16.[ b32 b16(->\trill a32  b)] % [E]
       g16.[ d'32 d16(->\trill cis32  d)]
}
    |  b16.[ g'32 g16(->\trill fis32  g)]
       d16.[ b'32 b16(->\trill a32  b)]
\tag #'autograph {
      \set Score.currentBarNumber = #59
}
    |  c8.[->\f \( b32( \)  a)]  c8.[-> \( b32( \)  a)]

% 60
    | \repeat unfold 4 { <c, c'>16[ b'32(  a)] }
\tag #'autograph {
      % [R] There is a mistake here!
    |  g16.[ b,32 b16(->\trill a32  b)]
       g16.[ d'32 d16(->\trill cis32  d)] \bar "" \noBreak
}
\tag #'edited {
    |  g16.[ b,32 b16(->\trill a32  b)] % [E]
       g16.[ d'32 d16(->\trill cis32  d)]
}
    |  b16.[ g'32 g16(->\trill fis32  g)]
       d16.[ b'32 b16(->\trill ais32  b)]
\tag #'autograph {
      \set Score.currentBarNumber = #62
}
    | \repeat unfold 2 { c8[-> ~ c32 gis( a  b)] }
    |  c8[ ~ c32 gis( a  b)]  c8[ ~ c32 a( fis  d)]
    |  g16[(  b32) a] % [R] This slur seems strange
       g16.[(\trill  fis32)]  e16.[(\trill  d32)]  c16.[(\trill  b32)]
    |  a16[( c'32  b)]  a16.[(\trill  g32)] 
       fis16.[(\trill  e32)]  d16.[(\trill  c32)]
    |  b16[( d'32  c)]  b16.[(\trill  a32)] 
       g16.[(\trill  fis32)]  e16.[(\trill  d32)]
    |  cis32[(  bes') cis,(  bes')]  cis,[(  bes') a(  g)]
       fis[(  e') fis,(  e')]  fis,[(  e') d(  c)]
    |  b[(  d) (a  d)]  g,[(  b) fis(  b)]  e,[(  g) d(  g)]  c,[(  e) b(  e)]
    | a,4 <a a'>

% 70
    | <a, a' >-> a'''
    | \ottava #1 bes8.[\f bes16]  bes8.[ bes16]
    | bes8 bes4 bes8
    |  bes32[( as f!  d)] \ottava #0 bes![( as! f  d)]
       bes[( as f  d)]  bes[( d f  as)]
    |  c8[(  bes)]  a[(  as)]
    | g4( f!
    |  es) r32  es[( f es]  d[ es f  g)]
    | as4( g
    |  f) r32  f[( g f]  e![ f g  as)]
    | bes4(  as)

% 80
    | g4(  f)
    |  es8[( f  g) bes16.(->  as32)]
    | g4(  f8) r
    |  as'8[ ~ as32 g-. f-. es-.]  d[-. c-. bes-. as-.]  g[-. f-. es-. d-.]
    |  es[(  d) f(  es)]  g[(  f) as(  g)]  bes[(  a) c!(  bes)]  es[(  d) f(  es)]
    | <e des'>8[ ~ des'32 c-. bes-. as-.] 
       g[-. f-. e-. des-.]  c[-. bes-. as-. g-.]
    |  f[(  e!) g(  f)]  as[(  g) bes(  as)]  des[(  c) f(  e)]  g[(  f) bes(  as)]
    | <c, c' >8[-> ~ c'32 es-. d-. c-.]
      <c, c' >8[-> ~ c'32 es-. c-. bes-.] % [R] It could be ...es-. d-. c-.]
    | \repeat unfold 4 {  c[-. es-. d-. c-.] }
    | g16 r  b,,32[( d g  b)] <es, c'>16 r  es32[( g c  es)]

% 90
    | <b g'>16 r  b32[( d g  b)] <es, c'>16 r  as32[( g es  c)]
    |  g32[( fis g  as)]  g16[ g]  g32[( fis g  as)]  g16[ g]
\tag #'autograph {
    | g1*1/2
    | \repeat "percent" 2 { g4 ~  g32[ e'!( d c]  b[ d c  a)] }
}
\tag #'edited {
    | g2 % [E]
    | \repeat unfold 2 { g4 ~  g32[ e'!( d c]  b[ d c  a)] }
}
    |  a32[( g d'  g,)]  d'[( g, d'  g,)] 
       d'[( g, d'  g,)]  d'[ \( g, \acciaccatura b8 a32 g\)]
    | g4 ~  g32[ e'( d c]  b[ d c  a)]
    | fis4 ~  fis32[ g( a b]  c[ a e'  d)]
\tag #'autograph {
    |  cis[(  e) % [R] cis(  d) would prevent a dissonance
       g-. fis-.]  e[( d cis % [R] Donizetti probably forgot a natural sign here
}
\tag #'edited {
    |  cis[(  d) % [E] To prevent a dissonance
       g-. fis-.]  e[( d c % [E]
}
        b)]  a[(  g) \acciaccatura g8 fis32(  e)]  d[(  c) \acciaccatura c8 b32(  a)]
    |  g32[ g' g, g'] \repeat unfold 3 {  g,[ g' g, g'] }

% 100
\tag #'autograph {
    | \repeat "percent" 2 { g'4 ~  g32[ e'( d c]  b[ d c  a)] }
}
\tag #'edited {
    | \repeat unfold 2 { g4 ~  g32[ e'( d c]  b[ d c  a)] }
}
    |  a32[(  d,) a'(  d,)]  a'[(  d,) a'(  d,)]
       a'[(  d,) a'(  d,)]  a'[(  d,) \acciaccatura b'8 a32(  g)]
    | g4 ~  g32[ e'( d c]  b[ c d  c)]
    | as4 ~  as32[ f'( e d]  cis[ d e  d)]
    |  e[(  g) f-. e-.]  d[-. c-. b-. a-.] 
       g[-. f-. \acciaccatura f8 e32(  d)]
      \acciaccatura d8 c32[(  b) \acciaccatura b8 a32(  g)]
    |  c16[( e32  d)]
       c16.[(\trill  b32)]  a16.[(\trill  g32)]  fis16.[(\trill  e32)]
    |  d16[( fis'32  e)]  d16.[(\trill  c32)] 
       b16.[(\trill  a32)]  g16.[(\trill  fis32)]
    |  e16[( g'32  fis)]  e16.[(\trill  d32)] 
       c16.[(\trill  b32)]  a16.[(\trill  g32)]
    | \stemDown  fis32[( a c d]  es[ c a  fis)]  g[( b! d g]  b[ f d  b)] \stemNeutral

% 110
      % [R] There is a mistake here!
    |  e16.[(  g32)]  g16[(\trill fis32  g)]  c16.[(  e,32)]
       e16[(\trill % [R] There could be a natural sign above the trill
       dis32  e)]
\tag #'autograph {
      \bar "" \noBreak
    |  a16.[ c,32] % [R] There should be a slur here
       c16[(\trill b32  c)]  f16.[(  e32)]  e16[(\trill dis32  e)]
      \set Score.currentBarNumber = #111
}
\tag #'edited {
    |  a16.[(  c,32)]  c16[(\trill b32  c)]  f16.[(  e32)]  e16[(\trill dis32  e)]
      % [E]
}
    |  d!16.[(  f32)]  f16[(\trill e32  f)]  d16.[(  a'32)]  a16[(\trill gis32  a)]
\tag #'autograph {
      \bar "" \noBreak
}
    |  f16.[(  d'32)]  d16[(\trill cis32  d)]  a16.[(  f'32)]  f16[(\trill e32  f)]
\tag #'autograph {
      \set Score.currentBarNumber = #112
}
    | \set Staff.subdivideBeams = ##t 
      \set baseMoment = #(ly:make-moment 1 16)
      \times 2/3 {  d32[( e d c d  c)]  b[( c b a b  a)]
                    g[( a g f g  f)]  e[( f e d e  d)] }
\tag #'edited {
      \noTupletNum
}
    | \times 2/3 {  c[( d c b c  b)]  a[( b a g a  g)] 
                    f[( g f e f  e)]  d[( e d c d  c)] }
    | \times 2/3 {  b[( a b c b  c)]  d[( cis d e d  e)]
                    f[( e f g fis  g)]  a[( gis a b a  b)] }
    | c8 r r4
    | a( as
    |  g8)  b16[(  a) \<]  c[(  b)]  d[(  c\!)]
    | a4( \>  as)
    |  g\!(  f)

% 120
    | e(  d)
    | cis2(->
\tag #'autograph {
    | d4*1/2) % [R] In the autograph the D is a quarter note. This is an error.
}
\tag #'edited {
    |  d8) % [R] The autograph has a quarter note, but it is certainly a mistake
}
       b'16[(  a)]  g[(  f)]  e[(  d)]
    | c4  e8.[(  d16)]
    | c8 r r4
    | a'4(  as)
    | g8 r r4
    | g4( f!
    |  e8) r c[(-.\p  c)-.]
    | c r c r

% 130
    | c4 r\fermata

    \bar "||"
    
}
