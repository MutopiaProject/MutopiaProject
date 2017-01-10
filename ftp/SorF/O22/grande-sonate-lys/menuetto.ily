\version "2.19.49"

%%%
%%% Menuetto
%%%

menuettoTreble = {
  \oneVoice
  \repeat volta 2 {
    \partial 4 {fis'16(\f g') a'( g') } |
    e'4 <c e g c'> q |
    q2 e'16( d') cis'( d') |
    b4 <g, d f g> q |
    q2 g4 |
    \voiceOne
    c'4 g c' |
    d'4 a d' |
    c'8[( b) a g a b] |

    \mbreak
    c'2\mySegno
  }
  \repeat volta 2 {
    e'4 |
    \oneVoice f'8( e') fis'( e') gis'(e') | \voiceOne
    <c' e' a'>2 q4 |
    <d' e' b'>2 q4 |
    <c' e' c''>2 r4 |
    << {a'2 ais'8( b')} \\ {\midVoice c'2 c'4} >> |
    << {g'4 g' g'} \\
       {\midVoice\override Beam.positions=#'(-1.25 . -1.25) b8 d' b d' b d'} >> |
    << {a'2 ais'8( b')} \\ {\midVoice c'2 c'4} >> |

    \mbreak
    \oneVoice
    <g b g'>2 <g g'>4 |
    <dis dis'>4 <e e'> <c c'> |
    <a, a>2 r4 |
    <d c' d' a'>2 <d a c' fis'>4 |
    <g, g b g'>2 <g g'>4 |
    <dis dis'>4 <e e'> <c c'>4 |
    \voiceOne
    a2 r4 |
    <c' d' a'>2 <a c' fis'>4 |
    \oneVoice
    <g, g b g'>4 r4 g'8( fis') |
    a'8( g') e'( g') f'( d') |
    c'4 <d f g b> g'8( fis') |

    \mbreak
    a'8( g') e'( g') f'( d') |
    \repeat unfold 2 {c'4 <d f g b> \acciaccatura{g'8} f'8 d' |}
    c'4 <d f g b> q |
    q2 fis'16( g') a'( g') |
    e'4 <c e g c'> q |
    q2 e'16( d') cis'( d') |
    b4 <g, d f g> q |
    q2 g4 |

    \mbreak
    \voiceOne
    c'4 g c' |
    d'4 a d' |
    c'8( b) a g a b |
    <c e c'>2_\markup{\italic "Fine"}
  }
  \repeat volta 2 {
    \once\override TextScript #'self-alignment-X = #0
    g4^\markup "Trio." |
    c'8( b) d'( c') e'( d') |
    \oneVoice f'8( e') g'( fis') a'( g') | \voiceOne
    <d a c' fis'>4 q q |
    <b, g d' f'>4 q <c g c' e'> |
    d'4 cis' d' |

    \mbreak
    f'4 a d' |
    r4 <e g c'> <d g b> |
    <e g c'>2
  }
  \repeat volta 2 {
    e'8 d' |
    cis'4 bes' cis' |
    d'4 a' d' |
    cis' g' cis' |
    c'4 fis' c' |
    f'4 \appoggiatura{g'16[ f']} g'4 f' |
    f'4 e' dis' |

    \mbreak
    <c' e'>4 q <f a d'> |
    <e g c'>4 <d g b> g |
    c'8( b) d'( c') e'( d') |
    \oneVoice
    f'8( e') g'( fis') a'( g') |
    <d a c' fis'>4 q q |
    <b, g d' f'>4 q <c g c' e'> |
    \voiceOne
    d'4 cis' d' |
    f'4 a d' |
    r4 <e g c'> <d g b> |

    \mbreak
    <e g c'>2
  }
  \oneVoice
  fis'16(\f g') a'( g') |
  e'4 <c e g c'>4 q |
  q2 e'16( d') cis'( d') |
  b4 <g, d f g> q |
  q2 g4 |
  \voiceOne
  \repeat unfold 2 {c'4 g c' |}
  c'8( b) a g a b |
  c'2 s4_\markup{\italic "D.S."}\mySegno
  \bar "|."
}

menuettoBass = {
  \voiceTwo
  \partial 4 {s4} |
  s2.*4 |
  <c e>2 q4 |
  <f, f>2 q4 |
  <g, f>2. |

  <c e>2 r4 |
  s2. |
  a4 a, a |
  gis4 g, gis |
  a4 a, s |
  d8 d d d d d |
  d4 d d |
  d8 d d d d d |

  s2.*6 |
  a,4 a, a,\rest |
  d4 d d |
  s2.*3 |

  s2.*9 |

  <c e>2 q4 |
  <f, f>2 q4 |
  <g, f>2. |
  s2. |
  c2 r4 |
  s2. |
  s2.*2 |
  <f a>2. |

  f,2. |
  g,2. |
  c2 r4 |
  g2 g4 |
  f2 f4 |
  e2 e4 |
  d2 d4 |
  <g b>2 <gis b>4 |
  <a c'>2 <fis a>4 |

  g2 f,4 |
  g,2 r4 |
  c2. |
  s2.*3 |
  <f a>2. |
  f,2. |
  g,2. |

  c2 s4 |
  s2.*4 |
  <c e>2 q4 |
  <f, f>2 q4 |
  <g, f>2. |
  <c e>2 s4
}


%%%
%%% VOICE ASSEMBLY
%%%

menuetto_T = \fixed c {
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \menuettoTreble
}

menuetto_B = \fixed c {
  \set fingeringOrientations = #'(left)
  \override Fingering.add-stem-support = ##t
  \menuettoBass
}

%%%
%%% SCORE ASSEMBLY
%%%

menuettoScore =
  \new Staff = "Guitar" \with {
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  } <<
    \time 3/4
    \key c \major
    \clef "treble_8"
    \context Voice = "menuettoTreble" \menuetto_T
    \context Voice = "menuettoBass" \menuetto_B
  >>

menuettoMidi = <<
  \new Staff = "midi-guitar" \with {
    midiInstrument = #"acoustic guitar (nylon)"
  } <<
    \time 6/8
    \key ees \major
    \clef "treble_8"
    \context Voice = "menuettoTreble" \menuetto_T
    \context Voice = "menuettoBass" \menuetto_B
  >>
>>

%%% Local Variables: ***
%%% LilyPond-master-file: "grande-sonata-opus22.ly" ***
%%% End: ***
