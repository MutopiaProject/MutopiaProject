\version "2.16.0"
violaSecondMov =  \relative g {
    \key c \major
    \clef alto

    g4(\p  f)
    | e r
    | g2 ~
    | g4 r
    | e d
    | c(  g'8.[  f16)]
    |  e8[(  f)]  e[(  a)]
    | g4 ~ g8 r
    | f2(

% 10
    |  e8) r r4
    | R2*2
    | b'4(  a) ~
    | a8 r r4
    | e4(  f)
    | e8 r r4
    | c'4(\p  f)
    | e8 r r4
    | b(  c)

% 20
    | g8 r r4
    | f'4( e
    | d  g)
    |  a8[ b16(  gis)]  a8[ f]
    |  g[ c,16(  e)] g,8 r
    | f'2(
    |  e8) r r4
    | f4 r32  e32[( f  g)]  f16[ f]
    | e8 r r4
    | r32  fisis[( gis  a)]  gis16[ gis] r32  gis[( a  b)]  a16[ a]

% 30
    | f8 r r4
    | r32  fis,[( g  a)]  g16[ g] r32  fis[( g  a)]  g16[ g]
    |  c32[(\f  d) es-. es-.]  es[-. es-. es-. es-.] g,4-> ~
    | g8 r r4
    |  as32[(  bes) c c]  c[ c c c] g4(
    |  es8) r r4
    | as:32\f g:
    |  as8[ as'] g4(
    |  f)(   es8)[ fis,]
    | g8 r r4

% 40
    | r32  g'[ g g]  g[ g g g]  fis[(  g) g g]  fis[(  g) g g]
    | \repeat unfold 2 { r32  cis,[( d  es)]  d16[ d] }
    | r32  eis[( fis  g)]  fis16[ fis] r32  fis[( g  a)]  g16[ g]
    | fis8 r r4
    |  c32[( b c  d)]  c16[ c]  c32[( b c  d)]  c16[ c]
    | b  d,[( g d]  g[ d g  d)]
\tag #'autograph {
    | \repeat "tremolo" 4 { g16(  d) }
    | \repeat "tremolo" 4 { a'(  d,) }
    | \repeat "tremolo" 4 { g(  d) }
}
\tag #'edited {
    |  g16[( d g  d)]  g[( d g  d)]
    |  a'[( d, a'  d,)]  a'[( d, a'  d,)]
    |  g[( d g  d)]  g[( d g  d)]
}
    |  e[( a cis a]  cis[ a cis  a)]

% 50
    | d8 r e16 r e r
    | d  fis[( eis  e)]  d[( c! b  a)]
\tag #'autograph {
    | \repeat "percent" 2 { \repeat "tremolo" 4 { g16(  d) } }
    | \repeat "tremolo" 4 { a'16 d, }
    | \repeat "tremolo" 4 { g(  d) }
    | \repeat "tremolo" 4 { g(  b) }
}
\tag #'edited {
    | \repeat unfold 2 {  g16[( d g  d) g( d g  d)] }

      % [E] Slurs not present in the autograph
    |  a'16[( d, a'  d,)]  a'[( d, a'  d,)]
    |  g[( d g  d)]  g[( d g  d)]
    |  g[( b g  b)]  g[( b g  b)]
}
    | g8 r <a c> r
\tag #'autograph {
    | <g b>16 s r s g s r s \bar "" \noBreak % [R] There is a mistake here!
    | g s r s g s r s
      \set Score.currentBarNumber = #59
}
\tag #'edited {
    | <g b>16 r r8 g16 r r8 
    | g16 r r8 g16 r r8
}
    | r32  d[(\f es  f)]  es16[ es] r32  dis[( e  f)]  e16[ e]

% 60
    | r32  e32[( f  g)]  f[ f f f] r32  eis[( fis  g)]  fis[ fis fis fis]
\tag #'autograph {
    | g16 s r s g s r s \bar "" \noBreak % [R] Ditto
    | g s r s g s r s
      \set Score.currentBarNumber = #62
}
\tag #'edited {
    | g16 r r8 g16 r r8 
    | g16 r r8 g16 r r8
}
    | r32  e[( f!  g)]  f16[ f] r32  cis32[( d  e)]  d16[ d]
    | r32  d![( es  f!)]  es[ es es es] r32  cis[( d  e)]  d[ d d d]
    | r8 r32  dis[ dis dis] e4 ~
\tag #'autograph {
    |  e8[ e] % [R] eis? Or better: eis32 eis es eis
}
\tag #'edited {
    |  e8[ eis] % [E] Maybe eis32 eis es eis
}
      fis4 ~
    |  fis8[ fis] % [R] Maybe fis32 fis fis fis
      g4
    |  g8[ e(]   fis)[ d]
    |  d''[(  b)]  g[(  e)]
    | r32  b[( c  d)]  c[ c c c] r  b[( c  d)]  c[ c c c]

% 70
    | r  dis[( e  fis)]  e[ e e e] r  dis[( e  fis)]  e[ e e e]
    |  d8.[\f d32 d]  d8.[ d32 d]
    | <d f!>8.[ <d f>32 <d f>] <d f>8.[ <d f>32 <d f>]
    | <d f!>2 ~
    | <d f>4 r
    | bes4( as
    |  g) r
    | bes2 ~
    | bes4 r
    | bes2(

% 80
    |  es,4)  bes'8.[(  as16)]
    |  g8[( as  g)] c
    | bes4 ~ bes8 r
    | r32  as[( c  bes)] as4  as16[( g32  f)]
    | g8 r r4
    | r32  dis[( e! f]  g[ as bes  b)]  c8.[( bes16)]
    | as4~ as16  as[-.\p as-. as-.]
    | as8 r32  c[-. d!-. es-.] c,8 r32  c'[-. d-. es-.]
    |  a,!8[(  as)]  g[(  fis)]
    | g16 r <b d>8 <c es>4

% 90
    | r32  ces[( d  es)]  d[ d d d] r  d[( es  f)]  es[ es es es]
    | d8 r r4
\tag #'autograph {
      % [R] There is a mistake here!
    | f,32[( e f  g)]  f16[ f]  f32[( e f  g)]  f16[ f]
    | \repeat "percent" 2 { \repeat "tremolo" 4 { e16(  g) } }
    | \repeat "tremolo" 4 { f(  g) }
    | \repeat "tremolo" 4 { e(  g) }
    | \repeat "tremolo" 4 { fis(  a) }
}
\tag #'edited {
    |  f32[( e f  g)]  f16[ f]  f32[( e f  g)]  f16[ f]
    | \repeat unfold 2 {  e16[( g e  g)]  e[( g e  g)] }
    |  f[( g f  g)]  f[( g f  g)]
    |  e[( g e  g)]  e[( g e  g)]
    |  fis[( a fis  a)]  fis[( a fis  a)]
}
    | g8 r c16 r fis, r
\tag #'autograph {
    | g  d'[( cis  c)]  b[( a g  f)] % [R] Last f with a cautionary natural?
}
\tag #'edited {
    | g  d'[( cis  c)]  b[( a g  f!)] % [E]
}

% 100
    |  e[(  e') c(  g)]  c[( g c  g)]
\tag #'autograph {
    | \repeat "tremolo" 4 { c(  g) }
    | \repeat "tremolo" 4 { b(  g) }
    | \repeat "tremolo" 4 { c(  e) }
    | \repeat "tremolo" 4 { d(  f) }
}
\tag #'edited {
    |  c[( g c  g)]  c[( g c  g)]
    |  b[( g b  g)]  b[( g b  g)]
    |  c[( e c  e)]  c[( e c  e)]
    |  d[( f d  f)]  d[( f d  f)]
}
    | c8 r g r
    | r32  dis[-. e-. f-.]  e8[(  e'16)] r r8
    | r32  e,[-. f-. g]  f8[(  f'16)] r r8
    | r32  fis,[-. g-. a-.]  g8[(  g'16)] r r8
    |  a,8[(  fis)] d'4

% 110
\tag #'autograph {
    |  c16[( s b s a s  g) s] \bar "" \noBreak % [R] There is a mistake here!
    |  f[( s e s d s  c) s]
      \set Score.currentBarNumber = #111
    | f s r s d' s r s \bar "" \noBreak % [R] Ditto
    | d s r s d s r s
      \set Score.currentBarNumber = #112
}
\tag #'edited {
    |  c8[( b a  g)]  f[( e d  c)]
    | f16 r r8 d'16 r r8 
    | d16 r r8 d16 r r8
}
    | d8 r r4
    | c2(
    |   d16)[( c b  a)]  g8[(  d')]
\tag #'autograph {
    | \repeat "percent" 2 
      {  c32[( b c  d)]  c16[-. c-.]  c32[( b c  d)]  c16[-. c-.] }
}
\tag #'edited {
    | \repeat unfold 2 
      {  c32[( b c  d)]  c16[-. c-.]  c32[( b c  d)]  c16[-. c-.] }
}
    | c8  c[( d  e)]
    | f4(  f,)
    | e(  d)

% 120
    | c  g'8.[(  f16)] % [R] The slur is different from bar 6
    | e2(->
    |  f8) r  b16[(  a)]  g[(  f)]
    | e4(  f)
    | e8 r r4
    | f2(
\tag #'autograph {
    |  e8) r r4_ \markup{\italic "dim."}
}
\tag #'edited {
    |  e8) r r4 % [E]
}
    |  d32[( cis d  e)]  d16[-. d-.]  d32[( cis d  e)]  d16[-. d-.]
    | e8 r e8[(-.\p  e)-.]
    | e r e r

% 130
    | e4 r\fermata

    \bar "||"
}
