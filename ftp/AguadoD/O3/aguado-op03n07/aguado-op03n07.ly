\version "2.18.2"

\header {
  title = "8 Petites Pièces"
  composer = "D. Aguado"
  opus = "Op. 3 No. 7"
  style = "Romantic"
  source = "Mainz: B. Schott Söhne, plate 2674"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 003 - http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4032
  date = "1830"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "8 Petites Pièces for Guitar, No. 7"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/02/12-2055"
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

mbreak = { \break }
global = {
  \time 3/8
}

upperVoice = \relative c' {
  \voiceOne
  \repeat volta 2 {
    c16. d32 c8[ c] |
    c16( b) a[ g] a b |
    c8 d e |
    <f b, g d>4 e16. f32 |
    g8 c g16.[ e32] |

    d8 a' f16.[ d32] |
    b8 g' f16[ d] |
  }
  \alternative {
    { <c e,>4 r8 }
    { <c e,>4 }
  }
  \repeat volta 2 {
    \slashedGrace{g'8} f16. e32 
    e4. |
    <c a>4. |
    <b g>8 g' g32[( fis) e fis] |
    <g b,>4 a16. g32 |

    <f g>4. |
    g4 a8 |
    f16. e32 c8[ \slashedGrace{e8} <d f,>8] |
    \set Timing.measureLength = #(ly:make-moment 1/4)
    <c e,>4 |
  }
  \set Timing.measureLength = #(ly:make-moment 3/8)
  \key c\minor
  \repeat volta 2 {
    c8 ees d |
    c4. |
    <d g,>8 f <ees g,> |
    d4. |

    <ees g,>8 q <ees fis,> |
    <ees f,> <aes bes,> <g bes,> |
    g8 f ees |
    f16 ees f[ g] aes bes |
    b16_( c d)[ c] bes aes |
    g16_( aes bes)[ aes] c, f |
    ees4 <d aes>8 |

    <ees g,>4 r8 |
  }
  \repeat volta 2 {
    ees8 ees ees |
    des4. |
    <aes' c,>4. |
    bes,4. |
    <f' aes,>4. |
    e4. |

    f16 c aes'([ g]) f ees |
    d( ees) d[ c] b c |
    <b g>4. |
    s8 ees8\noBeam d16 c |
    <b g>4. |
    r8 ees8\noBeam d16 c |
    <b g>8\noBeam g'8 g |

    g16( aes) g[ f] ees d |
    c8 ees d |
    c4. |
    d8 f ees |
    d4. |
    e8 e e |
    g8( f) \afterGrace f {\override Flag.stroke-style="grace" g8} |

    aes8 g \afterGrace g {\override Flag.stroke-style="grace" g8} |
    bes8 aes c16.[ b32] |
    c8 c \afterGrace c {\override Flag.stroke-style="grace" c8} |
    ees4 fis,16.[ fis32] |
    <fis ees c>8 q q |
    <g ees>4. |
    g,8 <aes fis> <b f> |
    <c ees,>4 r8 |
  }
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  <e c>4 q8 |
  <f d>4. |
  <e c>8 <g b,> <g c,> |
  g,4 r8 |
  c'4. |

  f,4. |
  <f g,>4. |
  c4 r8 |
  c4 r8 |
  r16 <b' g> <c a>16[ <cis ais>16] <d b> <b g> |
  r16 a,( b16[) c] d e |
  d4 d8 |
  g,4. |

  r16 g' fis([ g]) b g |
  e'8\noBeam ees s |
  g,4 g,8 |
  c4                            % partial for repeat
  <ees c>4 <f b>8 |
  ees16 g fis[ g] aes g |
  b,4 c8 |
  g4. |

  c4 a8 |
  bes8 d ees |
  <c' aes>4 <c bis>8 |
  <c aes>4 r8 |
  r4 r8 |
  r4 r8 |
  bes,4. |

  ees4 r8 |
  ees8 g bes |
  s4. |
  r16 aes, c[ ees] c aes |
  e4. |
  r16 f( g)[ aes] bes b |
  c4. |

  <aes' f>4 r8 |
  <a fis>4. |
  r16 g,\noBeam fis g a b |
  c4. |
  r16 g\noBeam fis g a b |
  c4 s8 |
  g4. |

  r4 r8 |
  c4 b8 |
  c4. |
  b4 c8 |
  g4. |
  <c' bes>4. |
  <c aes>4. |

  <bes e,>4 <c e,>8 |
  <c f,>4 r8 |
  R4. |
  r4 r8 |
  aes,8 aes aes |
  g4. |
  g4. |
  c4 s8
}

middleVoice = \relative c' {
  \voiceThree
  \stemDown
  s4.*5 |
  \mbreak
  s4.*6 |
  s4 <c a>8 |
  s4. |
  \mbreak
  s4. |
  \once\override NoteColumn.force-hshift = #-2
  c4( <c fis,>8) |              % hmm, looks better as slur than tie
  s4. |
  s4 s4. |
  \once\override NoteColumn.force-hshift = #-1.5
  c,4. |
  s4. |
  f16\rest g fis[ g] aes g |
  \mbreak
  s4.*6 |
  \stemUp
  g8 f s |
  \mbreak
  s4.*2 |
  \once\override NoteColumn.force-hshift = #2
  ees'16 f g[ aes] bes f |
  s4. |
  \once\override NoteColumn.force-hshift = #2
  c16 d e[ f] g e |
  s4. |
  g,8 aes bes |
  \mbreak
  s4.*3 |
  a8\rest \once\stemDown aes4 |
  s4. |
  s8 <a fis>8 s |
  s4. |
  \mbreak
  s4. |
  ees4 aes8 |
  ees16 g fis[ g aes g] |
  g4 g8 |
  g16\rest g fis[ g] aes g |
  s4.*2 |
  \mbreak
  s4.*5 |
  \stemDown
  c4 d16 c |
  s4*2
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
    \tempo 4 = 80
  }
}
