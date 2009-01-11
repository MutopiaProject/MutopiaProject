\version "2.10.20"
\include "definitions.ly"

%Temporary line and page break definitions - only needed when entering music.
%mBreak = { \break }
%nBreak = { \noBreak }
%turnPage = { \pageBreak }
%noTurnPage = { \noPageBreak }

%Include line and page breaks as per original score for the score only.
%The tags will remove the breaks from the instrumental parts.
mBreak = { \tag #'score \break }
nBreak = { \tag #'score \noBreak }
turnPage = { \tag #'score \pageBreak }
noTurnPage = { \tag #'score \noPageBreak }

%End of line check and no line break - to save awkward typing.
endline = | { \nBreak }

global = { }

\header {
  title = \markup \center-align { "Brandenburg Concerto No. 1" }
  subtitle = \markup \center-align { "II - Adagio."}
  composer = \markup { "Johann Sebastian Bach" }
  mutopiatitle = "Brandenburg Concerto No. 1 (Second Movement - Adagio)"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1046"
  mutopiainstrument = "Ensemble: Oboe, Fagotto, Violino piccolo, Violino, Viola, Violoncello, Violone grosso, Continuo"
  date = "1717-1721?"
  source = "Rust, 1871. Bach Gesellschaft Volume 19"
  style = "Baroque"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Ben Stewart"
  maintainerEmail = "benjamin.james.stewart@gmail.com"
 footer = "Mutopia-2008/10/29-1577"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
  }

%Formatting parameters.
\paper {
	between-system-space = 0.5\cm
	between-system-padding = #0.5
	%annotate-spacing = ##t
	page-top-space = #1.5
	head-separation = #1.5
	foot-separation = #1.5
	bottom-margin = #2
	top-margin = #2
	#( set-paper-size "a4" )
	}

CornoOneNotes = \new Voice { \relative c'' {
	\clef treble
	\key c \major  
	\time 3/4
	\transposition f

		%{ Bar 1 %} R1*3/4*39 | \bar "||"

	}}
		
CornoTwoNotes = \new Voice { \relative c'' {
	\clef treble
	\key c \major  
	\time 3/4
	\transposition f
		
		%{ Bar 1 %} R1*3/4*39 | \bar "||"
	
	}}


OboeOneNotes = \new Voice { \relative c' {
	\key f \major
	\time 3/4
	\clef treble
		
		%{ Bar 1 %} a''4~ a8 bes16 (a g f e g32 f='') | \nBreak
		%{ Bar 2 %} g4~ g8 a16 (bes a g f g32 e='') | \nBreak
		%{ Bar 3 %} f32 (g f e d16 e32 cis d8. cis32 d d16. \trill cis32 d e cis=''16 | \nBreak
		%{ Bar 4 %} cis8. \trill ) bes'16 a (g32 f e d cis d) e16 (f32 g f16 g32 e='') | \nBreak
		%{ Bar 5 %} f8 \p (f f f f f='') | \nBreak
		\mBreak

		%{ Bar 6 %} fis8 (fis fis fis fis fis='') | \nBreak
		%{ Bar 7 %} g8 (g g g g g='') | \nBreak
		%{ Bar 8 %} a=''4 r4 r4 | \nBreak
		%{ Bar 9 %} g8 (fis) g=''4 r4 | \nBreak
		%{ Bar 10 %} g8 (f) g=''4 r4 | \nBreak
		\mBreak

		%{ Bar 11 %} g8 (f) g=''4 r4 | \nBreak
		%{ Bar 12 %} f4~ \f f16 g (f e d c b d32 c='') | \nBreak
		%{ Bar 13 %} d4~ d8 e16 (f e d c d32 b=') | \nBreak
		%{ Bar 14 %} c32 (d c b a b gis a) a4~ \trill a16 gis (a b32 gis=') | \nBreak
		%{ Bar 15 %} gis8. \trill f'16 (e d32 c b a gis a b16 c32 d c16 d32 b=') | \nBreak
		\mBreak

		%{ Bar 16 %} c4.~ (b8) bes8 (a=') | \nBreak
		%{ Bar 17 %} a4 a'=''2~ | \nBreak
		%{ Bar 18 %} a16 gis a (fis) g (e) f (dis) e=''4~ | \nBreak
		%{ Bar 19 %} e8 f b,4. a='8 | \nBreak
		%{ Bar 20 %} a4 c8 \p (b) c=''4 | \nBreak
		\mBreak

		%{ Bar 21 %} r4 cis8 (b) c=''4 | \nBreak
		%{ Bar 22 %} r4 d8 (cis) d=''4 | \nBreak
		%{ Bar 23 %} r4 bes'4~ \f (bes16 c bes a='' | \nBreak
		%{ Bar 24 %} g16 f e g32 f) g4~ g8 a16 (bes='' | \nBreak
		%{ Bar 25 %} a16 g f g32 e) f16 (g f e d e cis d='') | \nBreak
		\mBreak

		%{ Bar 26 %} e8 a, a'16 (bes32 a g f e d cis16 d32 e d16 e32 cis='' | \nBreak
		%{ Bar 27 %} d8. ) ees16 (d c32 bes a g fis g a16 bes32 c bes16 c32 a=') | \nBreak
		%{ Bar 28 %} bes4. (a8) aes (g=') | \nBreak
		%{ Bar 29 %} g4 g'4~ g16 e (f d='') | \nBreak
		%{ Bar 30 %} ees16 (cis d e) cis4. \trill d=''8 | \nBreak
		%{ Bar 31 %} d8 \p (cis) d=''4 r4 | \nBreak
		\mBreak

		%{ Bar 32 %} d8 (c) d=''4 r4 | \nBreak
		%{ Bar 33 %} d8 (c) d=''4 r4 | \nBreak
		%{ Bar 34 %} bes'4~ bes32 a (g f e d cis d e a, b cis d e f g64 e='') | \nBreak
		%{ Bar 35 %} f8. g16 cis,4. d=''8 | \nBreak
		%{ Bar 36 %} r4 bes='4 \p r4 | \nBreak
		%{ Bar 37 %} r4 a='4 r4 | \nBreak
		%{ Bar 38 %} r4 d=''4 r4 | \nBreak
		%{ Bar 39 %} cis=''2. \f \fermata \bar "||"

	}}

OboeTwoNotes = \new Voice { \relative c' {
	\key f \major
	\time 3/4
	\clef treble

		%{ Bar 1 %} e'=''4_\markup {"Adagio e sempre piano."} r4 r4 | \nBreak
		%{ Bar 2 %} cis=''4 r4 r4 | \nBreak
		%{ Bar 3 %} b='4 r4 r4 | \nBreak
		%{ Bar 4 %} a4 a8 b cis=''4 | \nBreak
		%{ Bar 5 %} d8 (d d d d d='') | \nBreak
		\mBreak

		%{ Bar 6 %} d8 (d d d d d='') | \nBreak
		%{ Bar 7 %} e8 (e e e e e='') | \nBreak
		%{ Bar 8 %} fis=''4 r4 r4 | \nBreak
		%{ Bar 9 %} d8 (c) d=''4 r4 | \nBreak
		%{ Bar 10 %} d8 (c) d=''4 r4 | \nBreak
		\mBreak

		%{ Bar 11 %} ees8 (d) ees=''4 r4 | \nBreak
		%{ Bar 12 %} d=''4 r4 r4 | \nBreak
		%{ Bar 13 %} b='4 r4 r4 | \nBreak
		%{ Bar 14 %} a='4 r4 r4 | \nBreak
		%{ Bar 15 %} b8 gis a4 d,='4 | \nBreak
		\mBreak

		%{ Bar 16 %} a'='4 r4 r4 | \nBreak
		%{ Bar 17 %} d4 c=''2 | \nBreak
		%{ Bar 18 %} a4 b e,=' | \nBreak
		%{ Bar 19 %} d4 d d=' | \nBreak
		%{ Bar 20 %} c4 a'8 (gis) a='4 | \nBreak
		\mBreak

		%{ Bar 21 %} r4 a8 (g) a='4 | \nBreak
		%{ Bar 22 %} r4 a8 (g) a='4 | \nBreak
		%{ Bar 23 %} r4 g'=''4 r4 | \nBreak
		%{ Bar 24 %} r4 e=''4 r4 | \nBreak
		%{ Bar 25 %} r4 d=''4 r4 | \nBreak
		\mBreak

		%{ Bar 26 %} cis=''4 r4 r4 | \nBreak
		%{ Bar 27 %} f4 bes, a=' | \nBreak
		%{ Bar 28 %} g='4 r4 r4 | \nBreak
		%{ Bar 29 %} b4 e8 (cis) d (a=') | \nBreak
		%{ Bar 30 %} bes8 (d) a4 a=' | \nBreak
		%{ Bar 31 %} a8 (g) a='4 r4 | \nBreak
		\mBreak

		%{ Bar 32 %} a8 (g) a='4 r4 | \nBreak
		%{ Bar 33 %} bes8 (a) bes='4 r4 | \nBreak
		%{ Bar 34 %} g='2 r4 | \nBreak
		%{ Bar 35 %} d'8 \f (bes) a4 g=' \trill | \nBreak
		%{ Bar 36 %} r4 f='4 \p r4 | \nBreak
		%{ Bar 37 %} r4 e='4 r4 | \nBreak
		%{ Bar 38 %} r4 g='4 r4 | \nBreak
		%{ Bar 39 %} a='2. \f \fermata \endline \bar "||"


	}}

OboeThreeNotes = \new Voice { \relative c' {
	\key f \major
	\time 3/4
	\clef treble

		%{ Bar 1 %} cis'=''4 -\tag #'OboeThreePart _\markup {"Adagio e sempre piano."} r4 r4 \endline
		%{ Bar 2 %} e,='4 r4 r4 \endline
		%{ Bar 3 %} gis='4 r4 r4 \endline
		%{ Bar 4 %} e4 f g=' \endline
		%{ Bar 5 %} a8 (a a a a a=') \endline
		\mBreak

		%{ Bar 6 %} a8 (a a a a a=') \endline
		%{ Bar 7 %} g8 (g g g g g=') \endline
		%{ Bar 8 %} d'=''4 r4 r4 \endline
		%{ Bar 9 %} bes8 (a) bes='4 r4 \endline
		%{ Bar 10 %} b8 (a) b='4 r4 \endline
		\mBreak

		%{ Bar 11 %} c8 (b) c=''4 r4 \endline
		%{ Bar 12 %} b='4 r4 r4 \endline
		%{ Bar 13 %} gis='4 r4 r4 \endline
		%{ Bar 14 %} e='4 r4 r4 \endline
		%{ Bar 15 %} e4 e8 fis gis='4 \endline
		\mBreak

		%{ Bar 16 %} e='4 r4 r4 \endline
		%{ Bar 17 %} f4 a='2 \endline
		%{ Bar 18 %} fis4 d a'=' \endline
		%{ Bar 19 %} f4 e e=' \endline
		%{ Bar 20 %} e4 e8 (d) e='4 \endline
		\mBreak

		%{ Bar 21 %} r4 e8 (d) e='4 \endline
		%{ Bar 22 %} r4 f8 (e) f='4 \endline
		%{ Bar 23 %} r4 d'=''4 r4 \endline
		%{ Bar 24 %} r4 a=' r4 \endline
		%{ Bar 25 %} r4 b='4 r4 \endline
		\mBreak

		%{ Bar 26 %} a='4 r4 r4 \endline
		%{ Bar 27 %} a4 g d=' \endline
		%{ Bar 28 %} d='4 r4 r4 \endline
		%{ Bar 29 %} d4 g8 (e) a='4 \endline
		%{ Bar 30 %} g8 (f) e4 e=' \endline
		%{ Bar 31 %} f8 (e) f='4 r4 \endline
		\mBreak

		%{ Bar 32 %} fis8 (e) fis='4 r4 \endline
		%{ Bar 33 %} g8 (fis) g='4 r4 \endline
		%{ Bar 34 %} e='2 r4 \endline
		%{ Bar 35 %} a8 \f (g) f8 (d) e='4 \endline
		%{ Bar 36 %} r4 d='4 \p r4 \endline
		%{ Bar 37 %} r4 c='4 r4 \endline
		%{ Bar 38 %} r4 bes'='4 r4 \endline
		%{ Bar 39 %} e,='2. \f \fermata \bar "||"


	}}

FagottoNotes = \new Voice { \relative c' {
	\key f \major
	\time 3/4
	\clef bass

		%{ Bar 1 %} a,=,4 _\markup {"Adagio e piano."} r4 r4 \endline
		%{ Bar 2 %} a=,4 r4 r4 \endline
		%{ Bar 3 %} a=,4 r4 r4 \endline
		%{ Bar 4 %} g8 (g f f e e=,) \endline
		%{ Bar 5 %} d=,4 r4 r4 \endline
		\mBreak

		%{ Bar 6 %} d'= 4 r4 r4 \endline
		%{ Bar 7 %} d= 4 r4 r4 \endline
		%{ Bar 8 %} c8 (c bes bes a a=,) \endline
		%{ Bar 9 %} g'4~ g8 aes16 (g f ees d f32 ees= ) \endline
		%{ Bar 10 %} f4~ f8 g16 (aes g f ees f32 d= ) \endline
		\mBreak

		%{ Bar 11 %} ees4~ ees16 f (ees d c d b c) \endline
		%{ Bar 12 %} gis8 (gis gis gis gis gis=,) \endline
		%{ Bar 13 %} e8 (e e e e e=,) \endline
		%{ Bar 14 %} e8 (e dis dis dis dis=,) \endline
		%{ Bar 15 %} d'8 (d c c b b=,) \endline
		\mBreak

		%{ Bar 16 %} a8 (a b b cis cis= ) \endline
		%{ Bar 17 %} d8 (d e e fis fis= ) \endline
		%{ Bar 18 %} c8 (c b b a a=,) \endline
		%{ Bar 19 %} d, (d e e e e=,) \endline
		%{ Bar 20 %} a'4~ a8 bes16 (a g f e g32 f= ) \endline
		\mBreak

		%{ Bar 21 %} g4~ g8 a16 (bes a g f g32 e= ) \endline
		%{ Bar 22 %} f4~ f16 g (f e d e cis d= ) \endline
		%{ Bar 23 %} g,8 (g g g g g=,) \endline
		%{ Bar 24 %} e8 (e cis' cis a a=, ) \endline
		%{ Bar 25 %} d8 (d gis, gis gis gis=, ) \endline
		\mBreak

		%{ Bar 26 %} g'8 (g f f e e= ) \endline
		%{ Bar 27 %} d8 (d e e fis fis= ) \endline
		%{ Bar 28 %} g8 (g a a b b= ) \endline
		%{ Bar 29 %} f8 (f e e d d= ) \endline
		%{ Bar 30 %} g8 (g a a a, a=, ) \endline
		%{ Bar 31 %} d4~ d8 ees16 (d c bes a c32 bes=, ) \endline
		\mBreak

		%{ Bar 32 %} c4~ c8 d16 (ees d c bes c32 a=,) \endline
		%{ Bar 33 %} bes4~ bes16 c (bes a g a fis g=,) \endline
		%{ Bar 34 %} cis,=,2 r4 \endline
		%{ Bar 35 %} d8 \f g (a a a a=,) \endline
		%{ Bar 36 %} d= 4 \p r4 r4 \endline
		%{ Bar 37 %} c= r4 r4 \endline
		%{ Bar 38 %} bes=, r4 r4 \endline
		%{ Bar 39 %} a=,2. \f \fermata \bar "||"

	}}

%Violino Piccolo part is transposed so that it can be played on a violin.

ViolinoPiccoloNotes = \new Voice { \transpose c ees { \relative c' {
	\key d \major
	\time 3/4
	\clef treble
		%{ Bar 1 %} ais'8 (ais ais ais ais ais=') \endline
		%{ Bar 2 %} ais8 (ais ais ais ais ais=') \endline
		%{ Bar 3 %} b8 (b b b b b=') \endline
		%{ Bar 4 %} cis=''4 r4 r4 \endline
		%{ Bar 5 %} b'4~ \f b8 c16 (b a g fis a32 g='') \endline
		\mBreak

		%{ Bar 6 %} a4~ a8 b16 (c b a g a32 fis='') \endline
		%{ Bar 7 %} g32 (a g fis e16 fis32 dis e8. dis32 e e16. \trill dis32 e fis dis=''16 \endline
		%{ Bar 8 %} dis8. \trill ) c'16 b (a32 g fis e dis e fis16 g32 a g16 a32 fis='') \endline
		%{ Bar 9 %} g4 g,8 \p (fis) g='4 \endline
		%{ Bar 10 %} r4 gis8 (fis) gis='4 \endline
		\mBreak

		%{ Bar 11 %} r4 a8 (gis) a='4 \endline
		%{ Bar 12 %} r4 d4~ \f d16 e (d cis='' \endline
		%{ Bar 13 %} b16 a gis b32 a) b4~ b8 cis16 (d='' \endline
		%{ Bar 14 %} cis16 b a b32 gis) a16 (b a gis fis gis eis fis=') \endline
		%{ Bar 15 %} gis8 cis, cis'16 (d32 cis b a gis fis eis16 fis32 gis fis16 gis32 eis=' \endline
		\mBreak

		%{ Bar 16 %} fis8.) g'16 fis (e32 d cis b ais b cis16 d32 e d16 e32 cis='') \endline
		%{ Bar 17 %} d4. (cis8) c (b=') \endline
		%{ Bar 18 %} b4 b'~ b16 (gis) a (fis='') \endline
		%{ Bar 19 %} g16 eis fis gis eis4. \trill fis=''8 \endline
		%{ Bar 20 %} fis8 \p (eis) fis=''4 r4 \endline
		\mBreak

		%{ Bar 21 %} fis8 (e) fis=''4 r4 \endline
		%{ Bar 22 %} fis8 (e) fis=''4 r4 \endline
		%{ Bar 23 %} g4~ \f g16 a (g fis e d cis e32 d='') \endline
		%{ Bar 24 %} e4~ e8 fis16 (g fis e d e32 cis='') \endline
		%{ Bar 25 %} d32 (e d cis b cis ais b) b4~ b16 (ais b cis32 ais=') \endline
		\mBreak

		%{ Bar 26 %} ais8. \trill g'16 fis (e32 d cis b ais b cis16 d32 e d16 e32 cis='') \endline
		%{ Bar 27 %} d4. (cis8) c (b=') \endline
		%{ Bar 28 %} b4 b'=''2~ \endline
		%{ Bar 29 %} b16 ais b (gis?) a (fis) g? (eis) fis=''4~ \endline
		%{ Bar 30 %} fis8 g cis,4. \trill b='8 \endline
		%{ Bar 31 %} b4~ d8 \p (cis) d=''4 \endline
		\mBreak

		%{ Bar 32 %} r4 dis8 (cis) dis=''4 \endline
		%{ Bar 33 %} r4 e8 (dis) e=''4 \endline
		%{ Bar 34 %} e=''2 r4 \endline
		%{ Bar 35 %} fis,8. \f g16 d4 (cis8. \trill) b= 16 \endline
		%{ Bar 36 %} r4 r4 eis='4 \p \endline
		%{ Bar 37 %} r4 r4 dis'=''4 \endline
		%{ Bar 38 %} r4 r4 eis=''4 \endline
		%{ Bar 39 %} fis=''2. \f \fermata \bar "||"


	}}
}


ViolinoPiccoloOriginalNotes = \new Voice { \relative c' {
	\key d \major
	\time 3/4
	\clef treble

		%{ Bar 1 %} ais'8 (ais ais ais ais ais=') \endline
		%{ Bar 2 %} ais8 (ais ais ais ais ais=') \endline
		%{ Bar 3 %} b8 (b b b b b=') \endline
		%{ Bar 4 %} cis=''4 r4 r4 \endline
		%{ Bar 5 %} b'4~ \f b8 c16 (b a g fis a32 g='') \endline
		\mBreak

		%{ Bar 6 %} a4~ a8 b16 (c b a g a32 fis='') \endline
		%{ Bar 7 %} g32 (a g fis e16 fis32 dis e8. dis32 e e16. \trill dis32 e fis dis=''16 \endline
		%{ Bar 8 %} dis8. \trill ) c'16 b (a32 g fis e dis e fis16 g32 a g16 a32 fis='') \endline
		%{ Bar 9 %} g4 g,8 \p (fis) g='4 \endline
		%{ Bar 10 %} r4 gis8 (fis) gis='4 \endline
		\mBreak

		%{ Bar 11 %} r4 a8 (gis) a='4 \endline
		%{ Bar 12 %} r4 d4~ \f d16 e (d cis='' \endline
		%{ Bar 13 %} b16 a gis b32 a) b4~ b8 cis16 (d='' \endline
		%{ Bar 14 %} cis16 b a b32 gis) a16 (b a gis fis gis eis fis=') \endline
		%{ Bar 15 %} gis8 cis, cis'16 (d32 cis b a gis fis eis16 fis32 gis fis16 gis32 eis=' \endline
		\mBreak

		%{ Bar 16 %} fis8.) g'16 fis (e32 d cis b ais b cis16 d32 e d16 e32 cis='') \endline
		%{ Bar 17 %} d4. (cis8) c (b=') \endline
		%{ Bar 18 %} b4 b'~ b16 (gis) a (fis='') \endline
		%{ Bar 19 %} g16 eis fis gis eis4. \trill fis=''8 \endline
		%{ Bar 20 %} fis8 \p (eis) fis=''4 r4 \endline
		\mBreak

		%{ Bar 21 %} fis8 (e) fis=''4 r4 \endline
		%{ Bar 22 %} fis8 (e) fis=''4 r4 \endline
		%{ Bar 23 %} g4~ \f g16 a (g fis e d cis e32 d='') \endline
		%{ Bar 24 %} e4~ e8 fis16 (g fis e d e32 cis='') \endline
		%{ Bar 25 %} d32 (e d cis b cis ais b) b4~ b16 (ais b cis32 ais=') \endline
		\mBreak

		%{ Bar 26 %} ais8. \trill g'16 fis (e32 d cis b ais b cis16 d32 e d16 e32 cis='') \endline
		%{ Bar 27 %} d4. (cis8) c (b=') \endline
		%{ Bar 28 %} b4 b'=''2~ \endline
		%{ Bar 29 %} b16 ais b (gis?) a (fis) g? (eis) fis=''4~ \endline
		%{ Bar 30 %} fis8 g cis,4. \trill b='8 \endline
		%{ Bar 31 %} b4~ d8 \p (cis) d=''4 \endline
		\mBreak

		%{ Bar 32 %} r4 dis8 (cis) dis=''4 \endline
		%{ Bar 33 %} r4 e8 (dis) e=''4 \endline
		%{ Bar 34 %} e=''2 r4 \endline
		%{ Bar 35 %} fis,8. \f g16 d4 (cis8. \trill) b= 16 \endline
		%{ Bar 36 %} r4 r4 eis='4 \p \endline
		%{ Bar 37 %} r4 r4 dis'=''4 \endline
		%{ Bar 38 %} r4 r4 eis=''4 \endline
		%{ Bar 39 %} fis=''2. \f \fermata \bar "||"


	}}

ViolinoOneNotes = \new Voice { \relative c' {
	\key f \major
	\time 3/4
	\clef treble

		%{ Bar 1 %} cis'8 ^\markup {"piano sempre."} 
					(cis cis cis cis cis='') \endline
		%{ Bar 2 %} cis8 (cis cis cis cis cis='') \endline
		%{ Bar 3 %} d8 (d d d d d='') \endline
		%{ Bar 4 %} e=''4 r4 r4 \endline
		%{ Bar 5 %} d=''4 r4 r4 \endline
		\mBreak

		%{ Bar 6 %} d=''4 r4 r4 \endline
		%{ Bar 7 %} e=''4 r4 r4 \endline
		%{ Bar 8 %} fis4 g a='' \endline
		%{ Bar 9 %} bes4 bes,8 (a) bes='4 \endline
		%{ Bar 10 %} r4 b8 (a) b='4 \endline
		\mBreak

		%{ Bar 11 %} r4 c8 (b) c=''4 \endline
		%{ Bar 12 %} r4 f=''4 r4 \endline
		%{ Bar 13 %} r4 d=''4 r4 \endline
		%{ Bar 14 %} r4 c=''4 r4 \endline
		%{ Bar 15 %} b='4 r4 r4 \endline
		\mBreak

		%{ Bar 16 %} c=''4 d e='' \endline
		%{ Bar 17 %} f=''4 r4 r4 \endline
		%{ Bar 18 %} d=''4 d'4. c='''8 \endline
		%{ Bar 19 %} bes8 (a) gis4. \trill a=''8 \endline
		%{ Bar 20 %} a8 (gis) a=''4 r4 \endline
		\mBreak

		%{ Bar 21 %} a8 (g) a=''4 r4 \endline
		%{ Bar 22 %} a8 (g) a=''4 r4 \endline
		%{ Bar 23 %} bes=''4 r4 r4 \endline
		%{ Bar 24 %} g=''4 r4 r4 \endline
		%{ Bar 25 %} f=''4 r4 r4 \endline
		\mBreak

		%{ Bar 26 %} e4 f g='' \endline
		%{ Bar 27 %} f='' r4 r4 \endline
		%{ Bar 28 %} d4 d'='''2~ \endline
		%{ Bar 29 %} d4 c8 bes a=''4~ \endline
		%{ Bar 30 %} a8 bes e,4. \trill d=''8 \endline
		%{ Bar 31 %} d4 f8 (e) f=''4 \endline
		\mBreak

		%{ Bar 32 %} r4 fis8 (e) fis=''4 \endline
		%{ Bar 33 %} r4 g8 (fis) g=''4 \endline
		%{ Bar 34 %} g=''2 r4 \endline
		%{ Bar 35 %} a,8. \f bes16 f4 (e8.) d='16 \endline
		%{ Bar 36 %} r4 r4 gis='4 \p \endline
		%{ Bar 37 %} r4 r4 fis'=''4 \endline
		%{ Bar 38 %} r4 r4 gis=''4 \endline
		%{ Bar 39 %} a=''2. \f \fermata \bar "||"


	}}

ViolinoTwoNotes = \new Voice { \relative c' {
	\key f \major
	\time 3/4
	\clef treble

		%{ Bar 1 %} a'8 -\tag #'ViolinoTwoPart _\markup {"piano sempre."} 
					(a a a a a=') \endline
		%{ Bar 2 %} a8 (a a a a a=') \endline
		%{ Bar 3 %} b8 (b b b b b=') \endline
		%{ Bar 4 %} cis=''4 r4 r4 \endline
		%{ Bar 5 %} a='4 r4 r4 \endline
		\mBreak

		%{ Bar 6 %} fis='4 r4 r4 \endline
		%{ Bar 7 %} e='4 r4 r4 \endline
		%{ Bar 8 %} d4 d'8 e fis=''4 \endline
		%{ Bar 9 %} g4 g,8 (fis) g='4 \endline
		%{ Bar 10 %} r4 g8 (f) g='4 \endline
		\mBreak

		%{ Bar 11 %} r4 g8 (f) g='4 \endline
		%{ Bar 12 %} r4 d'=''4 r4 \endline
		%{ Bar 13 %} r4 b='4 r4 \endline
		%{ Bar 14 %} r4 a='4 r4 \endline
		%{ Bar 15 %} gis=' r4 r4 \endline
		\mBreak

		%{ Bar 16 %} c4 f e='' \endline
		%{ Bar 17 %} d=''4 r4 r4 \endline
		%{ Bar 18 %} a4 d8 (b) e=''4 \endline
		%{ Bar 19 %} d8 (c) b4 e='' \endline
		%{ Bar 20 %} e8 (d) e=''4 r4 \endline
		\mBreak

		%{ Bar 21 %} e8 (d) e=''4 r4 \endline
		%{ Bar 22 %} f8 (e) f=''4 r4 \endline
		%{ Bar 23 %} g=''4 r4 r4 \endline
		%{ Bar 24 %} cis,=''4 r4 r4 \endline
		%{ Bar 25 %} d=''4 r4 r4 \endline
		\mBreak

		%{ Bar 26 %} e8 (cis) d=''4 g,=' \endline
		%{ Bar 27 %} d'=''4 r4 r4 \endline
		%{ Bar 28 %} g4 f=''2 \endline
		%{ Bar 29 %} d4 e a,=' \endline
		%{ Bar 30 %} g4 g g=' \endline
		%{ Bar 31 %} f4 d'8 (cis) d=''4 \endline
		\mBreak

		%{ Bar 32 %} r4 d8 (c) d=''4 \endline
		%{ Bar 33 %} r4 d8 (c) d=''4 \endline
		%{ Bar 34 %} e=''2 r4 \endline
		%{ Bar 35 %} f,8 \f e f g a='4 \endline
		%{ Bar 36 %} r4 r4 e='4 \p \endline
		%{ Bar 37 %} r4 r4 ees'=''4 \endline
		%{ Bar 38 %} r4 r4 f8 (e='') \endline
		%{ Bar 39 %} e=''2. \f \fermata \bar "||"


	}}

ViolaNotes = \new Voice { \relative c' {
	\key f \major
	\time 3/4
	\clef alto

		%{ Bar 1 %} e8 (e e e e e=') \endline
		%{ Bar 2 %} e8 (e e e e e=') \endline
		%{ Bar 3 %} d8 (d d d d d=') \endline
		%{ Bar 4 %} a'='4 r4 r4 \endline
		%{ Bar 5 %} f='4 r4 r4 \endline
		\mBreak

		%{ Bar 6 %} a,= r4 r4 \endline
		%{ Bar 7 %} cis=' r4 r4 \endline
		%{ Bar 8 %} a'4 bes c='' \endline
		%{ Bar 9 %} d4 d,8 (c) d='4 \endline
		%{ Bar 10 %} r4 d8 (c) d='4 \endline
		\mBreak

		%{ Bar 11 %} r4 ees8 (d) ees='4 \endline
		%{ Bar 12 %} r4 b'='4 r4 \endline
		%{ Bar 13 %} r4 gis='4 r4 \endline
		%{ Bar 14 %} r4 fis='4 r4 \endline
		%{ Bar 15 %} e='4 r4 r4 \endline
		\mBreak

		%{ Bar 16 %} e4 d a'=' \endline
		%{ Bar 17 %} a=' r4 r4 \endline
		%{ Bar 18 %} fis4 b8 (gis) a (e=') \endline
		%{ Bar 19 %} f8 (a) e4 b'=' \endline
		%{ Bar 20 %} c8 (b) c=''4 r4 \endline
		\mBreak

		%{ Bar 21 %} cis8 (b) cis=''4 r4 \endline
		%{ Bar 22 %} d8 (cis) d=''4 r4 \endline
		%{ Bar 23 %} d=''4 r4 r4 \endline
		%{ Bar 24 %} bes='4 r4 r4 \endline
		%{ Bar 25 %} a='4 r4 r4 \endline
		\mBreak

		%{ Bar 26 %} a4 a8 (b) cis=''4 \endline
		%{ Bar 27 %} a='4 r4 r4 \endline
		%{ Bar 28 %} bes4 d=''2 \endline
		%{ Bar 29 %} b4 g d'='' \endline
		%{ Bar 30 %} bes4 a a=' \endline
		%{ Bar 31 %} a4 a8 (g) a='4 \endline
		\mBreak

		%{ Bar 32 %} r4 a8 (g) a='4 \endline
		%{ Bar 33 %} r4 bes8 (a) bes='4 \endline
		%{ Bar 34 %} bes='2 r4 \endline
		%{ Bar 35 %} d,8 \f d a b cis='4 \endline
		%{ Bar 36 %} r4 r4 b= 4 \p \endline
		%{ Bar 37 %} r4 r4 a'='4 \endline
		%{ Bar 38 %} r4 r4 d=''4 \endline
		%{ Bar 39 %} cis=''2. \f \fermata \bar "||"


	}}

VioloncelloNotes = \new Voice { \relative c' {
	\key f \major
	\time 3/4
	\clef bass

		%{ Bar 1 %} a,=,4 ^\markup {"Adagio e piano sempre."} 
					r4 r4 \endline
		%{ Bar 2 %} a=,4 r4 r4 \endline
		%{ Bar 3 %} a=,4 r4 r4 \endline
		%{ Bar 4 %} g'8 (g f f e e= ) \endline
		%{ Bar 5 %} d= 4 r4 r4 \endline
		\mBreak

		%{ Bar 6 %} d= 4 r4 r4 \endline
		%{ Bar 7 %} d= 4 r4 r4 \endline
		%{ Bar 8 %} c8 (c bes bes a a=,) \endline
		%{ Bar 9 %} g'4~ g8 aes16 (g f16 ees d f32 ees= ) \endline
		%{ Bar 10 %} f4~ f8 g16 (aes g f ees f32 d= ) \endline
		\mBreak

		%{ Bar 11 %} ees4~ ees16 f (ees d c d b c= ) \endline
		%{ Bar 12 %} gis8 (gis gis gis gis gis=, ) \endline
		%{ Bar 13 %} e8 (e e e e e=, ) \endline
		%{ Bar 14 %} e8 (e dis dis dis dis=, ) \endline
		%{ Bar 15 %} d'8 (d c c b b=, ) \endline
		\mBreak

		%{ Bar 16 %} a (a b b cis cis= ) \endline
		%{ Bar 17 %} d8 (d e e fis fis= ) \endline
		%{ Bar 18 %} c8 (c b b a a=, ) \endline
		%{ Bar 19 %} d,8 (d e e e e=, ) \endline
		%{ Bar 20 %} a'4~ a8 bes16 (a g f e g32 f= ) \endline
		\mBreak

		%{ Bar 21 %} g4~ g8 a16 (bes a g f g32 e= ) \endline
		%{ Bar 22 %} f4~ f16 g (f e d e cis d= ) \endline
		%{ Bar 23 %} g,8 (g g g g g=, ) \endline
		%{ Bar 24 %} e8 (e cis' cis a a=, ) \endline
		%{ Bar 25 %} d8 (d gis, gis gis gis=, ) \endline
		\mBreak

		%{ Bar 26 %} g'8 (g f f e e= ) \endline
		%{ Bar 27 %} d8 (d e e fis fis= ) \endline
		%{ Bar 28 %} g8 (g a a b b= ) \endline
		%{ Bar 29 %} f8 (f e e d d= ) \endline
		%{ Bar 30 %} g8 (g a a a, a=, ) \endline
		%{ Bar 31 %} d4~ d8 ees16 (d c bes a c32 bes=, ) \endline
		\mBreak

		%{ Bar 32 %} c4~ c8 d16 (ees d c bes c32 a=, ) \endline
		%{ Bar 33 %} bes4~ bes16 c (bes a g a fis g=, ) \endline
		%{ Bar 34 %} cis,=,2 r4 \endline
		%{ Bar 35 %} d8 \f g (a a a a=,) \endline
		%{ Bar 36 %} d= 4 \p r4 r4 \endline
		%{ Bar 37 %} c= 4 r4 r4 \endline
		%{ Bar 38 %} bes=,4 r4 r4 \endline
		%{ Bar 39 %} a=,2. \f \fermata \bar "||"


	}}

ContinuoNotes = \new Voice { \relative c' {
	\key f \major
	\time 3/4
	\clef bass

		%{ Bar 1 %} a,=,4 -\tag #'ContinuoPart _\markup {"Adagio e piano sempre."} 
					r4 r4 \endline
		%{ Bar 2 %} a=,4 r4 r4 \endline
		%{ Bar 3 %} a=,4 r4 r4 \endline
		%{ Bar 4 %} g'8 (g f f e e= ) \endline
		%{ Bar 5 %} d= 4 r4 r4 \endline
		\mBreak

		%{ Bar 6 %} d= 4 r4 r4 \endline
		%{ Bar 7 %} d= 4 r4 r4 \endline
		%{ Bar 8 %} c8 (c bes bes a a=,) \endline
		%{ Bar 9 %} << {g4} \\ {\tieUp g'4~ g8} >> aes16 (g f16 ees d f32 ees= ) \endline
		%{ Bar 10 %} f4~ f8 g16 (aes g f ees f32 d= ) \endline
		\mBreak

		%{ Bar 11 %} ees4~ ees16 f (ees d c d b c= ) \endline
		%{ Bar 12 %} gis8 (gis gis gis gis gis=, ) \endline
		%{ Bar 13 %} e8 (e e e e e=, ) \endline
		%{ Bar 14 %} e8 (e dis dis dis dis=, ) \endline
		%{ Bar 15 %} d'8 (d c c b b=, ) \endline
		\mBreak

		%{ Bar 16 %} a (a b b cis cis= ) \endline
		%{ Bar 17 %} d8 (d e e fis fis= ) \endline
		%{ Bar 18 %} c8 (c b b a a=, ) \endline
		%{ Bar 19 %} d,8 (d e e e e=, ) \endline
		%{ Bar 20 %} << {a4} \\ {\tieUp a'4~ a8} >> bes16 (a g f e g32 f= ) \endline
		\mBreak

		%{ Bar 21 %} g4~ g8 a16 (bes a g f g32 e= ) \endline
		%{ Bar 22 %} f4~ f16 g (f e d e cis d= ) \endline
		%{ Bar 23 %} g,8 (g g g g g=, ) \endline
		%{ Bar 24 %} e8 (e cis' cis a a=, ) \endline
		%{ Bar 25 %} d8 (d gis, gis gis gis=, ) \endline
		\mBreak

		%{ Bar 26 %} g'8 (g f f e e= ) \endline
		%{ Bar 27 %} d8 (d e e fis fis= ) \endline
		%{ Bar 28 %} g8 (g a a b b= ) \endline
		%{ Bar 29 %} f8 (f e e d d= ) \endline
		%{ Bar 30 %} g8 (g a a a, a=, ) \endline
		%{ Bar 31 %} d4~ d8 ees16 (d c bes a c32 bes=, ) \endline
		\mBreak

		%{ Bar 32 %} c4~ c8 d16 (ees d c bes c32 a=, ) \endline
		%{ Bar 33 %} bes4~ bes16 c (bes a g a fis g=, ) \endline
		%{ Bar 34 %} cis,=,2 r4 \endline
		%{ Bar 35 %} d8 \f g (a a a a=,) \endline
		%{ Bar 36 %} d= 4 \p r4 r4 \endline
		%{ Bar 37 %} c= 4 r4 r4 \endline
		%{ Bar 38 %} bes=,4 r4 r4 \endline
		%{ Bar 39 %} a=,2. \f \fermata \bar "||"


	}}


music =  {
	<<
		\tag #'score \tag #'CornoOnePart \new Staff { << 
			\set Staff.midiInstrument = "french horn"  
			\global \set Staff.instrumentName = \markup { 
				\center-align {
					 \hcenter-in # centerIndent  "Corno I." 
				}
		 	 } \CornoOneNotes >> 
		} 
		
		\tag #'score \tag #'CornoTwoPart \new Staff { << 
			\set Staff.midiInstrument = "french horn"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent  "Corno II." 
				}
		  	}\CornoTwoNotes >> 
		} 
		
		\tag #'score \tag #'OboeOnePart \new Staff { << 
			\set Staff.midiInstrument = "oboe"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent  "Oboe I." 
				}
			}\OboeOneNotes >> 
		} 

		\tag #'score \tag #'OboeTwoPart \new Staff { << 
			\set Staff.midiInstrument = "oboe"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Oboe II."
				}
			}\OboeTwoNotes >>
		 } 
	
		 \tag #'score \tag #'OboeThreePart \new Staff { << 
			\set Staff.midiInstrument = "oboe"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Oboe III."
				}
			}\OboeThreeNotes >>
		 } 

		\tag #'score \tag #'FagottoPart \new Staff { << 
			\set Staff.midiInstrument = "bassoon"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Fagotto."
				}
			}\FagottoNotes >>
		 } 

		\tag #'score \tag #'ViolinoPiccoloPart \new Staff { << 
			\set Staff.midiInstrument = "violin"  
			\global \set Staff.instrumentName = \markup {
				\column { 
					\center-align { \hcenter-in # centerIndent  "Violino" 
						\line { \hcenter-in # centerIndent "piccolo." }
					}
				} 
			}\ViolinoPiccoloNotes >>
		 } 

		\tag #'ViolinoPiccoloOriginalPart \new Staff { << 
			\set Staff.midiInstrument = "violin"  
			\global \set Staff.instrumentName = \markup {
				\column { 
					\center-align { \hcenter-in # centerIndent  "Violino" 
						\line { \hcenter-in # centerIndent "piccolo." }
						\line { \hcenter-in # centerIndent "(in Eb)" }
					}
				} 
			}\ViolinoPiccoloOriginalNotes >>
		 } 


		\tag #'score \tag #'ViolinoOnePart \new Staff { << 
			\set Staff.midiInstrument = "violin"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Violino I."
				}
			}\ViolinoOneNotes >>
		 } 

		\tag #'score \tag #'ViolinoTwoPart \new Staff { << 
			\set Staff.midiInstrument = "violin"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Violino II."
				}
			}\ViolinoTwoNotes >>
		 } 

		\tag #'score \tag #'ViolaPart \new Staff { << 
			\set Staff.midiInstrument = "viola"
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Viola."
				}
			}\ViolaNotes >>
		 } 

		\tag #'score \tag #'VioloncelloPart \new Staff { << 
			\set Staff.midiInstrument = "cello"
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Violoncello."
				}
			}\VioloncelloNotes >>
		 } 

		\tag #'score \tag #'ContinuoPart \new Staff { << 
			\set Staff.midiInstrument = "contrabass"
			\global  \set Staff.instrumentName = \markup { 
				\column { 
					\center-align { \hcenter-in # centerIndent  "Continuo" 
						\line { \hcenter-in # centerIndent "e Violone" }
						\line { \hcenter-in # centerIndent "grosso." }

					}
				} 
			} \ContinuoNotes >>
		}
	>>
	}
