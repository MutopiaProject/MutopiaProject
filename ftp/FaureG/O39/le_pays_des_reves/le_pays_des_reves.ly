\version "2.14.2"
\language "italiano" % So we can use "do re mi…"

\header{
	title="Le pays des rêves"
	composer="Gabriel Fauré"
	poet="Armand Silvestre"
	opus="Op. 39, №3"
	mutopiatitle="Le pays des rêves"
	mutopiacomposer="FaureG"
	mutopiapoet="Armand Silvestre (1837-1901)"
	mutopiaopus="Op. 39, №3"
	mutopiainstrument="Voice and Piano"
	date="1884"
	source="J. Hamelle, 1885 (IMSLP)"
	style="Romantic"
	copyright="Public Domain"
	maintainer="Calixte Faure"
	maintainerEmail="calixte.faure (at) gmail.com"

 footer = "Mutopia-2012/02/12-1831"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

md = {\change Staff = "md"}
mg = {\change Staff = "mg"}

global={
	\key solb \major
	\tempo \markup {"Andante quasi allegro"} 4 = 84
	\mergeDifferentlyDottedOn
	}

chant=\relative do''{
	\autoBeamOff
	\dynamicUp
	\time 12/8 R1. | r2. r4 r8 r4 sib8\p |
	reb4.~ reb4 reb8 reb4 lab8 fa8[(solb]) lab8 |
	sib4 sib8 mib4 reb8 dob4 lab8 fab lab dob |
% mesure 5
	reb1. |
	\time 6/8 r2. |
	\time 12/8 r8 r sib\p reb4.~ reb8 reb lab fa solb lab |
	sib4 sib8 mib4.~ mib8 dob lab fab lab dob |
	reb2. reb~ |
% mesure 10
	\time 6/8 reb4 r8 r4 reb8\mf |
	\time 12/8 fa4.~ fa4 reb8 do4 la8 fa!([sol)] la | sib2. la |
	fa4\> sol8 la4 si8 dod4. dod4 dod8 | reb!1.\p |
% mesure 15
	r2. r4 r8 sib4\mf reb8 |
	reb2. reb4 lab8 fa[(solb]) lab |
	sib4 sib8 mib4 reb8 dob4 lab8 fab lab dob | reb1. |
	\time 6/8 r2. |
% mesure 20
	\time 12/8 r4 sib8 sib4 reb8 reb4 lab8 fa[(solb]) lab |
	sib4 sib8 mib8 reb mib dob4(lab8) fab[(lab]) dob8 | 
	reb1. |
	\time 6/8 reb4 r8 r4 r8 |
	\time 12/8 reb4\mf fa8 reb4. do4 la8 fa8[(sol]) la8 |
% mesure 25
	sib2. la | fa4 sol8 la4 si8 dod4. dod4 dod8 |
	reb!1.~|reb2.~ reb4. r4 r8 | R1. |
% mesure 30
	\time 4/4 sol,8\p sol lab sib dob4 sib8 dob |
	reb2\< reb4 reb8 reb\! |
	mib[(\> reb]) dob sibb lab4 fab8[(solb])\!
	\time 12/8 lab2.~ lab4 r8 lab4\p lab8 |
	dob4. lab lab reb4 lab8 |
% mesure 35
	lab4. lab4 lab8 fab'4.~\< fab4 mib8\! |
	\time 4/4 mib8([\> reb]) dob lab solb2\! |
	lab2~ lab4 r |
	red,8\< red mi fad sol4 fad8 sol8\! |
	la2 la4 la8 la | 
% mesure 40
	si[(la]) sol[(fa]) mi4 do8 re |
	\time12/8 mi1.~ | mi2. r | r r4 r8 r r fab\p |
	fab4.~ fab4\< fab8 fab4 fab8 solb4 lab8\! |
% mesure 45	
	sib2.\> lab\! |
	fab4 solb8 lab4. fab4 fab8 solb4 lab8 | sib1.\< |
	sib4\! sib8 mib4 reb8 dob4(lab8) fab[lab] dob | reb1. |
% mesure 50
	\time 6/8 R2. |
	\time12/8 sib4 sib8 mib4 reb8 dob4(lab8) fab[lab] dob | reb1. |
	\time6/8 reb4. r8 r reb\mf
	\time 12/8 fa4.~ fa4 reb8 do4 la8 fa([sol)] la |
% mesure 55
	sib2. la | fa4\> sol8 la4 si8 dod4. reb!4 reb8\! |
	reb1.~ | reb2.~ reb4. r4 r8 | R1. |
% mesure 60
	r4. r2. \bar"|."
}

pianoHaut=\relative do''{
	\time 12/8 r4 r8
	<reb solb sib reb>\arpeggio r r r4 r8
	<reb fa sib reb>\arpeggio r r | r4 r8
	<reb solb sib reb>\arpeggio r8 r r4 r8
	<reb fa sib reb>\arpeggio r8 r r4 r8
	<reb solb sib reb>\arpeggio r8 r r4 r8
	<reb fa lab reb>\arpeggio r8 r r4 r8
	<reb mib sib' reb>\arpeggio r8 r r4 r8
	<reb fab dob' reb>\arpeggio r8 r r4 r8
	<reb fa! dob' reb>\arpeggio r8 r r4 r8
	<reb fa sib reb>\arpeggio r8 r 
	\time 6/8
% mesure 6
	r4 r8 \clef bass
	<reb,, reb,>\arpeggio
	r8 r \clef treble \time 12/8 r4 r8
	<reb'' solb sib reb>\arpeggio r8 r r4 r8
	<reb fa lab reb>\arpeggio r8 r r4 r8
	<reb mib sib' reb>\arpeggio r8 r r4 r8
	<reb fab dob' reb>\arpeggio r8 r r4 r8
	<reb fa! dob' reb>\arpeggio r8 r r4 r8
	<reb fa sib reb>\arpeggio r8 r
	\time 6/8
% mesure 10
	r4 r8 \clef bass
	<reb,, reb,>\arpeggio
	r8 r8 |
	\clef treble \time 12/8 r4 r8
	<reb'' fa sib reb>\arpeggio r8 r r4 r8 
	<do fa la do>\arpeggio r8 r |
	r4 r8 <do fa sib do>\arpeggio r8 r 
	r4 r8 <dod mi la dod>\arpeggio r8 r |
	r4 r8 <re fa la re>\arpeggio r8 r
	r4 r8 <fa sibb reb fa>\arpeggio r8 r |
	r4 r8 <solb sib! reb solb>\arpeggio r8 r
	r4 r8 <sib, reb fa sib>\arpeggio r8 r |
% mesure 15
	r4 r8 <solb' sib reb solb>\arpeggio r8 r
	r4 r8 <sib, reb fa sib>\arpeggio r8 r |
	r4 r8 <reb solb sib reb>\arpeggio r8 r
	r4 r8 <reb fa lab reb>\arpeggio r8 r |
	r4 r8 <reb mib sib' reb>\arpeggio r8 r
	r4 r8 <reb fab dob' reb>\arpeggio r8 r |
	r4 r8 <reb fa! dob' reb>\arpeggio r8 r
	r4 r8 <reb fa sib reb>\arpeggio r8 r |
	\time 6/8 r4 r8
	\clef bass <reb,, reb,>\arpeggio r r |
	\clef treble \time 12/8
% mesure 20
	r4 r8 <reb'' solb sib reb>\arpeggio r8 r
	r4 r8 <reb fa lab reb>\arpeggio r8 r |
	r4 r8 <reb mib sib' reb>\arpeggio r8 r
	r4 r8 <reb fab dob' reb>\arpeggio r8 r |
	r4 r8 <reb fa! dob' reb>\arpeggio r8 r
	r4 r8 <reb fa sib reb>\arpeggio r8 r |
	\time 6/8 r4 r8
	\clef bass <reb,, reb,>\arpeggio r8 r8 |
	\clef treble \time 12/8
	r4 r8 <reb'' fa sib reb>\arpeggio r8 r
	r4 r8 <do fa la do>\arpeggio r8 r |
% mesure 25
	r4 r8 <do fa sib do>\arpeggio r8 r
	r4 r8 <dod mi la dod>\arpeggio r8 r |
	r4 r8 <re fa la re>\arpeggio r8 r
	r4 r8 <fa sibb reb fa>\arpeggio r8 r |
	r4 r8 \ottava #1 
	<solb sib reb solb>\arpeggio r8 r
	r4 r8 <fab dob'reb fab>\arpeggio r8 r |
	r4 r8 <solb sib reb solb>\arpeggio r8 r
	r4 r8 <lab sib reb lab'>\arpeggio r8 r |
	r4 r8 <sib reb mib sib'>\arpeggio
	\ottava #0 r8 r
	r4 r8 \voiceOne r4 r8 |
	\time 4/4 \oneVoice 
% mesure 30
	<fab, sol fab'>2\p <fab lab fab'> |
	<fab sib fab'> <mib sib' mib> |
	<mib sibb' mib>
		<<{\voiceTwo lab}
		\\
		{\voiceOne <mib mib'>4 <reb reb'>}>>
	\oneVoice	
	\time 12/8
% mesure 33
	<do lab' do>2. r2. |
	r4 r8 <dob'! mib lab dob!>\arpeggio r r
	r4 r8 <reb lab' sib reb>\arpeggio r r |
	r4 r8 <mib lab dob mib>\arpeggio r r
	r4 r8 <fab lab sib fab'>\arpeggio r r |
	\time 4/4
% mesure 36
	<dob, mib>4 <reb fab>
		<<{\voiceTwo mib2}
		\\
		{\voiceOne solb4\> dob\!}>> |
	<lab, fab' dob'>2 s2 |
	<do red do'>2 <do mi do'> |
	<do fad do'> <si fad' si> |
	<si fa'! si><si mi si'>4
		<<{<la la'>}\\{do8[re]}>>
% mesure 41
	\time 12/8
	<sol, do mi sol>2.~ q4. <do mi>\> |
	<sol do mi sol>2.\!~ q4. <do mi>\> |
	<sol do mi sol>2.\!~ q4. <si mi> |
	<<{\voiceTwo 
		fab'4 reb8 sib4 reb8 fab4 reb8 sib4 reb8 |
		mib4 dob8 reb4 mib8~ mib4 dob8 reb4 mib8 |
		fab4 reb8 sib4 reb8 fab4 reb8 sib4 reb8 |
		fab4 sib,8 reb4 fab8 lab4 reb,8 solb4 fab8 |
	}\\{\voiceOne 
		fab4.\( solb4 lab8 fab4. solb4 lab8 | sib2. lab2.\) |
		fab4\( solb8 lab4. fab solb4 lab8 | sib1.\)
	}>>
	r4 r8 <reb mib sib' reb>\arpeggio r r
	r4 r8 <reb fab dob' reb>\arpeggio r r |
	r4 r8 <reb fa! dob' reb>\arpeggio r r
	r4 r8 <reb fa sib reb>\arpeggio r r |
% mesure 50
	\time 6/8 r4 r8 
	\clef bass <reb,, reb,>\arpeggio r r |
	\clef treble \time 12/8
	r4 r8 <reb'' mib sib' reb>\arpeggio r r
	r4 r8 <reb fab dob' reb>\arpeggio r r |
	r4 r8 <reb fa! dob' reb>\arpeggio r r
	r4 r8 <reb fa sib reb>\arpeggio r r |
	\time 6/8 r4 r8
	\clef bass <reb,, reb,>\arpeggio r r |
	\clef treble \time 12/8
	r4 r8 <reb'' fa sib reb>\arpeggio r r
	r4 r8 <do fa la do>\arpeggio r r |
% mesure 55
	r4 r8 <do fa sib do>\arpeggio r r
	r4 r8 <dod mi la dod>\arpeggio r r |
	r4 r8 <re fa la re>\arpeggio r r
	r4 r8 <fa sibb reb fa>\arpeggio r r |
	r4 r8 \ottava #1
	<solb sib reb solb>\arpeggio r r
	r4 r8 <fab dob' reb fab>\arpeggio r r |
	r4 r8 <solb sib reb solb>\arpeggio r r
	r4 r8 <lab sib reb lab'>\arpeggio r r |
	r4 r8 <sib reb mib sib'>\arpeggio r r
	r4 r8 <reb lab' dob reb>\arpeggio r r |
% mesure 60
	<reb solb sib reb>\arpeggio\fermata
	\ottava #0
	 r r r2. \bar"|."
}

pianoBas=\relative do''{
	\clef bass
	\time 12/8
	\clef treble
	solb4_\( reb8 sib4 reb8 fa4 reb8 sib4 reb8 | 
	solb4 reb8 sib4 reb8 fa4 reb8 sib4 reb8 | 
	solb4 reb8 sib4 reb8 fa4 reb8 lab4 reb8 | 
	mib4 reb8 sol,4 reb'8 fab4 reb8 lab4 reb8 |
% mesure 5
	fa!4 reb8 lab4 reb8 fa4 reb8 sib4 reb8 |
	\time 6/8 fa4 reb8 dob4\sustainOn reb8\sustainOff |
	\time 12/8 solb4 reb8 sib4 reb8 fa4 reb8 lab4 reb8 |
	mib4 reb8 sol,4 reb'8 fab4 reb8 lab4 reb8 |
	fa!4 reb8 lab4 reb8 fa4 reb8 sib4 reb8 |
% mesure 10
	\time 6/8 fa4 reb8 dob4\sustainOn reb8\sustainOff |
	\time 12/8 fa4 reb8 sib4 reb8 fa4 do8 la4 do8 |
	fa4 sib,8 sol4 sib8 mi4 la,8 sol4 la8 |
	\clef bass re4 la8 fa4 la8 reb4 sibb8 reb,4 sibb'8 |
	sib!4 reb,8 solb,4 reb'8 reb'4 fa,8 sib,4 fa'8 |
% mesure 15
	sib4 reb,8 solb,4 reb'8 reb'4 fa,8 sib,4 fa'8 |
	\clef treble solb'4 reb8 sib4 reb8 fa4 reb8 lab4 reb8 |
	mib4 reb8 sol,4 reb'8 fab4 reb8 lab4 reb8 |
	fa!4 reb8 lab4 reb8 fa4 reb8 sib4 reb8 |
	\time 6/8 fa4 reb8 dob4\sustainOn reb8\sustainOff |
% mesure 20
	\time 12/8 solb4 reb8 sib4 reb8 fa4 reb8 lab4 reb8 |
	mib4 reb8 sol4 reb8 fab4 reb8 lab4 reb8 |
	fa!4 reb8 lab4 reb8 fa4 reb8 sib4 reb8 |
	\time 6/8 fa4 reb8 dob4\sustainOn reb8\sustainOff |
	\time 12/8 fa4 reb8 sib4 reb8 fa4 do8 la4 do8 |
% mesure 25
	fa4 sib,8 sol4 sib8 mi4 la,8 sol4 la8 |
	\clef bass re4 la8 fa4 la8 reb4 sibb8 reb,4 sibb'8 |
	sib!4\sustainOn reb,8 solb,4 reb'8\sustainOff
	dob'4\sustainOn reb,8 lab4 reb8\sustainOff |
	sib'4\sustainOn reb,8 solb,4 reb'8\sustainOff
	lab'4\sustainOn reb,8 fab,4 reb'8\sustainOff |
	sol4\sustainOn reb8 mib,4 reb'8\sustainOff sol4 sib8
	\md \voiceTwo reb4 mib8\) | \mg \oneVoice
% mesure 30
	\time 4/4
	<sib reb>2 <lab dob> |
	<lab sib> <sol sib> |
	<dob, solb' dob> <fab lab> |
	\time 12/8
	<lab, mib' lab>4
	do'8\( mib4 do8 lab4 dob8 mib4 dob8 |
	solb4 lab8 dob4 lab8 fab4 lab8 sib4 lab8 |
% mesure 35
	mib4 lab8 dob4 lab8 reb,4 lab'8 sib4 lab8\)~ |
	\time 4/4
	<lab dob,>2 <sibb dob,> |
	\times2/3{fab,4_\( dob'8} \times2/3{lab'4 dob8}
	\md
	\times2/3{mib4 fab8} \times2/3{lab4 dob8\)}
	\mg
	<fad,, la>2 <mi sol> |
	<mi fad> <red fad> |
% mesure 40
	<sol, fa'!> <<{mi'4 fa}\\{do2}>>
	\time 12/8
	do,4\( sol'8 do4 re8 mi4 sol8 <fa la>4.\) |
	do,4\( sol'8 do4 re8 mi4 sol8 <fa la>4.\) |
	do,4\( sol'8 do4 re8 mi4 fa8 <mi sol>4.\) |
	<reb sib'>4\( solb!8 reb4 solb8 sib4 solb8 reb4 solb8 |
% mesure 45
	dob4 solb8 reb4 solb8 dob4 fa,!8 reb4 fa8 |
	sib4 solb8 reb4 solb8 sib4 solb8 reb4 solb8 |
	lab4 reb,8 fab4 lab8 sib4 fab8 sib4 reb8\) |
	<sol, mib'>4\( reb'8 sol,!4 reb'8 \clef treble
	fab4 reb8 lab4 reb8 |
	fa!4 reb8 lab4 reb8 fa4 reb8 sib4 reb8 |
% mesure 50
	\time 6/8 fa4 reb8 dob4\sustainOn reb8\sustainOff\) |
	\time 12/8 mib4\( reb8 sol,4 reb'8 fab4 reb8 lab4 reb8 |
	fa!4 reb8 lab4 reb8 fa4 reb8 sib4 reb8 |
	\time 6/8 fa4 reb8 dob4\sustainOn reb8\sustainOff\) |
	\time 12/8 fa4\( reb8 sib4 reb8 fa4 do8 la4 do8 |
% mesure 55
	fa4 sib,8 sol4 sib8 mi4 la,8 sol4 la8 |
	\clef bass re4 la8 fa4 la8 reb4 sibb8 reb,4 sibb'8 |
	sib!4\sustainOn reb,8 solb,4 reb'8\sustainOff
	dob'4\sustainOn reb,8 lab4 reb8\sustainOff |
	sib'4\sustainOn reb,8 solb,4 reb'8\sustainOff
	lab'4\sustainOn reb,8 fab,4 reb'8\sustainOff |
	solb4\sustainOn reb8 mib,4 reb'8\sustainOff
	fa4\sustainOn reb8 reb,4 reb'8\sustainOff |
% mesure 60
	<solb, reb' solb sib>\)\arpeggio\fermata\sustainOn
	r8 r r2.\sustainOff \bar"|."
}

paroles=\lyricmode{
	Veux- tu qu’au beau pa -- ys des rê -- ves
	Nous al -- lions la main dans la main_?
	Plus loin que l’o -- deur des jas -- mins,
	Plus haut que la plain -- te des grè -- ves

	Veux- tu du beau pa -- ys des rê -- ves
	Tous les deux cher -- cher le che -- min_?
	J’ai tail -- lé dans l’a -- zur les toi -- les
	Du vais -- seau qui nous por -- te -- ra,
	
	Et dou -- ce -- ment nous con -- dui -- ra
	Jus -- qu’au ver -- ger d’or des é -- toi -- les
	J’ai tail -- lé dans l’a -- zur les toi -- les
	Du vais -- seau qui nous con -- dui -- ra.

	Mais com -- bien la ter -- re_est loin -- tai -- ne,
	Que pour -- sui -- vent ses blancs sil -- lons,
	Au ca -- pri -- ce des pa -- pil -- lons
	De -- man -- dons la rou -- te_in -- cer -- tai -- ne.

	Ah, com -- bien la ter -- re_est loin -- tai -- ne
	Où fleu -- ris -- sent nos vi -- si -- ons_!
	Vois- tu_: le beau pa -- ys des rê -- ves
	Est trop haut pour les pas hu -- mains.

	Res -- pi -- rons à deux les jas -- mins,
	Et chan -- tons en -- cor sur les grè -- ves
	Vois -- tu_: du beau pa -- ys des rê -- ves
	L’a -- mour seul en sait les che -- mins.
}

\score{<<
	\new Staff{\new Voice{\global \chant}
			\addlyrics \paroles
	}
	\new PianoStaff{<<
		\new Staff= "md"{\global \pianoHaut}
		\new Staff= "mg"{\global \pianoBas}
>>}
>>
\layout{}
\midi{}
}

\paper{
		topmargin = 1.0\cm
		bottommargin = 1.5\cm
		leftmargin = 2.5\cm
		linewidth = 16.0\cm
		raggedbottom = ##t
		footsep = 1.0\cm
}
