\version "2.16.0"

upper = \relative f' {
    \key d \minor
    \time 6/8
    \clef violin

    f16^\markup { \italic "sempre legato" } a f e d e
    \repeat unfold 10 { f a f e d e }
    f a f e d f
    | g c g f e f g c g f e g
    | as d as g f g as d as g f as
    | g c g f e f g c g f e g
    | as d as g f g as d as g f as
    | g c g f e f g c g f e f
    | g c g f e g a! bes! a g f e
    | \repeat unfold 3 { f a f e d e } f a f e d f
    | e a e d c d e a e d c d
    | e gis e d b d e gis e d b d
    | e a e c a c e a e c a b
    | c dis c b a b c dis c b a c
    | b e b a g a b e b a g b
    | c dis c b a b c dis c b a b
    | g e' b a g a b e b a g a
    | b e b a gis a b e b a gis b
    | c e c b a b c e c b a c
    | b e b a gis a b e b a gis b
    | c e c b a b c e c b a b
    | c f c bes! a bes c f c bes a c
    | d f d c bes c d f d c bes c
    | des e des bes g bes des e des bes g bes
    | c f c bes a bes c f c bes a bes
    | c f c bes a bes cis d e f g a
    | \repeat unfold 9 { f a f e d e } f a f e d f
    | g c g f e f g c g f e g
    | as d as g f g as d as g f as
    | g c g f e f g c g f e g
    | as d as g f g as d as g f as
    | g c g f e f g c g f e f
    | g c g f e g a! bes a g f e
    | \repeat unfold 3 { f a f e d e } f a f e d f
    | e a e d c d e a e d c d
    | e gis e d b d e gis e d b d
    | e a e c a c e a e d c e
    | f a f e d e f a f e d f
    | e a e d c d e a e d c d
    | e gis e d b d e gis e d b d
    | e a e c a c e a e c a c
    | \repeat unfold 4 { f a f c a c }
    | e g e c bes c e g e c bes c
    | f a f c a c f a f c a c
    | fis a fis d c d fis a fis d c d
    | g bes g d bes d g bes g d bes d
    | g bes g es des es g bes g es des es
    | as c as es c es as c as es c es
    | a! c a f es f a c a f es f
    | bes a bes f d f bes d bes f d f
    | a c a f es f a c a f es f
    | bes d bes f d f a d a f d f
    | gis d' gis, f d f a d a f d f
    | bes d bes f d f a d a f d f
    | gis d' gis, f d f a d a f d f
    | <d f bes d>2.
    | <f gis>
    | << { a4.( bes)-\fermata } \\ g2. >>
    | r4 r8 bes,16( cis bes a g a
    | bes8) r r bes16( cis bes a g a
    | bes8) r r bes16( cis bes a g a)
    | bes( cis bes a g a bes cis d e f g)
    | \repeat unfold 9 { f a f e d e } f a f e d f
    | g c g f e f g c g f e g
    | as d as g f g as d as g f as
    | g c g f e f g c g f e g
    | as d as g f g as d as g f as
    | g c g f e f g c g f e f
    | g c g f e g a bes a g f e
    | f a f e d e f a f e d e
    | f bes f es d es f bes f es d f
    | g bes g f es f g bes g f es f
    | g c g f e! f g c g f e g
    | a! c a g f g a c a g f g
    | a d a g fis g a d a g fis a
    | bes d bes a g a bes d bes a g a
    | b e b a gis a b e b a gis b
    | c e c b a b c e c b a b
    | c fis c b a b c fis c b a c
    | b e b a gis a b e b a gis b
    | c fis c b a b c fis c b a c
    | b e b a gis a b e b a gis a
    | bes! cis bes a g! a bes cis bes a g bes
    | a d a g f g a d a g f a
    | bes cis bes a g a bes cis bes a g bes
    | a d a g f g a d a f d e
    | f bes f e d e f bes f e d e
    | f a f e d e f a f e d e
    | f g f e d e f g f e d e
    | f a f e d e f a f e d e
    | f bes f e d e f bes f e s e
    | f a f e d e f a f e d f
    | e a e d cis d e a e d cis e
    | f a f e d e f a f e d e
    | f bes f e d e f bes f e d e
    | f a f e d e f a f e d f
    | e a e d cis d e a e d cis e
    | \repeat unfold 16 { f a f e d e }
    | f2.-\fermata

    \bar "|."
}

lowerI = \relative a {
    \key d \minor
    \time 6/8
    \clef bass

    a8-. r a[-. a]-. r a-.
    | a r a[-. a]-. r a-. % The first a is not staccato!
    | a r a[ a] r a
    | a4. ~ a8 r a
    | a r a[ a] r a
    | a4. ~ a8 r a
    | <e c'>-. r <g c>-[ <e c'>-] r <g c>
    | <f b> r <as b>-[ <f b>-] r <as b>
    | <e c'> r <g c>-[ <e c'>-] r <g c>
    | <f b> r <as b>-[ <f b>-] r <as b>
    | <e c'> r <g c>-[ <e c'>-] r <g c>
    | <e c'> r <g c>-[ <e a>-] r a
    | \repeat unfold 3 { a r a[ a] r a }
    | \repeat unfold 2 { e r e[ e] r e }
    | \repeat unfold 4 { b r b[ b] r b }
    | \repeat unfold 4 { e r e[ e] r e }
    | \repeat unfold 4 { f r f[ f] r f }
    | f r f[ e] r a
    | \repeat unfold 2 { a r a[ a] r a }
    | a4. ~ a8 r a
    | a r a[ a] r a
    | a4. ~ a8 r a
    | <e c'>-. r <g c>-[ <e c'>-] r <g c>
    | <f b> r <as b>-[ <f b>-] r <as b>
    | <e c'> r <g c>-[ <e c'>-] r <g c>
    | <f b> r <as b>-[ <f b>-] r <as b>
    | <e c'> r <g c>-[ <e c'>-] r <g c>
    | <e c'> r <g c>-[ <a e>-] r a
    | \repeat unfold 3 { a r a[ a] r a }
    | e r e[ e] r e
    | e r e[ e] r a
    | \repeat unfold 2 { a r a[ a] r a }
    | \repeat unfold 2 { e r e[ e] r e }
    | \oneVoice <f, c' f>2.
    | <f c' f>
    | <f c'>
    | <f c'>
    | <d d'>
    | <g d'>
    | <es es'>
    | <as es'>
    | <f f'>
    | <bes f'>
    | <f f'>
    | <bes f'>
    | \repeat unfold 3 { <bes bes'>-\sf }
    | bes'
    | <b d>
    | <cis e>-\fermata \voiceOne
    | r4 a,8 ~ a4.
    | r4 a8 ~ a4.
    | r4 a8 ~ a4. ~
    | a2.
    | r4 a'8[ a] r a
    | a r a[ a] r a
    | a4. ~ a8 r a
    | \repeat unfold 2 { a r a[ a] r a }
    | <e c'>-. r <g c>-[ <e c'>-] r <g c>
    | <f b> r <as b>-[ <f b>-] r <as b>
    | <e c'> r <g c>-[ <e c'>-] r <g c>
    | <f b> r <as b>-[ <f b>-] r <as b>
    | <e c'>-. r <g c>-[ <e c'>-] r <g c>
    | <e c'> r <g c>-[ <e a>-] r a
    | a r a[ a] r a
    | r4 <as bes>8-[ <as bes>-] r <as bes>
    | r4 <g bes>8-[ <g bes>-] r <g bes>
    | r4 <bes c>8-[ <bes c>-] r <bes c>
    | r4 <a c>8-[ <a c>-] r <a c>
    | r4 <c d>8-[ <c d>-] r <c d>
    | r4 <bes d>8-[ <bes d>-] r <bes d>
    | r4 <d e>8-[ <d e>-] r <d e>
    | r4 <c e>8-[ <c e>-] r <c e>
    | r4 <c dis>8-[ <c dis>-] r <c dis>
    | r4 <b e>8-[ <b e>-] r <b e>
    | r4 <c dis>8-[ <c dis>-] r <c dis>
    | r4 <b e>8-[ <b e>-] r <b e>
    | r4 <e, a>8-[ <e a>-] r <e a>
    | r4 <f a>8-[ <f a>-] r <f a>
    | r4 <e a>8-[ <e a>-] r <e a>
    | r4 <f a>8-[ <f a>-] r <f a>
    | r4 <d f>8-[ <d f>-] r <d f>
    | \repeat unfold 5 { r4 <d f>8-[ <d f>-] r <d f> }
    | r4 <e g>8-[ <e g>-] r <e g>
    | r4 <f a>8-[ <f a>-] r <f a>
    | r4 <d f>8-[ <d f>-] r <d f>
    | r4 <d f>8-[ <d f>-] r <d f>
    | r4 <e g>8-[ <e g>-] r <e g>
    | f4 \oneVoice r8 r4 r8 \voiceOne
    | a8 r a[ a] r a
    | a r a[ a] r a
    | a r a[ a] r a
    | a4. ~ a8 r a
    | a r a[ a] r a
    | a4. ~ a8 r a
    | a r a[ a] r a
    | a2.-\fermata

    \bar "|."
}

lowerII = \relative d {
    \key d \minor
    \time 6/8
    \clef bass

    d2._\markup { \italic "sempre staccato" }
    d
    | d ~
    | d8 r a-. d4. ~
    | d2. ~
    | d8 r a-. d4.
    | c2.
    | c
    | c 
    | c
    | c ~
    | c4. a
    | d2.
    | d
    | a
    | e
    | a
    | b,
    | e
    | b
    | e
    | e
    | e
    | e
    | e4. ~ e4 a8
    | f2.
    | f
    | f
    | f ~
    | f4. a
    | d2.
    | d ~
    | d4 a8-. d4. ~
    | d2. ~
    | d4 a8-. d4.
    | c2.
    | c
    | c
    | c
    | c
    | c4. a
    | d2.
    | d
    | a
    | e
    | a
    | d
    | a
    | e
    | a
    | s2.*18
    | a,2.
    | a
    | a ~
    | \stemUp a \stemDown
    | d'
    | d ~
    | d4 a8-. d4.
    | d2.
    | d
    | c
    | c
    | c
    | c
    | c ~
    | c4. a
    | d2.
    | bes
    | es
    | c
    | f
    | d
    | g
    | e!
    | e
    | e
    | e
    | e
    | e
    | a,
    | a
    | a
    | d
    | g,-\sf
    | a-\sf
    | bes-\sf
    | a-\sf
    | g-\sf
    | a-\sf
    | a-\sf
    | d-\sf
    | g,-\sf
    | a-\sf
    | a-\sf
    | d4 s8 s4 s8
    | d2.
    | d
    | d ~
    | d4 a8-. d4.
    | d2. ~
    | d4 a8-. d r a
    | d r a[ d] r a
    | d2.-\fermata
    
    \bar "|."
}

dynamics = {
    
    s8-\pp s4 s4.
    | s2.*4
    | s4. s4.
    | s2.\cresc
    | s8-\f-\> s8-\! s8 s4.
    | s2.
    | s8-\> s8-\! s8 s4.
    | s4. s4.-\markup { \italic "decresc." }
    | s2.
    | s4.-\pp s4.
    | s2.*4
    | s4.-\mf s4.
    | s2.*4
    | s4.\cresc s4.
    | s2.*2
    | s4.-\f s4.
    | s4.-\markup { \italic "cresc." } s4.
    | s8-\> s8-\! s8 s4.
    | s2.
    | s4.\dim s4.
    | s4.-\pp s4.
    | s2.*4
    | s4.-\markup { \italic "cresc." } s4.
    | s8-\f-\> s8-\! s8 s4.
    | s2.
    | s8-\> s8-\! s8 s4.
    | s2.
    | s4.-\markup { \italic "decresc." } s4.
    | s4.-\pp s4.
    | s2.*8
    | s4.-\pp s4.
    | s2.*4
    | s4.\cresc s4.
    | s2.*3
    | s4.-\f s4.
    | s2.
    | s4.-\markup { \italic "cresc." } s4.
    | s8 s4-\markup { \italic "acceler." } s4.
    | s4.-\ff s4.
    | s2.
    | s2.-\sf
    | s2.-\sf
    | s4.-\sf-\> s4.-\!
    | s4.-\pp s4.
    | s2.*8
    | s4. s4.\cresc
    | s8-\f-\> s8-\! s8 s4.
    | s2.
    | s8-\> s8-\! s8 s4.
    | s4. s4.-\markup { \italic "decresc." }
    | s2.
    | s4.-\p s4.
    | s2.
    | s4.\cresc s4.
    | s2.*3
    | s4.-\markup { \italic "accelerando" } s4.
    | s4.-\f s4.
    | s2.
    | s4.-\ff s4.
    | s2.*18
    | s4. s4.-\markup { \italic "decresc. e ritard." } \noBreak
    | s2.
    | s4.-\pp s4.
    | s2.*3
    | s4. s4.-\markup { \italic "dimin." }
    | s4 s8-\ppp s4.
    | s2.
}
