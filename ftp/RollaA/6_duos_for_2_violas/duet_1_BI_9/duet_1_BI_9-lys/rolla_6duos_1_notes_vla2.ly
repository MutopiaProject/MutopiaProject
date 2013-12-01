\version "2.16.1"

oneviolatwomoderato = \new Voice { \relative c' {
    \set Staff.instrumentName = "Viola 2"
    \set Staff.midiInstrument = "viola"
    \clef alto
    \key ees \major
    \time 4/4
    
    \partial 4 r4 g8[( bes g bes)] g8[( bes g bes)] g8[( bes g bes)] g8[( bes g bes)] aes8[ c aes c] aes8[( c aes c)] f,[( aes f aes)] f[( aes ees aes)]  d,8[( bes' d, bes')]  ees,8[ d ees f] d[ ees] ees16[( g bes g)] ees4 r4
    %{comment - end of line 1 in the manuscript%}
    
    f4 r g r aes8 r aes r aes r aes r g8.[ f16 g8. aes16] bes4 bes \times 4/6 { g8[ bes aes g f ees]} d4 r bes''2 c8[ bes( aes g)] f[ ees] ees2 g4 e8[( f)] f2 f4 f4. g8 f4 f
    %{comment - end of line 2 in the manuscript%}
    
    \times 4/6 { f8[ d ees f g a]} \times 4/6 { bes8[ a aes g ges f]} f4. g8 f4 f \times 4/6 { f8[ d ees f g a]} \times 4/6 { bes8[ a aes g ges f]} e2 ees d4 \times 2/3 { bes8[( aes') aes-|] } \times 2/3 { aes8[( g) g-|] } \times 2/3 { g8[( f) f-|] } ees8[ fis16( g)] \grace { f8} ees8[ d16 c] bes4 a
    %{comment - end of line 3 in the manuscript%}
    \times 2/3 { bes8[ bes bes] } \times 2/3 { bes8[ bes bes] } \times 2/3 { <bes d>8[ <bes d>8 <bes d>8] } \times 2/3 { <bes d>8[ <bes d>8 <bes d>8] }  \times 2/3 { <bes ees>8[ <bes ees>8 <bes ees>8] } \times 2/3 { <bes ees>8[ <bes ees>8 <bes ees>8] }  \times 2/3 { <bes e>8[ <bes e>8 <bes e>8] } \times 2/3 { <bes e>8[ <bes e>8 <bes e>8] } \times 4/6 { f'8[ f c a c a]} f4 r d''4. bes16[( c)] d8[ g( f ees)] d4. ees8 d4 bes  a8 r bes r c r a r
    %{comment - end of line 4 in the manuscript%}
    
    bes4 r  \times 4/6 { r8[ bes a g f ees]} d'4. bes16[( c)] d8[ g( f ees)] d4. ees8 d4 bes  a8 r bes r c r a r  bes4 r\f \times 4/6 { r8[ <bes, d,> <bes d,> <bes d,> <bes d,> <bes d,>]} <bes ees,>8 r < g ees> r < g ees> r < g ees> r
    %{comment - end of line 5 in the manuscript%}
    
    d8.[ d'16] \grace {f8} ees8[ d16 c] bes4 a f'4._"del." d16[( ees)] f8[ bes( a g)] f4.( g8) f4 \times 2/3 { bes8[( f d)]} \times 2/3 { f8[( c) c-|]} \times 2/3 { f8[( d) d-|]} \times 2/3 { f8[( ees) ees-|]} \times 2/3{ f8[( c) c-|]} \times 4/6 { d8[ ees f g a bes]} f4 f f4. d16[( ees)] f8[ bes( a g)] 
    %{comment - end of line 6 in the manuscript%}
    
    f4.( g8) f4 \times 2/3 { bes8[( f d)]} \times 2/3 { f8[( c) c-|]} \times 2/3 { f8[( d) d-|]} \times 2/3 { f8[( ees) ees-|]} \times 2/3 { f8[( c) c-|]} \times 4/6 { d8[ bes' bes bes bes bes]} \times 4/6 { bes8[ <aes, f> <aes f> <aes f> <aes f> <aes f>]} <g ees>4  \times 2/3 { g'8[ ees( c)]} \times 2/3 { b8[( c) e-|]} \times 2/3 { b8[( c) g'-|]} f16\mf[ g( a bes)] \grace {a8} g8[ f16 ees] d4 c
    %{comment - end of line 7 in the manuscript%}
    
    bes8 r bes[ f] d r bes'[ f] d4 d d r\bar":|:" d8[( bes' d, bes')] d,8[( bes' d, bes')]  ees,8[ bes' ees, bes']  ees,8[ bes' g bes] aes8[( bes g bes)] f8[( bes ees, bes')] d,8[( bes' d, bes')] d,4 r f'4.( ges8 f4) bes \grace{bes8} g4 f8[ ees] ees4 ees
    %{comment - end of line 8 in the manuscript%}
    d4( ees) aes-| ges-| f bes bes bes, c4.( d16[ e)] f8[ g aes c,] bes4. c16[ d] ees8[ g ees bes] aes4. bes16[ c] d8-|[ ees-| f-| aes,-|]  g4 ees'16[ d( ees f)] g[ f( ees d)] c[ bes aes g]
    %{comment - end of line 9 in the manuscript%}
    
    f4\p aes16[ g( f g)] aes8[ aes] r g f4 aes16[ g( f g)] aes8[ aes] r g f8 r aes16[ g( f g)] aes8[ aes] r g f4 \times 2/3 { e'8[( f) f-|]} \times 2/3 { fis8[( g) g-|]} \times 2/3 { g8[( aes) aes-|]} \times 2/3 { g8[( aes) a-|]} \times 2/3 { bes8-|[ g-| ees-|]} \times 2/3 { d8[ c bes]}  \times 2/3 { aes8[ g f]}
    %{comment - end of line 10 and page 1 in the manuscript%}
    
    ees8[( bes' g bes)] g8[( bes g bes)] g8[( bes g bes)] g8[( bes g bes)]  aes8[( c aes c)] aes8[( c aes c)] f,[( aes f aes)]  f[( aes f aes)] d,8[( bes' d, bes')] d,8[( d ees f)] d[ ees] ees16[ g bes g] ees4 r f r g r \times 2/3 { aes8[ c bes]} \times 2/3 { aes8[ c bes]} 
    %{comment - end of line 1 page 2 in the manuscript%}
    
    \times 2/3 { aes8[ c bes]} \times 2/3 { aes8[ c aes]} g8.[ f16 g8. aes16] bes4 bes 
    \times 4/6 { g8[ bes aes g f ees]} d4 r bes''2 c8[ bes( aes g)] f[( ees)] ees2 ees4 aes4. c8 bes4. des8 b[ c] c2 ees8[( c)] bes[ aes] aes2 g4
    %{comment - end of line 2 page 2 in the manuscript%}
    
    e8[( f)] f2 f8.[ f16] f8[( c')] \appoggiatura { b16[ c d]} c4 
    \times 4/6 { c8[ bes aes g f ees]} 
    \times 4/6 { d8[ bes' a bes f d]} bes4 r g'4._"Del:" ees16[( f)] g8-|[ c( bes aes)] g4. aes8 g4 ees d8 r ees r f r d r
    %{comment - end of line 3 page 2 in the manuscript%}
    
    ees4 r \times 4/6 { r8[ ees d c bes aes]} \appoggiatura { aes8} g'4.  ees16[( f)] g8-|[ c( bes aes)] g4. aes8 g4 ees d8 r ees r f r d r ees4 r \times 4/6 { r8\f[ <bes ees,> <bes ees,> <bes ees,> <bes ees,> <bes ees,>]} aes8\p r aes r aes r aes r
    %{comment - end of line 4 page 2 in the manuscript%}
    
    g8.[ g'16] \grace { bes8} aes8[ g16 f] ees4 d bes4._"Del:" g16[( aes] bes8)[ ees( d c)] bes4. c8 bes4 \times 2/3 { ees8[ bes g]} 
    \times 2/3 { r8 e[( f)]} 
    \times 2/3 { r8 fis[( g)]}
    \times 2/3 { r8 bes[( aes)]}
    \times 2/3 { r8 g[( fis)]}
    \times 4/6 { g8[ aes bes c d ees]}
    bes4 bes bes4.
    g16[( aes] bes8)[ ees( d c)] 
    %{comment - end of line 5 page 2 in the manuscript%}
    
    bes4. c8 bes4 \times 2/3 { ees8[ bes g]} 
    \times 2/3 { r8 e[( f)]} 
    \times 2/3 { r8 fis[( g)]}
    \times 2/3 { r8 bes[( aes)]}
    \times 2/3 { r8 g[( fis)]}
    \times 4/6 { g8[ ees' ees ees ees ees]}
    \times 4/6 { ees8[ <g, d> <g d> <g d> <g d> <g d>]}
    < aes c,>4\p
    \times 2/3 { c'8[( aes f)]}
    \times 2/3 { e8[( f) aes-|]}
    \times 2/3 { e8[( f) c'-|]}
    b8.[ ees16] \grace { d8} c8[ b16 aes] g4 f
    %{comment - end of line 6 page 2 in the manuscript%}
    
    g8.[ g16] \grace { bes8} aes8[ g16 f] ees4 d \times 4/6 { ees8\p[ g, g g g g]} \times 2/3 { aes8[ aes aes]}
    \times 2/3 { aes8[ aes aes]}
    \times 4/6 { g8[ g g g g g]}
    \times 4/6 { aes8[  aes aes aes aes aes]}
    g8 r ees'8[( bes)] g r ees'8[( bes)] g r g r g-\tag #'vlatwo _"Segue" r r4
    \bar ":|:"
    
  }
}


oneviolatworondo = \new Voice { \relative c' {
    \set Staff.instrumentName = "Viola 2"
    \set Staff.midiInstrument = "viola"
    \clef alto
    \key ees \major
    \time 2/4
    
    g8.[ aes32( g)]  f8[ ees] d[ ees] f4 ees16[( g) c( bes)] aes[( g) f( ees)] \grace {ees8} d16[ c d ees] d8[ ees16 f] g8.[ aes32( g)] f8[( ees)] c8[ ees aes ees]
    %{comment - end of line 1 Rondo Andantino in the manuscript%}
    
    g8[ ees16( g)] g16[( f) ees( d)] ees[ g aes bes] c[ d ees f] \acciaccatura { aes8} g8.[ aes32( g)] f8[ ees] d[ ees] f4 ees16[( g c) bes] aes[ g( f ees)] \grace { ees8} d16[( c d ees)] d8[ ees16( f)] g8.[ aes32( g)] f8[ ees]
    %{comment - end of line 2 Rondo Andantino in the manuscript%}
    
    c16[ ees c ees] aes,[ bes c d] ees[( c) aes( f)] ees8[ d] ees16[ bes' c( bes)] g8 r f[ d] ees8[ \times 2/3 { bes''16 c bes]} aes16[ bes, f' bes,] g'[ bes, ees bes] f'8[ d(] ees8)[ \times 2/3 { bes'16( c bes)]}
    %{comment - end of line 3 Rondo Andantino in the manuscript%}
    
    aes16[ bes, f' bes,] g'[ ees g, ees'] aes,[ ees' aes, ees'] g,[ ees' g, ees'] < ees c>4. < f d>8 ees8 d,16[( ees)] f8[ ees] <bes' ees,>4\fermata <bes d,>4\fermata g8.\p[ aes32( g)] f8[ ees] d[ ees] f4
    %{comment - end of line 4 Rondo Andantino in the manuscript%}
    
    ees16[( g) c( bes)] aes[ g f ees] d[ bes'( a aes)] g[ d ees f] g8.\f[ aes32( g)] f8-|[ ees-|] c'16[ ees c ees] aes,[ bes c d] ees[( c aes f)] ees8[ d] ees16\p[ bes' g bes] aes[ bes aes bes]
    %{comment - end of line 4 Rondo Andantino in the manuscript%}
    
    g[( bes g bes)] aes[( bes aes bes)] g8-\tag #'vlatwo _"Segue subito" [ g g] r-\tag #'vlatwo \segno \bar "||" ees4 g'8.[ees16] 
    \times 4/6 { d16[ ees e f g a]}
    \times 4/6 { bes16[ a g f e d]} c4 a8.[( c16)]
    %{comment - end of line 5 Rondo Andantino in the manuscript%}
    
    \times 4/6 { bes16[ d ees f g a]}
    \times 4/6 { bes16[ a g f ees d]}
    \times 4/6 { c16[ ees d c d ees]}
    \times 4/6 { d16[ f ees d c bes]}
    a4 bes 
    \times 4/6 { c16[ ees d c d ees]}
    \times 4/6 { d16[ f ees d c bes]}
    %{comment - end of line 6 Rondo Andantino in the manuscript%}
    
    a4 bes
    \times 4/6 { ees,16[ g' f ees d ees]}
    \times 4/6 { c16[ ees d c d ees]}
    \times 4/6 { d16[ f ees d c bes]}
    \times 4/6 { a16[ c bes a g f]}
    \times 2/3 {bes16[ f a]}
    \times 2/3 {bes16[ f a]}
    \times 2/3 {bes16[ f a]}
    \times 2/3 {bes16[ f a]}
    %{comment - end of line 7 Rondo Andantino in the manuscript%}
    
    bes8 r < bes d,>4
    \times 4/6 { <bes ees,>16[ g' f ees d c]} 
    bes8[ a] bes16_"Del:"[( f d f)] d[( f d f)] ees\p[( f ees f)] ees[( f ees f)]  d[( f d f)] d[( f d f)] 
    %{comment - end of line 7 Rondo Andantino in the manuscript%}
    

    ees[( f ees f)] ees[( f ees f)] d8-\tag #'vlatwo _"Da Capo fine al Segno" r d r d4 r4\fermata \bar ":|:" 
    
  }
}
