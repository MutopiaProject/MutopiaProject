\version "2.19.34"

\header {
  title = "Les Favorites"
  subtitle = "Huit Contredanses"
  composer = "D. Aguado"
  opus = "Op. 11 No. 10"
  style = "Romantic"
  source = "S. Richault, Plate 6713.R."
  date = "1846"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Les Favorites, No. 10"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/01/15-2100"
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

mbreak = {} % { \break }
global = {
  \time 2/4
  \key e \major
}

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \set stringNumberOrientations = #'(up)
  \set fingeringOrientations = #'(up)
  \repeat volta 2 {
    <e\2>8[ \grace{fis16[ e]} dis16 e] b r b8 |
    <a cis-4>4 <g b>8 r |
    <e'-2>8.[ \grace{fis16[ e dis e16]} gis16] b8 a |
    <dis, fis>16[ r <cisis eis>16] r <dis fis>8 r |
    <a'-2>8. <gis-1>16 <e-2>8 e |
    <g-3>8. fis16 d8 r |

    \mbreak
    fis8. e16 dis8 cis16 dis |
    d8\rest e16 r e8 s |
  }
  \repeat volta 2 {
    s2 |
    r8 <e, dis'> q r |
    e'8 <fis-2>16 <g-4> fis8 e |
    <e, dis'>8 b'16( cis) dis e fis gis |
    << {\voiceOne <a-4>4 gis} \\ {\voiceThree s4 s8 cis8} >> |

    \mbreak
    bis4 cis8\noBeam \slashedGrace{dis8} e |
    e,4 a8. <fis-3>16 |
    e4. r8 |
  }
  \repeat volta 2 {
    \key a\major
    <e'-4>8 dis16 e <cis-1>16( e <a,-2>) <cis-1> |
    e,4. r8 |
    r8 <b-3 gis'-4>( <dis b'>) q |
    b'8( a) a r |

    \mbreak
    e'8( dis16 e) cis( e) <a,-2>( <c-1>) |
    e8 s s4 |
    r4 <dis, gis> |
    <cis a'>4 r |
    <ais'-1>16( <b-1>) cis b <fisis-1>( <gis-2>) <a-4> gis |

    e8 <b dis>4 <a-2 cis-1>8 |
    <gis b>8 e' cis e |
    <gis, b>4 r |

    \mbreak
    ais'16( b) cis b fisis( gis) ais gis |
    e8 <b d>4 <a cis>8 |
    b8 e <fis, a> dis' |
    e4 r |
    e'8 dis16( e) cis( e) a, cis |
    e,2 |
    r8 <b gis'>8[( <d b'>) q] |
    
    \mbreak
    b'8( a) a r |
    e'8 dis16( e) cis( e) a, cis |
    fis,8 r s4 |
    r4 <d gis> |
    <cis a'>4 r |
  }
  \key e \major
  e8[ \grace{fis16[ e]} dis16 e] b r <e, gis b>8 |
  <a cis>4 <gis b>8 r |

  \mbreak
  e'8.[ \grace{fis16[ e dis e]} gis16] b8 a |
  <dis,-4 fis>16[ r <cisis eis>16] r <dis fis>8 r |
  a'8. gis16 e8 e |
  g8. fis16 <b, dis>8 r |
  fis'8. e16 <a, dis>8 cis16 dis |
  r8 e16 r e8 r |
  s2 |

  \mbreak
  r8 <fis, dis'> q r |
  e'8 fis16 g fis8 e |
  <fis, dis'>8 b16( cis) dis e fis gis |
  <a-4>4 <gis-1>8 cis8 |
  bis4 cis8 \slashedGrace{dis} e |
  e,4 gis8. fis16 |
  e4. r8 |

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \slurUp
  \set stringNumberOrientations = #'(down)
  \set fingeringOrientations = #'(down)
  s4 s8 e |
  e4 r |
  s2 |
  b'16[ r b] r b8 r |
  <bis-2 dis-1>4 <cis-3>8 cis |
  <ais-2 cis>4 b8 r |

  <a, c'>4 <b a'> |
  << {
    \voiceTwo <e,-2>4. s8
  } \\ {
    \set fingeringOrientations = #'(down)
    \voiceThree\stemDown s8 <e'-2 gis>8[ <e gis>8] r
  } >> |
  e,8 e16 <fis-1> gis( fis) gis a |
  b4. r8 |
  ais2 |
  b8 s s4 |
  r8 <bis'-3> cis r |

  r8 <gis-1 d' fis> <a-1 e'> r |
  r8 <b, gis'>8 r <b-1 a'-2> |
  r8 <e a> e, r |
  s2 |
  r8 a16( <b-1> cis b cis) d |
  e4 e, |
  a4. r8 |

  s2 |
  r8 <d-4>16( cis b cis) d( <dis-1>) |
  e4 e, |
  a4 r |
  s2 |
  gis4 a |
  << {\voiceTwo e'2} \\ {\voiceThree\stemDown s4 a} >> |
  r8 e e,4 |

  s2 |
  gis4 a |
  <b gis'>4 b |
  <e gis>4 r |
  s2 |
  r8 a,16( b cis b cis d)
  e4 e, |

  << {\voiceTwo a4. r8 } \\ {\voiceThree\stemDown cis'4. r8 } >> |
  s2 |
  r8 d,16( cis b cis) dis( e) |
  e4 e, |
  a4 r |
  s2 |
  e'4. r8 |

  s2 |
  b'16[ r b] r b8 r |
  <gis dis>4 cis8 cis |
  <ais cis>4 s |
  << {\voiceTwo a,4 b } \\ {\voiceThree\stemDown c'4 s } >> |
  << {\voiceTwo e,,4. e8\rest } \\ {\voiceThree\stemDown g'8\rest <e gis> <dis gis> g\rest } >> |
  e,8 e16 fis gis( fis) gis a |

  b4. r8 |
  <ais g'>2 |
  b8 s s4 |
  r8 <bis' dis> <cis e> r |
  r8 <gis dis' fis> <a e'> r |
  r8 <b, gis'> r <b a'> |
  r8 e[ e,] r |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 10"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"

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
