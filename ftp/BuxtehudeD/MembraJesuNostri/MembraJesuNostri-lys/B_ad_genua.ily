global={\key b \major }
\bookpart {
\header { 
	title = "No.2 - Ad genua" %##f
	subtitle = "Ad ubera portabimini" %##f
	composer = "D.Buxtehude" %##f
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #33
%	page-count = #12
	%	indent = .75\cm
}
\score {
\new GrandStaff
<<
	\new StaffGroup = "Strings" 
	<<
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"V1"
			\addIncipitClef #"treble" #"Violino 1" 
			\new Voice {\include "./B_ad_genua/layout.ily"}
			\new Voice {\global \clef treble \include "./B_ad_genua/n_v1.ily"}
		>>
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"V2"
			\addIncipitClef #"treble" #"Violino 2"
			\new Voice {\global \clef treble \include "./B_ad_genua/n_v2.ily"}
		>>
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"Vn"
			\addIncipitClef #"bass" #"Violon"
			\new Voice {\global \clef bass \include "./B_ad_genua/n_vn.ily"}
		>>
	>>

	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"C1"
			\addIncipitClef #"soprano" #"Canto 1"
			\new Voice = "CantoI" {\global \clef treble \include "./B_ad_genua/n_c1.ily"}
			\new Lyrics \lyricsto "CantoI" { \include "./B_ad_genua/l_c1.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"C2"
			\addIncipitClef #"soprano" #"Canto 2"
			\new Voice = "CantoII" {\global \clef treble \include "./B_ad_genua/n_c2.ily"}
			\new Lyrics \lyricsto "CantoII" { \include "./B_ad_genua/l_c2.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"A"
			\addIncipitClef #"alto" #"Alto"
			\new Voice = "Alto" {\global \clef treble \include "./B_ad_genua/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./B_ad_genua/l_a.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"T"
			\addIncipitClef #"tenor" #"Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./B_ad_genua/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./B_ad_genua/l_t.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"B"
			\addIncipitClef #"bass" #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./B_ad_genua/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./B_ad_genua/l_b.ily" }
		>>
	>>
    \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"B.C."
			\addIncipitClef #"bass" #"Continuo"
			\new Voice {\include "./B_ad_genua/n_fig.ily" }
			\new Voice {\global \clef bass \include "./B_ad_genua/n_bc.ily"}
		>>
	>>
>>
\layout { \context { \Staff
	\override TimeSignature #'break-visibility = #end-of-line-invisible
	}
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 2) }
 		 \context { \Voice \remove "Dynamic_performer"}
 		  }
}
}%bookpart


