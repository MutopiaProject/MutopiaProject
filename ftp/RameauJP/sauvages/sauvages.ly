\version "2.4.0"
#(set-global-staff-size 16)
\include "catalan.ly"

\header {
	title = "Les Sauvages"
	composer = "Jean-Philippe Rameau"
	subtitle = "Nouvelles suites de Pièces de Clavecin"
	mutopiatitle = "Les Sauvages"
	mutopiacomposer = "J. P. Rameau (1683-1764)"
	mutopiainstrument = "Harpsichord, Piano"
	date = "1728"
	source = "Durand, 1895"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Ludovic Sardain"
	maintainerEmail = "ludovicsardain@hotmail.com"
	lastupdated = "2005/Feb/25"
	footer = "Mutopia-2005/02/25-407"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
	
}

droite =  \relative do''{
	\time 2/2
	\key sol \minor
	sib2 re,8 sol sib do |
	la4 re, fad la |
	do2 re,8 la' do re |
	sib4 re, sol sib |
	re2 sol,8 sib re sol |
	mib mib re re do do sib sib |
	la la sol sol fad sol \appoggiatura la8 << sol4^\trill {s8 \grace {fad16[sol]}} >> |
	la8 sol fad! mi re r r4 |
	sib'2 re,8 sol sib do |
	la4 re, fad la |
	do2 re,8 la' do re |
	sib4 re, sol sib |
	re2 sol,8 sib re sol |
	mib mib re re do do sib sib |
	la re do sib la sol la fad |
	<< sol1 \\ {\stemDown r8 re8~ re4~ re2} >> \bar "||"
	re'2 fa,8 sib re mib |
	do4 fa, la do |
	mib2 la,8 do mib fa |
	re4 fa, sib re |
	fa2 sib,8 re fa sib |
	sol sol fa fa mib mib re re |
	do do sib sib la sib \appoggiatura do8 << sib4^\trill {s8 \grace {la16[sib]}} >> |
	do8 sib la sol fa mib re do |
	mib2 sib8 mib sib' sol |
	mib2 sib8 mib sib' sol |
	mib2 do8 mib do' mib, |
	\appoggiatura fa8 mib2^\trill re2 |
	sol2 do,8 mib sol la |
	<< {\stemUp fa2 sib sib} \\ {\stemDown r4 re,2 re4 do2} >> la'8 sib do la |
	sib1 \bar "||" |
	sib2 re,8 sol sib do |
	la4 re, fad la |
	do2 re,8 la' do re |
	sib4 re, sol sib |
	re2 sol,8 sib re sol |
	mib mib re re do do sib sib |
	la la sol sol fad sol \appoggiatura la8 << sol4^\trill {s8 \grace {fad16[sol]}} >> |
	la8 sol fad! mi re r r4 |
	sib'2 re,8 sol sib do |
	la4 re, fad la |
	do2 re,8 la' do re |
	sib4 re, sol sib |
	re2 sol,8 sib re sol |
	mib mib re re do do sib sib |
	la re do sib la sol la fad |
	<< sol1 \\ {\stemDown r8 re8~ re4~ re2} >> \bar "||"
	\stemUp sib''2 re,8 sol sib do |
	sib la sol fa mi re do si |
	sol'2 la,8 dod mi la |
	sol fa mi re dod si dod la |
	fa'2 la,8 re fa sol |
	fa mi re do si la sol fad |
	re'2 mib,8 sol sib mib |
	\appoggiatura re8 dod2^\trill \appoggiatura si8 la2 |
	fa'2 la,8 re fa sol |
	mi si si' r r2 |
	fa2 la,8 re fa sol |
	mi si si' r r2 |
	mi,2 la,8 dod mi fa |
	re la la'2.~ |
	la4( sol8)^\prall fa mi re mi dod |
	re do sib la sol fad mi re \bar "||" |
	sib'2 re,8 sol sib do |
	la4 re, fad la |
	do2 re,8 la' do re |
	sib4 re, sol sib |
	re2 sol,8 sib re sol |
	mib mib re re do do sib sib |
	la la sol sol fad sol \appoggiatura la8 << sol4^\trill {s8 \grace {fad16[sol]}} >> |
	la8 sol fad! mi re r r4 |
	sib'2 re,8 sol sib do |
	la4 re, fad la |
	do2 re,8 la' do re |
	sib4 re, sol sib |
	re2 sol,8 sib re sol |
	mib mib re re do do sib sib |
	la re do sib la sol la fad |
	<< sol1 \\ {\stemDown r8 re8~ re4~ re2} >> \bar "|."
}

gauche =  \relative do {
	\clef bass
	\key sol \minor
	sol2 sol'4 sol, |
	re'2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< {\stemDown do re mib re do re mib2 re} \\ {\stemUp do'4 sib la sol do sib la sol fad2} >> \stemNeutral r8 do'8 sib^\prall la |
	sol2 sol,4 sol' |
	re2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< {\stemDown do re mib re} \\ {\stemUp do'4 sib la sol} >> |
	do, mib' re, re' |
	<< {\stemUp si4\rest sib8~ <sib sol>~ <sib sol>2} \\ sol,1 \\ {\stemDown si,4\rest si8\rest re8 sol,2} >> |
	sib''2 sib,4 sib' |
	fa2 la8 do fa la |
	la,,4 do fa fa, |
	sib2 re8 fa sib re |
	re,,4 fa sib re |
	<mib mib'> <fa re'> <sol do> <fa sib> |
	<< {\stemDown mib2} \\ {\stemUp mib'4 re} >> <fa, do'>4 <sol sib> |
	<fa la>1 |
	<sol sib>4 r r2 |
	<sol sib>4 r r2 |
	<la do>4 r r2 |
	sib2 sib, |
	<< {\stemUp mib2. mib4} \\ {\stemDown r2 mib,2} >> |
	re'2 sib8 re fa sib |
	<< {\stemUp r4 do, fa2} \\ {\stemDown fa,2. fa4} >> |
	sib8 re fa sib re sib sol re |
	sol,2 sol'4 sol, |
	re'2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< {\stemDown do re mib re do re mib2 re} \\ {\stemUp do'4 sib la sol do sib la sol fad2} >> \stemNeutral r8 do'8 sib^\prall la |
	sol2 sol,4 sol' |
	re2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< {\stemDown do re mib re} \\ {\stemUp do'4 sib la sol} >> |
	do, mib' re, re' |
	<< {\stemUp si4\rest sib8~ <sib sol>~ <sib sol>2} \\ sol,1 \\ {\stemDown si,4\rest si8\rest re8 sol,2} >> |
	\change Staff = up \stemDown sol'''2 sol,4 sol' |
	fad_\prall fa~ fa2 |
	\appoggiatura fa8 mi2_\trill la, | \change Staff = down \stemNeutral
	re re, |
	re' re,4 re' |
	dod^\prall do2. |
	si4^\prall sib2. |
	la2 la, |
	la' la,4 la' |
	sold4. si8 re fa re sold, |
	la2 la,4 la' |
	sold4. si8 re fa re fad, |
	sol!2 sol,4 sol' |
	fad4. la8 re mib re mi, |
	fa4 sol << {\stemUp la2} \\ {\stemDown r4 la,} >> |
	<re, re'>1 |
	sol2 sol'4 sol, |
	re'2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< {\stemDown do re mib re do re mib2 re} \\ {\stemUp do'4 sib la sol do sib la sol fad2} >> \stemNeutral r8 do'8 sib^\prall la |
	sol2 sol,4 sol' |
	re2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< {\stemDown do re mib re} \\ {\stemUp do'4 sib la sol} >> |
	do, mib' re, re' |
	<< {\stemUp si4\rest sib8~ <sib sol>~ <sib sol>2} \\ sol,1 \\ {\stemDown si,4\rest si8\rest re8 sol,2} >> |
}

\score {
	\context PianoStaff  <<
		\context Staff = "up" <<
			\droite
		>>
		\context Staff = "down" <<
			\gauche
		>>
	>>

\layout {
}


\midi { \tempo 2 = 60 }

}
