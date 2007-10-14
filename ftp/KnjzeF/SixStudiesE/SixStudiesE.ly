% Created on Sat Sep 29 2007
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
	subsubtitle = "No. V"
	composer = \markup {
		\column {"Frantisek Max Knjze" "(1784-1840)"}
			}
% MUTOPIA
 mutopiatitle = "Six Progressive Studies: No. V"
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
 footer = "Mutopia-2007/10/14-1062"
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
	dol = \markup { \smaller \bold "dol."}

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
		\column {\larger\bold "Nº. V  " \italic "Andante. "}}
	\relative c''{
%% Note: vertically align volta brackets-  #5 is default
%%		\override Staff.VoltaBracket #'minimum-space = #5.5
	\key g \major
	\slurDown
	\repeat volta 2 {
		
		b16 d, b' d, c' d, c' d, |
		d' d, d' d, b' d, b' d, |
		c' d, c' d, b' d, b' d, |
		a' cs^\dotII_\dol d^\dotI ds^\dotII fs^\dotI( e) 
			d^\dotII c^\dotI |
		b16 d, b' d, c' d, c' d, |
		d' d, d' d, b' d, b' d, |
		r a' c e r a, c fs |
		r g, b g' g,,4
		
		
		}
	\repeat volta 2 {
		
		a'16_\P d, a' d, b' d, b' d, |
		c' d, c' d, a' d, a' d, |
		r g_\F b e r a, cs g' |
		r a, d_\P  fs r a, c! fs |
		r g, b_\F g' gs, b e d |
		r a c e r a,_\P c e |
		r g,_\< b g' r a, c fs\! |
		r g,_\F b g' g,,4\fermata
		
		}
		
	\repeat volta 2 {
		\partial 8*1

		b'8^\markup{\hspace #-4 \bold "Minore"} |
		\set tupletSpannerDuration = #(ly:make-moment 1 8) 
		\times 2/3 {
			r16 g[ b]
			\override TupletNumber #'transparent = ##t
			\override TupletBracket #'transparent = ##t 
			e[ g, b]  g'[ g, b] e[ g, b ]|
			r a[ b] fs'[ a, b] ds,[ a' b] b,[ a' b] |
			r g[ b] e[ g, b] r a[ c] fs[ a, c ]|
			r g[ b] e[ g, b] 
			} <ds fs,>4 |
		\times 2/3 {
			\override TupletNumber #'transparent = ##t
			\override TupletBracket #'transparent = ##t 
			r16 g,[ b] e[ g, b]  g'[ g, b] e[ g, b] |
			r a[ b] fs'[ a, b] ds,[ a' b] b,[ a' b] |
			r g[ b] e[ g, b] r a[ b] fs'[ a, b ]|
			r g[ b] e [g, b]
			} e,,4

		}
	\repeat volta 2 {
		\times 2/3 {
			\override TupletNumber #'transparent = ##t
			\override TupletBracket #'transparent = ##t 
			r16 a'[ b] fs'[ a, b] ds,[ a' b] b,[ a' b] |
			r g[ b] e[ g, b] g'[ g, b] e[ g, b] |
			r a[ c] e[ a, c] r a[ c] e[ a, c] |
			b,[ fs'! ds'] b,[ fs' ds'] b,[ fs' ds'] a,[ fs' ds'] |
			r g,[ b] e[ g, b] g'[ g, b] e[ g, b] |
			r a c f_>[ a, c] g'!_>[ a, c] f_>[ a, c] |
			r g[ b] e[ g, b] r a[ b] fs'![ a, b] |
			r g[ b] e[ g, b] 
			} e,,4
		
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
	\key g \major
	\repeat volta 2 {
		g8 g a a | b b g g | a a g g |
		d'4 r | g,8 g a a | b b b b |
		c4 d | g, g
	}
	\repeat volta 2 {
		fs8 fs g g | a a fs fs | g4 a | d d |
		g, e | a c | d d | g, g
		
		}

	\repeat volta 2 {
		\partial 8*1
		s8_\markup{\smaller\bold \hspace #-6 "Fine"} 
		e2 | b'4 ds8 b | e,4 a | b b16 a g fs |
		e2 | b'4 ds8 b | e,4 b' | e, e 
		}
	\repeat volta 2 {
		b'4 ds8 b | e,2 | c'4  c | b8 b b a |
		g4 e8 g | a4_\P s | b b |
		e, e_\markup{\smaller\bold \hspace #2 "D.C."}
		
		}
	
	}
}	

staffClassicalGuitarE = \new Staff 

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
	\staffClassicalGuitarE
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
	\staffClassicalGuitarE
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
