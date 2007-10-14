% Created on Thu Sep 27 2007
\version "2.11.33"
#(set-global-staff-size 17) 

\paper {
	%#(set-paper-size "a4")
	%#(set-paper-size "letter")
	left-margin = 0.75 \in
	line-width = 7.0 \in
	between-system-padding = #2.0
	between-system-space = #2.0
	ragged-last-bottom = ##f
	ragged-bottom = ##t
}


\header {
	title = "Six Progressive Studies"
	subsubtitle = "No. I"
	composer = \markup {
		\column {"Frantisek Max Knjze" "(1784-1840)"}
			}
% MUTOPIA
 mutopiatitle = "Six Progressive Studies: No. I"
 mutopiacomposer = "KnjzeF"
 mutopiapoet = ""
 mutopiaopus = ""
 mutopiainstrument = "Classical Guitar"
 date = "unk"
 source = "Boije collection #276"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Stan Sanderson"
 moreInfo = "The Boije collection is found at http://www.muslib.se/ebibliotek/boije/"
 footer = "Mutopia-2007/10/14-1058"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
			
			


%% Source
%% Boije collection # 276
%% http://www.muslib.se/ebibliotek/boije/
%%
%% Praga presso Marco Berra.
%% Fra. Max Knjze (also spelled Kniže) was born
%% 7 Sep 1784 in Dralielcice, near Beroun, Bohmen. 
%% He died 23 Jul 1840 in Prague, Czechoslovakia.
%% He was a guitarist, composer and conductor.
%%

\include "english.ly"

%%%% shortcuts
%  fingering orientations
	sfol = \set fingeringOrientations = #'(left)
	sfor = \set fingeringOrientations = #'(right)
	sfod = \set fingeringOrientations = #'(down)
	sfou = \set fingeringOrientations = #'(up)

%  string number orientations
	ssnol =  \set stringNumberOrientations = #'(left)  %(down right up)
	ssnou =  \set stringNumberOrientations = #'(up)
	ssnod =  \set stringNumberOrientations = #'(down)
	ssnor =  \set stringNumberOrientations = #'(right)

%  position indicators
	II = \markup {\smaller "II"}
	IIa = \markup {\smaller \hspace #2.0 \bold "CII"}
	III = \markup {\smaller  "III"}
	IV = \markup {\smaller  "IV"}
	V = \markup {\smaller  "V"}
	VII = \markup {\smaller  "VII"}
	VIII = \markup {\smaller  "VIII"}
%% (alternates A)
	loc = \markup{\smaller"loco."}
	bpos = \markup{\smaller"2 pos:"}
	cpos = \markup{\smaller"3 pos:"}
	dpos = \markup{\smaller"4 pos:"}
	epos = \markup{\smaller"5 pos:"}
	gpos = \markup{\smaller"7 pos:"}
	ipos = \markup{\smaller"9 pos:"}
	eposd = \markup{\smaller\column{"5 pos:" "dol:"}}
	
%% dynamics per original
pP = \markup { \smaller \bold "pp"}
P = \markup { \smaller \bold "p"}
mF = \markup { \smaller \bold "mf"}
F = \markup { \smaller \bold "f"}
fF = \markup { \smaller \bold "ff"}
sF = \markup { \smaller \bold "sf"} 

% miscellaneous and reminders
	harm = \once \override NoteHead #'style = #'harmonic 
	octavado = \markup { \smaller \italic "arm. 12" }
	octavados= \markup {\smaller\italic\column {"arm." "12" }}
	%\mark \markup {\smaller \smaller \musicglyph #"scripts.segno"}
	%\markup {\smaller \vcenter "to" \hspace #0.7 \smaller \vcenter \musicglyph #"scripts.coda"}
	% \arpeggioUp \arpeggio
	%segn = \markup { \smaller \vcenter "to" \hspace #0.7 \vcenter \smaller \musicglyph #"scripts.segno" }

%% End shortcuts




upper = {
		\set Staff.instrumentName=\markup{
		\column {\larger\bold "Nº. I  " \italic "Andante. "}}
	\relative c''{
%% Note: vertically align volta brackets-  #5 is default
%%		\override Staff.VoltaBracket #'minimum-space = #5.5

	\repeat volta 2 {
		\slurDown
		\partial 4*1
		g4 |
		<c g> <c g> <c g> <b g> |
		<c g> <c g> d2^> |
		<e c>4 <e c> <fs c> <fs c> |
		g,,8 g' b g' f[ d, g b] |
		<c g>4 <c g> <b g> <b g> |
		<c g> <c g> d2^> |
		<e c>4 <e c> <b g> <b g> |
		<c e,> <e g,> c		
		}
	\repeat volta 2 {
		\partial 4*1
		g |
		b <b g> <c g> <c g> |
		<d g,> <d g,> <e c g>2^> |
		r8 a, d a r a d a |
		<e' b gs>2 f!8[ d, g b] |
		c4 c <e c> <e c> |
		<f c> <f c> <g cs,>2 |
		<f d>4 <f d> <b, g> <b g> |
		c e c 
		}
	\repeat volta 2 {
		\partial 4*1
		g4 |
		r8 g c g r <b g> r <b g> |
		r g c g r g d' g, |
		r g c e r a, c fs |
		r g, b g' r g, b f' |
		r g, c g r <b g> r <b g> |
		r g c g r g d' g, |
		r g c e r d, g b |
		r e, g c c,4 
	}
	\repeat volta 2 {
		\partial 4*1
		g'4 |
		r8 g b g r g c g |
		r g d' g, r g c e |
		r a, d a r a d a |
		r gs b e r g, b f' |
		r g, c g r bf c e |
		r a, c f r a, cs g' |
		r a, d f r d, g b |
		r e, g c c,4
	}
	\repeat volta 2 {
		\partial 4*1
		g'4 |
		\set tupletSpannerDuration = #(ly:make-moment 1 4) 
		\times 2/3 {
			c,8 g' c e, g c 
			\override TupletNumber #'transparent = ##t
			\override TupletBracket #'transparent = ##t 
			d, g b f g b |
			e, g c c, g' c r g d' f g, d' |
			r g, c e g, c r a c fs a, c |
			r g b g' g, b r g b f'! g, b |
			c, g' c e, g c d, g b f g b |
			e, g c c, g' c r g d' f g, d' |
			r g, c e g, c r d, g b d, g |
			r e g c e, g 
			} c,4
			
		}
		\repeat volta 2 {
			\partial 4*1
			g'4 |
			\override TupletNumber #'transparent = ##f
			\times 2/3 {
			g,8 g' b 
			\override TupletNumber #'transparent = ##t
%			\override TupletBracket #'transparent = ##t 
			f, g' b e,, g' c c, g' c |
			b, g' d' g,, g' b c, g' c e g, c |
			f, a d f, a d f, a ds f, a ds |
			r gs, b e gs, b r g b f' g, b |
			r g c e g, c r bf c e bf c |
			r a c f a, c r a cs g' a, cs |
			r a d f a, d r d, g b d, g |
			r e g c e, g 
			} c,4
		}
	}
}
	
	
middle = {
	\relative c'' {
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
%% middle voice can interfere... use the following
%		\override Stem #'length-fraction = #0.4
	\repeat volta 2 {
		\partial 8*4
		s8 \grace s16 
		\stemDown s8*3 |
		s2.*5 |
		\grace s8 s2.
		\grace s8 s2.
		s4.
		}
	\repeat volta 2 {
		\partial 8*3
		s4.
		s2.*3
	}
	}
}

lower = {
	\relative c' { 
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
	\repeat volta 2 {
		\partial 4*1
		s4 
		c e d f | 
		<g e> <g c,> <g b,>2 |
		<g c,>4 <g c,> <a d,> <a d,> |
		s1 |
		c,4 e f d |
		<g e> <g c,> <g b,>2 |
		<g c,>4 <g c,> <d g,> <d g,> |
		c g' <e c>
		}
	\repeat volta 2 {
		\partial 4*1
		s4
		g f e c |
		b g c2 |
		f f |
		e s |
		<g e>4 <g e> <bf c,> <bf c,> |
		<a f> <a f> <a a,>2 |
		<a d,>4 <a d,> <d, g,> <d g,> |
		<e c> g <e c>
		}
	\repeat volta 2 {
		\partial 4*1
		s4
		e2 f4 d |
		e2 b |
		c d |
		g, d' | 
		e f4 d |
		e2 b |
		c g |
		c c4
		}
	\repeat volta 2 {
		\partial 4*1
		s4
		f2 e |
		b c |
		f f |
		e d |
		e c |
		f a, |
		d g, |
		c c4
		}
	\repeat volta 2 {
		\partial 4*1
		s4
		c e d f |
		e c b2 |
		c d |
		g, g |
		c4 e d f |
		e c b2 |
		c g |
		c c4
		}
	\repeat volta 2 {
		\partial 4*1
		s4
		g f e c' |
		b g c s |
		f f f f |
		e2 d |
		e c | f a, |
		d g, |
		c c4
		}

	}
}	

staffClassicalGuitarA = \new Staff 

%%%  this moves the fingering closer to the note than default
		\with { 
			\override Fingering #'padding = #0.2 
		}
			{
			\time 4/4
			\key c \major
%			\tempo 4 = 72
%			\set Staff.instrumentName=\markup{\smaller\column{"Classical" "Guitar."}}
			\set Staff.midiInstrument="acoustic guitar (nylon)"
		%	\transposition c,
	<<
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
			\new Voice = A { \voiceOne  \upper }
%			\new Voice = B { \voiceTwo  \middle }
			\new Voice = C { \voiceFour  \lower }
	>>
%		\bar "|."  %% End the piece if no repeat at end
}

\score { 
	\staffClassicalGuitarA
	}

		
\layout  {
		 \context { \Voice
%%% provides thicker glissando and moves closer to notes
			 \override Glissando #'thickness = #3
			 \override Glissando #'gap = #0.05

%%% adjust fingering size, distance from note
			\override Fingering #'font-size = #-6
			\override Fingering #'padding = #0.3
		 	}
	\context { \Score
			\override MetronomeMark #'extra-offset = #'(-9 . 0)
			\override MetronomeMark #'padding = #'3
			}
		
}		


\score {
	\unfoldRepeats
	\staffClassicalGuitarA
	  \midi {
	    \context {
		    \Score
	      		tempoWholesPerMinute = #(ly:make-moment 120 4)
	    }
	    \context { 
		    \Voice 
		    \remove "Dynamic_performer"
	    }
    }
}
