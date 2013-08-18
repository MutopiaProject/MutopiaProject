\version "2.16.1"
\header {
  title = "Etude 4"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 4"
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

 footer = "Mutopia-2013/08/18-1854"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

pf = #(make-dynamic-script "pf")
rf = #(make-dynamic-script "rf")

global = {
  \key d \major
  \time 2/4
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #5
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

upperVoice = \relative c {
  \voiceOne
  \slurDown
  \set fingeringOrientations = #'(down)
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(2 1 1)
  \tempo "Allegretto"

  \set minimumFret = 4
  %\override TupletBracket #'bracket-visibility = ##t
  \times 2/3 { d16\fp <fis'-3> <a-1> <b-4>( <a-3>) fis }
      \times 2/3 { b( a) fis } \times 2/3 { b( a) fis } |
  \override TupletNumber #'stencil = ##f
  \override TupletBracket #'bracket-visibility = ##f
  \times 2/3 {
    \set minimumFret = 0
    d,16 <d'-2> <fis-1> <g-3>( fis) d g( fis) d g( fis) d |
    a,16 <e''-3>\2 <g-1> <a-4>( g) e\2 a( g) e\2 a( g) e\2 |
    \set minimumFret = 5
    a,,16 cis'\3 e\2 fis( e\2) cis fis( e\2) cis fis( e\2) cis |

    \set Timing.beatStructure = #'(2 2)
    d,16 <d'-2> <fis-1> <g-3>( fis) d e,, <d''-1>\cresc <gis-2> <a-3\2>( gis) d\! |
    a,16 <cis'-2> <a'-1> <b-4>( a) cis, d, <d'-1> <b'-2> <cis-4>( b) d, |
    \set minimumFret = 0
    <e,-1>16 <cis'-2> <e-0> <fis-3>( e) cis e,, <d''-2> <gis-3> <a-4>( gis) d |
  }
  \set minimumFret = 9
  \times 2/3 { a,16 \stemDown e'''^(\> cis) a e\3 cis\! } \stemUp a8 a\rest |
  \set minimumFret = 0

  \repeat volta 2 {
    \set Timing.beatStructure = #'(2 1 1)
    \times 2/3 {
      a,16\mf <cis'-2> e <fis-3>( e) cis fis( e) cis fis( e) cis |
      a,16\rf <c'-1> e <fis-3>( e) c fis( e) c fis( e) c |
      \set Timing.beatStructure = #'(2 2)
      <b,-2>16 b' e <fis-3>( e) b <dis,-1> b' <fis'-3> <g-4>( fis) d |
      \set Timing.beatStructure = #'(2 1 1)
      <e,-1>16 b' <g'-2> <a-4>( g) b, a'( g) b, a'( g) b, |
      \barNumberCheck #13
      \set minimumFret = 7
      e,,16\mf <g''-5> <b-2> <c-4>( b) g c( b) g c( b) g |
      \set minimumFret = 0
      a,,16 cis'! e fis( e) cis fis( e) cis fis( e) cis |
      d,16 fis'\2 a b( a) fis\2 <cis,-2> <e'-4\2> <g-1> d, <d'-3> <fis-2> |
    }
    \times 2/3 { a,,16 <cis'-2> e <fis-3>( e) cis } <a-1>4 |

    \times 2/3 {
      \set minimumFret = 5
      d,16\pf fis' a b( a) fis b( a) fis b( a) fis |
      \set minimumFret = 8
      d,16 <fis'-2> <d'-1> <e-4>( d) fis, e'( d) fis, e'( d) fis, |
      \set minimumFret = 0
      a,,16 <e''-3\2> <g-1> <a-4>( g) e\2 a( g) e\2 a( g) e\2 |
      a,,16 <g''-1>\3 <e'-2> <fis-4>( e) fis,\3 e'( d) fis,\3 e'( d) fis,\3 |
      \barNumberCheck #21
      d,16 <d'-5> <fis-2> <g-4>( fis) d d, cis'! e d, c' fis |
      \set Timing.beatStructure = #'(2 2)
      g,16\f b <g'-2> <a-4>( g) d e,\5\p <g'-3\2> <b-2> <c-4>( b) g\2 |
      <a,-1>16\mf <cis-2> e <fis-3>( e) cis a, <cis'-2> <a'-1> <b-4>( a) cis, |
    }
    \times 2/3 { d,16\p a''( fis) d a e } d8 b'\rest |
  }
}

lowerVoice = \relative c {
  \voiceTwo
  d2 |
  d2 |
  a2 |
  a2 |

  d4 e, |
  a4 d |
  e4 e, |
  a4 a'8\5 s |
  \barNumberCheck #9
  a,2 |
  a2 |
  b4 dis |
  e2 |
  e,2 |
  a2 |
  d4 cis8[ d] |
  a4 a' |
  d,2 |
  d2 |
  a2 |
  a2 |
  d4 d8 d |
  g4 e\5 |
  a4 a, |
  d4 d8 s
}

% {{{
\score {
  <<
    \new Staff = "Guitar" \with {
      \override DynamicTextSpanner #'style = #'none
      \override Fingering #'staff-padding = #'()
      \override Fingering #'add-stem-support = ##t
      \override DynamicText #'self-alignment-X = #-1
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
    \tempo 4 = 80
  }
}
% }}}
