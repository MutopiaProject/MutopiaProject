\version "2.13.0"
\header {
 title = "Alles was ihr tut"
 subtitle = "BuxWV 4"
 composer = "D.Buxtehude"
 instrument = "CATB"
 tagline = ##f
}
mystaffsize = #18
\include "style.ily"
\include "common.ily"

%options
#(ly:set-option 'delete-intermediate-files #t)
#(ly:set-option 'no-point-and-click #t)

\paper{
	ragged-last-bottom = ##t
	#(define page-breaking ly:page-turn-breaking)
	page-count = #10
}

\layout{
 \context {
	\Score
	\override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
	}
	\context { \Lyrics
	\override VerticalAxisGroup #'minimum-Y-extent = #'(-0.4 . 0.0)
	}
}

global={
	\key g \major 
	\set Score.skipBars = ##t
}
\layout {
}

\markup { \fontsize #1 \bold "I. Sonata" tacet }

\score {
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Canto"
			\new Voice {\include "./B/layout.ily" }
			\new Voice = "Canto" {\global \clef treble \include "./B/n_c.ily" }
			\new Lyrics \lyricsto "Canto" { \include "./B/l_c.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Alto"
			\new Voice = "Alto" {\global \clef treble \include "./B/n_a.ily" }
			\new Lyrics \lyricsto "Alto" { \include "./B/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./B/n_t.ily" }
			\new Lyrics \lyricsto "Tenore" { \include "./B/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Basso"
			\new Voice = "Basso" {\global \clef bass \include "./B/n_b.ily" }
			\new Lyrics \lyricsto "Basso" { \include "./B/l_b.ily" }
		>>
	>>
	\header {piece = \markup \fontsize #1 \bold "II. Tutti" }	
}

\score {
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Canto"
			\new Voice {\include "./C/layout.ily" }
			\new Voice = "Canto" {\global \clef treble \include "./C/n_c.ily" }
			\new Lyrics \lyricsto "Canto" { \include "./C/l_c.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Alto"
			\new Voice = "Alto" {\global \clef treble \include "./C/n_a.ily" }
			\new Lyrics \lyricsto "Alto" { \include "./C/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./C/n_t.ily" }
			\new Lyrics \lyricsto "Tenore" { \include "./C/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Basso"
			\new Voice = "Basso" {\global \clef bass \include "./C/n_b.ily" }
			\new Lyrics \lyricsto "Basso" { \include "./C/l_b.ily" }
		>>
	>>
	\header {piece = \markup \fontsize #1 \bold "III. Aria" }	
}

\score {
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Canto"
			\new Voice {\include "./D/layout.ily" }
			\new Voice = "Canto" {\global \clef treble \include "./D/n_c.ily" }
			\new Lyrics \lyricsto "Canto" { \include "./D/l_c.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Alto"
			\new Voice = "Alto" {\global \clef treble \include "./D/n_a.ily" }
			\new Lyrics \lyricsto "Alto" { \include "./D/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./D/n_t.ily" }
			\new Lyrics \lyricsto "Tenore" { \include "./D/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Basso"
			\new Voice = "Basso" {\global \clef bass \include "./D/n_b.ily" }
			\new Lyrics \lyricsto "Basso" { \include "./D/l_b.ily" }
		>>
	>>
	\header {piece = \markup \fontsize #1 \bold "IV." }	
	
 \layout {
 \context {
 \RemoveEmptyStaffContext
 }
}
}

\score {
	\new ChoirStaff = "Choir" 
	<<	
		\new Staff 
		<<
			\set Staff.instrumentName = "Canto"
			\new Voice {\include "./E/layout.ily" }
			\new Voice = "Canto" {\global \clef treble \include "./E/n_c.ily" }
			\new Lyrics \lyricsto "Canto" { \include "./E/l_c.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Alto"
			\new Voice = "Alto" {\global \clef treble \include "./E/n_a.ily" }
			\new Lyrics \lyricsto "Alto" { \include "./E/l_a.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Tenore"
			\new Voice = "Tenore" {\global \clef "treble_8" \include "./E/n_t.ily" }
			\new Lyrics \lyricsto "Tenore" { \include "./E/l_t.ily" }
		>>
		\new Staff 
		<<
			\set Staff.instrumentName = "Basso"
			\new Voice = "Basso" {\global \clef bass \include "./E/n_b.ily" }
			\new Lyrics \lyricsto "Basso" { \include "./E/l_b.ily" }
		>>
	>>
	\header {piece = \markup \fontsize #1 \bold "V. Tutti" }	
}
