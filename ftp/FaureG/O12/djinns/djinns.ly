\version "2.18.2"
\include "catalan.ly"
#(set-global-staff-size 16)

\header{
  title = "Les Djinns"
  composer = "Gabriel FAURÉ"
  poet = "Victor HUGO"
  opus = "Op. 12"

  mutopiatitle = "Les Djinns"
  mutopiacomposer = "FaureG"
  mutopiapoet = "V. Hugo (1802-1885)"
  mutopiaopus = "O 12"
  mutopiainstrument = "Voice and Piano"
  source = "Hamelle, 1891"
  style = "Romantic"
  license = "Public Domain"
  maintainer = "Ludovic Sardain"
  maintainerEmail = "ludovicsardain@hotmail.com"
  lastupdated = "2015/Sep/19"
  
 footer = "Mutopia-2016/01/20-669"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

global = {
	\key fa \minor
	\time 4/4
	\tupletSpan 4
	\override TupletBracket.bracket-visibility = ##f
}

soprano = \relative do'' {
	\global
	\autoBeamOff
	\dynamicUp
	R1*10
% A
	\set Score.markFormatter = #format-mark-box-alphabet
	\mark \default \noBreak
	r4 sib8.\(\pp do16 reb4 fa,8\) r |
	r4 mi8. mi16 fa4 r |
	r4 sib8.\( do16 reb4 fa,8\) r |
	r4 mi8. mi16 fa4 r |
	r4 sib8. do16 reb4 fa,8 r |
	reb'4\< mib8.(\! [fa16]) fa4\> do\! |
	r2 r4 fa,8.\pp fa16 |
	sol8. sol16 sol8. sol16 sol4 r |
% B
	\mark \default \noBreak
	r2 lab8-. r lab-. r16 lab-. |
	sib4 sib8-. r sib-. r sib-. r16 sib-. |
	mib4 r fa,8-. r fa-. r16 fa-. |
	lab4-> lab8-. r lab-. r lab-. r16 lab-. |
	sib4 r lab8-. r lab8-. r16 lab-. |
	sib4-> sib8-. r <la do>-. r <la do>-. r16 <la do>-. |
	<sib reb>4-> <sib reb>8-. r sol-. r sol-. r16 sol-. |
% C
	\mark \default \noBreak
	sol8 r16 sol sol8 r16 sol fa4 r |
	R1 |
	r2 r4 r8. fa'16\f |
	fa4 solb8. solb16 mib4\> dob\! |
	lab8.\p lab16 lab8. lab16 sib4 r |
	R1*2 |
	sib8.\f sib16 dob8. dob16 lab4\> fab\! |
	solb8.\p solb16 solb8. solb16 solb4 r |
	mib'2\ff r4 r8. mib,16\p |
% D
	\mark \default \noBreak
	mib4\< mib8. mib16 mib4 mib8.\! mib16 |
	mib2\f r |
	r8. si'16\p\< si8. si16\! sold4 r8. mi16\f |
	mi2 la4 la8. la16 |
	do2 fa,4 r |
	fa4\p\< fa8. fa16 fa4~ fa8. fa16\! |
	solb1\f |
	r2 r4 r8 si\< |
	si si si si si4 sol\! |
% E
	\mark \default \noBreak
	r4 r8 do\f \deprecatedcresc do do\! do do |
	reb2 reb4 reb8. reb16 |
	do4 do8. do16 fa4 fa |
	fad4.\ff fad8 fad4 fad8. fad16 |
	sol2 r |
	R1 |
% F
	\mark \default \noBreak \once \override DynamicText.extra-offset = #'( 2.0 . 0.0 )
	do,4\ff do8. do16 sib4 sol8. sol16 |
	mib4 fa8. fa16 sol4 sol |
	mib' mib8. mib16 re4 do |
	lab8. lab16 sib8. sib16 do4. do8 |
	do4 dob sib~ sib8. sib16 |
	do!8. do16 dob8. dob16 sib4 sib |
	re reb8. reb16 do4 dob8. dob16 |
	sib4 lab8. sol16 sol2 |
% G
	\mark \default \noBreak \once \override DynamicText.extra-offset = #'( 2.0 . 0.0 )
	sol4\ff lab8. la16 sib4 si8. do16 |
	reb4 mib8. mi16 fa4 do |
	la sib8. si16 do4 dod8. re16 |
	mib4 fa8. fad16 sol4 re |
	re mib8. mi16 fa4 sol8. lab16 |
	sol4 fa8. mib16 re4 do |
% H
	\mark \default \noBreak
	sib\> lab8. sol16 fa4 mib8. fa16\! |
	sol4\p sol8. sol16 sol4~ sol8 r |
	R1*8
% I
	\mark \default \noBreak
	mi'8^\markup{\italic{dolce espress.}} mi re do si4 la8.\< si16 |
	la2\> sol\! |
	sol'4 fad8 mi re re do\< re |
	do2\> si4\! sol8. sol16 |
	sol4\< la8.( [si16]) do4 re8. mi16 |
	fa4(\f mi) red\> mi8. mi16 |
	do4. sol8\p sol4 si8. do16 |
% J
	\mark \default \noBreak
	do2 r |
	R1*2 |
	lad4.^\markup{\dynamic mf \italic{e sempre dim.}} lad8 dod4 dod8. dod16 |
	sid2 sid4 r |
	sold4 sold8. sold16 si4. si8 |
	lad2~ lad4 r |
	fad4.^\markup{\italic{sempre più}\dynamic p} fad8 la4 la8. la16 |
	sold2 sold |
% K
	\mark \default \noBreak
	r4 sol\pp lab8. lab16 fa8. fa16 |
	mi4. mi8 fa8. fa16 fa8. fa16 |
	fa4 fad8. fad16 sol8. sol16 sol8. sol16 |
	sol4 lab8. lab16 la8. la16 sib8. sib16 |
	fa4 fa r fa8.\ppp fa16 |
	fa2 fa8 r reb r |
% L
	\mark \default \noBreak
	do4 r r2
	R1 |
	r2 lab'8-.\pp r lab-. r16 lab-. |
	sib4 sib8-. r sib-. r sib-. r16 sib-. |
	mib4 r fa,8-. r fa-. r16 fa-. |
	lab4-> lab8-. r lab-. r lab-. r16 lab-. |
	sib4 r lab8-. r lab8-. r16 lab-. |
	sib4-> sib8-. r <la do>-. r <la do>-. r16 <la do>-. |
	<sib reb>4-> <sib reb>8-. r16 sib-. sib8-. r16 sib-. solb8-. r16 solb-. |
% M
	\mark \default \noBreak
	fa8-. r fa-. r16 fa-. fa4 r |
	r4 sib8.\(^\markup{\italic dolcissimo} do16 reb4 fa,8\) r |
	r4 mi8. mi16 fa4 r |
	r4 sib8.\( do16 reb4 fa,8\) r |
	r4 mi8. mi16 fa4 r |
	r4 sib8. do16 reb4 fa,8 r |
	reb'4\< mib8.(\! [fa16]) fa4\> do\! |
	r2 r4 fa,8.\pp fa16 |
	sol8. sol16 sol8. sol16 sol4 r |
% N
	\mark \default \noBreak
	R1*10
	\bar "|."
}

paroles = \lyricmode {
	Dans la plai -- ne naît un bruit C'est l'ha -- lei -- ne de la nuit
	El -- le brâ -- me, comme une â -- me Qu'u -- ne flam -- me tou -- jours suit.
% B
	La voix plus hau -- te semble un gre -- lot,
	D'un nain qui sau -- te c'est le ga -- lop,
	Il fuit, s'é -- lan -- ce, puis, en ca -- den -- ce,
	Sur un pied danse au bout d'un flot,
% C
	% La ru -- meur ap -- pro -- che
	% L'é -- cho la re -- dit
	C'est com -- me la clo -- che d'un cou -- vent mau -- dit
	% com -- me un bruit de fou -- le
	% qui tonne et qui rou -- le
	qui tan -- tôt s'é -- crou -- le et tan -- tôt gran -- dit
	Dieu! La voix sé -- pul -- cra -- le des djinns!
% D+2
	Quel bruit ils font, 
	Fu -- yons sous la spi -- ra -- le de l'es -- ca -- lier pro -- fond
	dé -- jà s'é -- teint la lam -- pe et l'om -- bre de la ram -- pe
	qui le long du mur ram -- pe, mon -- te jus -- qu'au pla -- fond!
% F
	Cris de l'en -- fer! voix qui hurle et qui pleu -- re,
	L'hor -- rible es -- saim pous -- sé par l'a -- qui -- lon,
	sans doute, ô ciel s'a -- bat sur ma de -- meu -- re,
	le mur flé -- chit sous le noir ba -- tail -- lon,
% G
	La mai -- son crie et chan -- cel -- le, pen -- ché -- e,
	et l'on di -- rait que du sol ar -- ra -- ché -- e
	Ain -- si qu'il chasse u -- ne feuil -- le sé -- ché -- e
	le vent la roule a -- vec leur tour -- bil -- lon
% H+2
% I
	Fais que sur ces por -- tes fi -- dè -- les
	Meu -- re leur souf -- fle d'é -- tin -- cel -- le
	Et qu'en vain l'on -- gle de leurs ai -- les
	grince et crie sur ces vi -- traux noirs!
% J
	De leurs ai -- les loin -- tai -- nes
	Le bat -- te -- ment dé -- croit
	Si con -- fus dans les plai -- nes,
	Si fai -- ble que l'on croit ou -- ïr la sau -- te -- rel -- le
	cri -- er d'u -- ne voix grê -- le ou pé -- til -- ler la grê -- le
	Sur le plomb d'un vieux toit.
% L
	Les djinns fu -- nè -- bres fils du tré -- pas,
	dans les té -- nè -- bres pres -- sent leurs pas
	Leur es -- saim gron -- de Ain -- si, pro -- fon -- de,
	mur -- mure une on -- de qu'on ne voit pas.
% M
	Ce bruit va -- gue Qui s'en -- dort
	C'est la va -- gue Sur le bord,
	C'est la plain -- te Presque é -- tein -- te
	D'u -- ne sain -- te pour un mort
}

alto = \relative do' {
	\global
	\autoBeamOff
	\dynamicUp
	R1*2 |
	do4-.\pp r reb-.( \grace reb8) r4 |
	r re-. mib-. r |
	sib-. r sib-.( \grace sib8) r4 |
	r si-. do-. r |
	do-. r do-.( \grace do8) r4 |
	r do-. reb-.( \grace reb8) r4 |
	sib-. r sib-.( \grace sib8) r4 |
	r la-. sib-. r |
% A
	r2 r4 sib8.\pp do16 |
	reb8. reb16 reb8. reb16 reb4 r |
	r2 r4 sib8. do16 |
	reb8. reb16 reb8. reb16 reb4 r |
	r fa8. fa16 fa4 fa8 r |
	fa4\< fa\! fa\> fa\! |
	r2 r4 fa8.\pp fa16 |
	fa8. fa16 fa8. fa16 mi4 r |
% B
	r2 lab8-. r lab-. r16 lab-. |
	lab4 lab8-. r sol-. r sol-. r16 sol-. |
	solb4 r fa8-. r fa-. r16 fa-. |
	fa4-> fa8-. r <do mib>-. r <do mib>-. r16 <do mib>-. |
	<do mi>4 r <do mib>8-. r <do mib>8-. r16 <do mib>-. |
	<do mi>4-> <do mi>8-. r fa-. r fa-. r16 fa-. |
	fa4-> fa8-. r fa-. r fa-. r16 fa-. |
% C
	mi8 r16 mi mi8 r16 mi fa4 r |
	r2 r4 r8. fa16\p |
	fa4\< fa8. fa16 fa4~ fa8\! r16 la\f |
	sib4 solb8. solb16 solb4\> solb\! |
	solb8.\p solb16 fa8. fa16 solb4 r |
	r2 r4 r8. sib16\p |
	sib4\< sib8. sib16 sib4 sib\! |
	solb8.\f solb16 solb8. solb16 fab4\> fab\! |
	reb8.\p reb16 reb8. reb16 mib4 r |
	mib'2\ff r4 r8. mib,16\p |
% D
	mib4\< mib8. mib16 mib4 mib8.\! mib16 |
	mib2\f r |
	r8. mi16\p\< mi8. mi16\! mi4 r8. si16\f |
	do2 mi4 mi8. mi16 |
	fa2 fa4 r |
	reb4\p\< reb8. reb16 reb4~ reb8. reb16\! |
	reb1\f |
	r2 r4 r8 fad\< |
	sol sol sol sol sol4 sol\! |
% E
	r4 r8 sol\f \deprecatedcresc sol sol\! sol sol |
	sol2 sol4 sol8. sol16 |
	do4 do8. do16 do4 do |
	do4.\ff do8 do4 do8. do16 |
	do2 r |
	R1 |
% F
	do4\ff do8. do16 sib4 sol8. sol16 |
	mib4 fa8. fa16 sol4 sol |
	mib' mib8. mib16 re4 do |
	lab8. lab16 sib8. sib16 do4. do8 |
	do4 dob sib~ sib8. sib16 |
	do!8. do16 dob8. dob16 sib4 sib |
	re reb8. reb16 do4 dob8. dob16 |
	sib4 lab8. sol16 sol2 |
% G
	reb!4\ff reb8. reb16 mi4 mi8. mi16 |
	fa4 fa8. fa16 fa4 fa |
	mib! mib8. mib16 fad4 fad8. fad16 |
	sol4 sol8. sol16 sol4 sol |
	lab!4 lab8. lab16 si4 si8. si16 |
	do4 do8. do16 sol4 sol |
% H
	fa4\> fa8. mib16 re4 do8. re16\! |
	mib4\p mib8. mib16 re4~ re8 r |
	R1*8 |
% I
	mi8^\markup{\italic{dolce espress.}} mi mi mi red4 red8.\< red16 |
	<red fad>2\> mi\! |
	sol4 sol8 sol fad fad fad\< fad |
	<fad la>2\> sol4\! sol8. sol16 |
	sol4\< sol sol sol8. sol16 |
	fa4(\f sol) la\> sold8. sold16 |
	sol4. mi8\p sol4 <fa sol>8. <mi sol>16 |
% J
	<mi sol>2 r |
	R1*2 |
	mi4.^\markup{\dynamic mf \italic{e sempre dim.}} mi8 mi4 mi8. mi16 |
	red2 red4 r |
	re4 re8. re16 re4. re8 |
	dod2~ dod4 r |
	do4.^\markup{\italic{sempre più}\dynamic p} do8 do4 do8. do16 |
	si2 si |
% K
	r4 mi\pp fa8. fa16 re8. re16 |
	do4. sib8 lab8. lab16 dob8. dob16 |
	sib4 sib8. sib16 sib8. sib16 reb!8. reb16 |
	do4 do8. do16 do8. do16 sib8. sib16 |
	mib4 mib r reb8.\ppp reb16 |
	mib2 reb8 r sib r |
% L
	sol4 r r2 |
	R1 |
	r2 lab'8-.\pp r lab-. r16 lab-. |
	lab4 lab8-. r sol-. r sol-. r16 sol-. |
	solb4 r fa8-. r fa-. r16 fa-. |
	fa4-> fa8-. r <do mib>-. r <do mib>-. r16 <do mib>-. |
	<do mi>4 r <do mib>8-. r <do mib>8-. r16 <do mib>-. |
	<do mi>4-> <do mi>8-. r fa-. r fa-. r16 fa-. |
	fa4-> fa8-. r16 fa-. solb8-. r16 solb-. mib8-. r16 mib-. |
% M
	do8-. r do-. r16 do-. reb4 r |
	r2 r4 sib8.^\markup{\italic dolcissimo} do16 |
	reb8. reb16 reb8. reb16 reb4 r |
	r2 r4 sib8. do16 |
	reb8. reb16 reb8. reb16 reb4 r |
	r fa8. fa16 fa4 fa8 r |
	fa4\< fa\! fa\> fa\! |
	r2 r4 fa8.\pp fa16 |
	fa8. fa16 fa8. fa16 mi4 r |
% N
	do4-.^\markup{\italic staccato} r reb-.( \grace reb8) r4 |
	r re-. mib-. r |
	sib-. r sib-.( \grace sib8) r4 |
	r si-. do-. r |
	do-. r do-.( \grace do8) r4 |
	r do-. reb-.( \grace reb8) r4 |
	lab-. r sib-.( \grace sib8) r4 |
	r do-. do-. r |
	R1*2 |
}

parolea = \lyricmode {
	Murs, ville et port, a -- sile de mort,
	mer grise où brise la brise, tout dort,
	Dans la plai -- ne naît un bruit C'est l'ha -- lei -- ne de la nuit
	El -- le brâ -- me, comme une â -- me Qu'u -- ne flam -- me tou -- jours suit.
% B
	La voix plus hau -- te semble un gre -- lot,
	D'un nain qui sau -- te c'est le ga -- lop,
	Il fuit, s'é -- lan -- ce, puis, en ca -- den -- ce,
	Sur un pied danse au bout d'un flot,
% C
	% La ru -- meur ap -- pro -- che
	L'é -- cho la re -- dit
	C'est com -- me la clo -- che d'un cou -- vent mau -- dit
	% com -- me un bruit de fou -- le
	qui tonne et qui rou -- le
	qui tan -- tôt s'é -- crou -- le et tan -- tôt gran -- dit
	Dieu! La voix sé -- pul -- cra -- le des djinns!
% D+2
	Quel bruit ils font, 
	Fu -- yons sous la spi -- ra -- le de l'es -- ca -- lier pro -- fond
	dé -- jà s'é -- teint la lam -- pe et l'om -- bre de la ram -- pe
	qui le long du mur ram -- pe, mon -- te jus -- qu'au pla -- fond!
% F
	Cris de l'en -- fer! voix qui hurle et qui pleu -- re,
	L'hor -- rible es -- saim pous -- sé par l'a -- qui -- lon,
	sans doute, ô ciel s'a -- bat sur ma de -- meu -- re,
	le mur flé -- chit sous le noir ba -- tail -- lon,
% G
	La mai -- son crie et chan -- cel -- le, pen -- ché -- e,
	et l'on di -- rait que du sol ar -- ra -- ché -- e
	Ain -- si qu'il chasse u -- ne feuil -- le sé -- ché -- e
	le vent la roule a -- vec leur tour -- bil -- lon
% H+2
% I
	Fais que sur ces por -- tes fi -- dè -- les
	Meu -- re leur souf -- fle d'é -- tin -- cel -- le
	Et qu'en vain l'on -- gle de leurs ai -- les
	grince et crie sur ces vi -- traux noirs!
% J
	De leurs ai -- les loin -- tai -- nes
	Le bat -- te -- ment dé -- croit
	Si con -- fus dans les plai -- nes,
	Si fai -- ble que l'on croit ou -- ïr la sau -- te -- rel -- le
	cri -- er d'u -- ne voix grê -- le ou pé -- til -- ler la grê -- le
	Sur le plomb d'un vieux toit.
% L
	Les djinns fu -- nè -- bres fils du tré -- pas,
	dans les té -- nè -- bres pres -- sent leurs pas
	Leur es -- saim gron -- de Ain -- si, pro -- fon -- de,
	mur -- mure une on -- de qu'on ne voit pas.
% M
	Ce bruit va -- gue Qui s'en -- dort
	C'est la va -- gue Sur le bord,
	C'est la plain -- te Presque é -- tein -- te
	D'u -- ne sain -- te pour un mort
% N
	On doute, la nuit, j'é -- coute Tout fuit,
	Tout passe, l'es -- pace ef -- face le bruit.
}

tenor = \relative do' {
	\global
	\autoBeamOff
	\dynamicUp
	\clef "G_8"
	R1*10
% A
	R1*8
% B
	do8-.\pp r^\markup{\italic leggiero} do-. r16 do-. reb4-> reb8-. r |
	re8-. r re-. r16 re-. mib4-> r |
	sib8-. r sib-. r16 sib-. sib4-> sib8-. r |
	si8-. r si-. r16 si-. do4-> r |
	do8-. r do-. r16 do-. do4-> do8-. r |
	do8-. r do-. r16 do-. fa4-> fa8-. r |
	reb8-. r reb-. r16 reb-. sib4-> sib8-. r |
% C
	do8 r8 do r16 do fa,4 r |
	R1 |
	r2 r4 r8. do'16\f |
	reb4 reb8. reb16 dob4\> solb\! |
	reb'8.\p reb16 reb8. reb16 reb4 r |
	R1*2 |
	mib8.\f mib16 dob8. dob16 dob4\> dob\! |
	dob8.\p dob16 sib8. sib16 dob4 r |
	mib2\ff r4 r8. mib,16\p |
% D
	mib4\< mib8. mib16 mib4 mib8.\! mib16 |
	mib2\f r |
	r8. sold16\p\< sold8. sold16\! si4 r8. sold!16\f |
	la2 do4 do8. do16 |
	<la do>2 <la do>4 r |
	sib4\p\< sib8. sib16 sib4~ sib8. sib16\! |
	sib1\f |
	r2 r4 r8 re\< |
	re re re re re4 si\! |
% E
	r4 r8 mib\f \deprecatedcresc mib mib\! mib mib |
	mi2 mi4 mi8. mi16 |
	fa4 fa8. fa16 fa4 fa |
	mib4.\ff mib8 mib4 mib8. mib16 |
	mib2 r |
	R1 |
% F
	do4\ff do8. do16 sib4 sol8. sol16 |
	mib4 fa8. fa16 sol4 sol |
	mib' mib8. mib16 re4 do |
	lab8. lab16 sib8. sib16 do4. do8 |
	do4 dob sib~ sib8. sib16 |
	do!8. do16 dob8. dob16 sib4 sib |
	re reb8. reb16 do4 dob8. dob16 |
	sib4 lab8. sol16 sol2 |
% G
	sib4\ff sib8. sib16 reb4 reb8. reb16 |
	reb4 reb8. reb16 do4 do |
	do do8. do16 mib4 mib8. mib16 |
	mib4 mib8. mib16 re4 re |
	fa4 fa8. fa16 lab4 sol8. fa16 |
	sol4 sol8. sol16 sol4 sol, |
% H
	do4\> do8. do16 do4 do8. do16\! |
	do4\p do8. do16 si4~ si8 sol\ff |
	mi'4. mi8 do do do8. do16 |
	do2 la4 <sol do> |
	<la re>8 <la re> <la re> <la re> <do re>4. <do re>8 |
	<si re>2. <sib re>4 |
	<sib mib>4 <sib fa'>8. <sib fad'>16 <si sol'>4 <si sol'>8. <si sol'>16 |
	<do sol'>2 <do mi>4\> <fad, do'> |
	<sol do>\p <sol do>8. <sol do>16 <do mi>4 <si re>8. do16 |
	do2~ do4 r |
% I
	do8^\markup{\italic{dolce espress.}} do si la sol4 fad8.\< fad16 |
	do'2\> si\! |
	mi4 re8 do si si la\< la |
	mib'!2\> re4\! si8. si16 |
	do4\< fa mi re8. do16 |
	do2\f si4\> si8. si16 |
	do4. do8\p <do mi>4 <sol re'>8. <sol do>16 |
% J
	<sol do>2 r |
	R1*2 |
	dod4.^\markup{\dynamic mf \italic{e sempre dim.}} dod8 lad4 lad8. lad16 |
	sold2 sold4 r |
	si4 si8. si16 sold4. sold8 |
	fad2~ fad4 r |
	la4.^\markup{\italic{sempre più}\dynamic p} la8 fad4 fad8. fad16 |
	mi2 mi |
% K
	r4 do'\pp si8. si16 lab!8. lab16 |
	sol4. sol8 fa8. fa16 lab8. lab16 |
	lab4 lab8. lab16 sol8. sol16 sib8. sib16 |
	sib4 lab8. fa16 fa8. fa16 fa8. fa16 |
	la4 la r sib8.\ppp sib16 |
	do2 sib8 r fa r |
% L
	mi4 r r2 |
	R1 |
	do'8-.\pp r do-. r16 do-. reb4-> reb8-. r |
	re8-. r re-. r16 re-. mib4-> r |
	sib8-. r sib-. r16 sib-. sib4-> sib8-. r |
	si8-. r si-. r16 si-. do4-> r |
	do8-. r do-. r16 do-. do4-> do8-. r |
	do8-. r do-. r16 do-. fa4-> fa8-. r |
	reb8-. r reb-. r16 reb-. do4-> do8-. r |
% M
	la8-. r la-. r16 la-. sib4 r4 |
	R1*8
% N
	R1*10
}

parolet = \lyricmode {
	La voix plus hau -- te semble un gre -- lot,
	D'un nain qui sau -- te c'est le ga -- lop,
	Il fuit, s'é -- lan -- ce, puis, en ca -- den -- ce,
	Sur un pied dan -- se au bout d'un flot,
% C
	% La ru -- meur ap -- pro -- che
	% L'é -- cho la re -- dit
	C'est com -- me la clo -- che d'un cou -- vent mau -- dit
	% com -- me un bruit de fou -- le
	% qui tonne et qui rou -- le
	qui tan -- tôt s'é -- crou -- le et tan -- tôt gran -- dit
	Dieu! La voix sé -- pul -- cra -- le des djinns!
% D+2
	Quel bruit ils font, 
	Fu -- yons sous la spi -- ra -- le de l'es -- ca -- lier pro -- fond
	dé -- jà s'é -- teint la lam -- pe et l'om -- bre de la ram -- pe
	qui le long du mur ram -- pe, mon -- te jus -- qu'au pla -- fond!
% F
	Cris de l'en -- fer! voix qui hurle et qui pleu -- re,
	L'hor -- rible es -- saim pous -- sé par l'a -- qui -- lon,
	sans doute, ô ciel s'a -- bat sur ma de -- meu -- re,
	le mur flé -- chit sous le noir ba -- tail -- lon,
% G
	La mai -- son crie et chan -- cel -- le, pen -- ché -- e,
	et l'on di -- rait que du sol ar -- ra -- ché -- e
	Ain -- si qu'il chasse u -- ne feuil -- le sé -- ché -- e
	le vent la roule a -- vec leur tour -- bil -- lon
% H+2
	Pro -- phè -- te, si ta main me sau -- ve de ces obs -- curs dé -- mons des soirs
	J'i -- rai pro -- ster -- ner mon front chau -- ve
	de -- vant tes sa -- crés en -- cen -- soirs!
% I
	Fais que sur ces por -- tes fi -- dè -- les
	Meu -- re leur souf -- fle d'é -- tin -- cel -- le
	Et qu'en vain l'on -- gle de leurs ai -- les
	grince et crie sur ces vi -- traux noirs!
% J
	De leurs ai -- les loin -- tai -- nes
	Le bat -- te -- ment dé -- croit
	Si con -- fus dans les plai -- nes,
	Si fai -- ble que l'on croit ou -- ïr la sau -- te -- rel -- le
	cri -- er d'u -- ne voix grê -- le ou pé -- til -- ler la grê -- le
	Sur le plomb d'un vieux toit.
% L
	Les djinns fu -- nè -- bres fils du tré -- pas,
	dans les té -- nè -- bres pres -- sent leurs pas
	Leur es -- saim gron -- de Ain -- si, pro -- fon -- de,
	mur -- mure une on -- de qu'on ne voit pas.
}

basse = \relative do {
	\global
	\autoBeamOff
	\dynamicUp
	\clef bass
	R1*10
% A
	R1*8
% B
	R1*7
% C
	R1 |
	fa8.\p fa16 fa8. fa16 fa4 fa8 r |
	r2 r4 r8. fa16\f |
	sib4 sib,8. sib16 dob4\> mib\! |
	reb8.\p reb16 reb8. reb16 solb,4 r |
	sib'8.\p\< sib16 sib8. sib16 sib4 sib8\! r |
	R1 |
	mib,8.\f mib16 mib8. mib16 fab4\> lab\! |
	solb8.\p solb16 <solb, solb'>8. <solb solb'>16 dob4 r |
	mib'2\ff r4 r8. mib,16\p |
% D
	mib4\< mib8. mib16 mib4 mib8.\! mib16 |
	mib2\f r |
	r8. mi16\p\< mi8. mi16\! mi4 r8. mi!16\f |
	mi2 mi4 mi8. mi16 |
	mib!2 mib4 r |
	sib4\p\< sib8. do16 reb4~ reb8. mib16\! |
	fab1\f |
	r2 r4 r8 fad\< |
	fa! fa fa fa fa4 fa\! |
% E
	r4 r8 do'\f \deprecatedcresc do do\! do do |
	sib2 sib4 sib8. sib16 |
	<la do>4 <la do>8. <la do>16 <la do>4 <la do> |
	<lab! do>4. <lab do>8 <lab do>4 <lab do>8. <lab do>16 |
	<sol do>2 r |
	R1 |
% F
	do4\ff do8. do16 sib4 sol8. sol16 |
	mib4 fa8. fa16 sol4 sol |
	mib' mib8. mib16 re4 do |
	lab8. lab16 sib8. sib16 do4. do8 |
	do4 dob sib~ sib8. sib16 |
	do!8. do16 dob8. dob16 sib4 sib |
	re reb8. reb16 do4 dob8. dob16 |
	sib4 lab8. sol16 sol2 |
% G
	mi4\ff mi8. mi16 sol4 sol8. sol16 |
	lab4 lab8. lab16 lab4 lab |
	fad fad8. fad16 la4 la8. la16 |
	sib4 sib8. sib16 sib4 sib |
	si si8. si16 re4 re8. re16 |
	mib4 mib,8. mib16 mib4 mib |
% H
	fa4\> fa8. sol16 lab4 lab8. lab16\! |
	sol4\p sol8. sol16 sol4~ sol8 sol\ff |
	<do, sol'>4. <do sol'>8 <mi sol>8 <mi sol> <mi sol>8. <mi sol>16 |
	<fa la>2 fa4 <mi sol> |
	<re fa>8 <re fa> <re fa> <re fa> <re fad>4. <re fad>8 |
	sol2. <fa lab!>4 |
	<mib! sol>4 <mib sol>8. <mib sol>16 <re fa>4 <re fa>8. <re fa>16 |
	<do mi>2 <do sol'>4\> <la re> |
	<sol mi'>\p <sol mi'>8. <sol mi'>16 <sol sol'>4 <sol fa'>8. <do mi!>16 |
	<do mi>2~ <do mi>4 r |
% I
	la8^\markup{\italic{dolce espress.}} la la la si4 si8.\< si16 |
	mi2\> mi\! |
	do4 do8 do re re re\< re |
	sol2\> sol4\! fa8. fa16 |
	mi4\< re do sib'8. sib16 |
	la4(\f sol) fad\> mi8. mi16 |
	mi4. do8\p sol4 sol8. do16 |
% J
	do2 r |
	R1*2 |
	fad4.^\markup{\dynamic mf \italic{e sempre dim.}} fad8 fad4 fadd8. fadd16 |
	sold2 sold4 r |
	mi4 mi8. mi16 mi4 mid |
	fad2~ fad4 r |
	re4.^\markup{\italic{sempre più}\dynamic p} re8 re4 red8. red16 |
	mi2 mi |
% K
	r4 do\pp do8. do16 do8. do16 |
	do4. do8 reb8. reb16 reb8. reb16 |
	re4 re8. re16 mib8. mib16 mib8. mib16 |
	mi4 fa8. fa16 mib8. mib16 reb!8. reb16 |
	do4 do r sib8.\ppp sib16 |
	la2 sib8 r sib r |
% L
	do4 r r2 |
	R1*8 |
% M
	R1*9 |
% N
	R1*10 |
}

paroleb = \lyricmode {
% C
	La ru -- meur ap -- pro -- che
	% L'é -- cho la re -- dit
	C'est com -- me la clo -- che d'un cou -- vent mau -- dit
	comme un bruit de fou -- le
	% qui tonne et qui rou -- le
	qui tan -- tôt s'é -- crou -- le et tan -- tôt gran -- dit
	Dieu! La voix sé -- pul -- cra -- le des djinns!
% D+2
	Quel bruit ils font, 
	Fu -- yons sous la spi -- ra -- le de l'es -- ca -- lier pro -- fond
	dé -- jà s'é -- teint la lam -- pe et l'om -- bre de la ram -- pe
	qui le long du mur ram -- pe, mon -- te jus -- qu'au pla -- fond!
% F
	Cris de l'en -- fer! voix qui hurle et qui pleu -- re,
	L'hor -- rible es -- saim pous -- sé par l'a -- qui -- lon,
	sans doute, ô ciel s'a -- bat sur ma de -- meu -- re,
	le mur flé -- chit sous le noir ba -- tail -- lon,
% G
	La mai -- son crie et chan -- cel -- le, pen -- ché -- e,
	et l'on di -- rait que du sol ar -- ra -- ché -- e
	Ain -- si qu'il chasse u -- ne feuil -- le sé -- ché -- e
	le vent la roule a -- vec leur tour -- bil -- lon
% H+2
	Pro -- phè -- te, si ta main me sau -- ve de ces obs -- curs dé -- mons des soirs
	J'i -- rai pro -- ster -- ner mon front chau -- ve
	de -- vant tes sa -- crés en -- cen -- soirs!
% I
	Fais que sur ces por -- tes fi -- dè -- les
	Meu -- re leur souf -- fle d'é -- tin -- cel -- le
	Et qu'en vain l'on -- gle de leurs ai -- les
	grince et crie sur ces vi -- traux noirs!
% J
	De leurs ai -- les loin -- tai -- nes
	Le bat -- te -- ment dé -- croit
	Si con -- fus dans les plai -- nes,
	Si fai -- ble que l'on croit ou -- ïr la sau -- te -- rel -- le
	cri -- er d'u -- ne voix grê -- le ou pé -- til -- ler la grê -- le
	Sur le plomb d'un vieux toit.
}

pianoDroite = \relative do' {
	\global
	\override TupletBracket.bracket-visibility = #'if-no-beam
	do1~\pp |
	do~ |
	\slurUp do2( reb |
	<sib re>~ <sib mib>) |
	s1*5
	sol''2\rest sol4\rest \stemUp sib,8.( do16 |
% A
	reb4 fa,8) r r2 |
	r2 r4 \stemUp sib8.( do16 |
	reb4 fa,8) r r2 |
	r2 r4 \stemUp sib8.( do16 |
	reb4 fa,8) r << { \dynamicUp r4 reb'8.(\< mib16 |
		fa4 mib8. reb16 do4\! lab8. sol16 |
		fa2\> ~ <sib, fa'> |
		\slurNeutral <fa' sol>\!~)( <mi sol>4) do8. do16 | }
	\\ {	s2 |
		s1 |
		fa4 s4 s2 |
		s1 }
	>>
% B
	<lab, do>8-.\pp r16 <lab do>16-. <lab do>8-. r \tuplet 3/2 {r8 lab( fa'}
		\tuplet 3/2 {reb lab' fa)} |
	<re lab' re>8 r r4 \tuplet 3/2 {r8 mib( sib'} \tuplet 3/2 {sol mib' sib)} |
	<sib solb' sib>8-. r16 <sib solb' sib>-. <sib solb' sib>8-. r
		\tuplet 3/2 {r8 sib,( fa'} \tuplet 3/2 {re sib' fa)} |
	<fa si fa'>8 r r4 \tuplet 3/2 {r8 mib( do'} \tuplet 3/2 {lab mib' do)} |
	<mi, sib' mi>8-. r16 <mi sib' mi>-. <mi sib' mi>8-. r
		\tuplet 3/2 {r8 mib( do'} \tuplet 3/2 {lab mib' do)} |
	<mi, sib' mi>8-. r16 <mi sib' mi>-. <mi sib' mi>8-. r
		\tuplet 3/2 {r8 do( la'} \tuplet 3/2 {fa do' la)} |
	<reb, fa reb'>8-. r16 <reb fa reb'>-. <reb fa reb'>8-. r
		\tuplet 3/2 {r8 fa( reb'} \tuplet 3/2 {sib fa' reb)} |
% C
	<mi, sol do mi>8-. r16 <mi sol do mi>-. <mi sol do mi>8-. r
		\change Staff = lower fa,16 \change Staff = upper fa' \change Staff = lower fa,
		\change Staff = upper fa' \change Staff = lower sol, \change Staff = upper fa'
		\change Staff = lower sol, \change Staff = upper fa' |
	lab,\< fa' lab, fa' sibb, fa' sibb, fa' sib, fa' sib, fa'\! dob fa dob fa |
	\deprecatedcresc fa' fa,\! fa' fa, <fa' sol> sol, <fa' sol> sol,
		<fa' sold> sold, <fa' sold> sold, <fa' la> la, <fa' la> la, |
	<fa' sib>\f sib, <fa' sib> sib, <reb solb>\> sol, <reb' solb> sol, 
		<solb mib'> mib <solb mib'> mib <solb dob> dob, <solb' dob> dob,\! |
	<reb solb lab>\p lab <reb solb lab> lab <reb fa lab> lab <reb fa lab> lab 
		sib sib' sib, sib' do, sib' do, sib' |
	reb,\< sib' reb, sib' re, sib' re, sib' mib, sib' mib, sib' mi, sib' mi, sib'\! |
	\deprecatedcresc sib' sib,\! sib' sib, <sib' do> do, <sib' do> do,
		<sib' dod> dod, <sib' dod> dod, <sib' re> re, <sib' re> re, |
	<sib' mib>\f mib, <sib' mib> mib, <solb dob>\> dob, <solb' dob> dob,
		<dob lab'> lab <dob lab'> lab <dob fab> fab, <dob' fab> fab,\! |
	<solb dob reb>\p reb <solb dob reb> reb <solb sib reb> reb <solb sib reb> reb 
		mib mib' mib, mib' fa, mib' fa, mib' |
	solb,\< mib' solb, mib' sol, mib' sol, mib' lab, mib' lab, mib' la, mib' la, mib'\! |
% D
	\deprecatedcresc mib' mib,\! mib' mib, <mib' fa> fa, <mib' fa> fa,
		<mib' solb> solb, <mib' solb> solb, <mib' sol> sol, <mib' sol> sol, |
	<dob mib lab>\f lab <dob mib lab> lab <lab dob mib> mib <lab dob mib> mib
		<mib lab dob>\> dob <mib lab dob> dob <dob mib lab> lab <dob mib lab> lab\! |
	<sold' si mi>\< mi <sold si mi> mi <mi sold si> si <mi sold si> si
		<si mi sold> sold <si mi sold> sold <si mi> sold <si mi> sold\! |
	<do' mi la>\f la <do mi la> la <la do mi> mi <la do mi> mi
		<mi la do>\> do <mi la do> do <do mi la> la <do mi la> la\! |
	<la' do fa>\< fa <la do fa> fa <fa la do> do <fa la do> do
		<do fa la> la <do fa la> la <do fa> la <do fa> la\! |
	\ottava #1 <reb' fa sib>\f sib <reb fa sib> sib <sib reb fa> fa <sib reb fa> fa
		\ottava #0 <fa sib reb>\> reb <fa sib reb> reb
		<reb fa sib> sib <reb fa sib> sib\! |
	<sib' reb solb>\< solb <sib reb solb> solb <solb sib reb> reb <solb sib reb> reb
		<reb solb sib> sib <reb solb sib> sib <reb solb> sib <reb solb> sib\! |
	\ottava #1 <re' fad si>\f si <re fad si> si <si re fad> fad <si re fad> fad
		\ottava #0 <fad si re>\> re <fad si re> re
		<re fad si> si <re fad si> si\! |
	<si' re sol>\< sol <si re sol> sol <sol si re> re <sol si re> re
		<re sol si> si <re sol si> si <re sol> si <re sol> si\! |
% E
	<mib sol do>\ff do <mib sol do> do <do mib sol> sol <do mib sol> sol
		<sol do mib> mib <sol do mib> mib <sol do> mib <sol do> mib |
	<mi' sol reb'!> reb! <mi sol reb'> reb <mi sol sib> sib <mi sol sib> sib
		<sib mi sol> sol <sib mi sol> sol <sib mi> sol <sib mi> sol |
	<fa' la do> do <fa la do> do <do fa la> la <do fa la> la
		<la do fa> fa <la do fa> fa <la do> fa <la do> fa |
	<mib' fad do'> do <mib fad do'> do <do mib fad> fad, <do' mib fad> fad,
		<fad do' mib> mib <fad do' mib> mib <fad do'> mib <fad do'> mib |
	<sol do mib sol>8. <sol do mib sol>16 \tuplet 3/2 {<sol do mib sol>8->
		<lab lab'> <sol sol'>} <sol dod mi sol>8. <sol dod mi sol>16
		\tuplet 3/2 {<sol dod mi sol>8-> <lab lab'> <sol sol'>} |
	<sol re' fa sol>8. <sol re' fa sol>16 \tuplet 3/2 {<sol re' fa sol>8-.->
		<re' fa lab>-. <re fa sol>-.} \tuplet 3/2 {<re fa sold>-. <re fa la>-.
		<re fa sold>-.} \tuplet 3/2 {<re fa la>-. <re fa sib>-. <re fa si>-.} |
% F
	<mib sol do>16\ff do <mib sol do>16 do <mib sol do>16 do <mib sol do>16 do 
		r sib <mib sol sib> sib r sol <mib' sol> sol, |
	r mib <lab do mib> mib r fa <lab do fa> fa r mib' fa sol lab sib do re |
	<lab mib'> mib <lab mib'> mib <lab mib'> mib <lab mib'> mib 
		r re <lab' re> re, r do <mib lab do> do |
	r lab <mib' lab> lab, r sib <mib sib'> sib r do re mib fa sol lab sib |
	<fa lab do> do <fa lab do> do <fa lab dob> dob <fa lab dob> dob
		r do re mib fa sol lab sib |
	<mib, lab do!> do! <mib lab do> do <mib lab dob> dob <mib lab dob> dob 
		r mib fa sol lab sib do dod |
	<lab re> re, <lab' re> re, r reb <lab' reb> reb, r do <lab' do> do, r dob
		<lab' dob> dob, |
	r sib <mib sib'> sib r lab <mib' lab> lab, r lab sib do re mib fa fad |
% G
	<sol, sib reb> sol' sol, sol' lab, lab' la, la' <sib, reb mi> sib' sib, sib'
		si, si' do, do' |
	<reb, fa lab> reb' reb, reb' mib, mib' mi, mi' r fa, <lab do fa> fa
		r do <fa lab do> do |
	<la do mib> la' la, la' sib, sib' si, si' <do, mib fad> do' do, do'
		dod, dod' re, re' |
	<mib, sol sib> mib' mib, mib' fa, fa' fad, fad' r sol, <sib re sol> sol
		r re <sol sib re> re |
	<re fa lab> re' re, re' mib, mib' mi, mi' <fa, lab si> fa' fa, fa'
		sol, sol' lab, lab' |
	<sol, do> sol' sol, sol' fa, fa' mib, mib' r re, <sol re'> re r do <sol' do> do, |
% H
	<sib fa'>\> sib' sib, sib' lab, lab' sol, sol' fa, fa' fa, fa' mib, mib' fa, fa'\! |
	\tuplet 3/2 {<sol, do mib sol>8\p do,-.\< reb-.} \tuplet 3/2 {mib-. fa-. fad-.}
		\tuplet 3/2 {sol-. la-. si-.} \tuplet 3/2 {do-. re-. red-.\!} |
	<< {<sol, do mi>8 r r4 r2}\\{mi2\ff <sol, do>} >> |
	\tuplet 3/2 {<la do>8 do-. re-.} \tuplet 3/2 {mi-. fa-. sol-.}
		\tuplet 3/2 {la-. sib-. si-.} \tuplet 3/2 {do-. re-. mi-.} |
	<fa, la re fa>8 r r4 <do re>2 |
	\tuplet 3/2 {<si re>8 re-. mi!-.} \tuplet 3/2 {fad-. sol-. la-.}
		\tuplet 3/2 {si-. do-. re-.} \tuplet 3/2 {mib-. fa-. fad-.} |
	<< {<mib sol>8 r r4 r2}\\{<sol, sib>4 fa8.( fad16) <fa sol>2} >> |
	\tuplet 3/2 {<mi sol>8 do-. re-.} \tuplet 3/2 {mi-. fa-. sol-.}
		\tuplet 3/2 {la-. sib-. si-.} \tuplet 3/2 {do-. re-. red-.} |
	<mi, sol do mi>8\> r r4 <do mi>4( <si re>)\! |
	\tuplet 3/2 {<do mi>8\p sol <do mi>} \tuplet 3/2 {sol <do mi> sol}
		\tuplet 3/2 {<do mi>8 sol <do mi>} \tuplet 3/2 {sol <do mi> sol} |
% I
	\tuplet 3/2 {<do mi> la <do mi> la <do mi> la <si red>\< sol <si red>
		fad <la red> fad\!} |
	\tuplet 3/2 {<red' fad la>\mf\> do <red fad la> do <red fad la> do\!
		<mi sol> si <mi sol> si <mi sol> si}
	\tuplet 3/2 {<mi sol> do <mi sol> do <mi sol> do
		<re fad>\< si <re fad> la <do fad> la\!} |
	\tuplet 3/2 {<fad' la do>\mf\> mib! <fad la do> mib <fad la do> mib\!
		<sol si> re <sol si> sol, sol' sol,} |
	\tuplet 3/2 {sol'\< sol, sol' <sol, fa'> sol' <sol, fa'> sol' <sol, mi'> sol'
		<sol, re'>\! sol' <sol, do>} |
	\tuplet 3/2 {fa' <fa, do'>\f fa' <sol, do> mi' <sol, do> red' <la si> red 
		<sold, si> <mi' sold> <sold, si>} |
	\tuplet 3/2 {<mi' sol!>\> <sol,! do> <mi' sol> <sol, do> <mi' sol> <sol, do>\!
		<mi' sol> do <mi sol> re <fa sol> do} |
% J
	\tuplet 3/2 {r8 mi sol mi sol mi r\< mi sol <mi do'> sol <fa re'>} |
	\tuplet 3/2 {r8\f\> solb do <solb mib'> do <solb mib'> r mib solb <mib do'>\! solb <mib do'>} |
	\tuplet 3/2 {r8 re fa re fa re r\< re fa <re sib'> fa <mib do'>} |
	\tuplet 3/2 {r8\f\> mi lad <mi dod'> lad <mi dod'> 
		r dod mi <dod lad'>\! mi <dod lad'>} |
	\tuplet 3/2 {r8 sid red sid red sid r\< sid red <sid sold'> red <dod lad'>} |
	\tuplet 3/2 {r8\> re sold <re si'> sold <re si'> r si re <si sold'>\! re <si sold'>} |
	\tuplet 3/2 {r8 lad dod lad dod lad r\< lad dod <lad fad'> dod <si sold'>} |
	\tuplet 3/2 {r8\> do fad <do la'> fad <do la'> r la do <la fad'>\! do <la fad'>} |
	\tuplet 3/2 {r8 sold si sold si sold r sold si <sold mi'> si <la fad'> } |
% K
	\tuplet 3/2 {r8 sib <mi sol> <mi sol> sib <mi sol>
		r lab,! <si fa'> <si fa'> lab <si fa'> } |
	\tuplet 3/2 {r8 sol <do mi> <do mi> sol <sib mi> r fa <lab fa'> <lab fa'> fa <dob' fa>} |
	\tuplet 3/2 {r8 lab <sib fa'> <sib fad'> lab <sib fad'> r sol <sib sol'> <sib sol'> sol <reb'! sol>} |
	\tuplet 3/2 {r8 sib <do sol'> r lab <do lab'> r do <fa la> r sib, <fa' sib>} |
	\tuplet 3/2 {r8 la, <mib' fa>} <mib fa>8 r \tuplet 3/2 {r8 sib <reb fa>} <reb fa>8 r |
	\tuplet 3/2 {r8 do <mib fa>} <mib fa>8 r <sib reb fa>4-. <sib reb>-. |
% L
	<sol do>4-. r r re'8-. r16 re-. |
	<<{r4 do'8-. r16 do-. reb4( <do mi>8)-. r16 mi-. s8}\\{mib,2\< mi\> <fa lab do fa>8-.\pp}>> 
	r16 <lab, do> <lab do>8-. r \tuplet 3/2 {r8 lab( fa'}
		\tuplet 3/2 {reb lab' fa)} |
	<re lab' re>8 r r4 \tuplet 3/2 {r8 mib( sib'} \tuplet 3/2 {sol mib' sib)} |
	<sib solb' sib>8-. r16 <sib solb' sib>-. <sib solb' sib>8-. r
		\tuplet 3/2 {r8 sib,( fa'} \tuplet 3/2 {re sib' fa)} |
	<fa si fa'>8 r r4 \tuplet 3/2 {r8 mib( do'} \tuplet 3/2 {lab mib' do)} |
	<mi, sib' mi>8-. r16 <mi sib' mi>-. <mi sib' mi>8-. r
		\tuplet 3/2 {r8 mib( do'} \tuplet 3/2 {lab mib' do)} |
	<mi, sib' mi>8-. r16 <mi sib' mi>-. <mi sib' mi>8-. r
		\tuplet 3/2 {r8 do( la'} \tuplet 3/2 {fa do' la)} |
	<reb, fa reb'>8-. r16 <reb fa reb'>-. <reb fa reb'>8-. r
		\tuplet 3/2 {r8 do( solb'} \tuplet 3/2 {mib sib' solb)} |
% M
	<do, fa la>8-. r16 <do fa la> <do fa la>8-. r r4 sib'8.(^\markup{\italic dolce} do16 |
	reb4 fa,8) r r2 |
	r2 r4 \stemUp sib8.( do16 |
	reb4 fa,8) r r2 |
	r2 r4 \stemUp sib8.( do16 |
	reb4 fa,8) r << { \dynamicUp r4 reb'8.(\< mib16 |
		fa4 mib8. reb16 do4\! lab8. sol16 |
		fa2\> ~ <sib, fa'> |
		\slurNeutral <fa' sol>\!~)( <mi sol>8) do16\rest do_\markup{\italic sempre \dynamic p} do8 do16\rest do16 | }
	\\ {	s2 |
		s1 |
		fa4 s4 s2 |
		s1 }
	>>
% N
	\slurUp do2( reb |
	<sib re>~ <sib mib>) |
	s1*8
	
}

pianoGauche = \relative do {
	\global
	\clef bass
	<fa lab>1~ |
	<fa lab>~ |
	<fa lab> |
	<fab lab>2 <mib sol> |
	<< { 	sib'1( |
		<lab si>2 <lab do> |
		<sib do> <lab do> |
		<sib do> <la reb> |
		sib \change Staff = upper \stemDown <sib solb'> |
		<la fa'> <sib fa'>) | }
	\\ { 	<mib, solb>2 <re fa> |
		<reb fa> <lab mib'> |
		<sol mi'> <lab mib'> |
		<solb mi'> <fa mib'> |
		<solb reb'> <mib do'> |
		<fa do'> <sib reb> }
	>>
	<< {	<sib' reb fa>2 <lab sib reb fa> |
		<solb sib reb mi> <fa sib reb fa> |
		<sib reb fa>2 <lab sib reb fa> |
		<solb sib reb mi> <fa sib reb fa> |
		<sib reb fa>1 |
		<sol sib reb fa>2~ <lab do fa> |
		s4 do8. lab16 sol4 lab8. sib16 |
		s1 }
	\\ {	s1 |
		r2 <sib,, sib'>8 r r4 |
		s1 |
		r2 <sib sib'>8 r r4 |
		sib''2 lab |
		s1 |
		<lab, fa'>2 reb |
		<re si'>( <do do'>4) r |}
	>>
% B
	<< { 	<fa, fa'>1 \stemDown |
		<fab fab'>2 <mib mib'>~ |
		<mib mib'> <re re'> |
		<reb reb'> \stemUp <lab lab'> |
		<sol sol'> \acciaccatura lab8 \stemDown lab'2 |
		\stemUp <solb, solb'> \acciaccatura fa8 \stemDown fa'2 |
		\stemUp <sib, sib'> \acciaccatura reb8 \stemDown reb'2 |
		}
	\\ { 	s1 |
		\stemUp sib8^. sib16\rest sib^. sib8^. sib\rest s2 |
		<solb' sib>8^. solb16\rest <solb sib>^. <solb sib>8^. sol\rest sol2\rest |
		lab,8^. la16\rest lab^. lab8^. la\rest s2 |
		s2 do8^. do16\rest do^. do8^. do\rest |
		s2 do8^. do16\rest do^. do8^. do\rest |
		s2 fa8^. fa16\rest fa^. fa8^. fa\rest | }
	>>
% C
	\stemDown <do, do'>2 fa4 r |
	fa'( solb sol lab) |
	<la do>( <sib reb> <si re> <do mib> |
	<reb fa>) <sib,, sib'> <dob dob'> <mib mib'> |
	<reb reb'>2 <solb, solb'>4 r |
	sib''4( si do dod) |
	\clef treble \stemNeutral <re fa>( <mib solb> <mi sol> <fa lab> |
	<solb sib>) \clef bass <mib,, mib'> <fab fab'> <lab lab'> |
	<solb solb'>2 <dob, dob'>4 r |
	\clef treble mib''4( mi fa fad) |
% D
	<sol sib>( <lab dob> <la do> <sib reb>) |
	\clef bass <lab,,, lab'>4..-> <sib sib'>16 <dob dob'>4..-> <reb reb'>16 |
	<re re'>4->~ re'16 mi fad sold la si do re mi8 r |
	<la,,, la'>4..-> <si si'>16 <do do'>4..-> <re re'>16 |
	<mib! mib'!>4->~ mib'16 fa sol la sib do reb mib fa8 r |
	<sib,,, sib'>4..-> <do do'>16 <reb reb'>4..-> <mib mib'>16 |
	<fab fab'>4->~ fab'16 solb lab sib dob reb mibb fab solb8 r |
	<si,,, si'>4..-> <dod dod'>16 <re re'>4..-> <mi mi'>16 |
	<fa fa'>4->~ fa'16 sol la si do re mib fa sol8 r |
% E
	<do,,, do'>4..-> <mib mib'>16 <sol sol'>4..-> <do do'>16 |
	<sib sib'>4..-> <do do'>16 <reb reb'>4..-> <sib sib'>16 |
	<la la'>4..-> <sib sib'>16 <do do'>4..-> <la la'>16 |
	<lab! lab'!>4..-> <sib sib'>16 <do do'>4..-> <lab lab'>16 |
	<sol sol'>8. <do' mib>16 <do mib>8-> r <sol,, sol'>8. <sib'' dod mi>16
		<sib dod mi>8-> r |
	<sol, sol'>8. <si' re fa>16 \tuplet 3/2 {<si re fa>8-> do-. si-.}
		\tuplet 3/2 {sib-. la-. sib-.} \tuplet 3/2 {la-. lab-. sol-.} |
% F
	<do,, do'>4-> <do'' mib>-> <sib do mib sol>-> <sol sib do mib>-> |
	<do,, do'>-> <lab'' do re>-> <sol do mib sol>2-> |
	<do,, do'>4-> \clef treble <mib'' lab do>-> <re mib lab>-> <do mib lab>-> |
	\clef bass <do,, do'>-> \clef treble <sib'' do mib>-> <do mib lab do>2-> |
	\clef bass <re,, re'>4-> <re' lab' dob>-> \clef treble <sib' fa' lab sib>2-> |
	\clef bass <mib,, mib'>4-> <mib' lab dob>-> \clef treble <sib' mib lab sib>2-> |
	<< {\clef bass <fa, fa'>4-> <re'' lab'>2-> <dob re! lab'>4-> } \\
		{s4 reb!( do) s4} >> |
	<sol, sol'>4->-> <lab' sib mib>-> <sol sib mib sol>2-> |
% G
	<< {<mi, mi'>4_> <mi' reb'> <sol, sol'>_> <sol' mi'>} \\ 
		{s4 lab8.( la16) s4 sib8.( do16)} >> |
	<lab, lab'>4-> <lab' reb fa>-> <lab do fa>-> <lab, lab'>-> |
	<< {<fad fad'>4_> <fad' mib'> <la, la'>_> <lad' fad'>} \\ 
		{s4 sib8.( si16) s4 dod8.( re16)} >> |
	<sib, sib'>4-> <sib' mib sol>-> <sib re sol>-> <sib, sib'>-> |
	<< {<si si'>4_> <si' lab'> <re, re'>_> \clef treble <re'! si'> \clef bass} \\ 
		{s4 mib8.( mi16) s4 sol8.( lab16)} >> |
	<< {s4 fa8. mib16 re4 do} \\ {<mib,, mib'>4-> <sol' do> <mib sol>2}>> |
% H
	<fa, do' fa>4..( <sol do sol'>16) <lab do lab'>2 |
	<sol sol'>4 <mib' sol do>8. <mib sol do>16 <re sol si>4 r |
	<do, sol' do>2 <mi do' mi> |
	<fa do' fa>2. <mi' sol do>4 |
	<re la' re>2 <la re fad> |
	<sol re' sol>2. <fa' lab! sib! re>4 |
	<mib sol sib mib>2 <re sol si> |
	<do sol' do>2. \acciaccatura la8 <la re fad do'>4 |
	\acciaccatura sol8 <sol mi' do'>2 <sol sol'>4 <sol fa'> |
	<do, do'>2 <si si'> |
% I
	<la la'> <si si'> |
	<mi mi'>2. <re re'>4 |
	<do do'>2 <re re'>2 |
	<sol sol'>2. <fa fa'>4 |
	<mi mi'> <re re'> <do do'> <sib! sib'!> |
	<la la'> <sol sol'> <fad fad'> <mi mi'>~ |
	<mi mi'>4. do'8 <sol sol'>2 |
% J
	<do' do'>4.. <si si'>16 <sib sib'>4.. <la la'>16 |
	<lab lab'>2. <la la'>4 |
	<sib sib'>4.. <la la'>16 <lab lab'>4.. <sol sol'>16 |
	<fad fad'>2. <fadd fadd'>4 |
	<sold sold'>4.. <sol sol'>16 <fad fad'>4.. <fa fa'>16 |
	<mi mi'>2. <mid mid'>4 |
	<fad fad'>4.. <mid mid'>16 <mi mi'>4.. <mib mib'>16 |
	<re re'>2. <red red'>4 |
	<mi mi'>4.. <mib mib'>16 <re re'>4.. <reb reb'>16 |
% K
	<do do'>1^\markup{\dynamic p \italic sempre} |
	<do do'>2 <reb reb'> |
	<re re'> <mib mib'> |
	<mi mi'>4-. <fa fa'>-. <mib mib'>-. <reb! reb'!>-. |
	<do do'>-. r <sib sib'>-. r |
	<la la'>-. r <sib sib'>-. <sib' fa'>-. |
% L
	<do mi>4-. do'8-. r16 do-. <sib reb>2 |
	<lab do> <do, sol' sib> |
	<< { 	<fa, fa'>1 \stemDown |
		<fab fab'>2 <mib mib'>~ |
		<mib mib'> <re re'> |
		<reb reb'> \stemUp <lab lab'> |
		<sol sol'> \acciaccatura lab8 \stemDown lab'2 |
		\stemUp <solb, solb'> \acciaccatura fa8 \stemDown fa'2 |
		\stemUp <sib, sib'> \stemDown mib2 |
		}
	\\ { 	s1 |
		\stemUp sib'8^. sib16\rest sib^. sib8^. sib\rest s2 |
		<solb' sib>8^. solb16\rest <solb sib>^. <solb sib>8^. sol\rest sol2\rest |
		lab,8^. la16\rest lab^. lab8^. la\rest s2 |
		s2 do8^. do16\rest do^. do8^. do\rest |
		s2 do8^. do16\rest do^. do8^. do\rest |
		s2 sib8^. sib16\rest sib^. sib8^. sib\rest | }
	>>
% M
	fa2 <sib, sib'> |
	<< {	<sib'' reb fa>2 <lab sib reb fa> |
		<solb sib reb mi> <fa sib reb fa> |
		<sib reb fa>2 <lab sib reb fa> |
		<solb sib reb mi> <fa sib reb fa> |
		<sib reb fa>1 |
		<sol sib reb fa>2~ <lab do fa> |
		s4 do8. lab16 sol4 lab8. sib16 |
		s1 }
	\\ {	s1 |
		r2 <sib,, sib'>8 r r4 |
		s1 |
		r2 <sib sib'>8 r r4 |
		sib''2 lab |
		s1 |
		<lab, fa'>2 reb |
		<re si'>( <do do'>8) r r4 |}
	>>
% N
	<fa lab>1 |
	<fab lab>2 <mib sol> |
	<< { 	sib'2( sib) |
		<lab si>2( <lab do> |
		<sib do> <lab do>) |
		<sib do>( <la reb> |
		<lab reb fa> <sol sib fa'> |
		<sol mi'> <fa fa'>~) | 
		<fa fa'>1~ |
		<fa fa'> | }
	\\ { 	<mib solb>2 <re fa> |
		<reb fa> <lab mib'> |
		<sol mi'> <lab mib'> |
		<solb mi'> <fa mib'>~ |
		fa reb' |
		do fa, |
		<lab, lab'>4-. r <sib sib'>-. r |
		r <do do'>-. <fa, fa'>-. r | }
	>>
}

\score {<<
	\context ChoirStaff \with {
		\override StaffGrouper.
			staffgroup-staff-spacing.minimum-distance = #18
	} <<
		\context Staff = "soprano" << 
			\set Staff.instrumentName = "Sop   " \soprano>>
		\addlyrics {\paroles }
						
		\context Staff = "alto" << 
			\set Staff.instrumentName = "Alt   " \alto >>
		\addlyrics {\parolea }
		
		\context Staff = "tenor" << 
			\set Staff.instrumentName = "Ten   " \tenor >>
		\addlyrics {\parolet }
		
		\context Staff = "basse" << 
			\set Staff.instrumentName = "Bas   " \basse >>
		\addlyrics {\paroleb }
	>>
		\context PianoStaff = "piano" <<
			\override PianoStaff.InstrumentName.space-alist = #'((left-edge extra-space . 3.0))
			\set PianoStaff.instrumentName = "Piano   "
			\context Staff = upper \pianoDroite
			\context Staff = lower \pianoGauche
		>>
	>>
	\layout {}

	\midi {
		\tempo 4 = 138
	}


}

\paper {
	top-margin = 2\cm
	bottom-margin = 2\cm
	left-margin = 2.0\cm
	line-width = 17.0\cm
}


	
	
