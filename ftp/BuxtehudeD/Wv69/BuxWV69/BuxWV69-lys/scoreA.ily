%\include "common.ily"
global={\key d \dorian }
qBeam = {
%8tel in Halben, 16 in 4tel
#(override-auto-beam-setting '(end * * * *) 1 2 'Staff)
#(override-auto-beam-setting '(end 1 16 * *) 1 4 'Staff)
#(override-auto-beam-setting '(end 1 16 * *) 2 4 'Staff)
#(override-auto-beam-setting '(end 1 16 * *) 3 4 'Staff)
}           
\score {
<<
	\new StaffGroup = "Strings" 
	<<
		\new Staff 
		<< 
			\incipitClefII #"soprano" #"Viola di" #"gamba 1mo"
			\new Voice {\include "./A/layout.ily"}
			\new Voice {\global \qBeam \clef treble \include "./A/n_vg1.ily"}
		>>
		\new Staff 
		<< 
			\incipitClefII #"alto" #"Viola di" #"gamba 2da"
			\new Voice {\global \qBeam \clef alto \include "./A/n_vg2.ily"}
		>>
		\new Staff 
		<< 
			\incipitClefII #"alto" #"Viola di" #"gamba 3ta"
			\new Voice {\global \qBeam \clef alto \include "./A/n_vg3.ily"}
		>>
		\new Staff 
		<< 
			\incipitClefII #"tenor" #"Viola di" #"gamba 4te"
			\new Voice {\global \qBeam \clef alto \include "./A/n_vg4.ily"}
		>>
		\new Staff 
		<< 
			\incipitClefII #"tenor" #"Viola di" #"gamba 5ta"
			\new Voice {\global \qBeam \clef bass \include "./A/n_vg5.ily"}
		>>
		\new Staff 
		<< 
			\addIncipitClef #"bass" #"Violon"
			\new Voice {\global \qBeam \clef bass \include "./A/n_vn.ily"}
		>>
	>>

	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\addIncipitClef #"soprano" #"Soprano 1"
			\new Voice = "Soprano" {\global \clef treble \include "./A/n_s1.ily"}
			\new Lyrics \lyricsto "Soprano" { \include "./A/l_s1.ily" }
		>>
		\new Staff 
		<<
			\addIncipitClef #"soprano" #"Soprano 2"
			\new Voice = "Alto" {\global \clef treble \include "./A/n_s2.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./A/l_s2.ily" }
		>>
	>>
	\new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\addIncipitClef #"bass" #"B.C."
			\new Voice {\global \clef bass \include "./A/n_bc.ily"}
%			\new FiguredBass {\include "./A/n_fig.ily" }
		>>
	>>
>>
 \layout { indent = 2\cm
 }
 \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
