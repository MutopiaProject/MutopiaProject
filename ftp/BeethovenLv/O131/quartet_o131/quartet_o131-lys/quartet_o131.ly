%{
=== NOTES ===

I have done my best to preserve the appearance of the Eulenburg 1911 edition of this work. Two important differences should be noted, however:

* mvmt IV, m185: The viola and cello parts should have slurs tying back to the start of the repeat block. There is no way to interpret this in lilypond.
* mvmt VII, m69: Ideally the 'riten.' would be 'ritardando' extended through a dotted line for three measures. I could not manage to interpret this.

Finally, there are working parts, something the Eulenburg did not come with. For the most part they are useable, if a bit sloppy. If you would like to use these parts for your own use, consider contacting me (spamguy@foxchange.com) so I can clean them up.

Thanks -- W.O., Aug 2005
%}

\version "2.6.2"

#(set-global-staff-size 16)
\include "english.ly"
\include "defs.ly"

\include "1global.ly"
\include "1violino1.ly"
\include "1violino2.ly"
\include "1viola.ly"
\include "1violoncello.ly"

\include "2global.ly"
\include "2violino1.ly"
\include "2violino2.ly"
\include "2viola.ly"
\include "2violoncello.ly"

\include "3global.ly"
\include "3violino1.ly"
\include "3violino2.ly"
\include "3viola.ly"
\include "3violoncello.ly"

\include "4global.ly"
\include "4violino1.ly"
\include "4violino2.ly"
\include "4viola.ly"
\include "4violoncello.ly"

\include "5global.ly"
\include "5violino1.ly"
\include "5violino2.ly"
\include "5viola.ly"
\include "5violoncello.ly"

\include "6global.ly"
\include "6violino1.ly"
\include "6violino2.ly"
\include "6viola.ly"
\include "6violoncello.ly"

\include "7global.ly"
\include "7violino1.ly"
\include "7violino2.ly"
\include "7viola.ly"
\include "7violoncello.ly"

\paper {
	raggedbottom = ##f
	raggedlastbottom = ##f
	linewidth = 7.12 \in
}
	
\book {
	\header { \include "header.ly" }
	
	\score {
	    \simultaneous {
			\new StaffGroup <<
				\new Staff <<
					\set Staff.instrument = \markup { "Violino I." }
					\set Staff.midiInstrument = #"violin"
					\parameters
					\mIbarlines
					\mIspacing
					\new Voice { \mIViolinOne }
				>>
				
				\new Staff <<
					\set Staff.instrument = \markup { "Violino II." }
					\set Staff.midiInstrument = #"violin"
					\mIbarlines
					\new Voice { \mIViolinTwo }
				>>
				
				\new Staff <<
					\set Staff.instrument = \markup { "Viola." }
					\set Staff.midiInstrument = #"violin"
					\mIbarlines
					\new Voice { \mIViola }
				>>
				
				\new Staff <<
					\set Staff.instrument = \markup { "Violoncello." }
					\set Staff.midiInstrument = #"cello"
					\mIbarlines
					\new Voice { \mICello }
				>>
			>>
	    }
	
	    \layout { 
	    	\context { \Score \override InstrumentName #'space-alist = #'((left-edge . (extra-space . 2.3))) }
	    }
	    
	    \midi { \tempo 4 = 70 }
	}
	
	%%% MOVEMENT II %%%
	
	\score {
	    \simultaneous {
			\new StaffGroup <<
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\parameters
					\mIIbarlines
					\mIIspacing
					\new Voice { \mIIViolinOne }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mIIbarlines
					\new Voice { \mIIViolinTwo }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mIIbarlines
					\new Voice { \mIIViola }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"cello"
					\mIIbarlines
					\new Voice { \mIICello }
				>>
			>>
	    }
	
	    \layout { 
	    	\context { \Score \override InstrumentName #'space-alist = #'((left-edge . (extra-space . 2.3))) }
	    }
	    
	    \midi { \tempo 4 = 180 }
	}
	
	%%% MOVEMENT III %%%
	
	\score {
	    \simultaneous {
			\new StaffGroup <<
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\parameters
					\mIIIbarlines
					\mIIIspacing
					\new Voice { \mIIIViolinOne }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mIIIbarlines
					\new Voice { \mIIIViolinTwo }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mIIIbarlines
					\new Voice { \mIIIViola }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"cello"
					\mIIIbarlines
					\new Voice { \mIIICello }
				>>
			>>
	    }
	
	    \layout { }
	    
	    \midi { \tempo 4 = 110 }
	}
	
	%%% MOVEMENT IV %%%

	\score {
	    \simultaneous {
			\new StaffGroup <<
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\parameters
					\mIVbarlines
					\mIVspacing
					\new Voice { \mIVViolinOne }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mIVbarlines
					\new Voice { \mIVViolinTwo }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mIVbarlines
					\new Voice { \mIVViola }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"cello"
					\mIVbarlines
					\new Voice { \mIVCello }
				>>
			>>
	    }
	
	    \layout { }
	    
	    \midi { \tempo 4 = 50 }
	}

	%%% MOVEMENT V %%%
	
	\score {
		\simultaneous {
			\new StaffGroup <<
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\parameters
					\mVbarlines
					\mVspacing
					\new Voice { \mVViolinOne }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mVbarlines
					\new Voice { \mVViolinTwo }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mVbarlines
					\new Voice { \mVViola }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"cello"
					\mVbarlines
					\new Voice { \mVCello }
				>>
			>>
	    }
	
	    \layout {  }
	    
	    \midi { \tempo 2 = 235 }
	}
	
	%%% MOVEMENT VI %%%
	
	\score {
		\simultaneous {
			\new StaffGroup <<
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\parameters
					\mVIbarlines
					\mVIspacing
					\new Voice { \mVIViolinOne }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mVIbarlines
					\new Voice { \mVIViolinTwo }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mVIbarlines
					\new Voice { \mVIViola }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"cello"
					\mVIbarlines
					\new Voice { \mVICello }
				>>
			>>
	    }
	
	    \layout { }
	    
	    \midi { \tempo 4 = 38 }
	}
	
	%%% MOVEMENT VII %%%
	
	\score {
	    \simultaneous {
			\new StaffGroup <<
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\parameters
					\mVIIbarlines
					\mVIIspacing
					\mVIIkeychange
					\new Voice { \mVIIViolinOne }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mVIIkeychange
					\new Voice { \mVIIViolinTwo }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"violin"
					\mVIIkeychange
					\new Voice { \mVIIViola }
				>>
				
				\new Staff <<
					\set Staff.midiInstrument = #"cello"
					\mVIIkeychange
					\new Voice { \mVIICello }
				>>
			>>
	    }
	
	    \layout {
	    	\context { \RemoveEmptyStaffContext }
	    }
	    
	    \midi { \tempo 2 = 122 }
	}
}