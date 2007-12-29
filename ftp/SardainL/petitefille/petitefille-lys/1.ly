\version "2.10.0"
\include "catalan.ly"

globalA = {
	\key do \major
        \time 4/4
        \dynamicUp
}

sopranoA = \relative do'' {
	\globalA
	R1^\markup{\bold Moderato} |
	R1*7 |
	r4 sol4~_\markup{Ou}\p sol8 lab sol4~ |
	sol8 lab sib lab sol4. la8 |
	sib4. dob8 sib4. dob8 |
	reb dob sib dob sib lab sol fa |
% 13
	fad8_\markup{A} \breathe fad dod'4~ dod8 re dod sid |
	dod fad, la2 fad4~ |
	fad1~ |
	fad |
	sold8 la si4~ si8 do sold4~ |
	sold8 la si do si4 la8 sold |
	la\< sold fad4~ fad8 la fad4~ |
	fad8 la fad la fad2 |
% 21
	sol2\f r2 |
	r8 si, fad'4~ fad8 sol fad re |
	sol2 r |
	r8 mib sib'4~ sib8 dob sib4 |
	si8\breathe si mi4~ mi8 red dod si |
	do?1~ |
	do8\breathe do fa4~ fa8 mi re do~ |
	do si la si la sol fa la |
% 29
	si2~\ff si4. do8 |
	si2~ si8 do si do |
	si1 |
	mi,~\> |
	mi4\p r sol4._\markup{Ou} lab8 |
	sol2~ sol8 lab8 sol la |
	sib4. dob8 sib4. dob8 |
	reb dob sib dob sib lab sol fa |
% 37
	mi2~ mi4. fa8 |
	mi2~ mi8 fa mi fad |
	sol4. lab8 sol4. lab8 |
	sib lab sol lab sol fa mi re |
	mi2~ mi4. fa8 |
	mi1~ |
	mi1~ |
	mi2. r4 | \bar "|."
}

altoA = \relative do' {
	\globalA
	R1*4 |
	r2 mi4._\markup{Ou}\p fa8 |
	mi2~ mi8 fa mi fad |
	sol4. lab8 sol4. lab8 |
	sib lab sol lab sol fa mi re |
	mi4. r8 mi4. fa8 |
	mi2~ mi8 fa mi fad |
	sol4. lab8 sol4. lab8 |
	sib lab sol lab sol fa mi re |
% 13
	dod4_\markup{A} fad fa mi |
	mib re reb do8 si |
	la1~ |
	la4 si do re~ |
	re2 red |
	re1 |
	dod~\< |
	dod2 la |
% 21
	sib8\f \breathe sol re'4~ re8 mib re dod |
	re4. dod8 si2 |
	sib8\breathe sol re'4~ re8 mib re sib |
	mib2. fa8 mib |
	mi!4. mi8 si'2~ |
	si4 la sold fad |
	fa!4. fa8 do'4 fa, |
	red1 |
% 29
	mi2~\ff mi4. fa8 |
	mi2~ mi8 fa mi fa |
	mi1~ |
	mi2\> r |
	mi~_\markup{\hspace #0.1 Ou}\p mi4. fa8 |
	mi2~ mi8 fa mi fad |
	sol4. lab8 sol4. lab8 |
	sib lab sol lab sol fa mi re |
% 37
	mi4. re8 mi2~ |
	mi~ mi8 re dod red |
	mi4. fa8 mi4. fa8 |
	sol fa mi fa mi re dod re |
	mi1~ |
	mi2~ mi4. fa8 |
	mi1~ |
	mi2. r4 |
}

tenorA = \relative do {
	\globalA
	\clef "G_8"
	dod4_\markup{\hspace #0.1 Ou}\p fa mi re |
	dod fa mi re |
	dod8 red mi4. red8 mi4~ |
	mi red8 mi fa4 re |
	dod4 fa mi re |
	dod fa mi re |
	dod8 red mi4. red8 mi4~ |
	mi red8 mi fa4 re |
	dod4 fa mi re |
	dod fa mi re |
	dod8 red mi4. red8 mi4~ |
	mi red8 mi fa4 re |
% 13
	dod1~_\markup{A} |
	dod |
	r8 fad8 dod'4~ dod8 re dod sid |
	dod fad, la2 fad4~ |
	fad2 la |
	fad2. mid4 |
	fad1~\< |
	fad2 re |
% 21
	re4.\f re8 sol2 |
	fad1 |
	re4. re8 sol2 |
	solb4. solb8 lab4 sol |
	sold si4~ si8\breathe si mi,4~ |
	mi8 mi' re do si do si la~ |
	la4 do~ do8\breathe do fa, sol |
	la sol fa sol fa si la si |
% 29
	sold4\ff do si la |
	sold do si la |
	sold la si la |
	sold\> fad mi re |
	dod4_\markup{\hspace #0.1 Ou}\p fa mi re |
	dod fa mi re |
	dod8 red mi4. red8 mi4~ |
	mi red8 mi fa4 re |
% 37
	dod4 fa mi re |
	dod fa mi re |
	dod8 red mi4. red8 mi4~ |
	mi red8 mi fa4 re |
	dod4 fa mi re |
	dod fa mi re |
	dod4 fa mi re |
	R1 |
}

basseA = \relative do {
	\globalA
	\clef bass
	la4_\markup{\hspace #0.1 Ou}\p reb do? sib |
	la reb do sib |
	la8 si! do4. si8 do4~ |
	do si8 do reb4 sib |
	la4 reb do sib |
	la reb do sib |
	la8 si do4. si8 do4~ |
	do si8 do reb4 sib |
	la4 reb do sib |
	la reb do sib |
	la8 si do4. si8 do4~ |
	do si8 do reb4 si? |
% 13
	fad1~_\markup{A} |
	fad~ |
	fad4 fad' fa mi |
	mib re reb do |
	si1~ |
	si2 sold4 dod |
	fad\< fa mi mib |
	re reb do sib8 la |
% 21
	sol2\f la4 sib |
	si!2 dod4 re |
	sol,2 la4 sib |
	<mib, mib'>2 <fa fa'>4 <sol sol'> |
	<sold sold'>~ sold2. |
	la1~ |
	la |
	si |
% 29
	mi4\ff lab sol? fa |
	mi lab sol fa |
	mi fa sol fa |
	mi\> re do sib |
	la4_\markup{\hspace #0.1 Ou}\p reb do? sib |
	la reb do sib |
	la8 si! do4. si8 do4~ |
	do si8 do reb4 sib |
% 37
	la4 reb do sib |
	la reb do sib |
	la8 si do4. si8 do4~ |
	do si8 do reb4 sib |
	la4 reb do sib |
	la reb do sib |
	la reb do sib |
	R1 |
}

