% Entered on Nov 3, 2007
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
	title = "Nº. 4. The Last Rose of Summer."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 4. The Last Rose of Summer."
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
 footer = "Mutopia-2007/11/05-1093"
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
	\set Staff.instrumentName=\markup{ \column \right-align
	{\smaller\bold "Nº. 4  " 
	\smaller\smaller\italic "ANDANTE. " \smaller "con Espress:"}}
	\repeat volta 2 {
		\partial 4*1 g8. a16 |
		b4 g' fs8. e16 |
		d4 b g8 a |
		<<b4 \\{\override Stem #'length-fraction = #0.2 g8[ e]}>>
			\times 2/3{d'8 c b} \times 2/3{b[ a g]} |
		g4 r 
	}
	
		d'8. b16 |
		<g' b,>4. <g b,>8 fs8. e16 |
		d4 r d8. d16 |
		g4 ~ g8 fs e ds |
		e[ \grace {
			\override Stem #'length-fraction = #0.4 \slurDown fs32[( e ds])} 
			e16 fs]  <g e>8\fermata r g,8. a16 |
		b4 g' fs8. e16 |
		d4 <<b4 \\{\override Stem #'length-fraction = #0.21 g8[ d]}>>
			g8 a |
		<<b4 \\{\override Stem #'length-fraction = #0.23 g8[ e]}>>
			\times 2/3{d'8[ c b]} \times 2/3{b a g} |
		g4 r 	
	
}

		

lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\repeat volta 2 {
		r4 |
		<g' g,>2 <c g>4 |
		<b g> g8 d b d |
		g,4 <e' c> <fs d> |
		<b, g> r
	}
	
		r4 |
		g8 b d g <c g e>4 |
		<b g> g, r |
		\once \override DynamicText #'extra-offset = #'(-2.75 . 3.5)
		<b' g e,>4._\f <a a,>8 <g b,> <a b,> |
		<g e,>4. r4 d8\rest |
		<g g,>2 <c a,>4 |
		<g b,> g, b8 d |
		g,4 <e' c>_\dol <fs d> |
		<b, g> r
	
		
}	

staffClassicalGuitar = \new Staff  {
		\time 3/4
		\key g \major
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
