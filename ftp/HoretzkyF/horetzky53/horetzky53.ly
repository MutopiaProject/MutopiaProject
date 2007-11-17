% Entered on Nov 12, 2007
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
	title = "Nº. 53. German Air."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 53. German Air."
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
 footer = "Mutopia-2007/11/17-1150"
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
	{\smaller\bold "Nº. 53.  " \smaller\smaller\italic "TEMPO  " 
	\tiny\smaller\italic "DI MARCIA. "}}
	\partial 4*1 a4 |
	d <d fs,> <d fs,> a |
	e' <e a,> <e a,> a, |
	fs' fs \grace a16 g8.[ fs16 g8. a16] |
	<e cs>2 r4 <fs d>8. <g e>16 |
	<a fs>4 <a fs> <a fs> <a fs> |
	\grace a16 g4 g \grace g16 fs4 <fs d> |
	<e d> <e d> \grace fs16 e8.[ d16 e8. fs16] |
	d4 fs d \bar "||"
	
	a |
	a a a b8. cs16 |
	<d a>4 <e cs> <fs d> a |
	<gs b,> <g cs,> <fs d> <f b,> |
	<e cs> r r a, |
	a a a b8. cs16 |
	<d a>4 <e cs> <fs d> <a e> |
	d fs, \grace a16 gs4 fs8. gs16 |
	a4 gs g8[ e b cs] |
	d4 d d \grace{\slurDown b16[(a gs])} a4 |
	e' <e cs> <e cs> \grace{b16[( a gs]) \slurUp} a4 |
	<fs' d> <fs d> \grace a16 g8. fs16 g8. b16 |
	<e, cs>2 r4 <fs d>8. <g e>16 |
	<a fs>4 <a fs> <a fs> <a fs> |
	g g fs fs |
	<e d> <e d> e4. a8 |
	<g d>2 <fs d>4 <fs d>8. <g e>16 |
	<a fs>4 <a fs> <a fs> <a fs> |
	a gs g <fs d> |
	e r <a cs,> r |
	<<{<d, d,>2}\\{fs,4 a8 fs}>> d4
}


lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)
	\partial 4*1 r4 |
	r d d r |
	r cs cs r |
	<d' d,> <d b,> <e g,,> <e e,,> |
	a, e a, r |
	r d8 e fs4 d |
	<d' b> <e cs>_> d b |
	g e <cs' a> <cs g a,> |
	<fs, d> <a d,> <fs d> 
	
	a |
	\once \override DynamicText #'extra-offset = #'(-2.5 . 3.7)
	a,_\p <e' cs> g, g' |
	fs e d r | e a,_> d gs,_> |
	a a16 gs a gs a4 r |
	<cs a>2 <e g,>4 g |
	 fs e_\< d cs\! |
	 \once \override DynamicText #'extra-offset = #'(-2.5 . 2.5)
	 <fs' d b,>2_\f <d e,,> |
	 <cs a,>4 r r2 |
	 r4 <fs, d> <fs d> r | 
	 r a a, r |
	 \once \override TextScript #'extra-offset = #'( -5.0 . 1.3 )
	 d_\dol	b g e |
	 a' e a, r | 
	 r d8 e fs4 d |
	 <e' g,,> <e cs,>_> <d d,> <d b,>_> |
	 g,, g' <cs a> a, |
	 a' a, <d' d,> r |
	 r d_\< cs c\! |
	 \once \override DynamicText #'extra-offset = #'(-2.5 . 1.0)
	 <ds b>_\sf e 	
	 \once \override DynamicText #'extra-offset = #'(-2.5 . 1.3)
	 <cs as>_\sf b |
	 <d g,> r <g, a,> r |
	 s2 d4 
}

staffClassicalGuitar = \new Staff  {
		\time 4/4
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
