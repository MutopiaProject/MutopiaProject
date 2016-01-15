\version "2.19.34"

\header {
  title = "Les Favorites"
  subtitle = "Huit Contredanses"
  composer = "D. Aguado"
  opus = "Op. 11 No. 4"
  style = "Romantic"
  source = "S. Richault, Plate 6713.R."
  date = "1846"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Les Favorites, No. 4"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/01/15-2095"
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
  \key d \major
}

upperVoice = \relative c {
  \voiceOne
  <d' d'>8 r <a a'> r |
  <fis fis'>8 r <d d'> r |
  cis'16( d) e fis g( e) a g |
  fis16( g) e( fis) d8 r |
  <d d'>8 r <a a'> r |

  \mbreak
  <fis fis'>8 r <d d'> r |
  cis'16( d) e fis <g-2>( <gis-3> <a-4>) cis, |
  <fis, d'>4 r |
  \repeat volta 2 {
    e'8 a16 a a a a a |
    fis4 <b, d>8 r |
    b8 e16 e e e e e |

    \mbreak
    cis4 a8 r |
    e'8 a16 a a a a a |
    <fis\2-3>4~ <d fis b>8 r |
    \tuplet 3/2 { a'8_( gis) fis} \tuplet 3/2 { e8_( fis) gis } |
    <cis, a'>4 r^\markup{\italic "Fin."} |
  }
  <d d'>8 r <a a'> r |
  <fis fis'>8 r <d d'> r |

  \mbreak
  cis'16( d) e fis g( e) a( g) |
  fis16( g) e( fis) d8 r |
  <d d'>8 r <a a'> r |
  <fis fis'>8 r <d d'> r |
  cis'16( d) e fis g( gis a) cis, |

  \mbreak
  <fis, d'>4 r |
  \repeat volta 2 {
    \key g \major
    \oneVoice \tupletSpan 4
    \tuplet 3/2 {
      \set minimumFret = #3
      \override TextSpanner.bound-details.left.text = \markup{\small "III"}
      <d_\1>8\startTextSpan g( <b_1>) <d_4>( b) g |
      \omit TupletNumber
      <d\1>8 g( b) d( b) g |
      \override TextSpanner.bound-details.left.text = \markup{\small "IV"}
      <a-1>8( c) a\stopTextSpan <fis-1>( \startTextSpan \set minimumFret=#4 a) fis |
    }
    \tuplet 3/2 { g8( b) g } d4 |
    \tuplet 3/2 { g8( b) d <d_4>( c) b  } |

    \mbreak
    \tuplet 3/2 {
      <b-3>8( a) g\stopTextSpan \set minimumFret=#0 <g-4>( fis) e |
      d8( <e-1>) d <c-2>( b) a |
    }
    g4 r |
  }
  \repeat volta 2 {
    \tuplet 3/2 {
      \override TextSpanner.bound-details.left.text = \markup{\small "IV"}
      \set minimumFret=#4
      d'8(\startTextSpan fis a) a( fis) d |
      d8( <g-1> b) b( g) d |
      d8( <c'-4>) a d,( <b'-4>) g |
    }

    \mbreak
    \tuplet 3/2 { d8( <a'-4>) e } d4 |
    \tuplet 3/2 {
      d8( fis a) a(\stopTextSpan \set minimumFret=#0 fis) d |
      d8( g bes) bes( a) g |
      <g-4>8( <f-2>) ees ees( d) <cis-3> |
    }
    <d-4>4 r |
    \tuplet 3/2 {
      d8 g( b) d( b) g |
      d8 g( b) d( b) g |

      \mbreak
      a8( c a) fis( a fis) |
    }
    \tuplet 3/2 { g8( b) g } d4 |
    \tuplet 3/2 {
      g8( b) d d( c) b |
      b8( a) g g( fis) d |
      d8( e) d c( b) a |
    }
    g4 r_"D.C."
  }
  
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  s2*2 |
  a2 |
  d4. r8 |
  s2 |

  s2 |
  <a g'>2 |
  d4 r |
  <a' cis>4 r |
  s4 d,8 r |
  <e gis>4 r |

  s4 <a, cis>8 r |
  <a' cis> 4 r |
  d,4. r8 |
  << {\voiceTwo e,2 } \\ {\voiceThree\stemDown d''4 s } >> |
  a,4 r |
  s2 |
  s2 |

  a2 |
  d2 |
  s2 |
  s2 |
  <a g'>2 |

  d4 r |
  s2*5 |

  s2*6 |

  s2*7 |

  s2*6 |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 4"
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
