\version "2.10.0"
\include "catalan.ly"

globalH = {
	\key lab \major
	\time 4/4
}

filleH = \relative do'' {
	\globalH
	do1 |
	R1*15
}

parolefH = \lyricmode {
	mère!
}

sopranoH = \relative do'' {
	\globalH
	do8.^\markup{\bold Andante} reb16 do8.( reb16) mib2 |
	do8. reb16 do8.( reb16) mib2 |
	reb4 do sib2 |
	sib1 |
	lab8. sib16 lab8.( sib16) do2 |
	lab8. sib16 lab8.( sib16) do2 |
	sib4 lab sol2 |
	sol1 |
	fa8. sol16 fa8.( sol16) lab2 |
	lab8. sib16 lab8.( sib16) do2 |
	sib4 do reb2 |
	mib1 |
	mi8. fa16 mi8.( fa16) mi2 |
	fa8. sol16 fa8.( sol16) fa4( mib8 reb) |
	do2. do4 |
	sib2 sib | \bar "||" \key fa \major
	\transpose lab fa \relative do'' {
	do8. reb16 do8.( reb16) mib2 |
	do8. reb16 do8.( reb16) mib2 |
	reb4 do sib2 |
	sib1 |
	lab8. sib16 lab8.( sib16) do2 |
	lab8. sib16 lab8.( sib16) do2 |
	sib4 lab sol2 |
	sol1 |
	fa8. sol16 fa8.( sol16) lab2 |
	lab8. sib16 lab8.( sib16) do2 |
	sib4 do reb2 |
	mib1 |
	mi8. fa16 mi8.( fa16) mi2 |
	fa8. sol16 fa8.( sol16) fa4( mib8 reb) |
	do2. do4 |
	sib1 | }
	fa1~ |
	fa1~ |
	fa\fermata | \bar "|."
}

parolesH = \lyricmode {
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
}

altoH = \relative do'' {
	\globalH
	lab8. sib16 lab8.( sib16) do2 |
	lab8. sib16 lab8.( sib16) do2 |
	sib4 lab lab2 |
	lab( sol) |
	fa8. sol16 fa8.( sol16) lab2 |
	fa8. sol16 fa8.( sol16) lab2 |
	sol4 fa fa2 |
	fa( mi) |
	fa8. mib16 reb8.( mib16) fa2 |
	fa8. sol16 fa8.( sol16) lab2 |
	lab4 lab lab2 |
	lab( sol) |
	do8. re16 do8.( re16) do2 |
	reb8. mib16 reb8.( mib16) reb4( do8 sib) |
	lab2. lab4 |
	lab2 sol | \key fa \major
	\transpose lab fa \relative do'' {
	lab8. sib16 lab8.( sib16) do2 |
	lab8. sib16 lab8.( sib16) do2 |
	sib4 lab lab2 |
	lab( sol) |
	fa8. sol16 fa8.( sol16) lab2 |
	fa8. sol16 fa8.( sol16) lab2 |
	sol4 fa fa2 |
	fa( mi) |
	fa8. mib16 reb8.( mib16) fa2 |
	fa8. sol16 fa8.( sol16) lab2 |
	lab4 lab lab2 |
	lab( sol) |
	do8. re16 do8.( re16) do2 |
	reb8. mib16 reb8.( mib16) reb4( do8 sib) |
	lab2. lab4 |
	lab2( sol) |
	}
	fa1~ |
	fa1~ |
	fa\fermata |
}

paroleaH = \lyricmode {
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
}

tenorH = \relative do' {
	\globalH
	\clef "G_8"
	mib2 mib |
	fa4( do) lab2 |
	reb4 reb fa2 |
	mib1 |
	do2 do |
	reb4( lab) fa2 |
	sib4 sib reb2 |
	do1 |
	lab2( lab8.) sib16 lab8.( sib16) |
	lab2 lab8. sib16 lab8. mib16 |
	fa4 fa sib2 |
	sib1 |
	sib2 sib |
	lab sib |
	lab2. lab4 |
	sib2 mib | \key fa \major
	\transpose lab fa \relative do' {
	mib2 mib |
	fa4( do) lab2 |
	reb4 reb fa2 |
	mib1 |
	do2 do |
	reb4( lab) fa2 |
	sib4 sib reb2 |
	do1 |
	lab2( lab8.) sib16 lab8.( sib16) |
	lab2 lab8. sib16 lab8. mib16 |
	fa4 fa sib2 |
	sib1 |
	sib2 sib |
	lab sib |
	lab2. lab4 |
	sib2 reb |
	}
	la,8. sib16 la8.( sib16) do2 |
	la8.( sib16) la8.( sib16) do4( sib) |
	la1\fermata |
}

paroletH = \lyricmode {
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
}

basseH = \relative do' {
	\globalH
	\clef bass
	lab2 sol |
	fa mib |
	sib4 do reb2 |
	mib1 |
	fa2 mib |
	reb do |
	sol4 lab sib2 |
	do1 |
	reb2 reb |
	do lab |
	reb4 reb sib2 |
	mib2.( reb4) |
	do2 do |
	reb reb |
	mib2. mib4 |
	mib2 mib | \key fa \major
	\transpose lab fa \relative do' {
	lab2 sol |
	fa mib |
	sib4 do reb2 |
	mib1 |
	fa2 mib |
	reb do |
	sol4 lab sib2 |
	do1 |
	reb2 reb |
	do lab |
	reb4 reb sib2 |
	mib2.( reb4) |
	do2 do |
	reb reb |
	mib2. mib4 |
	mib2 mib |
	}
	fa2 mib |
	re( reb2) |
	<fa, do'>1 \fermata |
}

parolebH = \lyricmode {
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia Al -- le -- lu -- ia
	Al -- le -- lu -- ia
}

