\version "2.14.2"

#(set-global-staff-size 13)

\include "flauto.ily"
flautoStaff = \include "staff.ily"

\include "oboe.ily"
oboeStaff = \include "staff.ily"

\include "fagotto.ily"
fagottoStaff = \include "staff.ily"

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

windGroup =  \new StaffGroup = "wind_group" <<
	\flautoStaff
	\oboeStaff
	\fagottoStaff
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
	\paminaStaff
>>
	\layout {}
	\include \incmidi
}
