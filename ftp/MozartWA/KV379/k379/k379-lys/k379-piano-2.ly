% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

pianoRightPartII = \relative g' {
    \key g \minor
    \time 3/4
    \noTupletBracket

    \override Score.RehearsalMark
    #'break-visibility = #begin-of-line-invisible

    \set Score.currentBarNumber = #50

    \repeat volta 2 {
% 50
	| g4_3^\turnSharp r8 g[ g-2 g]-1
	| d'4_3^\turnSharp r8 d[-1 d-2 d]-3
	| es4 es-3 es-4
	| d4^\turnSharp r8 g,[-3 g-2 g]-1
	| es'4-4 es-3 es-4
	| d^\turnSharp r8 g[-.-3 g-.-4 g]-.-3
	| g4(^4 fis8) g-.-5 g-.-4 g-.-3
	| g4(-4 fis8) es-. es-.-3 es-.-2
	| es4(-3 d8) es-.-4 es-.-3 es-.-2
	| es4(-3 d8) c-. c-.-4 c-.-3

% 60
	| c4(-2 a8) c-.-3 c-.-2 c-.-1
	| \grace { b32[(-2 c d] } c4)( a8) r r4-\fermata
	| bes,8(^2^\markup { \italic "a tempo" } d g d bes d
	| bes d g d bes d)
	| a(^1 c es c a c
	| bes^1 d g d^3 bes^2 d)
	| a( c es c a c^3
	| bes d-1 g-2 bes) d4
	| c2-2 d4
	| c2-1 bes4-3^\ritText

% 70
	| a2 bes4
	| a2 <g, c g'>4
	| <a c fis>2^4 <g c g'>4
	| <a c d fis>2^5 r4-\fermata
	| <bes g' bes>4^\markup { \raise #1.0 { \italic "a tempo" } } 
	  << { <f'! a>^5 <es g> } \\ c2 >>
	| \acciaccatura a'8 <bes, es g>4^( ~ <bes d f>8^)^3 d-1 f bes
	| << { d4^5 c bes^4 } { f es_2 d } >>
	| a'16-2 f' f, f' f, f' f, f' f, f' f, f'

% 78
	| \repeat unfold 6 { \repeat "tremolo" 6 { f,16 f'16 } }
	| f,( f' f, f' a, c a c bes d bes d)
	| es,(-1 c'-5 es, c' d,-1 bes'-4 d, bes' c,-1 es-4 c-2 es)
	| <bes d>4 r r
	| << { es'4.^4 c8[ bes^4 a]^4 | c bes^4 bes4 } 
	     { g4. es8-._2 d-. c-. | es(_2 d) d4 } >> r
	| << { g'4.^5 es8[-. d-.^4 c]-. | es^4( d) d4^4 } { es4. c8 bes a | c bes bes4 } >> r

% 91
	| d16( bes a bes es^4 bes a bes f' bes, a bes
	| g' bes,-2 a bes a' bes,-2 a bes bes' bes,-1 a-2 bes)
	| c'(-3 a-2 es'-4 c-3 a-2 f c'-5 es,-2 d bes'-4 f-2 d
	| c-2 g' es c-1 bes-2 f' d-4 bes a es'-4 c a)
	| r bes(-2 c-1 d es f-1 g a bes c-1 d es
	| f es d c bes-4 a g f es-4 d c bes)
	| r8 <es g>^5 r <d f> r <c es>
	| d16(-4 bes c-1 d es f-1 g a bes c-1 d es
	| f es d c bes-4 a g f es-4 d c bes)

% 100
	| r8 <es g>^5 r <d f> r <c, es a>^5
	| <d bes'>4^4 r8 f'[(^5 d bes)]
	| g4 r8 d'[(^5 bes g)]
	| e4 r8 bes'[(^4 g e)]
	| f-.-2 r f-.-4 r f-.-5 r
	| bes,4 r r
    }

    \repeat volta 2 {
	| R2.*2
	| g'8-2 r g-3 r g-4 r
	| c,4 r r

% 110
	| R2.*2
	| a'8-2 r a-3 r a-4 r
	| d,4 r r
	| d'8-2 r d-3 r d-4 r
	| g,4 r r
	| <e' g a cis>^5 <e g a cis> <e g a cis>
	| <d fis a d> r r
	| g,4^\turnSharp_3 r8 g[ g-2 g]-1
	| d'4^\turnSharp_3 r8 d[-1 d-2 d]-3

% 120
	| es4 es-3 es-4
	| d4^\turnSharp r8 g,[-3 g-2 g]-1
	| es'4-4 es-3 es-4
	| d^\turnSharp r8 g[-.-3 g-4-. g]-.-3
	| g4(-4 fis8) g-.-5 g-.-4 g-.-3
	| g4(-4 fis8) es-. es-.-3 es-.-2
	| es4(-3 d8) es-.-4 es-.-3 es-.-2
	| es4(-3 d8) c-. c-.-4 c-.-3
	| c4(-2 a8) c-.-3 c-.-2 c-.-1
	| \grace { b32[(-2 c d] } c4)( a8) r r4-\fermata

% 130
	| bes,8(-2 c-1 d es d c
	| bes-2 c-3 d c d bes
	| a bes c bes c a
	| bes c d-1 es f es
	| d es f es f d
	| es)-. es(-2 g-1 c es g)
	| f2-4 g4
	| f2 <es, es'>4^\ritText
	| <d d'>2 <es es'>4
	| <d d'>2 <c f c'>4

% 140
	| <d f b>2^5 <c f c'>4
	| <d f g b>^5-\fermata r8 g'[-.-3 g-.-4 g]-.-3
	| g4(-4 e8) g-.-3 g-.-4 g-.-3
	| g4(-4 e8)-\fermata r <g,, c g'>4
	| <a c fis>2^4 <g c g'>4
	| <a c d fis>2^5 r4-\fermata
	| <g d' g>^\markup { \italic "a tempo" } <a c f!>^5 <bes es!>^4
	| <a c es>^( d8^)^3 fis-.-1 a-.-2 c-.-3
	| <fis, a es'>4 <g bes d>^5 <d fis c'>^5
	| <d g c>^( ~ <g bes>8^)^4 d'(-1 g-2 bes)

% 150
	| bes[(-5 cis,)] c[-2 c-1( fis a])
	| a[(-5 b,)] bes[-2 bes(-\trill g' bes,)]-1
	| bes(-2 a es'-5 c a-2 g)
	| fis16-2( d' d, d' d, d' d, d' d, d' d, d')
	| \repeat unfold 5 { \repeat "tremolo" 6 { d, d' } }
	| d, d' d, d' d, c' d, c' d, bes'^4 d, bes'

% 160
	| d, a' d, a' a,^1 fis'^4 a, fis' g, g' g, g'
	| a^3 c a c g bes g bes c,^1 a' c, a'
	| <bes, g'>4^4 r r
	| << { f''!4. d8[^5 c b]^4 | d^5 c c4 r | g'4.^5 es8[^4 d^5 c] | c b^5 b4 r }
	     { as4._2 f!8-. es-._2 d-. | f( es)_2 es4_1 r | es'4. g,8-. f-. es-._2 | es( d) d4 r } >>
	| << { d''4.^5 as8[-.^2 g-.^5 f]-. | f( es) c'4. es,8^3 | 
	       es(^4 d) bes'4. d,8^2 | d^4 c a'4. c,8^4 }
	     { f4. f8 es d | d c es4._2 c8 | c bes d4._2 bes8 | bes a c4._2 a8 } >>

% 171
	| bes16( g fis^2 g^1 bes g fis g b^4 g^1 fis g
	| c^5 g^1 fis g c g fis g cis^4 g fis g)
	| r d'(-3 cis d-1 fis d cis-2 d-1 g d cis-2 d-1
	| a' d, cis-2 d-1 a' d, cis d bes' d, cis d)
	| r c'!(-5 a fis es c a-4 fis es) r r8
	| r16 d''(-5 bes g d bes_4 fis_2 g d) r r8
	| r16 es'(-4 c a) r d(-5 bes g) r c(-5 a fis)-2
	| r g(-1 a bes c-1 d e fis g-1 a bes c
	| d c bes a g f!-4 es! d c bes-3 a g)

% 180
	| r8 <c es>^5 r <bes d> r <fis a c>_2
	| r16 g(-1 a bes c-1 d e fis g-1 a bes c
	| d c bes a g f!-4 es! d c bes-1 a g)
	| r8 <c es> r <bes d> r <a, c fis>^4
	| <bes d g>4 r r
	| R2.*3
	| << { g''16^4 bes \repeat unfold 5 { g bes } } \\ 
	     { \repeat unfold 6 <bes, d>8 } >>
	| << { \repeat unfold 6 { g'16 bes } } \\ { \repeat unfold 6 <bes, es>8 } >>
	| << { bes'16^3 e \repeat unfold 5 { bes16 e } } \\ { \repeat unfold 6 <e, g>8 } >>
	| << { bes'16^4 d bes d bes d bes d a d a d } \\ 
	     { <d, g>8 <d g> <d g> <d g> <d fis> <d fis> } >>
	| g4 r r
    }

    \mark \markup { \musicglyph #"scripts.ufermata" }

    \bar ":|"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartII = \relative g {
    \key g \minor
    \clef bass
    \time 3/4
    \noTupletBracket

    #(revert-auto-beam-setting '(end * * 2 4) 2 8 'Staff)

    \repeat volta 2 {
% 50
	| g8_4( bes d bes d bes
	| g bes d bes d bes)
	| fis_5( a c a c a
	| g bes d bes d bes)
	| fis( a c a c a
	| g[ bes d] \clef violin g[_4 bes g])
	| <a c>2 <bes d>4
	| <a c>2 <g bes>4
	| <fis a>2_3 <g bes>4
	| <fis a>2 <es g>4

% 60
	| <d fis>2 <es g>4
	| <d fis>2 r4-\fermata \clef bass
	| <g,, g'> r r
	| <g g'> r r
	| \repeat unfold 3 <fis fis'>
	| <g g'> r r
	| \repeat unfold 3 <fis fis'>
	| <g g'> r \clef violin bes''-2
	| a2 bes4
	| a2 g4-1

% 70
	| fis2 g4
	| fis2 \clef bass <es,, es'>4_4
	| <d d'>2 <es es'>4_4
	| <d d'>2 r4-\fermata
	| << { g4 a a, } { g'' a a, } >>
	| <bes, bes'>2_4 r4
	| << { bes es e | f } { bes es e | f } >> r r
	| es'4.-2 c8[-.-3 a-.-5 es]-.-2
	| d( f) bes,4 r

% 80
	| es'4. c8[-. a-. es]-.
	| d( f) bes,4 r
	| << { es'4. c8[-. a-. es]-. | d4 c bes | a fis g | es' f! f, }
	     { es'4. c8[ a es] | d4 c bes_4 | a fis_4 g | es' f! f, } >>
	| \repeat unfold 5 { \repeat "tremolo" 6 { bes16 bes' } }

% 91
	| << { bes4 c d | es f g | a f bes | es, f es | d }
	     { bes, c d | es_4 f g | a f bes_4 | es, f es_4 | d } >> r r
	| R2.
	| <es es'>8 r <f f'> r <fis fis'>_4 r
	| <g g'>4 r r
	| <d d'> r r

% 100
	| <es es'>8 r <f! f'!> r <f, f'> r
	| <bes bes'>4 r8 f'''[(_1 d bes])
	| g4 r8 d'8[(_1 bes g)]
	| e4 r8 bes'8[(_1 g e)]
	| f8-. r f-.-2 r f-.-1 r
	| bes,4 r r
    }

    \repeat volta 2 {
	| R2.*2
	| \repeat unfold 3 { <g g'>8 r }
	| <c, c'>4 r r

% 110
	| R2.*2
	| \repeat unfold 3 { <a' a'>8 r }
	| <d, d'>4 r r
	| \repeat unfold 3 { <d' d'>8 r }
	| <g, g'>4 r r
	| \repeat unfold 3 <a a'>
	| <d, d'> r r
	| g'8(_4 bes d bes d bes
	| g bes d bes d bes)

% 120
	| fis(-5 a c a c a
	| g bes d bes d bes)
	| fis( a c a c a
	| g[-4 bes d] \clef violin g[-4 bes g])
	| <a c>2 <bes d>4
	| <a c>2 <g bes>4
	| <fis a>2_3 <g bes>4
	| <fis a>2 <es g>4_4
	| <d fis>2 <es g>4
	| <d fis>2 r4-\fermata \clef bass

% 130
	| g,8(_4 a bes c bes a 
	| g a bes a bes g_1
	| fis_3 g a g a fis
	| g a bes_3 c d c
	| b c d c d b
	| c)-.\noBeam \clef violin c[(_5 es_4 g c es])_2
	| d2 es4
	| d2 \clef bass c,4-2
	| b2 c4
	| b2 <as, as'>4_4
	| <g g'>2 <as as'>4_4

% 140
	| <g g'>2-\fermata \set doubleSlurs = ##t <bes! bes'!>4(_4
	| <a! a'!>2) <bes bes'>4(
	| <a a'>)-\fermata \set doubleSlurs = ##f r <es! es'!>_4
	| <d d'>2 <es es'>4
	| <d fis a d>2 r4-\fermata
	| << { bes4 a g | fis2 r4 | c''4 bes a | g2 }
	     { bes4_4 a g | fis2_4 r4 | c''4 bes_4 a | g2 } >> \clef violin <g' bes>4_2

% 150
	| <e g>2 <fis a>4
	| g2-2 <es! g>4_3
	| <c es>2_4 <cis e>4
	| d4 r r \clef bass
	| c4.-1 a8[-.-2 fis-.-3 c]-.-5
	| bes(-4 d) g4 r
	| c4. a8[-. fis-. c]-.
	| bes( d) g4 r
	| << { c4. a8[ fis c] | bes4 a g | fis d' es | c d d }
	     { c4. a8[-. fis-.-4 c]-. | bes4-4 a g | fis-4 d' es-4 | c d d } >>

% 162
	| \repeat unfold 5 { \repeat "tremolo" 6 { g,16 g' } }
	| g,( g' g, g') d( d' d, d') b,( b' b, b')
	| c,( c' c, c') a( a' a, a') f,( f' f, f')
	| bes,!( bes'! bes, bes') g,( g' g, g') es,( es' es, es')

% 170
	| a,( a' a, a') fis,( fis' fis, fis') d,( d' d, d')
	| << { g2 f!4 | e2 es4 | d c! bes | a2 g4 | fis }
	     { g2 f!4 | e2 es4_4 | d c! bes_4 | a2 g4 | fis_4 } >> r r16 c'''(_1 a_2 fis
	| g) r r8 r4 r16 bes(_1 g_2 d_4
	| c8) r d r d-2 r
	| bes4 r r
	| R2.

% 180
	| c8-3 r d r d-3 r
	| es4 r r
	| <bes, bes'> r r
	| c'8-2 r d r d, r
	| g4 r8 d''[(_1-\p bes g]
	| es4) r8 bes'8[(_1 g es]
	| cis4) r8 g'[(_1 e cis]_4
	| d)-._3 r d-._2 r d-._1 r
	| g,4 r8
	  << { d''8[ bes g] | es4 r8 bes'8[ g es] | cis4 r8 g'[ e cis] | d r d r d r | g,4 }
	     { d'8( bes_4 g) | es4 r8 bes'8(_4 g es)_4 | cis4_5 r8 g'(_4 e cis)_4 | d r d r d r | g,4 } >>
	  r r
    }

    \bar ":|"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsII = {
    s2.-\mf
    s2.*4
    s4. s4.-\p
    s2.*2
    s2.-\markup { \italic "cresc. e rall." } \noBreak
    s2.*3
    s2.-\mf
    s2.*4
    s2 s4-\p
    s2.
    s2.-\markup { \italic "cresc. e rall." } \noBreak
    s2.*2
    s2 s4-\f
    s2.
    s2.-\f
    s2.
    s2-\< s4-\!
    s2.*18
    s16 s8.-\< s4 s8. s16-\!
    s8.-\> s16 s4 s8. s16-\!
    s2.-\p
    s16 s8.-\< s4 s8. s16-\!
    s8.-\> s16 s4 s8. s16-\!
    s8-\< s2 s8-\!
    s4-\f s2-\p
    s2.*4

    % Volta ends here

    s2.*2
    s2.-\p
    s2.*5
    s2.-\crescText
    s2.
    s2.-\f
    s2.
    s2.-\mf
    s2.*4
    s4. s4.-\p
    s2.
    s2.-\markup { \italic "cresc. e rall." } \noBreak
    s2.*4
    s2.-\f
    s2.*4
    s8 s-\p s2
    s2.
    s2.-\crescText
    s2.*3
    s4. s4.-\f
    s2.
    s2 s4-\p
    s2.*2

    % A tempo
    s2.-\f
    s2.*2
    s4. s4.-\p
    s2.*3
    s2.-\<
    s2.-\f
    s2.*13
    s4 s2-\dimText
    s2.*2
    s4 s2-\p
    s2.
    s2.-\crescText
    s2.
    s2.-\f
    s2.
    s2.-\p
    s16 s8.-\< s4 s8. s16-\!
    s8.-\> s16 s4 s8. s16-\!
    s2.-\p
    s16 s8.-\< s4 s8. s16-\!
    s8.-\> s16 s4 s8. s16-\!
    s8-\< s2 s8-\!
    s2.-\f
    s2.*3
    s2.-\f
    s2.*4
}
