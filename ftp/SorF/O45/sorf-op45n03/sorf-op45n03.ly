\version "2.19.36"

\header {
  title = "Six Petites Pièces"
  composer = "F. Sor"
  opus = "Op. 45 No. 3"
  style = "Classical"
  source = "Paris:Shonenberger, n.d. Plate S.1767, edited by N. Coste"
  date = "c.1835"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Six Petites Pièces, No. 3"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  moreInfo = "With the forward: Let's see if that's that. Six short and easy pieces in stages, which aim to lead to what has generally been agreed are difficulties. Composed and dedicated to the person with the least patience, by Fernando Sor. Opus 45."

 footer = "Mutopia-2016/04/11-2111"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #12
}
\layout {
  indent = 2.2\cm
}

mbreak = {} % { \break }

u_theme_a = {
  g8[ e' c g] |
  g8[ e' c g] |
  g8[ e' a, d] |
  c4 b8 g |
  g8[ e' c g] |
  g8 f'4 e8 |
  e8 d a b
}
u_theme_b = {
  g8[ f' d g,] |
  g8[ e' c g'] |
  f8[ e d c] |
  c16( b) d( b) g8 g |
  a8[ b c d] |
  e8[ f g g,] |
  a8 f'4 d16. b32
}

upperTheme = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 8 {g8} |
  \u_theme_a

  \mbreak
  c4 r8 g |
  \u_theme_a

  \mbreak
  c4 r8 g |
  \u_theme_b

  \mbreak
  c4 r8 g |
  \u_theme_b
  c4 s

  \bar "|."
}

l_theme_a = {
  c2 |
  b2 |
  c4 f |
  r8 g g,4 |
  c2 |
  b4 c |
  f4. g8
}
l_theme_b = {
  c,8 <e g> c r |
  b2 |
  c2 |
  a'8[ g f fis] |
  g4 r |
  f8[ d e b] |
  c8 d e4 |
  f4 g
}

lowerTheme = \relative c {
  \voiceTwo

  \partial 8 {s8} |
  \l_theme_a |
  c,8 <e g> c r |
  \l_theme_a |
  \l_theme_b |
  \l_theme_b |
  c,8 <e g> c s |
}


%% 1st Variation

upperVarA = \relative c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \partial 8 {g8} |
  c,16 g' e c' g e' <d-4> c |
  c16( b) g'( d) d b g e |
  e16 g c e r a, f' d |
  c16( b) d( c) c( b) a( g) |
  \mbreak

  c,16 g' e c' g e' d c |
  c16 b g'( f) d b c e~ |
  e16 a, d e( e) a, b d |
  c16 e g,[ c] r8 g |
  \mbreak

  b,16 g' g'[( f)] d[ g, \slashedGrace{b8} a16 g] |
  c,16 g' g'[( e)] c8 e16 g |
  f8 e d c |
  c16( b) e d c b a g |

  \mbreak
  a8 b c d |
  e8 f g4 |
  a,16 g'( f) d c b a b |
  c8 e r g,

  \bar "|."
}

lowerVarA = \relative c {
  \voiceTwo
  \partial 8 {s8} |
  c4 g' |
  g4. b,8 |
  c4 f |
  g4. r8 |

  c,4 g'~ |
  g4. a8 |
  f4 d8 g16 f |
  e8 g c,4 |

  b4. r8 |
  c4( c16) g' c bes |
  a16 c g c f, a fis a |
  g4 r |

  << {\voiceTwo\shiftOnn r16 f d g e16 g b,8} \\
     {\voiceThree\stemDown s4 s8 d'16 g,} >> |
  << {\voiceTwo\shiftOnn c,8 d \once\override NoteColumn.force-hshift=#-1.3 e4 } \\
     {\voiceThree\stemDown e'16[ c] f[ c] g' c, b bes } >> |
  f4 g |
  << {\voiceTwo\shiftOnn \once\override NoteColumn.force-hshift=#-1.2 c,4 c8 r } \\
     {\voiceThree\stemDown c'16[ g] e'[ c] s4 } >> |
}


%% Variation 2

upperVarB = \relative c'' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \repeat volta 2 {
    <g-1>4 ees8 ees |
    <f-1>4 <d-3> |
    <ees-4>8[ b <c-2> d] |
    c16. b32( d16.) b32 g8 g |
    g'4 ees8 f |
    <d-4>4 ees8 b |

    \mbreak
    c8 f16. g32 aes8 d, |
  }
  \alternative {
    { <ees-4>4 r8 g, | }
    { ees'4 r8 <bes-2>8 | }
  }
  \repeat volta 2 {
    <g'-3>4 <f-1>8 <g-4>16 f |
    e4 f8 <g-4> |
    <a-4>8 <f-1> <d-3> <c-1> |

    \mbreak
    c16.( b32) d16.( b32) g8 g' |
    fis4 <f-1>8 f |
    <ees-3>8. <d-3>16 <c-1>8 c |
    d8. c16 b16. c32 d16. b32 |
  }
  \alternative {
    {\shiftOnn\once\override NoteColumn.force-hshift=#-1 <c-2>4. s8 | }
    {\shiftOnn\once\override NoteColumn.force-hshift=#-1 c4. s8 | }
  }

  \bar "|."
}

lowerVarB = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t
  <ees-2>8 g, c g |
  d'8 g, <b-4> g |
  <c,-2>8[ d ees f] |
  g4 r |
  ees'8 g, c <a-2> |
  bes8 <aes-1> g4 |

  aes4. b16 aes |
  g8 bes <ees,-1> r |           %1st alt.
  g8 bes ees, r |               %2nd alt.
  r8 ees'[ <d-3> <des-2>] |
  c8 bes aes <e-2> |
  <f-2>4. <fis-4>8 |

  g4 g |
  r8 <a c>8[ <bes-4 d> <g d'>8] |
  <c-4>8 g <aes-1> <ees-1> |
  f8 aes g4 |
  << {\voiceTwo <c,-4>4 c8\noBeam bes'} \\
     {\voiceThree c,8 <ees-1 g> r8 s } >> |
  << {\voiceTwo c4 c8 s} \\
     {\voiceThree c8 <ees g> r8 g } >> |
}

%% Variation 3

upperVarC = \relative c' {
  \voiceOne
  \repeat volta 2 {
    e8 s4 c'8 |
    c8 b d f, |
    e8 s4 g,8 |

    \mbreak
    d'8[ cis8] <b d>8[ g8] |
    e'8 s4 c'8 |
    b8[ d8] f,8[ e8] |

    \mbreak
    s4 \tuplet 3/2 { b16 g'( fis) }
    \omit TupletBracket \omit TupletNumber \tuplet 3/2 { f16 d b } |
    \tuplet 3/2 { c16 e g, c e, g } c,8 g' |
  }
  \repeat volta 2 {
    \undo \omit TupletNumber
    \shiftOnn
    \once\override NoteColumn.force-hshift=#-1
    f'8[ \tuplet 3/2 { d16 f d] } g,8[ <d' f>8] |
    \once\override NoteColumn.force-hshift=#-1
    f8[ \tuplet 3/2 { c16 e c] } \omit TupletNumber \tuplet 3/2 { g[ f g] c[ e g] } |
    \shiftOff

    \mbreak
    \tuplet 3/2 {
      a,16 g'( f) g, f'( e) f, a d fis, a c |
      b16 e d c a fis' } <b, g'>8[ g] |
    \tuplet 3/2 {
      a16 f c' <d, b'> g d' <e, c'> g e' <b, d'> g' f' |

      \mbreak
      <c, e'>16 c' e <d, f'> c' f g e c e,, g' c |
      f,,16 f' a d e f g,, f' g b c d |
      c16 e g, c e, g } c,8 r
  }

  \bar "|."
}

lowerVarC = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = #'(1 1 1 1)
  \tuplet 3/2 { c16 c, e }
  \omit TupletBracket \omit TupletNumber
  \tuplet 3/2 { g c <e-0> <g-1> <e-3> g <c-4> <e,-1> g, | }
  \tuplet 3/2 {
    <c'-4>16 <f,-2> g, <b'-3> f g, <d''-3> b, g <f'-1> <d-4> g, |
    c16 c, e g c e g( e) c g c e |

    <d-1>16 b( g) <cis-1> ais( g) s16*6 |
    c16 c, e g c e g e g c e, g, |
    b'16 f g, d'' b, g f' d g, e' c a |
  }

  \tuplet 3/2 {d16 e, a d e f} g,4 |
  s2 |
  << {\voiceTwo b,4 s8 b} \\
     {\voiceThree \tuplet 3/2 {b16 d g} s8 s4 } >> |
  << {\voiceTwo c,4 s} \\
     {\voiceThree \tuplet 3/2 {c16 f g } s8 s4 } >> |

  <a-2>8[ <g-4>] <f-1>[ fis] |
  g8[ d] g r |
  s4 e8[ b] |

  c8[ d] e[ e,] |
  f4 g |
  c4 s |
}


%% All scores: Theme, Var I - III

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = \markup{\center-column{ "Nº 3" "Theme"}}
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \time 2/4
      \key c \major
      \clef "treble_8"
      \tempo "Andante."
      \context Voice = "upperTheme" \upperTheme
      \context Voice = "lowerTheme" \lowerTheme
    >>
  >>
  \layout { }
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 90
  }
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Var. I"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \time 2/4
      \key c \major
      \clef "treble_8"
      \context Voice = "upperVarA" \upperVarA
      \context Voice = "lowerVarA" \lowerVarA
    >>
  >>
  \layout { }
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 80
  }
}

\pageBreak

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = \markup{"Var. II"}
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \time 2/4
      \key c \minor
      \clef "treble_8"
      \context Voice = "upperVarB" \upperVarB
      \context Voice = "lowerVarB" \lowerVarB
    >>
  >>
  \layout { }
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 80
  }
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = \markup{"Var. III"}
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
    } <<
      \time 2/4
      \key c \major
      \clef "treble_8"
      \context Voice = "upperVarC" \upperVarC
      \context Voice = "lowerVarC" \lowerVarC
    >>
  >>
  \layout { }
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 72
  }
}
