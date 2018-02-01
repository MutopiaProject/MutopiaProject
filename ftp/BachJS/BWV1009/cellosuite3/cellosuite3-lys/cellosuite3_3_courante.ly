\version "2.18.2"


courante = {
    \key c \major
    \time 3/4
    \set Staff.midiInstrument = "cello"
    \override TextScript #'padding = #2.5

    \repeat volta 2 { 
        \partial 8 c'8^\markup { \huge "Courante." } 
        c'8 g e c g, e,
        \new Voice { \stemUp c,[ \stemDown c'( d' c' b c')] } 
        d'8 b g d b, g,
        \new Voice { \stemUp f,[ \stemDown d'( c' b a g)] } 
        c' b( a g f e) 
        f d g, a g f 
        e( d c b, c) g,
        c,4. c16[( d e8 fis)] 
        b, d( g a b c') 
        gis d' e d'( c' b) 
        c' b a gis a e 
        c( d e) c a, g,! 
        fis, a, d e fis g 
        a fis d c' b a
        b( a g) fis g d 
        b,( c d) b, g, f,! 
        \new Voice { \stemUp e,8[ \stemDown g( a g fis g)] } 
        c8 d c b, a, g,
        fis, a( b a g a) 
        c e d c b, a, 
        g, b( c' b) e b 
        a, c'( d' c') fis c' 
        b, d'( e' d' c' b) 
        a( g f! e f d) 
        c, f( e d e c) 
        b, c( d e fis g)
        a, d( e fis g a) 
        g, e( fis g a b) 
        \new Voice { \stemUp d,8[ \stemDown c' a c' fis c'] } 
        d8 c' a c' fis c'
        d bes g bes fis bes 
        d bes g bes fis bes 
        ees a g a fis a 
        ees a g a fis a 
        c' a fis d a, fis, 
        d,4. d8[ fis a]
        b8( c' d') a b g 
        a( b c') g a fis 
        g d e c a, fis 
        g,2 r8 
    }
    \break
    \repeat volta 2 { 
        d'8 
        d' b g d b, d 
        f( d b, a, b,) g, 
        c, f e d e g 
        c'( d' e') b c' a 
        f( g a) e f d 
        b, a( b c' d' b)
        gis8 fis gis a b gis 
        e b gis e e' d 
        c a e c b, g! 
        a, f c a, g, e 
        f, d a, f, e, c
        \new Voice { \stemUp d,8[ \stemDown c'( b c' d' gis)] 
        \stemUp c,8[ \stemDown e'( d' c' b a)] }
        e8 d'( c' b a gis) 
        a e( d c d e) 
        a,4. a16[( b c' b c' a)] 
        g8 e c e g bes
        \new Voice { \stemUp e,8[ \stemDown d'( c' bes a g)] } 
        a8 f( e f) c f 
        a, c f, a g a 
        bes( a g) f e g
        cis8 e g, bes,( a, g,) 
        f, e, f, g, a, f, 
        d, f, a, d( e f) 
        gis, f( e d c b,) 
        a, c f a f d 
        b, a( g f e d) 
        c e a c' a f 
        d c'( b a g f)
        e8 g c' e' c' a 
        f e'( d' c' b a) 
        b d' b g d b, 
        g, f d f b, f 
        g, f d f b, f 
        g, ees c ees b, ees 
        g, ees c ees b, ees 
        aes, d c d b, d
        aes,8 d c d b, d 
        f g, b, d f b 
        d'4. c'8[ b a] 
        g( f e) g f d 
        e( d c) e d b, 
        c g a f d b 
        <<{c'2} \\ {c,} \\ {e} \\ {g,}>> r8 
    }
}

