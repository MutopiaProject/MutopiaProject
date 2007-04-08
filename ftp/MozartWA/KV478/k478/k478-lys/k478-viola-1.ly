violaPartI = \relative g {
    \key g \minor
    \time 4/4
    \clef alto
    %\override Hairpin #'minimum-length = #5
    \noTupletBracket

    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	g2-\f d4. d8
	| es( d) d4 r2
	| R1*2
	| a'2-\f d,4. d8
	| es( d) d4 r2
	| R1*2
	| \lowerDynamics g8(-\p bes d bes g c es c)

% 10
	| bes( d bes g fis a fis d)
	| g( bes d bes g c es c)
	| bes( d bes g fis a fis d)
	| g d(-\f d') d d( c a fis)
	| g es( es') es es( c a' fis)
	| << { g4. } { s4 s8^\turnSharp } >> a8 bes4 cis,
	| d d' r2
	| b,2-\p b4. b8
	| c!( b) b4 r2
	| R1*2

% 21
	| a2-\p a'4. a8 bes!8( a) a4 r2
	| f1 ~
	| f ~
	| f
	| ges2(-\sf f2) ~
	| f1
	| bes,-\sf ~
	| bes-\sfp ~

% 30
	| bes4 r r2
	| R1
	| a2-\p a4. a8
	| bes8 \appoggiatura f'32 e16( d e8) f-. g4 r
	| c,2 es!4. es8
	| d8-. \appoggiatura es32 d16( c d8) a'-. bes4 r
	| a8-.-\crescText
	\appoggiatura bes32 a16( g a8) b-. c4 r
	| R1
	| es2-\f es,4. es8
	| es( d) d4 r2

% 40
	| es'2 es,4. es8
	| es( d) d2 d4 ~
	| d( c2 bes4)
	| es2. <c f>4_( ~
	| <d f>8_) r c r bes r a r
	| bes-. bes'(-\p d c bes a g f)
	| f1 ~
	| f8 bes( d c bes a g f)
	| f1 ~
	| f8 bes(-\crescText f' es d c bes as)

% 50
	| g4-\f r8 g(^\flatTurn as f) r bes
	| g( es) bes'2.
	| es,16 g es bes f' as f bes, es g es bes f' as f bes,
	| es4 r r2
	| a,!8( bes) r bes cis( d) r d cis'( d) r f, bes16 a g f es d c! bes
	| << { a1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	     { s2. s8. \grace { g16[( a]) } s16 } >>
	| bes4 r r2
	| R1*3

% 61
	| r2 d(-\sf
	| c4-\p bes) d( es)-\sf ~
	| es-\p a,4. bes8[-. c-. cis-.]
	| d4 r r2
	| bes16-\p d f d f d f d c es f es f es f es
	| bes d f d f d f d a bes c d es d es c
	| bes d f d f d f d c es f es f es f es
	| bes d f d f d f d a bes c d es d es c
	| d8 d'16(-\f c bes8) bes16( a g8) g16( f es8) es16( d

% 70
	| c8) d16 es f g a bes c( a c a c a c a
	| c4)-. r es2(
	| d4) r r8 c(-\p d es)
	| es( d) bes d d( c) bes a
	| bes4 r r2
	| d,2 es4.( c8)
	| bes4 r r2
	| d2 es4.( c8)
	| bes4 r r2
	| R1*2

% 81
	| bes'16(-\f d c a bes d c a bes d c a bes d c a)
	| bes4 r c,16( bes a bes a bes a bes)
	| c16( bes a bes a bes a bes) c( bes a bes a bes a bes)
	| bes4 r r2
	| R1
	| bes8 c16 d es f g a bes c d es f8 d,
	| << { es1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	     { s2. s8. \grace { d16[( es]) } s16 } >>
	| d8( f-\p bes a g bes f a)
	| es( g d f c d es c)

% 90
	| d( f bes a g bes f a)
	| es( g d f c d es c)
	| d4 r r2
	| R1*3
	| bes'8-\p \appoggiatura c32 bes16( a bes8) d-. c-. es-. a,-. c-.
	| bes8-. \appoggiatura c32 bes16( a bes8) d-. c-. es-. a,-. c-.
	| bes4 r c,2(
	| bes a)
    }

    \break

    \repeat volta 2 {

% 100
	| g2( as_\crescText
	| g f)
	| es( \raiseDynamics as!-\f 
	| g f)
	| es4 r r2
	| R1*7

% 112
	| es''1-\p
	| bes
	| g4 g g4.(^\flatTrill f16 es)
	| d4 r r2
	| f'1
	| c
	| as!4 as \raiseScript as4.(-\trill g16 f)
	| e4 r r2

% 120
	| g'1
	| d
	| bes4 bes \raiseScript bes4.(-\trill-\crescText a16 g)
	| cis4 r r2
	| d1-\f
	| a
	| f4 f \raiseScript f4.(-\trill e16 d)
	| cis4 r r2
	| a2 ~ a16( b cis d e f g a)
	| bes!2.( cis4)

% 130
	| d2 r
	| es,2 ~ es16( f g as bes c d es)
	| g,2( f4 e)
	| d4 r r2
	| d'2 g,4. g8
	| as( g) g4 r2
	| c2 f,4. f8
	| ges( f) f4 r2
	| bes2 es,4. es8
	| d2 r

% 140
	| d <d, c'>4. <d c'>8
	| <d bes'>2-\f d4. d8
	| es( d) d4 r2
	| R1*2
	| a'2-\f d,4. d8
	| es( d) d4 r2
	| R1
	| bes'1-\p
	| a-\crescText

% 150
	| g'
	| cis2-\f e,
	| \appoggiatura d32 fis2 fis,4. fis8
	| g8 \appoggiatura d'32 cis16( b cis8) d-. e4 r
	| a,2 c!4. c8
	| \raiseBeam bes8 \appoggiatura c32 bes16( a bes8) fis'-. g4 r
	| fis8-\crescText \appoggiatura g32 fis16( e fis8) g-. a4 r
	| R1
	| c2-\f c,4. c8
	| c( bes) bes4 r2

% 160
	| c'2 c,4. c8
	| c( bes) bes2 bes4
	| b( a2 g4)
	| g2 a4( fis)
	| g8 r a r g r fis r
	| g es'(-\p g f! es d c bes)
	| bes1
	| r8 bes'8( g' f es d c bes)
	| bes1 ~
	| bes8( es g f) f( es) es( d)

% 170
	| d4( cis4.-\crescText bes8[ g bes])
	| d,4-\f r8 \raiseScript bes'8(-\turn c! a) r d
	| bes( g) d'2. ~
	| d4 r r r8 b,(
	| c4) r r r8 a'
	| fis( g) r g a( bes) r bes
	| a( bes) r4 r2
	| <c, d>8 <c d>4 <c d> <c d> <c d>8
	| <bes d>4 r r2
	| R1*3

% 182
	| r2 d-\sf ~
	| d-\p f!4(-\sfp es) ~
	| es es,(-\sf d \lowerDynamics fis8-\p a)
	| g4 r r2
	| g16-\p bes d bes d bes d bes a c d c d c d c
	| g bes d bes d bes d bes fis g a bes c bes c a
	| g16 bes d bes d bes d bes a c d c d c d c
	| g bes d bes d bes d bes fis g a bes c bes c a

% 190
	| bes4 r8 d'16(-\f c bes8) bes16( a g8) g16( f!)
	| e( f g a c bes a g) fis2
	| g4 r r16 g,[ a bes] c d e fis
	| g bes, c d e fis g a bes( a bes a bes a bes a
	| bes4) r d2(
	| c4) r r8 es[(-\p d c])
	| c( bes) g bes bes( a) g fis
	| g4 r r2
	| bes,2 c4.( a8)
	| g4 r r2

% 200
	| bes2 c4.( a8)
	| g4 r r2
	| R1*3
	| g'16(-\ff bes a fis g bes a fis g bes a fis g bes a fis)
	| g4 r as,16( g fis g fis g fis g)
	| \repeat unfold 2 { as( g fis g fis g fis g) }
	| g4 r r2
	| R1

% 210
	| g8 a16 bes c d e fis g a bes c d8 bes
	| << { c1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	     { s2. s8. \grace { bes16[( c]) } s16 } >>
	| bes8 d,(-\p g f! es! g d f)
	| c( es bes d a bes c a)
	| bes( d g f es g d f)
	| c( es bes d a bes c a)
	| bes4 r r2
	| R1*3

% 220
	| g'8-\p \appoggiatura a32 g16( fis g8) bes-. a-. c-. fis,-. a-.
	| g \appoggiatura a32 g16( fis g8) bes-. a-. c-. fis,-. a-.
	| g4 r c,2( 
	| bes a)
    }

    | g2-\f d4. d8
    | es( d) d4 r2
    | R1*2
    | a'2-\f d,4. d8 
    | es( d) d4 r2

% 230
    | R1
    | bes'1-\p ~
    | bes ~
    | bes(
    | b)(
    | c
    | cis-\crescText
    | d) ~
    | d
    | g,2-\ff d4. d8

% 240
    | es( d) d4 r2
    | g2 d4. d8
    | es( d) d4 r2
    | g2 f!4. f8
    | f( es) r c es( d) r fis
    | g2 f!4. f8
    | f( es) r c es( d) r fis
    | g2 d4. d8
    | es( d) d4 r8. d'16[ f!8. b,16]
    | d8( c) c4 r8. c16[ es8. a,16]

% 250
    | bes!8.[ bes16 a8. g16] d'4 <d c'>
    | <g, d' bes'> r r2

    \bar "|."
}
