\version "2.18.2"

\header {
  title = "Praeludium XII"
  composer = "Johann Sebastian Bach"
  opus = "BWV 857"
  mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium XII"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  date = "1722"
  source = "Bach-Gesellschaft Ausgabe, Band 14, Breitkopf und Härtel, 1866, Plate B.W.XIV, pp.44-45"
  style = "Baroque"
  maintainer = "Sven Reichard"
  maintainerEmail = "sven,reichard#freenet,de"
  version = "2.18.2"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  footer = "Mutopia-2018/06/04-2226"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

staffup       = { \change Staff = "up"  }
staffdown     = { \change Staff = "down"  }

\include "articulate.ly"

global = {  
 \key f \minor
 \time 4/4
}

soprano = \new Voice  \relative f'
{ \voiceOne
  |
  f16 as c f  g, f' e g  as, c f e f4 |
  des4 ~ des16 des c bes  as8. bes16  bes8.\prall as32 bes |

  c4 r16 des g, bes e,8. f16  f8.\prall e32 f |
  g16 c bes des ~ des des c bes a8. bes16  bes8.\prall a32 bes |

  c2 ~ c16 c bes des g,8 as\prall |
  bes2 ~ bes16 as c8 ~ c16 bes des8 ~ |

  des16 c es8 ~ es16 des f8 ~ f16 es des c bes g as des |
  bes4\prall ~ bes16 es, f g as g as f' es8. des16 |
  s1 |

  s1 |
  d16  g f as ~ as as g f r c'8 b16 c4 |

%%%%%%

  es,4 ~ es16 c d8 c2 |
  f,16 a c es ~ es ges c, es des4. c8~ |

  c16 bes g e c e f b c4  bes16 des c bes |
  a f a c f8. es16 des4 ~ des16 c8 bes16 ~ |

  bes des c8 as8. g16 f as c f ~ f f e g |
  as, c f e f4 des ~ des16 des c bes |

  as4 ~ as16 as g f e2 |
  r16 c' bes des e, des' c bes as g' f as b, as' g f |

  e f g e bes' des, c bes as bes c f, d' as g f |
  e4 f4 r16 d b c r bes c e |
  f1\fermata
  
}

alto = \new Voice \relative f'
{ \voiceTwo
  |
  f4 g as f'16 c bes as |
  des as g bes e,4 f8 r s4 |

  c'16 as e f des4 c8 r s4 |
  g'4 e es des |

  r16 f es ges ~ ges ges f es des2 ~ |
  des16 c des f ~ f f es des c4 des |

  es f g8 r s4 |
  s2 s4 r16 as g8 |
  c16 as c e f g e f g2 ~ |

  g16 c, f as d, f b, c b8. ^\prall c16 c8.^\prall%{^\markup{\natural}%} b32 c |
  d4 b es8 f r16 g as f |
  %%%%%

  es b c fis, g8. f16 ~ f f e g c,4 |

  f a r8 bes e,4 |
  % 14
  f8 r r f r16 f e g s4 |
  s4 f'16 bes, a8 r16 as g bes e,8 f |

  e8. f16 ~ f f e8 f4 g |
  as f'16 c bes as des as g bes e,4 |

  f16 es d f b,4 r16 c bes des g, des' c bes |
  \voiceOne
  \staffdown
  s1 |
  s2 c4 b|
  \staffup
  \voiceTwo
  r16 c
  \staffdown
  \voiceOne
  g bes! as4 g8 f g4 |
  \staffup
  \voiceTwo
  << c1 \\ a >> 
}


tenor = \new Voice \relative f
{ \voiceOne
  \staffdown
  as4 bes c as |
  bes g f16 as c f g, f' e f|

  as,8 s s4 c,16 e g c des, c' bes des |
  e,8 g c4 f,,16 a c f ges, f' es ges |

  a,8 c a4 s2 |
  s4 g'8 r as,16 c es as bes, as' g bes |

  c, es as c  des, c' bes des  es, g bes es  f, es' des f |
  g, f' es bes c2 bes4\prall |
  as4 ~ as16 r r8 e16 g bes des c, f e g |

  as2 g16 b d g as, g' f as |
  b,8 d g4 c,2 ~ |
  
  c4. b8 c g ~ g16 f e g |
  r8 f4 f8  bes,16 des f bes ~ bes bes as c |

  f,8 g as4 g2 |
  f8 s s4 bes4 g |

  r16 g as b c2 bes4 |
  c as bes g |

  as f g e |
  \voiceThree <f as> <g bes> <as c> <f as> |
  <g bes> <e g> f2  |
  
  g4 s s2 |
  f1
  }

bass = \new Voice \relative f {
  \voiceTwo
\staffdown
  f1 ~ |
  f2 f4 g |
  
  as bes c, des |
  e c'8 c, f,4 ges|

  a a8 f bes4 ~ bes16 bes c des|
  g,8 bes es es, as4  bes |

  c des es f |
  g as8 g f des es4 |
  as,4 ~ as16 as' g f e4 c |

  f4 ~ f16 f es d g4 as  |
  b4 g'8 g, c as es f |

  g2 c, |
  a4 f bes c |

  d8 e f4 c ~ c8. des16 |
  es!8 es' des c bes16 f des bes ~ bes c des bes |

  c4. c8 des2 |
  c1 ~  |c ~  |c~ | c~  |
  c4 r16 f b, d c,2 |
  f1_\fermata
  \bar "|."
  }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI
\score {
  \articulate
\new PianoStaff <<
  \new Staff="up" \with {midiInstrument = #"harpsichord"}
  << \global \clef treble
     \soprano 
     \alto
     \tenor
     \bass
   >>
  \new Staff="down" \with {midiInstrument = #"harpsichord"}
  << \global \clef treble
     s1
   >>
>>  
  \midi { \tempo 4=72 }
  
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Printed score
\score {
  \new PianoStaff << 
    \new Staff="up"
    << \global \clef treble
       \soprano 
       \alto
       \tenor 
       \bass
     >>
    \new Staff="down"
    << \global \clef bass
       s1
     >>
  >>
  \layout { }
}
