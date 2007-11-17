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
	title = "Nº. 56. Chanson Des Marseillois."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 56. Chanson Des Marseillois."
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
 footer = "Mutopia-2007/11/17-1153"
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
	{\smaller\bold "Nº. 56.  " \smaller\smaller\italic "MAESTOSO.  " 
	}}
	\partial 16*5 a16[ a8. a16] |
	<d fs,>4 <d fs,> <e cs> <e cs> |
	a4. fs8 d[ d d8. cs16]|
	b4 <<{<g' e,>2}\\{b,4 a}>> e'8. cs16 |
	<<{<d d,>2}\\{fs,8[ a fs a]}>> r4 \bar "||" \mark \fermataMarkup 
	
	d8. e16 |
	<fs d>4 <fs d> <fs d> <g e>8. <fs d>16 |
	<fs d>8. <e cs>16 <e cs>4_> r <e cs>8. <fs d>16 |
	<g e>4 <g e> <g e> <a fs>8. <g e>16 |
	<fs d>2 r4 a8. a16 |
	a4 fs8 d a'4 fs8 d |
	a2 r8. a16[ a8. a16] |
	<e' cs>2 <g e>4 e8 cs |
	d4 d c2 |
	b4 b8 b d4 c8 d |
	<e cs>2 r4 <e cs> |
	<f d>4. <f d>8 <e cs> <f d> <g e>8. <f d>16 |
	<e cs>2 r4 <f a,>8. <e g,>16 |
	d4 d d e8. d16 |
	d8 cs cs4.. 
	
	 a16[ a8. a16] |
	<d fs,>4 <d fs,> <e cs> <e cs> |
	a4. fs8 d[ d d8. cs16]|
	b4 <<{<g' e,>2}\\{b,4 a}>> e'8. cs16 |
	<<{<d d,>2}\\{fs,8[ a fs a]}>> r4
}

lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)	
	\partial 16*5 r16 r4 |
	\once \override DynamicText #'extra-offset = #'(-2.5 . 2.0)
	d2_\f a |
	d8[ fs a d] d,4 fs |
	g s2 <g a,>4 |
	s2 d4 
	
	fs8. a16 |
	\once \override DynamicText #'extra-offset = #'(-2.5 . 2.0)
	d,2_\p d4 r |
	a2 a'4 r |
	a,2 a |
	d2 r4 r |
	\once \override DynamicText #'extra-offset = #'(-3.3 . 1.0)
	a'4_\ff fs8 d a'4 fs8 d |
	a2 r |
	a8[ cs e cs] a[ cs e g] |
	fs[ a fs d] fs[ a fs d] |
	g[ d g d] fs[ d c b] |
	a[ cs e a] a,4 r |
	d8[ a' f d] a4 a |
	r8 a' e cs a4 r |
	<f' bf,>2 <gs bf,> | 
	<a a,> a,8.
	
	r16 r4 |
	\once \override DynamicText #'extra-offset = #'(-2.5 . 2.0)
	d2_\f a |
	d8[ fs a d] d,4 fs |
	g s2 <g a,>4 |
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
