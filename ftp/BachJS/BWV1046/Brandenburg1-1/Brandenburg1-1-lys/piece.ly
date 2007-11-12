\version "2.10.20"
\include "cornoOneNotes.ly"
\include "cornoTwoNotes.ly"
\include "oboeOneNotes.ly"
\include "oboeTwoNotes.ly"
\include "oboeThreeNotes.ly"
\include "fagottoNotes.ly"
\include "violinoPiccoloNotes.ly"
\include "violinoOneNotes.ly"
\include "violinoTwoNotes.ly"
\include "violaNotes.ly"
\include "violoncelloNotes.ly"
\include "continuoNotes.ly"
global = {}
	
\header {
  title = \markup \center-align { "Brandenburg Concerto No. 1" }
  subtitle = \markup \center-align { "I - Allegro"}
  composer = \markup { "Johann Sebastian Bach" }
  mutopiatitle = "Brandenburg Concerto No. 1 (First Movement - Allegro)"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1046"
  mutopiainstrument = "Corno, Oboe, Fagotto, Violino piccolo, Violino, Viola, Violoncello, Violone grosso, Continuo"
  date = "1717-1723?"
  source = "Rust, 1871. Bach Gesellschaft Volume 19"
  style = "Baroque"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Ben Stewart"
  maintainerEmail = "benjamin.james.stewart@gmail.com"
  footer = "Mutopia-2007/11/10-1136"
  %tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
  tagline = ""
  }

\paper {
	between-system-space = 1.5\cm
	between-system-padding = #1
	annotate-spacing = ##f
	page-top-space = #2
	head-separation = #2
	% #( set-paper-size "a4" )
	}

music = {
<<
	\new GrandStaff \relative <<  
		\tag #'score \tag #'cornoOne \new Staff { << 
			\global 
			\cornoOne 
			\set Staff.midiInstrument = "french horn"  
			% \set Staff.midiMinimumVolume = #0.8
			% \set Staff.midiMaximumVolume = #0.9 
			>> }
		\tag #'score \tag #'cornoTwo \new Staff { << 
			\global 
			\cornoTwo 
			\set Staff.midiInstrument = "french horn"  
			% \set Staff.midiMinimumVolume = #0.8
			% \set Staff.midiMaximumVolume = #0.9 
			>> }   
    	>>

	\new GrandStaff \relative << 
		\tag #'score \tag #'oboeOne \new Staff { << 
			\global 
			\oboeOne 
			\set Staff.midiInstrument = "oboe" 
			% \set Staff.midiMinimumVolume = #0.1
			% \set Staff.midiMaximumVolume = #0.2
			>> }  
		\tag #'score \tag #'oboeTwo \new Staff { << 
			\global 
			\oboeTwo 
			\set Staff.midiInstrument = "oboe" 
			% \set Staff.midiMinimumVolume = #0.1
			% \set Staff.midiMaximumVolume = #0.2
			>> } 
		\tag #'score \tag #'oboeThree \new Staff { << 
			\global 
			\oboeThree 
			\set Staff.midiInstrument = "oboe" 
			% \set Staff.midiMinimumVolume = #0.1
			% \set Staff.midiMaximumVolume = #0.2
			>> } 
    	>>

	
	\tag #'score \tag #'fagotto \new Staff { << 
		\global 
		\fagotto 
		\set Staff.midiInstrument = "bassoon" >> } 
	
	\tag #'score \tag #'violinoPiccolo \new Staff { << 
			\global 
			\violinoPiccolo 
			\set Staff.midiInstrument = "violin" 
			% \set Staff.midiMinimumVolume = #0.1
			% \set Staff.midiMaximumVolume = #0.2
			>> } 

	\new GrandStaff \relative << 
		\tag #'score \tag #'violinoOne \new Staff { << 
			\global 
			\violinoOne  
			\set Staff.midiInstrument = "violin" 
			% \set Staff.midiMinimumVolume = #0.1
			% \set Staff.midiMaximumVolume = #0.2
			>> }
		\tag #'score \tag #'violinoTwo \new Staff { << 
			\global 
			\violinoTwo 
			% \set Staff.midiInstrument = "violin" 
			% \set Staff.midiMinimumVolume = #0.1
			% \set Staff.midiMaximumVolume = #0.2
			>> } 
    	>>

    	\tag #'score \tag #'viola \new Staff { << 
		\global 
		\viola 
		\set Staff.midiInstrument = "viola" 
		>> } 

	\new GrandStaff \relative << 
		\tag #'score \tag #'violoncello \new Staff { << 
		\global 
		\violoncello 
		\set Staff.midiInstrument = "cello" 
		>> } 
		\tag #'score \tag #'continuo \new Staff { << 
		\global 
		\continuo 
		\set Staff.midiInstrument = "contrabass" 
		>> } 
	>>

>>
}
