\version "2.16.1"
#(set-global-staff-size 16)
\include "catalan.ly"

\header {
	title = "Les Sauvages"
	composer = "Jean-Philippe Rameau"
	subtitle = "Nouvelles suites de Pièces de Clavecin"
	mutopiatitle = "Les Sauvages"
	mutopiacomposer = "RameauJP"
	mutopiainstrument = "Harpsichord, Piano"
	date = "1728"
	source = "Durand, 1895"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Ludovic Sardain"
	maintainerEmail = "ludovicsardain@hotmail.com"

	
 footer = "Mutopia-2013/02/21-407"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
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
	la la sol sol fad sol \appoggiatura la8 \afterGrace sol4^\trill {fad16[sol]} |
	la8 sol fad! mi re r r4 |
	sib'2 re,8 sol sib do |
	la4 re, fad la |
	do2 re,8 la' do re |
	sib4 re, sol sib |
	re2 sol,8 sib re sol |
	mib mib re re do do sib sib |
	la re do sib la sol la fad |
	<< sol1 \\ {r8 re8~ re4~ re2} >> \bar "||"
	re'2 fa,8 sib re mib |
	do4 fa, la do |
	mib2 la,8 do mib fa |
	re4 fa, sib re |
	fa2 sib,8 re fa sib |
	sol sol fa fa mib mib re re |
	do do sib sib la sib \appoggiatura do8 \afterGrace sib4^\trill {la16[sib]} |
	do8 sib la sol fa mib re do |
	mib2 sib8 mib sib' sol |
	mib2 sib8 mib sib' sol |
	mib2 do8 mib do' mib, |
	\appoggiatura fa8 mib2^\trill re2 |
	sol2 do,8 mib sol la |
	<< {fa2 sib sib} \\ {r4 re,2 re4 do2} >> la'8 sib do la |
	sib1 \bar "||" |
	sib2 re,8 sol sib do |
	la4 re, fad la |
	do2 re,8 la' do re |
	sib4 re, sol sib |
	re2 sol,8 sib re sol |
	mib mib re re do do sib sib |
	la la sol sol fad sol \appoggiatura la8 \afterGrace sol4^\trill {fad16[sol]} |
	la8 sol fad! mi re r r4 |
	sib'2 re,8 sol sib do |
	la4 re, fad la |
	do2 re,8 la' do re |
	sib4 re, sol sib |
	re2 sol,8 sib re sol |
	mib mib re re do do sib sib |
	la re do sib la sol la fad |
	<< sol1 \\ {r8 re8~ re4~ re2} >> \bar "||"
	\voiceOne sib''2 re,8 sol sib do |
	sib la sol fa mi re do si |
	sol'2 la,8 dod mi la |
	\oneVoice sol fa mi re dod si dod la |
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
	la la sol sol fad sol \appoggiatura la8 \afterGrace sol4^\trill {fad16[sol]} |
	la8 sol fad! mi re r r4 |
	sib'2 re,8 sol sib do |
	la4 re, fad la |
	do2 re,8 la' do re |
	sib4 re, sol sib |
	re2 sol,8 sib re sol |
	mib mib re re do do sib sib |
	la re do sib la sol la fad |
	<< sol1 \\ {r8 re8~ re4~ re2} >> \bar "|."
}

gauche =  \relative do {
	\clef bass
	\key sol \minor
	sol2 sol'4 sol, |
	re'2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< { do'4 sib la sol do sib la sol fad2} \\ { do4 re mib re do re mib2 re} >>  r8 do'8 sib^\prall la |
	sol2 sol,4 sol' |
	re2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< { do'4 sib la sol} \\ { do, re mib re} >> |
	do mib' re, re' |
	<< { si4\rest sib8~ <sib sol>~ <sib sol>2} \\ sol,1 \\ { si,4\rest si8\rest re8 sol,2} >> |
	sib''2 sib,4 sib' |
	fa2 la8 do fa la |
	la,,4 do fa fa, |
	sib2 re8 fa sib re |
	re,,4 fa sib re |
	<mib mib'> <fa re'> <sol do> <fa sib> |
	<< {mib'4 re} \\ { mib,2} >> <fa do'>4 <sol sib> |
	<fa la>1 |
	<sol sib>4 r r2 |
	<sol sib>4 r r2 |
	<la do>4 r r2 |
	sib2 sib, |
	<< { mib2. mib4} \\ { r2 mib,2} >> |
	re'2 sib8 re fa sib |
	<< { r4 do, fa2} \\ { fa,2. fa4} >> |
	sib8 re fa sib re sib sol re |
	sol,2 sol'4 sol, |
	re'2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< { do'4 sib la sol do sib la sol fad2} \\ { do4 re mib re do re mib2 re} >>  r8 do'8 sib^\prall la |
	sol2 sol,4 sol' |
	re2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< { do'4 sib la sol} \\ { do, re mib re} >> |
	do mib' re, re' |
	<< { si4\rest sib8~ <sib sol>~ <sib sol>2} \\ sol,1 \\ { si,4\rest si8\rest re8 sol,2} >> |
	\change Staff = up \voiceTwo sol'''2 sol,4 sol' |
	fad_\prall fa~ fa2 |
	\appoggiatura fa8 mi2_\trill la, | \change Staff = down 
	\oneVoice re re, |
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
	fa4 sol << { la2} \\ { r4 la,} >> |
	<re, re'>1 |
	sol2 sol'4 sol, |
	re'2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< { do'4 sib la sol do sib la sol fad2} \\ { do4 re mib re do re mib2 re} >>  r8 do'8 sib^\prall la |
	sol2 sol,4 sol' |
	re2 fad8 la do mib |
	fad,,4 la re re, |
	sol2 sib8 re sol sib |
	sib,,4 sol' sib re |
	<< { do'4 sib la sol} \\ { do, re mib re} >> |
	do mib' re, re' |
	<< { si4\rest sib8~ <sib sol>~ <sib sol>2} \\ sol,1 \\ { si,4\rest si8\rest re8 sol,2} >> |
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



  \midi {
    \tempo 2 = 60
    }



}
