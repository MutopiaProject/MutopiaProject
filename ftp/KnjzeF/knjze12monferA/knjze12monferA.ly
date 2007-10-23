% Created on Mon Sep 24 2007
% 10/19/07 corrected grace fs->f measure 11

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
	subsubtitle = "No. 1."
	composer = \markup {
		\column {"Frantisek Max Knjze" "(1784-1840)"}
			}
% MUTOPIA
 mutopiatitle = "Twelve Monferrine: No. 1"
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
 footer = "Mutopia-2007/10/23-1064"
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


%% End shortcuts




upper = {
	\set Staff.instrumentName=\markup{\larger\bold "Nº. 1  "}
	\relative c''{
	\repeat volta 2 {
		\partial 8*4 
		s8  %% added to appease midi timing
		\acciaccatura {\slurDown f16} e8 ds e |
		<a e>4 e8 <d b>8. e16 <d b>8 |
		c4. a8 b c |
		<d b>8. e16 <d b>8 <c a>8. e16 <c a>8 	
		b4 \slurDown e8( \grace f16 e8.) ds16 e8 | 
		\slurUp a4 e8 d8. e16 d8 |
		c4.\acciaccatura {\slurDown a'16[ b]} a8 gs a |
		\acciaccatura {\slurDown a8} c4 e,8 e d b |
		a4. 
		}
	\repeat volta 2 {
		\partial 8*3
		g8_\markup{\smaller\bold "f"} c d |
		e8. f16 e8 <g d>4. |
		c,8. d16 c8 <e b>4. |
		c4 c8 b4 a8 |
		gs4.\acciaccatura{\slurDown f'16}e8 ds e |
		a4 e8 d8. e16 d8 |
		c4.\acciaccatura {\slurDown a'16[ b]} a8 gs a |
		\acciaccatura {\slurDown a8} c4 e,8 e d b |
		a4.
		}
	
		
	}
}		


lower = {
	\relative c' { 
		\override Staff.NoteCollision 
		#'merge-differently-headed = ##t
	\repeat volta 2 {
		\partial 8*4
		s8 \grace s16
		\stemDown r4 r8 |
		<c' a,>4 r8 e,,4 e8 |
		a4. r4 r8 |
		e4. e |
		<gs' e,> r4 r8 |
		<e' c a,>4 r8 <b e,,>4 <b e,,>8 |
		<a a,>4. r4 r8 |
		a,4 r8 <b' gs e,>4 <gs e,>8 |
		a,4.
		}
	\repeat volta 2 {
		\partial 8*3
		s4.
		<g' c,>4. b,8. a16 g8 |
		<a' a,>4. gs,8. fs16 e8 |
		<a' a,>4 <a f>8 <a d,>4 ds,8
		<e e,>4. r4_\markup{\smaller\bold"mf"} r8 |
		<e' c a,>4 r8 <b e,,>4 <b e,,>8 |
		<a a,>4. r4 r8 |
		a,4 r8 <b' gs e,>4 <gs e,>8 |
		a,4.
	}
	}
}	

staffClassicalGuitarA = \new Staff 
		{
			\time 6/8
			\key c \major
			\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\override Staff.NoteCollision 
			#'merge-differently-headed = ##t
			\new Voice = A { \voiceOne  \upper }
			\new Voice = C { \voiceFour  \lower }	
		>>			
}

\score { 
	\staffClassicalGuitarA
\layout  {}		
}		


\score {
	\unfoldRepeats
	\staffClassicalGuitarA
	  \midi {
	    \context {
	      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4 )
      }
    }
}
