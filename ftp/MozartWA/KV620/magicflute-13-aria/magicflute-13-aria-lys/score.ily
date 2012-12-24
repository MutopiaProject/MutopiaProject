\version "2.14.2"

#(set-global-staff-size 13)

\include "piccolo.ily"
piccoloStaff = \include "staff.ily"

\include "flauto.ily"
flautoStaff = \include "staff.ily"

\include "clarinettic.ily"
clarinettiStaff = \include "staff.ily"

\include "fagotti.ily"
fagottiStaff = \include "staff.ily"

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

\include "monostatos.ily"
monostatosStaff = \include "staff.ily"

windGroup =  \new StaffGroup = "wind_group" <<
	\piccoloStaff
	\flautoStaff
	\clarinettiStaff
	\fagottiStaff
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
	\stringGroup
	\monostatosStaff
>>
	\layout {}
	\include \incmidi
}
