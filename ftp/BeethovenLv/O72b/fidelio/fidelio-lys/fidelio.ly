%%% Many thanks to the Case Western Reserve University Kulas Music library
%%% for providing the old texts that would otherwise rot on the shelves.

\version "2.18.0"
#(set-global-staff-size 14)

\include "english.ly"
\include "defs.ly"

\include "flauti.ly"
\include "oboi.ly"
\include "clarinettiA.ly"
\include "fagotti.ly"
\include "corniE.ly"
\include "corniE2.ly"
\include "trombeC.ly"
\include "trombone_tenore.ly"
\include "trombone_basso.ly"
\include "timpani.ly"
\include "violino1.ly"
\include "violino2.ly"
\include "viola.ly"
\include "violoncello.ly"
\include "contrabasso.ly"

\include "header.ly"

\paper {
  left-margin = 18
  right-margin = 14
}  

\score {
  <<
    \context StaffGroup ="woodwinds" <<
      \context Staff ="flauti" <<
      	\override Score.MetronomeMark.transparent = ##t
      	\set Staff.midiInstrument = #"flute"
		\set Staff.instrumentName = \markup { \center-column { "2 Flauti" } }
		\set Staff.shortInstrumentName = \markup { \center-column { "Fl." } }
		\theFlutes >>

      \context Staff ="oboi" <<
      	\set Staff.midiInstrument = #"oboe"
      	\set Staff.instrumentName = \markup { \center-column { "2 Oboi" } }
      	\set Staff.shortInstrumentName = \markup { \center-column { "Ob." } }
      	\theOboes >>
      \context Staff = "clarinetti" <<
      	\set Staff.midiInstrument = #"clarinet"
      	\set Staff.instrumentName = \markup { \center-column { "2 Clarinetti" "in A" } }
      	\set Staff.shortInstrumentName = \markup { \center-column { "Cl." } }
      	\theClarinets >>
      \context Staff = "fagotti" <<
      	\set Staff.midiInstrument = #"bassoon"
      	\set Staff.instrumentName = \markup { \center-column { "2 Fagotti" } }
      	\set Staff.shortInstrumentName = \markup { \center-column { "Fg." } }
      	\theBassoons >>
    >>

    \context StaffGroup ="brass" <<
     \context GrandStaff = "horns" <<
		\context Staff = "corni_first" <<
			\set Staff.midiInstrument = #"french horn"
			\set Staff.instrumentName = \markup { \center-column { "Corni in E" "I  II" } }
			\set Staff.shortInstrumentName = \markup { \center-column { "Cor. (E)" } }
			\theHornsfirst >>
		\context Staff = "corni_second" <<
			\set Staff.midiInstrument = #"french horn"
			\set Staff.instrumentName = \markup { \center-column { "III IV" } }
			\theHornssecond >>
		>>
		\context Staff = "trumpet" <<
			\set Staff.midiInstrument = #"trumpet"
			\set Staff.instrumentName = \markup { \center-column { "2 Trombe" "in C" } }
			\set Staff.shortInstrumentName = \markup { \center-column { "Trbe. (C)" } }
			\theTrumpets >>
		\context GrandStaff = "trombones" <<
			\context Staff = "tenor_trombone" <<
				\set Staff.midiInstrument = #"trombone"
				\set Staff.instrumentName = \markup {
                  							 \center-column { Trombone Tenore } }
				\theTenorTrombones >>
				\set Staff.shortInstrumentName = \markup { \center-column { "Trbni" } }
			\context Staff = "bass_trombone" <<
				\set Staff.midiInstrument = #"trombone"
				\set Staff.instrumentName = \markup {
                  							 \center-column { Trombone Basso } }
				\theBassTrombones >>
		>>
    >>
    \context StaffGroup ="timpani_group" <<
      \context Staff ="timpani" <<
      	\set Staff.midiInstrument = #"timpani"
      	\set Staff.instrumentName = \markup { \center-column { "Timpani" "in E-H" } }
      	\set Staff.shortInstrumentName = \markup { \center-column { "Timp." } }
      	\theTimpani
      	>>
    >>
    \context StaffGroup ="strings" <<
    	\context GrandStaff = "upper_strings" <<
    		\context Staff = "violin_one" <<
    			\set Staff.midiInstrument = #"string ensemble 1"
				\set Staff.instrumentName = \markup { \center-column { "Violino I" } }
				\set Staff.shortInstrumentName = \markup { \center-column { "Vl." } }
				\theFirstViolins >>
    		\context Staff = "violin_two" <<
    			\set Staff.midiInstrument = #"string ensemble 1"
				\set Staff.instrumentName = \markup { \center-column { "Violino II" } }
				\theSecondViolins >>
		>>
	\context Staff = "viola" <<
		\set Staff.midiInstrument = #"string ensemble 1"
			\set Staff.instrumentName = \markup { \center-column { "Viola" } }
			\set Staff.shortInstrumentName = \markup { \center-column { "Vla." } }
			\theViolas >>

		\context GrandStaff = "lower_strings" <<
			\context Staff = "violincello" <<
				\set Staff.midiInstrument = #"string ensemble 1"
				\set Staff.instrumentName = \markup { \center-column { "Violoncello" } }
				\set Staff.shortInstrumentName = \markup { \center-column { "Vc." } }
				\theCellos >>

			\context Staff ="contrabass" <<
	      		\set Staff.midiInstrument = #"contrabass"
	      		\set Staff.instrumentName = \markup { \center-column { "Contrabasso" } }
	      		\set Staff.shortInstrumentName = \markup { \center-column { "B." } }
	      		\theBass >>
	     >>
	  >>
 >>

  \midi {
    \tempo 4 = 280
    }

  \layout {
	indent = 20.0\mm
	%textheight = 300.0\mm
%	line-width = 470\pt
%	papersize = "a4"

    \context { \Staff \RemoveEmptyStaves }
    \context {
      \Score
      \override BarNumber.padding = #3
    }
  }
}
