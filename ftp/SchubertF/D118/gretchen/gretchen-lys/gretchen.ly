\version "2.16.0"

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
