\version "2.14.2"

#(set-global-staff-size 13)

\include "flauti.ily"
flautiStaff = \include "staff.ily"

\include "oboi.ily"
oboiStaff = \include "staff.ily"

\include "clarinettib.ily"
clarinettiStaff = \include "staff.ily"

\include "fagotti.ily"
fagottiStaff = \include "staff.ily"

\include "cornies.ily"
corniStaff = \include "staff.ily"

\include "trombees.ily"
trombeStaff = \include "staff.ily"

\include "timpani.ily"
timpaniStaff = \include "staff.ily"

\include "trombone.ily"
tromboneStaff = \include "staff.ily"

\include "trombonebasso.ily"
trombonebassoStaff = \include "staff.ily"

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

windGroup =  \new StaffGroup = "wind_group" <<
	\flautiStaff
	\oboiStaff
	\clarinettiStaff
	\fagottiStaff
>>

brassGroup =  \new StaffGroup = "brass_group" <<
	\corniStaff
	\trombeStaff
	\tromboneStaff
	\trombonebassoStaff
>>

violinGroup = \new GrandStaff = "violin_group" <<
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
	\brassGroup
	\timpaniStaff
	\stringGroup
>>
	\layout {}
	\include \incmidi
}
