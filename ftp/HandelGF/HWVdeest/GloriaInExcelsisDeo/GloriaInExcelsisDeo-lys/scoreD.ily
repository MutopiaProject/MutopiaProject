global={\key f \major }
\score {
<<
	\new ChoirStaff = "Voices" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Soprano"
			\new Voice {\include "./D/layout.ily"}
			\new Voice = "Soprano" {\global \clef treble \include "./D/n_s.ily"}
			\new Lyrics \lyricsto "Soprano" { \include "./D/l_s.ily" }
		>>
	>>
    \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\set Staff.instrumentName = \markup {\column { "Basso" "Continuo" }}
			\new Voice {\include "./D/n_fig.ily" }
			\new Voice {\global \clef bass \include "./D/n_bc.ily"}
		>>
	>>
>>
\header { piece = \markup \fontsize #1 \bold "4. Domine Deus" }	
\layout {\context {\Score \override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4) }}
 \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 90 4) } 
 		 \context { \Voice \remove "Dynamic_performer"}
		}
}
