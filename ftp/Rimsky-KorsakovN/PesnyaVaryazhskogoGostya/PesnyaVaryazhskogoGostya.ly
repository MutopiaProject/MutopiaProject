\version "2.18.2"

\layout {
  \context {
    \PianoStaff
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
  title = "Песня варяжского гостя"
  subtitle = "Из оперы „Садко“"
  composer = "Николай Римский-Корсаков (1844—1908)"

  maintainer = "Anonymous"
  mutopiacomposer = "Rimsky-KorsakovN"
  mutopiainstrument = "Voice (Bass), Piano"
  mutopiatitle = "Pesnya varyazhskogo gostya [Song of the Varangian Guest] (Sadko)"
  license = "Public Domain"
  source = "Н. Римский-Корсаков / САДКО / опера-былина / клавир / издательство • музыка • / ленинградское отделение / 1975 (IMSLP517386)"
  style = "Romanticism"
}

fixTie = {
  \shape #'((0 . 0.15) (0 . 0.15) (0.75 . 0.15) (0.75 . 0.15)) Tie
}

global = {
  \tempo "Andante non troppo" 4 = 84
  \key d \minor
  \time 4/4

  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break

    \barNumberCheck 13 \pageBreak

  s1*4 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break

    \barNumberCheck 26 \pageBreak

  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break \bar "|."
}

voice = \relative c {
  R1*3 |

    \barNumberCheck 4

  r2 r4 r8 a8 |
  d4. e8 f e d a' |
  g8 a f e d d r a |

    \barNumberCheck 7

  d4. e8 f e d a' |
  g8 a d, e f4 r8 c |
  f4. c'8 bes a g f |

    \barNumberCheck 10

  a4 a8 a g f e d |
  f4. f8 e4. f8 |
  d8 d r4 r2 |

    \barNumberCheck 13

  R1*2 |
  r2 r4 r8 a |
  d4. e8 f e d a' |

    \barNumberCheck 17

  g8 a g d e e r8. e16 |
  d8. d16 c8 b8 e4. e8 |
  fis8. fis16 e8 d g4 r8 g |

    \barNumberCheck 20

  b4. b8 a g d e |
  f8 f r a g f c d |
  es4..-\tweak X-offset #-0.5 #(make-dynamic-script (markup #:normal-text #:italic "poco allarg.")) es16 d4. cis8 |

    \barNumberCheck 23

  e8-\tweak X-offset #-0.5 #(make-dynamic-script (markup #:normal-text "in tempo")) d r4 r2 |
  R1*2 |

    \barNumberCheck 26

  r2 r4 r8 a |
  d4. e8 f e d a' |
  g8 a d, e f f r c |

    \barNumberCheck 29

  f4. g8 a g f c' |
  bes8 c bes f a4 r8 a |
  bes4. bes8 es8 d c bes |

    \barNumberCheck 32

  d4 d8 d c bes a g |
  bes4 r8 bes a4. a8 |
  d1~ |

    \barNumberCheck 35

  d1 |
  d,8 r r4 r2 |
  R1^\markup \musicglyph #"scripts.ufermata" |
}

text = \lyricmode {
  О ска -- лы гроз -- ны -- е дро -- бят -- ся с_рё -- вом вол -- ны и
  с_бе -- лой пе -- но -- ю кру -- тясь бе -- гут на -- зад; но твёр -- до се -- ры -- е у --
  тё -- сы вы -- но -- сят волн на -- пор, над мо -- рем сто -- я.
  От скал тех ка -- мен -- ных у
  нас, ва -- ря -- гов, кос -- ти, от той вол -- ны мор -- ской в_нас кровь ру -- да по -- шла; а
  мыс -- ли тай -- ны от ту -- ма -- нов. Мы в_мо -- ре ро -- ди -- лись, ум -- рём на
  мо -- ре.
  Ме -- чи бу -- лат -- ны, стре -- лы ос -- тры у ва -- ря -- гов, на --
  но -- сят смерть о -- ни без про -- ма -- ха вра -- гу. От -- важ -- ны лю -- ди стран пол --
  ноч -- ных, ве -- лик их бог о -- дин у -- грю -- мо мо --
  ре.
}

%{
О скалы грозные дробятся с рёвом волны
И с белой пеною крутясь бегут назад;
Но твёрдо серые утёсы выносят волн напор,
Над морем стоя.

От скал тех каменных у нас, варягов, кости,
От той волны морской в нас кровь руда пошла;
А мысли тайны от туманов. Мы в море родились,
Умрём на море.

Мечи булатны, стрелы остры у варягов,
Наносят смерть они без промаха врагу.
Отважны люди стран полночных, велик их бог один
Угрюмо море.
%}

upper = \relative c {
  <f a d>4.^~^\tweak X-offset #0.5 #(make-dynamic-script (markup #:normal-text #:italic "Pesante")) d'32 d^( e f <g, b d g>4.^~) g'32 f( e d) |
  <<
    {
      <f, a d>4.^~ d'32 d( e f \tweak Beam.positions #'(2 . 1) \tweak TupletNumber.Y-offset #3.75 \times 4/6 { g8)[( f) g( f) e( d)] } |
    } \\ {
      s2 <g, b d> |
    }
  >>
  <f a d>4.^~ d'32 d^( e f <g, bes! d g>4.) \tweak Slur.positions #'(2 . 2) d'32^( e f g |

    \barNumberCheck 4

  <a, d f a>2.~) <a d f a>8 r |
  <a d f>2~ <a d f>8 r r4 |
  << { <g d'>2 } \\ { \tweak Slur.positions #'(-5.5 . -5.5) b4( bes) } >> <f a d>4~ <f a d>8 r |

    \barNumberCheck 7

  <a d f>2~ <a d f>8 r r4 |
  << { d4.( e8) } \\ { \shape #'((1.5 . 1.4) (0.75 . 2.1) (-0.5 . 2.1) (-1.25 . 1.4)) Slur <g, b>4~( <g bes>) } >> <f a f'>4~ <f a f'>8 r |
  <c' f c'>2 <d f bes> |

    \barNumberCheck 10

  <a d a'>2 <bes d g> |
  << { f'2 e4( d) } \\ { <a d>2 <g bes> } >> |
  <f a d>4.^~ d'32 d e f <g, b d g>4.^~ g'32 f e d |

    \barNumberCheck 13

  <<
    {
      \fixTie <f, a d>4.^~ d'32 d e f \tweak Beam.positions #'(2 . 1) \tweak TupletNumber.Y-offset #3.75 \times 4/6 { g8[( f) g( f) e( d)] } |
    } \\ {
      s2 <g, b d> |
    }
  >>
  \fixTie <f a d>4.^~ d'32 d e f <g, bes! d g>4. d'32 e f g |
  <a, d f a>2.~ <a d f a>8 r |
  <a d f>2~ <a d f>8 r r4 |

    \barNumberCheck 17

  \repeat unfold 2 { <g b d>2 <g c e> | }
  <a d fis>2 <g d' g>4 <g a e'> |

    \barNumberCheck 20

  r4 \clef bass <g b g'>2. |
  <<
    {
      f'2. f4( |
      es4..) es16 d4.( cis8) |
    } \\ {
      <gis b>4( <a c>2) <f a>4 |
      <fis a>4( <g bes!>8.) <es g>16 <e g>2 |
    }
  >>

    \barNumberCheck 23

  \clef treble <f a d>4.^~^> d'32 d e f <g, b d g>4.^~ g'32 f e d |
  <<
    {
      <f, a d>4.^~ d'32 d e f \tweak Beam.positions #'(2 . 1) \tweak TupletNumber.Y-offset #3.75 \times 4/6 { g8[( f) g( f) e( d)] } |
    } \\ {
      s2 <g, b d> |
    }
  >>
  <f a d^~>4. d'32 d e f <g, bes! d g>4. d'32 e f g |
  <a, d f a>2.~ <a d f a>8 r |
  <a d f>2~ <a d f>8 r r4 |
  << { d4.( e8) } \\ { <g, b>4 <g bes> } >> <a c f>4~ <a c f>8 r |

    \barNumberCheck 29

  <a c f>2 <es' f a>^>^\tweak X-offset #-1 #(make-dynamic-script (markup #:normal-text "Corni")) |
  << { <f bes>2 } \\ { d4( des) } >> <c f a>4~ <c f a>8 r |
  <d f bes>2^\tweak X-offset #-1 #(make-dynamic-script (markup #:normal-text "Tr-be e Corni.")) <es bes' es> |

    \barNumberCheck 32

  <d f bes d>2 <es g c> |
  <bes d g bes>2 <cis g' a> |
  <d f a d>4.~ d32 d e f <g, b d g>4.^~-> g'32 f e d |

    \barNumberCheck 35

  <<
    {
      \fixTie <f, a d>4.^~ d'32 d e f \tweak Beam.positions #'(2 . 1) \tweak TupletNumber.Y-offset #3.75 \times 4/6 { g8[( f) g( f) e( d)] } |
    } \\ {
      s2 <g, b d> |
    }
  >>
  <f a d>4.^~ d'32 d e f <g, bes! d g>4.^> d'32( e f g) |
  \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1 8) \repeat unfold 8 { <d f a>32 bes' } <d, f a>8 r r4\fermata |
}

lower = \relative c, {
  <d d'>4. \tweak Beam.positions #'(1 . 0.5) d32( c b a <g g'>4.) g'32( a b c |
  <d, d'>4.) \tweak Beam.positions #'(1 . 0.5) d32( c b a <g g'>4.) g'32( a b c |
  <d, d'>4.) \tweak Beam.positions #'(1 . 0.5) d32( c bes! a <g g'>4.) g'32( f e d) |

    \barNumberCheck 4

  \once \override Beam #'gap-count = #3 \once \override Beam #'gap = #2 \repeat tremolo 12 { d32 d'^~ } <d, d'>8 r |
  <d d'>2~ <d d'>8 r r4 |
  <g d'>2 <d d'>4~ <d d'>8 r |

    \barNumberCheck 7

  <d d'>2~ <d d'>8 r r4 |
  <g d'>4( <c, c'>) <f c'>4~ <f c'>8 r |
  <a f'>2 <bes f'> |

    \barNumberCheck 10

  <f d'>2 <g d'> |
  <d d'>2 <g d'> |
  <d d'>4. \tweak Beam.positions #'(1 . 0.5) d32 c b a <g g'>4. g'32 a b c |

    \barNumberCheck 13

  <d, d'>4. \tweak Beam.positions #'(1 . 0.5) d32 c b a <g g'>4. g'32 a b c |
  <d, d'>4. \tweak Beam.positions #'(1 . 0.5) d32 c bes! a <g g'>4. g'32 f e d |
  \once \override Beam #'gap-count = #3 \once \override Beam #'gap = #1 \repeat tremolo 12 { d32 d'^~ } <d, d'>8 r |
  <d d'>2~ <d d'>8 r r4 |

    \barNumberCheck 17

  <g d'>2 <c, c'> |
  g'2 c |
  c2 b4 cis |

    \barNumberCheck 20

  r4 d2.~ |
  d4 c2.~ |
  c4 bes2( a4) |

    \barNumberCheck 23

  <d, d'>4. \tweak Beam.positions #'(1 . 0.5) d32 c b a <g g'>4. g'32 a b c |
  <d, d'>4. \tweak Beam.positions #'(1 . 0.5) d32 c b a <g g'>4. g'32 a b c |
  <d, d'>4. \tweak Beam.positions #'(1 . 0.5) d32 c bes! a <g g'>4. g'32 f e d |
  \once \override Beam #'gap-count = #3 \once \override Beam #'gap = #2 \repeat tremolo 12 { d32 d' } d,8 r |
  <d d'>2~ <d d'>8 r r4 |
  <g d'>4( <c, c'>) <f c'>4~ <f c'>8 r |

    \barNumberCheck 29

  <f f'>1~ |
  <f f'>2.~ <f f'>8 r |
  <bes bes'>4^\tweak X-offset #-1 #(make-dynamic-script (markup #:normal-text "Tr-bni.")) <a a'> <g g'>2 |

    \barNumberCheck 32

  <bes bes'>2 <c g' c> |
  <g g'>2 <a e' a> |
  <d, d'>4. \tweak Beam.positions #'(1 . 0.5) d32 c b a <g g'>4.-> g'32 a b c |

    \barNumberCheck 35

  <d, d'>4. \tweak Beam.positions #'(1 . 0.5) d32 c b a <g g'>4.-> g'32 a b c |
  <d, d'>4. \tweak Beam.positions #'(1 . 0.5) d32 c bes! a <g g'>4.-> g'32( f e d) |
  \once \override Beam #'gap-count = #3 \once \override Beam #'gap = #2.5 \repeat tremolo 8 { d32 d'^~ } <d, d'>8 r r4\fermata |
}

dynamics = {
  s1\f |
  s1*2 |

    \barNumberCheck 4

  s1\sf\dim |
  s1\mf |
  s1 |

    \barNumberCheck 7

  s1*3 |

    \barNumberCheck 10

  s1*2 |
  s1\f |

    \barNumberCheck 13

  s1*2 |
  s1\sf\dim |
  s1\mf |

    \barNumberCheck 17

  s1*3 |

    \barNumberCheck 20

  s4 s2.\f |
  s1 |
  s1-\tweak X-offset #-0.5 #(make-dynamic-script (markup #:normal-text #:italic "poco allarg.")) |

    \barNumberCheck 23

  s1\f |
  s1*2 |

    \barNumberCheck 26

  s1\sf\dim |
  s1\mf |
  s1 |

    \barNumberCheck 29

  s1\f |
  s1*2 |

    \barNumberCheck 32

  s1*3 |

    \barNumberCheck 35

  s1*2 |
  s2 s8\sf s s4 |
}

music = <<
  \new Staff \with { midiInstrument = "voice oohs" } <<
    \new Voice \global
    \new Voice = "voice" {
      \clef bass
      \autoBeamOff
      \dynamicUp
      \voice
    }
    \new Lyrics \lyricsto "voice" \text
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

\score {
  \music
  \layout {}
}

\score {
  \unfoldRepeats \music
  \midi {}
}