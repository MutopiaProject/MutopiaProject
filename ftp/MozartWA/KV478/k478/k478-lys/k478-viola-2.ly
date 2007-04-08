violaPartII = \relative d' {
    \key bes \major
    \time 3/8
    \clef alto
    \override Hairpin #'minimum-length = #5
    \noTupletBracket

    #(override-auto-beam-setting '(end 1 32 * *) 1 8 'Staff)

    R4.*8
    | d4(-\f c8 ~

% 10
    | c bes g)
    | c,( d es)
    | d( bes'16 bes( c d)
    | es4. ~
    | es4( d8)
    | c(-\p bes a)
    | bes-\f es( d)
    | c4( bes8)
    | g(-\p f es)
    | d4 r8

% 20
    | c'8( bes) r
    | c'( bes) r
    | R4.*4
    | c,8(-\f a d) ~
    | d( bes g) ~
    | g( e g)
    | f( a d) ~

% 30
    | d( b g)
    | g4(-\p b16 d)
    | c8.( g16 b d)
    | c4 r8
    | R4.
    | a4-\p d16.(-\fp c32)
    | c16[( bes) a8] bes'16.[(-\fp a32)]
    | a16[( g) f8] d'16.[(-\fp c32])
    | c16( bes) a8 r

% 39
    | R4.*8
    | e8-\p e16(-. e-. e-. e)-.
    | d8-.\noBeam <f a>-.-\f r
    | a,16(-\p c a c) << e8 \\ { bes16( c) } >>

% 50
    | <a f'>4 r8
    | R4.
    | c' ~
    | c ~
    | c ~
    | c-\crescText
    | bes16.( a32) g8(-\f f) ~
    | f16(-\p d) c4
    | r32 f( a g f e d c bes a g f)
    | r g'( bes a g f e d c bes a g)

% 60
    | r a'( c bes a g f e d c bes a)
    | r g'( bes a g f e d c bes a g)
    | r a'( c bes a g f e d c bes a)
    | r a'(-\crescText c bes a g fis es! d c bes a)
    | g(-\f a bes a) g( bes e g) f,!( a d f)
    | bes,(-\p d g, bes) c,( f a c c, g' bes c)
    | a8 r f'-.
    | f-. r g-.
    | f-. r f-.
    | f-. r g-.

% 70
    | f-. r r
    | R4.*2
    | a,8(-\f c es!)
    | a( c) r
    | R4.*8

% 83
    | d,4(-\f c8 ~
    | c bes g)
    | c,( d es)
    | d8. bes'16( c d)
    | es4.
    | \set doubleSlurs = ##t <c es>4( <bes d>8) \set doubleSlurs = ##f
    | c(-\p bes a)

% 90
    | bes-\f es4
    | f4.
    | es8(-\p d c)
    | bes4 r8
    | c( bes) r
    | c'( bes) r
    | R4.*4

% 100
    | c,8(-\f a d) ~
    | d( bes g) ~
    | g( e g)
    | f32( g a bes) c8(-\p bes16 c)
    | c32( bes a bes) c8( bes16 c)
    | c4 r8
    | R4.
    | d,4-\p g16.(-\fp f32)
    | f16[( es) d8] es'16.[(-\fp d32)]
    | d16[( c) bes8] g'16.[(-\fp f32)]

% 110
    | f16( es) d8 r
    | R4.*8
    | <a' c>8 <a c>16(-. <a c> <a c> <a c>)-.
    | <g bes>8-.\noBeam g-.-\f r
    | d16(-\p f d f) << a8 \\ { es16( f) } >>
    | <d bes'>4 r8
    | a'[( es'8. a,16)]
    | c8( bes) r
    | a[( es'8. a,16)]
    | c8( bes) r
    | b[(-\crescText f'8. b,16)]
    | c16.(-\f d32) es8( d)
    | d32(-\p c es c) bes!8( a)

% 130
    | bes4 r8
    | R4.
    | f ~
    | f ~
    | f ~
    | f16[( as8-\crescText d, f16])
    | es16.(-\f d32) c8( bes) ~
    | bes16(-\p g) f4
    | R4.
    | \LowerText c'32(-\crescText bes a g f es d c d f bes d)

% 140
    | c(-\f d es c d es f d c d es c)
    | <d bes'>4.-\p
    | << { a'4( bes8) } \\ f4. >>
    | g8(-\f f4)
    | f8 r bes-\p-.
    | bes-. r c-.
    | bes-. r bes,-.
    | bes-. r c-.
    | bes-. r d'-\pp-.
    | d r r

    \bar "|."
}