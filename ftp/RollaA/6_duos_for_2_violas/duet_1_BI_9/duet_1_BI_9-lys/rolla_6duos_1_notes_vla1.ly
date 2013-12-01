\version "2.16.1"

oneviolaonemoderato = \new Voice { \relative c' {
    \set Staff.instrumentName = "Viola 1"
    \set Staff.midiInstrument = "viola"
    \clef alto
    \key ees \major
    \time 4/4

    \partial 4 ees4  bes'2 c8[ bes( aes  g)] f(ees) ees2 g4 e8[(f)] f2 aes8[(f)] ees(d)] d2 c'8([(bes)] bes4. aes8 f[(f g aes)] aes[( g)] g2 \times 2/3 {bes8[( g ees)]}
    %{comment - end of line 1 in the manuscript%}

    d4 \times 2/3 {bes'8[ aes f]} ees4 \times 2/3 {ees'8[ bes g]} \times 2/3 {f8[ aes g]} \times 2/3 {f8[ aes g]} \times 2/3 {f8[ aes g]} \times 2/3 {f8[ aes f]} bes4.( c8) ees,4 d ees4. f16[( g)] f4 r g,8[( bes g bes)] g8[( bes g bes)] g8[( bes g bes)] g8[ bes ees, bes'] d,8[ bes' d, bes'] d,8[ bes' d, bes']
    %{comment - end of line 2 in the manuscript%}

    \times 2/3 { <a ees>8\mf[ <a ees> <a ees>]} \times 2/3 { <a\mf ees>8[ <a ees> <a ees>]}\times 2/3 { <a\mf ees>8[ <a ees> <a ees>]}\times 2/3 { <a\mf ees>8[ <a ees> <a ees>]}
    <bes d,>4 r4 r2
    \times 2/3 { <a ees>8[ <a ees> <a ees>]} \times 2/3 { <a\mf ees>8[ <a ees> <a ees>]}\times 2/3 { <a\mf ees>8[ <a ees> <a ees>]}\times 2/3 { <a\mf ees>8[ <a ees> <a ees>]}
    <bes d,>4 r4 r2

    \times 4/6 {g8[ g a bes c bes]} \times 4/6 {a8[ c bes a g f]}
    bes4 d, ees f g ees f f
    %{comment - end of line 3 in the manuscript%}

    \times 2/3 {bes8\p[ bes bes]} \times 2/3 {bes8[ bes bes]} \times 2/3 {aes8[ aes aes]} \times 2/3 {aes8[ aes aes]} \times 2/3 {g8[ g g]} \times 2/3 {g8[ g g]} \times 2/3 {ges8\f[ ges ges]} \times 2/3 {ges8[ ges ges]} \times 2/3 {f8[ f' c]} \times 2/3 {a8[ c a]} f4 r4\p f'4. d16[(ees)] f8[(bes a g)] f4. g8 f4  \times 2/3 {bes8[f d]} \times 2/3 {f8[( c) c-|]} \times 2/3 {f8[( d) d-|]} \times 2/3 {f8[( ees) ees-|]} \times 2/3 {f8[( c) c-|]}
    %{comment - end of line 4 in the manuscript%}

    \times 4/6 {d8[ ees f g a bes]} f4 f f4. d16[(ees)] f8[(bes a g)] f4. g8 f4  \times 2/3 {bes8[f d]} \times 2/3 {f8[( c) c-|]} \times 2/3 {f8[( d) d-|]} \times 2/3 {f8[( ees) ees-|]} \times 2/3 {f8[( c) c-|]} \times 4/6 {d8[ bes' bes bes bes bes]} \times 4/6 {bes8[ aes, aes aes aes aes]}
    %{comment - end of line 5 in the manuscript%}

    g4\p \times 2/3 {g'8[ ees c]} \times 2/3 {b8[( c) ees-|]} \times 2/3 {b8[( c) g'-|]} f[bes] \grace {aes8} g8[ f16( ees)] d4 c
    d4. bes16[( c)] d8[(g f ees)] d4. ees8 d4 bes a8 r bes r c r a r bes4 r \times 4/6 {r8 bes[ a g f ees]}
    %{comment - end of line 6 in the manuscript%}

    \appoggiatura {ees16[bes']} d4. bes16[(c)] d8[g( f ees)] d4. ees8 d4 bes a8 r bes r c r a r bes4 r
    \times 4/6 {r8 <bes d,> <bes d,> <bes d,> <bes d,> <bes d,>  ]} bes8\p r g r g r g r d8.\f[d'16] \grace { f8} ees[ d16 c] bes4 a
    %{comment - end of line 7 in the manuscript%}

    bes8 r\p d16[( ees) c( d)] bes8 r d16[( ees) c( d)] bes4 bes bes r \bar ":|:" f'4. g8 f4 f aes8[( g)] g2 bes16[ g( f ees)] d4( ees) aes( g) g8[( aes a bes)] f4 r
    %{comment - end of line 8 in the manuscript%}

    d,8[(bes' d, bes')] d,8[(bes' d, bes')] ees,8[(bes' ees, bes')] ges8[(bes ges bes)] aes8[(bes ges bes)] f8[(bes ees, bes')] d,4 bes' bes bes bes2 aes( aes) g( g) f( f) ees
    %{comment - end of line 9 in the manuscript%}

    d4 f16[(ees d ees)] f8-.[ f-.] r8 ees d4 f16[(ees d ees)] f8-.[ f-.] r8 ees d8r f16[(ees d ees)] d8 r f16[(ees d ees)] d4 bes'' bes bes bes1 bes2  c8[ bes( aes g)]
    %{comment - end of line 10 and page 1 in the manuscript%}

    f8[( ees)] ees2 g4 e8[( f)] f2 aes8[ f] ees[ d] d2 c'8[(bes)] bes4. aes8 f8-|[ f( g aes)] fis[( g)] g2 \times 2/3 {bes8[ g ees]} d4  \times 2/3 {bes'8[ aes f]} ees4 \times 2/3 {ees'8[ bes 8 g]} \times 2/3 {f8[ aes g]} \times 2/3 {f8[ aes g]} \times 2/3 {f8[ aes g]} \times 2/3 {f8[ aes f]}
    %{comment - end of line 1 page 2 in the manuscript%}

    bes4. c8 ees,4 d ees4. f16[( g)] f4 r ees,8[( g ees g)] ees8[( g ees g)]  des8[( g des g)] des8[( g des g)] c,8[( aes' c, aes')] g8[( e g e)] aes8[( c aes c)] aes8[( c aes c)] c8[( ees c ees)] c8[( ees c ees)]
    %{comment - end of line 2 page 2 in the manuscript%}

    aes,8[( c aes c)] aes8[( c aes c)] aes8[( c aes c)] aes8[( c a c)] \times 4/6 {bes\f[ bes' a bes f d] } bes4 r bes'4.\p g16[ aes] bes8[ ees d c] bes4. c8 bes4 \times 2/3 { ees8[ bes g] } \times 2/3 { r8[ e f] } \times 2/3 { r8[ fis g] } \times 2/3 { r8[ bes aes] } \times 2/3 { r8[ g fis] }
    %{comment - end of line 3 page 2 in the manuscript%}

    \times 4/6 {g8[ aes bes c d ees]} bes4 bes bes4. g16[( aes)] bes8[ ees( d c)] bes4. c8 bes4 \times 2/3 {ees8[ bes g]} \times 2/3 { r8[ e f] } \times 2/3 { r8[ fis g] } \times 2/3 { r8[ bes aes] } \times 2/3 { r8[ g fis] } \times 4/6 { c'8[ ees ees ees ees ees] } \times 4/6 { ees8[ <d,, g> <d g> <d g> <d g> <d g>] }
    %{comment - end of line 4 page 2 in the manuscript%}

    <c aes'>4 \times 2/3 {c''8[ aes f]} \times 2/3 {e8[( f) aes-|]}  \times 2/3 {e8[( f) c'-|]}

    %{comment - bar 90 starts here - new edition%}
    bes8.[ees16] \grace {d8} c8[ bes16 aes] g4 f g,4.\p ees16[( f)] g8[ c( bes aes)] g4. aes8 g4 ees d8 r ees r f r d r ees4 r \times 4/6 { r8[ ees' d c bes aes]}
    %{comment - end of line 5 page 2 in the manuscript%}

    g4. ees16[( f)] g8[ c( bes aes)] g4. aes8 g4 ees d8 r ees r f r d r ees4 r \times 4/6 { r8\f[ ees ees ees ees ees]} aes4\p aes aes aes g8.[ g'16] \grace {bes8} aes8[ g16( f)] ees4 d
    %{comment - end of line 6 page 2 in the manuscript%}

    ees16\f[ g bes ees] \grace {d8} c8[ bes16 aes] g4 f ees4. e8 \times 4/6 {f[( a bes aes f d)]} ees4. e8 \times 4/6 {f[( a bes aes f d)]} ees8 r g16[( aes f g)] ees8 r g16[( aes f g)] ees4 ees ees_"Segue" r \bar ":|:"

  }
}


oneviolaonerondo = \new Voice { \relative c' {
    \set Staff.instrumentName = "Viola 1"
    \set Staff.midiInstrument = "viola"

    \clef alto
    \key ees \major
    \time 2/4

    bes8.\p[ c32( bes)]  aes8[ g] f[ g] aes4 g16[( bes) ees( d)] c[( bes) aes( g)] \acciaccatura {g8} f16[ e f g] f8[ g16 aes] bes8.[ c32( bes)] aes8[( g)] aes8-|[ aes8-|] c4 bes16[( ees) g,(bes)] bes[( aes) g( f)]
    %{comment - end of line 1 Rondo Andantino in the manuscript%}

    ees[ bes' c d] ees[ f g aes]  \acciaccatura {c8} bes8.\f[ c32( bes)] aes8[ g] f[ g] aes4 g16[( bes ees) d] c[ bes( aes g)] \acciaccatura {g8} f16[ e f( g)] f8[ g16 aes] bes8.[ c32 bes] aes8[ g] aes[ aes] <c ees, aes,>8.[ c16]
    %{comment - end of line 2 Rondo Andantino in the manuscript%}

    bes16[ ees c aes] g8[ f\prall] ees4 r16 bes'[( c bes)] aes[ bes, f' bes,] g'[ bes, ees bes] f'8[( d)] ees8[ \times 2/3 { bes'16( c bes)]} aes[ bes, f' bes,] g'[ bes, ees bes] f'8[( d)] ees8[ \times 2/3 { bes'16( c bes)]}
    c8-|[ c-| bes-| bes-|]
    %{comment - end of line 3 Rondo Andantino in the manuscript%}

    a4. aes8 \grace {aes8} g8[ f16( ees)] aes8[ g] g4\fermata f\fermata bes,8.\p[ c32( bes)] aes8[ g] f[ g] aes4 g16[( bes) ees( d)] c[( bes) aes( g)] f[ bes c d] ees[ f g aes]
    %{comment - end of line 4 Rondo Andantino in the manuscript%}

    bes8.\f[ c32 bes] aes8[ g] aes[ aes] <c ees, aes,>8.[ c16] bes16[ ees c aes] g8[ f\prall] ees8\p[ ees] f8.-|[( g16-|)] ees8[ ees] f8.-|[( g16-|)] ees8-|_"Segue subito"[ ees8-| ees8-|] r8 \segno  \bar "||"
    %{comment - end of line 4 Rondo Andantino in the manuscript%}

    \times 4/6 { g16[ aes a bes c d]} \times 4/6 { ees16[ d c bes a g]} f4 d'8.[ bes16] \times 4/6 { a16[ c bes a ees' d]} \times 4/6 { c16[ bes a g f ees]} d8.[( ees16)] d8[ \times 2/3 { d'16( c bes)]} a4 bes
    %{comment - end of line 5 Rondo Andantino in the manuscript%}

    \times 4/6 { c16[ ees d c d ees]} \times 4/6 { d16[ f ees d c bes]} a4 bes \times 4/6 { c16[ ees d c d ees]} \times 4/6 { d16[ f ees d c bes]} g8-.[ g-.] a8.\prall[ g32 a] bes8-.[ bes-.] c8.[ bes32( c)]
    %{comment - end of line 6 Rondo Andantino in the manuscript%}

    \times 4/6 { d16[ f ees d f ees]} \times 4/6 { d16[ f ees d f ees]} d8 r < aes bes,>4 \times 4/6 { g16[ bes a g f ees]} d8[ c] bes r f'8.[( d16)] c8-|\p c-|] \grace { bes8} a[ g16( f)]
    %{comment - end of line 7 Rondo Andantino in the manuscript%}

    bes8 r f'8.[ d16] c8[ c] \acciaccatura { bes8} a8[ g16( f)] bes8_"Da capo fine al segno" r bes r bes4\fermata r \bar "||"

  }
}
