upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \repeat volta 2 {
    \partial 4 { a'4\sf | }
    e16 cis\p a cis e cis e a( e8) r\sf a4 |
    fis16 d\p a d fis d fis a( fis8) r\sf a4 |
    gis16\< e dis e d e b e gis, e' e, e' d,[ e'] b,[ e'\!] |
    r8\f cis\mf d dis e s gis16( a b a) |
    e16 cis\p a cis e cis e a( e8) r\sf a4 |
    fis16 d\p a d fis d e a( fis8) r\sf a4 |
    gis16\f( e) dis e d'( b) gis e d( b) gis_. e( d) b gis e |
    g''16\rest a, cis e gis cis d( b) a4
  }
  \repeat volta 2 {
    e4 |
    \override TupletNumber #'transparent = ##t
    \override TupletBracket #'bracket-visibility = ##f
    \set tupletSpannerDuration = #(ly:make-moment 1 8)
    \times 2/3 {
      \once\override TupletNumber #'transparent = ##f
      \once\override TupletBracket #'bracket-visibility = ##t
      b16[ d e] a, cis e fis,[\> ais e'] gis,\! b e b[ d e] a, cis e fis,[\> ais e'] gis,\! b e |
      cis[ e e] b d e gis,[\> bis e] a,\! cis e cis[ e e] b d e gis,[\> bis e] a,\! cis e |
      b[\< d e] a, cis e gis,[ b e] fis,[ a e'] e, gis e' d,[ fis e'] cis, e e' b,[\! d e'] |
    }
    r8\f cis d dis e s gis16 a b a |
    e16 cis\p a cis e cis e a e8 r\sf a4 |
    fis16 d\p a d fis d fis a( e8) r\sf a4 |
    gis16\f( e) dis_. e_. d'( b) gis_. e_. dis( b) gis_. e( d) b gis e |
    \set Timing.measureLength = #(ly:make-moment 3 4)
    r16 a' cis e a cis e( cis) a4
  }
  \set Timing.measureLength = #(ly:make-moment 4 4)
  r16\f a, cis e dis e \acciaccatura gis8 fis16 e d e b e d e b e |
  cis16 e( a) gis_. \appoggiatura{fis[ gis]} fis e d cis
    \appoggiatura{b[ cis]} b a( gis) fis_. \appoggiatura{e[ fis]} e d cis( b) |
  r16 a' cis e a cis e( cis) d( b) gis e d e b e |
  cis16 e( a) gis \appoggiatura{fis[ gis]} fis e d( cis)
    \appoggiatura{b[ cis]} b a( gis) fis \appoggiatura{e[ fis]} e d cis( b) |
  r16 a' cis e a( e) cis e a( e) cis'( e,) e'( e,) cis'( e,) |
  r16 a, cis e a( e) cis e a( e) cis'( e,) e'( e,) cis'( e,) |
  a4 r <cis,, e a> q |
  q4 c'\rest cis' c,\rest |
  <a' e>2\ff f\rest^\fermata |
}

lowerVoice = \relative c {
  \voiceTwo
  \repeat volta 2 {
    \partial 4 { r4 |  }
    a4 r r a |
    d4 r r d |
    e,4 r gis'8[ e] d b |
    a8 a'16 a, b'[ a,] bis' a, e4\rest e\rest |
    a4 r r a |
    d4 r r d |
    e4 r s2 |
    a4 r a
  }
  \repeat volta 2 {
    r4 |
    b8 a fis[ gis] b a fis[ gis] |
    cis8 b gis[ a] cis8 b gis[ a] |
    b a gis[ fis] e d cis[ b] |
    \override TupletNumber #'transparent = ##t
    \override TupletBracket #'bracket-visibility = ##f
    \set tupletSpannerDuration = #(ly:make-moment 1 8)
    a8 \times 2/3 {
      \once\override TupletNumber #'transparent = ##f
      \once\override TupletBracket #'bracket-visibility = ##t
      cis'16[ a a,] d' b a, dis'[ bis a,]
    } d,4\rest d\rest|
    a'4 a\rest a\rest a |
    d4 d\rest d\rest d |
    e,4 d\rest r2 |
    \set Timing.measureLength = #(ly:make-moment 3 4)
    a'4 a\rest a
  }
  \set Timing.measureLength = #(ly:make-moment 4 4)
  a4 a\rest e8[ gis] e gis |
  a4 e\rest e e\rest |
  a4 a\rest e a\rest |
  a4 e\rest e e\rest |
  a4 a\rest a a\rest |
  a4 a\rest a a\rest |
  a4 a\rest a a |
  a4 a\rest a a\rest |
  a2 a2\rest |
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  \repeat volta 2 {
    \partial 4 { s4 | }
    s4*3 <a cis>4 |
    s4*3 <a d>4 |
    s1 |
    s4 s4 cis8 a\rest a4\rest |
    s4*3 <a cis>4 |
    s4*3 <a d>4 |
    s1 |
    s4*3
  }
  \repeat volta 2 {
    s4 |
    s1 |
    s1 |
    s1 |
    s2 cis8 a\rest s4 |
    s4*3 <a cis>4 |
    s4*3 <a d>4 |
    s1 |
    \set Timing.measureLength = #(ly:make-moment 3 4)
    s4 s2
  }
  \set Timing.measureLength = #(ly:make-moment 4 4)
  s1*6 |
  gis1\rest |
  s2 <e' a>4 s |
  <cis a>2 b\rest |
}

\bookpart {
  \header {
    subtitle = "Variation VI"
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
