global={\key c \dorian }
\bookpart {
\header { 
	title = "No.7 - Ad Faciem" %##f
	subtitle = "Illustra faciem tuam" %##f
	composer = "D.Buxtehude" %##f
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #31
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
			\new Voice {\include "./G_ad_faciem/layout.ily"}
			\new Voice {\global \clef treble \include "./G_ad_faciem/n_v1.ily"}
		>>
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"V2"
			\addIncipitClef #"treble" #"Violino 2"
			\new Voice {\global \clef treble \include "./G_ad_faciem/n_v2.ily"}
		>>
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"Vn"
			\addIncipitClef #"bass" #"Violon"
			\new Voice {\global \clef bass \include "./G_ad_faciem/n_vn.ily"}
		>>
	>>

	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"C1"
			\addIncipitClef #"soprano" #"Canto 1"
			\new Voice = "CantoI" {\global \clef treble \include "./G_ad_faciem/n_c1.ily"}
			\new Lyrics \lyricsto "CantoI" { \include "./G_ad_faciem/l_c1.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"C2"
			\addIncipitClef #"soprano" #"Canto 2"
			\new Voice = "CantoII" {\global \clef treble \include "./G_ad_faciem/n_c2.ily"}
			\new Lyrics \lyricsto "CantoII" { \include "./G_ad_faciem/l_c2.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"A"
			\addIncipitClef #"alto" #"Alto"
			\new Voice = "Alto" {\global \clef treble \include "./G_ad_faciem/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./G_ad_faciem/l_a.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"T"
			\addIncipitClef #"tenor" #"Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./G_ad_faciem/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./G_ad_faciem/l_t.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"B"
			\addIncipitClef #"bass" #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./G_ad_faciem/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./G_ad_faciem/l_b.ily" }
		>>
	>>
    \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"B.C."
			\addIncipitClef #"bass" #"Continuo"
			\new Voice {\include "./G_ad_faciem/n_fig.ily" }
			\new Voice {\global \clef bass \include "./G_ad_faciem/n_bc.ily"}
		>>
	>>
>>
\layout { \context { \Staff
	\override TimeSignature #'break-visibility = #end-of-line-invisible
	}
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) }
 		 \context { \Voice \remove "Dynamic_performer"}
 		  }
}
\markup \fill-line \italic {" " "SOLI DEO GLORIA"}

}%bookpart


