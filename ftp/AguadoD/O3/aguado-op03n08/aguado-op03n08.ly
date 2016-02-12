\version "2.18.2"

\header {
  title = "8 Petites Pièces"
  composer = "D. Aguado"
  opus = "Op. 3 No. 8"
  style = "Romantic"
  source = "Mainz: B. Schott Söhne, plate 2674"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 003 - http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4032
  date = "1830"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "8 Petites Pièces for Guitar, No. 8"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/02/12-2056"
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
}

upperVoice = \relative c' {
  \voiceOne
  \key e \major
  \repeat volta 2 {
    \partial 8 { b16. e32 } |
    gis4 fis8 |
    e16 e32 dis e[( fis) gis a] ais b cis b |
    <dis a>4 <e gis,>8 |
    <fis a,>4 cis,16. fis32 |
    a4 gis8 |
    \mbreak
    fis16 gis32( fis) a[( gis) b( a)] cis( b) dis( cis) |
    ais32( b) gis e b8[ <dis a>8] |
    <dis a>8( <e gis,>)
  }
  \repeat volta 2 {
    b16. e32 |
    gis4 fis16 e |
    \mbreak
    dis16 fis b dis cis b |
    ais16 cis32 dis e32[( dis) cis b] ais( gis) fis e |
    e4 dis8 |
    b16 dis32 fis b8[ a] |
    \mbreak
    gis32 e dis( e) gis[ e b' gis] e'8 |
    cis16 a32 fis e8[ dis] |
    <e gis,>4
  }
  \key e\minor
  \repeat volta 2 {
    b8 |
    <g' b,>4 <fis a,>8 |
    \mbreak
    <e gis,>4 r8 |
    <a fis>4 <g e a,>8 |
    <fis dis>4 d16.[ d32] |
    c'8. b32[ a] g fis e d |
    c4 <b g>8 |
    \mbreak
    r16 a'[ gis a] c16. fis,32 |
    \set Timing.measureLength = #(ly:make-moment 1/4)
    <g b,>4
  }
  \set Timing.measureLength = #(ly:make-moment 3/8)
  \repeat volta 2 {
    <b g>4 q8 |
    <a fis>4. |
    <g e>4 q8 |
    \mbreak
    <fis dis>4. |
    a16. dis32 \tuplet 3/2 { fis16[ e dis] c  b a } |
    <g e>8 <fis dis a> <e g,> |
    <fis c>16. a32 c8[ <dis, fis,>8] |
    <fis a,>4 <e g,>8_\markup{\halign #-2 \italic{ "Fine."}}
  }
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 8 {r8} |
  e4 b8 |
  e,4. |
  r8 b''4 |
  b4 r8 |
  fis4 <e cis>8 |

  fis,16 b\rest b8\rest b8\rest |
  b8\rest b\rest b |
  e4 r8 |
  e4. |

  <b' b,>4. |
  <cis fis,>4. |
  r16 fis,16( gis) ais b8\noBeam |
  b,4 dis8 |

  e8 r r |
  a8\noBeam b <a b,> |
  e,4 r8 |
  r16 g'16 fis e dis b |
  r16 e, g b g e |
  r16 c'' a fis gis e |
  b'8 b, r |
  r8 <a' d,>4 |
  r8 <a dis,> e |

  <e' c,>4 <a, d,>8 |
  g4 |
  % Source has the last 4 beamed notes as 32nds but that didn't add up.
  % Making them 16ths gets the timing correct and matches the alignment
  % in the source.
  r16 g32( fis) g16[ a b cis] |
  r16 d cis d e d |
  r16 g,,32( fis) e16[( fis) g a] |

  b4. |
  c'16 r r8 r |
  b8 b, c |
  a4 b8 |
  e8 b e,\noBeam
}

middleVoice = \relative c' {
  \voiceThree
  \autoBeamOff
  \partial 8 {s8} |
  b8\rest b a |
  gis4. |
  s4.*2 |
  b8\rest <cis a>8 b |

  <a fis>8 a\rest a\rest |
  s4.*2 |
  b8\rest <b gis> q |

  s4.*4 |
  s4.*4 |
  s4.*5 |
  s4. s4 s4.*3 |
  \autoBeamOn\stemDown
  g16\rest b ais b c b |
  s4.*4
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Minuetto."

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
    \tempo 4 = 78
  }
}
