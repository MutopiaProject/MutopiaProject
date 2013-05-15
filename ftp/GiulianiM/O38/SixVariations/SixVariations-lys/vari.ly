upperVoice = \relative c'' {
  \voiceOne
  \slurDown
  \repeat volta 2 {
    \partial 4 { e8 cis | }
    b8 a gis a gis a b cis |
    cis8 b ais b ais b d a |
    a!8 gis fis e dis e fis gis |

    b8 a cis a r e e' cis |
    b8 a gis a gis a b cis |
    cis8 b ais b ais b d b |
    a!8 gis fis e dis e fis gis |

    b8( a) e cis a4
  }
  \repeat volta 2 {
    cis'8 a |
    \acciaccatura{b8} a8 gis fis e dis e fis gis |
    b8 a gis a gis a b cis |
    \acciaccatura{d8} cis8 b ais b ais b cis d |
    d8 cis ais cis ais cis e cis |
    \barNumberCheck #13
    b!8 a!8 gis a gis a b cis |
    \acciaccatura{d8} cis8 b ais b ais b d b |
    a!8 gis fis e dis e fis gis |
    b8( a) e cis a4
  }
}

lowerVoice = \relative c {
  \voiceTwo
  \repeat volta 2 {
    \partial 4 { g4\rest_\mf | }
    a4 g\rest cis g\rest |
    d'4 a\rest d a\rest |
    e4 g\rest e g\rest |

    a4 a\rest a a\rest |
    a4 a\rest cis a\rest |
    d4 a\rest d a\rest |
    e4 g\rest e g\rest |

    a4 g\rest s
  }
  \repeat volta 2 {
    g4\rest |
    e4 g\rest e g\rest |
    a4 a\rest a a\rest |
    e4 g\rest e g\rest |
    a4 a\rest a a\rest |
    \barNumberCheck #13
    a4 a\rest cis a\rest |
    d4 a\rest d a\rest |
    e4 g\rest e g\rest |
    a4 a\rest a'
  }
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  \repeat volta 2 {
    \partial 4 { g4\rest | }
    \override MultiMeasureRest #'staff-position = #0
    R1*2 |
    \override MultiMeasureRest #'staff-position = #-2
    R1 |
    \override MultiMeasureRest #'staff-position = #0
    R1*3 |
    \override MultiMeasureRest #'staff-position = #-2
    R1 |
    g2\rest s4
  }
  \repeat volta 2 {
    a4\rest |
    R1
    \override MultiMeasureRest #'staff-position = #0
    R1*3
    \barNumberCheck #13
    R1*2
    \override MultiMeasureRest #'staff-position = #-2
    R1
    g2\rest s4
  }
}

\bookpart {
  \header {
    subtitle = "Variation I"
  }

  \score {
    <<
      \new Staff = "Guitar"
      <<
	\set Staff.midiInstrument = #"acoustic guitar (nylon)"
	\clef "treble_8"
	\key a \major \numericTimeSignature
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
	\context Voice = "upperVoice" \upperVoice
	\context Voice = "lowerVoice" \lowerVoice
	\context Voice = "middleVoice" \middleVoice
      >>
%{
      \new TabStaff = "guitar tab"
      <<
	\clef moderntab
	\context TabVoice = "upperVoice" \upperVoice
	\context TabVoice = "lowerVoice" \lowerVoice
	\context TabVoice = "middleVoice" \middleVoice
      >>
%}
    >>
    \layout {
      % remove string numberings since we have developed a tablature
      \override Voice.StringNumber #'stencil = ##f
    }
    \midi {
      % don't double up if using tabs
      \context {
	\TabStaff
	\remove "Staff_performer"
      }
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 110 4)
      }
    }
  }
}
