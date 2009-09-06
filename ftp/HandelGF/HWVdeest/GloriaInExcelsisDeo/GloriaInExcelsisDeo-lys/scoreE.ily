global={\key b \major }
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
	>>

	\new ChoirStaff = "Voices" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Soprano"
			\new Voice = "Soprano" {\global \clef treble \include "./E/n_s.ily"}
			\new Lyrics \lyricsto "Soprano" { \include "./E/l_s.ily" }
		>>
	>>
    \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\set Staff.instrumentName = \markup {\column { "Basso" "Continuo" }}
			\new Voice {\include "./E/n_fig.ily" }
			\new Voice {\global \clef bass \include "./E/n_bc.ily"}
		>>
	>>
>>
\header { piece = \markup \fontsize #1 \bold "5. Qui tollis peccata mundi" }	
\layout { }
 \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } 
 		 \context { \Voice \remove "Dynamic_performer"}
		}
}
