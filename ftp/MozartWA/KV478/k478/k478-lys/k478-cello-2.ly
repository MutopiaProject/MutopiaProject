celloPartII = \relative bes, {
    \key bes \major
    \time 3/8
    \clef bass
    \override Hairpin #'minimum-length = #5
    \noTupletBracket

    #(override-auto-beam-setting '(end 1 32 * *) 1 8 'Staff)

    R4.*8
    | bes8(-\f d fis,

% 10
    | g4) e8 ~
    | e( f! fis)
    | g-. g( f!)
    | es!( c' bes)
    | a4( bes8)
    | es,(-\p f) f
    | g-\f c( bes)
    | a4( bes8)
    | es,(-\p f) f
    | bes4 r8

% 20
    | f8( bes) r
    | f'( bes,) r
    | es4.
    | f8 f, r
    | R4.*2
    | d4.-\f 
    | g
    | c,
    | d
    | g

% 30
    | c,-\p ~
    | c ~
    | c4 r8
    | R4.
    | f16-\p f' f f f f
    | \repeat unfold 12 f
    | f8 f, r

% 39
    | R4.*4
    | f16 f f f f f
    | \repeat unfold 12 f
    | f8 f r
    | cis'8-\p cis16(-. cis-. cis-. cis)-.
    | d8-.\noBeam b-.-\f r
    | c-.-\p c-. c-.

% 50
    | f, r r
    | R4.*7
    | r16 f-\p a c f f,
    | r c e g c c,

% 60
    | r f a c f f,
    | r c e g c c,
    | r f a c f f,
    | r d-\crescText fis a d d,
    | g-\f g' c,, c' d, d'
    | bes-\p g c bes c c,
    | f4. ~
    | f ~
    | f ~
    | f ~

% 70
    | f8 r r
    | R4.*2
    | f4.-\f ~
    | f8 r r
    | R4.*8

% 83
    | bes16(-\f c d es f fis)
    | g( fis g d es d)
    | es( e f! e f fis)
    | g( a bes as g f!)
    | es!( g es d c bes)
    | a!4( bes8)
    | es(-\p f) f

% 90
    | g16(-\f f es d c bes)
    | a4( bes8)
    | es(-\p f) f
    | bes,4 r8
    | f( bes) r
    | f'( bes,) r
    | es4.
    | f8 f, r
    | R4.*2

% 100
    | d4.-\f
    | g
    | c,
    | f-\p ~
    | f ~
    | f4 r8
    | R4.
    | bes16-\p bes bes bes bes bes
    | \repeat unfold 12 bes

% 110
    | bes8 bes r
    | R4.*4
    | \repeat unfold 18 bes16
    | bes8 bes r
    | fis'8-\p fis16(-. fis-. fis-. fis)-.

% 120
    | g8\noBeam e-.-\f r
    | f!-\p f f
    | r32 bes( d c bes a g f es d c bes)
    | r c'( es d c bes a g f es d c)
    | r d'( f es d c bes a g f es d)
    | r c'( es d c bes a g f es d c)
    | r d'( f es d c bes a g f es d)
    | r d'(-\crescText f es d c b as g f es d)
    | c(-\f bes! a! g f e f fis g a bes g)
    | es'!^(-\p c d es f d bes d \stemUp f es f f,^) \stemNeutral

% 130
    | bes8 r r
    | f r r
    | bes r r
    | f r r
    | bes r r
    | \lowerText g4.-\crescText
    | \lowerDynamics c8(-\f fis, g)
    | es(-\p f! es)
    | d4.
    | \lowerText a'4(-\crescText bes8)

% 140
    | es,(-\f f es)
    | r32 bes''(-\p f' es d c bes a g f es d)
    | \lowerText c(-\crescText bes a g f es' d c bes c d bes)
    | es8(-\f f) f,-.
    | bes4.-\p ~
    | bes ~
    | bes ~
    | bes ~
    | bes8 r bes'-.-\pp
    | bes r r

    \bar "|."
}
