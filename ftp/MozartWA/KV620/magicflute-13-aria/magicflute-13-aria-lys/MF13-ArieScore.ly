\version "1.5.66"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%											   %
%		One source, Dover Publications (an unabridged republication of urtext      %	
%	originally published by C. F. Peters, n.d.) states "For legal reasons this title   % %	cannot be offered or sold in the Federal Republic of Germany and West Berlin." 	   %
%	Other urtext and other pieces (from late 1800's) consulted had no such             %
% 	disclaimer.  If you reside and/or are a citizen of Germany, please consult your    %	%	local laws before downloading or using this piece.  			  	   %
%		Please note that there are some problems with the original score (lots of  %	%	errors, poor printing, and omissions). I have corrected what I could find, but     %
%	most certainly missed some. Please let me know if you find any problems so that    %
%	I may update the file for everyone.						   %
%		For those who know German, my apologies upfront. I'm not sure if I	   %
%	have syllables in the correct places. If you have corrections, please email	   %	%	me and I would be very happy to correct them.  Karmically, Deborah		   %
%											   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "header.ly"
% \include "paper16.ly"

\include "MF13-Arie.ly"
\score {
<
\context StaffGroup <
\context Staff = piccolo {
	\property Staff.midiInstrument = #"piccolo"
	\property Staff.instrument = #" Flauto Piccolo "
	\property Staff.instr = #" Pi.  "
	\property Staff.transposing = #12
	\context Voice=piccolo
	\piccolo
}

\context Staff = flauto {
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"  Flauto "
	\property Staff.instr = #" Fl.  "
	\context Voice=flauto
	\flauto
}

\context Staff = clarinetti {
	\property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = #" Clarinetti in C "
	\property Staff.instr = #" Cl. "
	\context Voice=one \partcombine Voice
		\context Thread=one \clarinettiI
		\context Thread=two \clarinettiII
}

\context Staff = fagotti {
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti    "
	\property Staff.instr = #" Fg.  "
	\clef "bass"
	\context Voice=one \partcombine Voice
		\context Thread=one \fagottoI
		\context Thread=two \fagottoII
}
>

\context GrandStaff <
\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I   "
	\property Staff.instr = #" V.I "
	\context Voice=violinoI
	\violinoI
}

\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #" V.II"
	\context Voice=violinoII
	\violinoII
}

>

\context StaffGroup <
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #" Vla. "
	\clef "alto"
	\context Voice=viola
	\viola
}
>

\context StaffGroup <
\context Staff = violoncello {
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"  Violoncello "
	\property Staff.instr = #" Vc. "
	\clef "bass"
	\notes< 
		\context Voice=violoncello
			\violoncello
	>
}

\context Staff = contrabasso {
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"  Contrabasso  "
	\property Staff.instr = #" Cb. "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes< 
		\context Voice=contrabasso
			\contrabasso
	>
}

\context Staff = voice {
	\property Staff.midiInstrument = #"voice oohs"
	\property Staff.instrument = #" Monostatos "
	\property Staff.instr = #" Mon. "
	\property Staff.transposing = #-12
	\context Voice=monostatos
	\monostatos
}
>
>
\include "paper.ly"

\midi { \tempo 4=130 }
}