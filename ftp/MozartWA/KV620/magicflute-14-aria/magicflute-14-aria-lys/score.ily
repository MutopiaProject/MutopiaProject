\version "2.14.2"

#(set-global-staff-size 13)

\include "flauti.ily"
flautiStaff = \include "staff.ily"

\include "oboi.ily"
oboiStaff = \include "staff.ily"

\include "fagotti.ily"
fagottiStaff = \include "staff.ily"

\include "cornif.ily"
corniStaff = \include "staff.ily"

\include "trombed.ily"
trombeStaff = \include "staff.ily"

\include "timpanida.ily"
timpaniStaff = \include "staff.ily"

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

windGroup =  \new StaffGroup = "wind_group" <<
	\flautiStaff
	\oboiStaff
	\fagottiStaff
>>

brassGroup =  \new StaffGroup = "brass_group" <<
	\corniStaff
	\trombeStaff
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
	\brassGroup
	\timpaniStaff
	\stringGroup
	\konigindernachtStaff
>>
	\layout {}
	\include \incmidi
}
