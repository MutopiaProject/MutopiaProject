\version "2.16.0"

instrument = "Orchestra"
% instrument = ""

\include "header.ly"
\include "global.ly"

#(set-global-staff-size 16)

\include "bassi.ly"
\include "clarinetti.ly"
\include "corni.ly"
\include "fagotti.ly"
\include "flauti.ly"
\include "oboi.ly"
\include "timpani.ly"
\include "trombe.ly"
\include "viole.ly"
\include "violino-1.ly"
\include "violino-2.ly"


legniGroup =  \context StaffGroup = legni_group <<
	\flautiStaff
	\oboiStaff
	\clarinettiStaff
	\fagottiStaff
>>

ottoniGroup =  \context StaffGroup = otonni_group <<
	\corniStaff
	\trombeStaff
>>

timpaniGroup =  \context StaffGroup = timpani_group <<
	\override StaffGroup.SystemStartBracket #'collapse-height = #1
	\timpaniStaff
>>

violiniGroup =  \context GrandStaff = violini_group <<
	\violinoIStaff
	\violinoIIStaff
>>

archiGroup =  \context StaffGroup = archi_group <<
	\violiniGroup
	\violeGroup
	\bassiGroup
>>


\include "coriolan-paper.ly"
\score{
	<<
		\legniGroup
		\ottoniGroup
		\timpaniGroup
		\archiGroup
	>>
	\header{
		instrument = ""
	}
	\layout {}
	\include "coriolan-midi.ly"
}
