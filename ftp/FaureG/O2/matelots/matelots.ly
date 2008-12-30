\version "2.6.0"
\include "catalan.ly"
#(set-global-staff-size 16)

\header {
	title = "Les Matelots"
	composer = "Gabriel Fauré"
	poet = "Théophile Gautier"
	opus = "Op.2, N°2"
	
	mutopiatitle = "Les matelots"
	mutopiacomposer = "FaureG"
	mutopiapoet = "T. Gautier (1811-1872)"
	mutopiaopus = "O 2"
	mutopiainstrument = "Voice and Piano"
	date = "ca. 1870"
	source = "Hamelle, 1879"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Ludovic Sardain"
	maintainerEmail = "ludovicsardain@hotmail.com"
	lastupdated = "2006/Jan/3"
	
	footer = "Mutopia-2006/01/03-648"
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

global = {
	\key mib \major
	\time 3/4
	
}
     
sopMusic = \relative do' {
	\dynamicUp
	R2.*2 |
	mib4\mf sol sib |
	lab8 sol sol4 fa |
	fa8 sol lab4 sib8 fa |
	sol2. |
	sol4 sib re |
	do8 sib sib4 la |
	la8 sib do4 re8 la |
	sib2 sib4 |
% 11
	sib4.^\markup{\italic{poco a poco cresc.}} sib8 la sib |
	do2 do4 |
	do4 do8 do sib do |
	reb2 reb8 reb |
	reb2 do8 reb |
	re!2.\f |
	fa,8^\markup{\italic{poco rall.}} sol lab( sib) do re |
	mib2.~^\markup{\bold{a Tempo}} |
	mib |
% 20
	R2.*2 |
	mib,4^\markup{\italic dolce} sol sib |
	lab8 sol sol4 fa |
	fa4 sol8 lab sib8 fa |
	sol2. |
	sol4 sib re |
	do8 sib sib4 la |
	la8 sib do4 re8 la |
	sib2. |
% 30
	sib8^\markup{\italic{sempre dolce}} sib sib4 la8 sib |
	do2 do4 |
	do4 do8 do sib do |
	reb2 reb4 |
	reb4. reb8 do8 reb |
	re!2. |
	fa,8(^\markup{\italic{poco rall.}} sol) lab sib do re |
	mib2.~^\markup{\bold{a Tempo}} |
	mib |
% 39
	R2.*2 |
	mib,8^\markup{\dynamic f \italic sempre} sol sib4 lab8 sol |
	sol2 fa4 |
	fa4 sol8 lab sib8 fa |
	sol2. |
	sol8 sib re4 do8 sib |
	sib2 la4 |
	la4 si8 do re8 la |
	sib2 sib4 |
% 49
	sib4.^\markup{\italic{sempre \dynamic f}} sib8 la8 sib |
	do2 do4 |
	do4 do8 do sib do |
	reb2 reb8 reb |
	reb2 do8 reb |
	re!2. |
	fa,8^\markup{\italic{poco rall.}} sol lab( sib) do re |
	mib2.~^\markup{\bold{a Tempo}} |
	mib~ |
	mib4 r r |
	R2. | \bar "|."
}

pianodroite = \relative do' {
	\global
	sib8(\p mib sol sib sol mib) |
	sib8( mib sol sib sol mib) |
	sib8( mib sol sib sol mib) |
	do( mib lab do lab mib) |
	re( lab' sib re sib lab) |
	mib( sol sib mib sib sol) |
	re( sol sib re sib sol) |
	do,( sol' sib do la sol) |
	re( fad la re la fad) |
	re( sol sib re sib sol) |
% 11
	re(_\markup{\italic{poco a poco cresc.}} sol sib re sib sol) |
	do,( sol' sib do sib sol) |
	do,( solb' lab do lab solb) |
	reb( fa lab reb lab fa ) |
	reb( fa lab reb lab fa ) |
	re!( fa lab re lab fa ) |
	re( lab' sib re sib lab) |
	mib(\f\> sol sib mib sib sol) |
	mib( sol sib mib sib sol)\! |
% 20
	sib,8(_\markup{\dynamic pp \italic sempre} mib sol sib sol mib) |
	sib8( mib sol sib sol mib) |
	sib8( mib sol sib sol mib) |
	do( mib lab do lab mib) |
	re( lab' sib re sib lab) |
	mib( sol sib mib sib sol) |
	re( sol sib re sib sol) |
	do,( sol' sib do la sol) |
	re( fad la re la fad) |
	re( sol sib re sib sol) |
% 30
	re( sol sib re sib sol) |
	do,( sol' sib do sib sol) |
	do,( solb' lab do lab solb) |
	reb( fa lab reb lab fa ) |
	reb( fa lab reb lab fa ) |
	re!( fa lab re lab fa ) |
	re( lab' sib re sib lab) |
	mib( sol sib mib sib sol) |
	mib( sol sib mib sib sol) |
% 39
	sib,8(_\markup{\italic cresc.} mib sol sib sol mib) |
	sib8( mib sol sib sol mib) |
	sib8(\mf mib sol sib sol mib) |
	do( mib lab do lab mib) |
	re( lab' sib re sib lab) |
	mib( sol sib mib sib sol) |
	re( sol sib re sib sol) |
	do,( sol' sib do la sol) |
	re( fad la re la fad) |
	re( sol sib re sib sol) |
% 49
	re( sol sib re sib sol) |
	do,( sol' sib do sib sol) |
	do,( solb' lab do lab solb) |
	reb( fa lab reb lab fa ) |
	reb( fa lab reb lab fa ) |
	re!( fa lab re lab fa ) |
	re( lab' sib re sib lab) |
	mib(\f sol sib mib sib sol) |
	mib( sol sib mib sol sib |
	<sol mib'>4) r r |
	<sol,, sib mib sol> r r |
}

pianogauche = \relative do {
	\global
	\clef bass
	mib8( sol sib mib sib sol) |
	mib8( sol sib mib sib sol) |
	mib8( sol sib mib sib sol) |
	mib( lab do mib do lab) |
	mib( sib' re fa re sib) |
	mib,( sib' mib sol mib sib) |
	mib,( sib' re sol re sib) |
	mib,( sib' do mib do la) |
	re,( la' do fad do la) |
	sol( sib re sol re sib) |
% 11
	<< {fa4-> s s |
	mi-> s s |
	mib-> s s |
	reb-> s s |
	do-> s s |
	dob-> s s |
	sib-> s s |
	mib,-> s s |
	s2. 
	} \\ { \slurUp
	fa'8( sib re sol re sib) |
	mi,( sib' do sol' do, sib) |
	mib,( lab do solb' do, lab) |
	reb,( lab' reb fa reb lab) |
	do,( lab' reb fa reb lab) |
	dob,( lab' re! fa re lab) |
	sib,( sib' re fa re sib) |
	mib,,( sib' mib sol mib sib) |
	mib,( sib' mib sol mib sib) |
	} >>
% 20
	mib8( sol sib mib sib sol) |
	mib8( sol sib mib sib sol) |
	mib8( sol sib mib sib sol) |
	mib( lab do mib do lab) |
	mib( sib' re fa re sib) |
	mib,( sib' mib sol mib sib) |
	mib,( sib' re sol re sib) |
	mib,( sib' do mib do la) |
	re,( la' do fad do la) |
	sol( sib re sol re sib) |
% 30
	<< {fa4-> s s |
	mi-> s s |
	mib-> s s |
	reb-> s s |
	do-> s s |
	dob-> s s |
	sib-> s s |
	mib,-> s s |
	s2. 
	} \\ { \slurUp
	fa'8( sib re sol re sib) |
	mi,( sib' do sol' do, sib) |
	mib,( lab do solb' do, lab) |
	reb,( lab' reb fa reb lab) |
	do,( lab' reb fa reb lab) |
	dob,( lab' re! fa re lab) |
	sib,( sib' re fa re sib) |
	mib,,( sib' mib sol mib sib) |
	mib,( sib' mib sol mib sib) |
	} >>
% 39
	mib8( sol sib mib sib sol) |
	mib8( sol sib mib sib sol) |
	mib8( sol sib mib sib sol) |
	mib( lab do mib do lab) |
	mib( sib' re fa re sib) |
	mib,( sib' mib sol mib sib) |
	mib,( sib' re sol re sib) |
	mib,( sib' do mib do la) |
	re,( la' do fad do la) |
	sol( sib re sol re sib) |
% 49
	<< {fa4-> s s |
	mi-> s s |
	mib-> s s |
	reb-> s s |
	do-> s s |
	dob-> s s |
	sib-> s s |
	mib,-> s s |
	s2. |
	s2. |
	} \\ { \slurUp
	fa'8( sib re sol re sib) |
	mi,( sib' do sol' do, sib) |
	mib,( lab do solb' do, lab) |
	reb,( lab' reb fa reb lab) |
	do,( lab' reb fa reb lab) |
	dob,( lab' re! fa re lab) |
	sib,( sib' re fa re sib) |
	mib,,( sib' mib sol mib sib) |
	mib,( sib' mib sol mib sib |
	<mib, sib'>4) r r |
	} >>
	<mib sib' mib>4 r r |
}

Words = \lyricmode {
	Sur l'eau bleue et pro -- fon -- de, Nous al -- lons vo -- ya -- geant.
	En -- vi -- ron -- nant le mon -- de D'un sil -- la -- ge d'ar -- gent.
	Des î -- les de la Son -- de, De l'Inde au ciel brû -- lé,
	Jusqu' au pô -- le ge -- lé, Jusqu' au pô -- le ge -- lé!
	
	Nous pen -- sons à la ter -- re Que nous fu -- yons tou -- jours.
	A no -- tre vieil -- le mè -- re, A nos jeu -- nes a -- mours.
	Mais la va -- gue lé -- gè -- re A -- vec son doux re -- frain,
	En -- dort no -- tre cha -- grin, En -- dort no -- tre cha -- grin!
	
	Ex -- is -- ten -- ce su -- bli -- me, Ber -- cés par no -- tre nid.
	Nous vi -- vons sur l'a -- bi -- me, Au sein de l'in -- fi -- ni.
	Des flots ra -- sant la ci -- me, Dans le grand dé -- sert bleu
	Nous mar -- chons a -- vec Dieu! Nous mar -- chons a -- vec Dieu!
}

\score {<<
	\context Voice = melodie <<
		\global
		\sopMusic
		>>
	\lyricsto melodie \new Lyrics \Words
	\context PianoStaff <<
		\context Staff = up { \pianodroite }
		\context Staff = down { \pianogauche }
		>>
	>>
	\layout {
		\context {
			% a little smaller so lyrics
			% can be closer to the staff
			\Staff minimumVerticalExtent = #'(-3 . 3)
		}
	}
	
	\midi {}
}

\paper{
		topmargin = 1.0\cm
		bottommargin = 1.5\cm
		leftmargin = 2.5\cm
		linewidth = 16.0\cm
		raggedbottom = ##t
		footsep = 1.0\cm
}

