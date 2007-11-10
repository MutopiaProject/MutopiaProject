% Entered on Nov 8, 2007
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
	title = "Nº. 33. Scots Wha Hae Wi' Wallace Bled."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 33. Scots Wha Hae Wi' Wallace Bled."
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
 footer = "Mutopia-2007/11/10-1123"
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
	{\smaller\bold "Nº. 33  " \smaller\smaller\italic "MAESTOSO. " 
	}}
	\repeat volta 2 {
		a8. a16 a8. fs16 |
		a8 b d4 |
		b8. b16 b8. a16 |
		b8[ cs d e] |
		fs8. fs16 <e cs>8 <fs cs> |
		d8. e16 fs8\fermata e |
		<d b>16 b8. b8 a |
		a2 |
	}

	\repeat volta 2 {
		fs'8. fs16 <fs d>8. <e a,>16 |
		<fs d>8 <g e> <a fs>4 |
		<e cs>8. <e cs>16 <e cs>8 <d b> |
		<e cs>8. <fs d>16 <g e>4 |
		<a fs>8. <fs d>16 <e cs>8 <fs cs> |
		d e fs8.\fermata e16 |
		d16 b8. b8 a |
		<a fs>2 |
	}
	a8. a16 a8. fs16 |
	a8 b d4 |
	b8. b16 b8. a16 |
	b8[ cs d e] |
	fs8. fs16 <e cs>8 <fs cs> |
	d8. e16 fs8\fermata e |
	<d b>16 b8. b8 a |
	a2 |
}
 



lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
		<fs d>4 <fs d> |
		<fs d> <a fs d> |
		<g d> <g d> |
		<d g>8[ <d g> <fs d> <a cs,>] |
		\once \override DynamicText #'extra-offset = #'(-2.2 . 2.5)
		<d a d,>4_\f a,8 as |
		<b' b,>4 <a fs>8 r |
		g16 g8. g8 fs |
		<fs d>2 |		
	}	
	\repeat volta 2 {
		\once \override DynamicText #'extra-offset = #'(-2.2 . 2.5)
		<d' d,>4_\f d, |
		d d |
		\once \override DynamicText #'extra-offset = #'(-2.2 . 2.5)
		a_\p a |
		a a |
		\once \override DynamicText #'extra-offset = #'(-2.2 . 1.8)
		d_\f a8 
		\once \override DynamicText #'extra-offset = #'(-1.0 . 0.7) 
			as_\sf |
		\once \override DynamicText #'extra-offset = #'(-2.2 . 2.5)
		<b' b,>4_\f <as fs> |
		\once \override DynamicText #'extra-offset = #'(-2.2 . 1.5)
		<b g>16_\p g8. g8 fs |
		d2 |		
	}
	<fs d>4 <fs d> |
	<fs d> <a fs d> |
	<g d> <g d> |
	<d g>8[ <d g> <fs d> <a cs,>] |
	\once \override DynamicText #'extra-offset = #'(-2.2 . 2.5)
	<d a d,>4_\f a,8 as |
	<b' b,>4 <a fs>8 r |
	g16 g8. g8 fs |
	<fs d>2 |		

}

staffClassicalGuitar = \new Staff  {
		\time 2/4
		\key d \major
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
