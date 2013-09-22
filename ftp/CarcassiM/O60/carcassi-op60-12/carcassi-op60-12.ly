\version "2.16.1"
\header {
  title = "Etude 12"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 12"
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

 footer = "Mutopia-2013/09/22-1872"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

global = {
  \time 4/4 \key d\major % b\minor
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

upperVoice = \relative c {
  \voiceOne
  \tempo "Andante mosso."
  fis16\p d' a fis g e' b g a fis' cis a <b-2> <g'-1> <d-1> b |
  <cis-2>16\< <a'-1> <e-1> cis <d-1> <b'-1> <fis-1> d <e-2> <cis'-3> <g-1> e <fis-2> <d'-1> <a-1> fis\! |
  <e-1>16\mf <cis'-2> <a-3> e <d-1> <b'-2> <gis-4> d <cis-2> <b'-1> <e,-1> cis cis a' e cis |
  b16\> g' d b a a' cis, a a g' cis, a\! d, fis' d d, |
  fis16 d' a fis e cis' a e dis c' a dis, d b' gis d |
  cis16 e' a, cis, b d' gis, b, b\> d' gis, b, a cis'\! a a, |
  d16\mf b' <a-3> d, dis b' a dis, e b'\< a e f b a f\! |
  e16\> b' a e\! e,\p e'' gis, e, a e''_\markup{\italic "ritard."} cis a a'4 |
  \repeat volta 2 {
    <cis,,-3>16\p <a'-1> <e-1> cis <d-3> <b'-0> <fis-2> d e cis' g e fis d' a fis |
    g16 e' b\< g a fis' cis a b g' d b b gis' d b\! |
    a16 a' cis, a <a-1> <g'-3> <cis,-1> a <ais-2>-.\> g' cis, ais\! ais fis' cis ais |
    g16 e' b g fis fis' ais, fis\> fis e' ais, fis\! b, d' b b, |
    <e-2>16\> <d'-4> g, e\! e c' g e fis e' a, fis fis dis' a fis |
    g16\< e' b g dis\! fis' b, d, fis\> a' b, fis e g'\! b, e, |

    e16 g' b, e, fis dis' a\cresc fis g e' b g <gis-1> e' <d-4> g, |
    a16 e' d a bes\> e d bes a e' d a\! a,\p <a''-4> <cis,-1> <a-1> |
    <fis'-2>\f <d'-1> a fis <e-1> <cis'-3> <g-1> e <d-1> <b'-1> <fis-1> d <cis-2> <a'-1> <e-1> cis |

    <b-2>16 <gis'-3> d b <bes-2> <g'-3> <cis,-1> bes <a-1> <fis'-2> <d-3> a gis <f'-1> <d-3> g, |
    ges16 e' cis ges <fis-1>\> <a'-4> <d,-2> fis, e g' b, e,\! <gis-1>\> <b'-4> f-2 gis,\! |
    <a-1>16 e'\dim d a a, <a''-4> <cis,-1> a,\p d_\markup{\italic "ritard."} <a''-1> <fis-3> <d-2> <d'-4>4 |
  }
  
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  fis8. fis16 g8. g16 a8. a16 b8. b16 |
  cis8. cis16 d8. d16 e8. e16 fis8. fis16 |
  e8. e16 d8. d16 cis8. cis16 cis8. cis16 |
  b8. b16 a8. a16 a8. a16 d,8. d16 |
  fis8. fis16 e8. e16 dis8. dis16 d8. d16 |

  cis8. cis16 b8. b16 b8. b16 a8. a16 |
  d8. d16 dis8. dis16 e8. e16 f8. f16 |
  e8. e16 e,8. e16 a8. a'16 a'4 |

  cis,,8. cis16 d8. d16 e8. e16 fis8. fis16 |
  g8. g16 a8. a16 b8. b16 b8. b16 |
  a8. a16 a8. a16 ais8. ais16 ais8. ais16 |

  g8. g16 fis8. fis16 fis8. fis16 b,8. b16 |
  e8. e16 e8. e16 fis8. fis16 fis8. fis16 |
  g8. g16 dis8. dis16 fis8. fis16 e8. e16 |

  e8. e16 fis8. fis16 g8. g16 gis8. gis16 |
  a8. a16 bes8. bes16 a8. a16 a,8. a'16 |
  fis'8. fis16 e8. e16 d8. d16 cis8. cis16 |

  b8. b16 bes8. bes16 a8. a16 gis8. gis16 |
  ges8. ges16 fis8. fis16 e8. e16 gis8. gis16 |
  a8. a16 a,8. a16 d8. d'16 d'4 |
}


\score {
  <<
    \new Staff = "Guitar" \with {
      \override DynamicTextSpanner #'style = #'none
      \override Fingering #'staff-padding = #'()
      \override Fingering #'add-stem-support = ##t
    }
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
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
  \layout {
    \override Voice.StringNumber #'stencil = ##f
  }
  \midi {
    \tempo 4 = 100
  }
}
