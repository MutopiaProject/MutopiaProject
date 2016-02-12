\version "2.18.2"

\header {
  title = "8 Petites Pièces"
  composer = "D. Aguado"
  opus = "Op. 3 No. 3"
  style = "Romantic"
  source = "Mainz: B. Schott Söhne, plate 2674"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 003 - http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4032
  date = "1830"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "8 Petites Pièces for Guitar, No. 3"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/02/12-2065"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

mbreak = {} % { \break }
global = {
  \time 3/8
  \key a \major
}

upperVoice = \relative c' {
  \voiceOne
  \partial 8 { cis16 d }
  e16( fis) gis a b cis |
  e,4 fis16. e32 |
  e4 \slashedGrace {gis8} fis16. e32 |
  e8 <cis a> cis16[ d] |
  e16( fis) gis a b cis |
  \mbreak
  d4 cis16. b32 |
  cis8 a e' |
  b4 r8 |
  s4. |
  a4\rest a16. a32 |
  a4 gis8~ |
  \mbreak
  gis8 fis fis16[ gis] |
  a16 b cis d e eis |
  fis8. r16 r8 |
  r8 e\noBeam <gis, d> |
  <a cis,>4 s8 |
  \repeat volta 2 {
    <cis, a>8[ \slashedGrace {d} <cis a>16 <b gis> <cis a>8] |
    \mbreak
    <e cis>4 <cis a>8 |
    <a' cis,>8[ \slashedGrace {b8} <a cis,>16 <gis b,> <a cis,>8] |
    <cis e,>4 <a cis,>8 |
    <gis e>8 \slashedGrace {fis'8} e16.[ dis32] e8 |
    a,8 \slashedGrace {fis'8} e16.[ dis32] e8 |
    e,16( fis) gis a b gis |
    \mbreak
  }
  \alternative {
    { a16( cis) e,[( a)] cis,( e) | }
    { a16 e cis e cis a | }
  }
  \repeat volta 2 {
    <gis e>8 \slashedGrace {a8} <gis e>16.[ fisis32] <gis e>8 |
    <b gis>4 <gis e>8 |
    <gis' b,>8 \slashedGrace {b8} <gis b,>16 <fisis ais,> <gis b,>8 |
    \mbreak
    <b d,>4 <gis b,>8 |
    e8 dis d |
    cis16 e a cis a e' |
    e,4 <gis, d>8 |
    a4 r8
  }
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 8 { r8 } |
  s4. |
  a4. |
  e4. |
  a4 r8 |
  s4. |

  e'4. |
  a,4. |
  e4 fis16( gis) |
  a16( b) cis d( e) fis |
  << {\voiceTwo fis4. } \\ {\voiceThree\stemDown c'8\rest <cis a>8 q } >> |
  << {\voiceTwo cis,4. } \\ {\voiceThree\stemDown c'8\rest <b eis> q } >> |

  fis4. |
  s4. |
  r8 r16 cis( d) b |
  gis16 r r8 e'8 |
  a,4 s8 |
  a4. |

  a8 a a |
  a4. |
  a8 a a |
  d'8 r r |
  <e cis>8 r r |
  << {\voiceTwo e,,4.} \\ {\voiceThree\stemDown d''4. } >> |

  << {\voiceTwo a,4. } \\ {\voiceThree\stemDown cis'8 e,\rest e\rest } >> |
  << {\voiceTwo a,4.} \\ {\voiceThree\stemDown cis'8 e,\rest e\rest } >> |
  e,4. |
  e8 e e |
  e4. |

  e8 e e |
  <gis' e>8 <a fis> <b gis> |
  a8 a\rest a\rest |
  r4 e,8 |
  <cis' a>4 r8
}

middleVoice = \relative c, {
  \voiceThree
  \stemDown
  \partial 8 { s8 }
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Valse."

      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "middleVoice" \middleVoice
    >>
%{
    % tabs are not completely developed
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
      \context TabVoice = "middleVoice" \middleVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 90
  }
}
