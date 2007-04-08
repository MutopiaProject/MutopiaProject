pianoRightPartI = \relative g' {
    \key g \minor
    \time 4/4
    %\override Hairpin #'minimum-length = #5
    \noTupletBracket

    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	g2 d4. d8
	| es( d) d4 r8. d'16[( d'8.) d16]-.
	| d4( ~ d16 c bes a g f es d c bes a g)
	| g8(-\trill fis) fis-. fis-. fis4 r
	| a2 d,4. d8
	| es8( d) d4 r8. d'16([ c'8.) c16]-.
	| c4( ~ c16 bes a g fis es d c bes a g fis)
	| a8(-\trill g) g-. g-. g4 r
	| R1

% 10
	| r8 d'8( d') d-. d( c a fis)
	| g4 r r2
	| r8 d( d') d-. d( c a fis)
	| g d( d') d-. d( c a fis)
	| g es( es') es-. es( c a fis)
	| << { g4. a8 } { s4 s4^\turnSharp } >> bes4 cis,
	| d-. d'-. r2
	| R1*2
	| <es, g>2 << { c4. c8 d8 c c4 } \\ 
		      { <es, g>4. <es g>8 <f as b>( <es g>) <es g>4 } >> r2

% 21
	| R1*2
	| f'2 bes,4. bes8
	| d( c) c4 r2
	| f2 bes,4. bes8
	| d( c) c4 r2
	| f2 bes,4. bes8
	| bes'4( as16 g f es d4) r8 bes
	| bes'4( as16 g f es d4) r8 bes

% 30
	| g'16( fis a g bes a g f es d f es g f es d
	| c b c d es d es f g f es d c bes a bes)
	| r f'( a f) r c( f c) r a( c a) r f( a f)
	| r g'( bes g) r e( g e) r bes( e bes) r g( bes g)
	| r a'( c a) r es!( a es) r c( es c) r a( c a)
	| r bes'( d bes) r f( bes f) r d( f d) r bes( d bes)
	| r c'( es c) r a( c a) r es( a es) r c( es c)
	| d( bes c d es f g a bes c d es f8) f
	| f16( es d c bes a g f es d c bes \stemDown a bes c a \stemNeutral
	| bes8) c16( d es f g a bes c d es f8) f

% 40
	| f16( es d c bes a g f es d c bes \stemDown a bes c a \stemNeutral
	| bes8) c16( d es f g a bes c d es f8) f
	| f,16( b d f e, g bes e es, a c es d, g bes d)
	| r g,( bes a c b d c es d f es d c bes a
	| bes d bes f g bes g es d f d bes c es c a
	| bes4) r r2
	| <es es'>2 <es, es'>4. <es es'>8
	| <es es'>8( <d d'>) <d d'>4 r2
	| <es' es'>2 <es, es'>4. <es es'>8
	| <es es'>8( <d d'>) <d d'>4 r2

% 50
	| R1*2
	| bes'16( bes' \repeat unfold 6 { bes, bes' } bes, bes')
	| r8 << { g8( a bes a g f es) } { es f g f es d c } >>
	| r4 <a cis>8( <bes d>) r <bes d>\noBeam <cis e>( <d f>)
	| r <d f>\noBeam <cis a'>( <d bes'>) r2
	| r16 f,( a c! es f a c es c a f es c a es)
	| d4 r <d' f>2(
	| <c es>4 <bes d>) <d fis>( <es g>) ~
	| <es g> <a, c>4. <bes d>8-[-. <c es>-. <cis e>-]-.

% 60
	| <d f!>4 r << { <d, g bes>( f'8 es) } \\ { s4 <g, c!> } >>
	| << { <bes d>( <a c>) } \\ f2 >> <d' f>2(
	| <c es>4 <bes d>) <d fis>( <es g>) ~
	| <es g> <a, c>4. <bes d>8-[-. <c es>-. <cis e>-]-.
	| <d f!>4 r << { bes4( d8 c!) } \\ { f,4 a } >>
	| bes r r2
	| R1*8
	| bes'4 c16( bes a g f4) f
	| bes bes f' r
	| bes,8( a16 bes c bes a g f8) f f f
	| bes bes bes16( c d es f4) r
	| r8 f16( es d8) d16( c bes8) bes16( as g8) g16( fis
	| \repeat unfold 3 { g bes as fis } g bes a c

% 80
	| \repeat unfold 3 { bes d c a } bes d c es
	| \repeat unfold 4 { d f es c }
	| f4) r r2
	| R1*2
	| e,,8( f16 g a bes c d e f g a bes8) e,
	| f f' d, d' f, f' bes,, bes'
	| << { a1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	     { s2. s8. \grace { g16[( a]) } s16 } >>
	| bes4 r r2
	| r r8 f,( f') f

% 90
	| f8.( d16) bes4 r2
	| r r8 f'( f') f
	| f4. \times 2/3 { bes,16( c d } es4 d
	| c bes a4.) a8
	| bes4.( c16 d es8) es, d( d')
	| c( c,) bes( bes') a,( a') a a
	| \repeat unfold 2 {
	    bes \appoggiatura c32 bes16( a bes8) d-. c-. es-. a,-. c-. }
	| bes4 <bes, d> r <bes d>8( <a c>)
	| r4 <a c>8( <g bes>) r4 <g bes>8( <fis a>)
    }

    \break

    \repeat volta 2 {
% 100
	| r4 <bes g'> r <bes g'>8( <as f'!>)
	| r4 <as f'>8( <g es'>) r4 <g es'>8( <f d'>)
	| r4 <es' g es'>4 r <es g es'>8( <d f d'>)
	| r4 <d f d'>8( <c es c'>) r4 <c es c'>8( <b d b'>)
	| \appoggiatura c32 c'1
	| g
	| es4-. es-. es4.(-\trill d16 c)
	| b4 r r2
	| c2( ~ c16 d es f g as bes c)
	| des2 ~ des8 des(-\turn f des)

% 110
	| b4 b b b
	| c <es,, c'> <f bes!> <d f as>
	| <bes es g> r r2
	| R1*2
	| r2 <c e g bes>^( ~
	| <c f as>4^) r r2
	| R1*2
	| r2 <d fis a c>^( ~

% 120
	| <d g bes>4^) r r2
	| R1*3
	| f,8^\markup { \italic "legato" } a d a d a d f
	| g e cis e g e cis e
	| \stemUp
	d f \change Staff = lower a, d f, a d, f \change Staff = upper
	\stemNeutral
	| g cis e cis g cis e cis
	| d a d cis d a d f
	| g e cis d e f g e

% 130
	| a f d e f d a' f
	| bes g es bes g bes es g
	| e f g e a gis a a,
	| d2 ~ d16( e f g a b cis d)
	| es2 r
	| c,!2 ~ c16( d es! f g a b c)
	| d2 r
	| bes,!2 ~ bes16( c d es f g a bes)
	| c2 r
	| <d, d'> <d g>4. <d g>8
	| << { g8( fis) fis4 } \\ c2 >> r

% 140
	| g'2 d4. d8
	| es( d) d4 r8. d'16[( d'8.) d16]-.
	| d4( ~ d16 c bes a g f es d c bes a g)
	| g8(-\trill fis) fis-. fis-. fis4 r
	| a2 d,4. d8
	| es8( d) d4 r8. d'16([ c'8.) c16]-.
	| c4( ~ c16 bes a g fis es d c bes a g fis)
	| a8( g) g-. g-. r4 r8 g
	| d'( cis) cis-. cis-. r4 r8 cis

% 150
	| f!( e) e-. e-. r4 r8 e
	| a( g) r bes a( g) r cis,
	| r16 d( fis d) r a( d a) r fis( a fis) r d( fis d)
	| r e'( g e) r bes( e bes) r g( bes g) r e( g e)
	| r fis'( a fis) r c!( fis c) r a( c a) r fis( a fis)
	| r g'( bes g) r d( g d) r bes( d bes) r g( bes g)
	| r a'( c a) r fis( a fis) r c( fis c) r a( c a)
	| bes( g a bes c d e fis g a bes c d8) d
	| d16( c bes a g fis es! d c bes a g fis g a fis
	| g8) a16( bes c d e fis g a bes c d8) d

% 160
	| d16( c bes a g fis es! d c bes a g fis g a fis)
	| g8( a16 bes c d e fis g a bes c d8) d
	| d,16( gis b d cis, e g cis c, fis a c b, d g b)
	| r bes!( a bes c bes a g fis c' b c d c bes a
	| g bes g d es g es c bes d bes g a c a fis)
	| g4 r r2
	| \repeat unfold 2 {<as as'>2 <as, as'>4. <as as'>8
			     | <as as'>( <g g'>) <g g'>4 r2 }

% 170
	| R1*3
	| r8 << { bes''( d c bes a g f) } { g bes a! g f es d } >>
	| r << { es( f g f es d c) } { c d es d c bes a } >>
	| r4 <fis a>8( <g bes>) r <bes g>\noBeam <a cis>( <bes d>)
	| r <bes d>\noBeam <a fis'>( <bes g'>) g'16( f es d c! bes a g)
	| << { fis1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	     { s2. s8. \grace { e16[( fis]) } s16 } >>
	| g4 r <bes d>2(
	| <a c>4 <g bes>) <b d>( <c es>) ~

% 180
	| <c es> <fis, a>4. <g bes!>8-[-. <a c>-. <a cis>-]-.
	| <bes d>4 r <c, es g> <es a c!>
	| << { <g bes>( <fis a>) } \\ d2 >> <bes' d>2(
	| <a c>4 <g bes>) <b d>( <c es>) ~
	| <c es> <fis, a>4. <g bes!>8-[-. <a c>-. <a cis>-]-.
	| <bes d>4 r8. g16 \set doubleSlurs = ##t 
	<g bes>4( <fis a>) \set doubleSlurs = ##f
	| g r r2
	| R1*10
	| g'4 a16( g f es d4) d
	| g g d' r
	| g,8( fis16 g a g f es d8) d d d

% 200
	| g g g16( a bes c d4) r
	| r8 d16( c bes8) bes16( a g8) g16( f! es8) es16( d
	| \repeat unfold 3 { es g f d } es a g e
	| \repeat unfold 3 { fis a g e } fis bes a fis
	| g bes a fis g c bes g a c bes g a d c a
	| bes d c a bes d c a bes d c a bes d c a
	| d4) r r2
	| R1*2
	| cis,,8( d16 e fis g a b cis d e fis g8) cis,

% 210
	| d d' bes,! bes'! d, d' g,, g'
	| << { a1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	     { s2. s8. \grace { g16[( a]) } s16 } >>
	| g4 r r2
	| r r8 d,( d') d
	| d8.( bes16) g4 r2
	| r r8 d'( d') d
	| d4. \times 2/3 { g,16( a bes } c4 bes
	| a g fis2)
	| g4.( a16 bes c8 c,) bes( bes')
	| a( a,) g( g') fis,( fis') fis fis

% 220
	| \repeat unfold 2 { g8 \appoggiatura a32 g16( fis g8) bes-. a-. c-. fis,-. a-. }
	| g4 <bes, d> r <bes d>8( <a c>)
	| r4 <a c>8( <g bes>) r4 <g bes>8( <fis a>)
    }

    | g2 d4. d8
    | es( d) d4 r8. d'16[( d'8.) d16]
    | d4( ~ d16 c bes a g f es d c bes a g)
    | g8(-\trill fis) fis-. fis-. fis4 r
    | a2 d,4. d8
    | es( d) d4 r8. d'16[( es'8.) es16]

% 230
    | es4( ~ es16 d c bes a g fis es d c bes a)
    | a8( g) g g r2
    | bes8( as) as as r2
    | as8( g) g g r2
    | bes8( as) as as r2
    | as8( g) g g r2
    | c8( bes) bes bes r2
    | bes8( a!) a a r2
    | d8( c) c c r2
    | bes16 g' d g d bes' g bes c, a' d, a' bes, g' d g

% 240
    | a, fis' d fis d c' a c d, bes' g bes c, a' fis a
    | bes, g' d g d bes' g bes c, a' d, a' bes, g' d g
    | a, fis' d fis d c' a c d, bes' g bes c, a' fis a
    | bes, g' d g bes, g' d g b, as' d, as' b, as' d, as'
    | c, g' es g es c' a c d, bes' g bes c, a' fis a
    | bes, g' d g bes, g' d g b, as' d, as' b, as' d, as'
    | c, g' es g es c' a c d, bes' g bes c, a' fis a
    | g2 d4. d8
    | es( d) d4 r8. d16[ f!8. b,16]
    | d8( c) c4 r8. c16[ es8. a,16]

% 250
    | bes!8.[ bes16 a8. g16] d'4 <a c d fis>
    | <g bes d g> r r2

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartI = \relative g, {
    \key g \minor
    \clef bass
    \time 4/4
				%\override Hairpin #'minimum-length = #5
    \noTupletBracket

    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	<< { g2 d4. d8 es( d) d4 } { g'2 d4. d8 es d d4 } >> r2
	| r4 <bes' d> <bes d> <bes d>
	| <a c d>2. r4
	| << { a,2 d,4. d8 es( d) d4 } { a''2 d,4. d8 es d d4 } >> r2
	| r4 \repeat unfold 3 <a' c d>
	| <bes d>2. r4
	| R1

% 10
	| \repeat unfold 3 { g4 r r2 }
	| r8 d( d') d-. d( c a fis)
	| g es( es') es-. es( c a fis)
	| g4. a8 bes4 cis,
	| d-. d'-. r2
	| R1*2
	| <c,, c'>2 s

% 20
	| s1
	| R1*2
	| \repeat unfold 5 { <bes bes'>4 r r2 }
	| <bes bes'>1
	| <bes bes'>1

% 30
	| <es es'>4 r r2
	| <es es'>2. <e e'>4
	| \repeat unfold 5 { <f f'>8 r f' r f r f r }
	| bes4 r d r
	| c r f, r
	| bes r d r

% 40
	| c r f, r
	| <bes, bes'>2 <as as'>
	| <g g'>4 <c c'> <fis, fis'> <g g'>
	| <es es'>1
	| <d d'>8 r <es es'> r <f f'> r <f f'> r
	| <bes bes'>2 <bes, bes'>4. <bes bes'>8
	| <bes bes'>( <a a'>) <a a'>4 r2
	| <bes' bes'>2 <bes, bes'>4. <bes bes'>8
	| <bes bes'>( <a a'>) <a a'>4 r2
	| R1*3
	| <es' es'>4 <d d'> <es es'> <d d'>
	| <es es'> r r2
	| r4 <f f'> r <f f'>
	| r <f f'> r2
	| <f f'>1
	| \repeat unfold 12 { bes8 bes' }

% 60
	| bes,4 r g'( es)
	| f2 \repeat unfold 10 { bes,8 bes' }
	| bes,4 r << { d'4( es) | d } \\ { f,2 | bes4 } >> r4 r2
	| R1*8
	| f16_\markup { \italic "legato" } bes d f f, bes d f f, c' es f f, c' es f
	| f, bes d f f, bes d f f, a c f f, a c f
	| f, bes d f f, bes d f f, c' es f f, c' es f
	| f, bes d f f, bes d f f, a c f f, a c f
	| bes,4 r r \clef violin r8 << { bes'8 bes2 ~ bes4. f8 } \\
				       { d8 es d es d es d es c } >>
	| \clef bass << { f2 ~ f4. f8 ~ f f4 f f f8 } \\
			{ d8 es d es d es d a bes f bes f bes f bes f } >>
	| d4 r r2
	| R1*2
	| \set doubleSlurs = ##t <g, g'>1(
	| <f f'>4) \set doubleSlurs = ##f r r2
	| f16( f' e f f, f' e f f, f' e f f, f' e f
	| bes,4) r r2
	| R1*3 \clef violin
	| r8 f''( bes a g bes f a
	| es g d f c d es c)
	| d( f bes a g bes f a
	| es g d f c d es c)
	| \repeat unfold 2 { << { f8 f f f f f f f } { d d d d es es es es } >> }
	| <d f>4 r \clef bass c, r
	| d r d, r
    }

    \repeat volta 2 {
% 100
	| es r as r
	| bes r b r
	| c r f r
	| g r g, r \clef violin
	| c'8_\markup { \italic "legato" } es g es c es g es
	| b f' g f b, f' g f
	| c es g es c es g es
	| g, d' g d g, d' g d \clef bass
	| as c es c as c es c
	| f, as des as f as des as

% 110
	| g d'! f d g, d' f d
	| c es c, es d f bes, d
	| es4 r r2
	| <d, d'>4 r r2
	| es2 g
	| bes c
	| f,1
	| g2 c,
	| <f, f'> <as as'>
	| <c c'> <d d'>

% 120
	| g1
	| a!2 d,
	| g1
	| <a, a'>
	| d'2 f
	| e a,
	| \stemDown d, f \stemNeutral
	| e a,
	| d f
	| e <g, g'>

% 130
	| <f f'>1
	| <g g'>
	| <a a'>
	| <d d'>2 ~ d'16( e f g a b cis d)
	| <es, es'>2 r
	| <c,! c'!> ~ c'16( d es! f g a b c)
	| <d, d'>2 r
	| <bes,! bes'!>2 ~ bes'16( c d es f g a bes)
	| <c, c'>2 r
	| <bes, bes'> bes''4. bes8
	| a2 r

% 140
	| << { g,2 d4. d8 es( d) d4 } { g'2 d4. d8 es d d4 } >> r2
	| r4 <bes' d> <bes d> <bes d>
	| <a c d>2. r4
	| << { a,2 d,4. d8 es( d) d4 } { a''2 d,4. d8 es d d4 } >> r2
	| r4 \repeat unfold 3 <d a' c>
	| <es g cis>1
	| <e g cis>

% 150
	| <cis e a>
	| a4 a' a, a'
	| <d,, d'>8 r d' r d r d r
	| \repeat unfold 4 { <d, d'> r d' r d r d r }
	| g4 r bes r
	| a r d, r
	| g r bes r

% 160
	| a r d, r
	| <g, g'>2 <f! f'!>
	| <e e'>4 <a a'> <d, d'> <g g'>
	| <cis, cis'>2 <c c'>
	| << { bes8 r c r d r d r } { bes' r c r d r d r } >>
	| <es es'>2 <es, es'>4. <es es'>8
	| <es es'>( <d d'>) <d d'>4 r2
	| es'2 <es, es'>4. <es es'>8
	| <es es'>( <d d'>) <d d'>4 r2
	| <es es'>2 r

% 170
	| R1*3
	| <g g'>4 r r2
	| <c, c'>4 r r2
	| r4 <d d'> r <d d'>
	| r <d d'> r2
	| d16( d' cis d d, d' cis d d, d' cis d d, d' cis d)
	| \repeat unfold 12 { g,8 g' }

% 181
	| g,4 r es'( c)
	| d2 \repeat unfold 10 { g,8 g' }
	| g,4 r << { d''4( c) } \\ d,2 >>
	| <g bes>4 r r2
	| R1*10
	| d16_\markup { \italic "legato" } g bes d d, g bes d d, a' c d d, a' c d
	| d, g bes d d, g bes d d, fis a d d, fis a d
	| d, g bes d d, g bes d d, a' c d d, a' c d

% 200
	| d, g bes d d, g bes d d, fis a d d, fis a d
	| g,4 r r \clef violin r8 <b g'>
	| << { g'2 ~ g4. a8 a2 ~ a4. bes!8 bes4. c8 c4. d8 } \\
	     { c,8 b c b c b c cis d cis d cis d cis d d es d es e f! e f fis } >>
	| \repeat unfold 4 { <g d'> <d d'> }
	| bes4 r r2
	| R1*2 \clef bass
	| <e,, e'>1

% 210
	| <d d'>4 r r2
	| d'16( d' cis d d, d' cis d d, d' cis d d, d' cis d
	| g,4) r r2
	| R1*3 \clef violin
	| r8 d'( g f! es g d f
	| c es bes d a bes c a
	| bes d g f es g d f
	| c es bes d a bes c a)

% 220
	| \repeat unfold 2 { << { d d d d d d d d } { bes bes bes bes c c c c } >> }
	| <bes d>4 r \clef bass c, r
	| d r d, r
    }

    | <g g'>2 <d d'>4. <d d'>8
    | <es es'>( <d d'>) <d d'>4 r2
    | r4 <bes'' d> <bes d> <bes d>
    | <a c es>2. r4
    | <a, a'>2 <d, d'>4. <d d'>8
    | <es es'>8( <d d'>) <d d'>4 r2

% 230
    | r4 \repeat unfold 3 { <d' fis c'> }
    | es8( g bes g es g bes g
    | d f! bes f d f bes f
    | es g bes g es g bes g
    | d f b f d f b f
    | es g c g es g c g
    | e g cis g e g cis g
    | f! a d a f a d a
    | fis a d a fis a d a)
    | g16 d' bes d g, d' bes d fis, d' a d g, d' bes d

% 240
    | d, d' a d fis, d' a d g, d' bes d a d c d
    | g, d' bes d g, d' bes d fis, d' a d g, d' bes d
    | d, d' a d fis, d' a d g, d' bes d a d c d
    | g, d' bes d g, d' bes d f,! d' b d f, d' b d
    | es, c' g c c, a' es a d, d' bes! d d, c' a c
    | g d' bes d g, d' bes d f,! d' b d f, d' b d
    | es, c' g c c, a' es a d, d' bes! d d, c' a c
    | <g, g'>2 <d d'>4. <d d'>8
    | <es es'>( <d d'>) <d d'>4 r8. d'16[ f!8. b,16]
    | d8( c) c4 r8. c16[ es8. a,16]

% 250
    | bes!8.[ bes16 a8. g16] d'4 <d, d'>
    | <g, g'> r r2

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsI = {
    \standardTextScriptLayout

    s1-\f
    | \skip 1*2
    | s1-\p
    | s1-\f
    | \skip 1*2
    | s1-\p

% 9
    | \skip 1*10
    | s1-\f
    | \skip 1*3
    | s1-\p
    | \skip 1*4
    | s1-\sfp
    | s1-\sfp

% 30
    | s1-\f
    | s1
    | s1-\p
    | \skip 1*3
    | s1-\crescText
    | s1-\f
    | \skip 1*7
    | s1-\p
    | \skip 1*6
    | s1-\f
    | \skip 1*4
    | s2 s2-\sf
    | s2.-\p s4-\sf
    | s1-\p

% 60
    | s1
    | s2 s2-\sf
    | s2.-\p s4-\sf
    | s1-\p
    | \skip 1*10
    | s1-\markup { \dynamic "p" \italic "dolce" }
    | \skip 1*3
    | s1-\f
    | \skip 1*10
    | s2 s2-\p
    | \skip 1*10

% 100
    | s2. s4-\crescText
    | s1
    | s1-\f
    | s1
    | s1-\p
    | \skip 1*6
    | s4 s2.-\f
    | s1
    | s1-\p
    | s1
    | s2 s2-\f
    | s1-\p
    | \skip 1*2
    | s2 s-\f

% 120
    | s1-\p
    | s1
    | s1-\crescText
    | s1
    | \once \override DynamicText #'extra-offset = #'(0 . -0.2) s1-\f
    | \skip 1*16

% 141
    | s1-\f
    | \skip 1*2
    | s1-\p
    | s1-\f
    | \skip 1*2
    | s1-\p
    | s1-\crescText
    | s1
    | s1-\f
    | s1-\p
    | \skip 1*3
    | s1-\crescText

% 157
    | s1-\f
    | \skip 1*7
    | s1-\p
    | \skip 1*7
    | s1-\f
    | \skip 1*4
    | s2 s2-\sf
    | s2.-\p s4-\sf
    | s1-\p
    | s1
    | s2 s2-\sf
    | s2.-\p s4-\sf
    | s1-\p
    | \skip 1*12

% 197
    | s1-\markup { \dynamic "p" \italic "dolce" }
    | \skip 1*3
    | s1-\f
    | \skip 1*3
    | s1-\ff
    | \skip 1*7

% 213
    | s2 s8 s4.-\p
    | \skip 1*10


% 224
    | s1-\f
    | \skip 1*2
    | s1-\p
    | s1-\f
    | \skip 1*2
    | s1-\p
    | \skip 1*4
    | s1-\crescText
    | \skip 1*2
    | s1-\markup { \dynamic "ff" \italic "legato" }
    | \skip 1*12
}
