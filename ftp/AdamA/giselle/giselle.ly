\version "2.10.0"
\include "catalan.ly" 
#(set-global-staff-size 16)

\header {
	mutopiatitle = "Giselle - Pas de deux (1er Acte)"
 	mutopiacomposer = "AdamA"
 	mutopiainstrument = "Piano"
 	source = "New arrangement"
 	style = "Classical"
 	copyright = "Public Domain"
 	maintainer = "Laurence Sardain"
 	lastupdated = "2006/Dec/21"
	title = "Giselle"
	subtitle = "Pas de deux (1er acte)"
	composer = "Adolphe Charles Adam"
	arranger = "arr. Laurence Sardain"
 footer = "Mutopia-2006/12/22-897"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

uppera = \relative do'' {
	\clef treble
	\key sol \major
	\time 2/4
	\partial8
	si8-.\mp |
	<fad do'>( la) mi-. fad-. |
	sol(si) re,-. mi-. |
	re( mi) re-. la'-. |
	si4( sol8) si-. |
	<fad do'>( la) mi-. fad-. |
	sol(si) re,-. mi-. ||
	re( mi) re-. la'-. |
	<re, sol>4 r8 si'-. |
	<fad do'>( la) mi-. fad-. |
	sol(si) re,-. mi-. |
	re( mi) re-. la'-. |
	si4( sol8) si-. |
	<fad do'>( la) mi-. fad-. |
	sol(si) re,-. mi-. |
	re( mi) re-. la'-. |
	<re, sol>4 r8 sol-. |
	sol(\mf <do mi>)-. sol( <do mi>)-. |
	sol4. do8-. |
	sol( do)-. si-. do-. |
	dod4( re8) sol,-. |
	sol( re')-. sol,( re')-. |
	sol,4. re'8-. |
	mi( re)-. do-. si-. |
	si4( do8) sol-. |
	sol( <do mi>)-. sol( <do mi>)-. |
	sol4. do8-. |
	sol( do)-. si-. do-. |
	dod4( re8) sol,-. |
	sol( re')-. sol,( re')-. |
	sol,4. re'8-. |
	mi( re)-. do-. si-. |
	si4( do8) si-.\mp |
	<fad do'>( la) mi-. fad-. |
	sol(si) re,-. mi-. |
	re( mi) re-. la'-. |
	si4( sol8) si-. |
	<fad do'>( la) mi-. fad-. |
	sol(si) re,-. mi-. ||
	re( mi) re-. la'-. |
	<re, sol>4 r8 si'-. |
	do( la) r fad-. |
	sol( si) r4 |
	r r8 fad-. |
	sol4 r8 fad'\f |
	sol fad sol fad |
	sol4 r |
	sol, <sol si> |
	sol r8 \bar"||"
	
	
	
	
}

     
lowera = \relative do' {
	\clef treble
	\key sol \major
	\time 2/4
	\partial8
	r8 |
	r4 do8-. do-. |
	si4 si8-. si-. |
	do4 do8-. do-. |
	re4 si |
	r4 do8-. do-. |
	si4 si8-. si-. |
	do4 do8-. do-. |
	si4 r |
	r4 do8-. do-. |
	si4 si8-. si-. |
	do4 do8-. do-. |
	re4 si |
	r4 do8-. do-. |
	si4 si8-. si-. |
	do4 do8-. do-. |
	si4 r |
	r4 r |
	r4 r |
	mi8 mi-. mi-. mi-. |
	fa4 fa8 r |
	fa r fa r |
	fa4. r8 |
	r fa r fa |
	mi4 mi8 r |
	r4 r |
	r4 r |
	mi8 mi-. mi-. mi-. |
	fa4 fa8 r |
	fa r fa r |
	fa4. r8 |
	r fa r fa |
	mi4 mi8 r |
	r4 do8-. do-. |
	si4 si8-. si-. |
	do4 do8-. do-. |
	re4 si |
	r4 do8-. do-. |
	si4 si8-. si-. |
	do4 do8-. do-. |
	si4 r8 fa'-. |
	mi4 mi8-. do-. |
	si4 re8-. mi-. |
	re( mi) <do re>-. re-. |
	re4 r8 re'|
	re re re re |
	re4 r |
	<si, re> re |
	<si re> r8 
	 
	
}

upperb = \relative do {
	\clef bass
	\key sol \major
	\time 2/4
	\partial8
	r8
	re4-.(\mp re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	<re fad>4-.( <re fad>8-. <re fad>-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	<re fad>4-.( <re fad>8-. <re fad>-.) |
	re4 r\mf |
	r8 <sol do>-. r <sol do>-. |
	r <mi do'>-. <mi do'>-. r |
	r8 <sol do>-. r <sol do>-. |
	r <sol si>-. <sol si>-. r |
	r <sol si>-. r <sol si>-. |
	r <sol si>-. <sol si>-. r |
	r <sol si>-. r <sol si>-. |
	r <sol do>-. <sol do>-. r |
	r8 <sol do>-. r <sol do>-. |
	r <mi do'>-. <mi do'>-. r 
	r8 <sol do>-. r <sol do>-. |
	r <sol si>-. <sol si>-. r |
	r <sol si>-. r <sol si>-. |
	r <sol si>-. <sol si>-. r |
	r <sol si>-. r <sol si>-. |
	r <sol do>-. <sol do>-. r |
	re4-.(\mp re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	re4-.( re8-. re-.) |
	<re fad>4-.( <re fad>8-. <re fad>-.) |
	re4 r8 sold-. |
	la4 r |
	r do8-. r |
	si4 la8-. do-. |
	si4 r8 la\f |
	si la si la |
	si4 r |
	re,4 re |
	re r8 
}
     
lowerb = \relative do {
	\clef bass
	\key sol \major
	\time 2/4
	\partial8
	r8
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4 r |
	do-. do-. |
	do-. r |
	do-. do-. |
	sol-. r |
	sol-. sol-. |
	sol-. r |
	sol-. sol-. |
	do-. r |
	do-. do-. |
	do-. r |
	do-. do-. |
	sol-. r |
	sol-. sol-. |
	sol-. r |
	sol-. sol-. |
	do-. r |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4-.( sol8-. sol) |
	sol4 r |
	r r8 red'-. |
	mi8 r fad-. r |
	sold4 r8 re-. |
	sol4 r8 re |
	sol re sol re |
	sol4 r |
	sol, sol |
	sol r8 
	
}
     
\score {<<
	\context PianoStaff = prima <<
		\set PianoStaff.instrumentName = "Prima "
		\context Staff = uppera \uppera
		\context Staff = lowera \lowera
	>>
	\context PianoStaff = seconda <<
		\set PianoStaff.instrumentName = "Seconda "
		\context Staff = upperb \upperb
		\context Staff = lowerb \lowerb
	>>
	>>
	\layout { }
	\midi { 
		\context {
      			\Score
      			tempoWholesPerMinute = #(ly:make-moment 80 4)
      		}
      	}
}

\paper {
	top-margin = 1.5\cm
	bottom-margin = 1.5\cm
	left-margin = 2.5\cm
	line-width = 16.0\cm
} 
