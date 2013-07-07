
upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \repeat volta 2 {
    \partial 4 { e4 | }
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \override TupletNumber #'transparent = ##t
    \times 2/3 {
      % slur elided at first quarter note, see transcriber's note above
      \once\override TupletNumber #'transparent = ##f
      r8 cis, e
      a cis e( a) gis( fis) e_. d( cis) |
    }
    \acciaccatura{cis8} \times 2/3 {
      \once\override TupletNumber #'transparent = ##f
      b8 ais b fis d' b fis'( e) d_. cis( b) a_. |
      fis8( gis) b( d) e( gis) b a( gis) fis( e) d_. |
      cis8 a'( gis)
    }
    \appoggiatura{fis16[ gis]} \times 2/3 {
      fis8 e dis e \acciaccatura{gis8} fis e d( cis) b_. |
      a8 cis, e a cis e( a) gis( fis) e_. d( cis) |
    }
    \appoggiatura{cis8} \times 2/3 {
      b8 ais b fis d' b fis'( e) d_. cis( b) a_. |
      gis8( d'') b gis e d( b) gis_. fis( d) b gis |
    }
    \times 2/3 { a8( cis) e }
    \times 2/3 { a cis e( }
    a4)
  }
  \repeat volta 2 {
    e4 |
    \times 2/3 {
      \barNumberCheck #9
      b8 gis'( e) cis a'( e) d b'( e,) b gis'( e) |
      cis8 a'( e) d b'( e,) e cis' e, cis a'( e) |
      b8 gis'( e) cis a'( e) d b'( e,) b gis'( e) |
      cis8 a'( e) d b'( e,) }
    cis'4
    \times 2/3 { e,8( dis) d_. } |
    \times 2/3 { cis8 cis, e a cis e( a) gis( fis) e_. d( cis) } |
    \grace{cis8} \times 2/3 {
      b8 ais b cis,(d) eis( fis) ais( b) cis( d) fis |
      e8_. d'( cis) b_. a( gis) fis_. e_. d_. cis( d) b_. |
      a8 cis e a cis e
    }
    a4
  }
}

middleVoice = \relative c {
  \voiceThree
  \stemDown
  \partial 4 { r4_\mf | }
  a4 a\rest e'2\rest |
  d4 a\rest e'2\rest |

  e,4 a\rest e'2\rest |
  a,4 a\rest e a\rest |
  a4 a\rest e'2\rest |

  d4 a\rest e'2\rest |
  e,4 a\rest e'2\rest |
  a,4 a\rest a\rest
      %2nd repeat
  a\rest |

  \repeat unfold 2 {
    e4 e\rest e e\rest |
    a4 e\rest a e\rest |
  }
  a4 a\rest e'2\rest |
  d4 r s2 |
  e,4 e\rest e e\rest |
  a4 a\rest a
}

lowerVoice = \relative c' {
  \voiceTwo
  \partial 4 { s4 | }
  s1*7
  s4*3
    % 2nd repeat
  s4
  b4 cis d b |
  cis4 d e cis |
  b4 cis d b |
  cis d e s |
  s1*4
}

\bookpart {
  \header {
    subtitle = "Variation II"
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
