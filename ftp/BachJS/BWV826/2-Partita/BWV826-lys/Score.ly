\version "2.18.2"
\language "deutsch"
\include "Commons.ily"
\pointAndClickOff
#(set-global-staff-size 17)

\paper {
  ragged-last-bottom = ##f
  print-all-headers = ##t
}

\bookpart {
  \header {
    title = \makeTitlePage #'("Partita II"
                               "J. S. Bach"
                               "(1685-1750)"
                               "BWV 826"
                               "Cembalo"
                               "20 Min.")
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Harpsichord"
    source = "https://imslp.org/wiki/Special:ImagefromIndex/00790/pumu"
    style = "Baroque"
    license = "Creative Commons Attribution 4.0"
    maintainer = "Eugenio Giovine"
    
  }
  \markup \null
} %ends titling

\score {
  \new PianoStaff <<
    \new Staff = "up" <<
      \include "Sinfonia/Global.ily"
      \new Voice { \voiceOne \include "Sinfonia/One.ily" }
      \new Voice { \voiceTwo \include "Sinfonia/Two.ily" }
      \new Voice { \voiceFour \include "Sinfonia/Three.ily"}
    >>
    \new Staff = "down" <<
      \clef "bass"
      \include "Sinfonia/Global.ily"
      \new Voice { \voiceOne \include "Sinfonia/Four.ily" }
      \new Voice { \voiceTwo \include "Sinfonia/Five.ily" }
      \new Voice { \voiceFour \include "Sinfonia/Six.ily" }
    >>
  >>
  \header {
    title = "Partita II"
    composer = "J. S. Bach"
    piece = "Sinfonia"
  }
}

\pageBreak

\score {
  \new PianoStaff <<
    \new Staff = "up" <<
      \include "Allemande/Global.ily"
      \new Voice { \voiceOne \include "Allemande/One.ily" }
      \new Voice { \voiceTwo \include "Allemande/Two.ily" }
      \new Voice { \voiceFour \include "Allemande/Three.ily" }
    >>
    \new Staff = "down" <<
      \clef "bass"
      \include "Allemande/Global.ily"
      \new Voice { \include "Allemande/Four.ily" }
      \new Voice { \voiceTwo \include "Allemande/Five.ily" }
    >>
  >>
  \header {
    piece = "Allemande"
  }
  \layout {

  }
}

\pageBreak

\score {
  \new PianoStaff <<
    \new Staff = "up" <<
      \include "Courante/Global.ily"
      \new Voice { \voiceOne \include "Courante/One.ily" }
      \new Voice { \voiceTwo \include "Courante/Two.ily" }
      \new Voice { \voiceFour \include "Courante/Three.ily" }
    >>
    \new Staff = "down" <<
      \clef "bass"
      \include "Courante/Global.ily"
      \new Voice { \include "Courante/Four.ily" }
      \new Voice { \voiceTwo \include "Courante/Five.ily" }
      \new Voice { \voiceFour \include "Courante/Six.ily" }
    >>
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
    }
  }
  \header {
    piece = "Courante"
  }
}

\pageBreak

\score {
  \new PianoStaff <<
    \new Staff = "up" <<
      \include"Sarabande/Global.ily"
      \new Voice { \voiceOne \include"Sarabande/One.ily" }
      \new Voice { \voiceTwo \include"Sarabande/Two.ily" }
    >>
    \new Staff = "down" <<
      \clef "bass"
      \include"Sarabande/Global.ily"
      \new Voice { \include"Sarabande/Three.ily" }
    >>
  >>
  \header {
    piece = "Sarabande"
  }
}

\pageBreak

\score {
  \new PianoStaff <<
    \new Staff = "up" <<
      \include"Rondeau/Global.ily"
      \new Voice { \include"Rondeau/One.ily" }
      \new Voice { \voiceTwo \include"Rondeau/Two.ily" }
    >>
    \new Staff = "down" <<
      \clef "bass"
      \include"Rondeau/Global.ily"
      \new Voice { \include"Rondeau/Three.ily" }
    >>
  >>
  \header {
    piece = "Rondeau"
  }
}

\pageBreak


\score {
  \new PianoStaff <<
    \new Staff = "up" <<
      \include"Capriccio/Global.ily"
      \new Voice { \include"Capriccio/One.ily" }
    >>
    \new Staff = "down" <<
      \clef "bass"
      \include"Capriccio/Global.ily"
      \new Voice { \voiceOne \include"Capriccio/Two.ily" }
      \new Voice { \voiceTwo \include"Capriccio/Three.ily" }
    >>
  >>
  \header {
    piece = "Capriccio"
  }
  \layout {

  }
}