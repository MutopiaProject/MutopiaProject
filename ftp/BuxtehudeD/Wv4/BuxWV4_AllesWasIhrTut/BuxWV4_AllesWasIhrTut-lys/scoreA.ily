global={\key g \major }
\score {
<<
	\new StaffGroup = "Strings" 
	<<
		\new Staff 
		<< 
			\addIncipitClef #"treble"  #"Violino 1" 
			\new Voice {\include "./A/layout.ily"}
			\new Voice {\global \clef treble \include "./A/n_v1.ily"}
		>>
		\new Staff 
		<< 
			\addIncipitClef #"treble"  #"Violino 2"
			\new Voice {\global \clef treble \include "./A/n_v2.ily"}
		>>
		\new Staff 
		<< 
			\addIncipitClef #"alto"  #"Viola 1" 
			\new Voice {\global \clef alto \include "./A/n_va1.ily"}
		>>
		\new Staff 
		<< 
			\addIncipitClef #"tenor"  #"Viola 2"
			\new Voice {\global \clef alto \include "./A/n_va2.ily"}
		>>
		\new Staff 
		<< 
			\addIncipitClef #"bass"  #"Violone"
			\new Voice {\global \clef bass \include "./A/n_vn.ily"}
		>>
	>>

 \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\addIncipitClef #"bass" #"B.C."
			\new Voice {\include "./A/n_fig.ily" }
			\new Voice {\global \clef bass \include "./A/n_bc.ily"}
		>>
	>>
>>
\header { piece = \markup \fontsize #1 \bold "I. Sonata" }	
\layout{ }
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 140 4) }
 		 \context { \Voice \remove "Dynamic_performer"}
 		  }
}
