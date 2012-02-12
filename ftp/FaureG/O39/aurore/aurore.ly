\language "italiano"
\version "2.14.2"

\header{
	title="Aurore"
	poet="Armand Silvestre"
	composer="Gabriel Fauré"
	opus="Op. 39, №1"

	mutopiatitle="Aurore"
	mutopiacomposer="FaureG"
	mutopiapoet="Armand Silvestre (1837-1901)"
	mutopiaopus="Op. 39, №1"
	mutopiainstrument="Voice and Piano"
	date="1884"
	source="J. Hamelle, 1885 (IMSLP)"
	style="Romantic"
	copyright="Public Domain"
	maintainer="Calixte Faure"
	maintainerEmail="calixte.faure (at) gmail.com"

 footer = "Mutopia-2012/02/12-1829"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global={
	\key fa \major
	\time 4/4
	\tempo "Andante" 4=76
	\override DynamicTextSpanner #'dash-period = #-1.0
	}

chant=\relative do''{
	\autoBeamOff
	\dynamicUp
	R1 |
	r4 la8^\markup{\italic dolce}\( fa do4 re8 mi |
	fa4. sol8 la do re sib | la4(sol) fa~ fa8\) r |
%Abeilles
	r4 r8 la8\( re, mi fa la |
	re, fa la do si la sol4~ |
	sol4 ~ sol8\) r r4 r8 do8\( |
%Et l'aube
	do4.^\markup{\italic{poco a poco cresc.}} re8 sib4. fa8 |
	sol4 la8 sib mib4 re8 la8 |
	\time 2/4
	do2\<
	\time 4/4
	do8\!\) r fa4\f\( mi8 re do la | sol sol la\> do, do4 re8[(mi]) |
	\time 3/4
	do2. ~ | do4\!\) r r |
	\key fa \minor
	R2.
%Du jardin
	lab'8\p\( fa do4 fa8 lab | sib2 sib4 | lab8 fa do4 fa8[(lab]) |
	do2\< do8\) do\!\( | reb4. sibb8 lab solb | fab2\) fab8\( solb |
	lab2\> la8 sol!\! | fa2~ fa8\) r |
%Comme
	lab4\( fa8 do fa lab | sol2 ~ sol8 sol | fa\cresc sol lab4. do8 |
	si4 si8\!\) r si4\(^\markup{ \dynamic f \italic express.} |
	do4. lab8 sol fa | mib2 mib8 fa | solb2\> lab8 sib\!
	\key fa \major do2.\< ~ do2\!\) lab4\f\( |
%Ils volent
	do,8 do re mi fa4 | sol la8 do re sib |
	\time 4/4
	la4(sol)\) fa4~ fa8 r |
%Exilés
	r4 r8 la\(^\markup{\italic meno \dynamic f} re, mi fa la |
	re, fa la do si la sol4~ | sol ~ sol8\) r r2 |
%Et cherchant
	do4.\(^\markup{\italic{poco a poco cresc.}} re8 sib4 la8 fa |
	sol4. la8 sib mib re la | \time 2/4
	do2\> | \time 4/4
	do4\! fa^\markup{\dynamic p \italic{poco rit.}} mi8 re do la |
	sol4 la8\> do, do4 re8 mi\! \time3/4
	fa2.\p\)~ | fa4 r r | R2.*2 \bar"|."
}

paroles=\lyricmode{
	Des jar -- dins de la nuit s’en -- vo -- lent les é -- toi -- les,
	A -- beil -- les d’or qu’at -- tire un in -- vi -- si -- ble miel_;
	Et l’au -- be,_au loin, ten -- dant la can -- deur de ses toi -- les,
	tra -- me de fils d’ar -- gent le man -- teau bleu du ciel.

	Du jar -- din de mon cœur qu’un rê -- ve lent en -- i -- vre,
	S’en -- vo -- lent mes dé -- sirs sur les pas du ma -- tin,
	Com -- me_un es -- saim lé -- ger qu’à l’ho -- ri -- zon de cui -- vre,
	ap -- pel -- le_un chant pain -- tif, é -- ter -- nel et loin -- tain.

	Ils vo -- lent à tes pieds, as -- tres chas -- sés des nu -- es,
	Ex -- i -- lés du ciel d’or où fleu -- rit ta beau -- té.
	Et, cher -- chant jus -- qu’à toi des rou -- tes in -- con -- nu -- es,
	Mê -- lent au jour nais -- sant leur mou -- ran -- te clar -- té
}

pianoHaut=\relative do'{
	r4 <fa la>-.\pp\( <fa sib>-. <fa la>-. |
	<fa sib>-. <fa la>-. <fa sib>-. <fa sol>-. |
	<fa la>-. <fa sol sib>-. <fa la do>-. <fa sib re>-.\) |
	<mi la mi'> <sol do mi> <fa do' fa> <do sol' do> |
%mesure 5
	<do fa do'> <mi la> <re sol> <fa do'> |
	<re sol> <fa do'> <si, mi sol> < re sol si> |
	<do sol' do>\> <re sol re'> <mi do' mi> <fa do' fa>\! |
	<sol do sol'>-\markup{\italic{poco a poco cresc.}} <la do la'> <sib sib'> <la la'> |
	<sol sol'> <fa la fa'> <mib sol mib'> <re fa re'>
%mesure 10
	\time 2/4 <do mi! do'>\< <do fa> |
	\time 4/4 <sib do sol'> <la do la'>\f <sib fa' sib> <do fa do'> |
	<re sol re'>\> <mi la mi'> <fa do' la'>\arpeggio <sol do sol'> |
	\time 3/4 <fa do' fa>\p

	\voiceOne
	sol16 la do la  fa la do la |
	fa la do la  sol la do la fa la do la |
%mesure 15
	\key fa \minor
	fa lab do lab  sol lab do lab  fa lab do lab |
	fa lab do lab  sol lab do lab  fa lab do lab |
	fa lab re lab  sol lab re lab  fa lab reb lab |
	fa lab do lab  sol lab do lab  fa lab do lab |
	fa\< sibb mib sibb  lab sibb mib sibb  solb sibb mib sibb\! |
%mesure 20
	solb sibb fab' sibb,  fab sibb reb sibb  mib, sibb' reb sibb |
	mib, fab sibb fab  reb fab sibb fab  do mi la mi |
	do mi lab mi  reb mi lab mi do mi sib' mi, |
	do_\markup{\italic sempre \dynamic pp} fa lab fa  sol lab do lab  fa lab do lab |
	fa lab do lab sol lab do lab  fa lab do lab |
%mesure 25
	mi si' fa' si,  re, si' fa' si,  sol si fa' si, |
	sol lab do lab sol lab do lab fa lab do lab |
	mi si' fa' si, re, si' fa' si, sol lab si lab |
	fa lab do lab  mib! lab do lab  re, lab' dob lab |
	re, mib lab mib reb mib lab mib dob mib lab mib |
%mesure 30
	dob\> mib! solb mib sib reb solb reb lab do fa do\! |
	\key fa \major
	sol sib mi sib  fa sib fa' sib,
	\change Staff="bas" red, \change Staff="haut" sib' fad' sib, |
	\change Staff="bas" mi, \change Staff="haut" sib' sol' sib,
	sib do sold' do, \oneVoice r la <fa' la> la, |
	r sib <fa' sib> sib, r sol <fa' sol> sol, r la <fa' la> la, |
	r sib <fa' sib> sib, r do <fa do'> do r re <fa re'> re |
	\time 4/4
	r mi\> <la mi'> mi r mi <do' mi> mi, r fa <do' fa> fa, r do <sol' do> do, |
	r\p do <fa do'> do r mi la mi r re sol re r fa do' fa, |
	r re sol re r fa do' fa, r si, <mi sol> si r si <sol' si> si, |
	r do <sol' do> do, r re <do' re> re, r mi <do' mi> mi, r fa <do' fa> fa, |
	r_\markup{\italic{poco a poco cresc.}} sol <do sol'> sol
	r la <do la'> la r sib sib' sib, r la la' la, |
%mesure 40
	r sol sol' sol, r fa <la fa'> fa r mib <sol mib'> mib r re <fa re'> re |
	\time 2/4
	r\> do <sol' do> do, r do fa do
	\time 4/4
	r\! sib <do sol'> sib
	r_\markup{\dynamic p \italic{poco rit.}} la <do la'> la
	r sib <fa' sib> sib, r do <fa do'> do |
	r re <sol re'> re r\> mi <la mi'> mi r fa <do' fa> fa, r sol <do sol'> sol\!
	\time 3/4
	r\p^\markup{\italic{a tempo}} fa <do' fa> fa, r do <sol' do> do,
	r do <fa do'> do | r do <fa do'> do r do <sol' do> do,
	r do <fa do'> do | r do <sol' do> do, r do <fa do'> do
	r do <sol' do> do, | <fa la do fa>2.\arpeggio \bar"|."
}

pianoMilieu=\relative do''{
	s1*9 s2 s1*2
	s4
	\voiceTwo sol4 fa~ | fa sol fa~
%mesure 15
	\key fa \minor fa-\markup{\dynamic pp \italic sempre} sol-> fa->~ |
	fa sol-> fa->~ | fa sol-> fa->~ | 
	fa sol-> fa->~ | fa lab-> solb-> ~ |
%mesure 20
	solb fab-> mib->~ | mib reb-> do->~ |
	do reb-> do->~ | do sol'-> fa->~ | fa sol-> fa |
%mesure 25
	mi-> re-> sol->~ | sol sol-> fa-> | mi-> re-> sol-> |
	fa-> mib!-> re->~ | re reb-> dob->~ |
%mesure 30
	dob sib-> lab-> |
	\key fa \major
	sol-> fa-> \change Staff="bas" red-> | mi
	\change Staff="haut"
	sib'->
}
pianoBas=\relative do'{
	\clef bass
	r4 <do fa,>-.\( <do sol>-. <do fa,>-. |
	<do sol>-. <do fa,>-. <do sol>-. <do sib>-. |
	<do la>-. re-. do-. <sib re>\) |
	do <sib do,> <la fa> <la do,> |
%mesure 5
	<la re,> <do mi,> <si fa> <la re,> |
	<si fa> <la re,> <sol mi> <fa sol,> |
	<mi sol,> <sol mi> <do sol> <re si> |
	<mi do sib> <fad re la> <sol re sol,> <re sib fa!> |
	<sib mib,> <sib fa re> <sib sol do,> <la fa> |
% mesure 10
	\time 2/4 <sol sib,> <re la> |
	<mi sol,> <fa do fa,> <fa do sol> <fa la,> |
	<fa sib> <do' la do,> <do la re,> <sib do,> |
	\time 3/4 <la do, fa,>\arpeggio <la, fa'>(<do la'>) |
	fa, <la fa'>(<do la'>) |
%mesure 15
	\key fa \minor fa, r r |
	R2.*7
%mesure 23
	<fa do' lab'>4\arpeggio r r |
	R2.*7
%mesure 31
	\key fa \major
	\voiceThree
	<do do'>2.^\<_~ | <do do'>4 \oneVoice r\! <fa do'>^\mf|
	<sol do> <sib do> <la do> |
	<re fa sol> <do fa la> <sib fa' sib> |
	\time 4/4
	<do la' do> <do sib'> <fa, do' la'> <do' la'> |
	<re la'> <mi do'> <fa sol si> <re la' do> |
	<fa sol si> <re la' do> <mi' sol> <sol, fa'> |
	<sol mi'> <mi sol> <sol do> <si re> |
	<sib! do mi> <la re fad> <sol re' sol> <fa sib re> |
%mesure 40
	<mib sib'> <re fa sib> <do sol' sib> <fa la> |
	\time 2/4 <sib, mi! sol> <la re> |
	\time 4/4 <sol do mi> <fa do' fa> <sol do fa> <la fa'> |
	<sib fa'> <do la' do> <re la' do> <do sib'>
	\time 3/4
	<fa, do' la'> <la fa'>(<do la'>) |
%mesure 45
	fa, <la fa'>( <do la'> | <la fa'> <do la'> <la fa'>) |
	<fa do' la'>2.\arpeggio \bar"|."
}

\score{<<
	\new Staff{
		\new Voice{\global \chant}
		\addlyrics{\paroles}
	}
	\new PianoStaff{<<
		\new Staff="haut"{<<\global \pianoHaut \pianoMilieu>>}
		\new Staff="bas"{\global \pianoBas}
	>>}
>>}

\paper{
		topmargin = 1.0\cm
		bottommargin = 1.5\cm
		leftmargin = 2.5\cm
		linewidth = 16.0\cm
		raggedbottom = ##t
		footsep = 1.0\cm
}
