\version "2.13.9"
mystaffsize = #18
%default settings page,font,layout
\include "style.ily"
\include "common.ily"

\header {
	title = "Membra Jesu nostri"
	subtitle = ##f
	composer = "D.Buxtehude"
	instrument = ##f
	tagline = ##f
}

%options
#(ly:set-option 'no-point-and-click #t)
%additional paper settings
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	indent = .75\cm
}
%addition Layout Params
\layout{	
	\context {
		\RemoveEmptyStaffContext
	}
	\context { \Staff
	\override TimeSignature #'break-visibility = #end-of-line-invisible
	}
}
mPageBreak = \break
mLineBreak= \break
mSBreak = {}

%No 1
global={
	\key c \dorian 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Membra Jesu nostri No.1 - Ad pedes" %##f
	subtitle = "Ecce super montes" %##f
	composer = "D.Buxtehude" %##f
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #7
%	page-count = #9
}
\score {
\new GrandStaff
<<
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 1"
			\new Voice {\include "./A_ad_pedes/layout.ily"}
			\new Voice = "CantoI" {\global \clef treble \include "./A_ad_pedes/n_c1.ily"}
			\new Lyrics \lyricsto "CantoI" { \include "./A_ad_pedes/l_c1.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 2"
			\new Voice = "CantoII" {\global \clef treble \include "./A_ad_pedes/n_c2.ily"}
			\new Lyrics \lyricsto "CantoII" { \include "./A_ad_pedes/l_c2.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Alto"
			\new Voice = "Alto" {\global \clef treble \include "./A_ad_pedes/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./A_ad_pedes/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./A_ad_pedes/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./A_ad_pedes/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./A_ad_pedes/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./A_ad_pedes/l_b.ily" }
		>>
	>>
>>
\layout { }
}%score
}%bookpart


%No 2
global={
	\key b \major 
	\set Score.skipBars = ##t 
}
\bookpart {
\header { 
	title = "Membra Jesu nostri No.2 - Ad genua" %##f
	subtitle = "Ad ubera portabimini" %##f
	composer = "D.Buxtehude" %##f
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #7
%	page-count = #9
}
\score {
\new GrandStaff
<<
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 1"
			\new Voice {\include "./B_ad_genua/layout.ily"}
			\new Voice = "CantoI" {\global \clef treble \include "./B_ad_genua/n_c1.ily"}
			\new Lyrics \lyricsto "CantoI" { \include "./B_ad_genua/l_c1.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 2"
			\new Voice = "CantoII" {\global \clef treble \include "./B_ad_genua/n_c2.ily"}
			\new Lyrics \lyricsto "CantoII" { \include "./B_ad_genua/l_c2.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Alto"
			\new Voice = "Alto" {\global \clef treble \include "./B_ad_genua/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./B_ad_genua/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./B_ad_genua/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./B_ad_genua/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./B_ad_genua/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./B_ad_genua/l_b.ily" }
		>>
	>>
>>
\layout { }
}%score
}%bookpart

%No 3
global={
	\key g \dorian 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Membra Jesu nostri No.3 - Ad Manus" %##f
	subtitle = "Quid sunt plagae istae" %##f
	composer = "D.Buxtehude" %##f
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #7
%	page-count = #9
}
\score {
\new GrandStaff
<<
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 1"
			\new Voice {\include "./C_ad_manus/layout.ily"}
			\new Voice = "CantoI" {\global \clef treble \include "./C_ad_manus/n_c1.ily"}
			\new Lyrics \lyricsto "CantoI" { \include "./C_ad_manus/l_c1.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 2"
			\new Voice = "CantoII" {\global \clef treble \include "./C_ad_manus/n_c2.ily"}
			\new Lyrics \lyricsto "CantoII" { \include "./C_ad_manus/l_c2.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Alto"
			\new Voice = "Alto" {\global \clef treble \include "./C_ad_manus/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./C_ad_manus/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./C_ad_manus/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./C_ad_manus/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./C_ad_manus/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./C_ad_manus/l_b.ily" }
		>>
	>>
>>
\layout { }
}%score
}%bookpart

%No 4
global={
	\key d \minor 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Membra Jesu nostri No.4 - Ad Latus" %##f
	subtitle = "Surge amica mea" %##f
	composer = "D.Buxtehude" %##f
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #7
%	page-count = #9
}
\score {
\new GrandStaff
<<
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 1"
			\new Voice {\include "./D_ad_latus/layout.ily"}
			\new Voice = "CantoI" {\global \clef treble \include "./D_ad_latus/n_c1.ily"}
			\new Lyrics \lyricsto "CantoI" { \include "./D_ad_latus/l_c1.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 2"
			\new Voice = "CantoII" {\global \clef treble \include "./D_ad_latus/n_c2.ily"}
			\new Lyrics \lyricsto "CantoII" { \include "./D_ad_latus/l_c2.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Alto"
			\new Voice = "Alto" {\global \clef treble \include "./D_ad_latus/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./D_ad_latus/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./D_ad_latus/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./D_ad_latus/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./D_ad_latus/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./D_ad_latus/l_b.ily" }
		>>
	>>
>>
\layout { }
}%score
}%bookpart

%No 5
global={
	\key a \minor 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Membra Jesu nostri No.5 - Ad Pectus" %##f
	subtitle = "Sicut modo geniti" %##f
	composer = "D.Buxtehude" %##f
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #7
%	page-count = #9
}
\score {
\new GrandStaff
<<
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = #"Alto"
			\new Voice {\include "./E_ad_pectus/layout.ily"}
			\new Voice = "Alto" {\global \clef treble \include "./E_ad_pectus/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./E_ad_pectus/l_a.ily" }
		>>
	
		\new Staff 
		<<
			\set Staff.instrumentName = #"Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./E_ad_pectus/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./E_ad_pectus/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./E_ad_pectus/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./E_ad_pectus/l_b.ily" }
		>>
	>>
>>
\layout { }
}%score
}%bookpart

%No 6
global={
	\key e \minor 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Membra Jesu nostri No.6 - Ad Cor" %##f
	subtitle = "Vulnerasti cor meum" %##f
	composer = "D.Buxtehude" %##f
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #7
%	page-count = #9
}
\score {
\new GrandStaff
<<
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 1"
			\new Voice {\include "./F_ad_cor/layout.ily"}
			\new Voice = "CantoI" {\global \clef treble \include "./F_ad_cor/n_c1.ily"}
			\new Lyrics \lyricsto "CantoI" { \include "./F_ad_cor/l_c1.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 2"
			\new Voice = "CantoII" {\global \clef treble \include "./F_ad_cor/n_c2.ily"}
			\new Lyrics \lyricsto "CantoII" { \include "./F_ad_cor/l_c2.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./F_ad_cor/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./F_ad_cor/l_b.ily" }
		>>
	>>
>>
\layout { }
}%score
}%bookpart

%No 7
global={
	\key c \dorian 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Membra Jesu nostri No.7 - Ad Faciem" %##f
	subtitle = "Illustra faciem tuam" %##f
	composer = "D.Buxtehude" %##f
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #7
%	page-count = #9
}
\score {
\new GrandStaff
<<
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 1"
			\new Voice {\include "./G_ad_faciem/layout.ily"}
			\new Voice = "CantoI" {\global \clef treble \include "./G_ad_faciem/n_c1.ily"}
			\new Lyrics \lyricsto "CantoI" { \include "./G_ad_faciem/l_c1.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Canto 2"
			\new Voice = "CantoII" {\global \clef treble \include "./G_ad_faciem/n_c2.ily"}
			\new Lyrics \lyricsto "CantoII" { \include "./G_ad_faciem/l_c2.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Alto"
			\new Voice = "Alto" {\global \clef treble \include "./G_ad_faciem/n_a.ily"}
			\new Lyrics \lyricsto "Alto" { \include "./G_ad_faciem/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./G_ad_faciem/n_t.ily"}
			\new Lyrics \lyricsto "Tenore" { \include "./G_ad_faciem/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = #"Basso"
			\new Voice = "Basso" {\global \clef bass \include "./G_ad_faciem/n_b.ily"}
			\new Lyrics \lyricsto "Basso" { \include "./G_ad_faciem/l_b.ily" }
		>>
	>>
>>

\layout { }
}%score
}%bookpart


