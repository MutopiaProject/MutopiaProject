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
%	have syllables in the correct places. If you have corrections, please email	   %	%	me and I would be very happy to correct them.				 	   %
%		If you know someone who can sing this including the HIGH F, WOW! 	   %
%	Karmically, Deborah								   %
%											   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "header.ly"
\include "paper16.ly"

\include "allegromaestoso.ly"
\score {
<
\context StaffGroup <
\context Staff = oboi {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"    Oboi     "
	\property Staff.instr = #"Ob.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
}

\context Staff = fagotti {
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti    "
	\property Staff.instr = #"Fg.  "
	\clef "bass"
	\context Voice=one \partcombine Voice
		\context Thread=one \fagottoI
		\context Thread=two \fagottoII
}

\context Staff = corni {
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #'(lines "    Corni    " "     in B    " "     alto    ")
	\property Staff.instr = #"Co.  "
	\property Staff.transposing = #-2
	\notes { \key c \major }
		\context Voice=one \partcombine Voice
		\context Thread=one \cornibI
		\context Thread=two \cornibII
}
>

\context GrandStaff <
\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I   "
	\property Staff.instr = #"V.I "
	\context Voice=one \partcombine Voice
		\context Thread=one \violinooneI
		\context Thread=two \violinooneII
}

\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #"V.II"
	\context Voice=one \partcombine Voice
		\context Thread=one \violinotwoI
		\context Thread=two \violinotwoII
}
>

\context StaffGroup <
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #"Vla. "
	\clef "alto"
	\context Voice=one \partcombine Voice
		\context Thread=one \violaI
		\context Thread=two \violaII
}

\context Staff = violoncello {
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"Violoncello  "
	\property Staff.instr = #" Vc. "
	\clef "bass"
	\notes< 
		\context Voice=violoncello
			\violoncello
	>
}

\context Staff = contrabasso {
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"Contrabasso  "
	\property Staff.instr = #" Cb. "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes< 
		\context Voice=contrabasso
			\contrabasso
	>
}
>

\context StaffGroup <
\context Staff = voice {
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = #'(lines "   Konigin  " "  der Nacht ")
	\property Staff.instr = #"KdN  "
	\context Voice=konigindernacht
		\konigindernacht
}
>
>

\include "scorepaper.ly"

\midi { \tempo 4=150 }
}

\include "arielarghetto.ly"
\score {
<
\context StaffGroup <
\context Staff = oboi {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"    Oboi     "
	\property Staff.instr = #"Ob.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
}

\context Staff = fagotti {
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti    "
	\property Staff.instr = #"Fg.  "
	\clef "bass"
	\context Voice=one \partcombine Voice
		\context Thread=one \fagottoI
		\context Thread=two \fagottoII
}

\context Staff = corni {
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #'(lines "    Corni    " "     in B    " "     alto    ")
	\property Staff.instr = #"Co.  "
	\property Staff.transposing = #-2
	\notes { \key c \major }
		\context Voice=one \partcombine Voice
		\context Thread=one \cornibI
		\context Thread=two \cornibII
}
>

\context GrandStaff <
\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I   "
	\property Staff.instr = #"V.I "
	\context Voice=one \partcombine Voice
		\context Thread=one \violinooneI
		\context Thread=two \violinooneII
}

\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #"V.II"
	\context Voice=one \partcombine Voice
		\context Thread=one \violinotwoI
		\context Thread=two \violinotwoII
}
>

\context StaffGroup <
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #"Vla. "
	\clef "alto"
	\context Voice=one \partcombine Voice
		\context Thread=one \violaI
		\context Thread=two \violaII
}

\context Staff = violoncello {
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"Violoncello  "
	\property Staff.instr = #" Vc. "
	\clef "bass"
	\notes< 
		\context Voice=violoncello
			\violoncello
	>
}

\context Staff = contrabasso {
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"Contrabasso  "
	\property Staff.instr = #" Cb. "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes< 
		\context Voice=contrabasso
			\contrabasso
	>
}
>

\context StaffGroup <
\context Staff = voice {
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = #'(lines "   Konigin  " "  der Nacht ")
	\property Staff.instr = #"KdN  "
	\context Voice=konigindernacht
		\konigindernacht
}
>
>

\include "scorepaper.ly"

\midi { \tempo 4=72 }
}

\include "allegromoderato.ly"
\score {
<
\context StaffGroup <
\context Staff = oboi {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"    Oboi     "
	\property Staff.instr = #"Ob.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
}

\context Staff = fagotti {
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti    "
	\property Staff.instr = #"Fg.  "
	\clef "bass"
	\context Voice=one \partcombine Voice
		\context Thread=one \fagottoI
		\context Thread=two \fagottoII
}

\context Staff = corni {
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #'(lines "    Corni    " "     in B    " "     alto    ")
	\property Staff.instr = #"Co.  "
	\property Staff.transposing = #-2
	\notes { \key c \major }
		\context Voice=one \partcombine Voice
		\context Thread=one \cornibI
		\context Thread=two \cornibII
}
>

\context GrandStaff <
\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I   "
	\property Staff.instr = #"V.I "
	\context Voice=one \partcombine Voice
		\context Thread=one \violinooneI
		\context Thread=two \violinooneII
}

\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #"V.II"
	\context Voice=one \partcombine Voice
		\context Thread=one \violinotwoI
		\context Thread=two \violinotwoII
}
>

\context StaffGroup <
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #"Vla. "
	\clef "alto"
	\context Voice=one \partcombine Voice
		\context Thread=one \violaI
		\context Thread=two \violaII
}

\context Staff = violoncello {
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"Violoncello  "
	\property Staff.instr = #" Vc. "
	\clef "bass"
	\notes< 
		\context Voice=violoncello
			\violoncello
	>
}

\context Staff = contrabasso {
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"Contrabasso  "
	\property Staff.instr = #" Cb. "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes< 
		\context Voice=contrabasso
			\contrabasso
	>
}
>

\context StaffGroup <
\context Staff = voice {
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = #'(lines "   Konigin  " "  der Nacht ")
	\property Staff.instr = #"KdN  "
	\context Voice=konigindernacht
		\konigindernacht
}
>
>

\include "scorepaper.ly"

\midi { \tempo 4=130 }
}