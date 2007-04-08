celloFirstMov = \notes \relative es {
    \key es \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	es2(-\p )es'
	| a,2.( )bes4
	| b( c e, )f
	| as!2( )g4 r
	| r c,4( )as2 ~
	| as4 c( )as2 ~
	| as4 as'( )bes bes,
	| es r r2
	| r4 c( )as2 ~

% 10
	| as4 c( )as2 ~
	| as4 as'(-\cresc )bes bes,
	| es2-\f c
	| fis,2.( )g4 ~
	| g( )as r a(
	| bes )b [c8. d16 es8. f16]
	| [g8 g g g] [g g g g]
	| [c, c c c'] [c( )bes bes( )as!]
	| [g-\p g g g] [g g g g]
	| [as as as as] [as as as as]

% 20
	| [es es es es] [es es e e]
	| [f f f f] [f f d d]
	| [es! es es es] [es es c c]
	| as1
	| bes4. g''8(-.-\f [f-. es-. d-. )c-.]
	| [bes bes bes bes] [bes bes bes bes]
	| [c c c c] [c c bes bes]
	| [a a a a] [a a a a]
	| as!4. f8(-. [es-. d-. c-. )bes-.]
	| bes4( [)es8 \once \property Voice.TextScript \override
          #'extra-offset = #'(-1.0 . 0.0) \slurDown d(-.-\parentP]
          [c-. b-. a-. )g-.]

% 30
	| g4( [)c8 c(-.] [bes!-. a-. g-. )f-.] \slurBoth
	| bes4 r es'2(
	| d es
	| d es
	| )d4 r r2
	| R1
	| r4 r8 bes8(-._\cresc [as!-. g-. f-. )es-.]
	| ges1
	| [f8-\f f f f] [f f f f]
	| [f f f f] [f f f f]

% 40
	| bes,4 r r2
	| r d2(-\p
	| )g,4 r r2
	| a4..-\f bes16 c4 c
	| f, r r2
	| r4 c'(-\p es )g
	| c4.( )bes8 a4 r
	| bes r f r
	| bes, r r2
	| r d2(

% 50
	| )g,4 r r2
	| a4..-\f bes16 c4 c
	| f, r r2
	| [c'8.-\p d16 es!8. f16] g4. f8
	| [es8. d16 c8. bes16] a4 r
	| bes r f' r
	| [bes,8 bes bes bes] [bes bes bes bes]
	| [bes bes bes bes] [bes bes bes bes]
	| [bes-\f bes bes bes] [bes bes bes bes]
	| [bes-\p bes bes bes] [bes bes bes bes]

% 60
	| [bes bes bes bes] [bes bes bes bes]
	| [bes bes bes bes] [as! as as as]
	| [g-\f g g g] [ges ges ges ges]
	| f4 r f'2(-\p
	| )bes,4 r r2
	| es'4-\f [c8. a16] f4 f,
	| bes f' d bes
	| es [c8. a16] f4 f'
	| bes, bes' bes, r
    }

    \repeat volta 2 {
        | R1*2

% 71
	| \slurStemToHead es,2(-\f )es' \slurDefToDef
	| a,2.( )bes4
	| b( c e, )f
	| as!2.( )g4
	| [c8-\p c c c] [c c c c]
	| [c c c c] [c c c c]
	| \once \property Voice.TextScript \override #'extra-offset =
          #'(-1.5 . 0.0) c1-\parentFP ~
	| c
	| \once \property Voice.TextScript \override #'extra-offset =
          #'(-1.0 . 0.0) [c8-\parentP c c c] [c c c c]

% 80
	| [c c c c] [c c c c]
	| \once \property Voice.TextScript \override #'extra-offset =
          #'(-1.5 . 0.0) c1-\parentFP ~
	| c
	| \once \property Voice.TextScript \override #'extra-offset =
          #'(-1.0 . 0.0) [f8-\parentP f f f] [f f f f]
	| [f f f f] [f f f f]
	| \property Voice.TextScript \override #'extra-offset =
          #'(-1.5 . 0.0) es!1-\parentFP ~
	| es
	| d-\parentFP ~
	| d
	| g,-\parentFP ~ \property Voice.TextScript \revert #'extra-offset

% 90
	| g
	| \times 2/3 { r8 \once \property Voice.TextScript \override
          #'extra-offset = #'(-1.0 . 0.0) [es-\parentF g] } \times 2/3
          { [bes es g] } \times 2/3 { [bes g bes] } \times 2/3 { [es(
          )bes g-.] } \noTupletNum
	| \times 2/3 { [bes( )g es-.] [g( )es bes-.] [es( )bes g-.]
          [bes( )g es-.] }
	| cis4 r r2
	| r4 cis'(-.-\f cis-. )cis-.
	| d4 r r2
	| r d2(-\p
	| )g,4 r r2
	| r c2(
	| )f,4 r r2

% 100
	| r bes
	| es,2 es''
	| a,2.( )bes4
	| b( c e, )f
	| as!2( )g4 r
	| r c,4( )as2 ~
	| as4 c( )as2 ~
	| as4 as'( )bes bes,
	| es r r8 [es'8-. es-. es-.]
	| [es8.( d32 c] )bes8 r [c8.( bes32 as] )g8 r

% 110
	| as4( c )as2 ~
	| as4 c( )as2 ~
	| as4_\cresc as( )bes bes,
	| [es8-\f d es f] [g f g es]
	| [f ges f es] [d c d bes]
	| [g'! f es d] [c bes as g]
	| [f g as bes] es,4 r
	| r8 [as'8-\p f es] d4( )f
	| r8 [g es d] c4( )es
	| r8 [f d c] bes2

% 120
	| c f
	| [bes,8 bes bes bes] [bes bes bes bes]
	| [bes bes bes bes] [bes bes bes bes]
	| [bes bes bes bes] [bes bes bes bes]
	| es4. bes'8(-. [as-. g-. f-. )es-.]
	| es4( [)as8 \once \property Voice.TextScript \override
          #'extra-offset = #'(-1.0 . 0.0) g(-.-\parentP]
          [f-. es-. d-. )c-.]
	| c4( [)f8 f(-.] [es!-. d-. c-. )bes-.]
	| es4 r as2(
	| g as
	| g as
	| )g4 r r2
	| R1
	| r4 r8 es'8(-._\cresc [des-. c-. bes-. )as-.]
	| ces1
	| [bes8-\f bes bes bes] [bes bes bes bes]
	| [bes bes bes bes] [bes bes bes bes]
	| es,4 r r2
	| r g2(-\p
	| )c,4 r r2
	| d4..-\f es16 f4 f
	| bes, r r2
	| r4 f'(-\p as! )c
	| f4.( )es8 d4 r
	| es r bes r
	| es, r r2
	| r g,2(
	| )c,4 r r2
	| d4..-\f es16 f4 f
	| bes r r2
	| R1*3

% 152
        | [es8-\p es es es] [es es es es]
	| [es es es es] [es es es es]
	| [es-\f es es es] [es es es es]
	| [es-\p es es es] [es es es es]
	| [es es es es] [es es es es]
	| [es es es es] [des des des des]
	| [c-\f c c c] [ces ces ces ces]
	| bes4 r \lowerDynamics bes2(-\p
	| )es,4-\f bes'' g es
	| as [f8. d16] bes4 bes'
	| es, bes g es
	| as' [f8. d16] bes4 bes'
	| es, es, es r
    }
}
