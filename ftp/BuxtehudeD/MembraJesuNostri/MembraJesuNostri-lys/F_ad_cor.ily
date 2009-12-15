global={\key e \minor }
\bookpart {
\header { 
	title = "No.6 - Ad Cor" %##f
	subtitle = "Vulnerasti cor meum" %##f
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
			\addIncipitClefII #"soprano" #"Viola" #"da gamba 1" 
			\new Voice {\include "./F_ad_cor/layout.ily"}
			\new Voice {\global \clef treble \include "./F_ad_cor/n_vg1.ily"}
		>>
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"V2"
			\addIncipitClefII #"alto" #"Viola" #"da gamba 2" 
			\new Voice {\global \clef alto \include "./F_ad_cor/n_vg2.ily"}
		>>
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"Vg"
			\addIncipitClefII #"tenor" #"Viola" #"da gamba 3"
			\new Voice {\global \clef alto \include "./F_ad_cor/n_vg3.ily"}
		>>
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"Vg"
			\addIncipitClefII #"tenor" #"Viola" #"da gamba 4"
			\new Voice {\global \clef bass \include "./F_ad_cor/n_vg4.ily"}
		>>
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"Vg"
			\addIncipitClefII #"tenor" #"Viola" #"da gamba 5"
			\new Voice {\global \clef bass \include "./F_ad_cor/n_vg5.ily"}
		>>
	>>

	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"C1"
			\addIncipitClef #"soprano" #"Canto 1"
			\new Voice = "CantoI" {\global \clef treble \include "./F_ad_cor/n_c1.ily"}
			\new Lyrics \lyricsto "CantoI" { \include "./F_ad_cor/l_c1.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"C2"
			\addIncipitClef #"soprano" #"Canto 2"
			\new Voice = "CantoII" {\global \clef treble \include "./F_ad_cor/n_c2.ily"}
			\new Lyrics \lyricsto "CantoII" { \include "./F_ad_cor/l_c2.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"B"
			\addIncipitClef #"bass" #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./F_ad_cor/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./F_ad_cor/l_b.ily" }
		>>
	>>
    \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"B.C."
			\addIncipitClef #"bass" #"Continuo"
			\new Voice {\include "./F_ad_cor/n_fig.ily" }
			\new Voice {\global \clef bass \include "./F_ad_cor/n_bc.ily"}
		>>
	>>
>>
\layout { \context { \Staff
	\override TimeSignature #'break-visibility = #end-of-line-invisible
	}
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) }
 		 \context { \Voice \remove "Dynamic_performer"}
 		  }
}
}%bookpart


