global={\key g \major }
\score {
<<
	\new StaffGroup = "Strings" 
	<<
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violino 1" 
			\new Voice {\include "./E/layout.ily"}
			\new Voice {\global \clef treble \include "./E/n_v1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violino 2"
			\new Voice {\global \clef treble \include "./E/n_v2.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Viola 1" 
			\new Voice {\global \clef alto \include "./E/n_va1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Viola 2"
			\new Voice {\global \clef alto \include "./E/n_va2.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violone"
			\new Voice {\global \clef bass \include "./E/n_vn.ily"}
		>>
	>>

	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Canto"
			\new Voice = "Canto" {\global \clef treble \include "./E/n_c.ily"}
			\new Lyrics \lyricsto "Canto" { \include "./E/l_c.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Alto"
			\new Voice = "Alto" {\global \clef treble \include "./E/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./E/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./E/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./E/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Basso"
			\new Voice = "Basso" {\global \clef bass \include "./E/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./E/l_b.ily" }
		>>
	>>
 \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\set Staff.instrumentName = \markup {
						\column { "Basso"
						\line { "Continuo" }}}
			\new Voice {\include "./E/n_fig.ily" }
			\new Voice {\global \clef bass \include "./E/n_bc.ily"}
		>>
	>>
>>
\header { piece = \markup \fontsize #1 \bold "V. Tutti" }	
\layout{ }
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 90 4) }
 		 \context { \Voice \remove "Dynamic_performer"}
 		  }
}
