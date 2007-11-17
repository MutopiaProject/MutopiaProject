% Entered on Nov 11, 2007
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
	title = "Nº. 47. Scotch Air."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 47. Scotch Air."
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
 footer = "Mutopia-2007/11/17-1144"
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
	{\smaller\bold "Nº. 47.  " \smaller\smaller\italic "ANDANTINO  " 
	\tiny\smaller\italic "con ESPRESS:"}}
	\partial 8*1 d8 |
	g4 fs8. e16 |
	<d g,>4 e8 fs16. g32 |
	<b, g>8 <b g> c a |
	g4 r8 d' |
	<g b,>4 <fs d>8 <e c> |
	d ds e fs16 g |
	<b,g>8 <b g> <c a> <a fs> |
	g4 r8 \bar "||"
	d'16 c |
	b8[ g b d] |
	<g cs, a>4 <e cs a>8 fs16. g32 |
	<fs cs as>8 <d b> <e b> cs |
	<d fs,>4 <e g,>8 <fs a,> |
	<g d>4 <fs d>8 <e c> |
	<d b> ds <e c> fs16 g |
	<b, g>8 <b g> <c a> <a fs> |
	g4 r8 d'16 c |
	b8[ g b d] |
	<g cs,>4 <e cs>8 g |
	<fs cs as> <d b> <e b> <cs g> |
	d4 <e cs>8 <fs c a> |
	g4 fs8 e |
	<d b>4 <e c>8 fs16_\sf <g e bf>\fermata |
	<b, g>8 <b g> <c a>8. a16 |
	g4 r8
	
}


lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)
	\partial 8*1 r8 |
	<b' g,>4 <c a,> |
	b, <g' c,> |
	d <fs d> |
	<b, g> r |
	g8 b c16 d e fs |
	<b g>4 <c c,> |
	d,8 e_. c d |
	<b g>4 r8 
	
	r |
	g4. <a' fs>8 |
	e4 a, |
	fs8 b g a |
	d4 cs8 c |
	b4 c16 d e fs |
	g4 c, |
	d8 e c d |
	<b g>4 r |
	<d g,>4. <a' d, fs,>8 |
	<e e,>4 <a a,> |
	fs,8 b g a! |
	<fs' d>4 <g d>8_\cres ds |
	<b' g e>4. <c a fs>8 |
	g f <g e>8. cs,16_\fermata |
	d8 f e16_\rit c a <fs' d> |
	<b, g>4 r8
}

staffClassicalGuitar = \new Staff  {
		\time 2/4
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
