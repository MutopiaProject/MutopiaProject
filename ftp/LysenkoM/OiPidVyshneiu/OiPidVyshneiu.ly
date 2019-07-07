\version "2.18.2"

\layout {
  \context {
    \PianoStaff
    \override DynamicTextSpanner #'dash-period = #-1
  }
}

\midi {
  \tempo 4 = 80
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\paper {
  page-count = #1
  ragged-last-bottom = ##f
}

\header {
  title = "Ой пiд вишнею"
  composer = "Микола Лысенко (1842—1912)"
  poet = "Іван Котляревський (1769—1838)"

  maintainer = "Anonymous"
  mutopiacomposer = "LysenkoN"
  mutopiainstrument = "Voice (Bass), Piano"
  mutopiapoet = "Ivan Kotliarevsky"
  mutopiatitle = "Oi pid vyshneiu [Oh, under a cherry tree] (Natalka Poltavka)"
  license = "Public Domain"
  source = "М. ЛИСЕНКО / НАТАЛКА ПОЛТАВКА / ОПЕРА НА 3 ДІЇ / КЛАВІР / „МИСТЕТЦТВО“ / Київ — 1953"
  style = "Romanticism"
}

dynamize =
#(define-music-function
     (parser location dynamic)
     (markup?)
   #{
     #(make-dynamic-script (markup #:normal-text #:italic dynamic))
   #})

topReset = {
  \change Staff = "upper"
  \stemNeutral
}
bottomReset = {
  \change Staff = "lower"
  \stemNeutral
}
top = {
  \change Staff = "upper"
  \stemDown
}
bottom = {
  \change Staff = "lower"
  \stemUp
}

global = {
  \tempo Andante
  \key f \major
  \time 2/4

  s2*4 \break
  \repeat volta 7 {
    s2*5 \break
    s2*5 \break
    s2*6
  }
}

voice = \relative c {
  \override TextScript #'font-shape = #'italic
  \override DynamicTextSpanner #'style = #'none
  \set melismaBusyProperties = #'()

  R2*4 |

    \barNumberCheck 5

  f8^\markup { poco \dynamic f } f a4 |
  g8[( e)] c4 |
  f8 f a8([ c]) |
  g8([ e]) c4 |
  f8 f^"poco" f g16[( a)] |

    \barNumberCheck 10

  bes8\cresc bes d d\! |
  c8 c c,8^[( d16 e)] |
  f8 f f4 |
  f8 f\cresc f g16[( a)]\! |
  bes16([ a]) bes[( c]) d8 d |

    \barNumberCheck 15

  c8\f c c,8^[( d16 e)] |
  f8 f f4 |

    \barNumberCheck 17

  R2*4 |
}

firstStanza = \lyricmode {
  \set stanza = #"1. "
  Ой пiд виш -- не -- _ ю, пiд че -- реш -- _ не -- _ ю cто -- яв ста -- рий _
  з_мо -- ло -- до -- ю, як iз я -- _ _ го -- до -- ю. Cто -- яв ста -- рий _ з_мо -- _ ло -- _ до -- ю,
  як iз я -- _ _ го -- до -- ю.
}
secondStanza = \lyricmode {
  \set stanza = #"2. "
  I про -- си -- ла -- _ ся, i мо -- ли -- _ ла -- _ ся: „пус -- ти ме -- не, _
  ста -- рий дi -- ду, на ву -- ли -- цю _ по -- гу -- лять. Пус -- ти ме -- не, _ ста -- _ рий _ дi -- ду,
  на ву -- ли -- цю _ по -- гу -- лять.“
}
thirdStanza = \lyricmode {
  \set stanza = #"3. "
  Ой я_й сам не пi -- ду i те -- бе _ не пу -- щу: хо -- чеш ме -- не, _
  ста -- рень -- ко -- го, та по -- ки -- _ _ ну -- _ ти. Хо -- чеш ме -- не, _ ста -- _ рень -- _ ко -- го,
  та по -- ки -- _ _ ну -- _ ти.
}
fourthStanza = \lyricmode {
  \set stanza = #"4. "
  Ой не ки -- дай ме -- не, мо -- я го -- лу -- боч -- _ ко! Ку -- плю то -- бi _
  хат -- _ ку, _ i -- ще_й сi -- но -- _ жат -- _ ку, i ста -- вок, _ _ i _ мли -- _ нок, _
  i виш -- не -- _ _ вий са -- док!
}
fifthStanza = \lyricmode {
  \set stanza = #"5. "
  Ой не хочу хат -- _ ки, а -- нi сi -- но -- жат -- _ ки, нi став -- ка, _ _
  нi млин -- ка, _ нi виш -- не -- во -- _ го сад -- ка. Нi став -- ка, _ _ нi _ млин -- _ ка, _
  нi виш -- не -- во -- _ го сад -- ка.
}
sixthStanza = \lyricmode {
  \set stanza = #"6. "
  Ой ти, старий дi -- ду -- га, i -- зi -- гнув -- ся, як ду -- га, а я, мо -- ло -- _
  день -- _ ка, _ гу -- ля -- ти ра -- _ день -- _ ка. А я, _ мо -- _ ло -- _ день _ ка, _
  гу -- ля -- ти ра -- _ день -- _ ка.
}

%{
Ой пiд вишнею, пiд черешнею
Стояв старий з молодою, як iз ягодою. (2)

I просилася, i молилася:
„Пусти мене, старий дiду, на вулицю погулять“ (2)

„Ой я й сам не пiду i тебе не пущу:
Хочеш мене, старенького, та покинути. (2)

Ой не кидай мене, моя голубочко!
Куплю тобi хатку, iще й сiножатку,
I ставок, i млинок, i вишневий садок!“ (2)

„Ой не хочу хатки, анi сiножатки,
Нi ставка, нi млинка, нi вишневого садка. (2)

Ой ти, старий дiдуга, iзiгнувся, як дуга,
А я, молоденька, гуляти раденька“. (2)
%}

upperRepeatedPart = {
  \stemUp <f f'>8^. <f f'>16^( <e e'>16) |
  <d d'>8^( bes') bes <d, bes' d> \stemNeutral |
  <c a' c>8-. <c c'>-. << { <c, c'>8_>_( <d d'>16 <e e'>) } \\ { <g bes>4 } >> |
}

upper = \relative c'' {
  <a c f>8-. <f' f'>8-. \upperRepeatedPart
  <f f'>8 <a, c> r <a c> |

    \barNumberCheck 5

  r8 <a c f> r <c f a> |
  r8 <c e g> r <c e c'> |
  r8 <c f c'> r <c f a> |
  r8 <c e g> <e c'>16^( bes' a g) |
  f8 <c f a> r <c f c'> |

    \barNumberCheck 10

  r8 <d f bes> r \stemUp <bes' d> \stemNeutral |
  bes8\rest <f a c> bes\rest <bes, c g'> |
  <a c f>8-. a'16( bes) c8-. <c c'>-. |
  f8-. a16 c f8 <f, f'>16( <e e'>) |
  <d d'>16( <c c'> <bes bes'> <a a'>) <bes bes'>8-. <d d'>-. |

    \barNumberCheck 15

  <<
    {
      <c c'>8 <c c'> <c e> <g g'>
    } \\ {
      \new CueVoice {
        \override Script #'font-size = #4
        \override Script #'padding = #0.5
        \override Stem #'length-fraction = #(magstep -0.35)
        c,16_._[ d_. e_. f_.] g_._[ a_. bes_. g_.]
        \revert Script #'font-size
        \revert Script #'padding
        \revert Stem #'length-fraction
      }
    }
  >> |
  <a c f>8-. g16-. a-. bes-. c-. d-. e-. |
  f8 <f f'> \upperRepeatedPart
  <f f'>4 <f a c f> |
}

lower = \relative c {
  <f, f'>8-. <f' a c>-. \top <a c f>8_( g'16 a) |
  <bes, bes'>16_( a' bes c) \tweak Beam.positions #'(-5 . -8) d8 \bottom <bes,, bes'>8 \bottomReset |
  <c c'>8-. <a' c f>-. <c,, c'>_[ <g'' bes c>] |
  <f a c>8 r <f, f'> r |

    \barNumberCheck 5

  << { f'4 a } \\ { f,8 r r4 } >> |
  << { g'8( e c4) } \\ { c8 r r4 } >> |
  << { f8 f a c } \\ { f,,8 r r4 } >> |
  << { g'16( f e d) c4 } \\ { c8 r r4 } >> |
  << { f4( a8 c) } \\ { f,,8 r r4 } >> |

    \barNumberCheck 10

  << { bes'4( \tweak Beam.positions #'(6 . 7.5) d8) \top d \stemNeutral } \\ { bes,8 d\rest d\rest g, } >> |
  << { \top c'4 \bottom c,8 d16 e } \\ { c8 d\rest c,8 r } >> |
  << { f'8 c' } \\ { f,,8 r <a' f'>8 } >> r8 |
  << { f4 a } \\ { <f, f'>8 <a' c f> <a, a'> <a' c f> } >> |
  << { bes4 g } \\ { <bes, bes'>8 <bes' d g> g <bes d> } >> |

    \barNumberCheck 15

  << { c,4 } \\ { c8 <f a c> <c, c'>^[ <e' bes' c>] } >> |
  <f, f'>8-. <bes' d>-.([ <a c>-. <g bes>-.]) |
  f8 <a c> \top <a f'>8_( g'16 a) |
  <bes, bes'>16_( a' bes c) \tweak Beam.positions #'(-6 . -7.5) d8 \bottom <bes,, bes'>8 \bottomReset |
  <c c'>8 <a' c f> <c,, c'> <g'' bes c> |
  <f a c>4 <f, a c f> |
}

dynamics = {
  s4\f s4-\tweak X-offset #-6.5 \dynamize "il basso marcato" |
  s8\< s s s-\tweak X-offset #-1 #(make-dynamic-script "") |
  s2 |
  s8 s8\dim s4\! |
  s4-\tweak X-offset #-1 \dynamize "marcato" s4 |

    \barNumberCheck 6

  s2 |
  s8\< s s s |
  s8\> s s s16 s\! |
  s8-\tweak X-offset #0 \dynamize "un poco" s4. |

    \barNumberCheck 10

  s4\cresc s4\! |
  s4. s16\dim s\! |
  s2 |
  s8\< s s s |

    \barNumberCheck 14

  s8\> s s s\! |
  s2 |
  s4 s8\cresc s8\! |
  s4\f s4-\tweak X-offset #0 \dynamize "marc." |

    \barNumberCheck 18

  s8\< s s s-\tweak X-offset #0 #(make-dynamic-script "") |
  s2*2 |
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
      %\new Lyrics \lyricsto "voice" \fifthStanza
      %\new Lyrics \lyricsto "voice" \sixthStanza
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