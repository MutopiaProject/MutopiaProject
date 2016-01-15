\version "2.19.34"

\header {
  title = "Les Favorites"
  subtitle = "Huit Contredanses"
  composer = "D. Aguado"
  opus = "Op. 11 No. 2"
  style = "Romantic"
  source = "S. Richault, Plate 6713.R."
  date = "1846"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Les Favorites, No. 2"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/01/15-2093"
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
  \key a \major
}

upperVoice = \relative c' {
  \voiceOne
  \repeat volta 2 {
    <e\2-2>4 \grace{fis16[( e dis e)]} <a-1>8 cis |
    e,4.. e16 |
    e4.. e16 |
    e4 <gis, d'>8 r |
    <b gis' d'>8. <cis'-3>16( <b-2>16) <a-2>( <gis-1>) <fis-1> |

    \mbreak
    e4 <b d> |
    b'8. <a-4>16 gis( fis) e d |
    cis16( d) e cis a8 r |
  }
  \repeat volta 2 {
    b8 b16( cis) b8 e |
    e4 dis8 cis |
    b8 b16( cis) b8 b |

    \mbreak
    <gis b>4 r |
    s2 |
    r8 cis8[ fis] r |
    r8 <gis, b e> r <a dis> |
    <gis e'>4 r |
  }
  \repeat volta 2 {
    e'4 \grace{fis16([ e dis e16])} a8 cis |

    \mbreak
    e,4.. e16 |
    e4.. e16 |
    e4 s8 r |
    <b gis' d'>8. cis'16( b) a( gis) fis |
    e4 <b d> |
    b'8. a16 gis( fis) e d |

    \mbreak
    cis16( d) e cis a8 r |
  }
  \key b\minor % d\major
  a8 a16 a a[ b\rest a] b\rest |
  a8 e' d8 r |
  a8 a16 a a[ b\rest a] b\rest |
  a8 <g'-2> <e-4\2> r |
  \oneVoice a,,16( b cis <d-4>) e( fis <g-4> e) |

  \mbreak
  d8( fis16) a d8 fis16 a \voiceOne |
  a16( fis) e <cis-1> <a-2>8 < g cis> |
  r8 <fis d'>4 r8 |
  \repeat volta 2 {
    \once\override TextSpanner.bound-details.left.text = \markup{\upright\small\smallCaps "II "}
    d'8\startTextSpan d16 d d8 d |
    d2(\stopTextSpan |
    d4) <c a'-4> |

    \mbreak
    g'16( fis) g a g4 |
    e8 e16 e e8 e |
    e2~ |
    e4 <d b'>8 e |
    a16( gis) a b a8 r |
    a,8 a16 a a[ a\rest a] a\rest |

    \mbreak
    a8 fis' d r |
    a8 a16 a a[ a\rest a] a\rest |
    a8 fis' d r |
    \oneVoice a,16( b cis d) e( fis g fis) |
    d8( fis16) a d8 fis16 a |
    \voiceOne a16( g) e cis a8 <g cis> |
    r8 <fis d'>4 r8
  }
}


lowerVoice = \relative c {
  \voiceTwo
  %\set stringNumberOrientations = #'(down)
  %\set fingeringOrientations = #'(down)
  \override Fingering.staff-padding = #'()
  s2 |
  \repeat unfold 2 {
    << { \voiceTwo r8 a r a } \\ { \voiceThree s4 <a' cis>8 b\rest } >> |
  }
  r8 e,,4 r8 |
  e'8. r16 r4 |

  r8 e, gis e |
  <e' d'>8. r16 r4 |
  a,4. r8 |
  <e' gis>2 |
  <fis a>2 |
  <dis a'>2 |

  e4 e, |
  \oneVoice e16( <fis-1> <gis-3>) <a-1>( <b-1> cis dis e) \voiceTwo |
  << {\voiceTwo a,4. r8 } \\ {\voiceThree\stemDown s8 a' } >> |
  b,4 b |
  r8 e[ e,] r |
  s2 |

  << { \voiceTwo r8 a r a |
       r8 a r a |
     } \\
     { \voiceThree\stemDown s4 <a' cis>8 a\rest |
       s4 <a cis>8 a\rest |
    } >>
  r8 e, <gis' d'> r |
  e8. r16 r4 |
  r8 e, gis[ e] |
  <e' d'>8. r16 r4 |

  a,4. r8 |
  s2 |
  a'4. r8 |
  s2 |
  a4. r8 |
  s2 |

  s2 |
  a,2 |
  d4 d8 r |
  s2 |
  r8 d16( e <fis-5> <g-4>) a( b) |
  \set fingeringOrientations = #'(down)
  <c-4>8 a <fis-2> d |

  <g b>4 r |
  s2 |
  r8 e16( fis) gis( a) b( cis) |
  d8 b e,,4 |
  <a cis'>4. r8 |
  s2 |

  a'4. r8 |
  s2 |
  a4. r8 |
  s2 |
  s2 |
  a,2 |
  d4 d8 r
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 2"
      \mergeDifferentlyDottedOn
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
    \tempo 4 = 80
  }
}
