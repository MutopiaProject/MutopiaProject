\version "2.10.0"
\include "catalan.ly"

globalF = {
	\key mi \major
	\time 4/4
}

sopranoF = \relative do'' {
	\globalF
	si2.^\markup{\bold Andante} si4 |
	si2 la |
	si2. si4 |
	si2 sold |
	sold4 fad sold fad |
	sold fad sold fad |
	sold1( |
	la2) fad |
% 9
	si2. si4 |
	si2 la |
	si2. si4 |
	si2 sold |
	sold4 fad sold fad |
	sold fad sold fad |
	sold1~ |
	sold2 si |
% 17
	sid4( dod sid lad |
	sid red lad2) |
	sid4( dod sid lad |
	sid red lad2) |
	sid2( lad |
	sid lad |
	sold1 |
	sold2 fad) |
% 25
	sold2. si4 |
	si2 la |
	sold2. si4 |
	si2 sold |
	sold4 fad sold fad |
	sold fad sold fad |
	mi si fad'( mi) |
	sold1 | \bar "|."
}

parolesF = \lyricmode {
	L'ar -- bre bril -- le, tout scin -- til -- le,
	la mai -- son est plei -- ne de lu -- miè -- res.
	L'ar -- bre bril -- le, tout scin -- til -- le,
	les en -- fants sou -- rient de ce mys -- tè -- re.
	Ou Ou Ou
	L'ar -- bre bril -- le, tout scin -- til -- le,
	les en -- fants sou -- rient de ce mys -- tère, mys -- tè -- re.
}

altoF = \relative do'' {
	\globalF
	
	sold2. sold4 |
	sold2 fad |
	sold2. sold4 |
	sold2 mi |
	mi4 red mi red |
	mi red mi red |
	mi1( |
	mi2) red |
% 9
	sold2. sold4 |
	sold2 fad |
	sold2. sold4 |
	sold2 mi |
	mi4 red mi red |
	mi red mi red |
	mi1~ |
	mi2~ mi4 sold |
% 17
	sold4( lad sold fadd |
	sold sid fadd2) |
	sold4( lad sold fadd |
	sold sid fadd2) |
	sold2( fadd |
	sold fadd |
	red1~ |
	red) |
% 25
	mi2. sold4 |
	sold2 fad |
	mi2. sold4 |
	sold2 mi |
	mi4 red mi red |
	mi red mi red |
	mi1 |
	mi |
}

paroleaF = \lyricmode {
	L'ar -- bre bril -- le, tout scin -- til -- le,
	la mai -- son est plei -- ne de lu -- miè -- res.
	L'ar -- bre bril -- le, tout scin -- til -- le,
	les en -- fants sou -- rient de ce mys -- tè -- re.
	Ou Ou Ou
	L'ar -- bre bril -- le, tout scin -- til -- le,
	les en -- fants sou -- rient de ce mys -- tè -- re.
}

tenorF = \relative do' {
	\globalF
	\clef "G_8"
	r4 si( fad') mi |
	red2( dod4 do) |
	si si( fad') mi |
	red2( dod4) sid |
	dod1 |
	do |
	si4 si fad'( mi |
	red dod) do( si) |
% 9
	r4 si( fad') mi |
	red2( dod4 do) |
	si si( fad') mi |
	red2( dod4) sid |
	dod1 |
	do |
	si4 si fad'( mi |
	si2) sold4( si) |
% 17
	red2( mid~ |
	mid2. red4) |
	red2( fadd~ |
	fadd mid4 redd) |
	mid1( |
	red2. dod4 |
	sid1 |
	si!2 la) |
% 25
	r4 si( fad') mi |
	red2( dod4 do) |
	si si( fad') mi |
	red2( dod4) sid |
	dod1 |
	do2( si) |
	si1 |
	si |
}

paroletF = \lyricmode {
	L'ar -- bre bril -- le, tout scin -- til -- le,
	les lu -- mières, lu -- miè -- res.
	L'ar -- bre bril -- le, tout scin -- til -- le,
	ce mys -- tère, mys -- tè -- re.
	Ou Ou Ou
	L'ar -- bre bril -- le, tout scin -- til -- le,
	ce mys -- tè -- re.
}

basseF = \relative do {
	\globalF
	\clef bass
	mi2. mi4 |
	mi2 mi |
	mi2. mi4 |
	mi2 mi |
	la1 |
	la |
	mi( |
	fad2) si, |
% 9
	mi2. mi4 |
	mi2 mi |
	mi2. mi4 |
	mi2 mi |
	la1 |
	la |
	mi |
	mi |
% 17
	red1~ |
	red |
	red1~ |
	red |
	red1~( |
	red |
	sold,2. la!4 |
	si1) |
% 25
	mi2. mi4 |
	mi2 mi |
	mi2. mi4 |
	mi2 mi |
	la1 |
	la2( si) |
	mi,1 |
	<mi, mi'> |
}

parolebF = \lyricmode {
	L'ar -- bre bril -- le, tout scin -- til -- le,
	les lu -- miè -- res.
	L'ar -- bre bril -- le, tout scin -- til -- le,
	ce mys -- tè -- re.
	Ou Ou Ou
	L'ar -- bre bril -- le, tout scin -- til -- le,
	ce mys -- tè -- re.
}

