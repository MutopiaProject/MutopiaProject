\version "2.19.49"

%%%
%%% ADAGIO
%%%

adagioTreble = {
  \voiceOne
  \repeat volta 2 {
    \partial 8 {<ees' g'>8} |
    g'8.[ \once\slurDown\appoggiatura{bes'8} aes'16 g'8] g'4 c''8 |
    c''4. b'4 aes'8 |
    aes'4 g'8 g'8[ \once\slurDown\acciaccatura{aes'16[ g']} aes'8 f] |
    ees'4 \acciaccatura{ees'16} d'8 c'4 b8\rest |
    <ees'-3 g'-2>4. q |

    \mbreak
    <d' f'>4. q |
    <c' ees'>4. <b d'> |
    c'8 c' c' c'4
  }
  \repeat volta 2 {
    b8\rest |
    << {e'8 e' e' e'4 e'8} \\
       {\midVoice bes16 c' bes c' bes c' bes c' bes c' bes c'} >> |

    \mbreak
    << {f'4 g'8 aes'4 bes8\rest} \\
       {\midVoice\override Beam.positions=#'(-2.5 . -2.5) aes16[ c' aes c' bes c'] <aes c'>4 s8} >> |
    << {fis'8 fis' fis' fis'4 fis'8} \\
       {\midVoice\override NoteColumn.force-hshift=#-1.25 d4. d
        \revert NoteColumn.force-hshift} >>|
    << {g'8 g' g' <bes d' g'>4 g8} \\
       {\midVoice b16 d' b d' b d' s4.} >>  |
    \oneVoice <f aes>8 r q q r q \voiceOne |
    <b f'>4\sf ees'32 d' c' b c'4 bes8-> |

    \mbreak
    <f a>4 <f aes>8 <ees g>4 <d f>8 |
    ees4\p b8\rest b4\rest
  } b8\rest\ff |
  <ees' g'>4. q |
  r8 q8\p q q q q\ff |
  <d' aes'>4. q |

  \mbreak
  r8 <f d' aes'>4 a16^([ bes b c' des' d']) |
  ees'4\p g'8 bes'8[ aes'16 g' f' ees'] |
  e'4. f'4 r8 |
  ees'8. f'16 g' aes' a' bes' aes' g' f' ees' |

  \mbreak
  e'4. g'4 r8 |
  ees'4 g'8 bes'8 aes'16 g' f' ees' |
  << {c''4. bes'} \\
     {\midVoice\stemUp f'16\rest ees'_\markup{"rinf."} c' ees' c' ees'
      f'\rest ees' bes ees' bes ees'} >> |
  << {a'8 a' a' a'4 a'8} \\
     {\midVoice f4. f} >> |
  bes'8-2 bes' bes' bes' bes' bes' |

  \mbreak
  bes'8\pp bes' bes' bes' bes' bes' |
  \repeat unfold 2 {bes'8 bes' bes' bes' bes' bes' |}
  bes'8-1 bes' bes' bes' bes' bes' |
  << {bes'8-1 bes' bes' bes' bes' bes'} \\
     {\midVoice <ees' g'>4. <e' g'>} >> |
  << {bes'8 bes' bes' bes' bes' bes'} \\
     {\midVoice <f' aes'>4. bes4\rest bes8\rest} >> |
  << {bes'8 bes' bes' bes' bes' bes'} \\
     {\midVoice <ees' g'>4. <ees' ges'>} >> |

  \mbreak
  bes'8 bes' bes' bes' b'16[ c'' cis'' d''] |
  ees''8\f ees'' ees'' ees''4 f''8 |
  ees''4. <f' aes' d''>16 bes'16[ b' c'' des'' d''] |
  ees''8\f ees'' ees'' ees''4 f''8 |

  \mbreak
  ees''4. <f' aes' d''>16 bes'16[ b' c'' des'' d''] |
  ees''8 ees'' ees'' des''8.[ des''16 ees'' des''] |
  c''4. c''8 c'' c'' |
  bes'8. a'16[ bes' a'] bes'8. a'16[ bes' a'] |

  \mbreak
  \oneVoice <bes ees' g' bes'>8 ees''16-4[( d''-3) c''-2 bes'-1] a'-4( aes'-3) g'-2 f'-1 aes'-4 g'-3 |
  \voiceOne \slashedGrace {g'8} f'2.\trill |
  <g ees'>4 r8 r4 r8 |
  <c' aes'>4._\dol <a fis'> |
  <bes g'>4 r8 r4 r8 |
  <aes c' g'>4. <aes ces' d'> |

  \mbreak
  \repeat unfold 2 {
    <g ees'>4 r8 r4 r8 |
    << {d'4. d'8 c' d'} \\ {\midVoice bes,2. } >> |
  }
  <g ees'>4 r8 r4 <bes bes'>8( |
  \oneVoice
  <g g'>4.) <bes, f aes d'>4. |

  \mbreak
  <ees g ees'>4 r8 <bes bes'>8 q q( |
  <g g'>4) r8 <bes, f aes d'>8 q q |
  <ees g ees'>4 r8 q4 r8 |
  q4 r8 r4 r8 |
  <des des'>8\f q q <bes bes'>4 <des des'>8 |
  <c c'>8 <c e g c' e'>4 b16([ c' des' d' ees' e']) |

  \mbreak
  \voiceOne
  f'8\p f' f' \acciaccatura{f'16[ g']} f'4 r8 |
  g'8 g' g' \acciaccatura{g'16[ aes']} g'4 r8 |
  a'8_\markup{\italic "cresc."} a' a' \acciaccatura{a'16[ bes']} a'4 r8 |
  bes'8 bes' bes' \acciaccatura{bes'16[ c'']} bes'4 r8 |

  \mbreak
  b'8 b' b' b'4 r8 |
  c''8 c'' c'' c''4. |
  fis'8 fis' fis' fis'4 fis'8 |
  <b g'>4 r8 r4 r8 |

  \mbreak
  <f' aes'>4.^\dol q8 <e' g'> <f' aes'> |
  q4. <d' f'>4 <d' fis'>8 |
  <ees' g'>4. \slashedGrace{aes'8} q8 <d' fis'> <ees' g'> |
  <ees' g'>4. <c' ees'> |
  <d' f'>4. <c' ees'> |
  <b d'>4  r8 r4 r8 |

  \mbreak
  \set fingeringOrientations = #'(left)
  <f'-4 aes'-2>4. <f' aes'>4 q8 |
  q4. <d' f'> |
   <ees' g'>4. q4 q8 |
   q4. <c' ees'> |
   <d' f'>4. <c'-3 ees'> |
   d'8 g' g' g'[ aes'16 a' bes'! b'] |

  \mbreak
  << {c''8 c''\poco c'' c''4\f d''8} \\
     {\midVoice \repeat unfold 2 {ees'16 g' ees' g' ees' g'}} >> |
  << {c''4. <g' b'>16 s s4} \\
     {\midVoice f'16 g' f' g' f' g' f' aes' g' aes' bes' b'} >> |
  << {c''8 c''\poco c'' c''4\f d''8} \\
     {\midVoice \repeat unfold 2 {ees'16 g' ees' g' ees' g'}} >> |
  << {c''4. <g' b'>16 s s4} \\
     {\midVoice f'16 g' f' g' f' g' f' aes' g' aes' bes' b'} >> |

  \mbreak
  << {c''8 c'' c'' bes'4 bes'8} \\
     {\midVoice c4 s s} >> |
  aes'4 g'8 fis'4. |
  \repeat unfold 2 { g'8.[ fis'16 g' fis']} |
  \oneVoice
  <g c' ees' g'>8[ aes'16( g') c''-4 b'-3] bes'-2 a'-1 aes'-2 g'-1 f'-4 ees' |
  \voiceOne

  \mbreak
  d'2.\trill |
  <ees c'>4 r8 r4 r8^\dol |
  <aes f'>4. <fis d'> |
  <g ees'>4 r8 r4 r8 |
  <f aes d'>4. <f aes b> |
  <ees c'>4 r8 r4 r8 |

  \mbreak
  b'4. \acciaccatura{c''8} b'8 a' b' |
  <ees' c''>4 r8 r4 r8 |
  << {b4.^\markup{\italic "lento"} aes'8 g' b} \\
     {\midVoice g,2.} >> |
  <ees c'>4 <g ees'>8 <ees c'>4 <g ees'>8 |
  <ees c'>4 r8 q4 r8 |
  q4 r8 r4 r8

  \bar "|."
}

adagioBass = {
  \voiceTwo
  \partial 8 { r8_\dol } |
  <c' ees'>8. <c' f'>16 <c' ees'>8 q4 q8 |
  <d' f'>4. q4 <c' ees'>8 |
  <b d'>4. q4 <g b>8 |
  c'4 <g, f b>8 <c e>4 s8 |
  r16 g aes g fis g r g aes g fis g |

  r16 g a g fis g r g a g fis g |
  r16 g a g fis g r f g f g f |
  e8 <c e g> q q4 s8 |
  g,4. g, |

  aes,4  e,8 f,4 s8 |
  \override Beam.positions=#'(-4 . -4)
  a16 c' a c' a c' a c' a c' a c' |
  \revert Beam.positions
  g,4. g, |
  s2. |
  <d g>4 s8 <c ees>4 <cis e>8 |

  d4 f,8 g,4 g,8 |
  c4 s8 s4 s8 |
  \repeat unfold 2 {ees16. d32 ees16. bes,32 g16. f32} |
  d4 r8 r4 r8 |
  \repeat unfold 2 {f16. e32 f16. bes,32 aes16. g32} |

  f8 bes,4 r r8 |
  \repeat unfold 2 {g16 bes g bes g bes} |
  \repeat unfold 2 {aes16 bes aes bes aes bes} |
  g16 bes g^\turn bes g bes g bes g bes g bes |

  \repeat unfold 2 {aes16 bes aes bes aes bes} |
  \repeat unfold 2 {g16 bes g bes g bes} |
  aes4. g |
  \repeat unfold 2 {e'16\rest ees'[ c' ees' c' ees']} |
  <bes, bes d'>8 b\rest b\rest b4\rest b8\rest |

  \set fingeringOrientations = #'(left)
  <ees-1 g-0>4. <e-3 g> |
  <f-4 aes-1> r4 r8 |
  <ees-3 g-2>4. <ees ges> |
  \set fingeringOrientations = #'(down)
  <d f>4. bes,8-1 bes, bes, |
  \repeat unfold 3 {bes,8 bes, bes, bes, bes, bes, |}

  <bes, d' f'>4 r8 r4 r8 |
  \repeat unfold 2 {ees'16 g' bes g' bes g'} |
  <bes f'>16 aes' f' aes' f' aes' bes4 r8 |
  \repeat unfold 2 {ees'16 g' bes g' bes g'} |

  <bes f'>16 aes' f' aes' f' aes' bes4 r8 |
  ees'16 g' ees' g' ees' g' <c' bes'> g' bes'^\turn g' r8 |
  ees'16 aes' ees' aes' ees' aes' ees' ges' <a ees'> ges' <a ees'> ges' |
  <bes ees' g'>8 q r r q r |

  \set fingeringOrientations = #'(left)
  s2. |
  <bes,-1 aes-1 d'-2>8 \repeat unfold 5 {<bes, aes d'>} |
  \repeat unfold 4 {ees8 ees ees ees ees ees |}

  \repeat unfold 2 {
    ees8 g f ees d c |
    \once\override NoteColumn.force-hshift=#2 
    f16 aes f aes f aes f aes f aes f aes |
  }
  ees4 s s |
  s2. |

  s2.*6 |

  \repeat unfold 2 {aes16 c' aes c' aes c'} |
  \repeat unfold 2 {bes16 des' bes des' bes des'} |
  \repeat unfold 2 {c'16 ees' c' ees' c' ees'} |
  \repeat unfold 2 {<bes des'>16 f' q f' q f'} |

  \repeat unfold 2 {<g d'>16 f' q f' q f' } |
  \repeat unfold 2 {<c' ees'>16 g' q g' q g'} |
  <aes c'>16 ees' q ees' q ees' q ees' c' ees' d' c' |
  \repeat unfold 2 {g8 g g} |

  \repeat unfold 5 {g8 g g g g g |}
  <g, g>8 <g,-1 g-0> <g, g> q q q |

  <g,-1 g-0>8 <g, g> q q q q |
  q8 q q q q q |
  <g, g-2>8 <g, g> q q q q |
  \repeat unfold 2 {q8 q q q q q|}
  q4 r8 r4 r8 |

  \repeat unfold 2 {
    c4. c |
    d4. d |
  }

  ees'16 g' ees' g' ees' g' c' e' c' e' c' e' |
  c'16 f' c' f' c' f' c' ees' <aes c'> ees' q ees' |
  <g c' ees'>8 q r r q r |
  s2. |

  <g, f b>8 q q q q q |
  \repeat unfold 4 {c8 c c c c c |}
  c8 g g g g g |

  \repeat unfold 6 {<g d'>16 f'} |
  g8 g, g, g, g, g, |
  \once\override NoteColumn.force-hshift=#2 f16 g f g f g f g f g f g |
  c4 c8 c4 c8 |
  c4 s8 c4 s8 |
  c4 s s |

}

%%%
%%% VOICE ASSEMBLY
%%%

adagio_T = \fixed c {
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t
  \voiceOne
  \adagioTreble
}

adagio_B = \fixed c {
  \set fingeringOrientations = #'(left)
  \override Fingering.add-stem-support = ##t
  \voiceTwo
  \adagioBass
}


%%%
%%% SCORE ASSEMBLY
%%%

adagioScore =
  \new Staff = "Guitar" \with {
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  } <<
    \time 6/8
    \key ees \major
    \clef "treble_8"
    \context Voice = "adagioTreble" \adagio_T
    \context Voice = "adagioBass" \adagio_B
  >>

adagioMidi = <<
  \new Staff = "midi-guitar" \with {
    midiInstrument = #"acoustic guitar (nylon)"
  } <<
    \time 6/8
    \key ees \major
    \clef "treble_8"
    \context Voice = "adagioTreble" \adagio_T
    \context Voice = "adagioBass" \adagio_B
  >>
>>


%%% Local Variables: ***
%%% LilyPond-master-file: "grande-sonata-opus22.ly" ***
%%% End: ***
