% Entered on Nov 6, 2007
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
	title = "Nº. 20. Fra Tante Angoscie."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 20. Fra Tante Angoscie."
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
 footer = "Mutopia-2007/11/17-1110"
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
	{\smaller\bold "Nº. 20  " \smaller\smaller\italic "Andantino " 
	\tiny\smaller\italic "Espressivo. "}}
	\set fingeringOrientations = #'(left)
		e4 d8 c |
		b8 a g4^> |
		c4 d8 e |
		<e-4>8 <f-4> <d-1>4^> |
		f e8 d |
		c b a4^> |
		g4 a8 <b g f>|
		\I d4 c8 r | \bar "||"
		
		d4 \I cs 8 d |
		e cs d4 |
		\I e c8 e | 
		d4 \I g8 r |
		d4 \I cs8 d |
		e cs d4 |
		\I ef <c ef,>8 <ef g,> |
		d g4^> f8 |
		
		e4 d8 c |
		b8 a g4^> |
		c4 d8 e |
		e8 f d4^> |
		f e8 d |
		c b a4^> |
		g4 a8 <b g f>|
		\I d4 c8 r |
}

middle = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)
	<e c>8[ <e c> <e c> <e c>]|
	<e c>8[ <e c> <e c> <e c>]|
	<e c>8[ <e c> <e c> <e c>]|
	<f-1 d-3>[ <f d> <f d> <f d>] |
	<f d>[ <f d> <f d> <f d>] |
	<f d>[ <f d> <f d> <fs d>] |
	d\rest <g f>[ f f] |
	s4 <e c>8 r
	
	\once \override Beam #'positions = #'(-2.6 . -2.4) f g 
	\once \override Stem #'direction = #UP g, g' |
	\once \override Beam #'positions = #'(-2.6 . -2.4) f g
		\once \override Beam #'positions = #'(-2.6 . -2.4) f g |
	
	
	\once \override Beam #'positions = #'(0.4 . 1.1) \sdu e  \sdu g s4 |
	\once \override Beam #'positions = #'(-2.6 . -2.4) f8 g 
	\once \override Stem #'direction = #UP g, g' |
	\once \override Beam #'positions = #'(-2.6 . -2.4) f g 
	\once \override Stem #'direction = #UP g, g' |
	\once \override Beam #'positions = #'(-2.6 . -2.4) f g
	\once \override Beam #'positions = #'(-2.6 . -2.4) f g |
	\once \override Beam #'positions = #'(0.4 . 1.2) \sdu ef \sdu g
	 s4 |
	g8\rest s s s |
	
	\override Stem #'direction = #DOWN
	<e c>8[ <e c> <e c> <e c>]|
	<e c>8[ <e c> <e c> <e c>]|
	<e c>8[ <e c> <e c> <e c>]|
	<f d>[ <f d> <f d> <f d>] |
	<f d>[ <f d> <f d> <f d>] |
	<f d>[ <f d> <f d> <fs d>] |
	d\rest <g f>[ f f] |
	s4 <e c>8 r
}

lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)
	s2*6
	g2 |
	<<{\override Stem #'length-fraction = #0.7 g8 
		\once \override Stem #'direction = #DOWN <g' f>}\\{g,4 }>> s4 |
	
	b g |
	g b|
	c <e c> |
	b g |
	b g|
	g b |
	c c |
	g8[ <g' g,> <a a,> <g b,>] |
	
	s2*6
	g,2 |
	<<{\override Stem #'length-fraction = #0.7 g8 
		\once \override Stem #'direction = #DOWN <g' f>}\\{g,4 }>> s4 |
}

staffClassicalGuitar = \new Staff  {
		\time 2/4
		\key c \major
		\set Staff.connectArpeggios = ##t
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\new Voice = A { \voiceOne  \upper }
			\new Voice = B { \voiceTwo  \middle }			
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
			tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
