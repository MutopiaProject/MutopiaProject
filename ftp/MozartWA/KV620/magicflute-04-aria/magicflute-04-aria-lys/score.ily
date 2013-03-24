\version "2.14.2"

#(set-global-staff-size 13)

\include "oboi.ily"
oboiStaff = \include "staff.ily"

\include "fagotti.ily"
fagottiStaff = \include "staff.ily"

\include "cornib.ily"
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

\include "konigindernacht.ily"
konigindernachtStaff = \include "staff.ily"

windGroup = \new StaffGroup = "wind_group" <<
	\oboiStaff
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

\score {
<<
	\windGroup
	\stringGroup
	\konigindernachtStaff
>>
	\layout {}
	\include \incmidi
}
