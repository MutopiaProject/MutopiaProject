\version "2.18.2"

\midi {
  \tempo 4 = 130
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\header {
  title = "Взяв би я бандуру"
  composer = "Віктор Косенко (1896—1938)"

  maintainer = "Anonymous"
  mutopiacomposer = "KosenkoV"
  mutopiainstrument = "Voice (Bass), Piano"
  mutopiatitle = "Vziav by ya banduru [If only I had a bandura]"
  license = "Public Domain"
  source = "Хрестоматия / вокально- / педагогического / репертуара / ДЛЯ БАРИТОНА И БАСА / МУЗЫКАЛЬНОЕ УЧИЛИЩЕ / I — II КУРСЫ / СОСТАВИТЕЛЬ Г. АДЕН / ИЗДАТЕЛЬСТВО МУЗЫКА МОСКВА 1966"
  style = "Romanticism"
}

global = {
  \tempo Allegro
  \key d \minor
  \time 3/4

  s2.*8 \repeat volta 4 {
    s2.*3 \break
    s2.*11 \break
    s2.*10
  }
}

voice = \relative c {
  R2.*8 |
  a2\mf a4 |
  a( cis ) e |
  d2( e4 ) |

    \barNumberCheck 12

  f( e d ) \breathe |
  e2 g4 |
  f2 e4 |
  d2.~ |
  d4 r r |
  bes'2\f c4 |
  d( c ) bes |
  a2. |
  a4( g f ) \breathe |
  e2 g4 |
  f2 e4 |

    \barNumberCheck 23

  d2.~ |
  d4 r r |
  R2.*8 |
}

firstStanza = \lyricmode {
  \set stanza = #"1. "
  Взяв би я -- бан -- ду --
  ру та_й за -- грав, що знав. Че -- рез ту -- бан -- ду -- ру бан -- ду -- рис -- том
  став.
}
secondStanza = \lyricmode {
  \set stanza = #"2. "
  А все че -- рез о --
  чi, ко -- ли_б я ïх мав, за тi ка -- рi о -- чi ду -- шу_б я вiд --
  дав.
}
thirdStanza = \lyricmode {
  \set stanza = #"3. "
  Ма -- ру -- си -- но, сер --
  це, по -- жа -- лiй ме -- не, вi -- зьми мо -- є сер -- це, дай ме -- нi сво --
  є.
}
fourthStanza = \lyricmode {
  \set stanza = #"4. "
  Де Крим за -- го -- ра --
  ми, де со -- неч -- ко сяє, там мо -- я го -- луб -- ка з_жа -- лю зав -- ми --
  рає.
}

%{
Взяв би я бандуру
Та й заграв, що знав.
Через ту бандуру
Бандуристом став.

А все через очi,
Коли б я iх мав,
За тi карi очi
Душу б я вiддав.

Марусино, серце,
Пожалiй мене,
Вiзьми моє серце,
Дай менi своє.

Де Крим за горами,
Де сонечко сяє,
Там моя голубка
З жалю завмирає.
%}

upperRepeatedPart = \relative c'' {
  <bes g' bes>2( <c a' c>4) |
  <d bes' d>4( <c a' c> <bes g' bes>) |
  <a d f a>2. |
  << { <a a'>4( <g g'> <f f'>) } \\ { d'2. } >>
  <e, bes' d e>2( <g bes d g>4) |
  <f a d f>2( <e a cis e>4) |
  <d f a d>2. |
  <d' f a d>2. |
}

lowerRepeatedPart = \relative c, {
  \tweak Slur.positions #'(1 . 1) <g g'>2( d''4) |
  <g bes d>2( d4) |
  \tweak Slur.positions #'(2 . 1) <d, a'>2( f'4) |
  \tweak Slur.positions #'(2 . 1) <f, d'>2( a'4) |
  \tweak Slur.positions #'(2 . 1) <g, d' bes'>2\arpeggio( <e e'>4) |
  <<
    {
      a'2( <g a cis>4)
      s2. |
      <f a d f>2. |
    } \\ {
      a,2.
      <f' a>2 <d, d,>4~ |
      <d d,>2. |
    }
  >>
}

upper = \relative c'' {
  \upperRepeatedPart |
  a,2. |
  <a e' g a>2.\arpeggio |
  <f a>2. |

    \barNumberCheck 12

  \set PianoStaff.connectArpeggios = ##t <f' a>2.\arpeggio \set PianoStaff.connectArpeggios = ##f |
  <bes, d g bes>2. |
  <d f a>2 <cis g' a cis>4 |
  <d f a d>2.~ |
  <d f a d>2. |
  \tweak Slur.positions #'(2 . 2) <d g bes>2( <a' c>4) |
  <bes d>4( <a c> <g bes>) |
  <d f a>2. |
  <f a>4( <e g> <d f>) |
  <bes d e>2( <bes d g>4) |
  <a d f>2( <g a cis e>4) |

    \barNumberCheck 23

  <f a d>2.~ |
  <f a d>2 <d' d'>4 |
  \upperRepeatedPart |
}

lower = \relative c, {
  \lowerRepeatedPart |
  \tweak Slur.positions #'(0 . 1) <a a'>2( e''4) |
  <g cis>2( e4) |
  \tweak Slur.positions #'(2 . 1) <d, a'>2( f'4) |

    \barNumberCheck 12

  <a d>2\arpeggio( f4) |
  <g, g'>2( <e e'>4) |
  <a a'>2 <a, a'>4 |
  <f'' a>4 d,( a' |
  d4 f a) |
  \tweak Slur.positions #'(1 . 2) <d, bes'>4( g,2) |
  \tweak Slur.positions #'(1 . 3) <g' d'>4( bes,2) |
  a'4( <d,, a'> d') |
  f4( <f, d'> a') |
  <g, g'>2( <e e'>4) |
  <a f'>2( <a, a'>4) |

    \barNumberCheck 23

  <d d'>2 <a a'>4 |
  <f f'>2 <d d'>4 |
  \override Staff.Arpeggio #'stencil = ##f \lowerRepeatedPart |
}

dynamics = {
  s2.\f |
  s2.*7 |
  s2.\mf |
  s2.*2 |

    \barNumberCheck 12

  s2.*4 |
  s4\< s s |
  s2.\f |
  s2.*5 |

    \barNumberCheck 23

  s2.*2 |
  s2.\f |
  s2.*6 |
}

\score {
  <<
    \new Staff \with { midiInstrument = "voice oohs" } <<
      \new Voice \global
      \new Voice = "voice" {
        \clef bass
        \autoBeamOff
        \dynamicUp
        \voice
      }
      \new Lyrics \lyricsto "voice" \firstStanza
      %\new Lyrics \lyricsto "voice" \secondStanza
      %\new Lyrics \lyricsto "voice" \thirdStanza
      %\new Lyrics \lyricsto "voice" \fourthStanza
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