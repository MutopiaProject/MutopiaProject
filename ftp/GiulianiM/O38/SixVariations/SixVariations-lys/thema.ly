
upperVoice = \relative c'' {
  \voiceOne
  \slurDown
  \repeat volta 2 {
    \partial 4 { a4^\markup{"Moderato"} | }
    e4 e e a |
    fis4 fis fis b |
    gis4 e fis a |
    a8 e a b cis4 gis16( a b a) |

    e4 e e8 gis16( fis) a( gis) b( a) |
    eis4 fis fis b8. a16 |
    a8( gis) fis_.\2 e!_.\2 dis( e\2) fis_. gis_. |
    r8 a\1 e\2 cis\3 a4\4
  }
  \repeat volta 2 {
    a'4 |
    gis8( e) gis a b( e,) gis( e) |

    a8( e) a b cis( e,) a( e) |
    gis8( e) gis a b( e,) gis( e) |
    a8( e) a b cis4 gis16( a b a) |
    e4 e e8( cis') b a |
    gis4\1 fis fis8( d') cis b |
    \barNumberCheck #15
    a8( gis) fis_.\2 e_.\2 dis( e\2) fis_. gis_. |
    r8 a\1 e\2 cis\3 a4\4
  }
}

lowerVoice = \relative c {
  \voiceTwo
  \repeat volta 2 {
    \partial 4 { g4\rest_\mf | }
    g4\rest cis cis g\rest |
    g4\rest d' d g,\rest |
    e4 r e r |
    a4 g\rest a g\rest |

    g4\rest cis cis g4\rest |
    g4\rest d' d g4\rest |
    e,4 g\rest e g\rest |
    a4 g\rest a'\4
  }
  \repeat volta 2 {
    f,4\rest |
    e4 f\rest e f\rest |

    a4 f\rest a f\rest |
    e4 f\rest e f\rest |
    a4 f\rest a f\rest |
    f4\rest cis' cis f,\rest |

    f4\rest d' d f,\rest |
    e4 f\rest e f\rest |
    a4 a\rest a'\4
  }
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  \repeat volta 2 {
    \partial 4 { g4\rest | }
    g4\rest a a g\rest |
    g4\rest a a g\rest |
    g4\rest e' dis d |
    cis4 cis8 d e4 g,\rest |
    \barNumberCheck #5
    g4\rest a a g4\rest |
    g4\rest a a g4\rest |
    \override MultiMeasureRest #'staff-position = #-2
    R1
    s4*3
  }
  \repeat volta 2 {
    cis4\3 |
    b4 b8\3 cis\3 d4\3 b |
    \barNumberCheck #10
    cis4\3 cis8\3 d\3 e4\2 cis\3 |
    b4 b8\3 cis\3 d4\3 b\3 |
    cis4\3 cis8\3 d\3 e4 g,\rest |
    g4\rest a a g\rest |

    g4\rest a a g\rest |
    R1 |
    s2.
  }
}

\bookpart {
  \header {
    subtitle = "Thema"
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
