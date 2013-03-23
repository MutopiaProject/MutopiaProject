\version "2.14.2"

pLyrics = {}

#(set-global-staff-size 13)

\include "clarinettib.ily"
clarinettiStaff = \include "staff.ily"

\include "fagotti.ily"
fagottiStaff = \include "staff.ily"

\include "cornie.ily"
corniStaff = \include "staff.ily"

\include "violinoI.ily"
violinoIStaff = \include "staff.ily"

\include "violinoII.ily"
violinoIIStaff = \include "staff.ily"

\include "viola.ily"
violaStaff = \include "staff.ily"

\include "violoncello.ily"
violoncelloStaff = \include "staff.ily"

\include "contrabasso.ily"
contrabassoStaff = \include "staff.ily"

\include "pamina.ily"
paminaStaff = \include "staff.ily"

\include "papageno.ily"
papagenoStaff = \include "staff.ily"

windGroup = \new StaffGroup = "wind_group" <<
	\clarinettiStaff
	\fagottiStaff
	\corniStaff
>>

violinGroup = \new GrandStaff = "string_group" <<
	\violinoIStaff
	\violinoIIStaff
>>

stringGroup = \new StaffGroup = "string_group" <<
	\violinGroup
	\violaStaff
	\violoncelloStaff
	\contrabassoStaff
>>

vocalGroup = \new ChoirStaff = "vocal_group" <<
	\paminaStaff
	\papagenoStaff
>>

\score {
<<
	\windGroup
	\stringGroup
	\vocalGroup
>>
	\layout {}
	\include \incmidi
}
