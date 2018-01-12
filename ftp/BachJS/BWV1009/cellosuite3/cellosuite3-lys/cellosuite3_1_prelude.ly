\version "2.18.2"

prelude = {
    \key c \major
    \time 3/4
    \set Staff.midiInstrument = "cello"
    
    c'8^\markup { \huge "Prelude." } b16 a g f e d c g, e, g, 
    c,4 ~ c,16 d, e, f, g, a, b, c
    d( c b, a,) g,( a, b, c) d( e f d) 
    e( f e d) c( d e f) g( a b c') 
    d'16( c' b a) g( a b c') d'( e' f' d') 
    e' f' e' d' c' c' b a g f e d
    c b( c' d' e' d' c' b) a c' g c' 
    fis( e fis g) a( g fis e) d fis c fis 
    b, a( b c' d' c' b a) g b fis b 
    e( d e fis) g( fis e d) c e b, e
    a, g( a b c' b a g) fis a e a 
    d( c d e) fis( e d c) b, d a, d 
    g, d( e fis) g( a b c') d'( c' b a)
    b( c' d' c') b( a g a) b( a g f!) 
    e( g e cis) a,( b, cis d) e( f g e) 
    f d' a f d( e f g) a( b c' a)
    b d' b gis e( fis gis a) b( c' d' b) 
    c'( d' c' b) a( f! e d) c( b, a, g,) 
    f,( a, b, cis) d( e f d) b( gis a d)
    e, b,( d a) gis b e gis b d' c' gis
    a dis a( b a) dis a( b a) dis a( b c') 
    e a( b c') e a( b c') e b( c' d') 
    e b( c' d') e b( c' d') b gis( fis e)
    c' a( gis a) c' a( gis a) c' a( fis dis) 
    c' a( gis a) c' a( gis a) c' a f! d! 
    b gis( fis gis) b f( e f) b e d
    c a, c e c a, c e a c' a e 
    c a, c e c a, c e a c' a f 
    d b, d g d b, d g b d' b g 
    f b, f( g f) b, f( g f) d' b g
    e c e g e c e g bes d' bes g 
    e c e g e c e g c' bes a g 
    a f e( f g a b c' d') a f d 
    g e d( e f g a b c') g e c
    f d f( g f) d f( g f) c f( g 
    f) b, f( g f) a, f( g f) g, f( g 
    e) g, c,( g, e) g, c,( g, e) d c b,
    a,( e c') e a,16( e c') e a, g f e 
    f a, d,( a, f) a, d,( a, f) e d c 
    b,( fis d') fis b,( fis d') fis b, a g fis
    g b, e,( b, g) b, e,( b, g) f! e d 
    c( g e') g c( g e') g c bes a g 
    a c f,( c a) c f,( c a) g f e 
    d( a f') a d( a f') a d a b c'
    g,( b f') b g,( b f') b g,( b f') b 
    g,( c' e') c' g,( c' e') c' g,( c' e') c' 
    g,( c' d') c' g,( b d') b g,( a d') a
    g,( b d') b g,( b g') b g,( b d') b 
    g,( b c') b g,( a c') a g,( g c') g 
    g,( a c') a g,( a f') a g,( a c') a
    g,( a b) a g,( g b) g g,( f b) f 
    g,( g b) g g,( g e') g g,( g b) g 
    g,( g a) g g,( f a) f g,( e a) e 
    g,( f a) f g,( f d') f g,( f a) f
    g,( f b) f g,( f d') f g,( f b) f 
    g,( e c') e g,( e e') e g,( e c') e 
    g,( f b) f g,( f d') f g,( f b) f 
    g,( ees c') ees g,( ees ees') ees g,( ees c') ees 
    g,( fis c') fis g,( d c') d g,( e! c') e 
    g,( fis c') fis g,( e c') e g,( fis c') fis
    g, g b( a) g( f! e d) g e g d 
    g cis g( a g) cis g( a g) cis g( a 
    f) d a( g) f( e d c!) f d f c
    f b, f( g f) b, f( g f) b, f( g 
    e) c g( f) e( d c b,) c a, c g, 
    c fis, c( d c) fis, c( d c) fis, c( d 
    b,) g, b, d b, g, b, d b, f,! b, d
    bes, e, bes,( c bes,) e, bes,( c bes,) e, bes,( c 
    a,) f, a, c a, f, a, c a, e, a, c 
    b,! d, b, f b, d, b, f b, d, b, f
    e c, d, e, f, g, a, b, c d e f 
    g e c( d e f g a bes) a bes g 
    a f d( e f g a b! c') b c' a 
    b g e( f g a b c' d') c' d' b
    c' a f( g a b c' d' e') d' e' c' 
    b( a b) g f( e f) d b,( a, b,) g, 
    <<{b4} \\ {f,} \\ {d} \\ {g,}>> r r
    \new Voice { \stemUp e,16[ \stemDown c'( b a)] } g f e d c g, e, g, 
    <<{a4} \\ {ees,} \\ {g} \\ {g,}>> r r 
    <<{b4} \\ {d,} \\ {f} \\ {g,}>> r r
    <<{c'4 c'( b)} \\ {c, g,2} \\ {e4 d2} \\ {g,4 s2}>>
    <<{c'4~ c'16 e c'( d'  c') e c'( d')} \\ {c,4 s2} \\ {e4 s2} \\ {g,4 s2}>>
    <<{bes4~ bes16 e bes( c' bes) e bes( c')} \\ {c,4 s2} \\ {e4 s2} \\ {g,4 s2}>>
    <<{a4~ a16 f( e f) a f( e f)} \\ {c,4 s2} \\ {f4 s2} \\ {a,4 s2}>>
    << { b!4 ~ b16 c' b c' b c' b c' } \\ {d4 ~ d16 e d e d e d e} \\ {\stemDown aes,4 s2} \\ {c,4 s2} >>
    <<{b2.^\trill} \\ {d2.}>>  
    c'8 b16 a g f e d c g, e, g, 
    <<{c'4} \\ {c,} \\ {g,} \\ {e}>> r r \bar "|."
}

