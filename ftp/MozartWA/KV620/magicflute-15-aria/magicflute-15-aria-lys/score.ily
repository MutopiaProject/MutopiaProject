\version "2.18.0"

#(set-global-staff-size 13)

\include "parts/flauti.ily"
flautiStaff = \include "parts/staff.ily"

\include "parts/fagotti.ily"
fagottiStaff = \include "parts/staff.ily"

\include "parts/cornie.ily"
corniStaff = \include "parts/staff.ily"

\include "parts/violinoI.ily"
violinoIStaff = \include "parts/staff.ily"

\include "parts/violinoII.ily"
violinoIIStaff = \include "parts/staff.ily"

\include "parts/viola.ily"
violaStaff = \include "parts/staff.ily"

\include "parts/violoncello.ily"
violoncelloStaff = \include "parts/staff.ily"

\include "parts/contrabasso.ily"
contrabassoStaff = \include "parts/staff.ily"

\include "parts/sarastro.ily"
sarastroStaff = \include "parts/staff.ily"

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

incmidi = "parts/midi.ily"

\score {
<<
  	\windGroup
	\stringGroup
	\sarastroStaff
>>
	\layout {}
	\include \incmidi
}
