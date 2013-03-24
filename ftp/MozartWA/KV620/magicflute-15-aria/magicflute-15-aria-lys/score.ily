\version "2.14.2"

#(set-global-staff-size 13)

\include "flauti.ily"
flautiStaff = \include "staff.ily"

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

\include "sarastro.ily"
sarastroStaff = \include "staff.ily"

windGroup =  \new StaffGroup = "wind_group" <<
	\flautiStaff
	\fagottiStaff
	\corniStaff
>>

violinGroup = \new GrandStaff = "violin_group" <<
	\violinoIStaff
	\violinoIIStaff
>>

stringGroup = \new StaffGroup = "string_group" <<
	\violinGroup
	\viola
	\violoncelloStaff
	\contrabassoStaff
>>


\score {
<<
  	\windGroup
	\stringGroup
	\sarastroStaff
>>
	\layout {}
	\include \incmidi
}
