\version "2.14.2"

#(set-global-staff-size 13)

\include "flauto.ily"
flautoStaff = \include "staff.ily"

\include "cornibassetto.ily"
cornibassettoStaff = \include "staff.ily"

\include "fagotti.ily"
fagottiStaff = \include "staff.ily"

\include "cornif.ily"
corniStaff = \include "staff.ily"

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
	\flautoStaff
	\cornibassettoStaff
	\fagottiStaff
>>

brassGroup =  \new StaffGroup = "brass_group" <<
	\corniStaff
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
	\stringGroup
>>
	\layout {}
	\include \incmidi
}
