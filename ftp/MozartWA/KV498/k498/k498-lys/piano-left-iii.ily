\version "2.16.0"

leftHandThirdMov =  \relative es, {
    \key es \major
    \clef bass

    \noTupletBracket

    <es es'>2( <g g'>
    | <f f'> <d d'>4 <es es'>)
    | <as as'>2.( <a a'>4)
    | <bes bes'>2 r
    | <es, es'>1
    | <f f'>4 <d d'> <bes bes'> <as as'>
    | <g g'> r bes'8 r bes r
    | es4( bes  es,) r
    | <es es'>2( <g g'>

% 10
    | <f f'> <d d'>4 <es es'>)
    | <as as'>2.( <a a'>4)
    | <bes bes'>2 r
    | <es, es'>1
    | <f f'>4 <d d'> <bes bes'> <as as'>
    | <g g'> r r <bes' bes'>
    | <es es'> <bes bes'> <es, es'> r
    | bes'1
    | c2(  a)
    | bes1

% 20
    | c2(  a)
    | bes4 <d, d'>2.
    | <es es'>2 <e e'>
    | <f f'> f
    | bes4 r r <bes' d>
    | <f c' es>2 r4 <f c' es>
    | <bes d>2 r4 bes-.
    | f2 r4 f,
    | bes2 r4 \clef violin
    <<
	{ bes''4 ~ | bes a2 g4 ~ | g f2 d4 } \\
	{ d4( | es c d bes | c a  bes2) }
    >> \clef bass

% 31
    | <g, g'>1 \clef violin
    | \slurDown \stemUp  f''8[( c' a c]  bes[ c g c]
    |  a[ c a c]  bes[ c g c]
    |  a[ c bes c]  a[ c bes c]
    |  a4) \slurNeutral \stemNeutral r r2 \clef bass
    | bes,,2( d
    | es4 c a  f)
    | bes,2( d
    | es4 c a  f)

% 40
    | <bes' bes'>( <as as'> <g g'>2)
    | <c, c'>8 r <f f'> r <bes, bes'>4 r
    | r es'(  f) f,
    | bes4 r \clef violin <b' d>2
    | <c g'>4 <a c> << { f'4 d } \\ bes!2 >> \clef bass
    | <es, g c>4 r r r8 <f as!>
    | <es g>4 r r r8 <f as!>(
    |
    <<

	{ \voiceOne g2) ~ <g c> ~ | <c es> r | r8 <bes d>[ <bes d>
	<bes d>] r <bes d>[ <bes d> <bes d>] | r <a es'>[ <a es'> <a
	es'>] r <a es'>[ <a es'> <a es'>]}

	\new Voice { \voiceTwo es1 ~ | es2 s | f2 f | f f }
    >> \oneVoice

% 51
    | <bes d>8[ <bes d>] <bes d> r r2 \clef violin
    | <bes es>8[ <bes es>] <bes es> r r2
    | <bes f'>8[ <bes f'>] <bes f'> r <bes g'>[ <bes g'>] <bes g'> r
    | <bes as'!>[ <bes as'>] <bes as'> r <bes g'>[ <bes g'>] <bes g'>
      r \clef bass
    | <bes,, bes'>4 r \clef violin  as'''8[ g f es]
    | << { d8[ es f g]  as[ g f es] | d4 } \\ { bes2 r | bes4 } >> r4 r2
    | R1 \clef bass
    |  es,8[( bes' g bes]  es,[ bes' g bes]

% 60
    |  f[ bes as bes]  d,[ as' es  g)]
    |  as[( es' c es]  as,[ c a c] \clef violin
    |
    <<
	{ \voiceOne bes8[ g' es g]   f)[ as( g  f)] }
	\new Voice { \voiceTwo bes,2 ~  bes8[ f' es d] }
    >> \oneVoice \clef bass
    |  es,8[( bes' g bes]  es,[ bes' g bes]
    |  f[ bes as bes]  d,[  bes')]
    <<
	{ bes8[(  d)] | <bes es>4 } \\
	{ as4 | g }
    >> r4 r bes
    | es bes es, r
    
    \repeat volta 2 {
	<c, c'>4 r r2
	| \stemUp \slurDown d'4.(  c8) b2 \stemNeutral \slurNeutral
	  \set doubleSlurs = ##t
	| c4 r <as as,>2(
	| <g g,>4) r r2
	  \set doubleSlurs = ##f
	| <c, c'>4 r r2

% 71
	| <bes bes'>2( <as as'>)
	| <g g'>8 r es' r f4(  d8) r
	| g r es r bes'4(  as8) r
	| g4 g, as as'
	| bes bes, es r
    }

    \repeat volta 2 {
	\clef violin

	 es''8[( bes' g bes]  es,[ bes' g  bes)]
	|  bes,[( g' es g]  b,[ g' d  g)]
	|  c,[( g' es g]  c,[ g' es  g)] \clef bass

% 80
	|  g,[( es' c es]  g,[ d' b  d)]
	| <c,, c'>4 r r2
	| \stemUp \slurDown d'4.(  c8) b2 \stemNeutral \slurNeutral
	  \set doubleSlurs = ##t
	| c4 r <as as,>2(
	| <g g,>4) r r2
	  \set doubleSlurs = ##f
	| <c, c'>4 r r2
	| g'2(  f)
	| es8 r c r d4(  b8) r
	| es r c r g'4(  f8) r
	| es4 es' f f,

% 90
	| g g, c r
    }

    | \times 2/3 {  es'8[ g c] } \times 2/3 {  es,[ g c] } \noTupletNum
      \times 2/3 {  f,[ as d]  f,[ as d] }
    | \times 2/3 {  g,[ b d]  g,[ d' f] } \tupletNum <c es>4 r
    | <f,, f'> r <bes,! bes'!> r
      \set doubleSlurs = ##t
    | <es es'> r <g g'>2(
    | <as as'>8) r8 <bes bes'> r <c c'> r <bes bes'> r
      \set doubleSlurs = ##f
    | <as as'>2 <a a'>
    | \slurDown <bes bes'>4( f d'  f,)
    | es'( f, c'  f,)
    | bes( f d'  f,)

% 100
    | es'( f, c'  f,)
    | bes r r2
    | R1
      \set doubleSlurs = ##t
    | <d f>2.( <es ges>4)
    | <d f>2.( <es ges>4)
    | <d f>( <es ges>4 <d f> <es ges>
    | <d f>) r4 r2
      \set doubleSlurs = ##f
    | R1
    | <es, es'>2 <g g'>
    | <f f'>4 <bes, bes'> <es es'> <g, g'>

% 110
    | <as as'>2. <a a'>4
    | <bes bes'>2 r
    | <es es'> <g g'>
    | <f f'> <bes, bes'>4 <as as'>
    | <g g'> r <bes bes'> <bes bes'>
    | es' bes es, r
    |  as,8[ as' as as]  as[ as as as]
    |  as[ as as as]  as[ as as as]
    |  as[ as as as]  as[ as as as]
    |  as[ as as as]  as[ as c as]

% 120
    | <es es'>2. <des des'>4
    | \tieUp <c c'>2 ~  c'8[( as f'  es)] \tieNeutral
    | des2. bes4
    |  es8[ es, es' es]  es[( des c bes]
    |   as)[ as' as as]  as[ as as as]
    |  as[ as as as]  as[ as as as]
    |  as[ as as as]  as[ as as as]
    |  as[ as as as]  as[ es c as]
    | <bes, bes'>2. <as as'>4
    | <g g'> r r es'

% 130
    | as as bes bes
    | es bes es, r

    \repeat volta 2 {
	| <es es'>1
	| <es es'>
	| <es es'>
	| as4 r r2
	|  as'8[( es' ces es]  as,[ es' ges, es']
	|  fes,[ ces' as ces]  fes,4) r \clef violin
          \set doubleSlurs = ##t
	| <fes' as>1( 
	| <es g!>4) r4 r2 \clef bass
	| <bes,, bes'>1
          \set doubleSlurs = ##f
	| r4 es4 g es
	
% 140
	| <bes bes'>1
	| r4 <es es'> <d d'> <bes bes'>
	| r <es es'> <d d'> <bes bes'>
	| <es es'>1
	|  as,8[ as' as as]  as[ as as as]
	|  as[ as as as]  as[ as as as]
	|  as[ as as as]  as[ as as as]
	|  as[ as as as]  as[ as( c  as)]

% 150
	| <es es'>2. <des des'>4
	| <c c'> r r c'
	| des des es es
    }

    \alternative {
	{
	    as es as, r
	}
	{
	    as4 as' r2
	}
    }

    | <c,, c'>1
    | f4 f' r2
    | as2( g4 d!
    |   es8)[ es bes g] es4 r \clef violin
    |  es''8[( bes' ges bes]  es,[ bes' des,  bes')]

% 160
    |  ces,[( ges' es ges]  ces,[ ges' es  ges)]
      \set doubleSlurs = ##t
    | <ces es>1(
    | <bes d!>4) r4 r2 \clef bass
      \set doubleSlurs = ##f
    | <f,, f'>1
    | r4 bes d bes
    | <f f'>1
    | r4 <bes bes'>( <a a'> <f f'>)
    | r4 <bes bes'>( <a a'> <f f'>)
    | <bes bes'>1
    % The slur here is slightly different from bars #1-#3
    | \slurDown <es, es'>2( <g g'>

% 170
    | <f f'> <d d'>4 <es es'>
    | <as as'>2. <a a'>4 
    | <bes bes'>2 r) \slurNeutral
    | <es, es'>1
    | <f f'>4 <d d'> <bes bes'> <as as'>
    | <g g'> r bes'8 r bes r
    % These three note are not slurred like in bar #8
    | es4 bes es, r
      \set doubleSlurs = ##t
    | <c' c'>8 r <bes bes'> r <as as'>4( <g g'>8) r8
    | <c c'> r <bes bes'> r <as as'>4( <g g'>8) r8
      \set doubleSlurs = ##f
    | <c c'>4 <bes bes'> <as as'> <g g'>

% 180
    | <f f'> <es es'> <d d'> <c c'>
    | <bes bes'>1
    | <bes bes'>
    | <bes bes'>2 <bes bes'>
    | <bes bes'>1 ~
    | <bes bes'>   
    |  es'8[( bes' g bes]  es,[ bes' g bes]
    |  f[ bes as bes]  d,[ as' es  g)]
    |  as[( es' c es]  as,[ c a c] \clef violin
    |
    <<
	{ \voiceOne bes8[ g' es g]   f)[ as( g  f)] }
	\new Voice { \voiceTwo bes,2 ~  bes8[ f' es d] }
    >> \oneVoice \clef bass

% 190
    |  es,8[( bes' g bes]  es,[ bes' g bes]
    |  f[ bes as bes]  d,[  bes')]
    <<
	{ bes8[(  d)] | <bes es>4 } \\
	{ as4 | g }
    >> r4 bes8 r bes, r
    |  es,8[ es' es es]  es[ es es es]
    |  es[ es es es]  es[ es es es]
    |  es,[ es' es es]  es[ es es es]
    |  es[ es es es]  es[ es es es]
    |  es,[ es' es es]  es[ es es es]
    |  es[ es es es]  es[ es es es]
    | es4 r <g des' es>2

% 200
    |
    <<
	{ es'2. f4 | \clef violin  g8[( es f d]  es[ g as  f)] } \\
	{ <as, c>1 | bes1 }
    >> \clef bass
    |  es,,8[ es' es es]  es[ es es es]
    |  es[ es es es]  es[ es es es]
    |  es,[ es' es es]  es[ es es es]
    |  es[ es es es]  es[ es es es]
    |  es,[ es' es es]  es[ es es es]
    |  es[ es es es]  es[ es es es]
    | es2. es,4
    | as r r2

% 210
    | as'4 r r2
    | <bes, bes'>1
    | <bes, bes'>
    | es4( bes' g es
    | d f d bes
    | es bes' g es
    | d f d bes
    | es bes' g es
    | d f d  bes)
    | r <es es'>( <d d'> <bes bes'>)

% 220
    | r <es es'>( <d d'> <bes bes'>)
    | <es es'> g bes bes,
    | es r <es es'> <es es'>
    | <es es'>2 r
}
