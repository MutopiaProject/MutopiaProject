\version "2.10.0"
\include "catalan.ly" 
#(set-global-staff-size 16)

\header {
	mutopiatitle = "La Bayadère - Allegretto delicato"
 	mutopiacomposer = "MinkusLA"
 	mutopiainstrument = "Piano and Flute"
 	source = "New arrangement"
 	style = "Classical"
 	copyright = "Public Domain"
 	maintainer = "Laurence Sardain"
 	lastupdated = "2006/Dec/21"
	title = "La Bayadère"
	subtitle = "Acte II - Allegretto delicato"
	composer = "Ludwig Aloisius Minkus"
	arranger = "arr. Laurence Sardain"
 footer = "Mutopia-2006/12/22-893"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

flute = \relative do'' {
	\clef treble
	\key sol \major
	\time 2/4
	R2^\markup { \italic {Allegretto delicato} } |
	re'8-.\mf re-. re-. red-. |
	\acciaccatura fad8 mi16( red16 mi8)-. fad,16( mid fad8)-. |
	re'8-. re-. re-. red-. |
	\acciaccatura fad8 mi16( red16 mi8)-. sol,16( fad sol8)-. |
	re16-. mi-. fad-. sol-. la-. si-. do-. re-. |
	re-. do-. si-. la-. la-. sol-. fad-. mi-. |
	mi-. re-. dod-. re-. fad-. mi-. re -. do-. |
	si-.\< do-. si-. mi-.\! re4 |
	re'8-.\mf re-. re-. red-. |
	\acciaccatura fad8 mi16( red16 mi8)-. fad,16( mid fad8)-. |
	re'8-.\mf re-. re-. red-. |
	\acciaccatura fad8 mi16( red16 mi8)-. sol,16( fad sol8)-. |
	re16-. mi-. fad-. sol-. la-. si-. do-. re-. |
	re-. do-. si-. la-. la-. sol-. fad-. mi-. |
	mi-. re-. dod-. re-. fad-. mi-. do-. la-. |
	sol-.\> si-. re-. sol-. sol,4\! |
	fad'8-.\mp fad-. fad-. fad-. |
	\acciaccatura la8 sol16( fad sol8)-. re16-. re-. re8 |
	sol16-. fad-. mi-. fad-. sol-. fad-. sol-. mid-. |
	\acciaccatura sol8 fad16( mid fad8)-. la,16-. la-. la8-. |
	fad'16-. mi-. re-. mi-. fad-. mi-. fad-. re-. |
	mi-. red-. mi-. fad-. sol-. la-. lad-. si-. |
	si-. la-. sol-. fad-. la-. sol-. fad-. mi-. |
	mi( re\< re')-.^\markup { \italic ritenuto } re-. re-. re-. re-. re-.\! |
	re8-.\f^\markup { \italic a tempo } sol,-. re'-. red-. |
	\acciaccatura fad8 mi16( red16 mi8)-. mi,16( red mi8)-. |
	mi'8-. la,-. mi'-. mid-. |
	\acciaccatura sol8 fad16( mid fad8)-. fad,16( mid fad8)-. |
	re16-. mi-. fad-. sol-. la-. si-. do-. re-. |
	mi-. re-. do-. si-. la-. sol-. fad-. mi-. |
	mi-. re-.\< dod-. re-. red mi-. mid-. fad-. |
	sol4-.\! sol'-. \bar"|."
	
}

upper = \relative do' {
	\clef treble
	\key sol \major
	\time 2/4
        r8 <si re> r <si re> |
	r <si re> r <re sol> |
	r <do fad> r <do re> |
	r <do re> r <do re> |
	r8 <si re> r <si re> |
	r <si re> r <sol si> |
	r do r do |
	r si r la |
	r4 do8 r |
	r <si re> r <re sol> |
	r <do fad> r <do re> |
	r <do re> r <do re> |
	r8 <si re> r <si re> |
	r <si re> r <sol si> |
	r do r do |
	r si r la |
	R2 |
	r8 <la re fad> r <la re> |
	r <sib re> r <sib re> |
	r <sib re> r <sib re> |
	r <la re> r <la mi'> |
	r <fad re'> r <fad re'> |
	r <sol si mi> r <sol mi'> |
	r <la re fad> r <la sol'> |
	r <la fad'> r <la do re> |
	r <sol si re> r <sol si re> |
	r <sol do mi> r <sol do mi> |
	r <la mi'> r <la mi' sol> |
	r <la re> r <la re> |
	r <la re> r <fad re'> |
	r <sol re'> r <sib mi> |
	<si sol'> r <la fad'> r |
	<si re sol>4-. <sol' si re sol>-. |
	
	
}

lower = \relative do {
	\clef bass
	\key sol \major
	\time 2/4
	\dynamicUp
	sol'8\mp r sol r |
	sol r si r |
	la r re, r |
	fad r la r |
	sol r re r |
	sol r re r |
	do mi do mi |
	re sol re fad |
	sol sold la re, |
	sol r si r |
	la r re, r |
	fad r la r |
	sol r re r |
	sol r re r |
	do mi do mi |
	re sol re fad |
	sol, sol'sol16-. sol-. fad-. mi-. |
	re8\p r re r |
	re8 r re r |
	re8 r re r |
	re r dod r |
	si r re r |
	sol, r mi r |
	la r dod r |
	re r^\markup { \italic ritenuto } re r |
	si_\mf^\markup { \italic a tempo } r si r |
	do r do r |
	dod r dod r |
	re r re r |
	re r do r |
	si r dod r |
	re\< r re r |
	<sol, sol'>4-. <sol, sol'>-.\! |
	
	
}

     
\score {<<
	\context Staff = flute <<
		\set Staff.instrumentName = "Flûte  "
		\flute
		>>
	\context PianoStaff = prima <<
		\set PianoStaff.instrumentName = "Piano  "
		\context Staff = uppera \upper
		\context Staff = lowera \lower
	>>
	>>
	\layout { }
	\midi { 
		\context {
      			\Score
      			tempoWholesPerMinute = #(ly:make-moment 90 4)
      		}
      	}
}

\paper {
	top-margin = 1.5\cm
	bottom-margin = 1.5\cm
	left-margin = 2.5\cm
	line-width = 16.0\cm
} 
