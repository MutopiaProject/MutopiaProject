\version "2.19.34"

\header {
  title = "Les Favorites"
  subtitle = "Huit Contredanses"
  composer = "D. Aguado"
  opus = "Op. 11 No. 6"
  style = "Romantic"
  source = "S. Richault, Plate 6713.R."
  date = "1846"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Les Favorites, No. 6"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/01/15-2097"
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

% Regarding the harmonic notation:
% I've interpreted the harmonics with a 'C' notation (C4a, C5a, etc.)
% as an open string harmonic (C = Spanish Cuerda, C4 = 4th string,
% etc.) with the numeric value under the notes representing the fret
% number to touch for the harmonic.

upperVoice = \relative c' {
  \voiceOne
  s2*2 |
  cis16( d) e fis g8 cis, |
  d8 fis a r |
  s2*2 |

  \mbreak
  \harmonicsOn <e,-7>4 \harmonicsOff <d' gis>8 q |
  <cis a'>4 r |
  \repeat volta 2 {
    a4\harmonic^\markup{\teeny\italic\column{ "harm." "t.7" }} a8. a16 |
    a4 r8 <e'_3 cis'^4>16 r |
    <f d'-4>16[ r <f d'-4>16] r <e cis'>16[ r <f d'>16] r |
    <g e'>4 <e cis'>8 r |
    a,4\harmonic^\markup{\teeny\italic\column{ "harm." "t.7" }} a8.[ a16] |

    \mbreak
    a4 r8 <e' cis'>16 r |
    <f d'>16 r q r <e cis'>_\markup{\italic "ritardando."} r <d b'> r |
    <cis a'>4 r |
    s2 |
    s2 |
    cis16( d) e fis g8 cis, |
    d8 fis a r |

    \mbreak
    s2*2 |
    cis,8 b'16( a) gis( a) g( e) |
    <fis,d'>4 r-\tweak TextScript.X-offset #2 ^\markup{\italic "Fin"} |
    }
  \repeat volta 2 {
    \key g \major
    d'4 b' |
    <g-2>8\noBeam g16( fis) a( g) fis e |

    \mbreak
    <d-1>4 <c d> |
    <b d>8 s s4 |
    r8 <g b>4 <a c>8 |
    <g b>8\noBeam <g'-4>16( fis) e d <c-4> b |
    <a c>4 r8 <c fis>8 |
    <b g'>4 r |
  }

  \mbreak
  \repeat unfold 2 { a'16_( gis) b_( a) <d,-2>8 s | s2 | }
  a'16_( gis) b_( a) g_( fis) a_( g) |

  \mbreak
  fis16( e) d( cis) e( d) c( b) |
  a16( g) <fis-3>( e) d( e) fis( g) |
  a16 b( c) b d c d c |
  d4 b' |
  g8 g16( fis) a( g) fis e |

  \mbreak
  d4 <c d> |
  <b d>8 r r4 |
  r8 <g b>4 <a c>8 |
  <g b>8\noBeam g'16( fis) e d c b |
  <a c>4 r8 <c fis>8 |
  <b g'>4 r |

  \bar "|."
}

lowerVoice = \relative c {
  \set fingeringOrientations = #'(down)
  \textSpannerUp
  \override TextSpanner.staff-padding = #3
  \override TextSpanner.dash-fraction = #0.3
  \override TextSpanner.dash-period = #1
  \override TextSpanner.bound-details.left.text = \markup{\small\italic "harm. "}
  \override Staff.NoteHead.style = #'harmonic-mixed
  \oneVoice
  <d-5>4\startTextSpan <a-5>8 <fis'-4> |
  <d-5>4 a~\stopTextSpan |
  \revert Staff.NoteHead.style
  \voiceTwo
  <a g'>2 |
  <d fis>8 r r4 |
  \override Staff.NoteHead.style = #'harmonic-mixed
  \oneVoice <d-5>4\startTextSpan <a-5>8 <fis'-4> |
  <d-5>4 <b-7>16[ r <b-7>] r \stopTextSpan \revert Staff.NoteHead.style |

  \voiceTwo
  s4 e8 e |
  a,4 r |
  a4\harmonic_\markup{\italic\teeny "t.12"} a8. a16 |
  a4 s |
  s2 |
  s2 |
  a4\harmonic_\markup{\italic\teeny "t.12"} a8. a16 |

  a4 s |
  s2 |
  s2 |
  \override Staff.NoteHead.style = #'harmonic-mixed
  \oneVoice
  <d-5>4\startTextSpan <a-4>8 <fis'-5> |
  <d-5>4 <a-5>4~ \stopTextSpan \revert Staff.NoteHead.style |
  \voiceTwo
  <a g'>2 |
  <d fis>8 r r4 |

  d16( e fis g) a8 fis |
  <g-2\2>16[ b\rest <b-1>16] b\rest <d-4>8 b\rest |
  <a, g'>2 |
  d4 r |
  <g b>4 r |
  q4 r |

  r8 d fis d |
  g8\noBeam <g,-2>16^( fis g a) b^( c) |
  d4 dis |
  <e-2>4 r |
  c8 a d a' |
  g4 r |

  \repeat unfold 2 {
    s4 s8 d16^( e |
    fis16 <g-2>) a^( <b-3>) <c-4>4 |
  }
  s2 |

  s2*3 |
  <g b>4 r |
  q4 r |

  r8 d8 fis d |
  g8\noBeam g,16^( fis g a) b^( c) |
  d4 dis |
  e4 r |
  c8 a d a' |
  g4 r-\tweak TextScript.X-offset #2 _\markup{"D.C."}
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
