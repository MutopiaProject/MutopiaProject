violaThirdMov = \notes \relative g {
    \key es \major
    \clef alto
    \noTupletBracket

    R1*8
    | [g8(-\f bes es )bes] [bes( es g )es]

% 10
    | [bes( d f g] [as f g )es]
    | [c( es as bes] [c as c )f,]
    | [g( bes as g] [f as g )f]
    | [es( )g g,( )es'] [g( es bes' )g]
    | [as( f as f] [d as' f )d]
    | [es( bes es )g] [bes8.( )c16] [as8.( )bes16]
    | as2( )g4 r
    | R1*2
    | f1-\p ~

% 20
    | f ~
    | f4 bes,( d )f
    | bes2( )des
    | d!4( [bes8 )d] [d( c bes )a]
    | bes4 r r2
    | R1
    | r4 bes( f )d
    | es( c a )es
    | d r r2
    | R1*2

% 31
    | e'2 ~ [e8( )f f( )g]
    | f1 ~
    | f
    | f8 r c r f r c r
    | f,4 r r2
    | R1
    | c''2( ~ [c8 d es )f]
    | [es( d c )bes] bes4 bes
    | c2( ~ [c8 d es )f]

% 40
    | [es( d c )bes] b4.(^\trill [a16 )b]
    | [c8( bes! a c] [bes a g )f]
    | [d( es f )g] [d( )f es( )c]
    | d4 r r2
    | R1*7

% 51
    | [f8 f] f r r2
    | [f8 f] f r r2
    | [bes8 bes] bes r [bes bes] bes r 
    | [bes8 bes] bes r [bes bes] bes r 
    | bes8 r r4 r2
    | bes8 r r4 r2
    | bes8 r r4 r2
    | R1*9

    \repeat volta 2 {
% 67
	| g2-\f [f16( )es8.] [d16( )c8.]
	| <d,8 b' as'> r as''2 [g8( )f]
	| [f( )es d-. c-.] \stemDown [c8(^\trill b16 c] [es8 )c] \stemBoth

% 70
	| \times 2/3 { [b8 g a] } \times 2/3 { [bes b c] } \times 2/3
          { [cis d es!] }  \times 2/3 { [e f fis] }
	| g2-\f [f16( )es8.] [d16( )c8.]
	| <d,8 bes' as'> r as''2 [g16( f es )d]
	| bes'4( [as16 g f )es] as4( )f8 r
	| bes4( [as16 g f )es] d4( )f8 r
	| bes4( [as16 g f )es] c'4( [bes16 as g )f]
	| as4( [g16 f es )d] es4 r
    }

    \repeat volta 2 {
	R1*4

% 81
	| g2-\f [f16( )es8.] [d16( )c8.]
	| <d,8 b' as'> r as''2 [g8( )f]
	| [f( )es d-. c-.] \stemDown [c8(^\trill b16 c] [es8 )c] \stemBoth
	| \times 2/3 { [b8 g a] } \times 2/3 { [bes b c] } \times 2/3
          { [cis d es!] }  \times 2/3 { [e f fis] }
	| g4 r r2
	| R1
	| \times 2/3 { [g,8 c es] } \noTupletNum \times 2/3 { [g, c
          es] [g, b d] [g, d' f] }
	| \times 2/3 { [g, c es] [g, c es] [g, d' f] [g, b d] }
	| \times 2/3 { [g, c es] [g, c es] [as, c d] [as c d] }

% 90
	| \times 2/3 { [g, b d] [g, d' f] } es4 r \tupletNum
    }

    | R1
    | r2 \times 2/3 { [c8 es g] } \noTupletNum \times 2/3 { [c, es g] }
    | \times 2/3 { [c, f as] [c, f as] [bes, d f] [bes, d f] }
    | \times 2/3 { [bes, es g] [es bes g] } es4 r \tupletNum
    | R1*2
    | \times 2/3 { [bes'8( )c a] } \noTupletNum \times 2/3 { [bes d f]
      [bes d( )c] [d c bes] }
    | \times 2/3 { [a c es] [c a f] [es c a] [f g a] }
    | \times 2/3 { [bes8( )c a] [bes d f] [bes d( )c] [d c bes] }

% 100
    | \times 2/3 { [a c es] [c a f] [es c a] [f g a] }
    | \times 2/3 { [bes( )c a] [bes d c] [es( )d f] [es g f] }
    | \times 2/3 { [as!( )g bes] [as c bes] [as g f] [es d c] }
    | \times 2/3 { [d,( bes' )as'] [as-. as-. as-.] [as( bes, )as']
      [as( ces, )as'] }
    | \times 2/3 { [d,,( bes' )as'] [as-. as-. as-.] [as( bes, )as']
      [as( ces, )as'] }
    | \times 2/3 { [as( bes, )as'] [as( ces, )as'] [as( bes, )as']
      [as( ces, )as'] } \tupletNum
    |
    <
	{
	    \property Voice.Stem \set #'transparent = ##t
	    \stemUp as2 ~
	    \property Voice.Stem \set #'transparent = ##f
	    \stemBoth \raiseSlur [as8 g(-. ges-. )f-.]
	}
	
	\context Voice=x {
	    \stemUp
	    \property Voice.Stem \override #'length = #12
	    <d,4 bes'> s4 s2
	    \property Voice.Stem \revert #'length
	}
    > \oneVoice
    | \stemDown [e8-.( es-. d-. des-.] [c-. ces-. bes-. )a-.]
      \restoreSlur \stemBoth
    | bes2(-\mp ~ [bes8 c d )es]
    | [es( d c )bes] bes4 bes

% 110
    | c4.( d8 [es e g )f]
    | es!4.( [d16 es] )d4 r
    | bes2 ~ [bes8 d16( c] [es d f )es]
    | [es8( d c )bes] bes'4.( [as16 )f]
    | es4 es [g8.( )as16] [f8.( )g16]
    | f2( )es4 r
    | c'2( bes4 )as
    | c2( )des4 r
    | g,( as bes )b
    | c4.( \times 2/3 { [des16 c bes!] } )as4 r

% 120
    | R1*4
    | es2( des4 )c
    | e2( )f4 r
    | bes,( c des )d
    | es!4.( \times 2/3 { [f16 es des] } )c4 r
    | R1
    | r4 r8 as'( [)g bes( as )g]

% 130
    | [g( )as c( )as] [as( )g g( )f]
    | f2( )es4 r \bar "||"

    \repeat volta 2 {
	R1*3
	| r8 [as,( c es] [as c )es es-.]
	| es,4 r r2
	| R1*4

% 141
	| bes'1 ~
	| bes ~
	| bes ~
	| bes ~
	| bes4 g( as )des
	| c2( bes4 )as
	| c2( )des4 r
	| g,4( as bes )b
	| c4.( \times 2/3 { [des16 c bes] } )as4 r

% 150
	| R1
	| r2 r4 es4
	| des2( c4 )bes
    }

    \alternative {
	{
	    bes2( )as4 r
	}
	{
	    as4 r8 c'8( [bes as g )f]
	}
    }

    | e2( f4 )g
    | [bes8( )as] r c( [bes as g )f]
    | es!4.( d8 [f es g )f]
    | [as( )g] r4 r2
    | R1*5

% 164
    | f1 ~
    | f ~
    | f ~
    | f ~
    | f4 d( es )as!
    | g r r2

% 170
    | R1*7
    | r2 [f8(-\sf d es )g]
    | r2 [f8(-\sf d es )g]
    | [es'(-\f c d bes] [c as bes )g]

% 180
    | [as( f g es] [f d es )c]
    | d r [bes'-.-\p c-.] d-. r [d,16( es f )d]
    | c8 r [c'-. d-.] es-. r [es,16( f g )es]
    | [d8-. es-.] f-. r [es-. f-.] g-. r
    | r [d'-.-\f es,-. c'-.] [d,-. bes'-. c,-. as'-.]
    | [bes,-. d( \> es f] [bes, )c f,( \! )bes]
    | es,4-\p r r2
    | R1*3

% 190
    | bes'2(-\f ~ [bes8 c d )es]
    | [es( d c )bes] bes4( [d8 )f]
    | g4 g( bes )as
    | g r r8 [c(-\p bes as]
    | )g r as r es r f r
    | g4 r r8 [c(-\p bes as]
    | )g r as r es r f r
    | g4 r r8 [c(-\p bes as]
    | [)g-. g-. as-. as-.] [es-. es-. f-. f-.]
    | g4 r r2

% 200
    | R1
    | bes2 ~ bes4.( )as8
    | g4 r r2
    | R1*2
    | r2 r16 [es, f g] [as bes c d]
    | [es f g as] [bes g as f] es4 r
    | R1
    | r16 [d( es f] [g f g as] [bes8 as g )bes]
    | as4 r [as16( g as g] [as g as )g]

% 210
    | as4 r r8 [c(-\f bes )as]
    | fis8( g4 bes es, )g8
    | [g8.( )f!16] es2( )d4
    | es r r2
    | r2 r8 [bes8(-\p c )d]
    | [es-.( \grace { \cue f32 \noCue } es16 d] [)es8 g-.] bes2 ~
    | bes r8 [bes,8(-\p c )d]
    | [es-.( \grace { \cue f32 \noCue } es16 d] [)es8 g-.] bes2 ~
    | bes r8 [bes,8(-\p c d]
    | [)es bes'( as g] [)as bes,( c d]

% 220
    | [)es bes'( as g] [)as bes,( c d]
    | [)es bes'( as g] [f g as )bes]
    | g4-\f r <bes, g'> <bes g'>
    |
    <
	{
	    \property Voice.Stem \override #'length = #'14
	    g'2
	    \property Voice.Stem \revert #'length
	}

	\context Voice=x {
	    \property Voice.Stem \set #'transparent = ##t
	    \stemDown <es,4 bes'> s4 \stemBoth
	    \property Voice.Stem \set #'transparent = ##t
	}
    > \oneVoice r2 \bar "|."
}
