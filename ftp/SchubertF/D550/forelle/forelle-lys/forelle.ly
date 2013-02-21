\version "2.16.1"

\include "defs.ly"

#(set-global-staff-size 18)

\header {
    title = "Die Forelle"
    subtitle = "Op. 32"
    composer = "Franz Schubert (1798-1828)"
    poet = "Christian Friedrich Daniel Schubart (1739-1791)"
    piece = "Etwas lebhaft."
        
    mutopiatitle = "Die Forelle"
    mutopiacomposer = "SchubertF"
    mutopiaopus = "D.550 (Op. 32)"
    mutopiainstrument = "Voice and Piano"
    date = "1817"
    source = "C.F. Peters (Band I)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"

 footer = "Mutopia-2013/02/21-502"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\include "melody.ly"
\include "piano.ly"
\include "lyrics.ly"

\book {
    \score {
	<<
	    \new Staff \with
	    {
		fontSize = #-2
		\override StaffSymbol #'staff-space = #(magstep -2)
	    }
	    <<
		\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
		\context Voice = mel {
		    \set Staff.midiInstrument = #"clarinet"
		    \set Staff.instrumentName = \markup { "Singstimme." }

		    \autoBeamOff
		    \melody
		}
		\lyricsto mel \new Lyrics { \text }
	    >>
	    
	    \new PianoStaff <<
		\set PianoStaff.midiInstrument = #"acoustic grand"
		\set PianoStaff.instrumentName = \markup { "Pianoforte." }
		\set PianoStaff.connectArpeggios = ##t
		
		\context Staff = up \upper
		\context Dynamics=dynamics \dynamics
		\context Staff = down <<
		    \clef bass
		    \lower
		>>
	    >>
	>>
	  
	\layout {
	    \context {
		\PianoStaff
		\accepts Dynamics
		\consists #Span_stem_engraver
	    }
	    
	    \context { \Staff \RemoveEmptyStaves }
	}  

	\midi
	{
	    \context {
		\type "Performer_group"
		\name Dynamics
		\consists "Piano_pedal_performer"
		\consists "Dynamic_performer"
	    }
	    \context {
		\PianoStaff
		\accepts Dynamics
	    }
	    \tempo 4 = 75
	}  
    }
}
