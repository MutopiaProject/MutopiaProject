\version "2.10.0"
\include "catalan.ly"


globalB = {
	\key sol \major
	\time 4/4
	\partial 4
	\dynamicUp
}

sopranoB = \relative do' {
	\globalB
	mi4^\markup{\bold Allegro} |
	<mi sol>4 mi8 <mi fad> <mi sol>4 mi8 <mi fad> |
	<mi sol> <mi fad> mi <mi fad> <mi sol>4 <mi fa> |
	<fa la> fa8 <fa sol> <fa la>4 fa8 <fa sol> |
	<fa la> <fa sol> fa <fa sol> <fa la>4 <fa la>8 <sol si> |
	<la do>4 <fa la>8 <sol si> <la do>4 <fa la>8 <sol si> |
	<la do> <si re> <la do> <sol si> <fa la>4 <sol si> |
	<mi sol>4 mi8 <mi fad> <mi sol>4 mi8 <mi fad> |
	<red sol> <red la'> <red sol> <red la'> <red? fa>4 <si si'>\p |
% 9
	<mi si'>1~ |
	<mi si'>2. <mi si'>4 |
	<fa do'>1~ |
	<fa do'>2. <fa do'>4 |
	<la do>1~ |
	<la do>2. <sol si>4 |
	<mib sol>2. mib4 |
	si2 r |
% 17
	R1*5 |
	r2 red'\p |
	si4 si8 si si4 si8 si |
	si si si si si4 si |
	si\< si8 si si4 si |
	si8 si si si si4 si\f |
% 27
	sol4 mi8 fad sol4 mi8 fad |
	sol fad mi fad sol4 fa8 sol |
	la4 fa8 sol la4 fa8 sol |
	la sol fa sol la4 sol |
	si sol8 la si4 sol8 la |
	si la sol la si4 la8 si |
	do4 la8 si do4 la8 si |
	do re <do mib> <si re> <la do>4 si |
	sol mib8 fa sol4 mib8 fa |
	sol la sol fad! mi4 r |
% 37
	R1*3 |
	r2. mi4\mp |
	mid mid mid mid |
	mid2. mid4 |
	mid fad mid fad |
	sold2. sold4 |
	sold sold sold sold |
	sold2. sold4 |
	lad si lad si |
	dod2. dod8\p dod |
% 49
	dod4 dod8 dod dod4 dod8 dod |
	dod4 dod8 dod dod4 dod8 dod |
	dod4 dod8 dod dod4 dod8 dod |
	si4 si8 si si4 si8 si |
	si4 si8 si si4 si8 si |
	la4 la8 la sold4 fad8 fad |
	mi4 mi8 mi mi4 mi8 mi |
	mi4 mi red4\fermata r8 red\f |
% 57
	sol8 sol sol sol sol4 r8 sol |
	sol8 sol sol sol sol4 r8 sol |
	sol8 sol sol sol sol4 sol |
	sol8 sol sol sol sol4 sol |
% 61
	sol4^\markup{\dynamic p \italic{sub. e sempre cresc.}} mi8 fad sol4 mi8 fad |
	sol fad mi fad sol4 fa8 sol |
	la4 fa8 sol la4 fa8 sol |
	la sol fa sol la4 sol |
	si sol8 la si4 sol8 la |
	si la sol la si4 la8 si |
	do4 la8 si do4 la8 si |
	do re <do mib> <si re> <la do>4 si |
	sol4 mib8 fa sol4 mib8 fa |
	sol4 fa8 sol la4 sol |
	si1 | \bar "|."
}

parolesB = \lyricmode {
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dis -- pa -- rais dans le né -- ant.
	
	Dé -- gage, dé -- gage, dé -- gage, dé -- gage, dé -- gage.
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Dé -- gage, fich' le camp,
	dé -- gage, dé -- gage, dé -- gage!
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	T'au -- ras rien, bonne à rien,
	tant pis si tu meurs de faim!
	Dé -- gage, fich' le camp,
	dis -- pa -- rais dans le né -- ant.
	
	Si nous te re -- gar -- dions,
	nous en se -- rions é --mus.
	Que fait cette pe -- tit' fille
	qui marche ain -- si pieds nus?
	
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, bor -- der?
	
	Mais nous tour -- nons la tête,
	et nous n'a -- vons rien vu.
	Ne gâ -- chons pas la fête,
	chas -- sons cette in -- con -- nue!
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	T'au -- ras rien, bonne à rien,
	tant pis si tu meurs de faim!
	Dé -- gage, fich' le camp,
	fich' le camp, fich' le camp, Dé -- gage!
}

altoB = \relative do' {
	\globalB
	mi4\mf |
	si4 si8 si si4 si8 si |
	si si si si si4 si |
	do4 do8 do do4 do8 do |
	do do do do do4 do8 do |
	red4 red8 red red4 red8 red |
	red red red red red4 red |
	mi4 si8 si si4 si8 si |
	si si si si si4 si\p |
% 9
	si1~ |
	si2. si4 |
	do1~ |
	do2. do4 |
	fa1~ |
	fa2. red4 |
	si2. si4 |
	si2 r |
% 17
	R1*3 |
	<< {R1 |
	r2 si'2^\markup "Dé -" |
	sol2.^\markup "gage___" } \\
	{\dynamicUp r2 sol\p_\markup "Dé -" |
	mib1~_\markup "gage___" |
	mib2. }>> <mib sol>4 |
	<mib sol>4 <mib sol>8 <mib sol> <mib sol>4 <mib sol>8 <mib sol> |
	<mib sol> <mib sol> <mib sol> <mib sol> <mib sol>4 <mib sol> |
	<mib sol>\< <mib sol>8 <mib sol> <mib sol>4 <mib sol> |
	<mib sol>8 <mib sol> <mib sol> <mib sol> <mib sol>4 si\f |
% 27
	mi4 si8 si mi4 si8 si |
	mi mi si si mi4 mi8 mi |
	fa4 do8 do fa4 do8 do |
	fa fa do do fa4 fa |
	sol4 mi8 fad sol4 mi8 fad |
	sol fad mi fad sol4 fa8 sol |
	la4 fa8 sol la4 fa8 sol |
	la si la sol fa4 si, |
	red4 red8 red red4 red8 red |
	red red red red mi4 r |
% 37
	R1*3 |
	r2. mi4\mp |
	dod dod dod dod |
	dod2. dod4 |
	sid sid sid sid |
	red2. red4 |
	red red red red |
	mid2. mid4 |
	fad sold fad sold |
	lad2. lad8\p lad |
% 49
	red,4 red8 red red4 red8 red |
	red4 red8 red red4 red8 red |
	mi4 mi8 mi mi4 mi8 mi |
	mi4 mi8 mi mi4 mi8 mi |
	re?4 re8 re re4 re8 re |
	re4 re8 re re4 re8 re |
	do4 do8 do do4 do8 do |
	si4 si si4\fermata r8 si\f |
% 57
	mib8 mib mib mib mib4 r8 mib |
	mib8 mib mib mib mib4 r8 mib |
	mib8 mib mib mib mib4 mib |
	red8 red red red red4 red |
% 61
	mi4^\markup{\dynamic p \italic{sub. e sempre cresc.}} si8 si mi4 si8 si |
	mi mi si si mi4 mi8 mi |
	fa4 do8 do fa4 do8 do |
	fa fa do do fa4 fa |
	sol4 mi8 fad sol4 mi8 fad |
	sol fad mi fad sol4 fa8 sol |
	la4 fa8 sol la4 fa8 sol |
	la si la sol fa4 si, |
	red4 red8 red red4 red8 red |
	red4 red8 red red4 red |
	mi1 | \bar "|."
}

paroleaB = \lyricmode {
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dis -- pa -- rais dans le né -- ant.
	
	Dé -- gage, dé -- gage, dé -- gage, dé -- gage, dé -- gage.
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Dé -- gage, fich' le camp,
	dé -- gage, dé -- gage, dé -- gage!
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	T'au -- ras rien, bonne à rien,
	tant pis si tu meurs de faim!
	Dé -- gage, fich' le camp,
	dis -- pa -- rais dans le né -- ant.
	
	Si nous te re -- gar -- dions,
	nous en se -- rions é --mus.
	Que fait cette pe -- tit' fille
	qui marche ain -- si pieds nus?
	
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, bor -- der?
	
	Mais nous tour -- nons la tête,
	et nous n'a -- vons rien vu.
	Ne gâ -- chons pas la fête,
	chas -- sons cette in -- con -- nue!
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	T'au -- ras rien, bonne à rien,
	tant pis si tu meurs de faim!
	Dé -- gage, fich' le camp,
	fich' le camp, fich' le camp, Dé -- gage!
}

tenorB = \relative do {
	\globalB
	\clef "G_8"
	mi4\mf |
	mi mi8 mi mi4 mi8 mi |
	mi mi mi mi mi4 mi |
	mi mi8 mi mi4 mi8 mi |
	mi mi mi mi mi4 mi8 mi |
	mi4 mi8 mi mi4 mi8 mi |
	mi mi mi mi mi4 mi |
	mi4 mi8 mi mi4 mi8 mi |
	fa fa fa fa la4 si |
% 9
	<mi, sol>4 mi8 <mi fad> <mi sol>4 mi8 <mi fad> |
	<mi sol> <mi fad> mi <mi fad> <mi sol>4 <mi fa> |
	<fa la> fa8 <fa sol> <fa la>4 fa8 <fa sol> |
	<fa la> <fa sol> fa <fa sol> <fa la>4 <fa la>8 <sol si> |
	<la do>4 <fa la>8 <sol si> <la do>4 <fa la>8 <sol si> |
	<la do> <si re> <la do> <sol si> <fa la>4 <sol si> |
	<mib sol>4 mib8 <mib fa> <mib sol>4 mib8 <mib fa> |
	<red sol> <red la'> <red sol> <red fad?> mi4 r |
% 17
	R1*1 |
	<< {R1 |
	r2 red'2^\markup "Dé -" |
	si1~^\markup "gage___" |
	si~ |
	si2. } \\
	{\dynamicUp r2 si\p_\markup "Dé -" |
	sol1~_\markup "gage___" |
	sol~ |
	sol~ |
	sol2. }>> <sol si>4 |
	<la do>4 <la do>8 <la do> <la do>4 <la do>8 <la do> |
	<la do> <la do> <la do> <la do> <la do>4 <la do>8 <la do> |
	<la do>4\< <la do> <la do> <la do>8 <la do> |
	<la do> <la do> <la do> <la do> <la do>4 si\f |
% 27
	si4 sol8 sol si4 sol8 sol |
	si si sol sol si4 si8 si |
	do4 la8 la do4 la8 la |
	do do la la do4 do |
	si4 si8 si mi4 si8 si |
	mi mi si si mi4 si8 si |
	fa'4 do8 do fa4 do8 do |
	red red red red red4 si |
	si4 sol8 la si4 sol8 la |
	si si si si si4 si8 si |
% 37
	si4^\markup{\italic dim.} si8 si si4 si8 si |
	si4 si8 si si4 si8 si |
	si4 si8 si si4 si8 si |
	si4 si8 si si4 si8\p si |
% 41
	lad4 lad8 lad lad4 lad8 lad |
	lad4 lad8 lad lad4 lad8 lad |
	sold4 sold8 sold sold4 sold8 sold |
	sid4 sid8 sid sid4 sid8 sid |
	sid4 sid8 sid sid4 sid8 sid |
	sid4 sid8 sid sid4 sid8 sid |
	dod4 dod8 dod dod4 dod,8 dod |
	fad4 fad8 fad fad4 fad4\mp |
% 49
	la4 la la la |
	la2. la4 |
	sold4 sold sold sold |
	sold2. sold4 |
	sol! sol sol sol |
	sol2 sol4 sol |
	fad fad fad fad |
	fad2.\fermata r8 fad\f |
% 57
	si8 si si si si4 r8 si |
	la la la la la4 r8 la |
	si si si si si4 si |
	la8 la la la la4 si |
% 61
	si4^\markup{\dynamic p \italic{sub. e sempre cresc.}} sol8 sol si4 sol8 sol |
	si si sol sol si4 si8 si |
	do4 la8 la do4 la8 la |
	do do la la do4 do |
	si4 si8 si mi4 si8 si |
	mi mi si si mi4 si8 si |
	fa'4 do8 do fa4 do8 do |
	red red red red red4 si |
	si4 sol8 la si4 sol8 la |
	si4 la8 si do4 si |
	si1 | \bar "|."
}

paroletB = \lyricmode {
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dis -- pa -- rais dans le né -- ant.
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	T'au -- ras rien, bonne à rien,
	tant pis si tu meurs de faim!
	Dé -- gage, fich' le camp,
	dis -- pa -- rais dans le né -- ant.
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Fich' le camp, dé -- gage,
	fich' le camp,
	dé -- gage, dé -- gage!
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	T'au -- ras rien, bonne à rien,
	tant pis si tu meurs de faim!
	Dé -- gage, fich' le camp,
	dis -- pa -- rais dans le né -- ant.
	
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	
	Au -- ra- t-elle à man -- ger,
	du feu dans la ch'mi -- née,
	un lit pour se cou -- cher,
	et une mère pour la bor -- der?
	
	Mais nous tour -- nons la tête,
	et nous n'a -- vons rien vu.
	Ne gâ -- chons pas la fête,
	chas -- sons cette in -- con -- nue!
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	T'au -- ras rien, bonne à rien,
	tant pis si tu meurs de faim!
	Dé -- gage, fich' le camp,
	fich' le camp, fich' le camp, Dé -- gage!
}

basseB = \relative do {
	\globalB
	\clef bass
	r4 |
	R1*7 |
	r2 r4 si\mf |
% 9
	<mi, si'>4 <mi si'>8 <mi si'> <mi si'>4 <mi si'>8 <mi si'> |
	<mi si'> <mi si'> <mi si'> <mi si'> <mi si'>4 <mi si'> |
	<mi do'> <mi do'>8 <mi do'> <mi do'>4 <mi do'>8 <mi do'> |
	<mi do'> <mi do'> <mi do'> <mi do'> <mi do'>4 <mi do'>8 <mi do'> |
	<mi red'>4 <mi red'>8 <mi red'>8 <mi red'>4 <mi red'>8 <mi red'> |
	<mi red'> <mi red'> <mi red'> <mi red'> <mi red'>4 <mi red'> |
	<fa si> <fa si>8 <fa si> <fa si>4 <fa si>8 <fa si> |
	si si si si mi4 <re mi>\p |
% 17
	<do mi>4 <do mi>8 <do mi> <do mi>4 <do mi>8 <do mi> |
	<do mi> <do mi> <do mi> <do mi> <do mi>4 <do mi> |
	<do mi>4 <do mi>8 <do mi> <do mi>4 <do mi>8 <do mi> |
	<do mi> <do mi> <do mi> <do mi> <do mi>4 <do mi> |
	<do mi>4 <do mi>8 <do mi> <do mi>4 <do mi>8 <do mi> |
	<do mi> <do mi> <do mi> <do mi> <do mi>4 <do mi> |
	<do fa> <do fa>8 <do fa> <do fa>4 <do fa>8 <do fa> |
	<do fa> <do fa> <do fa> <do fa> <do fa>4 <do fa>8 <do fa> |
	<do fa>4\< <do fa> <do fa> <do fa>8 <do fa> |
	<do fa> <do fa> <do fa> <do fa> <si fa'>4 si\f |
% 27
	mi4 mi8 mi mi4 mi8 mi |
	mi mi mi mi mi4 mi8 mi |
	mi4 mi8 mi mi4 mi8 mi |
	red red red red red4 red |
	mi mi8 mi mi4 mi8 mi |
	mi mi mi mi mi4 mi8 mi |
	mi4 mi8 mi mi4 mi8 mi |
	si si si si si4 si |
	do4 do8 do do4 do8 do |
	si si si si mi4 mi8 mi |
% 37
	mi4^\markup{\italic dim.} mi8 mi mi4 mi8 mi |
	mi4 mi8 mi mi4 mi8 mi |
	mi4 mi8 mi mi4 mi8 mi |
	mi4 mi8 mi mi4 mi8\p mi |
% 41
	red4 red8 red red4 red8 red |
	red4 red8 red red4 red8 red |
	red4 red8 red red4 red8 red |
	red4 red8 red red4 red8 red |
	dod4 dod8 dod dod4 dod8 dod |
	dod4 dod8 dod dod4 dod8 dod |
	dod4 dod8 dod dod4 dod8 dod |
	dod4 dod8 dod dod4 dod\mp |
% 49
	si si si si |
	si2. si4 |
	si si si si |
	si2. si4 |
	si si si si |
	si2 si4 si |
	si si si si |
	si2.\fermata r8 si\f |
% 57
	do8 do do do do4 r8 do |
	fa fa fa fa fa4 r8 fa |
	do do do do do4 do |
	si8 si si si si4 si |
% 61
	mi4^\markup{\dynamic p \italic{sub. e sempre cresc.}} mi8 mi mi4 mi8 mi |
	mi mi mi mi mi4 mi8 mi |
	mi4 mi8 mi mi4 mi8 mi |
	red red red red red4 red |
	mi mi8 mi mi4 mi8 mi |
	mi mi mi mi mi4 mi8 mi |
	mi4 mi8 mi mi4 mi8 mi |
	si si si si si4 si |
	do4 do8 do do4 do8 do |
	fa4 fa8 fa fa4 fa |
	mi1 | \bar "|."
}

parolebB = \lyricmode {
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	T'au -- ras rien, bonne à rien,
	tant pis si tu meurs de faim!
	Dé -- gage, fich' le camp,
	dis -- pa -- rais dans le né -- ant.
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Fich' le camp, dé -- gage,
	fich' le camp,
	dé -- gage, dé -- gage!
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	T'au -- ras rien, bonne à rien,
	tant pis si tu meurs de faim!
	Dé -- gage, fich' le camp,
	dis -- pa -- rais dans le né -- ant.
	
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	fich' le camp, fich' le camp,
	
	Au -- ra- t-elle à man -- ger,
	du feu dans la ch'mi -- née,
	un lit pour se cou -- cher,
	et une mère pour la bor -- der?
	
	Mais nous tour -- nons la tête,
	et nous n'a -- vons rien vu.
	Ne gâ -- chons pas la fête,
	chas -- sons cette in -- con -- nue!
	
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	Sale ga -- mine, sale mor -- veuse,
	et peut -- être aus -- si vo -- leuse.
	Dé -- gage, fich' le camp,
	dé -- guer -- pis, dé -- tale, va -- t'en.
	T'au -- ras rien, bonne à rien,
	tant pis si tu meurs de faim!
	Dé -- gage, fich' le camp,
	fich' le camp, fich' le camp, Dé -- gage!
}

