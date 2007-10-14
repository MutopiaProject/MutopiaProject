% Created on Sat Sep 29 2007
\version "2.11.33"
#(set-global-staff-size 18) 

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
	subsubtitle = "No. VI"
	composer = \markup {
		\column {"Frantisek Max Knjze" "(1784-1840)"}
			}
% MUTOPIA
 mutopiatitle = "Six Progressive Studies: No. VI"
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
 footer = "Mutopia-2007/10/14-1063"
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
oss = \markup {
	\score 
	{ \new Staff \with {
		\remove Time_signature_engraver
		fontSize = #-4
		\override StaffSymbol #'staff-space = #(magstep -4)
		firstClef = ##f
		} 
		\relative c''
		{
		 <es c g c,>4.\arpeggio ~ <es c g c,>4}
		\layout { ragged-right = ##t }
    }
    }

%{
nB = \markup {
	\score 
	{ \new Staff \with {
		\remove Time_signature_engraver
		fontSize = #-4
		\override StaffSymbol #'staff-space = #(magstep -4)
		firstClef = ##f
		} 
		{  << cs''4\\ a' >> } 
		\layout { 
			ragged-right = ##t }
    }
    }

   \markup {\smaller
        \fill-line {
     \override #'(line-width . 95)
      \justify-string # "   
 N.B. In the following lesson, the left 
	hand is almost always located in the 2nd position. It is 
	recommended that beginners keep the index finger of the 
	left hand in position to play the c-sharp and a. " \nB
	
   }
    }
   

\markup{\large\column{" " " " }}

%}
 
upper = {
	\set Staff.instrumentName=\markup{
		\column {\larger\bold "Nº. VI  " \italic "Cantabile. "}}
	\relative c''{
%% Note: vertically align volta brackets-  #5 is default
%%		\override Staff.VoltaBracket #'minimum-space = #5.5
	\slurDown
	\repeat volta 2 {
	\partial 8*1	
		e8 |
		<cs a> e_\bpos e  <b d> e e |
		<cs a> <e cs> <d b> <cs a> <d b> <e cs> |
		<d b> e e <cs a> e e  |
		<b gs> e_\loc e \acciaccatura {fs16} e8_\bpos ds e |
		<cs a> e e <d b> e e |
		<cs a> <d b> <e cs> <fs d> <gs b,> <a cs,> |
		<cs, a> e e <d b> e e |
		<cs a>4. r4
		
		}
	\repeat volta 2 {
		\partial 8*1
		e8 |
		<d b>4 <d b>8 <cs a>4 <cs a>8 |
		<b gs> gs a <b gs> <cs a>_\bpos <d b> |
		<e cs>4 <e cs>8 <d b>4 <d b>8 |
		<cs a>4 a8 a( gs) a |
		fs'4 fs8 fs4 fs8 |
		<gs b,>4 e8 <e gs,>4 <b gs>8 |
		<cs a>4 <fs cs a>8 <ds fs,>4 <ds fs,>8 |
		<e b gs>4.\fermata e8^\markup{\smaller\hspace #-1 "ad libitam"}
			ds d_\bpos |
		<cs a> a,_\< <cs' a> <d b> a, <e'' cs>  |
		<fs d> a,, <gs'' b,>\! <a cs,>4 e8 |
		<cs a> e e <d b> e e |
		<cs a>4 r8 r4 r8 | 
		<d b>4 <d b>8 <d b> fs( e) |
		<cs a>4 r8 r4 r8 |
		<b d,>4 <b d,>8 <b d,>4 <cs e,>8 |
		a4 s8 s4. |
		a4 e8 a4 e8 |
		a2. ~ | a4. r4\fermata
		
		}
		
	\repeat volta 2 {
		\partial 8*1
		fs'16^\markup{\hspace #-4 \bold "Minore"} fs |
		fs4 cs8 fs4 cs8 | fs4. a |
		a4_\P <gs b,>8_\dol <fs a,>4 <gs b,>8 |
		es4. ~ es4 fs16_\fF fs |
		fs4 cs8 fs4 cs8 | 
		fs4. a | 
		<a cs,>4 <e cs>8 <d b> e <d b> |
		<cs a>4.~ <cs a>4
		
		}
	\repeat volta 2 {
		\partial 8*1
		fs16_\fF fs |
		s4. s |
		a fs |
		<fs a,>4_\dol <fs a,>8 <g b,>4 <g b,>8 |
		<fs a,>4. ~ <fs a,>4 d16_\fF d |
		d4 a8 d4 a8 |
		d4 fs8 a4. |
		<fs cs a>4_\P <fs cs a>8_\dol <gs b,>4 <gs b,>8 |
		<fs cs a>4. ~ <fs cs a>4
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
	\key a \major
	\repeat volta 2 {
	\partial 8*1
		r8 |
		a4 r8 e4 r8 | a4 r8 r4 r8 |
		e4 r8 a4 r8 | e4 r8 r4 r8 |
		a4 r8 e4 r8 | a4 r8 r4 r8 |
		e4 r8 e4 r8 | a( cs e) a,4
	}
	\repeat volta 2 {
	\partial 8*1 
		s8 
		r8 e4 r8 e4 | e r8 r4 r8 |
		r e4 r8 e4 | r8 a a' r4 r8 |
		<<{ \override Stem #'length-fraction = #0.4
			a8 b a a b a }\\{ b,4 ds8 b4 ds8}>> |
		e,4 r8 e4 r8 | a4 a8 b4 b8 | 
		e,4. r4 r8 | s8 a4 s4. | s4. a4 r8 |
		e4 r8 e4 r8 | a4 e8 a4 cs8 | e,4 r8 e4 r8 |
		a4 e8 a4 cs8 | e,4 r8 e4 r8 | 
		cs'4 e,8^\< a4 e8\! | a4 e8 a4 e8 |
		a2. ~ | a4. r4
		}

	\repeat volta 2 {
		\partial 8*1
		fs'16_\markup{\smaller\bold \hspace #-7 "Fine"} fs |
		fs4 cs8 fs4 cs8 | fs4. a | cs4 s8 s4 s8 
%_\markup {\hspace #-10 \oss }		
		
<<{ cs4. ~ cs4 } 
\new Staff \with {
		\remove Time_signature_engraver
		fontSize = #-4
		\override StaffSymbol #'staff-space = #(magstep -4)
		firstClef = ##f
		} 
		\relative c''
		{
		 <es c g c,>4.\arpeggio ~ <es c g c,>4}
		
>>
fs,16 fs | fs4 cs8 fs4 cs8 |
		fs4. a | e,4 r8 e4 r8 | a4. ~ a4		
		}
	\repeat volta 2 {
		\partial 8*1
		fs'16 fs |
		<fs fs'>4 <fs fs'>8 <fs fs'>4 <fs fs'>8 | a4. fs | d4 d8 d4 d8 |
		d4. ~ d4 d16 d | d4 a8 d4 a8 |
		d4 fs8 a4. | cs,4 cs8 cs4 cs8 | 
		<<{\hideNotes <fs' f,,>4.\arpeggio s4 }
		\\ { fs,,4.
		~ fs4_\markup{\smaller\bold \hspace #-3 "D.C."} }>>
		
		}
	
	}
}	

staffClassicalGuitarF = \new Staff 

%%%  this moves the fingering closer to the note than default
		\with { 
			\override Fingering #'padding = #0.2 
		}
			{
			\time 6/8
			\key a \major
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
	\staffClassicalGuitarF
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
	\staffClassicalGuitarF
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
