violinISecondMov = \notes \relative es' {
    \key as \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	es4.-\p ~ es4.-\sf
	| es8(-\p as4 ~ as8 )g4 ~
	| g8( f4 ~ f8 )es4 ~
	| es8( des4 ~ des8 )c4_\cresc
	| [des8( es )f] es4-\f [des16.(-\p )bes32]
	| as4 r8 r4 r8
	| as''4.( )es' ~
	| es8( des4 ~ des8 )ces4 ~
	| [ces8( bes )as] g4( )as8

% 10
	| [es(-\f des )c] \grace { \cue des16} [c8 bes g'(-\sf]
	| )bes,4.-\p ~ bes4 as'8(-\sf
	| )bes,4.-\p ~ bes4 bes'8(-\sf
	| )des,4.-\p ~ [des8( c )bes]
	| [as bes'16( as g )f] [es8(-\f )d] r
	| r4 g!8(-\p )as4. ~
	| as4 g8( )as4. ~
	| as4(_\cresc )a8 [bes( as )g]
	| [g16(-\f f es8 )d] es4 c8(-\p
	| )des4. ~ des4 c8(

% 20
        | )des4. ~ des4 c8(
        | )des4._\cresc ~ des4( )c8
	| [a(-\p bes )g] [bes( )as16. g32 f8]
	| f2.-\sf
	| [bes8(-\p as )g] [c16.( as32 g8 )f]
	| [f'(-\sf a )c] [f,( bes d]
	| [)es g,(-\p as!] [a bes )b]
	| [c( e, )f] [as!8..( \lbcOne \rbcThree f32 \lbcTwo as16. )f32]
	| [es16.( g32] [bes8. )g16] [es'8.( bes16 )g'8]
	| r16 [g,,(-. as-. a-. bes-. )b-.] < {[c16. d32
          es16(-. es-. es-. )es-.] } \context Voice=x { s16 s16^\turn } >

% 30
	| es4 [es,16.( )f32] < { f4.^\trill } \context Voice=x {
          \stemUp \slurDown f4( \grace { [es32 )f] } } >
	| es4 r8 r4 r8
	| [c'16(-\sf )c' bes(-.-\p as-. g-. )f-.] [bes,(-\sf )as'
          g(-.-\p f-. es-. )d-.]
	| [bes'16.( )g32 es8] r8 r4 r8
	| [c16(-\sf )c' bes(-.-\p as-. g-. )f-.] [bes,(-\sf )as'
          g(-.-\p f-. es-. )d-.]
	| [es8 <g,, es'> <g es'>] <g es'> r r
    }

    \repeat volta 2 {
        | R2.
	| es''4.(-\p )bes' ~
	| bes8( )as4 ~ as8( )g4
	| R2.

% 40
	| des!4.( )as' ~
	| [as8(_\cresc g] )ges4 [f8( )bes] ~
	| [bes( a] )as4( [g!8 )c] ~
	| [c(-\f a] bes4 [g8 )as] ~
	| [as( f] ges4 [e8 )f]
	| [f( g! e] )f r r
	| R2.
	| [bes8(-\p f d] [as' f )d]
	| [ges( es )bes] r4 r8
	| [as'( es c] [ges' es )c]

% 50
	| [fes( \lowerText des!_\cresc \restoreText as] [g! bes )es]
	| [d( as )f] [es( bes' )des]
	| [c( as )es] [f( as )ces]
	| bes r r c-\p r r
	| bes r r r4 r8
	| [bes'(-\f g es] [des! bes )g]
	| es4.-\p ~ es4.-\sf
	| es8(-\p as4 ~ as8 )g4 ~
	| g8( f4 ~ f8 )es4 ~
	| es8( des4 ~ des8 )c4_\cresc

% 60
	| [des8( es )f] es4-\f [des16.(-\p )bes32]
	| as4 r8 r4 r8
	| as''4.( )es' ~
	| es8( des4 ~ des8 )ces4 ~
	| [ces8( bes )as] g4( )as8
	| [es(-\f des )c] \grace { \cue des16} [c8 bes] es(-\sf
	| \property Voice.TextScript \override #'extra-offset =
          #'(-1.0 . 0.0) )es,4.-\parentP ~ es4 es'8(-\sf
	| )es,4.-\p ~ es4 es'8(-\sf
	| \lowerDynamics )e,4.(-\p \restoreDynamics ~ [e8 )f] f'8(-\sf
	| )fis,4.(-\parentP \property Voice.TextScript \revert
          #'extra-offset ~ [fis8 )g] g'8-\sf

% 70
	| [bes,(-\p )as] bes'-\sf [des,(-\p )c] e-\sf ~
	| e-\p [g16( f es )des] [c8( )bes] bes
	| bes4 bes8 bes4 es8-\f
	| [d16( f as f es )d] [d8( )es] r
	| r4 c8(-\p )des4. ~
	| des4 c8( )des4. ~
	| des4(_\cresc d8 [es des )c]
	| [c16(-\f bes as8 )g] [as8.(-\fp \times 2/3 { bes32 as g }
          )as16 bes-.]
	| c8 r r r4 f,8(
	| )ges4. ~ ges4 f8(

% 80
        | )ges4. ~ ges4 f'8(_\cresc
	| )ges4. ~ ges4( )f8
	| [d(-\p es )c] [es( )des16. c32-. bes8]
	| bes2.-\sf
	| [es8(-\p des )c] [f16.( )des32 c8( )bes]
	| [bes'8(-\sf d )f] [bes,( es g]
	| [)as c,( des!] [d es )e]
	| [f( a, )bes] [des!8..( \lbcOne \rbcThree bes32 \lbcTwo
          des16. )bes32]
	| [as16.( c32] [es8. )c16] [es8..( \lbcOne \rbcThree c32
          \lbcTwo es16. )c32]
	| es8 r16. [c,32( es16. )c32] es8 r16. [c,32( es16. )c32]

% 90
	| \LowerDynamics [es8(-\p e-\f \once \property
          Voice.TextDynamics \override #'extra-offset = #'(0.0 . -1.5)
          f-\p] [ges-\f g-\p )as] \restoreDynamics
	| \grace { \cue as16( } )as,4. < { bes4.^\trill } \context
          Voice=x { \stemUp \slurDown bes4( \grace { [as32 )bes] } } >
	| as4 r8 r4 r8
	| [f'16(-\sf )f' es(-.-\p des-. c-. )bes-.] \stemDown [es,(-\sf
          )des' c(-.-\p bes-. as-. )g-.] \stemBoth
	| [es'16.(-\p c32 )as8] r8 r4 r8
	| [f16(-\sf )f' es(-.-\p des-. c-. )bes-.] [bes(-\sf )des'
          c(-.-\p bes-. as-. )g-.]
	| \stemDown [as8 as,-. as-.] \stemBoth as-. r r
    }
}
