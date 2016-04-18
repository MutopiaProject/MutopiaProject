\version "2.18.2"
\include "deutsch.ly"
\include "ouverture.ly"
\include "allemande.ly"
\include "courante.ly"
\include "aria.ly"
\include "sarabande.ly"
\include "menuet.ly"
\include "gigue.ly"

\paper {
  top-margin = 8\mm
  left-margin = 9\mm
  right-margin = 8\mm
  top-markup-spacing.basic-distance = #6
  markup-system-spacing.basic-distance = #5
  top-system-spacing.basic-distance = #12
  last-bottom-spacing.basic-distance = #12

  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

#(set-global-staff-size 18.5)

\header {
  title = "Partita 4"
  subtitle = "BWV 828"
  composer = "Johann Sebastian Bach"

  mutopiatitle = "Partita 4"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 828"
  mutopiainstrument = "Harpsichord"
  source = "First edition by J. S. Bach - 'In Verlegung des Autoris'"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Urs Metzger"
  maintainerEmail = "urs@ursmetzger.de"
}

% Ouverture
\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      \with {
        \consists "Span_arpeggio_engraver"
      } {
        \set Staff.connectArpeggios = ##t
        \rightA
      }
      \new Staff = left {
        \leftA
        \pageBreak
      }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 36 2)
    }
  }
}

% Allemande
\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      \with { \consists "Span_arpeggio_engraver" }
      {
        \set Staff.connectArpeggios = ##t
        \rightB
      }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      {
        \leftB
        \pageBreak
      }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 64 4)
    }
  }
}

% Courante
\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      { \rightC }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      { \leftC }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 2)
    }
  }
}

% Aria
\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      { \rightD }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      {
        \leftD
        \pageBreak
      }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
    }
  }
}

% Sarabande
\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      { \rightE }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      {
        \leftE
        \pageBreak
      }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 50 4)
    }
  }
}

% Menuet
\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      { \rightF }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      {
        \leftF
        \pageBreak
      }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

% Gigue
\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      { \rightG }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      { \leftG }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
    }
  }
}
