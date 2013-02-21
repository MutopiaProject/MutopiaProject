\version "2.16.1"

#(set-global-staff-size 18)

\header {
    title = "Gretchen am Spinnrade"
    subtitle = "Aus Faust (erster Teil, `Gretchens Stube')."
    composer = "Franz Schubert (1798-1828)"
    poet = "Wolfgang Goethe (1749-1832)"
    piece = "Nicht zu geschwind."
        
    mutopiatitle = "Gretchen am Spinnrade"
    mutopiacomposer = "SchubertF"
    mutopiaopus = "D.118 (Op. 2)"
    mutopiainstrument = "Voice and Piano"
    date = "1814"
    source = "C.F. Peters (Band I)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"

 footer = "Mutopia-2013/02/21-503"
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
		
		\context Staff = up \upper
		\context Dynamics=dynamics \dynamics
		\context Staff = down <<
		    \clef bass
		    << { \lowerI } \\ { \lowerII } >>
		>>
	    >>
	>>
	  
	\layout {
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
	    \tempo 4 = 110
	}  
    }
}
