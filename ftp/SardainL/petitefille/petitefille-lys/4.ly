\version "2.10.0"
\include "catalan.ly"


globalD = {
	\key re \minor
	\time 6/8
}

sopranoD = \relative do'' {
	\globalD
	la16(^\markup{\column{{\bold Moderato}{\dynamic sfz}}} sib la sol fa sol) la4. |
	la16(^\sfz sib la sol fa sol) la4. |
	la16(^\sfz sib la sol la sib do re do sib la sol |
	la sib la sol fa sol) mi4. |
	la16(^\sfz sib la sol fa sol) la4. |
	la16(^\sfz sib la sol fa sol) la4. |
	la16(^\sfz sib la sol la sib do sib) la8 sol |
	fa(^\sfz mi4) re4. |
	la'16( sib la sol fa sol) la4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol la sib do re do sib la sol |
	la sib la sol fa sol) mi4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol la sib do sib) la8 sol |
	fa( mi4) re4. |
% 17
	sib'16( dob sib lab solb lab) sib4. |
	la!16( sib la sol fa sol) la4. |
	sib16( dob sib lab solb lab sib8) sib mib |
	solb( fa4) mib4. |
	sib16( dob sib lab solb lab) sib4. |
	la!16( sib la sol fa sol) la4. |
	la16( sib la sol fa sol la sib do sib la sol |
	la sib la sol fa sol) la4. |
% 25
	la16( sib la sol fa sol) la4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol la sib do sib) la8 sol |
	fa( mi4) re4. |
% 29
	\key sib \minor
	fa16( solb fa mib reb mib) reb4. |
	fa16( solb fa mib reb mib) reb4. |
	lab'8\sfz mib lab8\sfz mib lab8\sfz mib |
	fa16( solb fa mib reb mib) fa4. |
	fa16( solb fa mib reb mib) reb4. |
	fa16( solb fa mib reb mib) reb4. | \key re \minor
	la'8\sf fa la8\sf fa la8\sf fa |
	re16( mi fa sol la sib) la4. |
% 37
	do16( re mib re do si) do4. |
	do16( re mib re do si) do4. |
	do16( re mib re do si do16 re mib re do si
	do16 re mib fa mib re) dod4.
% 41	
	re4.~ re4 re8 |
	re4.~ re4 re8 |
	re2.~ |
	re4. re |
	re4.~ re4 re8 |
	re4.~ re4 re8 |
	re4.~ re8 re re |
	re( dod4) re4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol la sib do re do sib la sol |
	la sib la sol fa sol) mi4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol la sib do sib) la8 sol |
	fa( mi4) re4. | \bar "|."
}

parolesD = \lyricmode {
	Dan -- sent, dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	Dan -- sent, dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	Dan -- sent, dan -- sent, dan -- sent.
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	
	Dan -- sent, dan -- sent,
	Flam -- mes, flam -- mes, flam -- mes, dan -- sent.
	Dan -- sent, dan -- sent,
	Flam -- mes, flam -- mes, flam -- mes, dan -- sent.
	Dan -- sent, dan -- sent, dan -- sent.
	
	Dan -- sent, dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	Dan -- sent, dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
}

altoD = \relative do' {
	\globalD
	re4.~^\sfz re4 re8 |
	re4.~^\sfz re4 re8 |
	re2.~^\sfz |
	re4. re |
	re4.~^\sfz re4 re8 |
	re4.~^\sfz re4 re8 |
	re4.~^\sfz re8 re re |
	re(^\sfz dod4) re4. |
	re4.~ re4 re8 |
	re4.~ re4 re8 |
	re2.~ |
	re4. re |
	re4.~ re4 re8 |
	re4.~ re4 re8 |
	re4.~ re8 re re |
	re( dod4) re4. |
% 17
	mib4.~ mib4 mib8 |
	re4.~ re4 re8 |
	mib4.~ mib8 mib solb |
	sib( lab4) solb4. |
	mib4.~ mib4 mib8 |
	re4.~ re4 re8 |
	fa16( sol fa mi re mi fa sol la sol fa mi |
	fa sol fa mi re mi) dod4. |
% 25
	re4.~ re4 re8 |
	re4.~ re4 re8 |
	re4.~ re8 re re |
	re( dod4) re4. |
% 29
	\key sib \minor
	reb4 reb8 fa16( solb fa mib reb mib) |
	reb4. fa16( solb fa mib) reb fa |
	mib8\sfz dob mib8\sfz dob mib8\sfz dob |
	reb16( mib reb do sib do) la4. |
	reb4 reb8 fa16( solb fa mib reb mib) |
	reb4. fa16( solb fa mib) reb fa | \key re \minor
	fa8\sfz re fa8\sfz re fa8\sfz re |
	re16( dod re mi fa sol) fa4. |
	do'4 do8 do16( re mib re do si) |
	do4. do16( re mib re do si |
	la si do si la sold la si do si la sold |
	la si do re do si) la4. |
% 41
	la16( sib la sol fa sol) la4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol la sib do re do sib la sol |
	la sib la sol fa sol) mi4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol fa sol) la4. |
	la16( sib la sol la sib do sib) la8 sol |
	fa( mi4) re4. |
	re4.~ re4 re8 |
	re4.~ re4 re8 |
	re2.~ |
	re4. re |
	re4.~ re4 re8 |
	re4.~ re4 re8 |
	re4.~ re8 re re |
	re( dod4) re4. |
}

paroleaD = \lyricmode {
	Dan -- sent, dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	Dan -- sent, dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	Dan -- sent, dan -- sent, dan -- sent.
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	
	Dan -- sent, dan -- sent, dan -- sent les
	Flam -- mes, flam -- mes, flam -- mes, dan -- sent.
	Dan -- sent, dan -- sent, dan -- sent les
	Flam -- mes, flam -- mes, flam -- mes, dan -- sent.
	Dan -- sent, dan -- sent, dan -- sent.
	
	Dan -- sent, dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	Dan -- sent, dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
}

tenorD = \relative do {
	\globalD
	\clef "G_8"
	R2.*8 |
	fa4.~^\sfz fa4 mi8 |
	fa4.~(^\sfz fa8 mi) sol |
	fa4^\sfz sol8 la4 fa8 |
	fa sol4 la la8 |
	fa4.~^\sfz fa4 mi8 |
	fa4.(^\sfz mi8 fa) sol |
	fa4.~^\sfz fa8 fa sol |
	la8(^\sfz la4) la4. |
% 17
	solb4.~ solb4 solb8 |
	fa4.~ fa4 fa8 |
	solb4.~ solb8 solb sib |
	sib( sib4) sib4 sib8 |
	solb4.~ solb4 solb8 |
	fa4.~ fa4 fa8 |
	la2.~ |
	la4. la |
% 25
	fa4.~ fa4 mi8 |
	fa4.( mi8 fa) sol |
	fa4.~ fa8 fa sol |
	la8( la4) la4. |
% 29
	\key sib \minor
	fa8 fa fa fa fa fa |
	fa fa fa fa fa fa |
	solb\sfz solb solb\sfz solb solb\sfz solb |
	fa fa fa fa4 fa8 |
	fa8 fa fa fa fa fa |
	fa fa fa fa fa fa | \key re \minor
	la\sfz la la\sfz la la\sfz la |
	la la la la4 la8 |
	sol sol sol sol sol sol |
	mib' mib mib mib mib mib |
	si si si si si si |
	si si si la4. |
% 41
	fa4.~ fa4 mi8 |
	fa4.~( fa8 mi) sol |
	fa4 sol8 la4 fa8 |
	fa sol4 la la8 |
	fa4.~ fa4 mi8 |
	fa4.( mi8 fa) sol |
	fa4.~ fa8 fa sol |
	la8( la4) la4. |
	fa4.~ fa4 mi8 |
	fa4.~( fa8 mi) sol |
	fa4 sol8 la4 fa8 |
	fa sol4 la la8 |
	fa4.~ fa4 mi8 |
	fa4.( mi8 fa) sol |
	fa4.~ fa8 fa sol |
	la8( la4) la4. |
}

paroletD = \lyricmode {
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent,
	dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes. Et
	Dan -- sent, dan -- sent, dan -- sent.
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent,
	Flam -- mes, flam -- mes, flam -- mes,
	dan -- sent les flam -- mes.
	
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent,
	Flam -- mes, flam -- mes, flam -- mes,
	dan -- sent les flam -- mes.
		
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent.
	
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent,
	dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent,
	dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
}

basseD = \relative do {
	\globalD
	\clef bass
	R2.*8 |
	re4.~^\sfz re4 re8 |
	re4.~^\sfz re4 re8 |
	re4.~^\sfz re4 re8 |
	sib4 sib8 la4 la8 |
	re4.~^\sfz re4 re8 |
	re4.~^\sfz re4 re8 |
	re4.~^\sfz re8 re sib |
	la^\sfz( la4) re4. |
% 17
	mib4.~ mib4 mib8 |
	re4.~ re4 re8 |
	mib4.~ mib8 mib mib |
	sib8( sib4) mib4 sib8 |
	mib4.~ mib4 mib8 |
	re4.~ re4 re8 |
	la2.~ |
	la4. la |
% 25
	re4.~ re4 re8 |
	re4.~ re4 re8 |
	re4.~ re8 re sib |
	la^( la4) re4. |
% 29
	\key sib \minor
	sib8 sib sib sib sib sib |
	sib sib sib sib sib sib |
	dob\sfz dob dob\sfz dob dob\sfz dob |
	sib sib sib fa4 fa8 |
	sib8 sib sib sib sib sib |
	sib sib sib sib sib sib | \key re \minor
	re\sfz re re\sfz re re\sfz re |
	re re re re4 re8 |
	do do do do do do |
	lab' lab lab lab lab lab |
	mi mi mi mi mi mi |
	mi mi mi la,4. |
% 41
	<re, re'>4.~ <re re'>4 <re re'>8 |
	<re re'>4.~ <re re'>4 <re re'>8 |
	<re re'>4.~ <re re'>4 <re re'>8 |
	sib'4 sib8 la4 la8 |
	<re, re'>4.~ <re re'>4 <re re'>8 |
	<re re'>4.~ <re re'>4 <re re'>8 |
	<re re'>4.~ <re re'>8 <re re'> sib' |
	la^( la4) <re, re'>4. |
	re'4.~ re4 re8 |
	re4.~ re4 re8 |
	re4.~ re4 re8 |
	sib4 sib8 la4 la8 |
	re4.~ re4 re8 |
	re4.~ re4 re8 |
	re4.~ re8 re sib |
	la^( la4) re4. |
}

parolebD = \lyricmode {
	Dan -- sent, dan -- sent, dan -- sent,
	dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes. Et
	Dan -- sent, dan -- sent, dan -- sent.
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent,
	Flam -- mes, flam -- mes, flam -- mes,
	dan -- sent les flam -- mes.
	
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent,
	Flam -- mes, flam -- mes, flam -- mes,
	dan -- sent les flam -- mes.
		
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent, dan -- sent, dan -- sent.
	
	Dan -- sent, dan -- sent, dan -- sent,
	dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
	Dan -- sent, dan -- sent, dan -- sent,
	dan -- sent, dan -- sent,
	Dan -- sent, dan -- sent, dan -- sent les flam -- mes.
}


