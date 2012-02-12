\language "italiano"
\version "2.14.2"
\header{
	title="Fleur jetée"
	composer="Gabriel Fauré"
	poet="Armand Silvestre"
	opus="Op. 39 №2"

	mutopiatitle="Fleur jetée"
	mutopiacomposer="FaureG"
	mutopiapoet="Armand Silvestre (1837-1901)"
	mutopiaopus="Op. 39, №2"
	mutopiainstrument="Voice and Piano"
	date="1884"
	source="J. Hamelle, 1885 (IMSLP)"
	style="Romantic"
	copyright="Public Domain"
	maintainer="Calixte Faure"
	maintainerEmail="calixte.faure (at) gmail.com"

 footer = "Mutopia-2012/02/12-1830"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global={
	\time 6/8
	\key re \minor
	\tempo "Allegro energico." 4=72
	\override DynamicTextSpanner #'dash-period = #-1.0
}

chant=\relative do''{
	\autoBeamOff
	\dynamicUp
	R2. | r4 r8 r r la\f |
	re8.-> do16 sib la sol4 sol8 |
	la la8. fa16 re4. |
% mesure 5
	re8\mf\< mi fa la4~ la16 la\! |
	do4.\> la4\! r8 |
	r8 fa\cresc mi re fa8. la16 |
	re4.~\< re4 re8 |
	fa8.\f-> do16 la sib do4 fa,8 |
% mesure 10	
	la4.~ la4 sol8 |
	fa2.~ |
	fa8 r r r4 r8 |
% Comme la fleur
	sib8\p sib sib la4 sol8 |
	sib4.\( sib4\)\< sib,8 |
% mesure 15
	re4\> re8 do4.~ |
	do4. r8 r la'\cresc |
	do4.\< do8 sib8. la16\! |
	do4\( do8\) sib4 solb8 |
	lab4 fa16 solb\> lab4.~ |
% mesure 20
	lab!4.~ lab8\! r r |
	dod8^\markup{\italic{cresc. molto}} dod dod si4 lad8 |
	dod4.\( dod4\) dod8 |
	fa!4\f dod8 mi4.~ |
	mi4. r8 r la,8 |
% mesure 25
	do!4. do8 sib8. la16 |
	do4\dim\( do8\) sib4 sib8 |
	la4 fa16 sol la4.~ |
	la4.~ la8 r r |
	R2. |
% mesure 30 — Que le vent
	r4 r8 r la8.\f la16 |
	re8.[(do16]) sib la sol4 sol8 |
	la8 la8. fa16 re4. |
	re8\mf\< mi fa~ fa la8. la16\! |
	do4.\> la4.\! |
% mesure 35
	r8 fa\cresc mi re fa8. la16 |
	re4.~\< re8 re8. re16\! |
	fa8.^\markup{\dynamic f \italic sempre}[(do16]) la sib do4 do8 |
	mib4.~-> mib8 la,8. la16
	\time 9/8
	lad4.~ lad8 r r r dod8. dod16 |
% mesure 40
	fad8.\f[(dod16]) lad si dod4. dod4. |
	fa!4.~-> fa4. fa4 mi8 |
	\time 6/8
	re2.~ |
	re2.~ |
	re8 r r r4 r8 | R2.
	\bar"|."
}
	
paroles=\lyricmode{
	Em -- por -- te ma fo -- li -- e
	Au gré du vent,
	Fleur en chan -- tant cueil -- li -- e
	Et je -- tée en rê -- vant_!
	Em -- por -- te ma fo -- li -- e,_Au gré du vent.

	Com -- me la fleur fau -- ché -- e
	Pé -- rit l’a -- mour.
	La main qui t’a tou -- ché -- e
	Fait ma main sans re -- tour,
	Com -- me la fleur fau -- ché -- e
	Pé -- rit l’a -- mour.

	La main qui t’a tou -- ché -- e
	Fuit ma main sans re -- tour.
	Que le vent qui te sè -- che,
	Ô pau -- vre fleur,
	Tout à l’heu -- re si frai -- che
	Et de -- main sans cou -- leur,
	Que le vent qui te sè -- che,
	Ô pau -- vre fleur,
	Que le vent qui te sè -- che,
	Sè -- che mon cœur_!
}

pianoHaut=\relative do''{
	<la la,>16\p q q q q q  q q q q q q |
	q q q q q q la\f q q q q q |
	<la re,> q q q q q <sol re> q q q q q |
	<la re, la> q q q q q <re, la>\> q q q q q\! |
% mesure 5
	<re si sold>\p q q q q q <fa si, la> q q q q q |
	<fa do la>\< q q q q q\! <do la>\> q q q q q\! |
	<dod la> q q q q q <re la> q q q q q |
	<fa re la>\< q q q q q <la fa re la> q q q q q |
	<la fa do la>\f q q q <fa do la> q <mi do la> q q q <re do la> q |
% mesure 10
	sib\> sib sib sib sib sib sib sib sib sib do do |
	do\p do do do do do do\< do do do do do |
	<fa do la> q q q q q\! <la fa do>\> q q q q q |
	<sib mi, reb>\p q q q q q r4 r8 |
	<sib fa re!>16 q q q q q r4 r8 |
% mesure 15
	re,16 re re re re re do do do do do do |
	r4\< r8 <la' fa do>16 q q q q q |
	<do fad, mib>\sf-> q q q q q r4 r8 |
	<do la solb>16-> q q q q q r4 r8 |
	<lab fa reb>16 q q q q q r4 r8 |
% mesure 20
	<sold mid si>16-> q q q q q r4 r8 |
	<dod sold mi!>16->\cresc q q q q q r4 r8 |
	<dod lad fadd>16-> q q q q q r4 r8 |
	<dod sib! sol! fa'!>16->\f q q q q q r4 r8 |
	<la fa mi'>16-> q q q q q r4 r8 |
% mesure 25
	<do fad, mib>16-> q q q q q r4 r8 |
	<do mi,! reb>16\dim q q q q q r4 r8 |
	<la fa do>16 q q q q q r4 r8 |
	<la fa dod>16\p q q q q q r4 r8 |
	<la fa re>16 q q q q q r4 r8 |
% mesure 30
	<la la,>16 q q q q q la q q q q q |
	<la re, la>-> q q q q q <sol re sol,> q q q q q |
	<la re, la> q q q q q <re, la>\> q q q q q |
	<re si sold>\p q q q q q <fa si, la> q q q q q |
	<fa do la>\< q q q q q\! <do la>\> q q q q q\! |
% mesure 35
	<dod la> q q q q q <re la> q q q q q |
	<fa re la>\< q q q q q <la fa re la> q q q q q |
	<la fa do la>\f q q q q q <mi do la> q q q q q |
	<mib sib sol> q q q q q <mib la, fad> q q q q q |
	\time 9/8 \change Staff="bas"
	\voiceOne <dod lad fad>-> q q q q q \change Staff="haut" \oneVoice
	<fad dod lad>-> q q q q q <lad fad dod> q q q q q |
% mesure 40
	<dod lad fad dod>->\f q q q q q r4 r8 q16-> q q q q q |
	<dod lad mid dod>-> q q q q q r4 r8 <dod sib! sol! dod,>16 q q q q q |
	\time 6/8
	<re la fa re> q q q q q r4 r8 |
	re,16 re re re re re r4 r8 |
	\change Staff="bas"
	<fa, re la>16^\< q q q q q q q q q q q\!
	\change Staff="haut"
	<re' fa la re>4-> r8 r4 r8
	\bar"|."
}

pianoMilieu=\relative do'{
	\clef bass
	\voiceOne
	\autoBeamOff
        % autorise les hampes à déborder sur l'autre portée
        \override Stem #'cross-staff = ##t
        % étend les hampes pour qu'elles atteignent l'autre portée
        \override Stem #'length = #15
        % pas de crochet superflu
        \override Stem #'flag-style = #'no-flag
	s2.*2
	la16 la la la la la sol sol sol sol sol sol |
	s2.*6
% mesure 10
	<fa sib>16 q q q q q <mi sib'> q q q q q |
	<fa la> q q q q q q q q q q q |
	s2.*3
% mesure 15
	<mi sold>16 q q q q q <fa la> q q q q q |
	s2.*23
	s2. s4. |
% mesure 40
	s2. s4. | s2. s4.
	s2. |
	<re fa la>16 q q q q q s4.
}
	

pianoBas=\relative do'{
	\clef bass
	R2. | 
	r4 r8 <la la,>16 <sol sol,> <fa fa,> <mi mi,> <re re,> <do do,> |
	\voiceTwo <sib sib,>2.-> | \oneVoice
	<fa fa,>4.~-> <fa fa,>16 sol la si do re |
% mesure 5
	mi4. re |
	la16 sib! do re mi fa mi re do sib la sol |
	fa2. |
	si!16 do re mi re do si la sol fa mi re |
	do2.-> |
% mesure 10
	\voiceTwo do2. |
	fa16 sol la sib do re do sib la sol la sib | \oneVoice
	do re mi fa sol la sol fa sol la sib do |
	\change Staff="haut" \voiceTwo reb8
	\change Staff="bas" \oneVoice r r
	<sib mi, reb>16 q q q q q |
	<fa, fa,>4. < re'! fa sib>16^\< q q q q q\! |
% mesure 15
	\voiceTwo <fa, fa,>4.~ <fa fa,>4 r8 |
	\oneVoice
	<la' do fa>16 q q q q q r4 r8 |
	<re,, re,>4.-> <mib' fad do'>16 q q q q q |
	<reb, reb,>4.->^\> <sib'' reb solb>16 q q q q q\! |
	<reb,, reb,>4. <fa' lab do>16-> q q q q q |
% mesure 20
	<dod, dod,>4. <dod' mid lad>16-> q q q q q |
	<lad lad,>4.-> < mi'! sold dod>16 q q q q q |
	<red, red,>4. <fadd' lad dod>16 q q q q q |
	<la,! la,!>4. <sol' sib dod mi>16-> q q q q q |
	<la, la,>4. <fa' la re>16 q q q q q |
% mesure 25
	<fa,! fa,!>4. <mib' fad do'>16 q q q q q |
	<fa, fa,>4. <reb' mi! sib'>16 q q q q q\! |
	<fa, fa,>4. <dod' fa la>16 q q q q q |
	<fa, fa,>4. <re' fa la>16 q q q q q |
	<fa, fa,>4. la'16 la la la la la |
% mesure 30
	r4 r8 <la la,>16 <sol sol,> <fa fa,> <mi mi,> <re re,> <do do,> |
	<sib sib>2.-> |
	<fa fa,>4.~ <fa fa,>16 sol la si do re |
	mi4. re |
	la16 sib! do re mi fa mi re do sib la sol |
% mesure 35
	fa2. |
	si16 do re mi re do si la sol fa mi re |
	do2.
	\set doubleSlurs = ##t
	<do' do,>2._~-> \voiceTwo |
	\time 9/8
	<do do,>4.
	lad16-> dod si lad sold fad \oneVoice mid red dod si lad sold |
% mesure 40
	<fad' fad,>4.-> <dod' fad lad dod>16-> q q q q q <lad lad,>4.-> |
	<dod dod,>4. <mid dod lad mid>16 q q q q q <la,! la,!>4.
	\time 6/8
	<re, re,>4.-> <fa' sib re>16-> q q q q q |
	\voiceTwo <re, re,>4. \oneVoice <fa sib re>16-> q q q q q |
	\voiceTwo <re re,>16 q q q q q q q q q q q |
	\oneVoice q4-> r8 r4 r8
	\bar"|."
}

\score{<<
	\new Staff{
		\new Voice{\global \chant}
		\addlyrics{\paroles}
	}
	\new PianoStaff{<<
		\new Staff="haut"{\global \pianoHaut}
		\new Staff="bas"{<<\global \pianoMilieu \pianoBas>>}
	>>}
>>
}

\paper{
		topmargin = 1.0\cm
		bottommargin = 1.5\cm
		leftmargin = 2.5\cm
		linewidth = 16.0\cm
		raggedbottom = ##t
		footsep = 1.0\cm
}
