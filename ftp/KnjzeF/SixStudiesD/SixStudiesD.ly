% Created on Fri Sep 28 2007
% Correction 10/18/07 meas. 29 e->d (sos)
% other extraneous material removed

\version "2.11.33"
%#(set-global-staff-size 17) 

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
	subsubtitle = "No. IV"
	composer = \markup {
		\column {"Frantisek Max Knjze" "(1784-1840)"}
			}
% MUTOPIA
 mutopiatitle = "Six Progressive Studies: No. IV"
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
 footer = "Mutopia-2007/10/23-1061"
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
		\column {\larger\bold "Nº. IV  " \italic "Allegretto. "}}
	\relative c''{
%% Note: vertically align volta brackets-  #5 is default
%%		\override Staff.VoltaBracket #'minimum-space = #5.5
	\key c \major
	\time 3/8
	\slurDown
	\repeat volta 2 {
		\partial 8*1
		g8_\P |
		e'8 g, e' | f g, f' | g g, g' | e g, e' |
		f g, f' | e g, e' | d g,^\dotI a^\dotII | 
		b^\dotI c^\dotII d^\dotI | e g, e' |
		f g, f' | g g, g' | e g, e' | f a, d |
		c4 <b g>8 | d4. | <c g>4
		}
	\repeat volta 2 {
		\partial 8*1
		g8_\P |
		b g c | d g, e' | f c e | d g, c |
		b g c | b g c |b g'_\markup{\smaller"dolc."} fs |
		f a, b | c g e' | f g, f' | g g, g' |
		<g cs,> a, <g' cs,> | f a, d | c g b |
		d4. | <c g>4\fermata 
		
		}
		
	\repeat volta 2 {
		\partial 8*1
		e,8^\markup{\hspace #-4 \bold "Minore"}  |
		a4. | b | c4 b8 | a4. | <d b>8 e <d b> |
		<c a> d <c a> | <b gs> e e | e( f) e |
		a,4. | b | c4  b8 | a4. | <e' g,>8 b <e g,> |
		<fs a,> b, <fs' a,> <e b>4. ~ | <e b>4
		}
	\repeat volta 2 {
		\partial 8*1
		e8 |
		<e b gs>4 <e c a>8 | <e d b>4 <e c a>8 |
		<e b gs>[ e e] | e( f) e_. |
		<e b gs>4 <e c a>8 | <e d b>4 <e c a>8 |
		<e b gs>4. | <fs b,>| <e b gs> | 
		<fs b,>_\P | <e b gs>4\fermata e,8 |
		a4. | b | c4 b8 | a4. |
		e'8 c a | e' d b | a e gs | a,4
		}
	}
}		


lower = {
	\relative c' { 
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
	\time 3/8
	\key c \major
	\repeat volta 2 {
		\partial 8*1
		s8 |
		c4 c8 | d4 d8| e4 e8 | c4 c8 | d4 d8 | c4 c8 |
		b4 r8 | R1*3/8 | c4_\F c8 | d4 d8 | e4 e8 |
		c4 c8 | f4 f8 | g4 g,8 | 
		<<{
		\override Stem #'length-fraction = #0.45 
			f' g f}\\{g,4.}>> |
		| <e' c>4
	}
	\repeat volta 2 {
		\partial 8*1
		s8 |
		d4 e8_\< | f4 g8\! | a4_\> g8 | f4 e8\! |
		d4 e8 | d4 e8 | d4 s8 | s4. | e4_\F c8 |
		d4 d8 | e4 e8 | a,4 a8 | d4 f8 |
		e4 d8 | 
		<<{
		\override Stem #'length-fraction = #0.45 
			f g f}\\{g,4.}>> |
		<e' c>4_\markup{\smaller\bold "Fine"}
		}

	\repeat volta 2 {
		\partial 8*1
		e,8 
		a4. |
		b | c4 b8 | a4. |
		e4_\P e8 | e4 e8 | e4 s8 |
		s4. | a4._\F | b | c4 b8 |
		a4. | b4_\P b8 | b4 b8 |
		<g' e,>4. ~ | <g e,>4
		}
	\repeat volta 2 {
		\partial 8*1
		s8_\fF |
		e,4 e8 | e4 e8 | e4 r8 | R1*3/8 |
		e4_\pP e8 | e4 e8 | e4. |
		<a' b,>4._\F | e,4. | <a' b,>4. | e,4 e8_\F |
		a4. | 
		b | c4 b8 | a4. | e4_\P e8 |
		e4 e8 | a4 e8 | a4_\dc
		
		}
	
	}
}	

staffClassicalGuitarD = \new Staff 

%%%  this moves the fingering closer to the note than default
		\with { 
			\override Fingering #'padding = #0.2 
		}
			{
%			\time 3/8
%			\key c \major
%			\tempo 4 = 72
%			\set Staff.instrumentName=\markup{\smaller\column{"Classical" "Guitar."}}
			\set Staff.midiInstrument="acoustic guitar (nylon)"
		%	\transposition c,
	<<
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
			\new Voice = A { \voiceOne  \upper }
			\new Voice = C { \voiceFour  \lower }
	>>
%		\bar "|."  %% End the piece if no repeat at end
}

\score { 
	\staffClassicalGuitarD
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
	\staffClassicalGuitarD
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
