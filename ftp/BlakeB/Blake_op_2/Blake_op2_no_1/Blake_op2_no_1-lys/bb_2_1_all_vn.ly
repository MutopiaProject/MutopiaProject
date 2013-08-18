
violin_minore = \new Voice \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \clef treble
  \key g \minor
  \time 2/4

  bes16\p( a) bes g-| c( bes c) a-| d( fis) a( fis) a( fis) a( fis) g8 r g,16( a bes cis) d4 r <d bes' f' >\f  g'8.( bes,16) a8[( g') f8.( ees16]) ees( d c bes) bes8 bes

  c8.\p( d16) ees8.( f32 g) f16( bes,) ees( c) \grace { d8 } c4\trill bes r
  < bes, f' bes> \times 4/6 { d'16\f c bes a g f } < d f >8[( < c ees > < bes d >]) r r4 r8 a ( bes) r8 r8  \times 2/3 { g'16-.( f-. ees-.) } << {d16( bes' a bes c d ees8)( d16)( bes a bes c d ees8)  }  \\  { s16 f,8. f4 f2 }  >>
  \times 2/3 { d'16[( ees f])}
  \times 2/3 { f16[ g a]}
  \times 2/3 { bes16[ a g]}
  \times 2/3 { f16[ ees d]}
  d16[(\trill c]) c8. d16[( ees e])
  \times 2/3 { f16( ees c) }
  \times 2/3 { a16-.[ f-. ees-.]}
  \times 2/3 { f16[( a) ees-|]} \times 2/3 { f16[( a) ees-|]} \times 2/3 { d16[( f bes]) } \times 2/3 {d16[ f a] } \times 4/6 { bes16 f ees d c bes }

  \times 2/3 { f'16[( ees c]) } \times 2/3 { a16[ f ees] }  \times 2/3 { f16[( a) ees-|] } \times 2/3 { f16[( a) ees-|] } \times 2/3 { d16[( f bes]) } \times 2/3 { d16[ f a] }  \times 4/6 { bes16 f ees d c bes }  ees, g' g8( \times 4/6 { g16) f ees d c bes } a16 c' a f \times 4/6 { ees16 c bes a f ees } d32[( bes'16.) g32( ees'16.]) \grace {d8 } c4\trill

  bes4 r bes,16\p( a bes) g-| c( bes c) a-| d16( fis) a( fis) a( fis) a( fis) g8 r g,16( a bes cis) d4 r

  c'16.\f[ d32] \grace { ees16} d16.\trill[ c64 d] ees16.[ fis32] \grace { g16} fis16.\trill[ ees64 fis]

  g16.( a32) \times 2/3 { bes16[( a g]) } \times 2/3 { fis16[( g a]) } g16\p( d)
  ees16( c) f( c) d( bes) ees( bes) c( a) d( a)   bes( g) fis( a)

  g8\f[ \grace { a32[( g fis]) } g16( a])

  bes8[ \grace {c32[( bes a)]} bes16( cis]) \grace {cis8} d2\fermata ^\markup{\italic "D.C."}  \bar "||"
}


violin_duetto_i = \new Voice \relative c' {
  \tempo "Allegro Moderato"
  \clef treble
  \key g \major
  \time 2/2
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  % The following allows the beaming to follow the original
  \set Timing.baseMoment = #(ly:make-moment 4 16)
  \set Timing.beatStructure = #'(4 4 4 4)
  \set Timing.beamExceptions =
    #'(
       (end .
        (
         ((1 . 16) . (4 4 4 4))
         ((1 . 8) . (4 4))
        )))

  \partial4 {r4} |
  g8( d') b( d) c( d) b( d) |
  a8( d) g,( d') c( e d c) |
  <b g'>4 c8( cis) d4 c |
  b8( d) a( d) g,4 r4 |
  \barNumberCheck #5
  r8 b8-| c-| d-| e4 gis |

  a4 e8. c16 a4 r |
  r8 a-| b-| c-| d4 fis |
  g4 d8. b16 g4 r |
  fis'4 d g g, |
  d'4 c b g |
  c4 a d d |
  \barNumberCheck #12
  g,8 g' d b g4 d' |
  g4-| g8-.( g-.) a( g) g 8-.( g-.) |
  c8( b) b-.( b-.) e( g fis e) |

  d8( b a g) fis( g) e( g) |
  d4 c\trill \times 4/6 {b8-|( g' a b c d)} |
  e2 c,4. b8 |
  a2 \times 4/6 {e'8( gis a c d e)} |
  d2 b,4. a8 |
  g2 \times 4/6 {g8( b c d e fis)} |
  \barNumberCheck #21
  \times 4/6 {g( fis e d e fis)} \times 4/6 {g( a b c a fis)} |
  g8( b) d,2 c4 |
  b16 g a b c d e fis g a b c d8-|[ r16 b] |
  b8\trill( a) a4 r a |
  d4.(cis16 b) \times 2/3 {a8[( b) g-|]} \times 2/3 {fis8[( g) e-|]} |
  d8-| g( fis) b( a) d( cis e) |

  \barNumberCheck #27
  d4.( cis16 b) \times 2/3 {a8[( b) g-|]} \times 2/3 {fis8[( g) e-|]} |
  d8-| g( fis) b( a) d( cis e) |
  d4 r4 r4 fis, |
  \times 4/6 {g8 b, d g b d} \times 4/6 {g8 fis e d cis b} |
  a4.( b16 cis) d8 e fis g |
  a4. fis16( d) \grace {d16[ e]} e2\trill |

  d4 r4 r2 |
  \barNumberCheck #34
  r4 fis,( g a) |
  g8( g,) b-| d-| b-| b( a g) |
  d'4 d' d, r4 |
  r8 a8 cis e a,4 cis |
  d <a fis'> <a fis'> r4 |
  b'8\p( a g fis) e-| cis\rfz ( d e) |
  \barNumberCheck #40
  d4\f r8 b a4 a4 |

  \times 2/3 {<d a' fis'>8[ a'' g]} \times 2/3 {fis[ e d]} \times 4/6 {cis[ b a g fis e]} |
  d4-| << {d2.} \\ {a4( b c)} >> |
  b8( d) g-| b-| d-| d( cis b) |
  b8( a) a4. d16( cis) b( a) g( fis) |
  a16( g fis g) e4. cis'16( a) e'( cis) a( g) |

  g16( fis e fis) d4. e16( fis g a b cis) |
  d8(\p cis b a) a-|\rfz <a e>( fis-. g) |
  fis16\f( a b a) g( fis e d) \grace {d[ e]} e2\trill |
  \barNumberCheck #49
  << {d4( \times 2/3 {fis8[ e d])} } \\ {d'2} >> <d e,>4( cis8) a-| |
  d(\p a) fis-| d-| g( e) cis-| a-| |

  << {d4( \times 2/3 {fis8\f[ e d])} } \\ {d'2} >> <d e,>4( cis8) a-| |
  d(\p a) fis-| d-| g( e) cis-| a-| |
  d4\f d d \bar ":|:" r4 |
  fis8( a,) fis'( a,) fis'( a,) e'( a,) |
  d8 ( a) cis ( a) cis ( a) cis ( d) |
  a'( g) <fis a,>2 g8-. ( e) |
  %{comment - line 10 in the original%}
  d4 g,8( g') g( b) a( g) |
  fis4 g fis e |
  \barNumberCheck #59
  r4 <fis d> <e cis>2 |
  d8 fis g b a4 a, |
  d4. e16( fis) g( fis a g) b( a c b) |
  d4\p d8. d16 d8(e16 d) c8-| b-| |

  b( a) a2 c8(b) |
  \barNumberCheck #64
  b( a) g2 a8( fis) |
  g( e') e4. g8( fis a) |
  \times 4/6 {g[( fis e d e fis])} \times 4/6 {g[( a b c  a fis])} |
  g8(b) d,2(\rfz dis4) |
  e8(\p g) r8 dis8-| e( b) a-| g-| |

  g8\trill( fis) fis4 r b |
  a16\f( g) fis( e) g,( b) e-| b-| g' e b' g e' b g' e b'8( g16 e) b4( b16) c-| a-| b-| g-| a-| fis-| a-| a( g) fis( e) g,( b) e-| b-| g' e b' g e' b g' e

  b'8( g16 e) b4( b16) c-| a-| b-| g a fis g e4 << {g'4( fis2)} \\ {e2 dis4} >> <dis b'>4 <dis fis> <e g> <fis a> <g b> <c a,> \grace {g(} <fis b,>2\trill) e r8 b'8-|\p g-| e-| e( dis) fis( dis) e( g) b,4( a8\rfz) c( b a) g-| b'-|\p g-| e-|

  e( dis) fis( dis) e( g) b,4( a8\rfz) c( b a) g-|\f e-| g-| b-| e4-| <b gis>( <a c> <cis g>) <d fis,>-| <fis, a>( <g b> <a c>) <b d> <b d>4.( <c e >16 <b d>) <a c>8-| <g b>-| <g b> <fis a> <fis a>4 r d' g4.( fis16 e) \times 2/3 {d8[( e) c-|]} \times 2/3 {b8[( c) a-|]}
  %{comment - line 15 in the original%}
  g8-| c( b) e( d) g(fis a) g4.( fis16 e) \times 2/3 {d8[( e) c-|]} \times 2/3 {b8[( c) a-|]} g8-| c( b) e( d) g(fis a) g4 r r b,, \times 2/3 {c8[ e g]} \times 2/3 {c[ e g]} \times 4/6 {c[ b a g fis e]} d4.( e16 fis) g8 a b c \grace {b(} d4.)( b16 g) \grace {g[ a] } a2\trill

  g4 r r2 r4 b,,( c d) c8( e) g-| c-| e,-| e( d c) g4 g' g, r r8 d' fis a d,4 fis g8 g, b d g,4 r e'8\p( d c b ) a\rfz fis'(g a) g4\f g, d' d  \times 4/6 {<g, d' b'>8[ d'' c b a g]} \times 4/6 {fis[ e d c b a]}

  g4 << {g'2.} \\ {d4( e f)} >> e8( g) c-| e-| g-| g( fis e) e( d) d4. g16( fis) e( d) c( b) d( c b c) a4. fis'16( d) a'( fis) d( c) c( b a b) g4. a16( b) c( d e fis) g8\p( fis e d) d-|\rfz << {d4.} \\ {a8( b c)} >>

  b16\f( d e d) c( b a g) \grace {g[ a](} a2\trill) << {g4( \times 2/3 {b8[ a g])} } \\ {g'2} >> <g a,>4( fis8) d-| g\p( d) b-| g-|  c( a) fis-| d-|  << {g4\f( \times 2/3 {b8[ a g])} } \\ {g'2} >> <g a,>4( fis8) d-| g\p( d) b-| g-|  c( a) fis-| d-| g4\f d8. b16 g4 \bar ":|"
}


violin_rondo = \new Voice \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \tempo "Allegretto" 
  \clef treble
  \key g \major
  \time 2/4

  d'4 g,8.( a16) g8([ fis) e(\trill d)] g4 a8.( b32 c) c8( b) b4 e, \grace {e16} c'8.( d32 e) e8( d) << { b8.( c32 d) d8( c) c( b) b( a) a4} \\ { d,4 e d g8( fis) fis4} >>
  %{comment - line 2 in the original%}
  g,16( b d g) b( g e cis) d4( c) b8( d) a( d) g, g' g,4 gis a8.( b32 c) << { d16_([s) c_( d)] } \\ { s d\stemDown } >> b( d) a( d) g,8[ e' c d] g,16 g' d b g4^\markup{\italic "Fine"} \bar ":|" b4 g
  %{comment - line 3 in the original%}
  d' d fis d g g, << { s8 s s d'' } \\ {a8.^( b32 cis d8)[ fis,] } >> << {d'4_( cis8)[ d-|] } \\ { e,2 } >> e'8.[ fis16] g([ a32 b) a16-| g-|] g8([ fis) e( d)] a'4 << { a4 a8([ g)] b([ a)] a([ g)] g([ fis)] fis([ e)] e4} \\ { c4 b s4 b a d8([ cis)] cis4} >>
  %{comment - line 4 in the original%}
  a'4\p d,8.( e16) d8([ cis) b\trill( a)] d4 e8.( fis32 g) g8( fis) fis4 b,\f \grace{b16} g'8.( a32 b) a8( cis,) d( g) fis16([ a) d,( d')] cis( b) a( g) fis4( e8) r8 a,,([ cis d) fis-|]
  %{comment - line 5 in the original%}
  g4( e8) d-| g16( a e' a,) fis( a a' a,) e( a g' a,) d,( a' fis' a,) <a, fis'>8 r r4 r cis8\trill \f( b16 a) d8[ g, a a] d-| fis16( a d8)[ d']\p c16( b a g) fis( a g b) d,4 a'16([ c) b( d)]
  %{comment - line 6 in the original%}
  c( b a g) fis( a g b) d,4 a16\f( c) b( d) c( b c d) \times 4/6 {e16-.([ d-. c-. b-. a-. g-.)]} g([ fis) d'16.( fis,32)] g8.( b16) e,8.( fis32 gis) a16( b c a) g( fis e\trill d) g( a b c)^\markup{\italic "D.C."} \bar "|"
}
