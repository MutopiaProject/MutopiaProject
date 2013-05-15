upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \repeat volta 2 {
    \partial 4 { e8.^\markup{"Un poco più Adagio"} d16 | }
    d4 cis r8 e8[ a8. gis16] |
    eis4 fis r8 e8[ d cis] |
    cis8.[ b16 d8. cis16] e8.[ d16 fis8. e16] |
    \barNumberCheck #4
    e4. d8 cis4 cis'8. b16 |
    b4 a a8 dis16( e) d( cis) b_. a_. |
    gis4 fis b8\rest \grace b a gis fis |
    e8 e'16[( dis)] d16( cis) b_. a_. a( gis) fis_. e_. dis( e) d_. b_. |
    r a cis e gis( a) e cis a4
  }
  \repeat volta 2 {
    cis'16( b) a_. gis_. |
    gis16_. e( fis) e_. gis e b' e, e' e, d' e, cis' e, b e |
    b'16_. e,( fis) e_. b' e, cis' e, e' e, cis' e, b' e, a e |
    \barNumberCheck #11
    gis16_. e( fis) e_. gis e b' e, e' e, dis' e, d' e, b' e, |
    a16_. e( fis) e_. a e b' e, cis'4 e,8. d16 |
    d4 cis r8 cis' b a |
    gis4 fis e'8\rest e16( d) cis( b) gis_. fis_. |
    e16_. dis( e) fis_. gis( a) b_. cis_. d( cis) b_. cis_. d_. e_. fis_. gis_. |
    a8 e cis a e cis a4 |
  }
}

lowerVoice = \relative c' {
  \voiceTwo
  \repeat volta 2 {
    \partial 4 { s4 | }
    r8 a,8 cis e a,4 r |
    r8 d fis a d,4 r |
    e,4 r e r |
    \barNumberCheck #4
    r8 e fis gis a4 r |
    a4 r a g\rest |
    d'4 r d r |
    e,4 e\rest e e\rest |
    a4 a\rest a
  }
  \repeat volta 2 {
    a4\rest_\p
    e4 e\rest e e\rest |
    a4 a\rest a a\rest |
    \barNumberCheck #11
    e4 e\rest e e\rest |
    a4 a\rest a r |
    r8 a cis e a,4 r |
    r8 d fis a d4 r |
    e,,4 e\rest e e\rest |
    a2 s4 a' |
  }
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  \repeat volta 2 {
    \partial 4 { cis8._\mf b16 | }
    b4 a a8\rest cis8[ cis8. e16] |
    cis4 d a8\rest cis[ b a] |
    a8.[ gis16 b8. a16] cis8.[ b16 d8. cis16] |
    \barNumberCheck #4
    cis4. b8 a4 e'8. d16 |
    d8 e cis e cis c\rest c4\rest |
    b8\rest a d a b\rest fis' e d |
    cis8 a\rest a4\rest a s |
    e2\rest s4
  }
  \repeat volta 2 {
    a4\rest |
    g1\rest |			% FIXME -> R
    g1\rest |
    \barNumberCheck #11
    g1\rest |
    g2\rest g4\rest cis8. b16_\mf |
    b4 a g8\rest e' d cis |
    e4 d f2\rest |
    g,1\rest |
    g1\rest |
  }
}

\bookpart {
  \header {
    subtitle = "Variation IV"
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
