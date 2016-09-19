\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 12"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 12"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/09/19-2136"
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

mbreak = { } % { \break }
global = {
  \time 4/4
  \key a \major
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \repeat volta 2 {
    a'2 a'4 a' |
    cis''4.. b'16 a'4 a' |
    a'4 gis' fis' gis' |
    a'8 <a cis'> <b d'> <bis dis'> e'2 |
    <d' fis'>2 <fis' a'>4 <d' fis'> |

    \mbreak
    <cis' e'>2 <cis' a'>4 <cis' e'> |
    <b d'>4 q <a cis'>4 q |
  }
  \alternative {
    { <a cis'>2 <gis b>4 a'\rest | }
    { <a cis'>2 <gis b>4 a'\rest | }
  }
  \repeat volta 2 {
    <gis b e'>2 q4 q |
    e'4 a'4. gis'8 \slashedGrace {gis'8} fis' e' |

    \mbreak
    <gis b e'>2 q4 q |
    <a e'>2 <a a'>4 r |
    e'2 e'4 e' |
    e'2 d'4 r |
    fis'2 fis'4 fis'4 |

    \mbreak
    fis'2 e'4 r |
    gis'8 <b d'> <ais cis'> <b d'> e4 e |
    b'8 <d' gis'> q q a' <cis' fis'> fis' <a d'> |
    e'8 <a cis'> <gis b> <a cis'> r e' fis' gis' |
    gis'2 a'4 b4\rest |

    \mbreak
    \key a \minor
    a'8 <c' e'> q q a'4 a' |
    a'8 <b d'> q q gis'4 a' |
    b'8 <b d'> q q b'4 b' |
    b'2 a' |
    c''8 <c' e'> q q a4 aes |

    \mbreak
    g4 b c' \once\stemDown c |
    f4 fis g g, |
    c2 s |
    e'2 e'4 e' |
    e'2 r8 c'' b' a' |

    \mbreak
    e'2 e'4 e' |
    e'2 r8 e'\noBeam c'' b' |
    a'8 e' c' a f2 |
    d2 d |
    dis2 dis |
    e2 s |

    \mbreak
    \repeat unfold 2 {
      b'2 a'4 a' |
      gis'4 r s2 |
    }
    s1 |

    \mbreak
    \key a \major
    a'8 <cis' e'> <d' fis'> <cis' e'> a'4 a' |
    cis''4.. b'16 a'4 a' |
    a'4 gis' fis' gis' |
    a'8 <a cis'> <b d'> <bis dis'> e'2 |
    <d' fis'>2 <fis' a'>4 <d' fis'> |
    <cis' e'>2 <cis' a'>4 <cis' e'>4 |

    \mbreak
    <b d'>4 q <a cis'> q |
  }
  \alternative {
    { <a cis'>2 q4 r | }
    { <a cis'>2 q4 r | }
  }
  \repeat volta 2 {
    <gis b e'>2 q4 q |
    e'4 a'4. gis'8 \slashedGrace{gis'8} fis' e' |

    \mbreak
    <gis b e'>2 q4 q |
    <a e'>2 <a a'>4 r |
    e'2 e'4 e' |
    e'2 d'4 r |
    fis'2 fis'4 fis' |

    \mbreak
    fis'2 e'4 r |
    gis'8 <b d'> <ais cis'> <b d'> e4 e |
    b'8 <d' gis'> q q a' <cis' fis'> fis' <a d'> |
    e'8 <a cis'> <gis b> <a cis'> r e' fis' gis' |
    gis'2 a'4 b\rest |
  }
  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  a'8 <cis' e'> <d' fis'> <cis' e'> <bis dis'> <cis' e'> <d' fis'> <cis' e'> |
  cis'8 <cis' e'> q q q q <d' fis'> <cis' e'> |
  a'8 <b d'> q q q q q q |
  a'2 <cis' e'>8 <a cis'> <b d'> <cis' e'> |
  gis8\rest a gis a a a a a |

  f8\rest a gis a a a a a |
  e,4 gis, a, cis |
  e,2 e,4 e,\rest |
  e,2 e,4 e,\rest |
  d8 fis d fis d fis d fis |
  cis8 e cis e cis e cis e |

  d8 e d e d e d e |
  cis e cis e cis e cis e |
  cis2 cis4 cis |
  d2. s4 |
  dis2 dis4 dis |

  e2. s4 |
  gis'2 e8 <b d'> e <b d'> |
  b'2 s |
  e'2 <b d'> |
  b8\rest <b d'> <ais cis'> <b d'> <a cis'>4 s |

  a'2 <d' f'>8 <c' e'> <d' f'> <c' e'> |
  a'2 <b d'>8 q <a c'> q |
  b'2 <c' e'>8 <b d'> <c' e'> <b d'> |
  b8\rest <c' e'> q q <d' f'> <c' e'> <b dis'> <c' e'> |
  c''2 a8 <c' f'> aes <c' f'> |

  g8 <d' f'> b <f' g'> c' <e' g'> \once\stemUp c <e' g'> |
  f8 <c' f'> fis <c' ees'> g[ <c' e'>8] g,8 <d f> |
  c8 <f g> q q <c e g>4 c\rest |
  a8\rest <gis b> <a c'> <ais cis'> <b d'> <ais cis'> <b d'> <gis b> |
  a8\rest <a c'> <b d'> <b dis'> <c' e'>2 |

  a8\rest <gis b> <a c'> <ais cis'> <b d'> <ais cis'> <b d'> <gis b> |
  a8\rest <a c'> <b d'> <b dis'> <c' e'>4 a\rest |
  a'2 f8 c' a c' |
  d8 d' bes d' d d' bes d' |
  dis8 c' a c' dis c' a c' |
  e8 b gis b e4 e\rest |

  gis2 a4 a, |
  e,2 s |
  r4 gis a a, |
  e,2 s |
  s1 |

  a'2 <bis dis'>8 <cis' e'> <d' fis'> <cis' e'> |
  cis''8 <cis' e'> q q q q <d' fis'> <cis' e'> |
  a'8 <b d'> q q q q q4 |
  a'2 <cis' e'>8 <a cis'> <b d'> <cis' e'> |
  \repeat unfold 2 { g8\rest a gis a a a a a | }

  e,4 gis, a, cis |
  e,2 e,4 r |
  e,2 e,4 s |
  d8 e d e d e d e |
  cis8 e cis e cis e cis e |

  d8 e d e d e d e
  cis8 e cis e cis e cis e |
  cis2 cis4 cis |
  d2. s4 |
  dis2 dis4 dis |

  e2 gis8 b gis b |
  gis'2 e8 <b d'> e <b d'> |
  b'2 fis4 d |
  e'2 <e, b d'>2 |
  b8\rest <b d'> <ais cis'> <b d'> <a cis'>4 s |
}

middleVoice = \fixed c {
  \voiceThree
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  a,1 |
  a,1 |
  e,1 |
  a,1 |
  a,1 |

  a,1 |
  c8\rest e4 e e e8 |
  \stemDown c8\rest e8 dis e \stemUp c8\rest e d b, |
  \stemDown c8\rest e8 dis e \stemUp c8\rest e dis e |
  s1 |
  a2 a |

  s1*2 |
  g8\rest a g a g[ a] g a |
  fis8 a fis a \stemDown fis a fis a |
  \stemUp a8\rest b ais b a[ b] a b |

  gis8 b gis b \stemDown gis b gis b |
  e2 \stemUp gis'4 gis' |
  \stemDown eis2 fis4 d |
  e2 e, |
  a,2. s4 |

  a,1 |
  e,1 |
  e,1 |
  a,1 |
  a,2 \stemUp c''4 c''

  b'4 d'' c'' e'' |
  a'4 c'' g' b |
  d'2 c'8 cis' d' e' |
  \stemDown e,2 s |
  a,1 |

  e,1 |
  a,1 |
  a,2 \stemUp <f' a'>4 q |
  <f' bes'>2 q4 q |
  <fis' b'>2 q4 q |
  <e' gis'>2 f'8\rest e' dis' e' |

  \repeat unfold 2 {
    \stemUp d'8 e' d' e' c'[ e'] c' e' |
    \stemDown b8 e' dis' e' dis' e' f' e' |
  }
  f'8 e' dis' e' f' fis' g' gis' |

  a,1 | a,1 | e,1 | a,1 | a,1 | a,1 |

  c8\rest \stemUp e4 e e e8 |
  c8\rest \stemDown e dis e c\rest \stemUp  e d b, |
  c8\rest \stemDown e dis e c\rest e dis e |
  s1 |
  \stemUp a2 a |

  s1*2 |
  g8\rest a gis a gis[ a] gis a |
  fis8 a fis a \stemDown fis a fis a |
  b8\rest \stemUp b ais b ais[ b] ais b |

  gis8 b gis b s2 |
  \once\stemDown e2 gis'4 gis' |
  \stemDown eis2 s |
  e2 s |
  a,1
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 12"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Andante."
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
    >>
%}
  >>
  \layout {}
  \midi {
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 74
  }
}
