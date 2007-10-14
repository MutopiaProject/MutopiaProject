% Created on Fri Sep 28 2007
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
	subsubtitle = "No. II"
	composer = \markup {
		\column {"Frantisek Max Knjze" "(1784-1840)"}
			}
% MUTOPIA
 mutopiatitle = "Six Progressive Studies: No. II"
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
 footer = "Mutopia-2007/10/14-1059"
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
		\column {\larger\bold "Nº. II  " \italic "Allegretto. "}}
	\relative c''{
%% Note: vertically align volta brackets-  #5 is default
%%		\override Staff.VoltaBracket #'minimum-space = #5.5
	\key c \major
	\slurDown
	\repeat volta 2 {
		\partial 8*1
		r8 |
		a c b e | c a b4 | a8 c b a |
		e16 gs b e gs,[ b e,,8] |
		a'8 c b e | c a b4 | c8 e b e |
		a,4 r8
		}
	\repeat volta 2 {
		\partial 8*1
		e'8 |
		d e <c a> e | b e d e | c <e c> <d b> <c a> |
		<b gs> e e,,4 | <d'' b>8 e <c a> e |
		<b gs> e <d b> e | <c a>[ c,16 c'] b, b' a, a' |
		<e' b gs>2\arpeggio\fermata | a,8 c b e |c a b4 |
		a8 c b a | e16 gs b e gs,[ b e,,8] |
		 a'8 c b e |c a <b gs>4 | <c a>8 e b e |
		r16 a, c e f( e) gs, b | r a c e f( e) gs, b |
		a4 <a e> | <a e> r8^\fermata
		}
		\key a \major
	\repeat volta 2 {
		\partial 8*1
		e'8^\markup{\hspace #-4 \bold "Maggiore"}
		<cs a>4 <cs a>8 <cs a> | <fs cs a>4 <fs cs a> |
		d d | <e b>4. d8 | <cs a>4 <cs a> |
		<d b>8 <e cs> <fs d> <d b> | <b gs> e <cs a> e |
		<d b> e <b gs> e | <cs a>4 <cs a>8 <cs a> |
		<fs cs a>4 <fs cs a> | <d b> d | <e b gs>4. <d gs,>8 |
		<cs a>8 e( fs) e | <b gs> e( fs) e | r a,[ cs e] | a,4 r8		
		}
	\repeat volta 2 {

		\partial 8*1
		e'8 |
		b^\dotI[ e^\dotIII e^\dotII e^\dotI] | 
		cs e <cs as> e | <d b>^\dotI[ e^\dotIII e^\dotII e^\dotI]  |
		<b gs>[e e e] | r a,[ cs fs] | r a,[ b fs'] |
		r gs,[ b e] | fs[( e) gs, b] | r a[ cs a] | r a[ cs a] |
		r a[ cs a] | r a[ c a] | cs[ e( fs) e_.] |
		b[ e( fs) e_.] | r a,[ cs e_.] | a,4^\dc r8
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
	\key c \major
	\repeat volta 2 {
		\partial 8*1
		e,8 | a4 <gs' e,> | a, <gs' e,> | a, ds |
		e s | a, <gs' e,> | a, <gs' e,> | a, <gs' e,> |
		a,8[ e a] 				
		}
	\repeat volta 2 {
		\partial 8*1
		r8 |
		<b' e,,>4 r | <gs e,> <b e,,> | <a a,> r |
		e, e | e r | e e | a8 c b a |
		e2 |  a4 <gs' e,> | a, <gs' e,> | a, ds |
		e s |  a,4 <gs' e,> | a, e'8 d | c a e4 |
		a e |a e | a a | a r8_\markup{\smaller\bold "Fine"}
		}
	\key a \major
	\repeat volta 2 {
		\partial 8*1
		e8 |
		a2 | fs | d'4 b | <gs' e>4. gs8 |
		a,4 a| d d | e,2 | e | a | fs | d'4 b |
		e,2 | a | e | a | a4 r8
		}
	\repeat volta 2 {
		\partial 8*1
		s8 |
		<gs' e,>4 r | <a e,> r | e,2 | e | a |
		b | e, | s | a | es' | fs | ds | <a' e>4 r |
		<gs e,> r | a,2 | a4 r8 
		}
	
	}
}	

staffClassicalGuitarA = \new Staff 

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
