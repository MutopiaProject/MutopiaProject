% Created on Tue Sep 25 2007
% 10/19/07 corrected octave f''->f' measure 5


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
	subsubtitle = "No. 10."
	composer = \markup {
		\column {"Frantisek Max Knjze" "(1784-1840)"}
			}
% MUTOPIA
 mutopiatitle = "Twelve Monferrine: No. 10"
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
 footer = "Mutopia-2007/10/23-1073"
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
	\set Staff.instrumentName=\markup{\larger\bold "Nº. 10  "}
	\relative c''{
%% Note: vertically align volta brackets-  #5 is default
%%		\override Staff.VoltaBracket #'minimum-space = #5.5

	\repeat volta 2 {
		\slurDown
		\partial 8*3
		<es gs,>8(^\> <fs a,>)\! <fs a,>_. 
		<d fs,>4 <d fs,>8 \grace {d16} cs8.^\> b16\! cs8 |
		d4 a8 <fs' d> <e cs> <d b> |  %2nd note "cs" in original (!!)
		cs4  cs8 <e cs>8 <d b> <b gs> |
		a4. <es' gs,>8(^\> <fs a,>)\! <fs a,>_. |
		<d fs,>4 <d fs,>8 \acciaccatura{cs16[ d]} cs8.^\> b16\! cs8 |
		<d fs,>4 a8 <fs' a,>4 <fs a,>8 |
		<fs cs>4 <fs cs>8 <gs cs,>8. fs16 <gs cs,>8 |
		fs4.
		
		}
	\repeat volta 2 {
		\partial 8*4
		s8 \acciaccatura {g16} fs8. es16 fs8
		<fs a,>4 <fs a,>8 g4 g8 |
		<fs a,>4. <d fs,>8 <e g,> <fs a,> |
		e4 e8 d4 d8 |
		cs4. <es gs,>8( <fs a,>) <fs a,>_. |
		<d fs,>4 <d fs,>8 \acciaccatura{cs16[ d]} cs8. b16 cs8 |
		<d fs,>4 a8 <gs' es>( <a fs>) <a fs> |
		fs4 fs8 e8. fs16 e8 |
		<d fs,>4.
		
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
		d4 d8 <g a,>4. |
		<fs d>4. r4 d8 |
		<a' e>4 <a e>8 e,4. |
		a4. r4 r8 |
		d4 d8 <g a,>4. |
		d4. r4 r8 |
		<a' cs,>4 <a cs,>8 <b cs,>4 <b cs,>8 |
		<cs a fs,>4.
				
		}
	\repeat volta 2 {
		\partial 8*4
		s8 r4 r8
		d,4 d8 <b' d,>4 <b d,>8 |
		d,4. d4. |
		<b' g,>4 <b g,>8 <b gs,>4 <b gs,>8 |
		<a a,>4. r4 r8 |
		d,4 d8 <g a,>4. |
		d4. r4 r8 |
		<d' a,>4 <d a,>8 <g, a,>4. |
		d4.		
	}
	}
}	

staffClassicalGuitarJ = \new Staff {
		\time 6/8
		\key d \major
		\set Staff.midiInstrument="acoustic guitar (nylon)"
	<<
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
		\new Voice = A { \voiceOne  \upper }
		\new Voice = C { \voiceFour  \lower }
	>>
}

\score { 
	\staffClassicalGuitarJ
}

		
\layout  {}

\score {
	\unfoldRepeats
	\staffClassicalGuitarJ
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
