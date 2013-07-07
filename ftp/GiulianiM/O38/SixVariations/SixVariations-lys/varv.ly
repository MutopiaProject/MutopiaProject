upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \set Voice.baseMoment = #(ly:make-moment 1 16)
  \set Voice.beatStructure = #'(2 2 2 2 2 2 2 2)
  \repeat volta 2 {
    \partial 4 { r8^\markup{"più Presto"} a16_\sf\> a' | }
    e,16 e'_\p cis, cis' a, a' cis, cis' e, e' cis, cis' e, e' a,_\sf\> a' |
    fis,16 fis'_\p d, d' a, a' d, d' fis, fis' d, d' fis, fis' a,\sf\> a' |
    gis,16 gis'\! e,, e'' f,\sf f' e,, e'' fis,\sf fis' e,, e'' gis,\sf gis' e,, e'' |
    a,16\sf a' e,, e''\sf b b' e,,, e'' cis\sf cis' e,, e' d, d' b, b' |
    e,16\sf e' cis,\p cis' a, a' cis, cis' e, e' cis, cis' e, e' a,\sf\> a' |
    fis,16 fis'\p d, d' a, a' d, d' fis, fis' d, d' b b' a, a' |
    gis,\f gis' e, e' d d' b, b' gis, gis' e, e' d, d' b,\> b' |
    a,16 a'\p cis, cis' e, e' gis, gis' a4
    
  }
  \repeat volta 2 {
    r8\sf cis,,16 cis'|
    d,16 d'\p ais, ais' b, b' e,, e' f, f' e, e' b b' d,\sf\> d' |
    cis,16 cis'\p gis, gis' a, a' e, e' fis, fis' e, e' a, a' cis,\sf\> cis' |
    d,16 d'\! ais, ais' b, b' e,, e' f, f' fis, fis' g, g' gis, gis' |
    \barNumberCheck #12
    a,16 \once\override DynamicTextSpanner #'style = #'none
       a'\cresc b, b' cis, cis' d, d' dis, dis' e, e' d, d' b,\sf\> b' |
    e,16 e'\p cis, cis' a, a' cis, cis' e, e' cis, cis' e, e' a,\sf\> a' |
    fis,16 fis'\p d, d' a, a' d, d' fis, fis' d, d' b b' a, a' |
    gis,16\f gis' e, e' d d' b, b' gis, gis' e, e' d, d' b, b' |
    a,16 a' cis, cis' e, e' gis,, gis' a4
  }
}

lowerVoice = \relative c' {
  \voiceTwo
  \set Voice.baseMoment = #(ly:make-moment 1 16)
  \set Voice.beatStructure = #'(4 4 4 4)
  \repeat volta 2 {
    \partial 4 { r8 a | }
    e8 cis a cis e cis e a |
    fis8 d a d fis d fis a
    gis8 e, f' e, fis' e, gis' e, |
    a'8 e, b'' e,, cis'' e, d b |
    e8 cis a cis e cis e a |
    fis8 d a d fis d b' a |
    gis8 e d' b gis e d b |
    a8 cis e gis a4
  }
  \repeat volta 2 {
    r8 cis,
    d8 ais b e, f e b' d |
    cis8 gis a e fis e a cis |
    d8 ais b e, f fis g gis |
    a8 b cis d dis e d b |
    e8 cis a cis e cis e a |
    fis8 d a d fis d b' a |
    gis8 e d' b gis e d b |
    a8 cis e gis, a4
  }
}

\bookpart {
  \header {
    subtitle = "Variation V"
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
	\set Timing.beamExceptions = #'()
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
	tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
  }
}
