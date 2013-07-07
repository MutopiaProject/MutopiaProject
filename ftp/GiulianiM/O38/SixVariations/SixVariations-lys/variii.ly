upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \repeat volta 2 {
    \partial 4 { e16( fis e) d_. } |
    cis8 r r4 r16 b( cis d) e( fis gis a) |
    e8 r r4 r16 e( fis e) d( cis b) a |
    gis16( a gis) fis_. gis( a) b( cis) d(cis b) cis( d) e( fis gis) |
    a8_. cis16( b) a_. gis( fis) e_. dis( e fis e) cis( d e d) |
    cis8 r r4 r16 b( cis d) e( fis gis a) |
    fis( gis) a( gis) fis( gis) e( fis) d( e) cis( d) b( cis) a( b) |
    gis8 d''16( cis) b_. a( gis) fis_. e8_. gis16( fis) e_. d( cis) b_. |
    r16 a cis e a cis e( cis) a4
  }
  \repeat volta 2 {
    e4 |
    dis16_. e fis( e) d e b e dis_. e fis( e) d e b e |
    cis16_. a( b) cis( d) e( fis) gis_.
    a[( gis) \appoggiatura{fis[ gis]} fis e_.] dis_. e_. fis( e) |
    d!16 b e d gis e b' gis d'_. cis( b) a( gis) fis_. e_. d_. |
    cis16 a cis e a e a cis e4 e,16( fis e) d_. |
    cis8 r r4 r16 b( cis d) e( fis gis a) |
    fis8 r r4 r16 e( fis e) d( cis b) a_. |
    gis8 d''16( b) gis( e) d( b) gis_. e( d) b_. gis8 <gis' b e> |
    r16 a cis e a cis e( cis) a4
  }
}

lowerVoice = \relative c {
  \voiceTwo
  \slurUp
  \partial 4 { d4\rest_\mf }
  c16\rest a( b cis) d( e fis gis)( a8) c,\rest c4\rest |
  c16\rest d( e fis) gis( a b cis)( d8) c,\rest c4\rest |
  e,4 g\rest e g\rest |
  a4 a\rest a2\rest |
  c16\rest a( b cis) d( e fis gis)( a8) c,\rest c4\rest |
  d4 a\rest d a\rest |
  e4 a\rest e a\rest |
  a4 a\rest a
      % part 2
  a4\rest |
  e4. gis8 e4. gis8 |
  a4 a\rest a a\rest |
  e4 a\rest e a\rest |
  a4 a\rest a a\rest |
  r16 a( b cis) d( e fis gis)( a8) a,\rest a4\rest |
  r16 d( e fis) gis( a) b( cis d8) a,\rest a4\rest |
  e4 a\rest a\rest c,8\rest e |
  a4 a\rest a
}

\bookpart {
  \header {
    subtitle = "Variation III"
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
      >>
%{
      \new TabStaff = "guitar tab"
      <<
	\clef moderntab
	\context TabVoice = "upperVoice" \upperVoice
	\context TabVoice = "lowerVoice" \lowerVoice
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
