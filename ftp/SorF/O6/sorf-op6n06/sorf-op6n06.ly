\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 6"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 6"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/06/20-2125"
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
%  system-count = #8
}

mbreak = { \break }
global = {
  \time 3/8
  \key a \major
}

u_motif_a = \fixed c {
  <a cis'>8 <b d'> <cis' e'> |
  <d' fis'>8 <e' gis'> <fis' a'> |
  <e' gis'>8 <fis' a'> <gis' b'> |
  <a' cis''>8 <b' d''> <bis' dis''> |
  <cis'' e''>8 <b' d''> <a' cis''> |
  <gis' b'>8 <fis' a'> <e' gis'> |
  <d' fis'>8 <cis' e'> <b d'> |
  <a cis'>4 <gis b>8
}  
l_motif_a = \fixed c {
  a,4. | a,4. | a,4. | a,4. | a,4. | a,4. | d4. | r8 e e,
}

u_motif_b = \fixed c {
  e'4. | e'4. | e'4. | r8 e' e' |
}

l_motif_b = \fixed c {
  <e gis>8 <fis a> <gis b> |
  <a c'>8 <ais cis'> <b d'> |
  <b dis'>8 <c' e'> <a c'> |
  <e, gis b>4. |
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \repeat volta 2 {
    \u_motif_a | \u_motif_a |
    e'4. |
    e'4. |
    a'4. |

    b'4. |
    gis'4. |
    \acciaccatura{b'8}<fis' a'>8 <eis' gis'> <fis' a'> |
    <dis' fis'>4. |
    <e, gis e'>4 r8 |
  }
  \repeat volta 2 {
    e'8 fis' g' |
    \repeat unfold 3 { fis'4. |}
    fis'8 a' gis' |
    e'4. |

    e'4. |
    e'4. |
    e'8 a' gis' |
    gis'8 fis' fis' |
    gis'8 fis' fis' |
    e'8 d' d' |
    e'8 d' d' |
    cis'8 b b |
    cis'8 b b |
    gis8 e' e' |

    \u_motif_b | \u_motif_b |

    \repeat unfold 3 {
      e'4. |
      r4 e'8 |
    }
    e'4 s8 |
    r4 e'8 |
    \oneVoice
    \slashedGrace{fis'8} e'8 dis' e' |
    gis'8 fisis' gis' |
    <gis' b'>8 <fisis' ais'> <gis' b'> |
    <e, b' d''>4. |
    <b' d''>8 <a' cis''> <gis' b'> |
    <fis' a'>8 <e' gis'> <d' fis'> |
    <cis' e'>4 <bis dis'>8 |
    <b d'>4 r8 |
    <f b d'>4. |
    <e b d'>4\fermata r8 |

    \voiceOne
    \u_motif_a | \u_motif_a |
    \repeat unfold 8 { e'4. | }
    a'4. |
    a'4. |
    b'4. |
    b'4. |
    cis''4. |
    cis''4. |
    <<{d''4.}\\{f'4.}>> |
    \once\stemDown <e' gis' d''>4 b8\rest\fermata |
    \stemDown <gis' b'>8 <fisis' ais'> <gis' b'> \stemNeutral |
    <<{cis''8 e' cis''}\\{a'4 a'8}>> |

    <b' d''>8 e' <b' d''> |
    <bis' dis''>8 <cis'' e''> <a' cis''> |
    <gis' b'>8 e' <gis' b'> |
    <a' cis''>8 e' <ais' cis''> |
    <b' d''>8 <ais' cis''> <b' d''> |
    <bis' dis''>4 <cis'' e''>8 |
    <cis'' e''>8 <b' d''> <cis'' e''> |
    <a' cis''> <gis' b'> <a' cis''> |
    \slashedGrace{\once\stemUp b'8} <fis' a'> <eis' gis'> <fis' a'> |
    \stemUp
    \slashedGrace{gis'8} <d' fis'> <cis' eis'> <d' fis'> |
    <b d'>8 <ais cis'> <b d'> |
    <a cis'>8 e' <a cis'> |

    \barNumberCheck #113
    <<{b8 d' b}\\{gis4 gis8}>> |
    a4 r8 |
    <a cis'>8 <b d'> <cis' e'> |
    <d' fis'>8 <e' gis'> <fis' a'> |
    gis'8 e' b' |
    a'8 e' cis'' |
    <a cis'>8 <b d'> <cis' e'> |
    <d' fis'>8 <e' gis'> <fis' a'> |
    gis'8 e' b' |
    <cis' a'>4. |
    <a cis'>8 <b d'> <cis' e'> |
    <d' f'>4. |
    gis'8 e' b' |

    <cis' a'>4 e'8 |
    <a cis'>8 <b d'> <cis' e'> |
    <d' f'>4. |
    gis'8 e' b' |
    <<{a'4.}\\{a,4.}>> |
    gis'8 e' b' |
    <<{a'8 cis' e'}\\{a'4 s8}>> |
    gis'8 e' b' |
    a'8 e' cis'' |
    a'8 e' cis'' |
    \repeat unfold 3 {<cis' a'>4. |}
  }

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  \l_motif_a | \l_motif_a |
  <e gis>8 <fis a> <gis b> |
  <a cis'>8 <b dis'> <cis' e'> |
  <b dis'>8 <cis' e'> <dis' fis'> |

  <e' gis'>8 <dis' fis'> <e' gis'> |
  e'8 bis cis' |
  a,4. |
  b,8 b a |
  s4. |
  R4. |
  r8 <fis ais> <gis b> |
  <ais cis'>8 <b d'> <cis' e'> |
  <cis' e'>8 <bis dis'> <b d'> |
  R4. |
  r8 <e gis> <fis a> |

  <gis b>8 <a cis'> <b d'> |
  <b d'>8 <a cis'> q |
  cis'4 <b d'>8 |
  <a cis'>4. |
  <gis b>4. |
  <fis a>4. |
  <e gis>4. |
  <d fis>4. |
  <dis fis>4. |
  e4 r8 |

  \l_motif_b | \l_motif_b |

  r8 <e gis> q |
  <eis gis>8( <fis a>4)  |
  r8 <fis a>8 q |
  <fisis ais>8( <gis b>4) |
  r8 <gis b> q |

  <gis b>8( <a cis'>4) |
  r8 <a cis'> <ais cis'> |
  <ais cis'>8( <b d'>) r |
  s4.*10 |

  \l_motif_a | \l_motif_a |
  <e gis>8 <fis a> <gis b> |
  <a cis'>8 <gis b> <a cis'> |
  <b d'>8 <ais cis'> <b d'> |
  <bis dis'>8 <cis' e'> <a cis'> |
  <e gis>8 <fis a> <gis b> |
  <a cis'>8 <gis b> <a cis'> |
  <b d'>8 <ais cis'> <b d'> |

  <bis dis'>8 <cis' e'> <a cis'> |
  <a cis'>8 <b d'> <cis' e'> |
  <d' fis'>8 <cis' e'> <d' fis'> |
  <b dis'>8 <cis' e'> <dis' fis'> |
  <e' gis'>8 <dis' fis'> <e' gis'> |
  <cis' eis'>8 <dis' fis'> <eis' gis'> |
  <fis' a'>8 <eis' gis'> <fis' a'> |
  \voiceThree a'8 b' a' \voiceTwo |
  s4. |
  e,4. |
  \voiceFour e,4. \voiceTwo |

  \repeat unfold 6 {e,4. |}
  \repeat unfold 3 {a,4. |}
  \repeat unfold 3 {d4. |}

  \voiceFour e,4. \voiceTwo |
  a,8 a, a, |
  a,4. |
  a,4. |
  <a, b d'>4. |
  <a, cis'>4. |
  a,4. |
  a,4. |
  <a, b d'>4. |
  a,8 a, a, |
  a,4. |
  a,8 a, a, |
  <a, b d'>4. |

  a,8 a, a, |
  a,4. |
  a,8 a, a, |
  <a, b d'>4. |
  \voiceFour b8\rest cis' e' \voiceTwo
  <e, b d'>4. |
  \voiceFour a,4. \voiceTwo |
  <e, b d'>4. |
  <a, cis'>4. |
  <a, cis'>4. |
  \repeat unfold 3 {a,4. |}
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 6"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegro."
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
