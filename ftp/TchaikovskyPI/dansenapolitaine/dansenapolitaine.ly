\version "2.10.0"
\include "catalan.ly" 
#(set-global-staff-size 16)

\header {
	mutopiatitle = "Napolitan Dance (Swan Lake)"
 	mutopiacomposer = "TchaikovskyPI"
 	mutopiainstrument = "Trumpet, Percussion and Piano"
 	source = "New arrangement"
 	style = "Classical"
 	copyright = "Public Domain"
 	maintainer = "Laurence Sardain"
 	lastupdated = "2006/Dec/21"
	title = "Le Lac des Cygnes"
	subtitle = "Danse Napolitaine"
	composer = "Piotr Ilitch Tchaïkovski"
	arranger = "arr. Laurence Sardain"
 footer = "Mutopia-2006/12/22-896"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

trompette = \relative do'' {
	\clef treble
	\key mib \major
	\time 2/4
	R2^\markup { \italic Comodo } |
	r8 \once \override TextScript #'padding = #2.0 
	sib16-.^\markup {\dynamic p \italic grazioso} do-. mib( re)-. do-. sib-. |
	re8-. r8 re4->( |
	re8) do16-. re-. mib( re) do-. re-. |
	do8-. r8 sib4->( |
	sib8) sib16-. sib-. do( sib) lab-. sol-. |
	sib8-. r8 lab4->( |
	lab8) lab16-. lab-. sib( lab) sol-. fa-. |
	sol8-. r mib4(-> |
	mib2)(\> |
	mib8)\! r r4 |
	r8 sib'16-. do-. mib( re)-. do-. sib-. |
	re8-. r8 re4->( |
	re8) do16-. re-. mib( re) do-. re-. |
	do8-. r8 sib4->( |
	sib8) sib16-. sib-. do( sib) lab-. sol-. |
	sib8-. r8 lab4->( |
	lab8) lab16-. lab-. sib( lab) sol-. fa-. |
	mib2->(\> |
	mib4) mib8. mib16(\! |
	do'8-.) r8 do4->( |
	do8) re16-. mib-. fa( mib) re-. do-. |
	do8-. r sib4->( |
	sib8) la16( sib) la( sib) re-. do-. |
	sib8-. r lab4->( |
	lab8) sol16( lab) sol( lab) do-. sib-. |
	mib,2->(\> |
	mib4)\! mib8. mib16( |
	do'8-.) r8 do4->( |
	do8) re16-. mib-. fa( mib) re-. do-. |
	do8-. r sib4->( |
	sib8) la16( sib) la( sib) re-. do-. |
	sib8-. r lab4->( |
	lab8) sol16( lab) sol( lab) do-. sib-. |
	mib,2->(\> |
	mib4.)\! mib'8(\f |
	do8)-. mib( do)-. mib( |
	do-.) mib-. fa16( mib re do) |
	do( sib) sib-. sib-. do( sib) sib-. sib-. |
	do( sib) sib-. sib-. do( sib lab sol) |
	sib( lab) lab-. lab-. sib( lab) lab-. lab-. | 
	sib( lab) lab-. lab-. sib( lab sol fa |
	mib)-. mib( fa sol lab sib do re |
	mib8)-. r8 r mib( |
	do8)-.\f mib( do)-. mib( |
	do-.) mib-. fa16( mib re do) |
	do( sib) sib-. sib-. do( sib) sib-. sib-. |
	do( sib) sib-. sib-. do( sib lab sol) |
	sib( lab) lab-. lab-. sib( lab) lab-. lab-. | 
	sib( lab) lab-. lab-. sib( lab sol fa |
	mib)-. mib( fa sol lab sib do re |
	mib)-. mib,( fa sol lab sib do re |
	mib8)-. r mib-.-> r |
	mib,-.-> r r4\fermata |
}

tambourin = \relative do'{
	    \time 2/4
	    r8 do16 do do8 do |
	    r8 do16 do do8 do |
	    r8 do r do |
	    r8 do16 do do8 do |
	    r8 do r do |
	    r8 do16 do do8 do |
	    r8 do r do |
	    r8 do16 do do8 do |
	    r8 do r do |
	    r8 do16 do do8 do |
	    r8 do16 do do8 do |
	    r8 do16 do do8 do |
	    r8 do r do |
	    r8 do16 do do8 do |
	    r8 do r do |
	    r8 do16 do do8 do |
	    r8 do r do |
	    r8 do16 do do8 do |
	    do4 r |
	    R2 |
	    r8 do r do |
	    do4 r |
	    r8 do r do |
	    do4 r |
	    r8 do r do |
	    do4 r |
	    R2*2 |
	    r8 do r do |
	    do4 r |
	    r8 do r do |
	    do4 r |
	    r8 do r do |
	    do4 r |
	    R2*2 |
	    do4 do |
	    do do |
	    do4 do |
	    do do |
	    do4 do |
	    do do |
	    do r |
	    do8 do do r |
	    do4 do |
	    do do |
	    do4 do |
	    do do |
	    do do |
	    do do|
	    do r |
	    do r |
	    do do |
	    do r |
}
	    
upper = \relative do' {
	\clef treble
	\key mib \major
	\time 2/4
        r8\p <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <lab sib re>16-. <lab sib re>-. <lab sib re>8-. <lab sib re>-. |
        r8 <lab sib re>16-. <lab sib re>-. <lab sib re>8-. <lab sib re>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <lab sib re>16-. <lab sib re>-. <lab sib re>8-. <lab sib re>-. |
        r8 <lab sib re>16-. <lab sib re>-. <lab sib re>8-. <lab sib re>-. |
        r8 <sol sib>16-. <sol sib>-. <sol sib>8-. <sol sib>-. |
        r8 <sol sib>16-. <sol sib>-. <sol sib>8-. <sol sib>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <lab sib re>16-. <lab sib re>-. <lab sib re>8-. <lab sib re>-. |
        r8 <lab sib re>16-. <lab sib re>-. <lab sib re>8-. <lab sib re>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <lab sib re>16-. <lab sib re>-. <lab sib re>8-. <lab sib re>-. |
        r8 <lab sib re>16-. <lab sib re>-. <lab sib re>8-. <lab sib re>-. |
        r8 <sol sib>16-. <sol sib>-. <sol sib>8-. <sol sib>-. |
        R2
        r8 <do mib>16-. <do mib>-. <do mib>8-. <do mib>-. |
        r8 <do mib>16-. <do mib>-. <do mib>8-. <do mib>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <fa sib re>16-. <fa sib re>-. <fa sib re>8-. <fa sib re>-. |
        r8 <fa sib re>16-. <fa sib re>-. <fa sib re>8-. <fa sib re>-. |
        r8 <sol sib>16-. <sol sib>-. <sol sib>8-. <sol sib>-. |
        r8 <sol sib>16-. <sol sib>-. <sol sib>8-. <sol sib>-. |
        r8 <do mib>16-. <do mib>-. <do mib>8-. <do mib>-. |
        r8 <do mib>16-. <do mib>-. <do mib>8-. <do mib>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <sol sib mib>16-. <sol sib mib>-. <sol sib mib>8-. <sol sib mib>-. |
        r8 <fa sib re>16-. <fa sib re>-. <fa sib re>8-. <fa sib re>-. |
        r8 <fa sib re>16-. <fa sib re>-. <fa sib re>8-. <fa sib re>-. |
        r8 <sol sib>16-. <sol sib>-. <sol sib>8-. <sol sib>-. |
        r8 <sol sib>8-. r4 |
        r8\f <do mib>-. r <do mib>-. |
        r8 <do mib>-. r <do mib>-. |
        r8 <sol sib mib>-. r <sol sib mib>-. |
        r8 <sol sib mib>-. r <sol sib mib>-. |
        r8 <fa sib re>-. r <fa sib re>-. | 
	r8 <fa sib re>-. r <fa sib re>-. |
	r <sol sib>-. r4 |
	r8 sib-. <sib mib>-. sib-. |
	r8 <do mib>-. r <do mib>-. |
        r8 <do mib>-. r <do mib>-. |
        r8 <sol sib mib>-. r <sol sib mib>-. |
        r8 <sol sib mib>-. r <sol sib mib>-. |
        r8 <fa sib re>-. r <fa sib re>-. | 
	r8 <fa sib re>-. r <fa sib re>-. |
	r4 <sib re fa>8-. r |
	<mib sol>-. r <sib re fa>-. r |
	<mib sol>-. r sol-.-> r |
	<sol, mib'>-.-> r r4\fermata \bar "|."
}

lower = \relative do {
	\clef bass
	\key mib \major
	\time 2/4
	mib4-. r4 |
	sib-. r |
	fa'-. r |
	sib, r |
	mib4-. r4 |
	sib-. r |
	fa'-. r |
	sib, r |
	mib r |
	sib r |
	mib r |
	sib r |
	fa'-. r |
	sib, r |
	mib4-. r4 |
	sib-. r |
	fa'-. r |
	sib, r |
	mib4-. r4 |
	<sol sib> r |
	lab4-. r |
	lab-. r |
	mib-. r |
	mib-. r |
	sib-. r |
	sib-. r |
	mib-. r |
	mib-. r |
	lab4-. r |
	lab-. r |
	mib-. r |
	mib-. r |
	sib-. r |
	sib-. r |
	mib-. r |
	mib-. r |
	lab8-. r lab-. r |
	lab8-. r lab-. r |
	mib-. r mib-. r |
	mib-. r mib-. r |
	sib-. r sib-. r |
	sib-. r sib-. r |
	mib-. r r4 |
	r8 <mib sol>-. sol-. <mib sol>-. |
	lab8-. r lab-. r |
	lab8-. r lab-. r |
	mib-. r mib-. r |
	mib-. r mib-. r |
	sib-. r sib-. r |
	sib-. r sib-. r |
	<mib sol sib>-. r r4 |
	R2 |
	r4 <mib sib'>8-.-> r |
	<mib sib'>8-.-> r r4\fermata |
	
}

     
\score {<<
	\context Staff = flute <<
		\set Staff.instrumentName = "Trompette Si b "
		\transpose sib do'
		\trompette
		>>
	\context RhythmicStaff = tambourin <<
		\set Staff.instrumentName = "Tambourin  "
		\tambourin
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
      			tempoWholesPerMinute = #(ly:make-moment 72 4)
      		}
      	}
}

\paper {
	top-margin = 1.5\cm
	bottom-margin = 1.5\cm
	left-margin = 2.5\cm
	line-width = 16.0\cm
} 
