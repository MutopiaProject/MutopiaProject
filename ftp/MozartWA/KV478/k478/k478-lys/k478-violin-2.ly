violinPartII = \relative f' {
    \key bes \major
    \time 3/8
    \override Hairpin #'minimum-length = #5
    \noTupletBracket

    #(override-auto-beam-setting '(end 1 32 * *) 1 8 'Staff)

    R4.*8
    | f4(-\f es8 ~

% 10
    | es d c)
    | g16.[( c32]) bes8[( a])
    | << { bes16.[( c32) d16 d( es f)] }
	 { s16 s16-\turn s4 } >>
    | g4.
    | f
    | es8(-\p d c)
    | << { es'16.[(-\f f32]) } { s16 s16-\turn } >> g8.[ g16]
    | f32( es' c a f es c es d bes' f d)
    | c(-\p g' es c bes f' d bes a es' c a)
    | bes4 r8

% 20
    | es,8( d) r
    | es'( d) r
    | c( es g)
    | bes,( a32 bes c  bes) a( g f es)
    | d( c bes a bes d es f g a bes c)
    | d( c bes a bes d es f es d c bes)
    | \stemDown a(-\f c es d c bes a g \stemNeutral fis es d c)
    | bes( d e fis g fis g a bes c d c)
    | bes( c bes a g a g f! e d c bes)
    | a( cis d e f g a g f e d c)

% 30
    | b( a b c d e f e f d g f)
    | \lowerDynamics e(-\p f g f) f( e d c d f g f)
    | e( f g f) f( e d cis d f g f)
    | e4 r8
    | R4.
    | f4-\p bes16.(-\fp a32)
    | a16[( g) f8] d'16.(-\fp c32)
    | c16([ bes) a8] f'16.(-\fp e32)
    | e16[( d) c8] r

% 39
    | R4.*8
    | <g a>8-[-\p <g a>16-(-. <g a>-. <g a>-. <g a>-]-)-.
    | <f a>8-.\noBeam <d' f>-.-\f r
    | f,4-\p \appoggiatura a32 g16.( f32)

% 50
    | f4 r8
    | e'8[( bes'8. e,16)]
    | g8( f) r
    | e8[( bes'8. e,16)]
    | g8( f) r
    | fis[(-\crescText c'8. fis,16)]
    | << { g16.( a32) } { s16 \lowerText s16^\turnSharp } >> bes8(-\f a)
    | a32(-\p g bes g) f!8( e)
    | f4 r8
    | R4.

% 60
    | c'4. ~
    | c ~
    | c ~
    | c16[(-\crescText es8 a, c16)]
    | bes32(-\f a g f) e8( f)
    | d16.(-\p bes32) a8( g)
    | f r a-.
    | bes-. r c-.
    | c-. r a-.
    | bes-. r c-.

% 70
    | c-. r r
    | R4.*2
    | c,8(-\f es! a)
    | c( es) r
    | R4.*8

% 83
    | f,4(-\f es8 ~
    | es d c)
    | g16.( c32) bes8( a)
    | << { bes16.[( c32) d16 d( es f)] }
	 { s16 s16-\turn s4 } >>
    | g4.
    | f
    | es8(-\p d c)

% 90
    | << { es'16.[(-\f f32]) } { s16 s16-\turn } >> g8.[ g16]
    | f32( es' c a f es c es d bes' f d)
    | c(-\p g' es c bes f' d bes a es' c a)
    | bes4 r8
    | es,8( d) r
    | es'( d) r
    | c( es g)
    | bes,8[( a32 bes c bes]) a( g f es)
    | d( c bes a bes d es f g a bes c)
    | d( c bes a bes d es f es d c bes)

% 100
    | a(-\f c es d c bes a g fis es d c)
    | bes( d e fis g fis g a bes c d c)
    | bes( c bes a g a g f! e d c bes)
    | a( bes c d es!-\p g f es d bes g bes)
    | a( bes c d es g f es d bes g bes)
    | a4 r8
    | R4.
    | bes4-\p es16.(-\fp d32)
    | d16( c) bes8 g'16.(-\fp f32)
    | f16( es) d8 bes'16.(-\fp a32)

% 110
    | a16( g) f8 r
    | R4.*8
    | d'8-\p d16(-. d-. d-. d)-.

% 120
    | d8-.\noBeam <d bes'>-.-\f r
    | bes4-\p \appoggiatura d32 c16.( bes32)
    | bes4 r8
    | R4.
    | f' ~
    | f ~
    | f ~
    | f16[(-\crescText as8 d, f16)]
    | es32(-\f d c bes) a8( bes)
    | g16.(-\p es32) d8( c)

% 130
    \override Slur #'height-limit = #4.0
    | d32 bes'( d c bes a g f es d c bes)
    | r c'( es d c bes a g f es d c)
    | r d'( f es d c bes a g f es d)
    | r c'( es d c bes a g f es d c)
    | r d'( f es d c bes a g f es d)
    | r d'( f es d c b as g f es d)
    | es(-\f d c bes! a bes c a bes c d bes)
    | g(-\p es' g es d f d bes c f c a)
    | r bes'( f' es d c bes a g f es d)
    \revert Slur #'height-limit
    | c8 r r

% 140
    | R4.
    | f'-\p
    | es4(-\crescText d8)
    | c16(-\f es32 g) bes,8[ \appoggiatura d32 c16.( bes32)]
    | bes8 r f'-\p-.
    | es-. r f-.
    | f-. r f,-.
    | es-. r f-.
    | f-. r bes'-.-\pp
    | bes r r

    \bar "|."
}
