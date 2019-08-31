\version "2.18.2"

\layout {
  \context {
    \Score
    \override VerticalAxisGroup.remove-first = ##t
  }
  \context {
    \Staff
    \RemoveEmptyStaves
  }
  \context {
    \PianoStaff
    \override DynamicTextSpanner #'dash-period = #-1
  }
}

\midi {
  \tempo 4 = 155
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  systems-per-page = #5
}

\header {
  title = "Notte e giorno"
  composer = "Wolfgang Amadeus Mozart (1756-1791)"
  arranger = "Natalia MacFarren (1826-1916)"
  poet = "Lorenzo da Ponte (1749-1838)"

  maintainer = "Anonymous"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Voice (Bass), Piano"
  mutopiapoet = "Lorenzo da Ponte"
  mutopiatitle = "Notte e giorno (Don Giovanni)"
  license = "Public Domain"
  source = "Ed. 191 / DON GIOVANNI / An Opera in Two Acts / Libretto by / LORENZO DA PONTE / Music by / W. A. MOZART / VOCAL SCORE / Including Secco Recitatives / English version by / NATALIE MACFARREN / With an Essay on the / story of the Opera by / H. E. KREHBIEL / G. SCHIRMER, Inc., NEW YORK (IMSLP68957-PMLP36804)"
  style = "Classical"
  footer = "Mutopia-2019/07/12-2244"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

dashPlus = "trill"
obFag = \markup { \override #'(baseline-skip . 2) \normal-text \italic \center-column { "Ob." "Fag." } }

global = {
  \tempo "Molto allegro"
  \key f \major
  \time 4/4
  \partial 2

  s2 s1*4 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*4 \break

  \barNumberCheck 24 \pageBreak

  s1*5 \break
  s1*7 \break
  s1*6 \break
  s1*4 \break
  s1*4 \break

  \barNumberCheck 50 \pageBreak

  s1*6 \break
  s1*5 \break
  s1*3 \break
  s1*6 \break
  s1*2 \noBreak s1*2 \break
}

voiceRepeatedPart = \relative c' {
  a2. bes4 |
  c4 bes a g |
  f4 f r2 |
  a2. bes4 |
  c4 bes a g |
  f4 r f a |
  bes,2 d |
  c2 e |
  f8 r a r c r a r |
  f8 r c r bes r c4 |
  bes2 d |
  c2. d8([ e]) |
  f4
}

voice = \relative c {
  r2 |
  R1*9 |

    \barNumberCheck 10

  r2\fermata f4^"(wrapt in a dark mantle, impatiently pacing to and fro before the steps to the palace)" c |
  f4 c f c |
  f4 r \repeat unfold 3 { g4 c, }
  g'4 r \repeat unfold 3 { a4 f }
  a4 r \repeat unfold 3 { bes4 g }

    \barNumberCheck 18

  bes1 ~ |
  bes4 r r2\fermata |
  \voiceRepeatedPart r4 r2 |
  R1 |

    \barNumberCheck 34

  r2 a4^"(facing the palace)" c |
  c8([ bes]) a([ g]) g4 g |
  f4 f r2 |
  R1 |

    \barNumberCheck 38

  r2 a4 c |
  c8([ bes]) a([ g]) g4. a8 |
  f4 f f f |
  e4. e8 d4. d8 |

    \barNumberCheck 42

  c4 c8 c d4. e8 |
  c4 c8 c d4.\fermata e8 |
  c4 c r2\fermata |
  \voiceRepeatedPart r4 r f8 f |

    \barNumberCheck 58

  f4 r r8 f8 f f |
  f4 f r f8 f |
  f4 r r8 f8 f f |
  \repeat unfold 16 f8 |

    \barNumberCheck 63

  f4 r f a |
  bes,2 d |
  c2 e |
  f8 r a r c r a r |

    \barNumberCheck 67

  f8 r c r bes r c4 |
  bes2 d |
  c2. d8([ e]) |
  f4 r r2^"(Hides himself.)" |

    \barNumberCheck 71

  R1*3 |
}

italianLyrics = \lyricmode {
  Not -- te~e gior -- no fa -- ti -- car per chi nul -- la sa gra -- dir; pio -- va~e
  ven -- to sop -- por -- tar, man -- giar ma -- le~e mal dor -- mir! __
  Vo -- glio far il gen -- til -- uo -- mo, e non
  vo -- glio più ser -- vir, e non vo -- glio più ser -- vir, no, no, no,
  no, no, no, non, vo -- glio più ser -- vir.
  Oh che ca -- ro ga -- lant --
  uo -- mo!
  Voi star den -- tro col -- la bel -- la, ed io far la sen -- ti --
  nel -- la, la sen -- ti -- nel -- la, la sen -- ti -- nel -- la! Vo -- glio
  far il gen -- til -- uo -- mo, e non vo -- glio più ser --
  vir, e non vo -- glio più ser -- vir, no, no, no, no, no, no, non, vo -- glio
  più ser -- vir. Ma mi par, che ven -- ga gen -- te; ma mi par, che ven -- ga
  gen -- te; non mi vog -- lio far sen -- tir, ah non mi vog -- lio far sen -- tir, non mi
  vog -- lio far sen -- tir, no, no, no, no, no, non mi vog -- lio far sen --
  tir!
}

englishLyrics = \lyricmode {
  Rest I've none by night or day, Scant -- y fare and doubt -- ful pay, Ev' -- ry
  whim I must ful -- fil; Take my place who -- ev -- er will! __
  I my -- self will go a -- court -- ing, I the
  gen -- tle -- man will play, But with him no more I'll stay, No, no, no,
  no, no, but with him no more I'll __ stay. Gail -- y he __ with __ in is
  spor -- ting, I must keep of all in -- tru -- sion, For his lord -- ship needs se --
  clu -- sion, he needs se -- clu -- sion, he needs se -- clu -- sion. I my --
  self will go a -- court -- ing, I the gen -- tle -- man will
  play, But with him no more I'll stay, No, no, no, no, no, but with him no
  more I'll stay. Hark, I think I hear him com -- ing, I'll keep safe out of his
  way, here I'll keep safe out of his way, here I'll keep safe out of his way, But with
  him no more I'll stay. No, no, no, no, no, but with him no more I'll
  stay.
}

%{
Notte e giorno faticar,
Per chi nulla sa gradir,
Piova e vento sopportar,
Mangiar male e mal dormir.
Voglio far il gentiluomo
E non voglio più servir.
Oh che caro galantuomo!
Vuol star dentro colla bella,
Ed io far la sentinella!
Voglio far il gentiluomo
E non voglio più servir.
Ma mi par che venga gente;
Non mi voglio far sentir.
%}

%{
Rest I've none by night or day,
Scanty fare and doubtful pay,
Ev'ry whim I must fulfil;
Take my place whoever will!
I myself will go acourting,
I the gentleman will play,
But with him no more I'll stay,
No, no, but with him no more I'll stay.
Gaily he within is sporting,
I must keep off all intrusion,
For his lordship needs seclusion.
Hark, I think, I hear him coming,
I'll keep safe out of his way.
%}

upperRepeatedPart = \relative c' {
    \override TupletNumber #'stencil = ##f
  \repeat unfold 3 { \times 2/3 { a'8 f c } }
  \times 2/3 { bes'8 g c, }
  \times 2/3 { c'8 a c, }
  \times 2/3 { bes'8 g c, }
  \times 2/3 { a'8 f c }
  \times 2/3 { g'8 e c }
    \revert TupletNumber #'stencil
}

lowerRepeatedPart = \relative c {
   <<
    {
      d'2(
      c4) c4\rest bes4. c16 d
      a4 s s2
    }
  \\
    {
      f(
      f2) f(
      f4) d\rest d2\rest
    }
  >>
}

upper = \relative c' {
  \tupletDown
  f8 r c r |
  f8 r c r f4 r8 \times 2/3 { c16^"Ob."( d e } |
  f4) r g8 r c, r |
  g'8 r c, r g'4 r8 c,32^"Ob."( d e f |
  g4) r a8 r f r |

    \barNumberCheck 5

  a8 r f8 r a4 r8 f16( g |
  a4) r bes8 r g r |
  bes8 r g r bes4 r8 \slurDown g16^"Vlns."( a |
  bes4) \slurNeutral r8 bes32( c d e64 f g4) r8 e32( f g a |

    \barNumberCheck 9

  bes8) a16( g f e d c bes8) a16( g f e d c |
  bes2\fermata) f'8 r c r |
  f8 r c r f4 r8 \times 2/3 { c16( d e } |
  f4) r g8 r c, r |

    \barNumberCheck 13

  g'8 r c, r g'4 r8 c,32( d e f |
  g4) r a8 r f r |
  a8 r f8 r a4 r8 f16( g |
  a4) r bes8 r g r |
    \tupletNeutral

    \barNumberCheck 17

  bes8 r g r bes4 r8 e32( f g a |
  bes8) a16( g f e d c bes8) a16( g f e d c
  bes4) r4 r2\fermata
  \upperRepeatedPart

    \barNumberCheck 22
  <c'' a>32^\tweak X-offset #-5.75 #(make-dynamic-script obFag) ( <bes g> <a f>8.) <a f>8 <a f> <a f>-+( g16 a <bes g>8) <g e>8 |
  \upperRepeatedPart

    \barNumberCheck 25

  f,4 r f( a) |
  r4 bes, r4 d |
  r4 c r4 e |
  f8 r a8 r c8 r a8 r |

    \barNumberCheck 29

  f8 r c8 r a4( c) |
  r4 bes r4 d |
  r4 c r4 c |
  f4 r bes4. ( c16 bes |

    \barNumberCheck 33

  a8) r f8 r d'4.( e16 f |
  c4) r r2 |
  \set doubleSlurs = ##t <e, c bes>1(_~ |
  <f c a>4) r bes4.( c16 bes |

    \barNumberCheck 37

  a8) r f8 r d'4.( e16 f |
  c4) r r2 |
  <e, c bes>1 |
  r4 <f c a>4 r <f d a>4 |

    \barNumberCheck 41

  r4 <e c g>4 \clef bass r4 <d b f>4 |
  r4 <c g e>4 r <d b g f>4 |
  r4 <c g e>4 <d b g f>4 r\fermata |
  <c g e>4 r r2\fermata |

    \barNumberCheck 45

  \clef treble \upperRepeatedPart |
  <c'' a>32( <bes g> <a f>8.) <a f>8 <a f> <a f>-+( g16 a <bes g>8) <g e>8 |
  \upperRepeatedPart |

    \barNumberCheck 50

  f,4 r f( a) |
  r4 bes, r4 d |
  r4 c r4 e |
  f8 r <a' a,>8 r <c c,>8 r <a a,>8 r |

    \barNumberCheck 54

  <f f,>8 r <c c,>8 r <a a,>4( <c c,>4) |
  r4 <bes bes,>4 r <d d,>4 |
  r4 <c c,> r4 <c c,> |
  r4 <f, c>8 <f c> <f d>4 <bes' d,>8 <bes d,> |

    \barNumberCheck 58

  \repeat unfold 3 { <a c,>4 <f, c>8 <f c> <f d>4 <bes' d,>8 <bes d,> } |
  <a c,>8 <c, a> <d bes>8 <d bes> <c a>8 <c a> <d bes>8 <d bes> |
  <c a>8 <c' a> <d bes>8 <d bes> <c a>8 <c a> <d bes>8 <d bes> |
  <c a>4 r <f, f,>4( <a a,>) |

    \barNumberCheck 64

  r4 <bes, bes,> r <d d,> |
  r4 <c c,> r <e e,> |
  f,8 f' a, a' c,8 c' a, a' |
  f,8 f' c, c' <a a,>4( <c c,>) |

    \barNumberCheck 68

  r4 <bes bes,> r <d d,> |
  r4 <c c,> r <c c,> |
  <f, c>16^"Tutti." a, \repeat unfold 5 { <f' c>16 a, } <g' e>16 bes, <g' e>16 bes, |
  <a' f ees>16 c, <a' f ees> c, <bes' f>16 d, <bes' f> d, <c' a>16 f, <c' a> f, <d' bes>16 f, <d' bes> f, |

    \barNumberCheck 72

  <ees' c>16 f, <ees' c> f, <f' d>16 f, <f' d> f, <g' ees>16 f, <g' ees> f, <a' f ees>16 c, <a' f ees> c, |
  bes'8 f d f bes4 r4 |
}

lower = \relative c {
  \tupletUp
  \override TupletNumber #'Y-offset = #1.95

  f8_"Strings & Fag." r c r |
  f8 r c r f4 r8 \times 2/3 { c16( d e } |
  f4) r g8_"Strings & Fag." r c, r |
  g'8 r c, r g'4 r8 c,32( d e f |
  g4) r a8 r f r |

    \barNumberCheck 5

  a8 r f8 r a4 r8 f16( g |
  a4) r bes8 r g r |
  bes8 r g r bes4 r |
  <bes g>4 r <bes g e>4 r |

    \barNumberCheck 9

  \repeat unfold 2 { <g e c>4 r } |
  <g e c>2\fermata f8 r c r |
  f8 r c r f4 r8 \times 2/3 { c16( d e } |
  f4) r g8 r c, r |

    \barNumberCheck 13

  g'8 r c, r g'4 r8 c,32( d e f |
  g4) r a8 r f r |
  a8 r f8 r a4 r8 f16( g |
  a4) r bes8 r g r |

    \barNumberCheck 17

  bes8 r g r bes4 r |
  \repeat unfold 3 { <g e c>4 r } r2\fermata |
  <f f,>4 r r2 |

    \barNumberCheck 21

  R1 |
  <f f,>4 <a a,> <c c,> <c, c,> |
  <f f,>4 r4 r2 |
  r2 r4 <bes c,>4 |

    \barNumberCheck 25

  <a f>4 r4 f4( a) |
  bes,4 r d4 r |
  c4 r e4 r |
  f4 r r2 |

    \barNumberCheck 29

  r2 a,4( c) |
  bes4 r d4 r |
  << { <a' f>2 <g e>2 } \\ { c,4 r c4 g4\rest } >> |
  f'2 \lowerRepeatedPart |

    \barNumberCheck 35

  c1 |
  <f f,>4 r \lowerRepeatedPart |
  c1 |
  <f f,>4 r f,4 r |

    \barNumberCheck 41

  g4 r g4 r |
  <c c,>4 r g4 r |
  <c c,>4 r <g g,>4 r\fermata |
  <c c,>4 r r2\fermata |

    \barNumberCheck 45

  <f f,>4 r r2 |
  R1 |
  <f f,>4 <a a,> <c c,> <c, c,> |
  <f f,>4 r r2 |

    \barNumberCheck 49

  R1 |
  f4 r f4( a) |
  bes,4 r d4 r |
  c4 r e4 r |

    \barNumberCheck 53

  f4 r r2 |
  r2 a,4( c) |
  bes4 r d4 r |
  << { <a' f>2 <g e>2 } \\ { c,4 r c4 g4\rest } >> |

    \barNumberCheck 57

  <a' f>4 <a f>8 <a f> bes4 <f' bes,>8 <f bes,> |
  \repeat unfold 3 { <f f,>4 <a, f>8 <a f> bes4 <f' bes,>8 <f bes,> } |
  << { f4 } \\ { \repeat unfold 2 { f,8 f bes8 bes } } >> |
  f8 <f' f,> <f bes,>8 <f bes,> <f f,>8 <f f,> <f bes,>8 <f bes,> |
  <f f,>4 r f,4( a) |

    \barNumberCheck 64

  bes,4 r d r |
  c4 r e r |
  f4 r r2 |
  r2 a,4( c) |

    \barNumberCheck 68

  bes4 r d r |
  << { <a' f>2 <g e>2 } \\ { c,4 r c4 g4\rest } >> |
  \repeat unfold 12 { f8 f' } |
  \repeat tremolo 4 { <f d bes>16 bes } <bes f d bes>4 r |
}

dynamics = {
  s8\p s4. |
  s2. s8\f s8 |
  s2 s8\p s4. |
  s2. s8\f s8 |
  s2 s8\p s4. |

    \barNumberCheck 5

  s2.. s16\f s16 |
  s2 s8\p s4. |
  s2.. s16\f s16 |
  s1 |

    \barNumberCheck 9

  s1 |
  s2 s8\p s4. |
  s2. s8\f s8 |
  s2 s8\p s4. |

    \barNumberCheck 13

  s2. s8\f s8 |
  s2 s8\p s4. |
  s2.. s16\f s16 |
  s2 s8\p s4. |

    \barNumberCheck 17

  s2.. s16\p s16 |
  s2 s8\f s4. |
  s1 |
  s4\fp s2. |

    \barNumberCheck 21

  s1 |
  s4\f s2. |
  s4-\tweak X-offset #-0.5 \fp s2. |
  s1 |

    \barNumberCheck 25

  s4\p s2. |
  s1*6 |
  s4 s4\sf s4. s16\p s |
  s4. s8\sf s4. s16\p s |

    \barNumberCheck 34

  s1*2 |
  s4 s4\sf s4. s16\p s |
  s4. s8\sf s4. s16\p s |
  s1*7 |

    \barNumberCheck 45

  s4\fp s2. |
  s1 |
  s4\f s2. |
  s4-\tweak X-offset #-0.5 \fp s2. |

    \barNumberCheck 49

  s1*12 |
  s4 s8\cresc s8 s2 |
  s8\f s2.. |
  s2 s4\p s4 |

    \barNumberCheck 64

  s1*7 |
  s2 s4\cresc s4 |
  s1 |
  s4\f s2. |
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
    \new Lyrics \lyricsto "voice" \italianLyrics
    \new Lyrics \lyricsto "voice" \englishLyrics
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