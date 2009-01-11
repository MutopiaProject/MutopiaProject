\version "2.10.0"
\include "catalan.ly" 
#(set-global-staff-size 16)

\header {
	mutopiatitle = "La Bayadère - Variation des Ombres"
 	mutopiacomposer = "MinkusLA"
 	mutopiainstrument = "Piano, Flute and Percussion"
 	source = "New arrangement"
 	style = "Classical"
 	copyright = "Public Domain"
 	maintainer = "Laurence Sardain"
 	lastupdated = "2006/Dec/21"
	title = "La Bayadère"
	subtitle = "Variation des Ombres (Acte II)"
	composer = "Ludwig MINKUS"
	arranger = "arr. Laurence Sardain"
 footer = "Mutopia-2006/12/22-895"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

flute = \relative do'' {
	\clef treble
	\key re\major
	\time 2/4
	\dynamicUp
	r2^\markup { \italic Allegro } |
	r4 r8 \times 2/3 { fad16(\mf sol fad } |
	\repeat volta 2 { mid8)-. fad-. la-. sol-. |
	fad-. red-. mi-. \times 2/3 { mi16( fad mi } |
	red8)-. mi-. sol-. fad-. |
	mi-. dod-. re-. \times 2/3 { re16( mi re } |
	dod8)-. mi-. re-. si-. |
	la-. si'-. la-. \times 2/3 { si,16( dod si } |
	la8-.) la'-. sol-. \times 2/3 { sol,16( la sol } |
	fad8-.) sol'-. fad-. \times 2/3 { fad16( sol fad } |
	mid8)-. fad-. la-. sol-. |
	fad-. red-. mi-. \times 2/3 { mi16( fad mi } |
	red8)-. mi-. sol-. fad-. |
	mi-. dod-. re-. \times 2/3 { re16( mi re } |
	dod8)-. mi-. re-. si-. |
	la-. si'-.
	 la-. \times 2/3 { si,16( dod si } 
	la8-.) fad'-. mi-. la,-. |
	re4-.-\coda re'8-. \times 2/3 { re16(^\p mi re } |
	%deuxième partie
	dod8-.) fad-. mi-. \times 2/3 { si16( dod si }  |
	la8-.) re-. dod-. la-. |
	mi16-. re-. mi -. fad-. sold-. la -. si -. dod-. |
	re4-. r8 \times 2/3 { re16( mi re } |
	si8-.) fad'-. mi-. \times 2/3 { si16( dod si } |
	sold8)-. dod-. si-. sold-. |
	mi16-. red-. mi-. fad-. sold-. la -. si-. sid-. |
	dod4-. r|
	dod8-.\mp fad-. mi-. \times 2/3 { si16( dod si }  |
	la8-.) re-. dod-. la-. |
	mi16-. fad-. sold-. la-. si-. dod-. re-. mi-. |
	fad4-. r |
	fad,8-.\mf dod'-. si-. fad-. |
	mi-. si'-. la-. la,-.|
	sold-. fad'-. mi-. sold,-. |
	la4-. la'8-. \times 2/3 { fad16( sol fad) } } |
	re4-.-\coda re'-.\bar"|."
}

triangle =  \relative do'{
	\time 2/4
	R2 |
	R2 |
	R2 |
	r8 do do4 |
	R2 |
	r8 do8 do4 | 
	R2 |
	r4 do4 |
	r do |
	r do |
	R2 |
	r8 do do4 |
	R2
	r8 do8 do4 |
	R2 |
	r4 do |
	r do |
	r do |
	%deuxième partie
	R2 |
	R2 |
	do 4 do |
	do do |
	R2 |
	R2 |
	do 4 do |
	do do |
	do 4 do |
	do do |
	do 4 do |
	do do |
	do 4 do |
	do do |
	do 4 do |
	do do |
	r4 do |
}

uppera = \relative do' { 
	\clef treble
	\key re\major
	\time 2/4
	r8\mp <la re fad>8 r <la re fad>8 |
	r8 <la re fad>8 r <la re fad>8 |
	r8 <la re fad>8 r <la re fad>8 |
	r8 <la dod sol'>8 r <la dod sol'>8 |
	r8 <la mi' sol>8 r <la mi' sol>8 |
	r8 <la re fad>8 r <la re fad>8 |
	r8 <la re la'>8 r <si re sold>8 |
	r8 <la dod sol'>8 r <la dod sol'>8 |
	r8 <la dod sol'>8 r <la dod sol'>8 |
	r8 <la re fad>8 r <la re fad>8 |
	%reprise
	r8 <la re fad>8 r <la re fad>8 |
	r8 <la dod sol'>8 r <la dod sol'>8 |
	r <fad dod' mi> r <fad lad mi'> |
	r <fad si re> r <fad si re> |
	r <sol si re mi> r <sold si re mid> |
	r8 <la re fad>8 r8 <la re fad>8 |
	r <la dod mi>8 r <la dod mi>8 |
	r4 <re fad la re>-. |
	%deuxième partie
	r8 <la dod mi la>\p r8 <la dod mi la> |
	r8 <la dod mi la> r8 <la dod mi la> |
	r8 <la dod mi la> r8 <la dod mi la> |
	r <re fad> r4 |
	r8 <si re sold> r8 <si re sold> |
	r8 <si re sold> r8 <re mi si'> |
	r <re mi si'> r <re mi sold> |
	r8 <la dod mi la> r8 <la dod mi la> |
	r8 <la dod mi la>\mp r8 <la dod mi la> |
	r8 <la dod mi la> r8 <la dod mi la> |
	r8 <la dod mi la> r8 <la dod mi la> |
	r <re fad> r <re fad> |
	r <fad si> r <fad si> |
	r8 <dod mi la> r8 <dod mi la> |
	r <re mi si'> r <re mi sold> |
	r4 <la' dod mi la>4-. |
	r <re fad la re>-.\bar"|."
}
     
lowera = \relative do {
	\clef bass
	\key re\major
	\time 2/4
	re4 la |
	re la |
	re la |
	mi' la, |
	dod la |
	re la |
	fad' fa |
	mi la, |
	mi' la, |
	re re |
	%reprise
	re la |
	mi' la, |
	lad fad |
	si la |
	sol sold |
	la la |
	la la |
	re4-\coda r4 |
	%deuxième partie
	la mi |
	la mi |
	la mi |
	si' mi, |
	si' mi, |
	si' mi, |
	sold mi 
	la mi |
	la mi |
	la mi |
	la mi |
	re' re |
	re re  |
	mi mi |
	mi mi |
	la, r |
	re-\coda r\bar"|."
	
}

     
\score {<<
	\context Staff = flute <<
		\set Staff.instrumentName = "Flte  "
		\flute
		>>
	\context RhythmicStaff = triangle <<
		\set Staff.instrumentName = "Triangle  "
		\triangle
		>>
	\context PianoStaff = prima <<
		\set PianoStaff.instrumentName = "Piano "
		\context Staff = uppera \uppera
		\context Staff = lowera \lowera
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
