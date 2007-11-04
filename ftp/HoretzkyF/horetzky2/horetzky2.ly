% Entered on Nov 1, 2007
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
	title = "Nº. 2. Russian Air."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 2. Russian Air."
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
 footer = "Mutopia-2007/11/04-1091"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Source & comments
%%	
%%  Felix Horetzky was born in Horyszów Ruski, Poland, January 1, 1796.
%%	Little is known about he came to the guitar. He traveled to Vienna
%%	to study under master guitarrist, Mauro Giuliani. He traveled
%%  extensively in Europe as a concert performer and teacher. He wrote
%%  between 100 and 150 pieces for the guitar. He died in Edinburgh
%%  on October 6, 1870.
%%
%%	This piece is from #268, "60 National Airs of Different Nations",
%%	in the Boije collection and is in the public domain.
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
fin = \markup {\smaller \bold \italic "Fine."}		
I = \once \override NoteColumn #'ignore-collision = ##t	

%% End shortcuts


%%%%%%%%%%
%% Reminders
%
%    \once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
%    \once \override TextScript #'extra-offset = #'( 0.8 . -2.3 )
%
%%%%%%%%%%

upper = \relative c''{
	\set Staff.instrumentName=\markup{
	\column {\smaller\bold "Nº. 2  " \smaller\smaller\italic "ALLEGRETTO. "}}
		<a fs>8 <fs' a,> <fs gs,> <e g,> |
		d8 cs16 b a8 b16 cs |
		d8 <fs a,> <g b,> <fs a,> |
		<e g,>4-> <b g>-> |
		<b g e>8 <g' b,> <g as,> <fs a,> |
		fs e d! b |
		a d <e cs>8. fs16 | 
		d4 r | \bar "||"
		
		d8 d cs b |
		a'4-> g-> |
		cs,8 cs fs8. e16 |
		e4-> d-> |
		fs8 fs e d |
%% work-around- could not adjust stem length of first
%% stem using usual overrides so put 3 voices together
%% repeated below for similar problems.
		<<
		{d4 c}
		\\
		{\voiceThree 
			\once \override Beam #'positions = #'(1.0 . 1.6)
			g8 b g4}
		\\
		{\voiceTwo e4 e,}
		>>
		fs'8 b <d as>8. cs16 |
		b4 r |
		<<
			{ <e cs> fs8.-> e16}\\
			{\voiceTwo 
				\I
				\once \override Beam #'positions = #'(-2.0 . -2.4)
				g,8 a 
				\I
				\once \override Beam #'positions = #'(-2.0 . -2.4)
				g8. a16 }\\
			{\voiceTwo 
			\once \override DynamicText #'extra-offset = #'(-3.2 . 3.5)
				a,4_\mf a}\\
			{\voiceFour s4 cs'}
		>>	
		
		
%% 18-19 workaround
		<< 
			{d2 }\\
			{\voiceThree
				\override Beam #'positions = #'(1.0 . 1.4)
				 fs,8 a fs a}\\
			{\voiceTwo d,2 }
		>>
		<<
			{ <e' cs>4 fs8. e16}\\
			{\voiceFour 
				\override Beam #'positions = #'(-2.6 . -2.0)
				g,8 a <cs g> a}\\
			{\voiceTwo a,4 a}
		>>
		
		d'2 |
		e8 g fs e |
		<e b> <d g,> <d g,> <cs e,> |
		fs, <b d,> <d gs,>8. <cs as>16 |
		<b d,>2 |
		<e cs>8 <e cs> <fs d> <g cs,> |
		a4 g8. e16 |
		a,8 d fs8.e16 |
		d2		
}

middle = \relative c'' {
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
%% middle voice can interfere... use the following
%	\override Stem #'length-fraction = #0.6
		s2*4 |
		s8 b,[ cs ds] |
		s2*4
		b'8\rest <b g> b\rest <b g> |
		s2*4 |
		s2*2 |
		s2 |

		s2*2 |
		s2 |
		{\override Stem #'length-fraction = #0.6
		cs4 as }|
		s2*7 |
}		

lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\once \override DynamicText #'extra-offset = #'(-2.2 . 3.5)
		d8_\p a b cs |
		<fs d>4 <fs a,> |
		<fs d> <ds b> |
		<e e,> <e e,> |
		e,2 |
		<g' e>4 <f gs,> |
		<fs a,> <g! a,> |
		<fs d> r |
		
		\once \override TextScript #'extra-offset = #'( 1.2 . 1.7 )
		<fs b,>_\dol <fs d> |
		e e |
		<as fs> <as fs> |
		<b g> <b g> |
		<b fs d> <b fs d> |
		s2 |
		fs,4 <e' fs,> |
		
		<d b> r |
		s2 |
		s2*2 |
		<fs d>2 |
		as,4 fs |
		g e |
		fs4.. fs16 |
		b2 |
		\once \override DynamicText #'extra-offset = #'(-3.2 . 3.5)
		a4._\f a'8 |
		<a fs>8 d, <b' g g,>4 |
		<fs a,> <cs' g a,> |
		<fs, d>2
		
}	

staffClassicalGuitar = \new Staff  {
		\time 2/4
		\key d \major
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
			tempoWholesPerMinute = #(ly:make-moment 90 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
