\version "2.18.2"

bourree = {
    \key c \major
    \time 2/2
    \set Staff.midiInstrument = "cello"
    \override TextScript #'padding = #1.5

    \repeat volta 2 { 
        \partial 4 e8^\markup { \huge "Bourree I." } f
        g4 c8( b,) c4 c' <<{b4} \\ {g,} \\ {d}>> a8 b g4 d8 e f4 b,8( a,) b,4 g
        << { f8( e d e) } \\ { <c, g,>4 s4 } >> c4 c'8( b) a8( b c' g) fis( b c') e d( b c') c b, d fis a d'4 b8 g d4 fis g4 d g, 
    }
    \repeat volta 2 { 
        b8 c' d'4 b8 g f4 b e8( g c') d' e'4 c'8 gis a4 f8 a d8 c'( b a) e8 a gis fis e4 b8( e)
        c'8 a( gis a) b( e) c'( e) d'8 b( a b) c'( e) d'( d) c8 e' b c' e4 a8( gis) a4 e a, a8 b c'4 fis8( e) fis4 d
        g,8( d c') a b4 g8 f! e8 g c' e d f' e' c' d'8 c' b a g4 b8 c'
        d'8( b g) a b( g d) e f( d b,) c d( b, g,) f e( c g,) g e( c g,) c' g( e) f( d) e( c) g,( e)
        d( e f) c b,( e f) a, g,( e f) f, e, g, b, d g4 e8 c g,4 b, <<{c2.} \\ {c,}>> 
    }
    \pageBreak
    \key g \minor
    \repeat volta 2 { 
        c'8_\markup { \italic "piano" }^\markup { \huge "Bourree II." } d'
        ees'4 d'8 c' b!4 c' d'8( c' b! a) g( f ees d)
        ees8 g( f ees) d f( ees d) c b, c d ees f g a^\markup { \flat } bes4 aes8 g f4 ees d8 ees f g aes bes c' d'
        ees'4 d'8 c' bes8 aes g f ees2.^\trill 
    }
    \repeat volta 2 { 
        ees8 f g4 g8 f g4 a!4 bes8( a) bes( c') bes( c') d'( bes) g( bes) a( bes) c'( bes) a( g)
        fis4 e8 fis d4 d'8( c') d'4 ees!8( d) ees4 g c'8( b c') d' ees'4 d' c'8( bes!) a( g) bes( a) g( fis) g4 d g, g8( aes)
        bes4 aes8( g) f( e) f( g) bes8( aes) g( f) d'2 ~ d'8 b c' d' ees' d' c' ees' d'( c' b a) g( f ees d)
        ees8( d) f( ees) g( f) aes( g) g,( a, b, c) d( ees f d) f( ees) d( c) ees( d) c( b,)
        <<{c2.} \\ {c,_\markup { \center-align { "Bourree I." "da Capo" } }}>> 
    }
}
