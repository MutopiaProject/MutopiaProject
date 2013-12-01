\version "2.16.1"
\header {
  title = "Etude 20"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 20"
  mutopiatitle = "25 Studies: No. 20"
  mutopiacomposer = "CarcassiM"
  mutopiaopus = "O 60"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Mayence, B. Schott's Söhne"
  % From Boije 94
  date = "1853"
  enteredby = "Glen Larsen"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2013/12/01-1886"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 12/8
  \key a \major
}

pf = #(make-dynamic-script "pf")
gpos = #(define-music-function (parser location text) (string?)
	 #{ \mark\markup{\teeny\italic #text } #})

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

\layout {
  \context {
    \Voice
    \override StringNumber #'stencil = ##f
%    \override TextSpanner #'style = #'line
  }
  \context {
    \Staff
    \override Fingering #'staff-padding = #'()
    \override Fingering #'add-stem-support = ##t
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  }
  \context {
    \Dynamics
    \override DynamicTextSpanner #'style = #'none
  }
}

upperVoice = \relative c {
  \voiceOne
  \tempo "Allegretto Brillante."
  \repeat volta 2 {
    a8\f( cis) <e-1> <a-1> <cis-2> e <fis-3>( e) cis e, a cis |
    a,8( cis) e a cis e fis( e) cis e, a cis |
    a,8 d( fis) a d fis <b-4>( a) <fis-4> <a,-1> <d-2> <fis-1> |

    a,,8( cis) e a cis e fis( e) cis e, a cis |
    e,,8 b' e gis b e fis( e) b e, gis d' |
    e,,8 a( cis) e a cis fis( e) cis e, a cis |

    e,,8 <b''-3> <d-2> \stemDown <e-0> <gis-1> b \stemUp a,, a' cis \stemDown e a cis \stemUp |
    e,,,8 gis' b \stemDown e <gis-1> <b-4> \acciaccatura{b8} e4. r4 r8 \stemUp |
  }
  \repeat volta 2 {
    \override TextSpanner #'(bound-details left text) = #"VII "
    \textSpannerDown
    e,,,8\mf gis' b \stemDown <e-0> <gis-3> \startTextSpan b d( b)\stopTextSpan gis <e-0> d( b) \stemUp |
    e,,8 gis' b fis'( e) b e, gis e' d, b'\cresc e\! |

    cis,8 a' e' gis,, b' e a,, cis' e <b,-1> <d'-3> e |
    <bis,-1>8 <dis'-3> e <cis,-1> <e'-3> <e-0> a,, <cis'-3> <a'-2> a,, <e''-3> <cis'-4> |
    e,,,8\mf gis' b \stemDown e <gis-3> \startTextSpan <b-1> <d-4>( b) \stopTextSpan gis <e-0> d( b) \stemUp |

    e,,8 gis' b f'( e) b e, gis e' d, b' e |
    c,8 a' e' gis,, b' e a,, c' e <b,-1> <d'-3> e |
    <b,-1>8 <dis'-4>\< e <c,-1> <e'-4> e a,, <c'-3>\! <a'-4> a,, <e''-3> <c'-2> |

    g,,8\mf b d g b f' g( f) b, d, g <d'-4> |
    <g,,-3>8 <c-4> <e-2> g <c-1> e \stemDown <gis-4>( cis) e,( gis) c, e \stemUp |
    g,,8 b d gis b f' gis( f) b, d, gis <d'-4> |
    g,,8 c e gis cis e \stemDown gis( cis) e,( gis) cis, e \stemUp |

    \override DynamicLineSpanner #'staff-padding = #2.0

    e,,8\pf gis'\< b \stemDown <e-0> <gis-3> \startTextSpan <b-1>\! <d-4>(\> b) \stopTextSpan gis <e-0> d(\! b) \stemUp |
    \override TextSpanner #'(bound-details left text) = #"VIII "
    e,,8 a'\< c \stemDown e a \startTextSpan <cis-1>\! <e-4>\> cis\stopTextSpan a <e-0> cis\! a \stemUp |
    e,8 fis'\< a b dis fis\! \stemDown a(\> fis) dis \stemUp b a fis\! |
    e,8 gis'\< b e <gis-1> <b-4>\! \acciaccatura{b} e r r r4 r8 |

    a,,,8(\f cis) e a cis e fis( e) cis e, a cis |
    a,8( cis) e a cis e fis( e) cis e, a cis |
    a,8 d( fis) a d fis <b-4>( <a-2>) <fis-4> <a,-1> <d-2> <fis-1> |
    a,,8( cis) e a cis e fis( e) cis e, a cis |

    \override TextSpanner #'(bound-details left text) = #"VII "
    e,,8 gis' b \stemDown e <gis-3> \startTextSpan <b-1> <d-4>( b) \stopTextSpan gis <e-0> d( b) \stemUp |
    \override TextSpanner #'(bound-details left text) = #"IX "
    a,8 a' cis \stemDown e <a-2> \startTextSpan <cis-1> e( cis) \stopTextSpan a cis a <e-0> \stemUp |
    d,8 b' d \stemDown fis <b-1> <d-4> \stemUp e,,, gis' b \stemDown e <gis-1> <b-4> \stemUp |
    a,,8 cis' e \stemDown <a-2> \startTextSpan <cis-1> <e-4> <a-4>\stopTextSpan r4 r8 r4  |
  }

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  a8 s1 e'4. |
  a,8 s1 e'4. |
  a,8 s1 a'4. |

  a,8 s1 e'4. |
  e,8 s1 e'4. |
  e,8 s1 e'4. |

  e,2. a |
  e2. s |
  e2. s |
  e2. e'4. d |

  cis4. gis a b |
  bis4. cis a a |
  e2. s |

  e2. e'4. d |
  c4. gis a b |
  b4. c a a |

  g8 s1 d'4. |
  g,8 s1 s4. |
  g8 s1 d'4. |
  g,8 s1 s4. |

  e2. s |
  e2. s |
  e2. s |
  e2. r8 fis' e d cis b |

  a8 s1 e'4. |
  a,8 s1 e'4. |
  a,8 s1 a'4. |
  a,8 s1 e'4. |

  e,2. s |
  a2. s |
  d2. e, |
  a2. s |
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "Guitar tabs"
    <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout { }
  \midi {
    \tempo 4 = 180
  }
}
