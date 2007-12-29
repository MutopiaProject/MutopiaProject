\version "2.10.0"
\include "catalan.ly"

globalE = {
	\key mib \major
	\time 7/8
}

sopranoE = \relative do'' {
	\globalE
	r8^\markup{\bold Burlesque} sib r sib r sib r | \time 4/4
	r sib r sib sib4 r | \time 7/8
	r8 sib r sib r sib r |
	r sib r sib r sib r |
	r sib r sib r sib r |
	r reb r reb r reb r |
	<sib re!>[ <sib re>] <sib re>[ <sib re>] <do re>[ <do re>] r |
	<sib re>[ <sib re>] <sib re>[ <sib re>] <do re>[ <do re>] re | \time 4/4
	do( sib lab sib do sib do re |
	mi re do sib do4) do | \time 7/8
	<lab do>8[ <lab do>] <lab do>[ <lab do>] <sib do>[ <sib do>] r |
	<lab do>[ <lab do>] <lab do>[ <lab do>] <sib do>[ <sib do>] do | \time 4/4
	sib( lab solb lab sib lab sib do |
	sib lab solb lab~ <lab sib>4) <lab sib> | \time 7/8
% reprise
	r8 sib r sib r sib r | \time 4/4
	r sib r sib sib4 r | \time 7/8
	r8 sib r sib r sib r |
	r sib r sib r sib r |
	r sib r sib r sib r |
	r reb r reb r reb r |
	<sib re!>[ <sib re>] <sib re>[ <sib re>] <do re>[ <do re>] r |
	<sib re>[ <sib re>] <sib re>[ <sib re>] <sib re>[ <sib re>] re |
	mib sib r sib sib4 r8 | \bar "|."
}

parolesE = \lyricmode {
	Mange, mange, mange,
	mange, mange, mange!
	Mange, mange, mange,
	mange, mange, mange!
	Mange, mange, mange,
	mange, mange, mange!
	Prends part à la fê -- te,
	gen -- til -- le fil -- let -- te, et
	man -- ge!
	Rem -- plis ton as -- siet -- te,
	pi -- que ta four -- chet -- te, et
	man -- ge!
	Mange, mange, mange,
	mange, mange, mange!
	Mange, mange, mange,
	mange, mange, mange!
	Mange, mange, mange,
	mange, mange, mange!
	Prends part à la fê -- te,
	gen -- til -- le fil -- let -- te, et
	man -- ge! mange, mange, mange!
}

altoE = \relative do'' {
	\globalE
	r8 sol r sol r lab r | \time 4/4
	r sol r sol lab4 r | \time 7/8
	r8 sol r sol r lab r |
	r8 sol r sol r lab r |
	r8 sol r sol r lab r |
	r8 sib r sib r sib r |
	sol[ sol] sol[ sol] lab[ lab] r |
	sol[ sol] sol[ sol] lab[ lab] lab |
	lab( sol fa sol lab sol lab sib |
	do sib lab sol lab4) lab |
	fa8[ fa] fa[ fa] solb[ solb] r |
	fa[ fa] fa[ fa] solb[ solb] solb |
	solb( fa mib fa solb fa solb lab |
	sol fa mib fa re4) re | \time 7/8
	% reprise
	r8 sol r sol r lab r | \time 4/4
	r sol r sol lab4 r | \time 7/8
	r8 sol r sol r lab r |
	r8 sol r sol r lab r |
	r8 sol r sol r lab r |
	r8 sib r sib r sib r |
	sol[ sol] sol[ sol] lab[ lab] r |
	sol[ sol] sol[ sol] lab[ lab] lab |
	sol sol r lab sol4 r8 |
}

paroleaE = \lyricmode {
	Mange, mange, mange,
	mange, mange, mange!
	Mange, mange, mange,
	mange, mange, mange!
	Mange, mange, mange,
	mange, mange, mange!
	Prends part à la fê -- te,
	gen -- til -- le fil -- let -- te, et
	man -- ge!
	Rem -- plis ton as -- siet -- te,
	pi -- que ta four -- chet -- te, et
	man -- ge!
	Mange, mange, mange,
	mange, mange, mange!
	Mange, mange, mange,
	mange, mange, mange!
	Mange, mange, mange,
	mange, mange, mange!
	Prends part à la fê -- te,
	gen -- til -- le fil -- let -- te, et
	man -- ge! mange, mange, mange!
}

tenorE = \relative do' {
	\globalE
	\clef "G_8"
	R2.. | \time 4/4
	R1 | \time 7/8
	sol16[ lab sib8] sol16[ lab sib8] sol16[ lab sib( do reb do] |
	sib[ la sib8~] sib16[ la sol la] sib4.) |
	sol16[ lab sib8] sol16[ lab sib8] sol16[ lab sib( do reb do] |
	sib[ do reb8~] reb16[ do reb do] reb4) r8 |
	R2..*2 | \time 4/4
	r8 do r do r do r do |
	r do r do r do r do | \time 7/8
	R2..*2 | \time 4/4
	r8 sib r sib r sib r sib |
	r sib r sib fab4 fab | \time 7/8
% reprise
	R2.. | \time 4/4
	R1 | \time 7/8
	sol16[ lab sib8] sol16[ lab sib8] sol16[ lab sib( do reb do] |
	sib[ la sib8~] sib16[ la sol la] sib4.) |
	sol16[ lab sib8] sol16[ lab sib8] sol16[ lab sib( do reb do] |
	sib[ do reb8~] reb16[ do reb do] reb4) r8 |
	R2.. |
	r4 r r sib8 |
	sol16[ lab sib8] sol16[( lab sib) lab] sol4 r8 |
}

paroletE = \lyricmode {
	Man -- ge- moi, man -- ge- moi, man -- ge- moi!
	Man -- ge- moi, man -- ge- moi, man -- ge- moi!
	
	Mange, mange, mange, mange, mange, mange, mange, mange.
	Mange, mange, mange, mange, mange, mange, mange, mange.
	
	Man -- ge- moi, man -- ge- moi, man -- ge- moi!
	Man -- ge- moi, man -- ge- moi, man -- ge- moi!
	
	 Et man -- ge- moi, man -- ge- moi!
}

basseE = \relative do {
	\globalE
	\clef bass
	mib4 sib fab' sib,8 | \time 4/4
	mib4 sib fab'4 r | \time 7/8
	mib4 sib fab' sib,8 |
	mib4 sib fab' sib,8 |
	mib4 sib fab' fa8 |
	solb4 reb solb r8 |
	R2..*2 | \time 4/4
	fa4 do fa do |
	fa do fa do | \time 7/8
	R2..*2 | \time 4/4
	mib4 sib mib sib |
	fab' sib, sib sib | \time 7/8
	% reprise
	mib4 sib fab' sib,8 | \time 4/4
	mib4 sib fab'4 r | \time 7/8
	mib4 sib fab' sib,8 |
	mib4 sib fab' sib,8 |
	mib4 sib fab' fa8 |
	solb4 reb solb r8 |
	R2.. |
	r4 r r sib8 |
	mib,4 sib mib r8 |
}

parolebE = \lyricmode {
	Mange, mange, mange, mange,
	mange, mange, mange!
	Mange, mange, mange, mange,
	mange, mange, mange, mange,
	mange, mange, mange, mange,
	mange, mange, mange.
	Mange, mange, mange, mange, mange, mange, mange, mange.
	Mange, mange, mange, mange, mange, mange, mange, mange.
	
	Mange, mange, mange, mange,
	mange, mange, mange!
	Mange, mange, mange, mange,
	mange, mange, mange, mange,
	mange, mange, mange, mange,
	mange, mange, mange.
	
	Et mange, mange, mange.
}

