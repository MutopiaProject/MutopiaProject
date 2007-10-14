% Created on Fri Sep 28 2007
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
	subsubtitle = "No. III"
	composer = \markup {
		\column {"Frantisek Max Knjze" "(1784-1840)"}
			}
% MUTOPIA
 mutopiatitle = "Six Progressive Studies: No. III"
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
 footer = "Mutopia-2007/10/14-1060"
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

	dc = \markup{\smaller\bold "D.C."}
	dotI = \markup{\small"."}
	dotII = \markup{\small"："}
	dotIII = \markup{\bold\small"⋮"}
%% End shortcuts




upper = {
	\set Staff.instrumentName=\markup{
		\column {\larger\bold "Nº. III  " \italic "Andante. "}}
	\relative c''{
%% Note: vertically align volta brackets-  #5 is default
%%		\override Staff.VoltaBracket #'minimum-space = #5.5
	\key c \major
	\slurDown
	\repeat volta 2 {
		\partial 8*1
		g8_\P |
		c c b c | d d b4 | c8 c r16 a[ e' d] | 
		c4 b16 g( a) g_. | c8 c b c | d d b4 |
		e,16 c' g e' f, d' d, b' |
		e, c' g e' c,8
		}
	\repeat volta 2 {
		\partial 8*1
		g'8_\P 
		b b c cs |
		d d b16 d, g b | c e, g c d, a' c fs |
		g,, g' b g'_\> f d, g b\! | c8 c b c |
		d d b4 | c8 c r16 a e' d | c4 b16 g( a) g_. |
		c8 c e e | f f r16 a, e' d |
		e, c' g e' f, d' d, b' | e, c' g e' c,8\fermata 
		}
		
	\repeat volta 2 {
		\partial 8*1
		e'8^\markup{\hspace #-4 \bold "Minore"}  
		r16 a, c e b d a c | r gs b e f! e b_. gs_. |
		r gs b d a c gs b | r a c e a, c a, a' |
		r a c a e' a, c e | r bf d bf f' bf, d f |
		r a, c e f( e) gs, b | a a, a' c a,8 
		}
	\repeat volta 2 {
		\partial 8*1
		g'8 |
		g,16 g' b f' b, d, g b |
		e, g c g' c, e, g c |
		f, a d a f a ds a |
		r gs b e r fs, a ds |
		r gs, b e r fs, a ds |
		r gs, b e gs, b e,, gs' |
		r a c e b d a c |
		r gs b e f( e) b gs |
		r gs b d a c gs b |
		r a c a e' a, c e |
		r a, cs a g' a, cs g' |
		r a, d a f' a, d f |
		r a, b a fs' a, b fs' |
		r gs, b e r gs, b e |
		r a, c a e' a, c e |
		r a, b a f' a, b f' |
		r a, c e r gs, b e |
		r a, c e a,,8
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
		\partial 8*1
		s8 |
		e16 g e g d g e g | f g f g d g f g |
		e g e g f4 | e16 g e g d4 |
		e16_\F g e g d g e g | f g f g d g f g |
		e8 g f d | e g c,
				}
	\repeat volta 2 {
		\partial 8*1
		s4.
		s2.*3
	}
	}
}

lower = {
	\relative c' { 
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
	\key c \major
	\repeat volta 2 {
		\partial 8*1
		s8 |
		e16 g e g d g e g | f g f g d g f g |
		e g e g f4 | e16 g e g d4 |
		e16_\F g e g d g e g | f g f g d g f g |
		e8 g f d | e g c,
		}
	\repeat volta 2 {
		\partial 8*1
		s8 |
		\setTextCresc
		d16 g d g e_\< g e g | 
		f g f g s4 | s4 d\!_\F |
		\setHairpinCresc
		g, s4 | e'16_\P g e g d g e g |
		f g f g d g d g | e g e g f4 |
		e16 g e g d4 | e16_\F g e g bf c bf c |
		a c a c f,4 | e8 g f d | 
		e g c,_\markup{\smaller\bold "Fine"}
		}

	\repeat volta 2 {
		\partial 8*1
		s8 |
		a2 | e | e | a4 s | c2 | d |
		e4 e, | s a8
		}
	\repeat volta 2 {
		\partial 8*1
		s8 |
		g4 s | e' s | f f | e, e |
		e e | e s8 e | a4 r | e r | e r |
		a2 | a | d | ds | e4 d | c2 | d |
		e4 e, | a a8_\dc
		
		}
	
	}
}	

staffClassicalGuitarC = \new Staff 

%%%  this moves the fingering closer to the note than default
		\with { 
			\override Fingering #'padding = #0.2 
		}
			{
			\time 2/4
%			\key c \major
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
	\staffClassicalGuitarC
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
	\staffClassicalGuitarC
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
