\version "2.16.1"


twoviolaonemoderato = \new Voice { \relative c' {
    \set Staff.instrumentName = "Viola 1"
    \set Staff.midiInstrument = "viola"
    \clef alto
    \key aes \major
    \time 4/4

    \partial 8 ees16\f[ f32 g] aes4 r <aes, c,>2\p <g-. des>8[ <g-. des> <g-. des> <g-. des>] <g des>4 r8 g'32\f[ aes bes c] des4 r <des, ees,>2\p <c ees,>8[ <c ees,> <c ees,> <c ees,>] <c ees,>4 r bes2( bes8)[ f'( des bes)] g4. as16[( bes)] aes8[ aes' ees( c)]
    %{comment - end of line 1 in the manuscript%}

    r8 f[ des bes] r c16[( ees)] r8 g,16( bes)] g2( aes4) r <aes c, aes'' >4\f r4 ees2\p ees8[ ees ees ees] ees4 r <g ees' bes'>4\f r g2\p aes8[ aes aes aes] aes4 r des,\pp( f) des( f) des ees c r des r ees8 r ees r
    %{comment - end of line 2 in the manuscript%}

    aes4 r ees'8[( aes c ees)] ees[( des) c( bes)] aes[( g) f( ees)] aes[( ees)] ees4\prall r8 aes8[( c ees)] ees[( des) c( bes)] aes[ g( f ees)] aes16[ aes,( g aes)] bes[( aes) g( aes)] c[( bes) aes( bes)] c[( bes) aes( bes)] des[( c) b( c)] des[( c) b( c)]
    %{comment - end of line 3 in the manuscript%}

    ees[( des) c( des)] ees[( des) c( des)] c-.[ ees-. des-. c-.] des-.[ ees-. f-. g-.] aes[ g f ees] aes[ g f ees] aes[ bes c des] ees[ des c bes] aes[ g f ees] des[ c bes aes] ees'4 <g, ees' ees'> <g ees' ees'> r bes'2_dolce \grace {aes8} g4 f8[ ees] ees[ d] d4( d8)[ aes'( g f)] bes2 \grace {aes8} g4 f8[( ees])
    %{comment - end of line 4 in the manuscript%}

    ees8\prall[ d](d4) d8[ aes'( g f)] bes2 \grace { aes8} g4 \grace {f8} ees4 ees'2 \grace {d8} c4 \grace {bes8} aes4 g aes8[( f)] \acciaccatura {g8} f8[( ees) \acciaccatura {f8} ees( d)] g16[ bes( a bes)] \acciaccatura {aes} g8[ f16( ees)] g16[ bes( a bes)] \acciaccatura {aes} g8[ f16( ees)] d16\ff[ ees f g] aes[ g f ees] d[ ees f ees] d[ c bes aes]
    %{comment - end of line 5 in the manuscript%}

    g[ bes'( a bes)] \acciaccatura { aes8} g[ f16( ees)] g[ bes( a bes)] \acciaccatura { aes8} g[ f16( ees)] d16\ff[ ees f g] aes[ g f ees] d[ ees f ees] d[ c bes aes] g8.\pp[ bes32( a] bes8.)[ ees32( d] ees8.)[ g32( fis] g8.)[ bes32( a] bes4) ees2  des4 \grace {des8} c4 bes8[( aes)] g[( f) aes( c)] ees,2 f\prall
    %{comment - end of line 6 in the manuscript%}

    ees8\pp[ g,16( aes)] bes8-.[ g-.] d[( ees) d( ees)] r8 f16[( aes)] bes8-.[ aes-.] f[( d) bes'( aes)] r8 g16[( aes)] bes8-.[ g-.] d[( ees) d( ees)] r8 f16[( aes)] bes8-.[ aes-.] f[( d) bes'( aes)] r8 g16[( aes)] bes8-.[ g-.] d[( ees) d( ees)] r8 aes16[( c)] ees8-.[ c-.] bes[( aes) g( f)]
    %{comment - end of line 7 in the manuscript%}

    bes4 c8[( aes)] \acciaccatura {bes8} aes8[( g) \acciaccatura {g8} g( f)] ees\pp[( g) bes( g)]  ees[( g) bes( g)] bes16\ff[ c d ees] f[ ees d c] bes[ c d c] bes[ aes g f] ees8\pp[ g bes g] ees[ g bes g] bes16[ c d ees] f[ ees d c] bes[ c d c] bes[ aes g f] ees8 r r4 r2
    %{comment - end of line 8 in the manuscript%}

    r4 <g ees>8[ <g ees>8] < aes f>8[  < aes f>8  < g bes>8 < g bes>8] aes8[ aes aes aes] aes8[ aes aes aes] g8[ g c c] aes[ aes bes bes] ees4\pp r4 bes'8[( a aes f)] d8[( ees)] r g e[( f)] r aes fis[( g)] r4 bes8[( a aes f)] ees2 \grace {g8} f4 \grace {ees8} d4 des2( ees4) r8 \bar ":|:" r8
    %{comment - end of line 9 in the manuscript%}

    <ees bes ees,>4 r4 bes2\pp( bes8)[ <bes f>8 <bes f>8 <bes f>8] <bes f>4 r4 <bes d, f'>\ff r4 d,2\pp ees8-.[( ees-. ees-. ees-.)] ees4 r8 bes''16\ff[ c32( d)] ees8[( ees,) ees-| ees-|] ees4\prall r8 g32[ aes( bes c)] des8[ ees,( ees) ees-|] ees4\prall r8 d'8 c2 bes2 aes2 b,2 c4 r8 b( c4) r8 b8(
    %{comment - end of line 10 and page 1 in the manuscript%}

    c1) des8_dolce[( c bes aes)] aes4 r8 aes8 ees'[ c( bes aes)] aes4 r8 aes8 f'2 ges4.( ees8) f8[( aes)] des,2 c4 r8 <aes f>8[ <aes f>8 <aes f>8] <aes f>8[ <aes f>8 <aes f>8 <aes f>8] r8 <aes c,>8[ <aes c,>8 <aes c,>8] <aes c,>8[ <aes c,>8 <aes c,>8 <aes c,>8] r8  des,[( f aes)] r8 ees[( ges bes)] r8 <f aes>8[ <f aes>8 <f aes>8] <f aes>8[ <f aes>8 <ges aes>8 <ges aes>8]
    %{comment - end of line 1 page 2 in the manuscript%}

    <f aes>1\ppp( <f aes>1)( ges)( g) f2 aes'( aes4) g2 f4 e4 r8 c'8 bes[( a) bes-| bes-|] aes[( g) aes-| aes-|] aes[( g) g( f)] f[( e)] r c bes[( a) bes-| bes-|] aes[( g) aes-| aes-|] <bes c,>8[ <bes c,>8 <aes c,>8 <aes c,>8] <g c,>2\fermata r4 r8 ees'16 f32( g)]
    %{comment - end of line 2 page 2 in the manuscript%}

    aes4 r4 <aes, c,>2\pp <g des>8[ <g des>8 <g des>8 <g des>8] <g des>4 r8\f g'32[( aes bes c)] des4 r4\p <des, ees,>2 <c ees,>8[ <c ees,>8 <c ees,>8 <c ees,>8] <c ees,>4 r4 bes2( bes8)[ f'( des bes)] g4.( aes16[ bes)] aes8[ aes'( ees c)] r8 f8[( des bes)] r8 c16[( ees)] r8 g,16[( bes)] << {ees1} \\ {aes,2 c2} >> << {ees1} \\ {bes2 des2} >>
    %{comment - end of line 3 page 2 in the manuscript%}

    <ees c>1  << {ees1} \\ {bes2 des2} >> <c ees>16[ aes aes aes] aes16_"Nas."[ aes aes aes] g16[ g g g] g[ g g g] < ges aes>16[ < ges aes>16 < ges aes>16 < ges aes>16] < ges aes>16[ < ges aes>16 < ges aes>16 < ges aes>16] < f aes>16[ < f aes>16 < f aes>16 < f aes>16] < g bes>16\ff[ < g bes>16 < g bes>16 < g bes>16] <aes c,>4\fff r4 <aes c,> <aes c,> <aes c,> r aes'16[ g f ees] des[ c bes aes] ees'4 ees, ees r ees''2_"dolce" \grace { des8} c4 \grace { bes8} aes4 aes8[( g)] g4. bes8[( c des)] ees2 \grace { des8} c4 \grace { bes8} aes4
    %{comment - end of line 4 page 2 in the manuscript%}

    aes8[( g)] g4. bes8[( c des)] ees2 \grace { des8} c4 \grace { bes8} aes4 aes'2 \grace { des,8} f4 \grace { des8} ees4 c4 des8[( bes)] \acciaccatura {c8} bes8[( aes) \acciaccatura {aes8} aes g] aes8[ d16 ees] des16[( c) bes( aes)] ees[( aes) c( ees)] des[( c) bes( aes)] g\ff[ aes bes c] des[ c bes aes] g[ aes bes aes] g[ f ees des]
    %{comment - end of line 5 page 2 in the manuscript%}

    c8\pp[ d'16( ees)] \acciaccatura {des8} c8[ bes16( aes)] ees16[( aes) c( ees)] \acciaccatura {des8} c8[ bes16( aes)]  g\f[ aes bes c] des[ c bes aes] g[ aes bes aes] g[ f ees des] c8.[ ees,32( d)] ees8.[ aes32( g] aes8.)[ c32( b] c8.)[ ees32( d] ees4) aes2 ges4 f8[( des' c bes)] a[ bes( c) des] aes2 bes\prall
    %{comment - end of line 6 page 2 in the manuscript%}

    aes8[ c,16( des)] ees8-.[ c-.] g[ aes( g aes)] r8 bes16[( des)] ees8-.[ des-.] bes[( g) ees'( des)] r8 c16[( des)] ees8-.[ c-.] g[( aes) g( aes)] r8 bes16[( des] ees8-.)[ des-.] bes[( g) ees'( des)] r8 c16[( des] ees8-.)[ c-.] g[ aes( g aes)] r8 des16[( f)] aes8[( f)] ees[ des c bes] ees4 f8[( des)]
    %{comment - end of line 7 page 2 in the manuscript%}

    des8[( c) c( bes)] aes[ c ees c] aes[ c ees c] ees16[ f g aes] bes[ aes g f] ees[ f g f] ees[ des c bes]  aes8[ c ees c] aes[ c ees c] ees16[ f g aes] bes[ aes g f] ees[ f g f] ees[ des c bes] aes8 r8 r4 r2
    %{comment - end of line 8 page 2 in the manuscript%}

    r4 aes8[aes] bes[ bes] c[c] des[ des des des] des[ des des des] c[ c f f] des[ des ees ees] aes,4 r  ees'8[( d des bes)] g8[( aes)] r8 c a[( bes)] r des b[( c)] r4 ees8[( d des b)] aes2 \grace { c8} bes4 aes8[ g] g2 aes4 \bar ":|:"

}}


twoviolaoneminuetto = \new Voice { \relative c' {
    \set Staff.instrumentName = "Viola 1"
    \set Staff.midiInstrument = "viola"
    \clef alto
    \key aes \major
    \time 3/4
    \override Score.MetronomeMark #'transparent = ##t
    \tempo 4=100

    ees4-._"Sotto Voce" ees-. ees-. e8[( f)] f4. ees8 des4. f16[( ees)] \acciaccatura {g8} f8[ ees16( des)] b8[( c)] c2
    \times 2/3{des'8-.\sf[ c-. bes-.]}
    \times 2/3{aes8-.[ g-. f-.]}
    \times 2/3{ees8-.[ f-. des-.]}
    \times 2/3 {c8-|[ c( ees)]}
    \times 2/3 {des8-|[ des( f)]}
    ees8 r
    %{comment - end of line 1 in the manuscript%}

    %{comment - start bar 7%}
    \times 2/3{ees8\p[( c) aes-|]}
    \times 2/3{ees'8[( des) bes-|]}
    \times 2/3{ees8[( c) aes'-|]}
    des,16[( c bes c)] bes8 r r4
    c,8[(aes')c,8(aes')c,8(aes')]
    des,8[(aes')des,8(aes')des,8(aes')]
    f8[(aes)f8(aes)g8(bes)]
    g[( aes)] aes2
    \times 2/3{bes'8\sf[aes g]}
    \times 2/3{f8[ees des]}
    \times 2/3{c8[des bes]}
    \times 2/3{aes8-|[ aes( c)]}
    \times 2/3{bes8-|[ bes( des)]}
    c8.[c,16]
    %{comment - end of line 2 in the manuscript%}

    %{comment - start bar 15%}
    des4 ees ees
    des'2( c8) r
    \grace{b'8} c4 c c
    c8[ bes] bes2
    aes4. f'16[ d] aes'[ f d( aes)]
    aes8[( g)] g2
    \times 2/3{r8[ bes bes]}
    \times 2/3{b8[( a) aes-|]}
    \times 2/3{g8[ aes f]}

    \times 2/3{ees8-.\p[bes-. c-.]}
    \times 2/3{d8-.[(ees-. f-.]}
    \times 2/3{g8-.[ aes-. a-.)]}
    %{comment - end of line 3 in the manuscript%}

    %{comment - start bar 23%}
    \times 2/3{r8\sf[ bes bes]}
    \times 2/3{bes8[( a aes)] }
    \times 2/3 {g8[( aes f)]}

    \times 2/3{ees8\p[bes c]}
    \times 2/3{d8-.[(ees-. f-.]}
    \times 2/3{g8-.[ aes-. bes-.)]}
    \grace{d8} c4 \grace{bes8} aes4 \grace{g8} f4
    \times 2/3{ees8-|[ d( bes')]} bes4. c16[( aes)]
    aes[( g) aes( f)] ees4 f4
    fis2( g8) r
    aes,16[( c f c)] aes16[( c f c)] aes16[( c f c)]
    %{comment - end of line 4 in the manuscript%}

    %{comment - start bar 30%}
    f,16[( aes d aes)] f16[( aes d aes)] f16[( aes d aes)]
    g8[ aes] bes4 bes
    ees, r \times 2/3 {aes'8\p[( ees) d-|]}
    ees4 r  \times 2/3 {aes8[( ees) d-|]}
    ees4 ees ees
    ees2\fermata

    r8_"arbitrio" e8 f[ g aes g]
    bes16[( aes g f)]

    ees4 ees ees
    e8[( f)] f4. ees8
    %{comment - end of line 5 in the manuscript%}

    %{comment - start bar 38%}
    des4. f16[(ees)] \acciaccatura{g8} f8[ ees16 des]
    b8[ c] c2
    \times 2/3{des'8\sf[ c bes]}
    \times 2/3{aes8[ g f]}
    \times 2/3{ees8[ f des]}

    \times 2/3 {c8-|[c( ees)]}
    \times 2/3 {des8-|[des( f)]} ees8 r

    \times 2/3{ees8\p[( c aes)]}
    \times 2/3{ees'8[( des bes)]}
    \times 2/3{ees8[( c aes')]}

    des,16[ c( bes c)] bes8 r r4
    %{comment - end of line 6 in the manuscript%}

    %{comment - start bar 44%}
    c,8[( aes') c,( aes') c,( aes')]
    des,8[( aes') des,( aes')
    des,( aes')] f8[( aes) f( aes) f( aes)]
    g8[ aes] aes2
    \times 2/3{bes'8[ aes g]}
    \times 2/3{f8[ ees des]}
    \times 2/3{c8[ des bes]}
    \times 2/3{aes8-|[ aes( c)]}
    \times 2/3{bes8-|[ bes( des)]} c8.[ c,16]
    des4 ees ees
    <ees des'>2 c'8 r
    %{comment - end of line 7 in the manuscript%}

    %{comment - start bar 52 - key change to d flat%}
    \bar"|:" \key des \major
    aes'4.( f8) des8.[ aes16]
    ges'4. aes16[ ges32( f)] ees8 r
    ges4.( ees8) c8.[ aes16]
    f'4. ges16[ f32( ees)] des8 r
    c2 des8.[( f16)]
    aes8[( g)] ges4. f8
    ees4 ees ees
    ees4. f16[ ees] des[ c bes aes]
    \bar":|:"
    %{comment - end of line 8 in the manuscript%}

    %{comment - start bar 60%}
    \repeat volta 2 { c,16[ aes' c, aes'] c,16[ aes' c, aes'] c,16[ aes' c, aes']
    des,16[ aes' f aes] des,16[ aes' f aes] des,16[ aes' f aes]
    ees16[ aes ges aes] ees16[ aes ges aes] ees16[ aes ges aes]
    f16[ aes des, aes'] f16[ aes des, aes'] f16[ aes des, aes']
    <ges bes>8 r  <ges bes>8 r <f aes>4
    <ges bes>2 <ges bes>8 r
    %{comment - end of line 9 in the manuscript%}

    %{comment - start bar 66%}
    ges4 aes aes bes( bes8) r r4
    r8 c'16[( bes)] r8 aes16[( ges)] r8 f16[( ees)]
    des16[( c des d)] ees[( e f ges)] g[( aes ges f)]
    f[( ees) ges( bes)] des,4 c
  }
  \alternative {
    { c8.[ des32( ees)] des8 r r4}   {des2\fermata des16[( c des d)]}
  }
%{comment - end of line 10 and first page in the manuscript%}

%{comment - start bar 72%}


  ees4-._"Sotto Voce" ees-. ees-.
  e8[( f)] f4. ees8
  des4. f16[( ees)] \acciaccatura {ges8} f8[ ees16( des)]
  b8[( c)] c2
  \times 2/3{des'8-.\sf[ c-. bes-.]}
  \times 2/3{aes8-.[ ges-. f-.]}
  \times 2/3{ees8-.[ f-. des-.]}

  \times 2/3 {c8-|[ c( ees)]}
  \times 2/3 {des8-|[ des( f)]} ees8 r

  \times 2/3{f8\p[( c) aes-|]}
  \times 2/3{ees'8[( des) bes-|]}
  \times 2/3{ees8[( c) aes'-|]}
  des,16[( c bes c)] bes8 r r4
  %{comment - end of line 1 in the second page of the manuscript%}

  %{comment - start bar 80%}
  c,8[(aes')c,8(aes')c,8(aes')]
  des,8[(aes')des,8(aes')des,8(aes')]
  f8[(aes)f8(aes)f8(aes)]
  ges[( aes)] aes2
  \times 2/3{bes'8[aes ges]}
  \times 2/3{f8[ees des]}
  \times 2/3{c8[des bes]}
  \times 2/3{aes8-|[ aes( c)]}
  \times 2/3{bes8-|[ bes( des)]}
  c8.[c,16]
  des4 ees ees
  <des' ees,>2( c8) r
  \grace{b'8} c4 c c
  c8[ bes] bes2
  %{comment - end of line 2 in the second page of the manuscript%}

  %{comment - start bar 90%}
  aes4. f'16[ d] aes'[ f des( aes)]
  aes8[( ges)] ges2

  \times 2/3{r8\sf bes bes]}
  \times 2/3{b8[( a) aes-|]}
  \times 2/3{ges8[ aes f]}

  \times 2/3{ees8\p[bes c]}
  \times 2/3{d8[(ees f]}
  \times 2/3{ges8[ aes a)]}

  \times 2/3{r8[ bes bes]}
  \times 2/3{bes8[( a aes)] }
  \times 2/3 {ges8[( aes f)]}

  \times 2/3{ees8[bes c]}
  \times 2/3{d8[(ees f]}
  \times 2/3{ges8[ aes a)]}
  %{comment - end of line 3 in the second page of the manuscript%}

  %{comment - start bar 96%}
  \grace{d8} c4 \grace{b8} aes4 \grace{ges8} f4
  \times 2/3{ees8[( d) bes'-|]} bes4. c16[( aes)]
  aes[( ges) aes( f)] ees4 f4
  fis2( ges8) r
  aes,16[( c f c)] aes16[( c f c)] aes16[( c f c)]
  f,16[( aes d aes)] f16[( aes d aes)] f16[( aes d aes)]
  ges8[ aes] bes4 bes
  %{comment - end of line 4 in the second page of the manuscript%}

  %{comment - start bar 103%}
  ees, r \times 2/3 {aes'8\p[( ees) d-|]}
  ees4 r  \times 2/3 {aes8[( ees) d-|]}
  ees4 ees ees
  ees2\fermata

  e,8_"arbitrio"[ f] ges[ aes bes c des d]

  ees4 ees ees
  e8[( f)] f4. ees8
  des4. f16[(ees)] \acciaccatura{ges8} f8[ ees16 des]
  b8[ c] c2
  %{comment - end of line 5 in the second page of the manuscript%}

  %{comment - start bar 111%}

  \times 2/3{des'8[ c bes]}
  \times 2/3{aes8[ ges f]}
  \times 2/3{ees8[ f des]}

  \times 2/3 {c8-|[c( ees)]}
  \times 2/3 {des8-|[des( f)]}
  \times 2/3{ees8[( ges aes)]}

  \times 2/3{f8[( des bes)]}
  aes4 bes
  bes2.\p
  ees2.(
  ees16)\sf[ aes( f des)] c4 bes
  aes r4 bes8.\p[( c16)]
  aes4 r4 bes8.[( c16)]
  %{comment - end of line 6 in the second page of the manuscript%}

  %{comment - start bar 119%}
  aes4-. aes-.( aes-.) aes2 r4\fermata \bar "|"

  }
}
