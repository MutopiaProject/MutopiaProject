global={\key g \major }
\score {
<<
	\new StaffGroup = "Strings" 
	<<
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violino 1" 
			\new Voice {\include "./B/layout.ily"}
			\new Voice {\global \clef treble \include "./B/n_v1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violino 2"
			\new Voice {\global \clef treble \include "./B/n_v2.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Viola 1" 
			\new Voice {\global \clef alto \include "./B/n_va1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Viola 2"
			\new Voice {\global \clef alto \include "./B/n_va2.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violone"
			\new Voice {\global \clef bass \include "./B/n_vn.ily"}
		>>
	>>

	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\addIncipitClef #"soprano" "Canto"
			\new Voice = "Canto" {\global \clef treble \include "./B/n_c.ily"}
			\new Lyrics \lyricsto "Canto" { \include "./B/l_c.ily" }
		>>
		\new Staff 
		<<
			\addIncipitClef #"alto" "Alto"
			\new Voice = "Alto" {\global \clef treble \include "./B/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./B/l_a.ily" }
		>>
		\new Staff 
		<<
			\addIncipitClef #"tenor"  "Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./B/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./B/l_t.ily" }
		>>
		\new Staff 
		<<
			\addIncipitClef #"bass" "Basso"
			\new Voice = "Basso" {\global \clef bass \include "./B/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./B/l_b.ily" }
		>>
	>>
 \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\set Staff.instrumentName = \markup {
						\column { "Basso"
						\line { "Continuo" }}}
			\new Voice {\include "./B/n_fig.ily" }
			\new Voice {\global \clef bass \include "./B/n_bc.ily"}
		>>
	>>
>>
\header { piece = \markup \fontsize #1 \bold "II. Tutti" }	
\layout{ }
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 90 4) }
 		 \context { \Voice \remove "Dynamic_performer"}
 		  }
}
