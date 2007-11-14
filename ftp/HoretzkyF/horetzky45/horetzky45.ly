% Entered on Nov 10, 2007
\version "2.11.34"
%#(set-global-staff-size 17) 

\paper {
%	#(set-paper-size "a4")
%	#(set-paper-size "letter")
	left-margin = 0.75 \in
	line-width = 7.0 \in
	between-system-padding = #2.0
	between-system-space = #2.0
	ragged-last-bottom = ##t 
	ragged-bottom = ##f
}

\header {
	title = "Nº. 45. Rule Britannia."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 45. Rule Britannia."
 mutopiacomposer = "HoretzkyF"
 mutopiapoet = ""
 mutopiaopus = ""
 mutopiainstrument = "Classical Guitar"
 date = "unk"
 source = "Boije collection #268"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Stan Sanderson"
 moreInfo = "The Boije collection is found at http://www.muslib.se/ebibliotek/boije/"
 footer = "Mutopia-2007/11/14-1142"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Source & comments
%%	
%%  	Felix Horetzky was born in Horyszów Ruski, Poland, January 1, 1796.
%%	Little is known about he came to the guitar. He traveled to Vienna
%%	to study under master guitarrist, Mauro Giuliani. He traveled
%%  	extensively in Europe as a concert performer and teacher. He wrote
%%  	between 100 and 150 pieces for the guitar. He died in Edinburgh
%%  	on October 6, 1870.
%%
%%	This piece is from #268, "60 National Airs of Different Nations",
%%	in the Boije collection and is in the public domain.
%%	
%%	<http://www.muslib.se/ebibliotek/boije/>
%%	Publisher: Chappell (London), no date given.
%%
%%	Carl Boije (1849-1923) was an amateur guitarist whose vast collection
%%	was donated to the State Library of Sweden after his death.
%%
%%	The dynamic markings for the most part follow the original score; obvious
%%	notation errors have been corrected.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "english.ly"

%%%% shortcuts

dol = \markup { \smaller\italic "dolce."}
cres = \markup{\smaller\italic"cresc:"}
cress = \markup{\tiny\smaller\italic"cresc:"}
espr = \markup{\smaller\italic"espres:"}
rit = \markup{\smaller\italic"ritard:"}
atem = \markup{\smaller\italic"a tempo:"}
smz = \markup{\smaller\italic"smorz:"} % smorzando
showTup = { \override TupletNumber #'transparent = ##f
		\override TupletBracket #'transparent = ##f }
hideTup = { \override TupletNumber #'transparent = ##t
		\override TupletBracket #'transparent = ##t }
seg = \markup {\smaller \smaller \musicglyph #"scripts.segno"}
cod = \markup {\smaller \vcenter "to" \hspace #0.7 \smaller \vcenter \musicglyph #"scripts.coda"}
toseg = \markup { \bold \vcenter "to" \hspace #0.7 \vcenter \smaller \musicglyph #"scripts.segno" }
fin = \markup {\smaller \smaller \bold \italic "Fine."}		
I = \once \override NoteColumn #'ignore-collision = ##t
sdu = \once \override Stem #'direction = #UP
sdd = \once \override Stem #'direction = #DOWN

%% End shortcuts


%%%%%%%%%%
%% Reminders
%
%    \once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
%    \once \override TextScript #'extra-offset = #'( 0.8 . -2.3 )
%    \once \override Stem #'length-fraction = #0.8
%    \once \override Beam #'positions = #'(-2.2 . -3.0)
%
%%%%%%%%%%

upper = \relative c''{
	\set Staff.instrumentName=\markup{ \center-align 
	{\smaller\bold "Nº. 45.  " \smaller\smaller\italic "MAESTOSO.  " 
	}}
	\partial 4*1 g4 |
	<c g e> <c a f> c16 d e f g8 <c, a> |
	<d c>4 d8[ e16 f] <e c>4 r8 g, |
	c16( d) c( d) e( f) e( f) <g d>8[ <d g,> <e g,> d] |
	<c a>8[ d16 e] d8 c b4 r |
	g8 g d' b g'[ fs16 e] d c b a |
	g4 b8. a16 g4 r |
	c4 c8. g16 <a f>8 f r <c'a> |
	<f d a>8. <e c a>16 <d a>8 <c a> <b g>4 r8 d |
	<g c,>4 <f d> <<{e8 f}\\
	{\override Beam #'positions = #'(-2.0 . -2.7)
		c16[ g] b[ g]}>> <g' c,>8 c, |
	g4 e'8. d16 c8 r r4 |
	<e c>4 r8 <e c a>8 <f c a> <f c a> r <f c a> |
	<f d a>8. <e c a>16 d8 c <b g>4 r |
	<g' c,> f e16 d e f g a b c |
	<e, c>4 <d b> <c g e>	
}


lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)
	\partial 4*1 r4 |
	 \once \override DynamicText #'extra-offset = #'(-2.5 . 2.5)
	 c_\f c <g' e c> <c g e,>8 <e, a,> |
	 f[ d] <g b,>[ g,] <g' c,> c,[ g' f] |
	 <g e>[ <g e>] <g c,>[ <g c>] b, b c <gs' e> |
	 \once \override DynamicText #'extra-offset = #'(-2.7 . 2.5)
	 a,4_\sf \once \override DynamicText #'extra-offset = #'(-2.7 . 1.5)
	 	<fs' d>_\sf <g g,>8 a,16 b c_\< d e fs\! |
	\once \override DynamicText #'extra-offset = #'(-2.0 . 1.7)
	g,4_\f fs e r8 c' |
	d4 <fs d> <b, g>8 g'16 a g f e d |
	\once \override DynamicText #'extra-offset = #'(-2.0 . 1.5)
	<g e c>4_\p <g e c>8 e, f4 r8 e' |
	d8[ e] f[ fs] r16 g, b d g a f g |
	<g e> d e c <g' b,> a, b g c8[ d] <g e>[ <a f>] |
	<e g,>4 <b' f g,>4 <e, c>8 b'16 a g f e d |
	\once \override DynamicText #'extra-offset = #'(-2.5 . 2.5)
	<g c,>4_\f r8 a, f f r f' |
	d[ e] <a f>[ <a fs>] r16 g, a b c d e f |
	\once \override DynamicText #'extra-offset = #'(-2.3 . 3.0)
	<g e>8_\f d16 c <b' g d>8 g, <c' g c,>4 <c g e,> |
	<g g,> <f g,> c
}

staffClassicalGuitar = \new Staff  {
		\time 4/4
		\key c \major
		\set Staff.connectArpeggios = ##t
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\new Voice = A { \voiceOne  \upper }
			\new Voice = C { \voiceFour  \lower }
		>>
		\bar "||"   %%  "|."
}

\score { 
		<<
			\staffClassicalGuitar
		>>
		}
		
\layout  {\context {
   \Staff
   \consists Span_arpeggio_engraver
 } }

\score {
	\unfoldRepeats
	\staffClassicalGuitar
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
