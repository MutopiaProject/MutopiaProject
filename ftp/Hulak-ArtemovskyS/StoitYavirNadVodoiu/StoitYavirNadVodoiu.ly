\version "2.24.3"

\header {
  title = "Стоїть явір над водою"
  composer = "Семен Гулак-Артемовський (1813—1873)"

  maintainer = "Anonymous"
  mutopiacomposer = "Hulak-ArtemovskyS"
  mutopiainstrument = "Voice (Bass), Piano"
  mutopiatitle = "Stoit yavir nad vodoiu [The maple stands above the water]"
  license = "Public Domain"
  source = "ИЗ РЕПЕРТУАРА И. С. ПАТОРЖИНСКОГО / УКРАИНСКИЕ / НАРОДНЫЕ / ПЕСНИ / ДЛЯ БАСА / В СОПРОВОЖДЕНИИ ФОРТЕПИАНО / ГОСУДАРСТВЕННОЕ МУЗЫКАЛЬНОЕ ИЗДАТЕЛЬСТВО / Москва 1963"
  style = "Romanticism"
}

\layout {
  \context {
    \Score
    \override VerticalAxisGroup.remove-first = ##t
  }
  \context {
    \Staff
    \RemoveEmptyStaves
  }
}

\midi {
  \tempo 4 = 35
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\paper {
  indent = 0
  markup-system-spacing.basic-distance = #0
  system-system-spacing.stretchability = #10
}

showMultiRests = { % http://lsr.di.unimi.it/LSR/Item?id=312
 \set Staff.keepAliveInterfaces = #'(
    rhythmic-grob-interface
    multi-measure-rest-interface
    lyric-interface
    stanza-number-interface
    percent-repeat-interface)
}

global = {
  \tempo Andantino
  \key d \minor
  \time 2/4

  s2*4 \break
  s2*4 \break
  \repeat volta 3 {
    s2*4 \break
    s2*4 \break

      \barNumberCheck 17 \pageBreak

    s2*4 \break
    s2*4 \break
  }
}

melody = \relative c {
  R2*8 |

    \barNumberCheck 9

  d8\mf e f g |
  a8. f16 \acciaccatura { e16[ f g] } f8[( e16)] d16 |
  g8 g a8[( \acciaccatura { bes16[ a] } g16)] a |
  bes8.[( a16)] g8 r |

    \barNumberCheck 13

  f8 \acciaccatura f bes8 a g |
  f8 \acciaccatura f g8 f e |
  f8. g16 a16[( g)] f[( e)] |
  d8.[( e16)] f8.[( g16)]

    \barNumberCheck 17

  a8 a bes cis |
  d8.\fermata c!16 bes8 a16[( g)] |
  a16[( bes)] g[( a)] f[( g)] e[( f)] |
  d4 d8 r |

    \barNumberCheck 21

  \showMultiRests R2*3 |
  R2^\markup \musicglyph "scripts.ufermata" |
}

firstStanza = \lyricmode {
  \set stanza = #"1. "
  Сто -- їть я -- вір над во -- до __ ю, в_во -- ду по __ хи -- лив -- ся;
  на ко -- за -- ка не -- до -- лень -- ка, ко -- зак за __ жу __ рив __ ся. __
  На ко -- за -- ка не -- до -- лень -- ка, __ ко __ зак __ за __ жу __ рив -- ся.
}
secondStanza = \lyricmode {
  \set stanza = #"2. "
  Не хи -- ли -- ся, я -- во -- ронь __ ку, ще ти зе __ ле -- нень -- кий!
  Не жу -- ри -- ся, ко -- за -- чень -- ку, __ ще_ж ти мо __ ло __ день __ кий! __
  Не жу -- ри -- ся, ко -- за -- чень -- ку, __ ще_ж __ ти __ мо __ ло __ день -- кий!
}
thirdStanza = \lyricmode {
  \set stanza = #"3. "
  «Як же ме -- ні не хи -- ли __ тись,— во -- да ко __ рінь ми __ є;
  Як же ме -- ні не жу -- ри -- тись, ко -- ли сер __ це __  ни __ є! __
  Як же ме -- ні не жу -- ри -- тись, __ ко __ ли __ сер __ це __  ни -- є!»
}

%{
Стоїть явір над водою,
В воду похилився;
На козака недоленька:
Козак зажурився.

Не хилися, явороньку,
Ще ти зелененький!
Не журися, козаченьку,
Ще ж ти молоденький!

«Як же мені не хилитись,—
Вода корінь миє;
Як же мені не журитись,
Коли серце ниє!»
%}

upper = \relative c {
  <f a d>8^"espressivo" <e a e'> <f a f'> <a cis g'> |
  <a d a'>8. f'16 \acciaccatura { e16[ f g] } f8 e16 d |
  << { g8 g a a } \\ { bes,8\rest <bes d> bes\rest <d fis> } >> |
  << { bes'8. a16 g8 } \\ { bes,8\rest <bes d g>16 <c fis> bes8 } >> r8 |

    \barNumberCheck 5

  <d a'>8 <g a cis> <d a' d> <e a e'> |
  <f a f'>8. <g e'>16 << { d'8 <a c>16 <g bes> } \\ { <f a>8 d } >> |
  <d f a>8 <g a e'>16 <f a d> <d a' cis> <g bes e> <f a d> <e g cis> |
  <d f a d>4 \acciaccatura d'8 d'4\fermata |

    \barNumberCheck 9

  <f,,, a d>8( <e a e'> <f a f'> <a cis g'>) |
  r8 <a d a'> r <a d f> |
  r8 <bes d g> r <c d fis a> |
  <bes d bes'>8.( <c fis a>16 <bes g'>8) r |

    \barNumberCheck 13

  <a d a'>8_( <bes cis e bes'> <a d a'> <a cis g'> |
  <a d f>8[ <d g> <d f> <bes d e bes'>] |
  <a d f a>8) r <a cis e a>4 |
  <f a d>8( <a e'> <a f'> <a cis g'>) |

    \barNumberCheck 17

  r8 <a d a'>( <d g bes> <e g bes cis>) |
  <d a' d>8.\fermata( <d a' c!>16 <d g bes>8 <bes d g>) |
  <<
    {
      <f' a>8( <e g> <d f> <cis e> |
      <f, a d>4.) bes'8\rest |
    } \\ {
      a,4. g8 |
      s2 |
    }
  >> |

    \barNumberCheck 21

  \stemUp a'8^( <bes cis> <a d> <a e'>) \stemNeutral |
  <a f'>8.( <a f'>16 <a d>8 <a c>16 <g bes>) |
  <f a>8( <g e'>16 <f d'> <e cis'> <g e'> <f d'> <e cis'> |
  <f a d>4) \acciaccatura d'8 d'4\fermata |
}

lower = \relative c, {
  <d d'>8 <cis cis'> <d d'> <e e'> |
  <f f'>8 <d' f a> <d, d'> <d' f a> |
  <bes, bes'>8 <bes' d g> <d, d'> <d' fis a> |
  <g, g'>8. <d d'>16 <g, g'>8 r |

    \barNumberCheck 5

  <f' f'>8 <e e'> <f f'> <cis cis'> |
  <d d'>8 <e e'> <f f'> <g g'> |
  <<
    {
      s4 r8 a~ |
      a4 \clef treble <d' f a>4\arpeggio\fermata \clef bass |
    } \\ {
      <a, a'>4 f,4( |
      d'4) s |
    }
  >>

    \barNumberCheck 9

  <d d'>8( <cis cis'> <d d'> <e e'>) |
  <f f'>8 r <d d'> r |
  <g, g'>8 r <d' d'> r |
  <g, g'>8.( <d' d'>16 <g g'>8) r |

    \barNumberCheck 13

  <f f'>8_( <g g'> <f f'> <e e'> |
  <d d'>8 <bes' bes'> <a a'>^[ <g g'>] |
  a8) r <a, a'>4 |
  <d d'>8( <cis cis'> <d d'> <e e'>) |

    \barNumberCheck 17

  <f f'>8 r <g g'>4 |
  <f f'>8.\fermata( <fis fis'>16 <g g'>4) |
  <a, a'>4. <a a'>8 |
  <d d'>4. r8 |

    \barNumberCheck 21

  \change Staff = "upper" \stemDown a'''8_( g f cis) \stemNeutral \change Staff = "lower" |
  <<
    {
      d4 d8 d |
      d4 c8\rest a |
      d4
    } \\ {
      d8( d,16 e f8 g) |
      a4 <a,, a'> |
      <d' a'>4
    }
  >> \clef treble <d' f a>4\arpeggio^\fermata |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none

  s8-#(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "legato")) s4. |
  s2*3 |

    \barNumberCheck 5

  s8\p\< s4. |
  s8\f\> s s\! s |
  s2 |
  s4 s\p |

    \barNumberCheck  9

  s8\mf s4. |
  s2*3 |

    \barNumberCheck 13 |

  s2*3 |
  s8\< s s s |

    \barNumberCheck 17

  s8 s s s\! |
  s2 |
  s8\> s s s |
  s2\! |

    \barNumberCheck 21

  s8\p\< s4. |
  s8.\> s16 s8 s16 s\! |
  s8 s\dim s4 |
  s4 s\p |

}

\score {
  <<
    \new Staff \with { midiInstrument = "voice oohs" } <<
      \new Voice \global
      \new Voice = "voice" {
        \clef bass
        \autoBeamOff
        \dynamicUp
        \melody
      }
      \new Lyrics \lyricsto "voice" \firstStanza
      %\new Lyrics \lyricsto "voice" \secondStanza
      %\new Lyrics \lyricsto "voice" \thirdStanza
    >>
    \new PianoStaff \with { midiInstrument = "acoustic grand" } <<
      \new Staff = "upper" <<
        \clef treble
        \global
        \upper
      >>
      \new Dynamics = "dynamics" <<
        \global
        \dynamics
      >>
      \new Staff = "lower" <<
        \clef bass
        \global
        \lower
      >>
    >>
  >>

  \layout {}
  \midi {}
}