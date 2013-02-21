\version "2.16.0"

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
    lastupdated = "2004/Oct/31"

    footer = "Mutopia-2004/10/31-502"
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
