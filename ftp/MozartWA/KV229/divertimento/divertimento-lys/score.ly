\version "2.0.1"
\include "paper16.ly"

\header {
   title = "DIVERTIMENTO II"
   subtitle = "for Oboe, Clarinet and Bassoon"
   composer = "W.A.Mozart, K.V.A. 229, No.2"

   mutopiatitle = "DIVERTIMENTO II for Oboe, Clarinet and Bassoon"
   mutopiacomposer = "W.A.Mozart"
   mutopiaopus = "K.V.A. 229"
   mutopiainstrument = "Oboe, Clarinet, Bassoon"
   source = "Boosey & Hawkes"
   style = "Classical"
   copyright = "Public Domain"
   maintainer = "Vit Reichel"
   maintainerEmail = "vit.reichel@volny.cz"
   maintainerWeb = "www.volny.cz/respiro"
   lastupdated = "2003/Oct/08"
   
   tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
   footer = "Mutopia-2003/10/08-261"
}

\include "includes/definitions.ly"
\include "includes/allegro.ly"
\include "includes/menuettoOne.ly"
\include "includes/larghetto.ly"
\include "includes/menuettoTwo.ly"
\include "includes/rondo.ly"

% ********************************************************************************ALLEGRO********************************************************************************

\score {
<<
   \property Score.BarNumber \override #'padding = #3
   \context StaffGroup <<
      \context Staff = hb <<
      \property Staff.midiInstrument = #"oboe"
      \property Staff.instrument = "Oboe  "
      \oboeAllegro
      >>
      \context Staff = cl <<
      \property Staff.midiInstrument = #"clarinet"
      \property Staff.transposing = #-2
      \property Staff.instrument = \markup { \column < "Clarinetto  " "in B" > }
      \clarinetAllegro
      >>
      \context Staff = bn <<
      \property Staff.midiInstrument = #"bassoon"
      \property Staff.instrument = "Fagotto  "
      \bassoonAllegro
      >>
   >>
>>
   \header {
      opus = "(1756 - 1791)"
      piece = "Allegro"
   }
   \paper { }
   \midi {
      \tempo 4 = 120
   }
}

% ********************************************************************************MENUETTO 1********************************************************************************

\score {
<<
   \property Score.BarNumber \override #'padding = #3
   \context StaffGroup <<
      \context Staff = ob <<
      \property Staff.midiInstrument = #"oboe"
      \oboeMenuettoOne
      \textUpMenuettoOne
      >>
      \context Staff = cl <<
      \property Staff.midiInstrument = #"clarinet"
      \property Staff.transposing = #-2
      \property Staff.VoltaBracket \override #'molecule-callback = #'()
      \clarinetMenuettoOne
      >>
      \context Staff = bn <<
      \property Staff.midiInstrument = #"bassoon"
      \property Staff.VoltaBracket \override #'molecule-callback = #'()
      \bassoonMenuettoOne
      \textDownMenuettoOne
      >>
   >>
>>
   \header {
      piece = "Menuetto"
   }
   \paper { }
   \midi {
      \tempo 4 = 140
   }
}

% ********************************************************************************LARGHETTO********************************************************************************

\score {
<<
   \property Score.BarNumber \override #'padding = #3
   \context StaffGroup <<
      \context Staff = ob <<
      \property Staff.midiInstrument = #"oboe"
      \oboeLarghetto
      >>
      \context Staff = cl <<
      \property Staff.midiInstrument = #"clarinet"
      \property Staff.transposing = #-2
      \clarinetLarghetto
      \property Staff.VoltaBracket \override #'molecule-callback = #'()
      >>
      \context Staff = bn <<
      \property Staff.midiInstrument = #"bassoon"
      \bassoonLarghetto
      \property Staff.VoltaBracket \override #'molecule-callback = #'()
      >>
   >>
>>
   \header {
      piece = "Larghetto"
   }
   \paper { }
   \midi {
      \tempo 4 = 50
   }
}

% ********************************************************************************MENUETTO 2********************************************************************************

\score {
<<
   \property Score.BarNumber \override #'padding = #3
   \context StaffGroup <<
      \context Staff = ob <<
      \property Staff.midiInstrument = #"oboe"
      \oboeMenuettoTwo
      \textUpMenuettoTwo
      >>
      \context Staff = cl <<
      \property Staff.midiInstrument = #"clarinet"
      \property Staff.transposing = #-2
      \clarinetMenuettoTwo
      >>
      \context Staff = bn <<
      \property Staff.midiInstrument = #"bassoon"
      \bassoonMenuettoTwo
      \textDownMenuettoTwo
      >>
   >>
>>
   \header {
      piece = "Menuetto"
   }
   \paper { }
   \midi {
      \tempo 4 = 140
   }
}

% ********************************************************************************RONDO********************************************************************************

\score {
<<
   \property Score.BarNumber \override #'padding = #3
   \context StaffGroup <<
      \context Staff = hb <<
      \property Staff.midiInstrument = #"oboe"
      \oboeRondo
      >>
      \context Staff = cl <<
      \property Staff.midiInstrument = #"clarinet"
      \property Staff.transposing = #-2
      \clarinetRondo
      >>
      \context Staff = bn <<
      \property Staff.midiInstrument = #"bassoon"
      \bassoonRondo
      >>
   >>
>>
   \header {
      piece = "Rondo"
   }

   \midi { \tempo 4 = 150 }

   \paper { }

}

