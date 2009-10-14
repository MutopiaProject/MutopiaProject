global={\key g \major }
\score {
<<
	\new StaffGroup = "Strings" 
	<<
		\new Staff 
		<< 
			\set Staff.instrumentName = \markup {
												\column {
												"Violino 1"
												"doppo"}
												} 
			\new Voice {\include "./C/layout.ily"}
			\new Voice {\global \clef treble \include "./C/n_v1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = \markup {
												\column {
												"Violino 2"
												"doppo"}
												} 
			\new Voice {\global \clef treble \include "./C/n_v2.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violone"
			\new Voice {\global \clef bass \include "./C/n_vn.ily"}
		>>
	>>

	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Canto"
			\new Voice = "Canto" {\global \clef treble \include "./C/n_c.ily"}
			\new Lyrics \lyricsto "Canto" { \include "./C/l_c.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Alto"
			\new Voice = "Alto" {\global \clef treble \include "./C/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./C/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./C/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./C/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Basso"
			\new Voice = "Basso" {\global \clef bass \include "./C/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./C/l_b.ily" }
		>>
	>>
 \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\set Staff.instrumentName = \markup {
						\column { "Basso"
						\line { "Continuo" }}}
			\new Voice {\include "./C/n_fig.ily" }
			\new Voice {\global \clef bass \include "./C/n_bc.ily"}
		>>
	>>
>>
\header { piece = \markup \fontsize #1 \bold "III. Aria" }	
\layout{ }
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) }
 		 \context { \Voice \remove "Dynamic_performer"}
 		  }
}
