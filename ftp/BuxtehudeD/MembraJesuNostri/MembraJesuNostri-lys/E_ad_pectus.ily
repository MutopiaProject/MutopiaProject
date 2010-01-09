global={\key a \minor }
\bookpart {
\header { 
	title = "No.5 - Ad Pectus" %##f
	subtitle = "Sicut modo geniti" %##f
	composer = "D.Buxtehude" %##f
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #40
%	page-count = #9
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
			\new Voice {\include "./E_ad_pectus/layout.ily"}
			\new Voice {\global \clef treble \include "./E_ad_pectus/n_v1.ily"}
		>>
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"V2"
			\addIncipitClef #"treble" #"Violino 2"
			\new Voice {\global \clef treble \include "./E_ad_pectus/n_v2.ily"}
		>>
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"Vn"
			\addIncipitClef #"bass" #"Violon"
			\new Voice {\global \clef bass \include "./E_ad_pectus/n_vn.ily"}
		>>
%		\new Staff 
%		<< 
%			\set Staff.instrumentName = #"Violone"
%			\new Voice {\global \clef bass \include "./E_ad_pectus/n_vn.ily"}
%		>>
	>>

	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"A"
			\addIncipitClef #"alto" #"Alto"
			\new Voice = "Alto" {\global \clef treble \include "./E_ad_pectus/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./E_ad_pectus/l_a.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"T"
			\addIncipitClef #"tenor" #"Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./E_ad_pectus/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./E_ad_pectus/l_t.ily" }
		>>
		\new Staff 
		<<
			%\set Staff.shortInstrumentName =#"B"
			\addIncipitClef #"bass" #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./E_ad_pectus/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./E_ad_pectus/l_b.ily" }
		>>
	>>
    \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			%\set Staff.shortInstrumentName =#"B.C."
			\addIncipitClef #"bass" #"Continuo"
			\new Voice {\include "./E_ad_pectus/n_fig.ily" }
			\new Voice {\global \clef bass \include "./E_ad_pectus/n_bc.ily"}
		>>
	>>
>>
\layout { \context { \Staff
	\override TimeSignature #'break-visibility = #end-of-line-invisible
	}
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) }
 		 \context { \Voice \remove "Dynamic_performer"}
 		  }
}
}%bookpart


