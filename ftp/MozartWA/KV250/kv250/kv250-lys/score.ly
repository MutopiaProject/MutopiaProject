\version "2.18.0"

\include "header.ily"

#(set-global-staff-size 16)
upbow = #(make-music 'PostEvents)
downbow = \upbow
GP = ""

\include "notes1.ily"

\score{
<<
	\new StaffGroup <<
		\include "oboi.ily"
		\include "fagotti.ily"
		\include "cornid.ily"
		\include "trombe.ily"
		\include "violinI.ily"
		\include "violinII.ily"
		\include "viola.ily"
		\include "cello.ily"
	>>
>>
	\layout {}
}

\score{
<<
	\unfoldRepeats {
	\include "oboi.ily"
	}
	\unfoldRepeats {
	\include "fagotti.ily"
	}
	\unfoldRepeats {
	\include "cornid.ily"
	}
	\unfoldRepeats {
	\include "trombe.ily"
	}
	\unfoldRepeats {
	\include "violinI.ily"
	}
	\unfoldRepeats {
	\include "violinII.ily"
	}
	\unfoldRepeats {
	\include "viola.ily"
	}
	\unfoldRepeats {
	\include "cello.ily"
	}
>>
	\midi {\tempo 4=\midiTempo}
}

\include "notes2.ily"

\score{
<<
	\new StaffGroup <<
		\include "flauti.ily"
		\include "fagotti.ily"
		\include "cornig.ily"
		\include "violinsolo.ily"
		\include "violinI.ily"
		\include "violinII.ily"
		\include "viola.ily"
		\include "cello.ily"
	>>
>>
	\layout {}
}

\score{
<<
	\unfoldRepeats {
	\include "flauti.ily"
	}
	\unfoldRepeats {
	\include "fagotti.ily"
	}
	\unfoldRepeats {
	\include "cornig.ily"
	}
	\unfoldRepeats {
	\include "violinsolo.ily"
	}
	\unfoldRepeats {
	\include "violinI.ily"
	}
	\unfoldRepeats {
	\include "violinII.ily"
	}
	\unfoldRepeats {
	\include "viola.ily"
	}
	\unfoldRepeats {
	\include "cello.ily"
	}
>>
	\midi {\tempo 4=\midiTempo}
}

\include "notes3.ily"

\score{
<<
	\new StaffGroup <<
		\include "flauti.ily"
		\include "fagotti.ily"
		\include "cornig.ily"
		\include "violinsolo.ily"
		\include "violinI.ily"
		\include "violinII.ily"
		\include "viola.ily"
		\include "cello.ily"
	>>
>>
	\layout {}
}

\score{
<<
	\unfoldRepeats {
	\include "flauti.ily"
	}
	\unfoldRepeats {
	\include "fagotti.ily"
	}
	\unfoldRepeats {
	\include "cornig.ily"
	}
	\unfoldRepeats {
	\include "violinsolo.ily"
	}
	\unfoldRepeats {
	\include "violinI.ily"
	}
	\unfoldRepeats {
	\include "violinII.ily"
	}
	\unfoldRepeats {
	\include "viola.ily"
	}
	\unfoldRepeats {
	\include "cello.ily"
	}
>>
	\midi {\tempo 4=\midiTempo}
}

\include "notes4.ily"

\score{
<<
	\new StaffGroup <<
		\include "flauti.ily"
		\include "fagotti.ily"
		\include "cornig.ily"
		\include "violinsolo.ily"
		\include "violinI.ily"
		\include "violinII.ily"
		\include "viola.ily"
		\include "cello.ily"
	>>
>>
	\layout {}
}

\score{
<<
	\unfoldRepeats {
	\include "flauti.ily"
	}
	\unfoldRepeats {
	\include "fagotti.ily"
	}
	\unfoldRepeats {
	\include "cornig.ily"
	}
	\unfoldRepeats {
	\include "violinsolo.ily"
	}
	\unfoldRepeats {
	\include "violinI.ily"
	}
	\unfoldRepeats {
	\include "violinII.ily"
	}
	\unfoldRepeats {
	\include "viola.ily"
	}
	\unfoldRepeats {
	\include "cello.ily"
	}
>>
	\midi {\tempo 4=\midiTempo}
}

\include "notes5.ily"

\score{
<<
	\new StaffGroup <<
		\include "oboi.ily"
		\include "fagotti.ily"
		\include "cornid.ily"
		\include "trombe.ily"
		\include "violinI.ily"
		\include "violinII.ily"
		\include "viola.ily"
		\include "cello.ily"
	>>
>>
	\layout {}
}

\score{
<<
	\unfoldRepeats {
	\include "oboi.ily"
	}
	\unfoldRepeats {
	\include "fagotti.ily"
	}
	\unfoldRepeats {
	\include "cornid.ily"
	}
	\unfoldRepeats {
	\include "trombe.ily"
	}
	\unfoldRepeats {
	\include "violinI.ily"
	}
	\unfoldRepeats {
	\include "violinII.ily"
	}
	\unfoldRepeats {
	\include "viola.ily"
	}
	\unfoldRepeats {
	\include "cello.ily"
	}
>>
	\midi {\tempo 4=\midiTempo}
}

\include "notes6.ily"

\score{
<<
	\new StaffGroup <<
		\include "oboeI.ily"
		\include "oboeII.ily"
		\include "fagotti.ily"
		\include "cornia.ily"
		\include "violinI.ily"
		\include "violinII.ily"
		\include "viola.ily"
		\include "cello.ily"
	>>
>>
	\layout {}
}

\score{
<<
	\unfoldRepeats {
	\include "oboeI.ily"
	}
	\unfoldRepeats {
	\include "oboeII.ily"
	}
	\unfoldRepeats {
	\include "fagotti.ily"
	}
	\unfoldRepeats {
	\include "cornia.ily"
	}
	\unfoldRepeats {
	\include "violinI.ily"
	}
	\unfoldRepeats {
	\include "violinII.ily"
	}
	\unfoldRepeats {
	\include "viola.ily"
	}
	\unfoldRepeats {
	\include "cello.ily"
	}
>>
	\midi {\tempo 4=\midiTempo}
}

\include "notes7.ily"

\score{
<<
	\new StaffGroup <<
		\include "flauti.ily"
		\include "fagotti.ily"
		\include "cornid.ily"
		\include "trombe.ily"
		\include "violinI.ily"
		\include "violinII.ily"
		\include "viola.ily"
		\include "cello.ily"
	>>
>>
	\layout {}
}

\score{
<<
	\unfoldRepeats {
	\include "flauti.ily"
	}
	\unfoldRepeats {
	\include "fagotti.ily"
	}
	\unfoldRepeats {
	\include "cornid.ily"
	}
	\unfoldRepeats {
	\include "trombe.ily"
	}
	\unfoldRepeats {
	\include "violinI.ily"
	}
	\unfoldRepeats {
	\include "violinII.ily"
	}
	\unfoldRepeats {
	\include "viola.ily"
	}
	\unfoldRepeats {
	\include "cello.ily"
	}
>>
	\midi {\tempo 4=\midiTempo}
}

\include "notes8.ily"

\score{
<<
	\new StaffGroup <<
		\include "oboi.ily"
		\include "fagotti.ily"
		\include "cornid.ily"
		\include "trombe.ily"
		\include "violinI.ily"
		\include "violinII.ily"
		\include "viola.ily"
		\include "cello.ily"
	>>
>>
	\layout {}
}

\score{
<<
	\unfoldRepeats {
	\include "oboi.ily"
	}
	\unfoldRepeats {
	\include "fagotti.ily"
	}
	\unfoldRepeats {
	\include "cornid.ily"
	}
	\unfoldRepeats {
	\include "trombe.ily"
	}
	\unfoldRepeats {
	\include "violinI.ily"
	}
	\unfoldRepeats {
	\include "violinII.ily"
	}
	\unfoldRepeats {
	\include "viola.ily"
	}
	\unfoldRepeats {
	\include "cello.ily"
	}
>>
	\midi {\tempo 4=\midiTempo}
}

\include "notes9.ily"

\score{
<<
	\new StaffGroup <<
		\include "oboi.ily"
		\include "fagotti.ily"
		\include "cornid.ily"
		\include "trombe.ily"
		\include "violinI.ily"
		\include "violinII.ily"
		\include "viola.ily"
		\include "cello.ily"
	>>
>>
	\layout {}
}

\score{
<<
	\unfoldRepeats {
	\include "oboi.ily"
	}
	\unfoldRepeats {
	\include "fagotti.ily"
	}
	\unfoldRepeats {
	\include "cornid.ily"
	}
	\unfoldRepeats {
	\include "trombe.ily"
	}
	\unfoldRepeats {
	\include "violinI.ily"
	}
	\unfoldRepeats {
	\include "violinII.ily"
	}
	\unfoldRepeats {
	\include "viola.ily"
	}
	\unfoldRepeats {
	\include "cello.ily"
	}
>>
	\midi {\tempo 4=\midiTempo}
}
