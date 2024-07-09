\version "2.18.2"

\midi {
  \tempo 4 = 75
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\header {
  title = "Не обмани"
  composer = "Александр Дюбюк (1812—1898)"
  poet = "Генрих Гейне (1797—1856)"

  maintainer = "Anonymous"
  mutopiacomposer = "DubuqueA"
  mutopiainstrument = "Voice (Soprano), Piano"
  mutopiapoet = "Heinrich Heine"
  mutopiatitle = "Ne obmani [Do not deceit]"
  license = "Public Domain"
  source = "СТАРИННЫЕ РУССКИЕ / РОМАНСЫ / Для голоса / с фортепиано / ИЗДАТЕЛЬСТВО «МУЗЫКА» / Ленинградское отделение / 1978"
  style = "Romanticism"
}

global = {
  \tempo Умеренно
  \key g \minor
  \time 4/4

  s1 \repeat volta 2 { s1 \break
    s1*2 \break
    s1*3 \break

      \barNumberCheck 8 %\pageBreak

    s1*2 \break
    s1*2 \break
    s1*3 \break
    s1*2
  }
  \alternative {
    { s1 }
    { s1 }
  }
  \bar "|."
}

voice = \relative c' {
  r2 r8 d8 g a |
  bes4. bes8 bes a g fis |

    \barNumberCheck 3

  g4~ g8 r r d' bes g |
  d4. d8 es8. es16 \times 2/3 { g8[( f!)] es } |

    \barNumberCheck 5

  d4~ d8 r r d fis a |
  d2~ d8 g,8 fis e |
  es4~ es8 r r a bes a |

    \barNumberCheck 8

  d,4~ d8 r r fis e fis |
  g4~ g8 r r d' es d |

    \barNumberCheck 10

  g,4( c~ c8) c d c |
  f,4( bes8) r r a bes8. g16 |

    \barNumberCheck 12

  d'2~ d8 d, e fis |
  g4~ g8 r r2 |
  R1 |

    \barNumberCheck 15

  R1*2 |
  r2 r8 d g a |
  R1 |
}

firstStanza = \lyricmode {
  \set stanza = #"1. "
  Как две звез -- ды сквозь си -- ний мрак но --
  чей, си -- я -- ет мне кра -- са тво -- их о --
  чей. Мне мно -- го благ су -- лят о -- ни. Не об -- ма --
  ни, не об -- ма -- ни! Мне мно -- го
  благ су -- лят о -- ни. Не об -- ма --
  ни, не об -- ма -- ни! \set stanza = #"2. " Как диск лу
}
secondStanza = \lyricmode {
  \repeat unfold 3 \skip 1
  ны дро -- жит в_се -- дых вол --
  нах, тво -- я ду -- ша вид -- на в_тво -- их гла --
  зах. Си -- я -- ют кро -- то -- стью о -- ни. Не об -- ма --
  ни, не об -- ма -- ни! Си -- я -- ют
  кро -- то -- стью о -- ни. Не об -- ма --
  ни, не об -- ма -- ни!
}

%{
Как две звезды сквозь синий мрак ночей,
Сияет мне краса твоих очей.
Мне много благ сулят они.
Не обмани, не обмани!

Как диск луны дрожит в седых волнах,
Твоя душа видна в твоих глазах.
Сияют кротостью они.
Не обмани, не обмани!
%}

upper = \relative c' {
  <bes d g>2~ <bes d g>8 r r4 |
  r8 bes( d g) r c,( es fis) |

    \barNumberCheck 3

  r8 bes,( d g) r a,( d g) |
  \clef bass r8 fis,( a d) r g,( bes es) |

    \barNumberCheck 5

  r8 fis,( a d) r \clef treble d( fis a) |
  << { d1 } \\ { g,8\rest d( g d) g\rest g( fis f) } >> |
  r8 es( g c) r c,( es a) |

    \barNumberCheck 8

  r8 bes,( d g) r a,( d fis) |
  r8 a,( d g) r f( g f) |

    \barNumberCheck 10

  r8 es( g c) r es,( f es) |
  r8 d( f bes) r c,( es a) |

    \barNumberCheck 12

  r8 bes,( d g) r a,( c fis) |
  r8 bes,( d g) \times 2/3 { r8 g^[ d'] } << { g4 } \\ { \times 2/3 { g8 d g, } } >> |
  <<
    {
      f'4( es) s f
    } \\ {
      \times 2/3 { f8 g, c } \times 2/3 { es c g } \tupletUp \times 2/3 { bes\rest f^[ c'] } \tupletNeutral \times 2/3 { f c f, }
    }
  >> |

    \barNumberCheck 15

  <<
    {
      es'4( d) s2
    } \\ {
      \times 2/3 { es8 f, bes } \times 2/3 { d bes f } \tupletUp \times 2/3 { bes\rest es,(^[ a] } \tupletNeutral \times 2/3 { c^[ a es]) } |
    }
  >> |
  \times 2/3 { r8 d g } \times 2/3 { bes g d } \times 2/3 { r8 c fis } \times 2/3 { a fis c } |
  \repeat unfold 2 { <bes g'>2~ <bes g'>8 r r4 | }
}

lower = \relative c {
  <g d' g>2~ <g d' g>8 r r4 |
  g2 g' |

    \barNumberCheck 3

  g,2 bes |
  d2 d, |

    \barNumberCheck 5

  d'2 <c d> |
  <bes g'>2 <b g'>~ |
  <c g'>2 c |

    \barNumberCheck 8

  d2 c |
  bes2 <b g'>~ |

    \barNumberCheck 10

  <c g'>2 <a f'>^~ |
  \stemUp <bes f'>2 \stemNeutral c |

    \barNumberCheck 12

  d2 d, |
  g2 <b g'> |
  <c g'>2 <a f'>^~ |

    \barNumberCheck 15

  \stemUp <bes f'>2 \stemNeutral c |
  d2 d, |
  \repeat unfold 2 { r8 g' d bes g r r4 | }
}

music = <<
  \new Staff \with { midiInstrument = "voice oohs" } <<
    \new Voice \global
    \new Voice = "voice" {
      \clef treble
      \autoBeamOff
      \dynamicUp
      \voice
    }
    \new Lyrics \lyricsto "voice" \firstStanza
    \new Lyrics \lyricsto "voice" \secondStanza
  >>
  \new PianoStaff \with { midiInstrument = "acoustic grand" } <<
    \new Staff = "upper" <<
      \clef treble
      \global
      \upper
    >>
    \new Staff = "lower" <<
      \clef bass
      \global
      \lower
    >>
  >>
>>

\score {
  \music
  \layout {}
}

\score {
  \unfoldRepeats \music
  \midi {}
}