\version "2.18.2"

\header {
  title = "8 Petites Pièces"
  composer = "D. Aguado"
  opus = "Op. 3 No. 6"
  style = "Romantic"
  source = "Mainz: B. Schott Söhne, plate 2674"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 003 - http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4032
  date = "1830"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "8 Petites Pièces for Guitar, No. 6"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/02/12-2054"
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

upperVoice = \relative c {
  \voiceOne
  \key d\minor
  \repeat volta 2 {
    <f d>8[ \grace{g8} <f d>16. <e cis>32 <f d>16. <g e>32] |
    <a f>8.[ <g e>16] <f d>8 |
    <d' f,>8 q16. <cis e,>32 <d f,>16. <e g,>32 |
    <f a,>8.[ <e g,>16] <d f,>8 |
    r16 bes'8 \noBeam g16 e[ cis] |
    \mbreak
    d8. e16 f8~\noBeam |
    f8 e d |
    <cis a>4
  }
  \repeat volta 2 {
    a'16. bes32 |
    c4 ~ c16 a |
    fis4 g16. a32 |
    \mbreak
    bes4~ bes16 g |
    e4 f16. g32 |
    a8 d <c fis,>8\noBeam |
    <bes g>8 <a f> <gis f> |
    <a f d>4 <cis, g e>8 |
    \mbreak
    d4
  }
  \key d\major
  \repeat volta 2 {
    a16. a32 |
    a8\noBeam fis'8. e16\noBeam |
    d8.( cis16) cis8\noBeam |
    cis16( d) e fis g fis |
    \mbreak
    e8.( d16) a'16.[ a32] |
    a8 d e16[ d] |
    r16 <cis a> <d b> <dis bis> <e cis> <cis a> |
    b8\noBeam \slashedGrace{cis8} b16 a b cis |
    \mbreak
    <a cis,>4
  }
  \repeat volta 2 {
    a16. a32 |
    \tuplet 3/2 { b16_( a) gis a[_( g) fis] g_( e) cis } |
    d4 fis16. d32 |
    cis8 e8.\noBeam a16 |
    \mbreak
    fis8 d a'16. a32 |
    \tuplet 3/2 { d16 fis,_( a) d,[ fis a,] d fis, a } |
    r4 r8 |
    <e'' g,>8 \slashedGrace{fis8} <e g,>16[ <dis fis,>16] <e g,> <fis a,> |
    <d fis,>4
  }
  \bar "|."
}

lowerVoice = \relative c, {
  \voiceTwo
  d4. |
  d8 d d |
  d4. |
  d4. |
  cis'8 bes4 |

  <f' d>4. |
  bes,4. |
  a4 r8 |
  s4.
  r8 d <bes' g> |

  r8 <e cis> <cis bes~> |
  bes8\noBeam cis, <a' f> |
  r4 d,8 |
  g8 a bes |
  a4 a,8 |

  <f' d>4 r8 |
  d,4. |
  a'4. |
  a4. |

  d,4. |
  d8 d' d |
  a4. |
  <d' e,>4. |

  a4 r8 |
  r4 <g a,>8 |
  d,4. |
  a4. |

  d4. |
  r4 r8 |
  a'4.~ |
  a4. |
  d,4
}

middleVoice = \relative c' {
  \voiceThree
  s4.*4 g4. |
  \stemDown 

  s4. g4 gis8 |
  s4. |
  r8 <ees' fis>[ <ees c_~>8] |
  c4 s8 |

  s4.*5 |

  s4. |
  d,8\rest <a' fis>[ q] |
  e8\rest <a g>[ q] |
  e8\rest <a g>[ q] |

  g8\rest <a fis> r |
  s4.*3 |

  s4.*2 |
  f8\rest <a fis>8[ q] |
  f8\rest <a g>8[ q] |

  f8\rest <a fis> f8\rest |
  s4.*3 s4
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
  \header { piece = "Tuning: DADGBE" }
  \layout {}
  \midi {
    \tempo 4 = 80
  }
}
