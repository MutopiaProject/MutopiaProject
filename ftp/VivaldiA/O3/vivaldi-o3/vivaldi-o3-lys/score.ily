\version "2.18.0"

\include "../violinI.ily"
violinI = \include "../staff.ily"

\include "../violinII.ily"
violinII = \include "../staff.ily"

\include "../violinIII.ily"
violinIII = \include "../staff.ily"

\include "../violinIV.ily"
violinIV = \include "../staff.ily"

\include "../violaI.ily"
violaI = \include "../staff.ily"

\include "../violaII.ily"
violaII = \include "../staff.ily"

\include "../cello.ily"
cello = \include "../staff.ily"

\include "../bass.ily"
bass = \include "../staff.ily"

\score {
<<
	\violinI
	\violinII
	\violinIII
	\violinIV
	\violaI
	\violaII
	\cello
	\bass
>>
	\layout {}
\include \incmidi
}
