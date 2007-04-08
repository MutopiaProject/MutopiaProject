violaSecondMov = \notes \relative as {
    \key as \major
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	\lowerDynamics as4.(-\p \restoreDynamics )bes-\sf
	| \stemUp \slurDown \lowerDynamics as4(-\p \restoreDynamics
          )c8 \slurBoth bes4.( \stemBoth
	| as )g
	| f4.( )fes8 es4_\cresc
	| [f!8( g )as] \lowerDynamics [as(-\f )g] \restoreDynamics r
	| as'4.(-\p )es' ~
	| es8( )des4 c8( )bes4
	| [a8( bes as] [g as )ges]
	| \LowerText f4.(_\cresc \restoreText [g!16. as32 bes8 )as]

% 10
	| r [es-\f es] es4 r8
	| r [bes(-\p )es] [e( )f] r
	| r [f,( )d'] [d( )es!] r
	| r [f( )es] es4(_\cresc )c8
	| c4. bes4-\f bes'8(-\p
	| )ces4. ~ ces4 bes8(
	| )ces4. ~ ces4 bes8(
	| )ces4.(_\cresc )bes
	| [as8(-\f g )f] es4 r8
	| r8 [bes(-\p as] )g4.

% 20
	| r8 [bes( as] )g4.
	| es'2._\cresc ~
	| es8-\p r r bes r r
	| c4.(-\sf )bes ~
	| [bes8(-\p d )es] ~ [es16.( )c32] bes4
	| c'4.(-\sf )bes
	| bes8 r r r4 r8
	| c,4-\f r8 r4 r8
	| r4 es8 r es r
	| es r r r4 r8

% 30
	| g,4.( )bes
	| < { <bes2. g'> } \context Voice=x { s4. \LowerText
          s4._\cresc } >
	| < { \property Voice.Stem \override #'length = #10 as'4.( )f
          } \context Voice=x { \property Voice.Stem \override
          #'transparent = ##t \stemDown \slurDown c4.( )bes } >
          \property Voice.Stem \revert #'length
	| < { <bes,2.-\p g'> } \context Voice=x { s4. \LowerText
          s4._\cresc } >
	| < { \property Voice.Stem \override #'length = #10 as'4.( )f
          } \context Voice=x { \property Voice.Stem \override
          #'transparent = ##t \stemDown \slurDown c4.( )bes } >
          \property Voice.Stem \revert #'length
	| [<bes,8-\p g'> <es, bes'> <es bes'>] <es bes'> r r
    }

    \repeat volta 2 {
        | [es'8(-\p g bes] [d, f )bes]
	| [c,( es )as] [bes,( des! )f]
	| [c( f )as] [c,( e )g]
	| f,4.( )c' ~

% 40
	| c8(_\cresc )bes4 ~ bes8( )as4
	| R2.
	| \LowerDynamics f4.(-\mf \restoreDynamics )c'
	| \lowerDynamics des4.(-\f )c
	| bes4( )c8 des4( )as'8
	| [as( bes g] )as r r
	| [f8(-\p as ces] \restoreDynamics [es, as )ces]
	| [d,( f )bes] r4 r8
	| [es,( ges bes] [des, fes )beses]
	| [c,( es )as] r4 r8

% 50
	| < { as4.( )g! } \context Voice=x { s8 s4_\cresc } >
	| as4.( )es ~
	| es(-\f )f
	| [bes,8(-\p g es] [d f )as]
	| g r r r4 r8
	| es4.(-\f ~ [es8 g )bes]
	| \lowerDynamics as4.(-\p \restoreDynamics )bes-\sf
	| \stemUp \slurDown \lowerDynamics as4(-\p \restoreDynamics
          )c8 \slurBoth bes4.( \stemBoth
	| as )g
	| f4.( )fes8 es4_\cresc

% 60
	| [f!8( g )as] \lowerDynamics [as(-\f )g] \restoreDynamics r
	| as'4.(-\p )es' ~
	| es8( )des4 c8( )bes4
	| [a8( bes as] [g as )ges]
	| \LowerText f4.(_\cresc \restoreText [g!16. as32 bes8 )as]
	| r [es-\f es] es4 r8
	| r \lowerDynamics [es,(-\p \restoreDynamics )as] [a( )bes] r
	| r [es,( )bes'] [g( )as!] r
	| r [as( )ges] [ges( )f] r
	| r [bes( )as] [as( )g!] c-\sf ~

% 70
	| c4-\p \lowerDynamics es8-\sf ~ es4-\p as,8-\sf ~ \restoreDynamics
	| [as(-\p des )f] es4 es8
	| [d8. es16 f8] [f( )es] es-\f
	| f4. [f8( )es] r
	| r \lowerDynamics [g,(-\p \restoreDynamics as] [a )bes] r
	| r [g( as] [a )bes] r
	| r \LowerText [g(_\cresc \restoreText as] [a bes )c]
	| [f(-\f es )des] c4.-\fp ~
	| c8 r r r4 r8
	| r [es,( des] )c4. ~

% 80
	| [c8 es( des] )c4.
	| as''2._\cresc ~
	| as8-\p r r es r r
	| f4.(-\sf )es ~
	| [es8(-\p g )as] ~ [as16.( )f32] es4
	| as4.(-\sf )es' ~
	| es8 r r r4 r8
	| f,4-\p r8 r4 r8
	| r4 as8 r as r
	| r as r r as, r

% 90
	| R2.
	| es4.( )des
	| c <es_\cresc c'>
	| <
	      { \stemDown \slurDown f( )es }
              \context Voice=x { \stemUp des'2. }
          > \slurBoth \stemBoth
	| <es4.-\p c'> <c'_\cresc es>
	| <
	      { \stemDown \tieDown \slurDown des4. ~ des( | \stemUp
	        [)c8-\p as-. as-.] as-. }
	      \context Voice=x { \stemUp \tieUp s4. es'4. ~ | \once
	        \property Voice.Stem \override #'transparent = ##t es8 }
	  > r8 r
    }
}
