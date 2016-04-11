\version "2.19.36"

\header {
  title = "Six Petites Pièces"
  composer = "F. Sor"
  opus = "Op. 45 No. 2"
  style = "Classical"
  source = "Paris:Shonenberger, n.d. Plate S.1767, edited by N. Coste"
  date = "c.1835"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Six Petites Pièces, No. 2"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"
  moreInfo = "With the forward: Let's see if that's that. Six short and easy pieces in stages, which aim to lead to what has generally been agreed are difficulties. Composed and dedicated to the person with the least patience, by Fernando Sor. Opus 45."

 footer = "Mutopia-2016/04/11-2110"
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
  system-count = #8
}

mbreak = {} % { \break }
global = {
  \time 2/4
  \key g \major
}

upperVoice = \relative c'' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \repeat volta 2 {
    b8[ b16 <c-2>16] <d-2>8 <a-1> |
    <g-1>4 <d-1>8 r |
    <d-1>8[ \slashedGrace{<a'-4>8} <g-2>16 <fis-1>16] <g-2>8 <gis-4> |
    <a-4>4 <d,-1> |
    <b'-1>8[ b16 c16] d8 b |

    \mbreak
    \barNumberCheck #6
    g4 b8 r |
    r8 <cis,-1>16. e32 a8 cis, |
    d4 r |
  }
  \repeat volta 2 {
    fis8[ fis16 e16] fis8 g |
    a4 d, |
    fis8[ \slashedGrace{g} fis16 e16] fis8 g |

    \mbreak
    \barNumberCheck #12
    a4 r |
    d,8[ g16 g16] g8 b |
    d4 b8 g |
    a8 e g16( fis) e fis |
    <b, g'>4 r |
  }
  \repeat volta 2 {
    \shiftOnn <g'-2>8 g16( fis) e8 <g-2> | \shiftOff

    \mbreak
    \barNumberCheck #18
    \shiftOnn <b-2>8 ais b <a-4> |
    \shiftOff a16( g) fis( g) e8 g |
    \shiftOnn fis4 \once\override NoteColumn.force-hshift=#-0.8 b, |
    g'8 g16( fis) e8 g |
    b8 ais b a |
    a16( g) fis( e) dis8 fis |
    \shiftOff

    \mbreak
    \barNumberCheck #24
    <g, e'>8 <b g'>16 r <g e'>8 r |
  }
  \repeat volta 2 {
    fis'4 r8 g |
    b4 a |
    \slashedGrace{a8} g fis g e |
    <fis, dis'>8 b16 b b8 b |
    fis'4 r8 g |

    \mbreak
    \barNumberCheck #30
    b4 a |
  }
  \repeat volta 2 {
    <e g>8 <g, e'> fis' dis |
    <g, e'>4 r |
    <b'-1>8 b16 <c-2> d8 <b-1> |
    <g-1>4 <d-1>8 r |
    <d-1>8 \slashedGrace{<a'-4>} <g-2>16 <fis-1> <g-2>8 <gis-4> |

    \mbreak
    \barNumberCheck #36
    <c, a'>4 <d-1> |
    b'8 b16 c d8 b |
    g4 b8 r |
    r8 cis,16. e32 a8 cis, |
    d4 r |
  }
  \repeat volta 2 {
    fis8 fis16( e) fis8 g |
    a4 d, |

    \mbreak
    \barNumberCheck #43
    fis8 \slashedGrace{g} fis16( e) fis8 g |
    a4 r |
    d,8 g16 g g8 b |
    d4 b8 g |
    a8 e g16( fis) e fis |
    <b, g'>4 r |
  }

  \bar "|."
}

lowerVoice = \relative c' {
  \voiceTwo
  \set fingeringOrientations = #'(left)
  \override Fingering.add-stem-support = ##t
  \repeat unfold 6 { <g b>8 d } | % 3 bars
  <fis-2 c'-3>8 <d-0> fis d |
  <g b>8 d <g b> d |

  \barNumberCheck #6
  <g b>8[ d <g b> d] |
  <a g'>2 |
  << {\voiceTwo d4 r} \\ {\voiceThree fis8 d d4} >> |
  <a' d>8 d, <a' c> <g b> |     % 2nd repeat starts
  << {\voiceTwo fis8[ d fis d]} \\ {\voiceThree c'2} >> |
  <a c>8 d, <a' c> <g b> |

  \barNumberCheck #12
  << {\voiceTwo fis8 d fis d} \\ {\voiceThree c'2} >> |
  <g b>4. q8 |
  <g b>2 |
  c,4 <d a' c> |
  g8 d \once\stemUp g, r |
  << {\voiceTwo e8[ <g' b> q q]} \\
     {\voiceThree e,2} >> |     % repeat starts

  \barNumberCheck #18
  << {\voiceTwo e8[ <g' b> q q]} \\
     {\voiceThree e,2} >> |
  e2 |
  << {\voiceTwo b'8 a' dis, a'} \\
     {\voiceThree b,4 dis} >> |
  << {\voiceTwo e,8[ <g' b> q q]} \\
     {\voiceThree e,2} >> |
  << {\voiceTwo e8[ <g' b>8] q[ q]} \\
     {\voiceThree e,2} >> |
  << {\voiceTwo e4 <b' a'>} \\
     {\voiceThree e,8 \once\stemDown <g' b> s4 } >> |

  \barNumberCheck #24
  e,4 s |
  d''8 b16 b b8 e |
  g8 b, fis' b, |
  e8 dis e g, |
  b,4 s |
  dis'8 b16 b b8 e |

  \barNumberCheck #30
  g8 b, fis' b, |
  r4 <b, a'> |
  e,8 e' e, r |
  \repeat unfold 6 { <g' b>8 d } |

  \barNumberCheck #36
  fis8 <d-0> fis d |
  <g b>8 d <g b> d |
  <g b>8[ d <g b> d] |
  <a g'>2 |
  << {\voiceTwo d4 r} \\ {\voiceThree fis8 d d4} >> |
  <a' c>8 d, <a' c> <g b> |
  fis8[ d fis d] |

  \barNumberCheck #43
  <a' c>8 d, <a' c> <g b> |
  << {\voiceTwo fis8 d fis d} \\ {\voiceThree c'2} >> |
  <g b>4 r8 <g b>8 |
  <g b>2 |
  a,4 <d a' c> |
  g8 d g, r |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 2"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegretto."
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
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
    >>
%}
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 74
  }
}
