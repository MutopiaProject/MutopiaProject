\version "1.5.66"

\include "header.ly"
\include "paper.ly"
\include "MF15-Arie.ly"

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
%	have syllables in the correct places. If you have corrections, please email	   %	%	me and I would be very happy to correct them.	Karmically, Deborah		   %
%											   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flautiStaff = \context Staff = flauti <
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"  Flauti  "
	\property Staff.instr = #" Fl. "
	\context Voice=one \partcombine Voice
	\context Thread = one \flautiI
	\context Thread = two \flautiII
>

fagottiStaff =  \context Staff = fagotti <
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti    "
	\property Staff.instr = #" Fg. "
	\clef "bass"
	\context Voice=one \partcombine Voice
		\context Thread=one \fagottiI
		\context Thread=two \fagottiII
>

cornieStaff = \context Staff = cornie <
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #" Corni in E "
	\property Staff.instr = #" Co. "
	\property Staff.transposing = #4
	\context Voice=one \partcombine Voice
		\context Thread=one \cornieI
		\context Thread=two \cornieII
>

violinoIStaff = \context Staff = violino1 <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I   "
	\property Staff.instr = #" V.I "
	\context Voice=violinoI
	\violinoI
>

violinoIIStaff = \context Staff = violino2 <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #" V.II"
	\context Voice=violinoII
	\violinoII
>
violaStaff =  \context Staff = viola <
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #" Vla. "
	\clef "alto"
	\context Voice=viola
	\viola
>

voiceStaff = \context Staff = voice <
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #" Sarastro "
	\property Staff.instr = #" Sar. "
	\clef "bass"
%		\property Staff.transposing = #-12
	\context Voice=sarastro
	\sarastro
>

violoncelloStaff = \context Staff = violoncello {
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"  Violoncello "
	\property Staff.instr = #" Vc. "
	\clef "bass"
	\notes< 
		\context Voice=violoncello
			\violoncello
	>
}

contrabassoStaff = \context Staff = contrabasso {
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

violini = \context GrandStaff = violini_group <
	\violinoIStaff
	\violinoIIStaff
>

bassi = \context GrandStaff = bassi_group <
	\violoncelloStaff
	\contrabassoStaff
>

\score {
<
	\context StaffGroup <
	\flautiStaff
	\fagottiStaff
	\cornieStaff

	>
	\context StaffGroup <
	\violini
	\violaStaff
	>
	\context StaffGroup <
	\bassi
	>
	\context ChoirStaff <
	\voiceStaff
	>
>
\include "paper.ly"

\midi { \tempo 4=45 }
}