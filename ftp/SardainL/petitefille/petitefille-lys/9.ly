\include "catalan.ly"
\version "2.10.10"

globalI = {
	\key do \major
        \time 4/4
}
     
sopranoI = \relative do'' {
	R1^\markup{\bold Moderato} |
	R1*3 |
	r4 sol4~ sol8 lab sol4~ |
	sol8 lab sib lab sol4. la8 |
	sib4. dob8 sib4. dob8 |
	reb dob sib dob sib lab sol fa |
% 13
	
% 37
	mi2~ mi4. fa8 |
	mi2~ mi8 fa mi fad |
	sol4. lab8 sol4. lab8 |
	sib lab sol lab sol fa mi re |
	mi2~ mi4. fa8 |
	mi1~ |
	mi1~ |
	R1^\fermataMarkup^\markup{récitant} | 
	mi2~ mi4. fa8 |
	mi1~ |
	mi1~ |
	mi\fermata |
	\bar "|."
}

parolesI = \lyricmode {
        Ou
     }
     
altoI = \relative do' {
	r2 mi4. fa8 |
	mi2~ mi8 fa mi fad |
	sol4. lab8 sol4. lab8 |
	sib lab sol lab sol fa mi re |
	mi4. r8 mi4. fa8 |
	mi2~ mi8 fa mi fad |
	sol4. lab8 sol4. lab8 |
	sib lab sol lab sol fa mi re |
% 13
	
% 37
	mi4. re8 mi2~ |
	mi~ mi8 re dod red |
	mi4. fa8 mi4. fa8 |
	sol fa mi fa mi re dod re |
	mi1~ |
	mi2~ mi4. fa8 |
	mi1~ |
	R1^\fermataMarkup |
	mi1~ |
	mi2~ mi4. fa8 |
	mi1~ |
	mi\fermata |
}
     
tenorI = \relative do {
     	\clef "G_8"
	dod4 fa mi re |
	dod fa mi re |
	dod8 red mi4. red8 mi4~ |
	mi red8 mi fa4 re |
	dod4 fa mi re |
	dod fa mi re |
	dod8 red mi4. red8 mi4~ |
	mi red8 mi fa4 re |
% 13
	
% 37
	dod4 fa mi re |
	dod fa mi re |
	dod8 red mi4. red8 mi4~ |
	mi red8 mi fa4 re |
	dod4 fa mi re |
	dod fa mi re |
	dod4 fa mi re |
	R1^\fermataMarkup |
	dod4 fa mi re |
	dod fa mi re |
	dod4 fa mi re |
	dod1\fermata |
}
     
basseI = \relative do {
     	\clef bass
	la4 reb do sib |
	la reb do sib |
	la8 si do4. si8 do4~ |
	do si8 do reb4 sib |
	la4 reb do sib |
	la reb do sib |
	la8 si do4. si8 do4~ |
	do si8 do reb4 sib |
% 13
	
% 37
	la4 reb do sib |
	la reb do sib |
	la8 si do4. si8 do4~ |
	do si8 do reb4 sib |
	la4 reb do sib |
	la reb do sib |
	la reb do sib |
	R1^\fermataMarkup |
	la4 reb do sib |
	la reb do sib |
	la reb do sib |
	la1\fermata |
}

