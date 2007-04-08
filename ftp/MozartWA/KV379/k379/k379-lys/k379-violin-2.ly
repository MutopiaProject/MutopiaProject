% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

violinPartII = \relative b' {
    \key g \minor
    \time 3/4
    \noTupletBracket

    \set Score.currentBarNumber = #50

    \repeat volta 2 {
% 50
	| R2.*11
	| R2.-\fermata
	| g4-\mf^\markup { \hspace #0.15
			   \center-align { { \italic "a tempo" }
					   { \musicglyph #"scripts.turn" }
					   { \fontsize #-3.0 \sharp } } }
	  r8 g[ g g]
	| d'4^\turnSharp r8 d[ d d]
	| es4 es(-. es)-.
	| d4^\turnSharp r8 g,[ g g]
	| es'4 es(-. es)-.
	| d4^\turnSharp r8 g[-\p-. g-. g]-.
	| g4( fis8) g(-. g-. g)-.
	| g4( fis8) es(-.-\markup{ \italic "cresc. e rall." } es-. es)-.

% 70
	| es4( d8) es(-. es-. es)-.
	| es4( d8) c(-. c-. c)-.
	| c4( a8) c(-.-\f c-. c)-.
	| c4( a8) r r4-\fermata
	| R2.^\markup { \italic "a tempo" }
	| R2.*4
	| f'4.(-\f d8[)-. c-. bes]-.

% 80
	| a( c) f,4 r
	| f'4.( d8[)-. c-. bes]-.
	| bes'( a) a4 r
	| bes a g
	| f es d
	| g( f) a,-.
	| <d, bes'>4.( f8[)-. d-. as]-.
	| g2( es'4)
	| d4.( f8[)-. as-. fis]-.
	| as( g) g4 es

% 90
	| d4. bes'8[( d f])
	| bes4( a as
	| g f e)
	| es2( d4)
	| c bes(-- a)--
	| bes'(-\> f)-\! r
	| \once \override DynamicText #'transparent = ##t % For MIDI output
	  \raiseScript d8.(-\p-\trill es16)-. f4 r
	| R2.
	| bes4(-\> d,)-\! r
	| \once \override DynamicText #'transparent = ##t % For MIDI output
	  bes8.(-\p-\trill c16)-. d4 r

% 100
	| R2.
	| r4 r8 f[(-\p d bes)]
	| g4 r8 d'[( bes g)]
	| e4 r8 bes'[( g e)]
	| f-. r f(-. r f)-. r
	| bes,4 r r
    }

    \break

    \repeat volta 2 {
	| \LowerText f'4.-\markup { \italic "dolce" } g8[( f g]
	| bes as g f es d)
	| c( b) <b f'>4(-. <b f'>)-.
	| << { f'4( es8) \slurDown d( es fis) \slurNeutral } \\ { g,2 s4 } >>

% 110
	| g'4. a8[( g a]
	| c[ bes a g f! e])
	| d( cis) <cis g'>4(-. <cis g'>)-.
	| << { g'4( fis8) \slurDown d( fis a) \slurNeutral } \\ { a,2 s4 } >>
	| c'-\crescText <fis, c'>(-. <fis c'>)-.
	| << { c'4( bes8) \slurDown g( bes d) \slurNeutral } \\ { d,2 s4 } >>
	| <a' g'>4-\f <a g'> <a g'>
	| <d, a' fis'> r r

% 118
	| R2.*11
	| R2.-\fermata

% 130
	| g4-\f^\markup { \hspace #0.15
			  \center-align { { \italic "a tempo" }
					  { \musicglyph #"scripts.turn" }
					  { \fontsize #-3.0 \sharp } } }
	  r8 g[ g g]
	| d'4^\turnSharp r8 d[ d d]
	| es4 es es
	| d^\turnSharp r8 g,[ g g]
	| as'4 as as
	| g^\turnSharp r8 c[(-\p-. c-. c])-.
	| c4( b8) c(-. c-. c)-.
	| c4( b8) as(-.-\markup { \italic "cresc. e rall." } as-. as)-.
	| as4( g8) as(-. as-. as)-.
	| as4( g8) f(-. f-. f)-.

% 140
	| f4( d8) f(-. f-. f)-.
	| f4( d8) r-\fermata \set doubleSlurs = ##t <d, d'>4(
	| <e cis'>2) <d d'>4(
	| <e cis'>) \set doubleSlurs = ##f r8-\fermata c''![-. c-. c]-.
	| c4( a8) c(-. c-. c)-.
	| c4( a8) r r4-\fermata
	| R2.-\markup { \italic "a tempo" }
	| R2.*8
	| <d,, d'>4.(-\f bes'8[)-. a-. g]-.
	| fis( a) d,4 r
	| <d d'>4.( bes'8[)-. a-. g]-.
	| g'( fis) fis4 r
	| g4 f! es

% 160
	| d c(-. bes)-.
	| es( d) fis,-.
	| g4.( d8[)-. bes-. g]-.
	| g'4 r r
	| g4.( es8[)-. c-. g]-.
	| g'4 r r
	| as4.-\sf f8[(-. d-. c])-.
	| c( b) b4 r8 g'
	| g4 \lowerText f8(-\prall-\dimText e f4 ~
	| f) es!8(-\prall d es4 ~

% 170
	| es) d8(-\prall cis d4 ~
	| d) g'-\p g
	| g2.(
	| fis4)-\crescText d( e)
	| fis2( g4)
	| a( fis8.) es!16-. c4
	| bes'4( g8. d16)-. bes4
	| es8.[(-\p c16) bes8.(-\( d16) c8.( a16])-\)
	| g'4(-\> d)-\! r
	| \once \override DynamicText #'transparent = ##t % For MIDI output
	  bes8.(-\p-\trill c16)-. d4 r

% 180
	| R2.
	| g4(-\> bes,)-\! r
	| \once \override DynamicText #'transparent = ##t % For MIDI output
	  g8.(-\p-\trill a16)-. bes4 r
	| R2.
	| r4 r8 d[(-\p bes g)]
	| es4 r8 bes'[( g es)]
	| cis4 r8 g'8[( e cis)]
	| d8-. r d(-. r d)-. r
	| g,4 r8 d'''[(-\f bes g)]
	| es!4 r8 bes'[( g es)]

% 190
	| cis4 r8 g'[( e cis)]
	| d8 r <d, d'> r <d d'> r
	| <g, g'>4 r r
    }

    \mark \markup { \musicglyph #"scripts.ufermata" }
    \bar ":|"
}
