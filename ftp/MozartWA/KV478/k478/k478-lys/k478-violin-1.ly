violinPartI = \relative g' {
    \key g \minor
    \time 4/4
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
	| bes'2-\p ~ bes8 a( c fis,)

% 10
	| g4 r r2
	| bes2 ~ bes8 a( c fis,)
	| g4 r r2
	| r8 d(-\f d') d d( c a fis)
	| g es( es') es es( c a' fis)
	| << { g4. } { s4 s8^\turnSharp } >> a8 bes4 cis,
	| d d' r2
	| g,,2-\p d4. d8
	| es8( d) d4 r2
	| R1*2

% 21
	| c''2-\p f,4. f8
	| e( f) f4 r2
	| r8 d,8 d d d d d d
	| r es! es es \lowerDynamics es(-\sf d es c)
	| r8 d-\p d d d d d d
	| r es es es \lowerDynamics es(-\sf d es c)
	| r d-\p d d d d d d
	| es( g) bes bes bes( as f d)
	| es(-\sfp g) bes bes bes( as f d)

% 30
	| es4 r r2
	| R1
	| f'2-\p f,4. f8
	| g8-. \appoggiatura a32 g16( f g8) a-. bes4 r
	| f'2 a,4. a8
	| bes8-. \appoggiatura c32 bes16( a bes8) c-. d4 r
	| c8-.-\crescText
	\appoggiatura d32 c16( bes c8) d-. es4 r
	| bes'2-\f bes,4. bes8
	| bes( a) a4 r2
	| bes'2 bes,4. bes8

% 40
	| bes( a) a4 r2
	| bes'2 bes,4. bes8
	| b4( bes a bes)
	| g2.( a4)
	| bes8 r es, r d r c r
	| bes4 r r2
	| r8 f''(-\p es' d c bes a c)
	| bes4 r r2
	| r8 f( es' d c bes a c)
	| bes1-\crescText ~

% 50
	| bes-\f ~
	| bes4 r8 g(^\flatTurn as f) r bes-.
	| g16 es bes g' as f bes as g es bes g' as f bes as
	| g4 r r2
	| cis,8( d) r d e( f) r f a!( bes) r bes d16 c bes a g f es! d
	| << { c1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	     { s2. s8. \grace { bes16[( c]) } s16 } >>
	| bes4 r r2
	| R1*3

% 61
	| r2 \LowerDynamics f(-\sf
	| \LowerDynamics es4-\p d) fis( g)-\sf ~
	| g-\p c,4. d8[-. es-. e-.]
	| f!4 r r2
	| bes'4-\p c16( bes a g) f4 f
	| bes c16( bes a bes) f'4 r
	| bes,8( a16 bes c bes a g) f4 f
	| bes8 bes c16( bes a bes) f'4 r
	| r8 f16(-\f es d8) d16( c bes8) bes16( a g8) g16( f

% 70
	| es8) f16 g a bes c d es( d es d es d es d
	| es4)-. r <c, a'>2(
	| <bes bes'>4) r r8 es[(-\p f g)]
	| g( f) d f f( es) d c
	| bes4 r r2
	| bes4 c16( bes a g) f4 f
	| bes bes f' r
	| bes,8( a16 bes c bes a g) f8 f f f
	| d4 r r2
	| R1*2

% 81
	| d'16(-\f f es c d f es c d f es c d f es c)
	| f4 r as,2
	| f d
	| es8 f16 g as bes c d es-\trill d es f g^\flatTrill f g as
	| bes2 des
	| d!8 bes4 f8 d bes f f'
	| << { c1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	     { s2. s8. \grace { bes16[( c]) } s16 } >>
	| bes4 r es(-\p d
	| c bes) a2

% 90
	| bes4.( c16 d es4 d)
	| c( bes) a2
	| bes4 r r2
	| r ges4( f8.) f16
	| f'8.( d16) bes4 r2
	| r ges'4( f8.) f16
	| f1 ~
	| f ~
	| f4 r es,2( d fis)
    }

    \break

    \repeat volta 2 {
% 100
	| g( \LowerText c,-\crescText
	| bes as)
	| g( f'!-\f
	| es d)
	| c4 r r2
	| R1*9

% 114
	| es'1-\p
	| bes
	| as4 as as4.(-\trill g16 f)
	| e4 r r2
	| f'1
	| c

% 120
	| bes4-. bes-. bes4.(-\trill a!16 g)
	| fis4 r r2
	| << { d''1 } { s2 s2-\crescText } >>
	| g,1
	| f!4-\f f f4.(-\trill e16 d)
	| cis4 r r2
	| d,2 ~ d16( e f g a b cis d)
	| e1 ~
	| e4 d a a'( ~
	| a g e) bes'! ~

% 130
	| bes( a) r2
	| R1
	| cis,2 ~ cis16( d e f g a b cis)
	| d4 r r2
	| g,2 c,!4. c8
	| b8( c) c4 r2
	| f2 bes,!4. bes8
	| a( bes) bes4 r2
	| es2 a,4. a8
	| a( g) g4 r2

% 140
	| c2 <a, fis'>4. <a fis'>8
	| <g g'>2-\f d'4. d8
	| es( d) d4 r2
	| R1*2
	| a'2-\f d,4. d8 es( d) d4 r2
	| R1
	| r2 a'8(-\p g) g-. g-.
	| r2 d'8(-\crescText cis) cis-. cis-.

% 150
	| r2 f!8( e) e-. e-.
	| r4 e(-\f cis g)
	| \appoggiatura fis16 d'2-\p d,4. d8
	| \raiseBeam e8 \appoggiatura fis32 e16( d e8) fis-. g4 r
	| d'2 fis,4. fis8
	| \raiseBeam g8 \appoggiatura a32 g16( fis g8) a-. bes4 r
	| \raiseBeam a8-\crescText 
	\appoggiatura bes32 a16( g a8) bes-. c4 r
	| g'2-\f g,4. g8
	| g( fis) fis4 r2
	| g'2 g,4. g8

% 160
	| g( fis) fis4 r2
	| g'2 g,4. g8
	| gis4( g fis g)
	| e2 es
	| d8 r c r bes r a r
	| g4 r r2
	| r8 bes'(-\p as' g f es d f)
	| es4 r r2
	| r8 bes( as' g f es d f)
	| es4 bes g'2 ~

% 170
	| g8 fis( g fis g) g^\turnSharp bes( g)
	| d'1-\f ~
	| d4 r8 bes(-\turn c a) r d
	| bes4 r r r8 d,,(
	| es4) r r r8 c'
	| a( bes) r bes cis( d) r d
	| fis( g) r g bes16 a g f! es d c! bes
	| << { a1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	     { s2. s8. \grace { g16[( a]) } s16 } >>
	| g4 r r2
	| R1*3

% 182
	| r2 d'(-\sf
	| fis4-\p g) as(-\sfp g
	| fis) c'2-\sf bes16(-\p a! g fis)
	| g4 r r2
	| g4 a16( g f! es) d4 d
	| g4 a16( g fis g) d'4 r
	| g,8( fis16 g a g f es) d4 d
	| g8 g a16( g fis g) d'4 r

% 190
	| r8 d16(-\f c bes8) bes16( a g8) g16( f! es8) es16( d)
	| cis2 c16( d es d f es d c)
	| bes g a bes c d e fis g bes, c d e fis g a
	| bes d, e fis g a bes c d( cis d cis d cis d cis
	| d4) r \tieDown <g,, f'!>2^( ~
	| <g es'>4^) \tieNeutral r r8 g'[(-\p f es)]
	| es( d) bes d d( c) bes a
	| g4 r r2
	| g4 a16( g f es) d4 d
	| g g d' r

% 200
	| g,8( fis16 g a g f es) d8 d d d
	| bes4 r r2
	| R1*3
	| bes'16(-\ff d c a bes d c a bes d c a bes d c a)
	| d4 r f,!2
	| d b
	| c8 d16 es f g a b c(-\trill b c d) es( d es f)
	| g2 bes! ~

% 210
	| bes8 g4 d8 bes g d d'
	| << { fis1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	     { s2. s8. \grace { e16[( fis]) } s16 } >>
	| g4 r c,(-\p bes
	| a g) fis2
	| \stemUp g4.( a16 bes c4 bes) \stemNeutral
	| a( g) fis2
	| g4 r r2
	| r es4( d8.) d16
	| d'8.( bes16) g4 r2
	| r2 es'4( d8.) d16

% 220
	| d1 ~
	| d ~
	| d4 r es,2(
	| d fis)
    }

    | g2-\f d4. d8
    | es( d) d4 r2
    | R1*2
    | a'2-\f d,4. d8 
    | es( d) d4 r2

% 230
    | R1
    | r2 a'8(-\p g) g g
    | r2 bes8( as) as as
    | r2 as8( g) g g
    | r2 bes8( as) as as
    | r2 as8( g) g g
    | r2 c8(-\crescText bes) bes bes
    | r2 bes8( a!) a a
    | r2 d8( c) c c
    | g2-\ff d4. d8

% 240
    | es( d) d4 r2
    | g2 d4. d8
    | es( d) d4 r2
    | g2 f!4. f8
    | f( es) r c es( d) r fis
    | g2 f!4. f8
    | f( es) r c es( d) r fis
    | g2 d4. d8
    | es( d) d4 r8. d16[ f!8. b,16]
    | d8( c) c4 r8. c16[ es8. a,16]

% 250
    | bes!8.[ bes16 a8. g16] d'4 <d a' fis'>
    | <d bes' g'> r r2

    \bar "|."
}
