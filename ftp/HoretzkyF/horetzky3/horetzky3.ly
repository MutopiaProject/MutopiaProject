% Entered on Nov 2, 2007
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
	title = "Nº. 3. Andante by Beethoven."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 3. Andante by Beethoven."
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
 footer = "Mutopia-2007/11/04-1092"
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
%%	Some editing has been done due to the composer' penchent for notating
%%  three, and in some cases, four, distinct voices. 
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
	\set Staff.instrumentName=\markup{ \smaller\bold "Nº. 3  " }
	\partial 8*1 a8 |
	a d d |
	d16. cs32 cs16. b32 cs16. a32 |
	d4 <e a,>8 |
	g16.[ fs32 e8] \grace {fs16}e32 ds e fs |
	g4-> fs8 |
	b e, a |
	d, g-> fs |
	<ds bs> <e cs> r16 a, |
	a d d d d d |
	d16. cs32 cs16. b32 cs16. a32 |
	d4 e8 |
	g16.[ fs32 e8] \grace{fs16} e32 ds e fs |
	g4 fs8 |
	b e, a |
	\grace{e16} d32[ cs d e] <fs d>8 <e cs g> |
	d r \bar "||"
	r |
	fs8 e <fs ds> |
	<g e> <b g> r |
	<e, cs> <d b> <e cs> |
	<fs d> <a fs> a |
	a <gs es> <as e> |
	b[ cs] d16. b32 |
	<<{a4 gs8}\\
		{\once \override Beam #'positions = #'(-1.0 . -0.6)
		cs,8[ e] 
		\once \override Stem #'length-fraction = #0.8 d}
	>>
	a'4 cs16. b32 |
	<<{a4 gs8}\\
		{\once \override Beam #'positions = #'(-1.0 . -0.6) 
		cs,8 e d}
	>>
	<a' cs,>8 <a d,> <a e>\fermata |
	a,16 d d d d d |
	d16. cs32 cs16. b32 cs16. a32 |
	d4 e8 |
	g16.[ fs32 <e cs>8] \grace{fs16} e32 ds e fs |
	g4 fs8 |
	b <e, cs> a |
	\grace{e16} d32[ cs d e] <fs d>8 <e cs g> |
	d r
}

}		

lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\partial 8*1 r8 |
		<fs d>4. |
		<g e>4 r8 |
		r <a fs> cs, |
		<a' d,> <cs a> r |
		<d b>4 <d a>8 |
		<d gs,> <cs g> <d fs,> |
		<b b,> <bf cs,> <a d,> |
		a,4 r8 |
		<fs' d>4. |
		<g e>4 r8 |
		r <a fs> <a cs,> |
		<a d,> <cs a> r |
		<d b>4 <d a>8 |
		<d gs,> <cs g> <d fs,> |
		r a a, | 
		<fs' d> r 
		r |
		<ds' b>4 a8 |
		g e r |
		a,4 g16 g' |
		fs8 d r |
		<fs' d> d cs |
		<fs d>[ <fs as,>] <fs b,>16. <fs d,>32 |
		e,4 es8 |
		<cs' fs,>4 <b ds,>8 |
		e,4 e,8 |
		a b cs |
		<fs d>4. |
		<g e>4 r8 |
		r <a fs> <a cs,> |
		<a d,> a, r |
		r <d'! b> <d a> |
		<d gs,> <cs g> <d fs,> | 
		r a a, |
		<fs' d> r
}	

staffClassicalGuitar = \new Staff  {
		\time 3/8
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
