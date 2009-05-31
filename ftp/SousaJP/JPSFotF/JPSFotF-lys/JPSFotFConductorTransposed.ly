\version "2.11.63"
#(set-global-staff-size 13)

\include "JPSFotF.ly"

\header {
  title = "The Fairest of the Fair"
  subtitle = "March"
  composer = "John Philip Sousa"
  mutopiacomposer = "SousaJP"
  instrument = "Conductor's score"
  date = "1908"
  source = "John Church, 1908"
  style = "March"
  copyright = "Public Domain"
  maintainer = "Garrett Fitzgerald"
  maintainerEmail = "gfitzger@nyx.net"
  maintainerWeb = "http://blog.donnael.com/"
 footer = "Mutopia-2009/05/31-1643"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score { 
  {
    <<
      \new Staff { 
	\set Staff.midiInstrument = "piccolo" 
	\set Staff.instrumentName = "Piccolo in Db"
	\set Staff.instrumentName = "Db Picc."
	\transpose c des' \piccoloInDb
      }
      
      \new Staff {
	\set Staff.midiInstrument = "flute"
	\set Staff.instrumentName = "Flute in C"
	\set Staff.shortInstrumentName = "Flute"

	\fluteInC
      }
      
      \new Staff \with { printPartCombineTexts = ##f } { 
	<<
	  \set Staff.midiInstrument = "oboe"
	  \set Staff.instrumentName = "Oboe"
	
	  \partcombine \oboeOne \oboeTwo
	>>
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	<<
	  \set Staff.midiInstrument = "bassoon"
	  \set Staff.instrumentName = "Bassoon"
	  \set Staff.shortInstrumentName = "Bass."
	
	  \partcombine \bassoonOne \bassoonTwo
	>>
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "clarinet"
	\set Staff.instrumentName = "Eb Clarinet"
	\set Staff.shortInstrumentName = "Eb Clar."
	
	\transpose c ees \clarinetInEb
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "clarinet"
	\set Staff.instrumentName = "Solo & 1st Bb Clarinet"
	\set Staff.shortInstrumentName = "Clar. Solo&1"
	
	\transpose c bes, \clarinetInBbSOne
      }
      
      \new Staff \with { printPartCombineTexts = ##f } { 
	<<
	  \set Staff.midiInstrument = "clarinet"
	  \set Staff.instrumentName = "2nd & 3rd Bb Clarinet"
	  \set Staff.shortInstrumentName = "Clar. 2&3"
	  
	  \transpose c bes, 
	  \partcombine \clarinetInBbTwo \clarinetInBbThree
	>>
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "clarinet"
	\set Staff.instrumentName = "Alto Clarinet in Eb"
	\set Staff.shortInstrumentName = "Alto Clar."
	
	\transpose c ees, \altoClarinetInEb
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "clarinet"
	\set Staff.instrumentName = "Bass Clarinet"
	\set Staff.shortInstrumentName = "Bass Clar."
	
	\transpose c bes,, \bassClarinet
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "soprano sax"
	\set Staff.instrumentName = "Sopano Saxophone"
	\set Staff.shortInstrumentName = "Sop. Sax"
	
	\transpose c bes, \sopranoSax
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "alto sax"
	\set Staff.instrumentName = "Eb Alto Saxophone"
	\set Staff.shortInstrumentName = "Alto Sax"
	
	\transpose c ees, \altoSaxophoneInEb
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "tenor sax"
	\set Staff.instrumentName = "Bb Tenor Saxophone"
	\set Staff.shortInstrumentName = "Tenor Sax"
	
	\transpose c bes,, \tenorSaxophoneInBb
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "baritone sax"
	\set Staff.instrumentName = "Eb Baritone Saxophone"
	\set Staff.shortInstrumentName = "Bari Sax"
	
	\transpose c ees,,, \baritoneSaxophoneInEb
      }
      
    >>
  }
  \layout{}
  \midi{
    \context{
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
