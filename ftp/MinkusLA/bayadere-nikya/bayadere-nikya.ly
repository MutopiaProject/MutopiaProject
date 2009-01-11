\version "2.10.0"
\include "catalan.ly" 
#(set-global-staff-size 16)

\header {
	mutopiatitle = "La Bayadère - Variation de Nikya"
 	mutopiacomposer = "MinkusLA"
 	mutopiainstrument = "Piano, Flute and Horn"
 	source = "New arrangement"
 	style = "Classical"
 	copyright = "Public Domain"
 	maintainer = "Laurence Sardain"
 	lastupdated = "2006/Dec/21"
	title = "La Bayadère"
	subtitle = "Variation de Nikya"
	composer = "Ludwig MINKUS"
	arranger = "arr. Laurence Sardain"
 footer = "Mutopia-2006/12/22-894"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

flute = \relative do' {
	\clef treble
	\key sib\major
	\time 2/4
	\acciaccatura  re'8 re'4\mp ^\markup{\italic{Moderato assai}} \acciaccatura re,8 re'4 |
	\acciaccatura re,8 re'4 \acciaccatura re,8 re'4 \bar"||"|
	\acciaccatura re,,8 re'4\mf \acciaccatura re,8 re'8. re16-- |
	mib4.(~mib32 re do sib |
	la4) \acciaccatura dod,8 la'8. la16-- |
	sib4.(~ sib32 la fad re |
	re'4) \acciaccatura re,8 re'8. re16-- |
	fa4.(~ fa32 mib re do |
	sib8.) \times 2/3 {sib32( do sib} la8.)\> re16-. |
	sol,2\! |
	r8. sol'16\mp \acciaccatura sol8 mib'4 |
	r8. sol,16 \acciaccatura sol8 re'8. sol,,16 |
	\acciaccatura sol8 do8.(\< si16 do8)-. re-. |
	sib4..\! sib16 |
	lab4~\grace {lab8[ mib do mib lab do mib] } lab8-. r16 lab, |
	sol4~\grace {sol8[ re sib re sol sib re] } sol8-. r16 re |
	sol8. dod,16 << {dod4 \startTrillSpan }{s8 \grace{sid16 [\stopTrillSpan dod]}}>> |
	re8-. r8 r16 la-. sib-. do-. |
	\acciaccatura re,8 re'4\mf \acciaccatura re,8 re'8. re16-- |
	mib4.(~mib32 re do sib |
	la4) \acciaccatura dod,8 la'8. la16-- |
	sib4.(~ sib32 la fad re |
	re'4) \acciaccatura re,8 re'8. re16-- |
	sol4~(sol16 mib-. re-. do-. |
	sib8.) \times 2/3 {sib32( do sib } la8.)-.\> re16-. |
	sol,4-.\! ^\markup{\italic Allegro} \acciaccatura sol8 sol'4-.\mf |
	\acciaccatura sol,8 sol'4-. \acciaccatura sol,8 sol'4-. |
	\acciaccatura sol,8 sol'8.-. re16-. fa( mib-.) re-. do-. |
	mib( re)-. do-. sib-. re( do)-. sib-. la-. |
	do( sib-.) la-. sol-. la( sol)-. fa-. mib-. |
	mib( re-.) dod-. re-. sib'( la)-. sol-. fad-. |
	sol4-. \acciaccatura sol8 sol'4-. |
	\acciaccatura sol,8 sol'4-. \acciaccatura sol,8 sol'4-. |
	\acciaccatura sol,8 sol'8.-. re16-. fa( mib-.) re-. do-. |
	mib( re)-. do-. sib-. re( do)-. sib-. la-. |
	do( sib-.) la-. sol-. la( sol)-. fa-. mib-. |
	mib( re-.) dod-. re-. sib'( la)-. sol-. fad-. |
	sol4-. la( |
	sib dod16 re mib re |
	sol4) la,( |
	sib dod16 re mib re |
	sol8)-. fad-.\< sol-. fad-. |
	sol-. fad-. sol-. fad-.\! |
	sol4-.\f sol-.->\bar"|."
	
}

cor = \relative do {
	\clef treble
	\key sib\major
	\time 2/4 
	\grace s8 r8\mp re\(( do') re,(|
	sib') re,( la') re,\)\bar"||" 
 	\grace s8
 	R2*5 |
 	la'2( |
 	re,4 fad |
 	sol4) r8. sol16(--|
 	mib'4) r8. sol,16(-- |
 	re'4) r |
 	R2*6 |
 	R2*5 |
 	sol,2( |
 	re4 fad |
 	sol8) r r4 |
 	R2 |
 	r4 la\(( |
 	sib) fad( |
 	sol) do,( |
 	re) re( |
 	sol)\) r |
 	R2 |
 	r4 la\(( |
 	sib) fad( |
 	sol) do,( |
 	re) re( |
 	sol)\) do( |
 	sib la |
 	sol) do( |
 	sib la |
 	sol8-.) re-.\< sol-. re-. |
 	sol-. re-. sol-. re-.\! |
 	sol4-.\f sol-.-> \bar"|."
 	
 	
 	
}


uppera = \relative do' {
	\clef treble
	\key sib\major
	\time 2/4
	\grace s8
	R2*2 \bar"||" 
	\grace s8
	r8\mp <sib re sol> r <do fad> |
	r <re sol> r <sol, re' sol> |
	r <mib' la> r <mi la> |
	r <re sol sib> r <re fad la> |
	r <sib re sol> r <re sol> |
	r <mib la> r <mib la> |
	r <re sol sib> r <re fad la> |
	<< { <sib sol'>2 }\\{re4 re}>> |
	r8 <sol, do mib> r <sol do mib> |
	r <sib re sol> r <sib re sol> |
	r <do fad> r <la re> |
	r8 <sib re sol>\arpeggio <re sol sib>\arpeggio <re sol sib re >\arpeggio |
	r8 <mib lab> r <mib lab> |
	r <re sol> r <re sol> |
	r <la dod sol'> r <la dod sol'> |
	\clef bass r16 re,32( fad la \clef treble re fad la re4)-. |
	r8 <sib, re sol> r <do fad> |
	r <re sol> r <sol, re' sol> |
	r <mib'la> r <mi la> |
	r <re sol sib> r <re fad la> |
	r <sib re sol> r <si re fa sol> |
	r <do mib sol> r <do mib sol> |
	r <re sol sib> r <re fad la> |
	r\mf <sib re sol> r <do mib sol> |
	r <sib re sol> r <do mib sol> |
	r <sib re sol> r <do fad> |
	r <re sol> r <do re la'> |
	r <sib re sol> r <sol do mib> |
	r <sol sib re> r <fad la do re> |
	r <sol sib re> r <do mib sol> |
	r <sib re sol> r <do mib sol> |
	r <sib re sol> r <do fad> |
	r <re sol> r <do re la'> |
	r <sib re sol> r <sol do mib> |
	r <sol sib re> r <fad la do re> |
	r <sol sib re> r <mib' la> |
	r <sib re sol> r <do re fad> |
	r <sib re sol> r <mib la> |
	r <sib re sol> r <do re fad> |
	<sib re sol>-. <do re fad>-.\< <sib re sol>-. <do re fad>-. |
	<sib re sol>-. <do re fad>-. <sib re sol>-. <do re fad>-.\! |
	<sib re sol>4-.\f <sib re sol>4-.-> |
}
     
lowera = \relative do {
	\clef bass
	\key sib\major
	\time 2/4
	\grace s8
 	R2*2 |
 	sol'4 la |
 	sib sib, |
 	do dod |
 	re re |
 	sol, si |
 	do do |
 	re re |
 	<< {sol,16-. re'-. sol-. sib-. r4 }\\{sol,2}>> |
 	do4 do |
 	sib sib |
 	la re, |
 	sol2 |
 	do4 do |
 	sib sib |
 	mib, mib |
 	re re' |
 	sol la |
 	sib sib, |
 	do dod |
 	re re |
 	sol, si |
 	do la |
 	re re |
 	sol, sol |
 	sol sol |
 	sol la |
 	sib fad |
 	sol do, |
 	re re |
 	sol sol |
 	sol sol |
 	sol la |
 	sib fad |
 	sol do, |
 	re re |
 	sol do |
 	re re |
 	sol, do |
 	re re |
 	<sol, sol'>8-. re'-. <sol, sol'>-. re'-. |
 	<sol, sol'>-. re'-. <sol, sol'>-. re'-. |
 	<sol, sol'>4-. <sol sol'>-.-> |
}

     
\score {<<
	\context Staff = flute <<
		\set Staff.instrumentName = "Flûte "
		\transpose sol do'\flute
		>>
	\context Staff = cor <<
		\set Staff.instrumentName = "Cor "
		\transpose sol sol'\cor
		>>
	\context PianoStaff = prima <<
		\set PianoStaff.instrumentName = "Piano "
		\context Staff = uppera \transpose sol do'\uppera
		\context Staff = lowera \transpose sol do'\lowera
	>>
	>>
	\layout { }
	\midi { 
		\context {
      			\Score
      			tempoWholesPerMinute = #(ly:make-moment 60 4)
      		}
      	}
}

\paper {
	top-margin = 1.5\cm
	bottom-margin = 1.5\cm
	left-margin = 2.5\cm
	line-width = 16.0\cm
} 
