\version "2.12.2"

\include "defs.ly"

\include "beet_sexteth1_1.ly"
\include "beet_sexteth2_1.ly"
\include "beet_sextetv1_1.ly"
\include "beet_sextetv2_1.ly"
\include "beet_sextetvl_1.ly"
\include "beet_sextetc_1.ly"

\include "beet_sexteth1_2.ly"
\include "beet_sexteth2_2.ly"
\include "beet_sextetv1_2.ly"
\include "beet_sextetv2_2.ly"
\include "beet_sextetvl_2.ly"
\include "beet_sextetc_2.ly"

\include "beet_sexteth1_3.ly"
\include "beet_sexteth2_3.ly"
\include "beet_sextetv1_3.ly"
\include "beet_sextetv2_3.ly"
\include "beet_sextetvl_3.ly"
\include "beet_sextetc_3.ly"

\paper
{
  %#(define page-breaking ly:minimal-breaking)
  %#(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
  between-system-space = 0.5\cm
  between-system-padding = #0
  page-limit-inter-system-space = ##t
  page-limit-inter-system-space-factor = 1.5
}

instrument = "Score"
\include "header.ly"

#(set-global-staff-size 14)

\score {
<<
\new GrandStaff
     <<
     \new Staff <<
     	  	\set Staff.instrumentName = "Horn 1 in Es"
  		\set Staff.shortInstrumentName = "Hn. 1"
     	  	\firstHornI
		\tempoMark "Allegro con brio"
		\set Staff.midiInstrument = "french horn"
		\transposition ees
		>>
     \new Staff <<
     	  	\set Staff.instrumentName = "Horn 2 in Es"
  		\set Staff.shortInstrumentName = "Hn. 2"
     	  	\secondHornI
		\set Staff.midiInstrument = "french horn"
		\transposition ees
		>>
     >>

\new GrandStaff
     <<
     \new Staff <<
      	  	\set Staff.instrumentName = "Violin 1"
  		\set Staff.shortInstrumentName = "Vl. 1"    	  	
		\firstViolinI
		\set Staff.midiInstrument = "violin"
		>>
     \new Staff <<
      	  	\set Staff.instrumentName = "Violin 2"
  		\set Staff.shortInstrumentName = "Vl. 2"    	  	
		\secondViolinI
		\set Staff.midiInstrument = "violin"
		>>
     >>
     \new Staff <<
       	  	\set Staff.instrumentName = "Viola"
  		\set Staff.shortInstrumentName = "Vla"   	  	
		\ViolaI
		\set Staff.midiInstrument = "violin"
		>> %For some reason, the viola fails on my computer
     \new Staff <<
       	  	\set Staff.instrumentName = "Cello"
  		\set Staff.shortInstrumentName = "Cell."   	  	
		\CelloI
		\set Staff.midiInstrument = "cello"
		>>
>>
  \midi
    {
      \context
      {
	 \Score
         tempoWholesPerMinute = #(ly:make-moment 140 4)
         \remove "Dynamic_performer"
	}
    }
  \layout {}
}


\score {

<<
\new GrandStaff
     <<
     \new Staff <<
     	  	\set Staff.instrumentName = "Horn 1 in Es"
  		\set Staff.shortInstrumentName = "Hn. 1"
     	  	\firstHornII
		\tempoMark "Adagio"	
		\set Staff.midiInstrument = "french horn"
		\transposition ees
		>>
     \new Staff <<
     	  	\set Staff.instrumentName = "Horn 2 in Es"
  		\set Staff.shortInstrumentName = "Hn. 2"
     	  	\secondHornII
		\set Staff.midiInstrument = "french horn"
		\transposition ees
		>>
     >>

\new GrandStaff
     <<
     \new Staff <<
      	  	\set Staff.instrumentName = "Violin 1"
  		\set Staff.shortInstrumentName = "Vl. 1"    	  	
		\firstViolinII
		\set Staff.midiInstrument = "violin"
		>>
     \new Staff <<
      	  	\set Staff.instrumentName = "Violin 2"
  		\set Staff.shortInstrumentName = "Vl. 2"    	  	
		\secondViolinII
		\set Staff.midiInstrument = "violin"
		>>
     >>
     \new Staff <<
       	  	\set Staff.instrumentName = "Viola"
  		\set Staff.shortInstrumentName = "Vla"   	  	
		\ViolaII
		\set Staff.midiInstrument = "violin"
		>>
     \new Staff <<
       	  	\set Staff.instrumentName = "Cello"
  		\set Staff.shortInstrumentName = "Cell."   	  	
		\CelloII
		\set Staff.midiInstrument = "cello"
		>>
>>
  \midi
    {
      \context
      {
        \Score
         tempoWholesPerMinute = #(ly:make-moment 80 4)
        \remove "Dynamic_performer"
	}
    }
  \layout {}
}


\score {
<<
\new GrandStaff
     <<
     \new Staff <<
     	  	\set Staff.instrumentName = "Horn 1 in Es"
  		\set Staff.shortInstrumentName = "Hn. 1"
     	  	\firstHornIII
		\tempoMark "Allegro"
		\set Staff.midiInstrument = "french horn"
		\transposition ees
		>>
     \new Staff <<
     	  	\set Staff.instrumentName = "Horn 2 in Es"
  		\set Staff.shortInstrumentName = "Hn. 2"
     	  	\secondHornIII
		\set Staff.midiInstrument = "french horn"
		\transposition ees
		>>
     >>

\new GrandStaff
     <<
     \new Staff <<
      	  	\set Staff.instrumentName = "Violin 1"
  		\set Staff.shortInstrumentName = "Vl. 1"    	  	
		\firstViolinIII
		\set Staff.midiInstrument = "violin"
		>>
     \new Staff <<
      	  	\set Staff.instrumentName = "Violin 2"
  		\set Staff.shortInstrumentName = "Vl. 2"    	  	
		\secondViolinIII
		\set Staff.midiInstrument = "violin"
		>>
     >>
     \new Staff <<
       	  	\set Staff.instrumentName = "Viola"
  		\set Staff.shortInstrumentName = "Vla"   	  	
		\ViolaIII
		\set Staff.midiInstrument = "violin"
		>>
     \new Staff <<
       	  	\set Staff.instrumentName = "Cello"
  		\set Staff.shortInstrumentName = "Cell."   	  	
		\CelloIII
		\set Staff.midiInstrument = "cello"
		>>
>>

  \midi
    {
      \context
      {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 120 4)
        \remove "Dynamic_performer"
	}
    }
  \layout {}
}
