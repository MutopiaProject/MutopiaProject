global={\key g \major }
\score {
<<
	\new StaffGroup = "Strings" 
	<<
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violino 1" 
			\new Voice {\include "./D/layout.ily"}
			\new Voice {\global \clef treble \include "./D/n_v1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violino 2"
			\new Voice {\global \clef treble \include "./D/n_v2.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Viola 1"
			\new Voice {\global \clef alto \include "./D/n_va1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Viola 2"
			\new Voice {\global \clef alto \include "./D/n_va2.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violone"
			\new Voice {\global \clef bass \include "./D/n_vn.ily"}
		>>
	>>

	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Canto"
			\new Voice = "Canto" {\global \clef treble \include "./D/n_c.ily"}
			\new Lyrics \lyricsto "Canto" { \include "./D/l_c.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Alto"
			\new Voice = "Alto" {\global \clef treble \include "./D/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./D/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./D/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./D/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Basso"
			\new Voice = "Basso" {\global \clef bass \include "./D/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./D/l_b.ily" }
		>>
	>>
 \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\set Staff.instrumentName = \markup {
						\column { "Basso"
						\line { "Continuo" }}}
			\new Voice {\include "./D/n_fig.ily" }
			\new Voice {\global \clef bass \include "./D/n_bc.ily"}
		>>
	>>
>>
\header { piece = \markup \fontsize #1 \bold "IV. " }	
\layout{  %\context { \RemoveEmptyStaffContext }  
  }
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) }
 		 \context { \Voice \remove "Dynamic_performer"}
 		  }
}
