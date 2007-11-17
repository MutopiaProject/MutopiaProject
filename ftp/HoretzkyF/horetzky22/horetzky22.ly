% Entered on Nov 7, 2007
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
	title = "Nº. 22. Dutch Air."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 22. Dutch Air."
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
 footer = "Mutopia-2007/11/17-1112"
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
rit = \markup{\smaller\italic"ritart:"}
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
	{\smaller\bold "Nº. 22  " \smaller\smaller\italic "MAESTOSO " 
	}}
	\partial 4*1 g4 |
	<c e,> <c e,> <e g,> <d f,> |
	<c e,> <b g>8. <a f>16 <g e>4 c |
	<b g> <c g> <f b,> <e c> |
	<e c> <d b> <d b> g, |
	<c e,> c <e g,> <d g,> |
	c4. b8 <a fs>4 b8 c |
	<d b>[ <e c> <fs a,> <g b,>] <b, g>4 <a fs> |
	g2 b4\rest \bar "||"
	
	g4 |
	<f' d>4. <e c>8 <d b>4. <d b>8 |
	<e c>4. <d b>8 <c e,>4 c8 e |
	g4 g e c |
	<e c> <d b> r g, |
	c c e8[ d c8. b16] |
	a4 a <f' a,>4. <d a>8 |
	c4 c b8.[ c16 d8. b16] |
	<c a>2 <d b> |
	<e c>4 c8. e16 g4 <b,g> |
	c2 b4\rest
}


lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)
	\partial 4*1 b4\rest |
	\once \override DynamicText #'extra-offset = #'(-2.2 . 2.0)
	c2_\f c |
	c c4 b\rest |
	f' e_\< d c\! |
	\once \override DynamicText #'extra-offset = #'(-2.2 . 2.0)
	g2_\f g4 b\rest |
	c <e e,>8 g, c4 b |
	<fs' a,> <g g,> d8[ c <g' b,> <a a,>] |
	g,4 b\rest d d |
	<b g> d8 b g4
	
	b\rest |
	\once \override DynamicText #'extra-offset = #'(-1.7 . 1.3)
	g'_\p g g g |
	g g <e c> \once \override DynamicText #'extra-offset = #'(-2.2 . 2.0)
		c8_\f e |
	g4 g e c |
	g'8 fs g4 b,\rest b\rest |
	\once \override DynamicText #'extra-offset = #'(-2.2 . 1.5)
	<g' e c>2_\f <g c,>4 <g e,> |
	<f f,> f d4. f8 |
	g2 <f g,> |
	\once \override DynamicText #'extra-offset = #'(-2.9 . 2.1) <e a,>_\sf 
	\once \override DynamicText #'extra-offset = #'(-2.9 . 2.7) <f g,>_\sf |
	<g c,>4 b,\rest b\rest <f' g,> |
	<g e c>2 b,4\rest
	
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
%%	\unfoldRepeats
	\staffClassicalGuitar
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 90 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
