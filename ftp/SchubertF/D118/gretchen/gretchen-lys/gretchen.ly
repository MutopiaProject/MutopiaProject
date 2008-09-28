\version "2.4.0"
\encoding "latin1"
\include "defs.ly"

#(set-global-staff-size 18)

\header {
    title = "Gretchen am Spinnrade"
    subtitle = "Aus Faust (erster Teil, `Gretchens Stube')."
    composer = "Franz Schubert (1798-1828)"
    poet = "Wolfgang Goethe (1749-1832)"
    piece = "Nicht zu geschwind."
        
    mutopiatitle = "Gretchen am Spinnrade"
    mutopiacomposer = "Franz Schubert (1798-1828)"
    mutopiaopus = "Op. 2"
    mutopiainstrument = "Voice and piano"
    date = "1810s"
    source = "C.F. Peters (Band I)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"
    lastupdated = "2004/Oct/31"

    footer = "Mutopia-2004/10/31-503"
    tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
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
		\set Staff.minimumVerticalExtent = #'(-2 . 2)
		\context Voice = mel {
		    \set Staff.midiInstrument = #"clarinet"
		    \set Staff.instrument = \markup { "Singstimme." }

		    \autoBeamOff
		    \melody
		}
		\lyricsto mel \new Lyrics { \text }
	    >>
	    
	    \new PianoStaff <<
		\set PianoStaff.midiInstrument = #"acoustic grand"
		\set PianoStaff.instrument = \markup { "Pianoforte." }
		
		\context Staff = up \upper
		\context Dynamics=dynamics \dynamics
		\context Staff = down <<
		    \clef bass
		    << { \lowerI } \\ { \lowerII } >>
		>>
	    >>
	>>
	  
	\layout {
	    \context {
		\type "Engraver_group_engraver"
		\name Dynamics
		\alias Voice % So that \cresc works, for example.
		\consists "Output_property_engraver"
		
		minimumVerticalExtent = #'(-1 . 1)
		pedalSustainStrings = #'("Ped." "*Ped." "*")
		pedalUnaCordaStrings = #'("una corda" "" "tre corde")
		
		\consists "Piano_pedal_engraver"
		\consists "Script_engraver"
		\consists "Dynamic_engraver"
		\consists "Text_engraver"
		
		\override TextScript #'font-size = #2
		\override TextScript #'font-shape = #'italic
		\override DynamicText #'extra-offset = #'(0 . 2.5)
		\override Hairpin #'extra-offset = #'(0 . 2.5)
		
		\consists "Skip_event_swallow_translator"
		
		\consists "Axis_group_engraver"
	    }
	    \context {
		\PianoStaff
		\accepts Dynamics
		\override VerticalAlignment #'forced-distance = #7
	    }
	    
	    \context { \RemoveEmptyStaffContext }
	}  

	\midi
	{
	    \context {
		\type "Performer_group_performer"
		\name Dynamics
		\consists "Piano_pedal_performer"
		\consists "Span_dynamic_performer"
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
