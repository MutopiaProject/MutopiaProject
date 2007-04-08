violaFirstMov = \notes \relative es {
    \key es \major
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	\slurStemToHead es2(-\p )es' \slurDefToDef
	| a,2.( )bes4
	| \stemDown \slurUp \slurHeadToStem b( c \stemUp e, )f
          \slurDefToDef \stemBoth \slurBoth
	| as!2( )g4 r
	| r4 \stemUp as( c )f,
	| r as( c )f, \stemBoth
	| r f'( g )f
	| es( )g r2
	| r4 \stemUp as,( c )f,

% 10
	| r as( c )f, \stemBoth
	| r es'2_\cresc bes4
	| bes2-\f c
	| c2.( )bes4
	| des( )c r c
	| d!2( )es4 r
	| g1 ~
	| g4.( )es8 [es( )des des( )c]
	| \slurStemToStem bes4(-\p des2 )bes4 \slurDefToDef
	| es2 ~ [es8 \raiseSlur es(-. es-. )es-.] \restoreSlur

% 20
	| es2 r
	| c2 as4( )f
	| bes2 g'4( )es
	| c2.( )as4
	| g4( [)f8 bes'(-.-\f] [a-. g-. f-. )es-.]
	| d1
	| es4 r r2
	| r4 r8 c'8(-. [bes-. a-. g-. )f-.]
	| [f16( g f e] [f g as )g] as2 ~
	| as4( )g8 r r \once \property Voice.TextScript \set
	  #'extra-offset = #'(-1.0 . 0) [f8(-.-\parentP f-. )f-.]

% 30
	| f4( )e8 r r [e(-. e-. )e-.]
	| [d8.( )bes16] d8 r r [c'(-. bes-. )a-.]
	| [bes16( c d )bes] [f8-| f-|] f2 ~
	| f4 r r8 [c'(-. bes-. )a-.]
	| bes4 r r2
	| r4 r8 f8(-. [es-. d-. c-. )bes-.]
	| es1(_\cresc
	| des4. c8 [des a bes )c]
	| [d!-\f d d d] [d d d d]
	| [es es es es] [es es es es]

% 40
	| d4 r r2
	| r c(-\p
	| )bes4 r r2
	| a4..-\f bes16 c4 c
	| c r r2
	| <g1-\p g'> ~
	| <g4. g'> ges'8( )f4 r
	| f r es r
	| d r [bes8( \times 2/3 { c16 bes a }] [)bes8 c-.]
	| d4(-. d-. d-. )d-.

% 50
	| [d16( fis g es] )d4 bes4(-\f \grace { [c32 bes a bes] } [c8 )d]
	| c4.. d16 [c8. bes16 a8. g16]
	| [g8( )a] f4 [f8.-\p g16 a8. b16]
	| c4 c2( [d8. )b16]
	| c4( )es2 \times 2/3 { [fis8( g )es] }
	| d4 \times 2/3 { [e8( f! )d] } c4 \times 2/3 { [d8( es )c] }
	| bes4 r r2
	| R1
	| g'2(-\f )a
	| bes(-\p as!

% 60
	| ges )f
	| es( )d
	| es(-\f )e
	| f4 r c2(-\p
	| )bes4 r r2
	| [f'16(-\f g a )g] [a( b c )b] [c( bes a g] [f es d )c]
	| bes4 f'2 f4
	| [f16( g a )g] [a( b c )b] [c( bes a g] [f es d )c]
	| bes4 bes' bes, r
    }

    \repeat volta 2 {
        | R1*2

% 71
	| \slurStemToHead es,2(-\f )es' \slurDefToDef
	| a,2.( )bes4
	| \stemUp \slurDown b( c e, )f \slurBoth \stemBoth
	| as!2.( )g4
	| g8-\p g4 g g g8 ~
	| g g4 g g g8
	| \once \property Voice.TextScript \set
          #'extra-offset = #'(-1.5 . 0) f1-\parentFP ~
	| f
	| \once \property Voice.TextScript \set
          #'extra-offset = #'(-1.0 . 0) g8-\parentP g4 g g g8 ~

% 80
	| g g4 g g g8
	| \once \property Voice.TextScript \set
          #'extra-offset = #'(-1.5 . 0) bes!1-\parentFP ~
	| bes
	| \once \property Voice.TextScript \set
          #'extra-offset = #'(-1.0 . 0) [c8-\parentP c c c] [c c c c]
	| [c c c c] [c c c c]
	| \times 2/3 { r8 [c, f] } \times 2/3 { [a c f] } \times 2/3 {
          [a c a] } \times 2/3 { [f'( )c a-.] } \noTupletNum
	| \times 2/3 { [c( )a f-.] [a( )f c-.] [f( )c a-.] [c( )a f-.] }
	| \once \property Voice.TextScript \set #'extra-offset =
          #'(-1.0 . 0) \raiseBeam [fis8 \grace { \cue g16 } fis16( e]
          \restoreBeam [)fis8 g-.] a4 r
	| [fis'8 \grace { \cue g16 } fis16( e] [)fis8 g-.] a4 r
	| \once \property Voice.TextScript \set #'extra-offset =
          #'(-1.0 . 0) [g,8 \grace { \cue a16 } g16( fis] [)g8 a-.] bes4 r

% 90
	| [g'8 \grace { \cue a16 } g16( fis] [)g8 a-.] bes4 r
	| \once \property Voice.TextScript \set #'extra-offset =
          #'(-1.5 . 0) es,,1-\parentFP ~
	| es
	| R1
	| r4 cis'4(-.-\f cis-. )cis-.
	| d r r2
	| r c!2(-\p
	| )bes4 r r2
	| r g(
	| )f4 r r2

% 100
	| r f2
	| \slurStemToHead es2(-\p )es' \slurDefToDef
	| a,2.( )bes4
	| \stemDown \slurUp \slurHeadToStem b( c \stemUp e, )f
          \slurDefToDef \stemBoth \slurBoth
	| as!2( )g4 r
	| r4 \stemUp as( c )f,
	| r as( c )f, \stemBoth
	| r f'( g )f
	| es( )g r2
	| r8 [es-. es-. es-.] [es8.( d32 c] )bes8 r

% 110
	| [c32( d )es8.] [es8-. es-.] es2
	| [c32( d )es8.] [es8-. es-.] es2 ~
	| es4_\cresc f( )g <bes, f'>
	| [<bes8-\f g'> f' g as] [bes as bes g]
	| [c, es f ges] [f es f d]
	| [d as' g! f] [g des c bes]
	| [c bes c d!] [es-. es( f )g]
	| as4.(-\p g8 )f4 as ~
	| as [g8( f] es4 g ~
	| )g( [f8 )es] d4( [es8 )f]

% 120
	| es4 r8 es [es( )d d( )c]
	| [bes d d d] [d d d d]
	| es4 [c8.( )a16] f4( )a
	| as!4. as'8(-. [g-. f-. es-. )d-.]
	| [des16( es des c] [des bes c )des] es2 ~
	| es4 ~ es8 r r [c8(-.-\p c-. )c-.]
	| c4 ~ c8 r r [bes(-. bes-. )bes-.]
	| bes1 ~
	| bes4 r r8 \raiseSlur [f'(-. es-. )d-.] \restoreSlur
	| [es16( f g )es] [bes'8-. bes-.] bes2 ~

% 130
	| bes4 r r2
	| r4 r8 bes8(-. [as-. g-. f-. )es-.]
	| as1_\cresc
	| ges4.( f8 [ges d es )f]
	| [g!8-\f g g g] [g g g g]
	| [as as as as] [as as as as]
	| g4 r r2
	| r f2(-\p
	| )es4 r r2
	| d4..-\f es16 f4 f

% 140
	| f r r2
	| c'1-\p ~
	| c4. ces8( )bes4 r
	| bes r as r
	| g r r2
	| r f,2(
	| )es4 r r2
	| d4..-\f es16 f4 f
	| [es8( )d] d4 r2
	| [f8.-\f g16 as!8. bes16] c4. bes8

% 150
	| [as8. g16 f8. es16] d4 r
	| es r bes' r
	| es2( d
	| c )bes
	| \lowerDynamics a(-\f \restoreDynamics )as
	| g4 r r2
	| as'2(-\p )ges
	| fes1(
	| )es2(-\f )a
	| es'4 r \lowerDynamics f,,2(-\p \restoreDynamics

% 160
	| )es4 r r2
	| [bes'16(-\f c d cis] [d e f )e] f8 f4 f8
	| es!4 bes ~ [bes16 d es f] [g( f g )es]
	| [d( es f e] [f g as )g] as8 as4 as8
	| g4 [bes,8. bes16] bes4 r
    }
}
