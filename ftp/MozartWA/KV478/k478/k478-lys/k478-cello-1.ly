celloPartI = \relative g, {
    \key g \minor
    \time 4/4
    \clef bass
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
	| g1-\p ~

% 10
	| g ~
	| g ~
	| g ~
	| g8 d(-\f d') d d( c a fis)
	| g es( es') es es( c a fis)
	| g4. a8 bes4 cis,
	| d d' r2
	| g,2-\p g'4. g8
	| fis( g) g4 r2
	| R1*2

% 21
	| f!2-\p f'4. f8
	| ges( f) f4 r2
	| r8 bes, bes bes bes bes bes bes
	| r \repeat unfold 7 a
	| r \repeat unfold 7 bes
	| r \repeat unfold 7 a
	| r \repeat unfold 7 as
	| g(-\sfp bes g bes as bes as bes)
	| g(-\sfp bes g bes as bes as bes)

% 30
	| g4 r r2
	| R1*2
	| f2-\p f,4. f8
	| f4 r r2
	| f'2 f,4. f8
	| f4 r r2
	| bes4-\f r d r
	| c r f, r
	| bes r d r

% 40
	| c r f, r
	| bes2( as)
	| g4( c fis, g)
	| es'1(
	| d8) r es r f r f, r
	| bes4 bes'2(-\p b4)
	| c4.( bes8 a g f a)
	| bes2.( b4)
	| c4.( bes8 a g f a)
	| bes4 bes, r8 bes[(-\f c d])

% 50
	| es bes es bes f' bes, d bes
	| es bes es bes f' bes, d bes
	| es4 d es d
	| es r r2
	| f,4 r f r
	| f r r2
	| f8 f f f f f f f
	| bes4 r r2
	| R1*3

% 61
	| r2 bes-\sf ~
	| bes4-\p bes bes2-\sf ~
	| bes4-\p bes bes2-\sf ~
	| bes4-\p r r2
	| bes'2(-\p a
	| bes f)
	| bes( a
	| bes f)
	| bes4 r r2

% 70
	| f4-\f r f,2 ~
	| f8 g16 a bes c d e f( e f e f e f fis)
	| g4 r es!-\p r
	| f! r f, r
	| bes2( a
	| bes f)
	| bes( a
	| bes f)
	| bes4 r r2
	| R1*2

% 81
	| bes8-\f f bes f bes f bes f
	| d4 r d2
	| f as
	| g4 r r2
	| R1
	| f'8 f f f f f f f
	| f, f f f f f f f
	| bes2 ~ bes-\p ~
	| bes1 ~

% 90
	| bes ~
	| bes ~
	| bes ~
	| bes ~
	| bes ~
	| bes ~
	| bes4 r f r
	| bes r f r
	| bes2( c
	| d d,)
    }

    \break

    \repeat volta 2 {
% 100
	| es( as-\markup { \italic "cresc." }
	| bes b)
	| c( f,-\f
	| g1)
	| c4 r r2
	| R1*7

% 112
	| es8(-\p g bes g es g bes g)
	| f( as bes as f as bes as)
	| es( g bes g es g bes g)
	| f( bes g f e-\f f g e)
	| f(-\p as c as f as c as)
	| g( bes c bes g bes c bes)
	| f( as c as f as c as)
	| g( c a! g fis-\f g a fis)

% 120
	| g(-\p bes d bes g bes d bes)
	| a( c d c a c d c)
	| g( bes d bes g-\markup { \italic "cresc." } bes d bes)
	| e,( a cis a e a cis a)
	| d4 r r2
	| R1
	| d1-\f
	| a
	| f4 f f4.(-\trill e16 d)
	| cis4 r r2

% 130
	| d,2 ~ d16( e f g a bes c! d)
	| es!2 g
	| bes( a4 g)
	| f r r2
	| es,2 es''4. es8
	| f( es) es4 r2
	| d,,2 d''4. d8
	| es( d) d4 r2
	| c,,2 c''4. c8
	| bes2 r

% 140
	| d,,2 ~ d16( e fis g a b c d)
	| g,2-\f d4. d8
	| es!( d) d4 r2
	| R1*2
	| a'2-\f d,4. d8
	| es( d) d4 r2
	| R1
	| es1-\p
	| e-\markup { \italic "cresc." }

% 150
	| cis
	| a'1-\f
	| d,4-\p r r2
	| d'2-\p d,4. d8
	| d4 r r2
	| d'2 d,4. d8
	| d4 r r2
	| g4-\f r bes r
	| a r d, r
	| g r bes r

% 160
	| a r d, r
	| g2( f!)
	| e4( a d, g)
	| cis2( c)
	| bes8 r c r d r d, r
	| es4 es'2(-\p e4)
	| f4.( es8 d c bes d)
	| es4 es'2( es4)
	| f4.( es!8 d c bes d)
	| es4 es, r es ~

% 170
	| es8( d-\markup { \italic "cresc." } es d) es2
	| d8-\f d g d a' d, fis d
	| g d g d a' d, fis d
	| g4 r r r8 g,(
	| c4) r r r8 c,
	| d4 r d r
	| d r r2
	| d8 d d d d d d d
	| g4 r r2
	| R1*3

% 182
	| r2 g2-\sf ~
	| g4-\p g g2-\sfp ~
	| g4 g g2-\sfp ~
	| g4 r r2
	| g'2(-\p fis
	| g d)
	| g( fis
	| g d)

% 190
	| g4 r r2
	| a2-\f d,
	| g4 r g r
	| g r g,2 ~
	| g8 a16 bes c d e fis g fis g a b g a b
	| c4 r c,-\p r
	| d r d r
	| g,2( fis
	| g d)
	| g( fis

% 200
	| g d)
	| g4 r r2
	| R1*3
	| g'8-\ff d g d g d g d
	| bes4 r b2
	| d f
	| es4 r r2
	| R1

% 210
	| d8 d d d d d d d
	| d, d d d d d d d
	| g2 ~ g-\p ~
	| g1 ~
	| g ~
	| g ~
	| g ~
	| g ~
	| g ~
	| g ~

% 220
	| g4 r d r
	| g r d r
	| g2( c)
	| d( d,)
    }

    | g2-\f d4. d8
    | es( d) d4 r2
    | R1*2
    | a'2-\f d,4. d8 
    | es( d) d4 r2

% 230
    | R1
    | \lowerDynamics es(-\p
    | d)
    | es(
    | d)(
    | es
    | e-\markup { \italic "cresc." }
    | f
    | fis)
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
    | es( d) d4 r8. d'16[ f!8. b,16]
    | d8( c) c4 r8. c16[ es8. a,16]

% 250
    | bes!8.[ bes16 a8. g16] d'4 d,
    | g r r2

    \bar "|."
}
