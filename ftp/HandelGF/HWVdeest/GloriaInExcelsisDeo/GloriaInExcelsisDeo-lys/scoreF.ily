global={\key b \major }
\score {
<<
	\new StaffGroup = "Strings" 
	<<
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violino 1" 
			\new Voice {\include "./F/layout.ily"}
			\new Voice {\global \clef treble \include "./F/n_v1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violino 2"
			\new Voice {\global \clef treble \include "./F/n_v2.ily"}
		>>
	>>

	\new ChoirStaff = "Voices" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Soprano"
			\new Voice = "Soprano" {\global \clef treble \include "./F/n_s.ily"}
			\new Lyrics \lyricsto "Soprano" { \include "./F/l_s.ily" }
		>>
	>>
    \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\set Staff.instrumentName = \markup {\column { "Basso" "Continuo" }}
			\new Voice {\include "./F/n_fig.ily" }
			\new Voice {\global \clef bass \include "./F/n_bc.ily"}
		>>
	>>
>>
\header { piece = \markup \fontsize #1 \bold "6. Quoniam tu solus sanctus" }	
\layout { }
 \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } 
 		 \context { \Voice \remove "Dynamic_performer"}
		}
}
