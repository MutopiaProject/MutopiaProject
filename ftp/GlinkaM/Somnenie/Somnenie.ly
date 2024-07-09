\version "2.18.2"

\layout {
  \context {
    \Score
    \override DynamicTextSpanner #'dash-period = #-1
  }
}

\midi {
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\header {
  title = "Сомнение"
  composer = "Михаил Глинка (1804—1857)"
  poet = "Нестор Кукольник (1809—1868)"

  maintainer = "Anonymous"
  mutopiacomposer = "GlinkaM"
  mutopiainstrument = "Voice (Mezzo-soprano), Piano"
  mutopiapoet = "Nestor Kukolnik"
  mutopiatitle = "Somnenie [Doubt]"
  license = "Public Domain"
  source = "М. Глинка / РОМАНСЫ И ПЕСНИ / 2 / Для голоса / в сопровождении / фортепиано / Издательство  М у з ы к а  Москва  1970"
  style = "Romanticism"
}

dashPlus = "trill"

global = {
  \tempo "Andante mosso" 4 = 88
  \key d \minor
  \time 4/4

  s1*3 \break
  s1*4 \break
  s1 \repeat volta 2 {
    s1*2 \break
    s1*3 \break

      \barNumberCheck 14 \pageBreak

    s1*3 \break
    s1*3 \break
    s1*3 \break
    s1*3 \break

      \barNumberCheck 26 \pageBreak

    s1*3 \break
    s1
  }
  \alternative {
    { s1 }
    { s1 \break }
  }
  s1*3 \break
  s1*3 \break

    \barNumberCheck 38 \pageBreak

  s1*3 \break
  s1*3 \break
  s1*4 \break
  s1*4 \bar "|."
}

voiceSlurFixOne = { \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -0.5)) Slur }
voiceSlurFixTwo = { \shape #'((0 . -0.25) (0 . -0.25) (0 . -0.25) (0 . -0.25)) Slur }

voice = \relative c' {
  R1*3 |

    \barNumberCheck 4

  R1*4 |

    \barNumberCheck 8

  r2 r4 r8 f8\p |
  f4 f8 f f4 e8 e |
  e4 d r r8 d8 |

    \barNumberCheck 11

  d4~ \times 2/3 { d8\< e f } g4 g8 f |
  f4\> e\! r e |
  e8[( bes')] a4 r a |

    \barNumberCheck 14

  f8[( bes)] a4 r cis,8[( d)] |
  e4 f8 e g4 f8 e |
  f4.( e8) d4 d\cresc |

    \barNumberCheck 17

  cis8[( bes')] a4 r a |
  a8[( d)] d,4 r d |
  d c8 bes bes[( a)] f'8.\fermata\> e16 |

    \barNumberCheck 20

  d4 r-\tweak X-offset #-5.75 #(make-dynamic-script "") r f4\pp |
  \voiceSlurFixOne f8[( dis)] e4 r bes' |
  \voiceSlurFixOne bes8[( gis)] a4 r f\cresc |

    \barNumberCheck 23

  \voiceSlurFixOne f8[( dis)] e4 r bes' |
  \voiceSlurFixOne bes8[( gis]) a4 r a |
  \voiceSlurFixTwo g8[( fis)] a4 r a |

    \barNumberCheck 26

  \voiceSlurFixTwo g8[( fis)] a4 r a\f |
  \voiceSlurFixTwo g8[( fis )] es2 d8[( a)] |
  c4\> bes\! r a |

    \barNumberCheck 29

  d4\< d8 e e4\! f8 f |
  \tag #'layout { f2(\> e4\!) r8 e | }
  f2(\> e4\!) r8 e\p |

    \barNumberCheck 32

  f4 f8 f f4 e8 e |
  e4 d r d |
  d4~ \times 2/3 { d8\< e f\! } g4 g8 f |

    \barNumberCheck 35

  f4\> e\! r e |
  e8[( bes')] a4 r a |
  f8[( bes)] a4 r cis,8[( d)]

    \barNumberCheck 38

  e4 f8 e g4 f8 e |
  f4.( e8) d4 d\cresc |
  cis8\![( bes')] a4 r a |

    \barNumberCheck 41

  a8[( d)] d,2 d4 |
  d4 c8 bes bes[( a)] f'8.\fermata e16 |
  d4 r r2 |

    \barNumberCheck 44

  R1*4 |

    \barNumberCheck 48

  R1*4 |
}

firstThirdStanza = \lyricmode {
  \set stanza = #"1. "
  Уй -- ми -- тесь, вол -- не -- ни -- я стра -- сти, за --
  сни, без -- на -- деж -- но -- е серд -- це, я пла -- чу я
  страж -- ду, ду -- ша у -- то -- ми -- лас в_раз -- лу -- ке! Я
  страж -- ду, я пла -- чу, не вы -- пла -- кать го -- ря в_сле --
  зах. На -- прас -- но на -- деж -- да мне
  сча -- стье га -- да -- "ет, —" не  ве -- рю, не
  ве -- рю о -- бе -- там ко -- вар -- ным, раз --
  лу -- ка у -- но -- сит лю -- бовь! \set stanza = #"2. " "Как //" -- я! \set stanza = #"3. " Ми --
  ну -- ет пе -- чаль -- но -- е вре -- мя, мы сно -- ва об -- ни -- мем друг
  дру -- га и страст -- но, и жар -- ко за --
  бьёт -- ся вос -- крес -- ше -- е серд -- це, и страст -- но, и
  жар -- ко с_у -- ста -- ми со -- льют -- ся у -- ста.
}
secondStanza = \lyricmode {
  \skip 1 сон не -- от -- ступ -- ный и гроз -- ный, мне
  снит -- ся со -- пер -- ник счаст -- ли -- вый, и тай -- но, и -- злоб -- но
  ки -- пя -- ща -- я рев -- ность пы -- ла -- ет! И
  тай -- но, и злоб -- но о -- ру -- жи -- я и -- щет ру --
  ка. На -- прас -- но из -- ме -- ну мне
  рев -- ность га -- да -- "ет, —" не ве -- рю, не
  ве -- рю ко -- вар -- ным на -- ве -- там, я
  счаст -- лив "ты —" сно -- ва мо -- _ ""
}

%{
Уймитесь, волнения страсти,
Засни, безнадежное сердце,
Я плачу, я стражду, душа утомилась в разлуке!
Я стражду, я плачу, не выплакать горя в слезах.
Напрасно надежда мне счастье гадает, —
Не верю, не верю обетам коварным,
Разлука уносит любовь!

Как сон, неотступный и грозный,
Мне снится соперник счастливый,
И тайно, и злобно кипящая ревность пылает!
И тайно, и злобно оружие ищет рука.
Напрасно измену мне ревность гадает, —
Не верю, не верю коварным наветам,
Я счастлив – ты снова моя!

Минует печальное время,
Мы снова обнимем друг друга
И страстно, и жарко забьётся воскресшее сердце,
И страстно, и жарко с устами сольются уста.
%}

upperRepeatedPartA = {
  r4 d( f g) |
  \tweak Slur.positions #'(2 . 1) a2( bes4 c |
  d2) e^+( |
  f2) r4 f->~( |
  f8 e bes') r r4
}

upperRepeatedPartB = {
  \times 2/3 { r8 \shape #'((0 . 0.75) (0 . 1) (0 . 1) (0 . 1.1)) Slur d( e } bes'4) r << { a8.\fermata g16 } \\ { <a, cis>4\fermata } >> |
}

upper = \relative c' {
  \upperRepeatedPartA e,4( |

    \barNumberCheck 6

  cis8\turn d a') r r4 d,( |
  cis8 g' e cis a bes \times 2/3 { g e a) } |

    \barNumberCheck 8

  \times 4/6 { r8 f[( a d a f)] } \times 4/6 { r d[( f a f d)] } |
  \override TupletNumber #'stencil = ##f \override TupletBracket #'bracket-visibility = ##f \times 4/6 { r8 a[( d f d a)] } \times 4/6 { r g[( cis e cis a)] } |
  \repeat unfold 2 { \times 4/6 { r8 f[( a d a f)] } } |

    \barNumberCheck 11

  \times 4/6 { r8 f[( a d as f)] } \times 4/6 { r g[( d' g d g,)] } |
  \times 4/6 { r8 g[( c e c g)] } \times 4/6 { r g[( e' g e g,)] } |
  \times 4/6 { r8 a[( e' a e a,)] } \times 4/6 { r8 a[( e' g e a,)] } |

    \barNumberCheck 14

  \repeat unfold 2 { \times 4/6 { r8 a[( d f d a)] } } |
  \times 4/6 { r8 bes[( e g e bes)] } \times 4/6 { r a[( e' g e a,)] } |
  \times 4/6 { r8 a[( d f d a)] } \times 4/6 { r a[( d a' d, a)] } |

    \barNumberCheck 17

  \times 4/6 { r8 cis[( e a e cis)] } \times 4/6 { r e[( a cis a e)] } |
  \times 4/6 { r8 d[( a' d a d,)] } \times 4/6 { r d[( f d' f, d)] } |
  \upperRepeatedPartB |

    \barNumberCheck 20

  \repeat unfold 2 { \times 4/6 { r8 a[( d f d a)] } } |
  \repeat unfold 2 { \times 4/6 { r8 bes[( c g' c, bes)] } } |
  \repeat unfold 2 { \times 4/6 { r8 a[( c f c a)] } } |

    \barNumberCheck 23

  \repeat unfold 2 { \times 4/6 { r8 bes[( c e c bes)] } } |
  \times 4/6 { r8 a[( c f c a)] } \times 4/6 { r a[( c a' c, a)] } |
  \times 4/6 { r8 a[( c fis c a)] } \times 4/6 { r a[( c a' c, a)] } |

    \barNumberCheck 26

  \repeat unfold 2 { \times 4/6 { r8 a[( c fis c a)] } \times 4/6 { r a[( c a' c, a)] } | }
  \times 4/6 { r8 bes[( d g d bes)] } \times 4/6 { r a[( d f! d a)] } |

    \barNumberCheck 29

  \repeat unfold 2 { \times 4/6 { r8 gis[( d' f d gis,)] } } |
  \tag #'layout { \times 4/6 { r8 a[( d f d a)] } \times 4/6 { r a[( cis e cis a)] } | }
  \times 4/6 { r8 a[( d f d a)] } \times 4/6 { r a[( cis e cis a)] } |

    \barNumberCheck 32

  \times 4/6 { r8 a[( d f d a)] } \times 4/6 { r g[( cis e cis g)] } |
  \repeat unfold 2 { \times 4/6 { r8 f[( a d a f)] } } |
  \times 4/6 { r8 f[( a d as f)] } \times 4/6 { r g[( d' g d g,)] } |

    \barNumberCheck 35

  \times 4/6 { r8 g[( c e c g)] } \times 4/6 { r g[( e' g e g,)] } |
  \times 4/6 { r8 a[( e' a e a,)] } \times 4/6 { r a[( e' g e a,)] } |
  \repeat unfold 2 { \times 4/6 { r8 a[( d f d a)] } } |

    \barNumberCheck 38

  \times 4/6 { r8 bes[( e g e bes)] } \times 4/6 { r a[( e' g e a,)] } |
  \times 4/6 { r8 a[( d f d a)] } \times 4/6 { r a[( d a' d, a)] } |
  \times 4/6 { r8 cis[( e a e cis)] } \times 4/6 { r e[( a cis a e)] } |

    \barNumberCheck 41

  \times 4/6 { r8 d[( a' d a d,)] } \times 4/6 { r d[( f d' f, d)] } |
  \upperRepeatedPartB |
  \upperRepeatedPartA \shape #'(((0 . 0) (0 . 0) (0 . 0) (0 . 0)) ((0 . 1) (0 . 2) (0 . 1) (0 . 0))) Slur e,4( |

    \barNumberCheck 48

  cis8\reverseturn d a') r r4 \shape #'((0 . 0) (0 . 1.5) (0 . 0) (0 . -0.5)) Slur d,( |
  cis8 g' e cis a bes \revert TupletNumber #'stencil \times 2/3 { g e a) } |
  d,2^\tweak X-offset #-1 #(make-dynamic-script (markup #:normal-text #:italic "rit.")) << { <g d'>2 } \\ { d4.( e8) } >> |
  <f d'>1\fermata |
}

lowerRepeatedPart = {
  \repeat unfold 2 { \shape #'((0 . 0.5) (0 . -0.5) (0 . 0.5) (0 . 1)) Slur \times 4/6 { d8[( f a d a f)] } } |
  \repeat unfold 2 { \shape #'((0 . 1) (0 . -0.5) (0 . 0.5) (0 . 1)) Slur \times 4/6 { c8[( e a c a e)] } } |
  \shape #'((0 . 1) (0 . -0.5) (0 . 0.5) (0 . 1.5)) Slur \times 4/6 { bes8[( d f bes f d)] } \shape #'((0 . 1) (0 . 0.25) (0 . 0.75) (0 . 1)) Slur \times 4/6 { bes[( des e g e bes)] } |
  \override TupletNumber #'stencil = ##f \shape #'((0 . 1) (0 . -0.5) (0 . 0.5) (0 . 1.25)) Slur \times 4/6 { a8[( c f a f c)] } a4 r |
  \times 4/6 { g8[( bes d e d bes)] } g4 r |
  \shape #'((0 . 1) (0 . -0.5) (0 . 0.5) (0 . 1)) Slur \times 4/6 { a8[( d f a f d)] } a4 r |
  <a e' g>2. r4 |
}

lower = \relative c {
  \lowerRepeatedPart |

    \barNumberCheck 8

  \repeat unfold 3 { <d, d'>2 <d d'> | }

    \barNumberCheck 11

  <d d'>4( <c c'> <b b'>2) |
  <c c'>2 <c c'> |
  <cis cis'>2 <cis cis'> |

    \barNumberCheck 14

  <d d'>2 <d d'> |
  <d d'>2 <cis cis'> |
  <d d'>2 <f f'> |

    \barNumberCheck 17

  <a a'>2 <g g'> |
  <f f'>2 <bes bes'> |
  <g g'>4 r r a\fermata |

    \barNumberCheck 20

  <d, d'>4 r <d d'>2 |
  <c c'>2 <c c'>4 <e e'> |
  <f f'>2 <c c'> |

    \barNumberCheck 23

  <g' g'>2 <c, c'>4 <g' g'> |
  <f f'>4 r <es es'>2( |
  <d d'>4) r <es es'>2( |

    \barNumberCheck 26

  <d d'>4) r <es es'>2( |
  <d d'>4) r <fis fis'>2( |
  <g g'>4) r a r |

    \barNumberCheck 29

  bes2 <bes, bes'> |
  \tag #'layout { <a a'>4 r a'2 | }
  <a, a'>4 r a'2( |

    \barNumberCheck 32

  <d, d'>2) <d d'> |
  <d d'>2 <d d'> |
  <d d'>4( <c c'> <b b'>2) |

    \barNumberCheck 35

  <c c'>2 <c c'> |
  <cis cis'>2 <cis cis'> |
  <d d'>2 <d d'> |

    \barNumberCheck 38

  <d d'>2 <cis cis'> |
  <d d'>2 <f f'> |
  <a a'>2 <g g'> |

    \barNumberCheck 41

  <f f'>2 <bes bes'> |
  <g g'>4 r r a\fermata |
  \lowerRepeatedPart |

    \barNumberCheck 50

  <d_~ f a>2( <d bes'>) |
  <d a'>1\fermata |
}

dynamics = {
  s1\p |
  \times 4/6 { s8 s s s s\< s } \times 4/6 { s8 s s s s s\! } |
  s1 |

    \barNumberCheck 4

  s2. \once \override DynamicTextSpanner #'bound-details #'left #'stencil-offset = #'(-2.5 . 0) s4\dim |
  s1*2\! |
  s8\> s s s s s \times 2/3 { s s s\! } |

    \barNumberCheck 8

  s1 |
  s1\p |
  s1 |

    \barNumberCheck 11

  \times 4/6 { s8 s\< s s s s } \times 4/6 { s\! s s s s s } |
  \times 4/6 { s8 s\> s s s s\! } s2 |
  s1 |

    \barNumberCheck 14

  s1*2 |
  s2 \times 4/6 { s8\cresc s s s s s\! } |

    \barNumberCheck 17

  s1*2 |
  s2. s4\> |

    \barNumberCheck 20

  \times 4/6 { s8 s s\! s s s } s2-\tweak X-offset #-1.4 #(make-dynamic-script (markup #:dynamic "pp" #:whiteout #:pad-markup 0.5 #:normal-text #:italic "e poco a poco cresc.")) |
  s1*2 |

    \barNumberCheck 23

  s1*3 |

    \barNumberCheck 26

  s2 s\f |
  s1 |
  \times 4/6 { s8 s\> s s s s\! } s2 |

    \barNumberCheck 29

  s2 \times 4/6 { s8 s\< s s s s\! } |
  \times 4/6 { s8 s\> s s s s } \times 4/6 { s\! s s s s s } |
  \times 4/6 { s8 s\> s s s s } \times 4/6 { s s s s s\! s } |

    \barNumberCheck 32

  s1\p |
  s1 |
  \times 4/6 { s8 s\< s s s s\! } s2 |

    \barNumberCheck 35

  \times 4/6 { s8 s\> s s s s\! } s2 |
  s1*2 |

    \barNumberCheck 38

  s1 |
  s2 \times 4/6 { s8 s\cresc s s s s } |
  s1 |

    \barNumberCheck 41

  s1 |
  s2. s4\> |
  s4\p s2 s4\cresc |

    \barNumberCheck 44

  s1*2 |
  s2. s4\p |
  s1 |

    \barNumberCheck 48

  s1 |
  s8\< s s s\! s\> s \times 2/3 { s s s\! }
  s2\< s4.\> s8\! |
  s1 |
}

\score {
  <<
    \new Staff \with { midiInstrument = "voice oohs" } <<
      \new Voice \global
      \new Voice = "voice" {
        \clef treble
        \autoBeamOff
        \dynamicUp
        \voice
      }
      \new Lyrics \lyricsto "voice" \firstThirdStanza
      \new Lyrics \lyricsto "voice" \secondStanza
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