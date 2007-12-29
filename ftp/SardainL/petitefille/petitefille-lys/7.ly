\version "2.10.0"
\include "catalan.ly"

globalG = {
	\key fa \major
	\time 4/4
}

filleG = \relative do'' {
	\globalG
	R1^\markup{\bold Moderato} |
	r2. la4^\markup \italic{petite fille} |
	do2~ do8 la sib do |
	do2. la8 sib |
	do4 do do do |
	do2 fa,4 sol8 la |
	sib2. sib4 |
	la2. fa4 |
	la la la la |
	sol2 la4 sib |
	do2~ do8 la sib do |
	do2. la8 sib |
	do4 do re do |
	do2 fa,4 sol8 la |
	sib2 sib4 sib |
	la2. fa4 |
	la la la la |
	la2( sol) |
	fa2 r4 re8 mi |
	fa4 mi8 re mi4 re8 mi |
	fa4 mi8 re mi4 re8 mi |
	fa4 fa fa fa |
	fa2. fa8 sol |
	la4 sol8 fa sol4 fa8 sol |
	la4 sol8 fa sol4 fa8 sol |
	la4 la la la |
	la2. la4 |
	do4. do8 sib la sol la |
	sib2 sib8 sol sol8 la |
	sib4. sib8 la sol fa sol |
	la2 la4 re,4 |
	fa2~ fa8 reb mib fa |
	fa2. fa4 |
	la2~ la8 fa sol la |
	la2. la4 |
	do2. la4 |
	do2. do4 | \bar "|."
}

parolefG = \lyricmode {
	Grand- mère, reste a -- vec moi,
	tu ne dois pas dis -- pa -- raî -- tre
	com -- me l'arbre et l'oie,
	peux -- tu me le pro -- met -- tre.
	
	Grand- mère em -- mè -- ne- moi,
	gui -- de- moi vers ta lu -- miè -- re,
	gar -- de- moi près de toi,
	é -- cou -- te ma pri -- è -- re.
	
	Dans le froid et la neige,
	ta cha -- leur me pro -- tège,
	je suis si bien dans tes bras.
	
	Mes cha -- grins, mes mal -- heurs,
	tes câ -- lins, ta dou -- ceur,
	je t'en prie em -- mè -- ne- moi
	
	Je brûle en -- core une al -- lu -- met -- te,
	pour que ce rê -- ve ja -- mais ne s'ar -- rê -- te
	
	Grand- mère, reste a -- vec moi,
	Grand- mère, em -- mè -- ne- moi,
	Grand- mère, Grand- mère, Grand- mère!
}


sopranoG = \relative do'' {
	\globalG
	la1~_\markup \italic{bouche fermée} |
	la~ |
	la~ |
	la~ |
	la~ |
	la2 fa |
	sol1 |
	la |
	fa |
	fa2 mi |
	la1~ |
	la~ |
	la~ |
	la2 fa |
	sol1 |
	la |
	fa~ |
	fa2 mi |
	fa mi |
	fa mi |
	fa mi |
	fa1~ |
	fa~ |
	fa2 sol |
	la sol |
	la la |
	la1 |
	la |
	sib |
	sol |
	la |
	fa~ |
	fa~ |
	fa~ |
	fa |
	la |
	sol2. do4^\markup{\italic attaca} | \bar "|."
}

altoG = \relative do' {
	\globalG
	fa1~_\markup \italic{bouche fermée} |
	fa~ |
	fa |
	mi |
	mib |
	re2 fa~ |
	fa1~ |
	fa |
	re |
	do |
	fa |
	mi |
	mib |
	re2 fa~ |
	fa1~ |
	fa |
	re |
	re2 mi |
	fa dod |
	%
	re1~ |
	re~ |
	re2 mi |
	mi re |
	do mi |
	fa mib |
	fa mi! |
	mi1 |
	sol2 fad |
	la4 sol fad fa |
	fa2 mi |
	mi fa |
	reb1 |
	do2 dod |
	re1 |
	do |
	mi |
	fa2 mi4 do'4^\markup{\italic attaca} |
}

tenorG = \relative do' {
	\globalG
	\clef "G_8"
	do1~_\markup \italic{bouche fermée} |
	do~ |
	do~ |
	do~ |
	do |
	sib |
	reb |
	do |
	sol~ |
	sol2 do |
	do1~ |
	do~ |
	do |
	sib2 re |
	reb1 |
	do~ |
	do |
	sib |
	la1 |
	la2 sold |
	la sold |
	la1~ |
	la2 re |
	do dod |
	re la |
	re1 |
	re2 dod |
	do! re |
	re1 |
	sib2 do |
	do2 re |
	sib2 fa |
	fa la |
	la1~ |
	la~ |
	la |
	la2 sib4 do4^\markup{\italic attaca} |
}

basseG = \relative do {
	\globalG
	\clef bass
	fa1~_\markup \italic{bouche fermée} |
	fa~ |
	fa~ |
	fa~ |
	fa |
	sib |
	sib, |
	do |
	si |
	do2 do' |
	fa,1~ |
	fa~ |
	fa |
	sib |
	sib, |
	do~ |
	do~ |
	do |
	fa2 la, |
	re1~ |
	re~ |
	re2 dod |
	re1 |
	fa~ |
	fa |
	sib |
	la1 |
	mib2 re |
	sol1 |
	reb2 do |
	fa4 mi re do |
	sib1 |
	la |
	re |
	mib |
	mi!~ |
	re2 do4 do'^\markup{\italic attaca} |
}

