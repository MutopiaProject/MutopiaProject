rightHandThirdMov = \notes \relative g {
    \key es \major

    \property Staff.TextScript \set #'baseline-skip = #0.5
    \noTupletBracket

    [g8( es' bes es] [bes g' es g]
    | [bes, as' d, as'] [f as g es]
    | [c as' es as] [c, c' f, c']
    | [g bes as g] [)f <f( as> <es g> <)d f>]
    | [g( bes es, g] [bes, es g es]
    | [bes d as' d,] [f as d, f]
    | [bes, es g )bes] <bes es> r <as d> r
    | 
    <
	{
	    \property Voice.Stem \override #'length = #10
	    \oneVoice \slurUp \stemDown d2(
	    \property Voice.Stem \set #'length = #12
	    )es8 \stemBoth \slurBoth
	    \property Voice.Stem \revert #'length
	}
	
	\context Voice=x {
	    \property Voice.Stem \set #'transparent = ##t
	    \oneVoice \stemDown \slurDown as,2( )g8 \stemBoth \slurBoth
	    \property Voice.Stem \set #'transparent = ##f
	}
    > \oneVoice [d16( es] [f es d c]
    | bes2 ~ [bes8 c d )es]

% 10
    | [es( d c )bes] bes4 bes
    |
    <
	{ c4.( d8 es4 [g8 f] }
	\context Voice=x {
	    s4 s8^#'(lines (music "scripts-turn") ((music
	    ((font-relative-size . -1) "accidentals-0")))) s2
	}
    >
    | es4. [f16 es] )d4 r
    | bes2( ~ [bes8 d16 c] [es d f )es]
    | [es8( d c )bes] bes'4.( [as16 f]
    | )es4 es [g8.( as16] [f8. g16]
    | f2 )es4 r
    | r8 [<bes, d f> <bes d f> <bes d f>] [<bes d f> <bes d f> <bes d
      f> <bes d f>]
    | r [<a c f> <a c f> <a c f>] r [<c es f> <c es f> <c es f>]
    | r [<bes d f> <bes d f> <bes d f>] [<bes d f> <bes d f> <bes d
      f> <bes d f>]

% 20
    | r [<a c f> <a c f> <a c f>] r [<c es f> <c es f> <c es f>]
    |
    <
	{ \voiceOne r4 as'! as as }
	\context Voice=x {
	    \voiceTwo r8 [<bes, d> f' bes,] [f' bes, f' bes,]
	}
    > \oneVoice
    | r8 [bes,( <es g> )bes] r [bes( <des g> )bes]
    | r [bes( <d! f> )bes] r [c( <es! f> )c]
    | [bes'16^#'(italic "legato") c bes a] [bes d f es] [d f bes a]
      [bes f d' bes]
    | [a c es c] [es c a f] [es c a c] [a c es c]
    | [bes c bes a] [bes d f es] [d f bes a] [bes f d' bes]
    | [a c es c] [es c a f] [es c a c] [a c es c]
    | [bes8 c16 d] [es f g a] [bes c d es] [f8 f]
    | f g,4 es' f, d'8 ~

% 30
    | d es,4 c' [d,8( )bes' bes]
    | [c( )bes a-. g-.] [g(^\prall^\smallNatural )f f(\prall )e]
    | f4 r8 f( [g a bes )e,]
    | f4 r8 f( [fis16 g as! a] [bes8 )e,]
    | f!8 r \property Score.Script \override #'script-priority = #-100
      [g8.(^\trill^\smallNatural )a16] \property Score.Script \revert
      #'script-priority f8 r [g8.(-\trill )a16]
    | f4 r r2
    | r8 [f( bes, d] [f, bes d, )f]
    | r [f,( c' a] [es' c a' )f]
    | r [bes( d, f] [bes, d f, )bes]
    | r [f( c' a] [es' c a' )f]

% 40
    | r [d( f bes] [d f es )d]
    | [c( es c )a] f'4 r
    | R1
    | [bes,16^#'(italic "legato") c bes a] [bes c d es] [f g as! g]
      [bes as g f]
    | [es f g f] [a g f es] [d es f es] [g f es d]
    | [c d c b] [c d es f] [g es f d] [es c d b]
    | [c d c b] [c d es f] [g es f d] [es c d b]
    | [c d c b] [c es d f] [es f es d] [es g f as!]
    | [g a g fis] [g bes! a c] [bes fis g d] [es b c es]
    | [f,!8 g16 a] [bes! c d es] [f es d es] [f g a bes]

% 50
    \context Staff <
	\context Voice { c,1 }

	\context Voice=x {
	    \setTrillWave \blankNotes c2 \spanrequest \start "text"
	    s4 c8 \spanrequest \stop "text" \stemUp \visibleNotes \tiny
	    [bes16( )c] \stemBoth \normalsize
	}
    > 
    | \stemDown bes4 r8 [a16( bes] [c bes a bes] [c bes es d]
    | [c d b d] )c8 [b16( c] [d c b c] [d c f es]
    | [d es c es] [d es f d] [es f d f] [es f g )es]
    | [f( g e g] [f g as! f] [g as f as] [g as bes )g]
    | [as( bes g as] [f g es! f] [d f es g] [f as g )bes]
    | [as( bes g as] [f g es! f] [d f es g] [f as g )bes]
    | [as( bes g as] [f g e g] [f g es f] [d es c es]
    | [d es c d] [bes c a c] [bes c a c] [bes c a )c] \stemBoth
    | bes2( ~ [bes8 c d )es]

% 60
    | [es( d c )bes] bes4 bes
    |
    <
	{ c4.( d8 [es8 e g f] }
	\context Voice=x {
	    s4 s8^#'(lines (music "scripts-turn") ((music
	    ((font-relative-size . -1) "accidentals-0")))) s2
	}
    >
    | es4. [f16 es] )d4 r
    | bes2( ~ [bes8 d16 c] [es d f )es]
    | [es8( d c )bes] bes'4.( [as16 f]
    | )es4 es
    <
	{ \voiceOne [g8.( )as16] [f8.( )g16] | f2( )es4 }
	\context Voice=x {
	    \voiceTwo bes4 <as d> | <as2( d> <)g4 es'>
	}
    > \oneVoice r4

    \repeat volta 2 {
	<g,,4 c es> r r2
	| f'4.( )es8 d2
	| g,4 r
	<
	    {
		\property Voice.Stem \set #'transparent = ##t
		\slurUp \stemUp fis'2( | <d4 )g>
		\property Voice.Stem \set #'transparent = ##f
		\stemBoth \slurBoth
	    }
	    
	    \context Voice=x {
		\property Voice.Stem \override #'length = #10
		\stemUp \slurDown c2( 
		\property Voice.Stem \set #'length = #12
		| )b4 \stemBoth \slurBoth
		\property Voice.Stem \revert #'length
	    }
	> r4 r2

% 71
	| <g,4 c es> r r2
	| <bes!1 d f>
	| es8 r g r d4( )as'8 r
	| es r g' r f4( )d8 r
	| es4 r <f, c' es> r
	| <f as bes d> r <g bes es> r
    }

    \repeat volta 2 {
	g'4.( \times 2/3 { [f16 es d] } [)es8 f-. g-. as-.]
	| bes4.( [as16 g] )f4 r
	| es4.( \times 2/3 { [d16 c b] } [)c8 d-. es-. f-.]

% 80
	| g4.( [f16 es] )d4 r
	| <g,,4 c es> r r2
	| f'4.( )es8 d2
	| g,4 r
	<
	    {
		\property Voice.Stem \set #'transparent = ##t
		\slurUp \stemUp fis'2( | <d4 )g>
		\property Voice.Stem \set #'transparent = ##f
		\stemBoth \slurBoth
	    }
	    
	    \context Voice=x {
		\property Voice.Stem \override #'length = #10
		\stemUp \slurDown c2( 
		\property Voice.Stem \set #'length = #12
		| )b4 \stemBoth \slurBoth
		\property Voice.Stem \revert #'length
	    }
	> r4 r2
	| <g,4 c es> r r2
	| <g1 b d>
	| c8 r es r b4( )f'8 r
	| c r es' r f4( )b,8 r
	| <es,4 g c> r <d as' c> r

% 90
	| <d f g b> r <es g c> r
    }

    | g'4( [f16 es d )c] as'4( [g16 f es )d]
    | f4( [es16 d c )b] c4 r
    | c'4( [bes!16 as g )f] d'4( )f8 r
    | bes,4( [as16 g f )es] es'8 r des r
    | c r bes r as r g r
    | [g8( )f] f4.( [fis8 g es]
    | )d4 r
    <
	{ \voiceOne f,2 | f2.( )es4 | d4 r f2 | f2.( )es4 | d }
	\context Voice=x {
	    \voiceTwo bes4( ~ \times 2/3 { [bes8 c )d] } | c4 es a, c
	    | bes s bes4( ~ \times 2/3 { [bes8 c )d] } | c4 es a, c
	    | bes
	}
    > \oneVoice r r2

% 102
    | R1
    | <bes'2. bes'(> <ces4 )ces'>
    | <bes2. bes'(> <ces4 )ces'>
    | <bes bes'(> <ces ces'> <bes bes'> <ces ces'>
    | <bes )bes'> r r2
    | R1
    | \times 2/3 { r8 [g, bes] } \times 2/3 { [es g bes] }
      \times 2/3 { [es d c] } \times 2/3 { [bes as g] } \noTupletNum
    | \times 2/3 { [as as' f] [d f as,] [g bes' g] [es bes g] }

% 110
    | \times 2/3 { [es as g] [f c' bes] [as es' d] [c c' f,] }
    | \times 2/3 { [g bes a] [bes as g] [f es d] [c bes as] }
    | \times 2/3 { [g bes es] [g bes d] [es d c] [bes as g] }
    | \times 2/3 { [as g f] [es d c] [bes as g] [f es d] }
    | \times 2/3 { [es g bes] [es g es] [bes g es] [as f d] }
    | \times 2/3 { [as bes d] [as bes d] } <g,4 bes es> r \noTupletNum
    | <c2( es> <bes4 des> <)as c>
    | <c2( e> <)des4 f> r
    | <g,( bes> <as c> <bes des> <)b d>
    | <c4.( es> \times 2/3 { [<des16 f> <c es> <bes des>] } <)as4 c> r

% 120
    | <g1 bes es>
    | r8 [as8( c es] as4. )g8
    | f4 [a,8( bes] [b )c c( )des]
    | c4.( [des16 c] )bes!4 r
    | <c'2 es(> <bes4 des> <as )c>
    | <c2( e> <)des4 f> r
    | <g,( bes> <as c> <bes des> <)b d>
    | <c4.( es> \times 2/3 { [<des16 f> <c es> <bes des>] } <)as4 c> r
    |
    <
	{ \voiceOne <f2. as> <d!4 f> }
	\context Voice=x { \voiceTwo bes1 }
    > \oneVoice
    | <bes4 es bes'> r r es

% 130
    | es'4.( )c8 [c( )bes bes( )as]
    | as2( )g4 r

    \repeat volta 2 {
	<
	    { \voiceOne
	      r4 g4 g g
	      | r <f as> <d f as> <d f as>
	      | r <es g> <es g> <es g>
	  }
	    
	    \context Voice=x {
		\voiceTwo
		r8 [bes( es bes] [es bes es )bes]
		| r [bes( d! bes] [d bes d )bes]
		| r [bes( des bes] [des bes des )bes]
	    }
	> \oneVoice
	| <c4 es as> r r2
	| ces'2( ~ [ces8 des16 ces] [)bes8 as-.]
	| [es'( )d] d4. \grace { \cue bes'32( \noCue } [)as16( g] [)as8
	ces-.]
	| [bes8( )as ges-. fes-.] [fes( )es es( )d!]
	| [es8( g! es bes] [g es bes g]
	
% 140
	| [f bes d bes] [as bes d )bes]
	| [es( bes' g es] [bes es bes g]
	| [f bes d bes] [as bes d bes]
	| [es bes g bes] [as bes d bes]
	| [es bes g bes] [as bes d bes]
	| <)g4 es'> <bes( des> <as c> <)g bes>
	| <c2( es> <bes4 des> <)as c>
	| <c2( e> <)des4 f> r
	| <g,( bes> <as c> <bes des> <)b d>
	| <c4.( es> \times 2/3 { [<des16 f> <c es> <bes des>] } <)as4 c> r
	
% 150
	| <g1 bes es>
	| <as4 c es> r r ges'
	| f2( )es4 <des es> 
    }

    \alternative {
	{
	    \tieUp \slurDown <des2( es> ~ <)c4 es> r \tieBoth \slurBoth
	}
	{
	    <c4 es> r r2
	}
    }

    | r4 <bes' des(> <as c> <e )bes'>
    | [<e8( g> <)f as>] <f4 as> r2
    | R1
    | r4 es'4.( \times 2/3 { [f16 es d] } [)es8 f-.]
    | [as( )ges] ges4.( [as16 ges] [)f8 es-.]

% 160
    | [bes'( )a] a4. \grace { \cue f'16( \noCue } [)es16( d] [)es8
      es-.]
    | [f( )es des-. ces-.] [ces( )bes bes( )a]
    | [bes( d! bes f] [d bes f d]
    | [c f a f] [es f a )f]
    | [bes( f' d bes] [f bes f d]
    | [c f a f] [es f a f]
    | [bes f d f] [es f a f]
    | [bes f d f] [es f a f]
    | <d4 )bes'> <f( as!> <es g> <)d f>
    | [es8( bes' g es] [bes g' es g]

% 170
    | [bes, as' d, as'] [f as g es]
    | [c as' es as] [c, c' f, c']
    | [g bes as g] [)f <f( as> <es g> <)d f>]
    | [g( bes es, g] [bes, es g es]
    | [bes d as' d,] [f as d, f]
    | [bes, es g )bes] <bes es> r <as d> r
    | 
    <
	{
	    \property Voice.Stem \override #'length = #10
	    \oneVoice \slurUp \stemDown d2(
	    \property Voice.Stem \set #'length = #12
	    )es16 \stemBoth \slurBoth
	    \property Voice.Stem \revert #'length
	}
	
	\context Voice=x {
	    \property Voice.Stem \set #'transparent = ##t
	    \oneVoice \stemDown \slurDown as,2( )g16 \stemBoth \slurBoth
	    \property Voice.Stem \set #'transparent = ##f
	}
    > [es16( d es] [f es d )es]
    | \raiseText [as,16^#'(italic "legato") es' as es] \restoreText
      [bes es g es] [bes d f d] [bes es bes' es,]
    | [as, es' as es] [bes es g es] [bes d f d] [bes es bes' es,]
    | [as, es' as es] [bes d g d] [f, c' f c] [g bes es bes]

% 180
    | [d, as' d as] [es g c g] [bes, f' bes f] [c es a es]
    | [bes' d, f bes] [d bes es c] [f es d c] [bes c d bes]
    | [es f, a c] [es c f d] [g f es d] [c d es c]
    | [as'! g f es] [d es f d] [bes' as g f] [es f g es]
    | \stemDown [as f' f, as] [g es' es, g] [f d' d, f] [es c' c, es]
    | [d bes' bes, d] [c as' as, c] [bes g' g, bes] [as f' f, as]
      \stemBoth
    | \grace { \cue g32( \noCue } )bes2( ~ [bes8 d16 c] [es d f )es]
    | [es8( d c )bes] bes4 bes
    |
    <
	{ c4.( d8 [es8 e g f] }
	\context Voice=x {
	    s4 s8^#'(lines (music "scripts-turn") ((music
	    ((font-relative-size . -1) "accidentals-0")))) s2
	}
    >
    | es4. [f16 es] )d4 r

% 190
    | [es,8( f16 g] [as bes c d] [es f g as] [bes c d )es]
    | [es8( d c )bes] \grace { [a32( b c] } )bes4.( [as!16 )f]
    | es4-. es-. [g8.( )as16 f8.( )g16]
    | es4 r r2
    | r2 r16 [es,16( f g] [as bes c d]
    | [es f g as] [bes g as f] )es4 r
    | r2 r16 [es,16( f g] [as bes c d]
    | [es f g as] [bes g as f] )es4 r
    | r2 r16 [es,16^#'(italic "legato") f g] [as bes c d]
    | [es f g as] [bes c des c] [bes as g f] [es des c b]

% 200
    | [c8 d16 e] [f g as bes!] [c d es! d] [f es d c]
    | [bes es g, bes] [as c f, as] [g bes es, g] [f as d, f]
    | es4 r r8 [<c8 es(> <bes d> <as c>]
    | <g )b> r <as c> r <es g> r <f as> r
    | <g4 bes!> r r8 [<c8 es(> <bes d> <as c>]
    | <g )b> r <as c> r <es g> r <f as> r
    | <g4 bes!> r r8 [<c8 es(> <bes d> <as c>]
    | [<g )b> <g-. b> <as-. c> <as-. c>] [<es-. g> <es-. g> <f-. as>
      <f-. as>]
    | <g4 bes!> r r2
    | R1

% 210
    | r16 [as( bes c] [des es f g] [as bes c d!] [)es8 es]
    | r16 [es bes g] [es bes' g es] [bes g' es bes] [g es' bes g]
    | [es bes' g es] [bes g' es bes] [g es' bes g] [as d bes as]
    | [g bes es bes] [g bes es bes] [g bes es bes] [g bes es bes]
    | [as bes f' bes,] [as bes f' bes,] [as bes f' bes,] [as bes f' bes,]
    | [g bes es bes] [g bes es bes] [g bes es bes] [g bes es bes]
    | [as bes f' bes,] [as bes f' bes,] [as bes f' bes,] [as bes f' bes,]
    | [g bes es bes] [g bes es bes] [g bes es bes] [g bes es bes]
    | [as bes f' bes,] [as bes f' bes,] [as bes f' bes,] [as bes f' bes,]
    | [g bes es bes] [g bes es bes] [as bes f' bes,] [as bes f' bes,]

% 220
    | [g bes es bes] [g bes es bes] [as bes f' bes,] [as bes f' bes,]
    | [g bes es bes] [g bes es bes] [as bes f' bes,] [as bes d bes]
    | <g4 bes es> <bes' es g> <g, bes es> <g bes es>
    | <g2 bes es> r
}
