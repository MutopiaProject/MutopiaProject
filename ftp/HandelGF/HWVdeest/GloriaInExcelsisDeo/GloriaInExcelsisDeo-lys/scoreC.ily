global={\key f \major }
\score {
<<
	\new StaffGroup = "Strings" 
	<<
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violino 1" 
			\new Voice {\include "./C/layout.ily"}
			\new Voice {\global \clef treble \include "./C/n_v1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Violino 2"
			\new Voice {\global \clef treble \include "./C/n_v2.ily"}
		>>
	>>

	\new ChoirStaff = "Voices" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Soprano"
			\new Voice = "Soprano" {\global \clef treble \include "./C/n_s.ily"}
			\new Lyrics \lyricsto "Soprano" { \include "./C/l_s.ily" }
		>>
	>>
    \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\set Staff.instrumentName = \markup {\column { "Basso" "Continuo" }}
			\new Voice {\include "./C/n_fig.ily" }
			\new Voice {\global \clef bass \include "./C/n_bc.ily"}
		>>
	>>
>>
\header { piece = \markup \fontsize #1 \bold "3. Laudamus te" }	
\layout {\context {\Score \override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4) }}
 \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } 
 		 \context { \Voice \remove "Dynamic_performer"}
		}
}
