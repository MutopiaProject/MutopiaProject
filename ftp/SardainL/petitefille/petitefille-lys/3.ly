\version "2.10.0"
\include "catalan.ly"

globalC = {
	\key la \minor
	\time 6/4
	\partial 4
}

sopranoC = \relative do' {
	\globalC
	mi8^\markup{\bold Andante} fad |
	sol4. sol8 fad sol fad4 fad mi8 fad |
	sol4. sol8 fad sol fad2 sol8 la |
	sib4 sib8 sib la sib la4 la sol8 la |
	si!4. si8 lad si dod2 si8 dod |
	re2 dod4 mi4. re8 dod si |
	dod2.~ dod2 fad,8 sold |
	la2 sold4 si4. la8 sold la |
	sold1. |
	dod4( do sib la2 sol4 |
	fad2.~ fad4) r sib8 do |
	reb4. reb8 do reb do4 do sib8 do |
	reb4. reb8 do reb reb4. reb8 do reb |
	mib4. mib8 re mib mib4 mib re8 mib |
	fa4. fa8 mi8 fa fa2 mib8 fa |
	solb2 fa4 lab4. solb8 fa mib |
	fa2.~ fa2 fa8 reb |
	sib2 do4 mib4. reb8 do reb |
	do1. |
	fa4( mi re reb2 dob4 |
	sib2.~ sib4) r red,8 mid |
	fad4. fad8 mid fad mid4 mid red8 mid |
	fad4. fad8 mid fad fad2 mid8 fad |
	sold4. sold8 fadd sold fad4 fad fad8 fad |
	fad4 fad8 fad mid fad fad2 mi8 re |
	do2 si4 re4. do8 si do |
	si2.~ si2 mi8 fad |
	sol2 fad4 la4. sol8 fad sol |
	fad1. |
	si4( lad sold sol2 fa4 |
	mi1.) |
	si'4( lad sold sol2 fa4 |
	mi2.~ mi4) r  \bar "|."
	
}

parolesC = \lyricmode {
	La nuit tom -- be sur la vil -- le,
	les pas -- sants ren -- trent chez eux.
	U -- ne pe -- ti -- te fill' fra -- gi -- le
	re -- ste seu -- le sous les cieux.
	
	Les é -- toi -- les chan -- tent dou -- ce -- ment,
	et leurs voix scin -- tillent in -- fi -- ni -- ment.
	ou
	
	Dans les rues froi -- des et nu -- es,
	elle ne sait plus où al -- ler.
	Elle est si pau -- vre -- ment vê -- tu -- e
	qu'elle ne ces -- se de trem -- bler.
	
	Les é -- toi -- les chan -- tent dou -- ce -- ment,
	et leurs voix scin -- tillent in -- fi -- ni -- ment.
	ou
	
	Dans la neige im -- ma -- cu -- lé -- e,
	Ses pieds nus en -- do -- lo -- ris
	gui -- dent son âme es -- seu -- lé -- e
	et la por -- tent vers un a -- bri.
	
	Les é -- toi -- les chan -- tent dou -- ce -- ment,
	et leurs voix scin -- tillent in -- fi -- ni -- ment.
	ou ou
}

altoC = \relative do' {
	\globalC
	mi8 mi |
	mi4. mi8 mi mi re4 re re8 re |
	dod4. dod8 dod dod do!2 do8 do |
	sol'4 sol8 sol sol sol sol4 sol sol8 sol |
	sol4. sol8 sol sol fad2 sold8 sol |
	fad2 fad4 fa4. fa8 fa fa |
	sold2.( fad2) fad8 fad |
	fad2 fad4 fad4. fad8 fad fad |
	fad1. |
	fad2.( mid |
	fad2.~ fad4) r solb8 solb |
% 2
	sib4. sib8 sib sib sol4 sol sol8 sol |
	sib4. sib8 sib sib la4. la8 la la |
	sib4. sib8 sib sib dob4 dob dob8 dob |
	dob4. dob8 dob dob sib2 sib8 sib |
	sib2 sib4 la4. la8 la la |
	do2.( sib2) sib8 sib |
	solb2 solb4 mi4. mi8 mi mi |
	fa1. |
	solb2.( fa~ |
	fa2.~ fa4) r fa8 fa |
% 3
	red4. red8 red red red4 red red8 red |
	red4. red8 red red re2 re8 re |
	dod4. dod8 dod dod dod4 dod dod8 dod |
	si4 si8 si si si sib2 sib8 sib |
	la2 la4 la4. la8 la la |
	la2.( sold2) mi'8 mi |
	mi2 mi4 mi4. mi8 mi mi |
	mi2.( red) |
	mi( red |
	mi1.) |
	mi2.( red |
	mi2.~ mi4) r
}

tenorC = \relative do' {
	\globalC
	\clef "G_8"
	si8 si |
	si4. si8 si si sib4 sib sib8 sib |
	la4. la8 la la la2 la8 la |
	re4 re8 re re re red4 red red8 red |
	mi4. mi8 si si lad2 mi'8 lad, |
	si2 si4 dod4. dod8 dod dod |
	dod2.( red2) red8 red |
	re2 re4 mib4. mib8 mib mib |
	re1. |
	re2.( dod |
	dod2.~ dod4) r reb8 reb |
% 2
	fa4. fa8 fa fa mi4 mi mi8 mi |
	fa4. fa8 fa fa solb4. solb8 solb solb |
	sol!4. sol8 sol sol solb4 solb solb8 solb |
	solb4. solb8 solb solb re2 re8 re |
	mib2 mib4 fa4. fa8 fa fa |
	fad2.( sol2) sol8 sol |
	reb2 reb4 sib4. sib8 sib sib |
	sib2.( la) |
	sib( la |
	sib2.~ sib4) r lad8 lad
% 3
	lad4. lad8 lad lad la4 la la8 la |
	lad4. lad8 lad lad sold2 sold8 sold |
	la4. la8 la la la4 la la8 la |
	sol4 sol8 sol sol sol mi2 do8 do |
	fa2 fa4 fa4. fa8 fa fa |
	mi2.~ mi2 do'8 do |
	do2 do4 do4. do8 do do |
	si1. |
	do2.( si |
	do1.) |
	do2.( si~ |
	si2.~ si4) r
}

basseC = \relative do {
	\globalC
	\clef bass
	mi8 mi |
	mi4. mi8 mi mi mi4 mi mi8 mi |
	mi4. mi8 mi mi mi2 mi8 mi |
	sol4 sol8 sol sol sol sol4 sol sol8 sol |
	mi4. mi8 mi mi mi2 fad8 fad |
	si2 si4 si4. si8 si si |
	la2.~ la2 la8 la |
	re2 re4 do4. do8 do do |
	do1. |
	si2.( dod |
	fad,2.~ fad4) r solb8 solb |
% 2
	sib4. sib8 sib sib reb4 reb reb8 reb |
	sib4. sib8 sib sib solb4. solb8 solb solb |
	mib4. mib8 mib mib dob'4 dob dob8 dob |
	la!4. la8 la la sib2 sib8 sib |
	dob2 dob4 dob4. dob8 dob dob |
	sib2.~ sib2 sib8 sib |
	solb2 solb4 solb4. solb8 solb solb |
	fa1. |
	mib2.( fa |
	sib,2.~ sib4) r lad8 lad
% 3
	si4. si8 si si fa'4 fa fa8 fa |
	si,4. si8 si si mi2 mi8 mi |
	la,4. la8 la la re4 re re8 re |
	sol,4 sol8 sol sol sol do2 do8 do |
	fa2 fa4 red4. red8 red red |
	mi2.~ mi2 do'8 do |
	do2 do4 lad4. lad8 lad lad |
	si1. |
	la2.( si |
	do lad) |
	la( si |
	mi,2.~ mi4) r
}

