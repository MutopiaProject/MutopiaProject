\version "2.16.0"

leftHandSecondMov =  \relative c, {
    \clef bass
    \key bes \major
    \time 3/4

    \noTupletBracket

    \repeat volta 2 {
	<bes bes'>4 <d d'> <bes bes'>
	| <es es'>2.
	| <f f'>4 r f'
	| bes f bes,
	| <es, es'> <g g'> <es es'>
	| <bes' bes'>2 r4
	| r bes' es,
	| f2 \clef violin <a' c>4(
	| <g bes> r) <cis, e>(

% 10
	| <d f> r) <bes g'>
	| <c! a'> <c a'> <c bes'>
	| <f a> \clef bass f, r
    }

    \repeat volta 2 {
	<f, f'>4 <f f'>( <g g'>)
	| <as as'>2.
	| <g g'>4 r g'
	| c g c,
	| r r \clef violin <bes'! as'>
	| << { as'2(  g4) } \\ es2. >>
	| R2.

% 20
	| r4 c(  f!)
	| es8 r d r c r \clef bass
	| <f,, f'>2. ~
	| <f f'>
	| <f f'> ~
	| <f f'>
	|  f'8[( e] f4  fis)
	| <g, g'>2. ~
	| <g g'>8[ <fis fis'> <bes bes'> <a a'> <g g'> <f f'>]
	| <es es'>4 <es es'>( <e e'>)

% 30
	| <f f'>2. ~
	| <f f'>4 f''( b,
	|  c2) bes!4(
	|  a2) <d,, d'>4
	| <es es'>2 <c c'>4
	| <d d'>2 g'4
	| es c f
	| bes, bes' \clef violin <d' f>(
	| <c es> r) <fis, a>(
	| <g bes> r) \clef bass <es, c'>

% 40
	|
	<<
	    { d'8[( f! d f es  f)] | d4 } \\
	    { f,4 f f | bes }
	>> bes,-. r
    }

    \repeat volta 2 {
	R2.
	\set doubleSlurs = ##t
	| r4 r <d a'>4(
	| <g bes>8) r8 <d a'> r <g, g'> r
	| <d d'>2 r4
	| R2.
	| r4 r <d' a'>4(
	| <g bes>8) r8 <d a'> r <g, g'> r
	| R2.
	| r4 r <f' c'>4(
	| <bes d>8) r8 <f c'> r <bes, bes'> r
	| R2.
	| r4 r <a' e'>(
	| <d f>8) r8 <a e'> r <d, d'> r
	\set doubleSlurs = ##f
	| R2.
	| r4
	<<
	    { d'4( es | c  d) } \\
	    { r4 g,4( | es!  f) }
	>> g8 r
	| c, r f r bes, r
	| es r a,! r d r

% 60
	| g,4( e  f)
	| g a a
	| d, r r
    }

    \repeat volta 2 {
	g4( as fis
	|  g2) r4
	| r g'8 r c, r
	| f,4( ges e
	% Sic!
	|  f2.)
	| r4 f'8 r bes, r
	| \times 2/3 {  es,[( g bes] } \noTupletNum \times 2/3 {  es[ f
          es]  d[ es d] }
	| \times 2/3 {  c[ bes a]  d[ es d]  c[ d c] }
	| \times 2/3 {  bes[ c bes]  a[ bes a]  g[ a  g)] }
	| d'4( es cis
	|  d) r r
	| r r <d a'>(
	| <g bes>8 r) <d a'> r <g, g'> r
	| <d d'>2 r4
	| R2.*3

% 80
	| d4( es cis
	|  d) r  d'8.[(^\trill cis32 d]
	|  g8) r d r g, r
	| r4 r  d'8.[(^\trill cis32 d]
	|  g8) r d r g, r
	| R2.
	| r4 \clef violin
	<<
	    { g''4( as | f  g) } \\
	    { s4 c,( | des  bes) }
	>> \clef bass c8 r
	| f, r bes r es, r
	| as r d,! r g r
	| <a,, a'>2 <bes bes'>4
	| <c c'> <d d'> <d d'>
	| <es es'>2.
	| <d d'>4 r d
	| g g, r
    }

    R2.
    | <a a'>4 r r
    | R2.

    | r4 \tupletNum \times 2/3 {  es''8[( c bes] } \noTupletNum \times
      2/3 {  a[ bes c] }
    |  f,4) \times 2/3 {  es'8[( c bes]  a[ bes c] }

% 100
    |  f,4) \times 2/3 {  es'8[( c bes]  a[ bes c] }
    |  f,4) r r
    | R2.  <bes, bes'>4 <d d'> <bes bes'>
    | <es es'>2.
    | <f f'>4 r f'
    | bes f bes,
    | <es, es'> <g g'> <es es'>
    | <bes' bes'>2 r4
    | r bes' es,

% 110
    | f2 \clef violin <a' c>4(
    | <g bes> r) <cis, e>(
    | <d f> r) <bes g'>
    | <c! a'> <c a'> <c bes'>
    | <f a> \clef bass f, r
    | <f, f'>4 <f f'>( <g g'>)
    | <as as'>2.
    | <g g'>4 r g'
    | c g c,
    | r r \clef violin <bes'! as'>

% 120
    | << { as'2(  g4) } \\ es2.  >>
    | R2.
    % The f has no natural sign (unlike bar #20)
    | r4 c(  f)
    | es8 r d r c r \clef bass
    | <f,, f'>2. ~
    | <f f'>
    | <f f'> ~
    | <f f'>
    |  f'8[( e] f4  fis)
    | <g, g'>2. ~

% 130
    | <g g'>8[ <fis fis'> <bes bes'> <a a'> <g g'> <f f'>]
    | <es es'>4 <es es'>( <e e'>)
    | <f f'>2. ~
    | <f f'>4 f''( b,
    |  c2) bes!4(
    |  a2) <d,, d'>4
    | <es es'>2 <c c'>4
    | <d d'>2 g'4
    | es c f
    | bes, bes' \clef violin <d' f>(

% 140
    | <c es> r) <fis, a>(
    | <g bes> r) \clef bass <es, c'>
    |
    <<
	{ d'8[( f! d f es  f)] } \\
	{ f,4 f f }
    >>
      \set doubleSlurs = ##t
    | <bes d>4 bes, <d d'>4(
    | <c c'>2) <d d'>4(
    | <c c'>2) r4
      \set doubleSlurs = ##f
    | <f, f'>4 <f f'> <f f'>
    | <bes, bes'> r r
    | R2.
    | f'4( ges  e)

% 150
    | f2.
    | bes4 r r
    | R2.
    | f4( ges  e)
    | f2.
    | bes4 r f'(
    |  bes) r f(
    |  bes) r <f, f'>
    | <bes, bes'> r r
}
