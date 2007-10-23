% Created on Wed Sep 26 2007
% 10/19/07 corrected grace c->cs measure 11 


\version "2.11.33"
%#(set-global-staff-size 17) 
\include "english.ly"
 
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
	title = "Twelve Monferrine"
	subsubtitle = "No. 12."
	composer = \markup {
		\column {"Frantisek Max Knjze" "(1784-1840)"}
			}
% MUTOPIA
 mutopiatitle = "Twelve Monferrine: No. 12"
 mutopiacomposer = "KnjzeF"
 mutopiapoet = ""
 mutopiaopus = ""
 mutopiainstrument = "Classical Guitar"
 date = "unk"
 source = "Boije collection #279"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Stan Sanderson"
 moreInfo = "The Boije collection is found at http://www.muslib.se/ebibliotek/boije/"
 footer = "Mutopia-2007/10/23-1075"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%% Source
%% Boije collection # 279
%% http://www.muslib.se/ebibliotek/boije/
%%
%% Praga presso Marco Berra.
%% Fra. Max Knjze (also spelled Kniže) was born
%% 7 Sep 1784 in Dralielcice, near Beroun, Bohmen. 
%% He died 23 Jul 1840 in Prague, Czechoslovakia.
%% He was a guitarist, composer and conductor.
%%




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

%% End shortcuts


upper = {
	\set Staff.instrumentName=\markup{\larger\bold "Nº. 12  "}
	\relative c''{
%% Note: vertically align volta brackets-  #5 is default
%%		\override Staff.VoltaBracket #'minimum-space = #5.5

	\repeat volta 2 {
		\slurDown
		\partial 8*3
		b8.^\markup{\smaller\bold"dol."} b16 b8
		<b gs>4 <gs e>8 <e' cs> <ds b> <cs a> |
		<b gs>4 <gs e>8 gs'8( e) b |
		a8. fs'16 a,8 gs8. e'16 gs,8 |
		fs4. b8. b16 b8 |
		b4 <gs e>8 <e' cs> <ds b> <cs a> |
		b4 <gs e>8 b'( gs) e_. |
		b gs'( e) ds8. cs16 ds8 |
		e4.
		
		}
	\repeat volta 2 {
		\partial 8*4
		s8 \grace {cs'16} <b gs>8 <as fss> <b gs>
		<gs b,>8. b,16 <e gs,>8 <fs a,>8. b,16 <fs' a,>8 |
		<e gs,>8. b16 <e gs,>8 \grace {a16} <gs e>8 <fss ds!> <gs e> |
		<b gs>4 <gs e>8 a4 a8 |
		fs4. \grace {cs'16} <b gs>8 <as fss> <b gs> |
		<gs b,>8. b,16 <e gs,>8 <fs a,>8. b,16 <fs' a,>8 |
		<e gs,>8. b16 <e gs,>8 e gs b |
		\acciaccatura{b16} e4 e,8 <fs a,>8. b,16 <fs' a,>8 |
		e4.
		
		}
			
	}
}		


lower = {
	\relative c' { 
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
	\repeat volta 2 {
		\partial 8*3
		r4 r8
		e,4 r8 e4 r8 |
		e4. r4 r8 |
		b'4 b8 <e e,>4 <e e,>8 |
		b4. r4 r8 |
		<gs' e,>4 r8 e,4 r8 |
		<gs' e,>4 r8 r4 r8 |
		e,4 r8 <a' fs b,>4. |
		<b gs e,>4.
				
		}
	\repeat volta 2 {
		\partial 8*4
		s8_\F r4 r8
		e,,4 e8 b'4 b8 |
		e,4 e8 r4 r8 |
		e4 e8 <fs'' cs a,>4_\epos <fs cs a,>8 |
		<ds b b,>4._\gpos r4_\P r8 |
		e,,4 e8 b'4 b8 |
		e,4 e8 r4 r8 |
		e4 <b'' gs e,>8 b,4 b8 |
		<b' gs e,>4.

		}
	}
}	

staffClassicalGuitarL = \new Staff {
		\time 6/8
		\key e \major
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\override Staff.NoteCollision 
			#'merge-differently-headed = ##t
			\new Voice = A { \voiceOne  \upper }
			\new Voice = C { \voiceFour  \lower }
		>>
}

\score { 
	\staffClassicalGuitarL
	}
\layout  { }

\score {
	\unfoldRepeats
	\staffClassicalGuitarL
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
