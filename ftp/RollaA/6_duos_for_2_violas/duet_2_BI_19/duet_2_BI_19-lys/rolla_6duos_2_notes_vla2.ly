\version "2.16.1"

twoviolatwomoderato = \new Voice { \relative c' {
    \set Staff.instrumentName = "Viola 2"
    \set Staff.midiInstrument = "viola"
    \clef alto
    \key aes \major
    \time 4/4

    \partial 8 r8\f <c, aes' aes'>4 r4 ees2\p ees8-.[( ees-. ees-. ees-.)] ees4 r4\f <g ees' bes'>4 r g2\p aes8-.[(aes-. aes-. aes-.)] aes4 r des,( f) des( f) des ees c r
    %{comment - end of line 1 in the manuscript%}

    des r ees8 r ees r\p < ees des'>2 < ees c'>4 r8\f ees'16[ f32( g)] aes4 r\p < c,, aes'>2 <g' des>8[ <g des>8 <g des>8 <g des>8] <g des>4 r8\f g'32[( aes bes c)] des4 r <des, ees,>2 <c ees,>8[ <c ees,>8 <c ees,>8 <c ees,>8] <c ees,>4 r bes2( bes8)[ f'( des bes)] g4. aes16[( bes)] aes8[ aes' ees c]
    %{comment - end of line 2 in the manuscript%}

    r8 f[( des bes)] r8 c16[( ees)] r8 g,16[( bes)] <<{ees1_"Dolce"} \\ {aes,2 c2}>>
    <<{ees1} \\ {bes2 des2}>> < ees c>1 <<{ees1} \\ {bes2 des2}>> c16[ aes aes aes] aes[ aes aes aes] g[ g g g ] g[ g g g] <ges aes>16[ <ges aes>16 <ges aes>16<ges aes>16] <ges aes>16[ <ges aes>16 <ges aes>16 <ges aes>16] <f aes>16[ <f aes>16<f aes>16<f aes>16] <g bes>16[ <g bes>16 <g bes>16 <g bes>16] < aes c,>4 r < aes c,>4 < aes c,>4 < aes c,>4 r aes'16[ g f ees] des[ c bes aes] ees'4 <ees bes ees,>4 <ees bes ees,>4 r4
    %{comment - end of line 3 in the manuscript%}

    r8 g,16[( aes)] bes8-.[ g-.] d8[( ees) d( ees)] r8 f16[( aes)] bes8-.[( aes-.)] f[( d) bes'( aes)] r8 g16[( aes)] bes8-.[ g-.] d[( ees) d( ees)] r8 f16[( aes)] bes8-.[ aes-.] f[( d) bes'( aes)] r8 g16[( aes)] bes8-.[ g-.] d[( ees) d( ees)] r8 aes16[( c)] ees8-.[ c-.] bes[( aes) g( f)] bes4 c8[( aes)] \acciaccatura {g8} aes8[( g) g( f)]
    %{comment - end of line 4 in the manuscript%}

    ees8[ g bes g] ees8[ g bes g] bes16[ c d ees] f[ ees d c] bes[ c d c] bes[ aes g f] ees8[ g bes g] ees8[ g bes g] bes16[ c d ees] f[ ees d c] bes[ c d c] bes[ aes g f] ees8 r r4 r2 r4 <g ees>8[ <g ees>8] <f aes>8[ <f aes>8 <g bes>8 <g bes>8]
    %{comment - end of line 5 in the manuscript%}

    aes8[ aes aes aes] aes8[ aes aes aes] g8[ g c c] aes[ aes bes bes] bes'2 \grace{aes8} g4 \grace{ f8} ees4 ees8[( d)] d4. aes'8[( g f)] bes2 \grace{aes8} g4 \grace{ f8} ees4 ees8[( d)] d4. aes'8[( g f)] bes2 \grace{aes8} g4 \grace{ f8} ees4  ees'2 \grace{d8} c4 \grace {bes8} aes4 g aes8[( f)]
    %{comment - end of line 6 in the manuscript%}

    \acciaccatura {g8} f8[( ees) \acciaccatura {f8} ees( d)] g16[( bes) a( bes)] \grace {aes8} g8[( f16 ees)] g16[( bes) a( bes)] \grace {aes8} g8[( f16 ees)] d\f[ ees f g] aes[ g f ees] d[ ees f ees] d[ c bes aes] g\p[ bes' a bes] \acciaccatura{aes8} g8[( f16 ees)] g16[( bes) a( bes)] \grace {aes8} g8[( f16 ees)] d\f[ ees f g] aes[ g f ees] d[ ees f ees] d[ c bes aes]
    %{comment - end of line 7 in the manuscript%}

    g8.\p[ bes32( a)] bes8.[ ees32( d)] ees8.[ g32( f)] g8.[ bes32( a)] bes4 ees2 des4 \grace{des8} c4 bes8[( aes)] g8-|[ f( aes c)] ees,2 f\prall ees4 r4 r2 g,8\pp[( bes g bes)] d,[( bes' d, bes')] ees,[( bes')] ees,4 r2 g8[( bes g bes)] aes[( bes aes bes)]
    %{comment - end of line 8 in the manuscript%}

    <f aes>2 <g ees>4 r8 \bar ":|:" bes'16[( c32 d)] ees4 r <ees, g,>2 <des aes>8[ <des aes> <des aes> <des aes>] <des aes>4 r8\f des32[( ees f g)] aes4 r < bes, aes>2 <bes g>2 <bes g>4 r ees,16[ f g aes] bes[ aes g f] ees[ f g aes] bes[ g f ees]
    %{comment - end of line 9 in the manuscript%}

    g[ aes bes c] des[ c bes aes] g[ aes bes c] des[ bes aes g] aes[ g aes bes] c[ aes g f] e[ f g aes] bes[ g e c] f[ e f g] aes[ g aes g] f[ e f g] aes g aes f] < g e>4 r8 <f aes>8 <g e>4 r8 <f aes>8 <g e>2 <ees aes>2
    %{comment - end of line 10 and page 1 in the manuscript%}

    r8\p <f aes>[ <f aes> <f aes>] <f aes>2 r8 <aes c,>8[ <aes c,> <aes c,>] <aes c,>2 r8 des,8[( f aes)] r8 ees[( ges bes)] r8 <f  aes>[ <f  aes> <f  aes>] <f  aes>[ <f  aes> <ges  aes> <ges  aes>] des'[( c) bes-. aes-.] aes4 r8 aes8 ees'[( c) bes-. aes-.] aes4 r8 aes8 f'2 ges4. ees8 f8[( aes)] des,2 c4
    %{comment - end of line 1 page 2 in the manuscript%}

    <des des,>1\pp < ces d,> < bes ees,> <bes c,> < aes des,> <<{b2 b2} \\ { des,1} >> <c c'>4 r8 aes''8 g[( fis) g-| g-|] f[( e) f-| f-|] bes,4( b) c r8 aes g[( fis) g-| g-|] f[( e) f-| f-|] g[ g f f] e2\fermata r2
    %{comment - end of line 2 page 2 in the manuscript%}

    <c aes' aes'>4\f r4 ees2\p ees8-.[( ees-. ees-. ees-.)] ees4 r4\f <g ees' bes'>4 r g2\p aes8-.[(aes-. aes-. aes-.)] aes4 r des,( f) des( f) des ees c r  des r ees8 r ees r aes4 r ees'8[( aes) c-. ees-.] ees[( des) c( bes)] aes[( g) f( ees)]
    %{comment - end of line 3 page 2 in the manuscript%}

    aes( ees)] ees4\prall r8 aes[( c) ees-.] ees[ des( c) bes] aes[( g) f( ees)] aes16[ aes,( g aes)] bes[( aes) g( aes)] c[( bes) a( bes)] c[( bes) a( bes)]  des[( c) b( c)] des[( c) b( c)] ees[( des) c( des)] ees[( des) c( des)] c[( ees) des( c)] des[ ees f g]
    %{comment - end of line 4 page 2 in the manuscript%}

    aes\f[ g f ees] aes[ g f ees] aes\ff[ bes c des] ees[ des c bes] aes[ g f ees] des[ c bes aes] ees'4 <g, ees' ees'>4 <g ees' ees'>4r r8\p c16[( des)] ees8[ c] g[( aes) g( aes)] r8 bes16[( des)] ees8-.[ des-.] bes8[( g) ees'( des)] r8 c16[( des)] ees8-.[ c-.] g[(aes) g( aes)]
    %{comment - end of line 5 page 2 in the manuscript%}

    r8 bes16[( des)] ees8-.[ des-.] bes[( g) ees'( des)] r8 c16[( des)] ees8-.[ c-.] g[( aes g aes)] r8 des16[( f)] aes8-.[ f-.] ees[( des) c( bes)] ees4( f8)[ des] des[( c) c( bes)] aes8\p[ c ees c] aes[ c ees c]  ees16\ff[ f g aes] bes[ aes g f] ees[ f g f] ees[ des c bes] %{comment - end of line 6 page 2 in the manuscript%}

    aes8\p[ c ees c] aes[ c ees c]  ees16\ff[ f g aes] bes[ aes g f] ees[ f g f] ees[ des c bes] aes8 r r4 r2 r4 aes8[ aes] bes[ bes c c] des[ des des des]  des[ des des des] c[ c f f] des[ des ees ees] ees'2 \grace{des8} c4 \grace{bes8} aes4 aes8[( g)] g4. bes8[( c des)] ees2 \grace{des8} c4 \grace{bes8} aes4
    %{comment - end of line 7 page 2 in the manuscript%}

    aes8[( g)] g4. bes8[( c des)] ees2 \grace{des8} c4 \grace{bes8} aes4 aes'2 \grace {g8} f4 \grace{ees8} des4 c des8[ bes] \acciaccatura{c8} bes8[( aes) \acciaccatura{aes8} aes( g)] aes8[ d16( ees)] des[( c) bes( aes)] ees[( aes) c( ees)] des[( c) bes( aes)] g[ aes bes c] des[ c bes aes] g[ aes bes aes] g[ f ees des] c8[ d'16( ees)] des16[( c) bes( aes)] ees[( aes) c( ees)] des[( c) bes( aes)]
    %{comment - end of line 8 page 2 in the manuscript%}

    g[ aes bes c] des[ c bes aes] g[ aes bes aes] g[ f ees des] c8.\p[ ees,32( des)] ees8.[ aes32( g)] aes8.[ c32( b)] c8.[ ees32( d] ees4) aes2 ges4 f8-.[ des'( c bes)] a8[( bes) c( des)] aes2 bes\prall aes4 r r2 c,,8\pp[( ees c ees)] g[( ees g ees)] aes[ ees] aes4 r2
    %{comment - end of line 9 page 2 in the manuscript%}

    c,8[( ees c ees)] des[( ees des ees)] des2( c4)_Segue \bar ":|:"

}}

twoviolatwominuetto = \new Voice { \relative c' {
    \set Staff.instrumentName = "Viola 2"
    \set Staff.midiInstrument = "viola"
    \clef alto
    \key aes \major
    \time 3/4

    c,8_"Sotto Voce"[( aes') c,( aes') c,( aes')]
    des,8[( aes') des,( aes') des,( aes')]
    f8[( aes) f( aes) g( bes)]
    g[(aes)] aes2
    \times 2/3{bes'8-.\sf[ aes-. g-.]}
    \times 2/3{f8-.[ ees-. des-.]}
    \times 2/3{c8-.[ des-. bes-.]}

    \times 2/3{aes8-|[ aes( c)]}
    \times 2/3{bes8-|[ bes( des)]} c8 r
    c4\p g \times 2/3{aes8-|[ aes( c)]}
    %{comment - end of line 1 in the manuscript%}

    %{comment - start bar 8%}
    bes16[( aes g aes)]
    \times 4/6 {g8[( aes bes c des d)]}
    ees4 ees ees
    e8[( f)] f4. ees8
    des4. f16[( ees)] \acciaccatura {g8} f8[ ees16( des)]
    b8[( c)] c2
    \times 2/3{des'8-.\sf[ c-. bes-.]}
    \times 2/3{aes8-.[ g-. f-.]}
    \times 2/3{ees8-.[ f-. des-.]}

    \times 2/3{c8-|[ c( ees)]}
    \times 2/3{des8-|[ des( f)]}
    \times 2/3{ees8-|[ g( aes)]}

    \times 2/3{f8\p[ des bes]} aes4 g4 g2 aes8 r
    %{comment - end of line 2 in the manuscript%}

    %{comment - start bar 17%}
    aes16[ ees' c ees] aes,16[ ees' c ees] aes,16[ ees' c ees]
    g,16[ ees' bes ees] g,16[ ees' bes ees] g,16[ ees' bes ees]
    d,16[ bes' f bes] d,16[ bes' f bes] d,16[ bes' f bes]
    ees,16[ bes' g bes] ees,16[ bes' aes g] f16[ ees d ees]
    \times 2/3{d8[ <aes' d> <aes d>]}
    \times 2/3{<aes d>8[ <aes d> <aes d>]}
    \times 2/3{<aes d>8[ <aes d> <aes d>]}

    \times 2/3{<g ees'>8[ bes-.( a-.]}
    \times 2/3{aes8-.[ g-. f-.)]}
    \times 2/3{e8-.[ f-. ees-.]}
    %{comment - end of line 3 in the manuscript%}

    %{comment - start bar 23%}
    \times 2/3{d8[ <aes' d> <aes d>]}
    \times 2/3{<aes d>8[ <aes d> <aes d>]}
    \times 2/3{<aes d>8[ <aes d> <aes d>]}

    \times 2/3{<g ees'>8[ bes-. a-.]}
    \times 2/3{aes8-.[ g-. f-.]}
    \times 2/3{ees8-.[ f-. g-.]}

    aes8[( c) aes( c) aes( c)]
    f,[ aes f aes f d]
    ees[ c'16( aes)] g4 d'
    des2( ees8) r
    f16[ \grace{g16[ f d]} f8 g16] aes16[ \grace{bes16[ aes g]} aes8 bes16] c8-.[ c-.]
    c8.[ bes16] bes8 bes4 bes8
    %{comment - end of line 4 in the manuscript%}

    %{comment - start bar 31%}
    bes16[( g) f( aes)] ees4 d
    \times 2/3{ ees8[ <bes g>8 <bes g>8]}
    \times 2/3{<bes g>8[ <aes f>8 <g ees>8]} <aes f>4

    \times 2/3{<g ees>8[ <g bes>8 <g bes>8]}
    \times 2/3{<g bes>8[ <aes f>8 <g ees>8]} <aes f>4

    \times 2/3{<g ees>8[ <g bes>8 <aes f>8]}
    \times 2/3{<g ees>8[ <g bes>8 <aes f>8]}
    \times 2/3{<g ees>8[ <g bes>8 <aes f>8]}
    <g ees>2\fermata_"arbitrio" r4
    r2.


    c,8_"Sotto Voce"[( aes') c,( aes') c,( aes')]
    des,8[( aes') des,( aes') des,( aes')]
    f8[( aes) f( aes) g( bes)]
    g[(aes)] aes2
    %{comment - end of line 5 in the manuscript%}

    %{comment - start bar 40%}
    \times 2/3{bes'8-.\sf[ aes-. g-.]}
    \times 2/3{f8-.[ ees-. des-.]}
    \times 2/3{c8-.[ des-. bes-.]}

    \times 2/3{aes8-|[ aes( c)]}
    \times 2/3{bes8-|[ bes( des)]} c8 r
    c4\p g \times 2/3{aes8-|[ aes( c)]}
    bes16[( aes g aes)]
    \times 4/6 {g8[( aes bes c des d)]}
    ees4 ees ees
    e8[( f)] f4. ees8
    des4. f16[( ees)] \acciaccatura {g8} f8[ ees16( des)]
    b8[( c)] c2
    \times 2/3{des'8-.\sf[ c-. bes-.]}
    \times 2/3{aes8-.[ g-. f-.]}
    \times 2/3{ees8-.[ f-. des-.]}
    %{comment - end of line 6 in the manuscript%}

    %{comment - start bar 49%}
    \times 2/3{c8-|[ c( ees)]}
    \times 2/3{des8-|[ des( f)]}
    \times 2/3{ees8-|[ g( aes)]}

    \times 2/3{f8\p[ des bes]} aes4 g4 g2( aes8) r
    %{comment - end of bar 51 in the manuscript%}

    %{comment - start bar 52 - key change to d flat%}
    \bar"|:" \key des \major
    des,16\p[( c des ees)] f[( ges f ees)] des16[( f aes f)]
    ges16[( c, ees c)] ges'16[( c, ees c)] ges'16[( c, ees c)]
    ees16[( des c des)] ees16[( f ges f)] aes16[( ges f ees)]
    %{comment - end of line 7 in the manuscript%}

    %{comment - start bar 55%}
    f16[ aes des aes] f16[ aes des aes] f16[ aes des aes]
    ees[ aes f aes] ges[ aes ees aes] f[ aes des, aes']
    c,[ aes' des, aes'] ees[ aes des, aes'] des,[ aes' f aes]
    ges[ bes des bes] ges[ bes des bes] g[ bes des bes]
    aes[ c aes ees] c8 r r4 \bar ":|:"
    \repeat volta 2 {
      ges''4. ees16[( c)] aes8.[ aes16]
 %{comment - end of line 8 in the manuscript%}

 %{comment - start bar 61%}
      aes'4. bes16[( aes32 ges)] f8[ des']
      des8[ c bes( aes bes) c]
      des4. c16[( bes)] aes8 r
      r c16[( bes)] r8 aes16[( ges)] r8 f16[( ees)]
      des16[ c des d(] ees[ e f ges] g[ aes ges) f]
      f[( ees ges bes)] des,4 c
      c( des8) r r4
      <bes ges>8 r <bes ges>8 r <bes ges>8 r
      %{comment - end of line 9 in the manuscript%}

      %{comment - start bar 69%}
      <aes ges>2 <aes f>4
      ges8 r aes r aes r
  }

  \alternative {
    {<aes ees>4. <<{aes8 }\\{f16[ ges] }>> <aes f>8 r8}{<aes f>2 r4}
  }

  c,8_"Sotto Voce"[( aes') c,( aes') c,( aes')]
  des,8[( aes') des,( aes') des,( aes')]
  f8[( aes) f( aes) g( bes)]
  g[(aes)] aes2
  \times 2/3{bes'8-.[( aes-. ges-.]}
  \times 2/3{f8[ ees des]}
  \times 2/3{c8[ des bes)]}
  %{comment - end of line 10 and first page in the manuscript%}

  %{comment - start bar 77 and second page%}
  \times 2/3{<c aes>8-|[ <c aes >8( <c ees>8)]}
  \times 2/3{<bes des>8-|[ <bes des>8( <des f>8)]}
  \times 2/3{<c ees>8-|[ ges'8( aes8)]}

  ees4\p( bes) aes8.[(  c16)]
  bes16[( aes ges aes)]
  \times 2/3{ges8[( aes bes]}
  \times 2/3{c8[ des d)]}

  ees4 ees ees
  e8[( f)] f4. ees8
  des4. f16[( ees)] \acciaccatura {ges8} f8[ ees16( des)]
  b8[( c)] c2
  \times 2/3{ des'8-.[( c-. bes]}
  \times 2/3{ aes-. ges-. f-.]}
  \times 2/3{ ees-. f-. des)]}
  %{comment - end of line 1 - second page in the manuscript%}

  %{comment - start bar 85 %}
  \times 2/3{c8-|[ c( ees)]}
  \times 2/3{des8-|[ des( f)]}
  \times 2/3{ees8-|[ ges( aes)]}
  \times 2/3{f8[( des bes)]} aes4 ges
  ges2( aes8) r
  aes16[ ees' c ees] aes,16[ ees' c ees] aes,16[ ees' c ees]
  ges,16[ ees' bes ees] ges,16[ ees' bes ees] ges,16[ ees' bes ees]
  d,16[ bes' f bes] d,16[ bes' f bes] d,16[ bes' f bes]
  ees,16[ bes' ges bes] ees,16[ bes' aes ges] f16[ ees d ees]
  %{comment - end of line 2 - second page in the manuscript%}

  %{comment - start bar 92 %}

  \times 2/3{d8[ <aes' d> <aes d>]}
  \times 2/3{<aes d>8[ <aes d> <aes d>]}
  \times 2/3{<aes d>8[ <aes d> <aes d>]}

  \times 2/3{<ges ees'>8[ bes-.( a-.]}
  \times 2/3{aes8-.[ ges-. f-.)]}
  \times 2/3{e8-.[ f-. ees-.]}

  \times 2/3{d8[ <aes' d> <aes d>]}
  \times 2/3{<aes d>8[ <aes d> <aes d>]}
  \times 2/3{<aes d>8[ <aes d> <aes d>]}

  \times 2/3{<ges ees'>8[ bes-. a-.]}
  \times 2/3{aes8-.[ ges-. f-.]}
  \times 2/3{ees8-.[ f-. ges-.]}

  aes8[( c) aes( c) aes( c)]
  f,[ aes f aes f d]
  ees[ c'16( aes)] ges4 d'
  %{comment - end of line 3 - second page in the manuscript%}

  %{comment - start bar 99 %}
  des2( ees8) r
  f16[ \grace{ges16[ f d]} f8 ges16] aes16[ \grace{bes16[ aes ges]} aes8 bes16] c8-.[ c-.]
  c8.[ bes16] bes8 bes4 bes8
  bes16[( ges) f( aes)] ees4 d
  \times 2/3{ ees8[ <bes ges>8 <bes ges>8]}
  \times 2/3{<bes ges>8[ <aes f>8 <ges ees>8]} <aes f>4

  \times 2/3{<ges ees>8[ <ges bes>8 <ges bes>8]}
  \times 2/3{<ges bes>8[ <aes f>8 <ges ees>8]} <aes f>4

  \times 2/3{<ges ees>8[ <ges bes>8 <aes f>8]}
  \times 2/3{<ges ees>8[ <ges bes>8 <aes f>8]}
  \times 2/3{<ges ees>8[ <ges bes>8 <aes f>8]}
  %{comment - end of line 4 - second page in the manuscript%}

  %{comment - start bar 106 %}
  <ges ees>2\fermata_"arbitrio" r4
  r2.

  c,8[( aes') c,( aes') c,( aes')]
  des,8[( aes') des,( aes') des,( aes')]
  f8[( aes) f( aes) ges( bes)]
  ges[(aes)] aes2
  \times 2/3{bes'8-.\sf[ aes-. ges-.]}
  \times 2/3{f8-.[ ees-. des-.]}
  \times 2/3{c8-.[ des-. bes-.]}

  \times 2/3{aes8-|[ aes( c)]}
  \times 2/3{bes8-|[ bes( des)]} c8.[ c,16]
  des4 ees ees
  %{comment - end of line 5 - second page in the manuscript%}

  %{comment - start bar 114 %}
  <d aes'>2.\p
  <des ges>2.
  <c aes'>8[ <des aes'>] <ees aes>4 <ees ges>4
  \times 2/3{c8[ees aes]}
  \times 2/3{c8[ees, aes]}
  \times 2/3{ges8[des ees]}

  \times 2/3{c8[ees aes]}
  \times 2/3{c8[ees, aes]}
  \times 2/3{ges8[des ees]}


  c4 <<{ees2}\\{c'4 c4}>>
  <ees, c'>2_"Finis" r4
  \bar ":|:"

  }
}
