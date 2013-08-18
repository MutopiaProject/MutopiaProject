\version "2.16.1"
\header {
  title = "Etude 2"
  composer = "Mateo Carcassi"
  opus = "Op. 60, No. 2"
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

 footer = "Mutopia-2013/08/18-1853"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}
rf = #(make-dynamic-script "rf")

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #5
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

global = {
  \time 4/4
}

#(define-markup-command (gpos layout props text) (markup?)
  "Guitar position markup"
  (interpret-markup layout props
   #{\markup { \teeny \italic #text } #} ))

upperVoice = \relative c {
  \voiceOne
  \set fingeringOrientations = #'(down)
  \set restrainOpenStrings = ##t
  \tempo "Moderato con espressivo."

  a16\mf a' c e e e e e a,,^\markup\gpos{"III"} b'\3 d gis\cresc gis gis gis gis |
  a,,16\!^\markup\gpos{"V"} c'\3 e\2 a a a a a a,,^\markup\gpos{"VII"} e''\2 gis b b b b b |
  a,,16\f^\markup\gpos{"VIII"} e''\3 a\2 c c c c c d,,^\markup\gpos{"VI"} d'\3 f\2 b b b b b |

  e,,,16 b''\3 e\2\dim gis gis gis gis gis e, gis b e e e e e |
  d,16\sf gis\> b f' f f f f\! c,\p a' c e e e e e |
  b,16\sf b'\3^\markup\gpos{"II"}\> d gis gis gis gis gis\! a,,\p c'\3^\markup\gpos{"V"} d gis gis gis gis gis |

  d,16\f a'\> b e e e e e\! e, gis\> d' e e e e\! e |
  a,,16\pp^\markup\gpos{"V"}  c'\3 e\2 a a a a a a,4 r |
  \repeat volta 2 {
    c,16\mf e g c c c c c b, d g d' d d d d |

    bes,16 g'\cresc b e e e e e bes, g' c e e e e e |
    a,,16\f a' cis a' a a a a a,, a' cis g' g g g g |
    d,16 a'\> cis g' g g\! g g d, a' d f f f f f |

    d,16\sf gis\< b f' f f f f\! d, gis\> b e e e e e\! |
    c,16 a' c e e e e e b,^\markup\gpos{"II"} b'\3 d gis gis gis gis gis |
    a,,16^\markup\gpos{"V"} c'\3 e\2 a a a a a <f,-1>\sf^\markup\gpos{"III"} <c'-3\3> <dis-2> <a'-4> a a a a |

    e,,16\p^\markup\gpos{"V"} <gis'-2> <e'-1> <b'-4> b b b b r2 |
    a,,16\mf a' c e e e e e a,, b'\3 d gis gis gis gis gis |
    a,,16 c'\3 e\2 a a a a a a,, e''\3 gis\2 b b b b b |

    a,,16^\markup\gpos{"VIII"} e''\3 a\2 c\cresc c c c c a,, e''\3 g\2 cis cis cis cis cis |
    d,,16\f^\markup\gpos{"X"} <f'-1\3> <a-1\2> <d-1> d d d d d,, <f'-1\3> <a-1\2> <f'-4> f f f f |
    d,,16\mf gis\> b f' f f f f\! c,\p a' c e e e e e |

    b,16 b'\3 d\> gis gis gis gis\! gis a,,\p c'\3 e\2 a a a a a |
    d,,16\rf a' b\> f' f f f\! f e,\p gis d' e e e e e |
    a,,16\pp c'\3_\markup{\smaller\italic "rall."} e\2 a a a a a a,4 b\rest |
  }
}

lowerVoice = \relative c {
  \voiceTwo
  a2 a |
  a2 a |
  a2 d |

  e,2 e' |
  d2 c |
  b2 a |

  d2 e |
  a,2 a'4 s |
  \repeat volta 2 {
    c,2 b |

    bes2 bes |
    a2 a |
    d2 d |

    d2 d |
    c2 b |
    a2 f' |

    e,2 e'8 d c b |
    a2 a |
    a2 a |

    a2 a |
    d2 d |
    d2 c |

    b2 a |
    d2 e |
    a,2 a'4 s |
  }
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
    \new TabStaff = "Guitar tabs" \with {
      \remove "Staff_performer"
    }
    <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {
    % There are no string numbers in the original so remove the markup
    % for the developed tablature.
    \override Voice.StringNumber #'stencil = ##f

  }
  \midi {
    \tempo 4 = 100
    \context {
      % The goal is to match the original text, not to perfect MIDI!
      % This removes the errors regarding 'ambiguous (de)crescendo in midi'
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
% }}}
