\version "2.18.2"

\midi {
  \tempo 4 = 65
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\paper {
  ragged-last-bottom = ##f
}

\header {
  title = "Ой чого ти, дубе"
  composer = "Кирило Стеценко (1882—1922)"
  poet = "Спиридон Черкасенко (1876—1940)"

  maintainer = "Anonymous"
  mutopiacomposer = "StetsenkoK"
  mutopiainstrument = "Voice (Bass), Piano"
  mutopiapoet = "Spyrydon Cherkasenko"
  mutopiatitle = "Oi choho ty, dube [Oh, why do you oak]"
  license = "Public Domain"
  source = "Хрестоматия / вокально- / педагогического / репертуара / ДЛЯ БАРИТОНА И БАСА / МУЗЫКАЛЬНОЕ УЧИЛИЩЕ / I — II КУРСЫ / СОСТАВИТЕЛЬ Г. АДЕН / ИЗДАТЕЛЬСТВО МУЗЫКА МОСКВА 1966"
  style = "Romanticism"
}

global = {
  \tempo Sostenuto
  \key b \minor
  \time 4/4

  \repeat unfold 4 { s1 \noBreak s1 \noBreak s1 \noBreak s1 \noBreak s1 }
  \bar "|."
}

voice = \relative c {
  R1*5 |

    \barNumberCheck 6

  R1*3 |
  \repeat volta 3 {
    fis4\mf b a4.\> fis8\! |
    g8([ fis] e [ g ]) fis2 |

      \barNumberCheck 11

    e8([ cis]) fis4 e8([ d] cis) b8 |
    ais4( cis) fis2\> |
    b,8\! ([ cis]) d8([ g]) fis4.\> d8\! |
    e8\<([ fis] g[ b] ais[ b]) cis4 |
    d8-.\f r cis-. r b-. r ais-. r |

      \barNumberCheck 16

    b2\> b8\! r r4 |
    R1*3 |
  }
  R1\fermata |
}

firstStanza = \lyricmode {
  \set stanza = #"1. "
  Ой чо -- го ти, ду -- бе,
  на яр по -- хи лив -- ся? Ой чо -- го, ко -- за -- че, не спиш, за -- жу --
  рив -- ся?
}
secondStanza = \lyricmode {
  \set stanza = #"2. "
  Гей, ме -- не ча -- ру -- ють
  зо -- рі се -- ред но -- чі. Не да -- ють за -- сну -- ти сер -- цю ка -- рі
  о -- чі.
}
thirdStanza = \lyricmode {
  \set stanza = #"3. "
  Гей, ле -- ти, мій ко -- ню,
  сте -- пом та -- я -- ра -- ми, ро -- збий мо -- ю ту -- гу в_бо -- ю з_во -- ро --
  га -- ми.
}

%{
Ой чого ти, дубе,
На яр похилився?
Ой чого, козаче,
Не спиш, зажурився?

Гей, мене чарують
Зорі серед ночі.
Не дають заснути
Серцю карі очі.

Гей, лети, мій коню,
Степом таярами,
Розбий мою тугу
В бою з ворогами.
%}

upper = \relative c' {
  r8 <b d fis>4-- <b e>8-. r <b d fis>4-- <b d fis>8-. |
  r8 <b g'>4-- <e g>8-. r <cis fis>4-- <fis ais>8-. |
  r8 <fis b>4-- <fis cis'>8-. r <fis d'>4-- <fis cis'>8-. |
  r8 <dis fis b>4-- <dis fis b>8-. r <e g b>4-- <cis e b'>8-. |
  r <d? fis b>4-- <d fis b>8-. r <e fis b>4-- <e fis ais>8-. |

    \barNumberCheck 6

  r8 <b d fis>4-- <b dis fis>8-. r <b e g>4-- <b e g>8-. |
  r8 <b fis'>4-- <e fis>8-. r <d fis>4-- <cis fis>8-. |
  r8 <b d fis>4-- <b d fis>8-. r <b d fis>4-- <b d fis>8-. |
  r8 <b d fis>4-- <d fis b>8-. r <a e' a>4-- <a d fis>8-. |
  r8 <g b g'>4-- <b g'>8-. r <b fis'>4-- <b fis'>8-. |

    \barNumberCheck 11

  r8 <b g'>4-- <b fis'>8-. r <b e>4-- <b eis>8-. |
  r8 <ais fis'>4-- <ais fis'>8-. r <ais cis fis>4-- <ais cis fis>8-. |
  r8 <b d fis>4-- <b e g>8-. r <b fis'>4-- <b fis' b>8-. |
  r8 <cis g' b>4-- <cis g' b>8-. r <cis fis ais>4-- <fis ais cis>8-. |
  <fis b d>8-.[ r <e g cis>8-.] r <d fis b>8-.[ r <cis fis ais>8-.] r |

    \barNumberCheck 16

  b'4.( a!8 g fis e g) |
  r8 <b, d fis>4-- <b dis fis>8-. r <b e g>4-- <b e g>8-. |
  r8 <b fis'>4-- <b e>8-. r <b d fis>4-- <cis fis>8-. |
  r8 <b d fis>4-- <b d fis>8-. r <b d fis>4-- <b d fis>8-. |
  <b d fis>1\fermata |
}

lower = \relative c {
  \shape #'((0 . 0) (0 . 1.5) (1.5 . 0) (0 . 0)) Slur b8 ( cis d g fis4. d8 ) |
  e8( fis g b ais b cis4) |
  d8-.[ r cis-.] r b-.[ r ais-.] r |
  b4.( a!8 g fis e g) |
  fis4. ( d8 e d cis d ) |

    \barNumberCheck 6

  b4.( a8 g fis e b) |
  \override Beam #'positions = #'(2 . 2) d8-.[ r cis-.] r b-.[ r fis'-.] r \revert Beam #'positions |
  b,2( b') |
  b2( cis4 d |
  e4 b8 cis d2) |

    \barNumberCheck 11

  e4( d cis cis, |
  fis4 cis' fis8 e d cis) |
  \tweak Slur.positions #'(2 . 2) b2( d |
  e fis4 e) |
  d8-.[ r e-.] r fis-.[ r fis,-.] r |

    \barNumberCheck 16

  <b, b'>8 <d' fis b>4-- <d fis b>8-. <b, b'>8 <e' g b>4-- <e g b>8-. |
  b'4.( a8 g fis e b) |
  d8-.[ r cis-.] r b-.[ r fis-.] r |
  b2( b,) |
  <b b'>1\fermata |
}

dynamics = {
  s1\p |
  s8 s4\< s2 s8\! |
  s4. s8\> s4. s8\! |
  s1*2 |

    \barNumberCheck 6

  s1*5 |

    \barNumberCheck 11

  s1 |
  s2 s8\> s4 s8\! |
  s1 |
  s8\< s2.. |
  s8-\tweak X-offset #-0.25 \mf s4. s8\> s4 s8\! |

    \barNumberCheck 16

  s4.\mf s8\> s4. s8\! |
  s1 |
  s8 s4 s8\dim s2 |
  s1*2\! |
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
