\version "2.16.1"

\header {
	title = "Duetto II"
	subtitle = "from the Clavierübung Part III"
	composer = "J.S.Bach (1685-1750)"
	opus = "BWV 803"

	mutopiatitle = "Duetto II (from the Clavierübung Part III)"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 803"
	mutopiainstrument = "Harpsichord, Organ, Piano"
	date = "?"
	source = "Edition Peters"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Vit Reichel"
	maintainerEmail = "vit.reichel@volny.cz"
	maintainerWeb = "http://www.volny.cz/respiro"

 footer = "Mutopia-2013/03/22-360"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\layout {
  \context {
    % This vertical spacing override is needed to make space for an
    % appropriate beam sloping in bar 112
    \Staff
    \override VerticalAxisGroup #'staff-staff-spacing =
      #'((basic-distance . 12)
         (padding . 2)
         (minimum-distance . 8))
  }
}

One =  {
\key f \major  \time 2/4 \clef  violin
\set Staff.midiInstrument = "harpsichord"

% Bar 1
  f'4 a'

% Bar 2
  c''4. bes'16 a'

% Bar 3
  bes'8 c'' d'' e''

% Bar 4
  f''8 c'' f'' a''

% Bar 5
  g''16 f'' e'' d'' c'' bes' a' g'

% Bar 6
  a'16 c'' f' a' d''4~

% Bar 7
  d''8 c''16\prall b' c'' e'' d'' f''

% Bar 8
  e''16 d'' c'' b' a' c'' g' c''

% Bar 9
  f'16 e'' d'' c'' b' d'' g' b'

% Bar 10
  c''4~ c''16 e'' a' c''

% Bar 11
  f'4~ f'16 a' d' f'

% Bar 12
  bes'4~ bes'16 d'' g' bes'

% Bar 13
  e'4~ e'16 g' c' e'

% Bar 14
  a'16 c'' f' a' d' f' bes d'

% Bar 15
  g'16 bes' e' g' c' e' a c'

% Bar 16
  f'16 a' d' f' bes' d'' g' bes'

% Bar 17
  c'4 e'

% Bar 18
  f'4. f'16 e'

% Bar 19
  f'8 g' a' bes'

% Bar 20
  c''8 f' bes' d''

% Bar 21
  c''16 bes' a' g' f' ees' d' c'

% Bar 22
  d'16 bes f' d' bes'4~

% Bar 23
  bes'16 d'' g' bes' e'4~

% Bar 24
  e'16 c' g' e' c''4~

% Bar 25
  c''16 e'' a' c'' f'4~

% Bar 26
  f'16 d' a' f' d'' a' f'' d''

% Bar 27
  bes'16 g' d'' bes' g'' d'' bes'' g''

% Bar 28
  e''16 c'' g'' e'' bes'' g'' e'' c'''

% Bar 29
  a''16 c''' f'' a'' c'' f'' ees'' d''

% Bar 30
  ees''16 g'' c'' ees'' a' ees'' d'' c''

% Bar 31
  d''16 bes' e'' bes' f'' bes' g'' bes'

% Bar 32
  a'16 g'' f'' e'' d'' f'' c'' f''

% Bar 33
  bes'16 a'' g'' f'' e'' g'' c'' e''

% Bar 34
  f''16 c'' a'' f'' c'' a' f'' c''

% Bar 35
  a'16 f' c'' a' f' c' a' f'

% Bar 36
  c'4 g''\downmordent

% Bar 37
  f''4 r8 a'(

% Bar 38
  bes'8 cis'') d''4~

% Bar 39
  d''16 cis'' d'' e'' f''4~

% Bar 40
  f''8 ees''16 d'' ees''8 fis'

% Bar 41
  g'4 r8 f'(

% Bar 42
  gis'8 a'~ a') g'16 fis'

% Bar 43
  g'8 e''16 g' f' e' d' f'

% Bar 44
  e'8 a' d''16\prall cis'' d''8~

% Bar 45
  d''8 cis''16 b' a' g' f' e'

% Bar 46
  d'4 f'

% Bar 47
  a'4. g'16 f'

% Bar 48
  g'8 a' b' cis''

% Bar 49
  d''4. cis''16 b'

% Bar 50
  cis''8 d'' e'' f''

% Bar 51
  \appoggiatura a'' g''8 f''16 e'' f''8 d''

% Bar 52
  e''4\mordent cis''\downmordent

% Bar 53
  d''8 b'( c'' dis''

% Bar 54
  e''4~ e''16) dis'' e'' fis''

% Bar 55
  g''4. f''16 e''

% Bar 56
  f''8 gis' a'4

% Bar 57
  r8 g'( ais' b'~

% Bar 58
  b'8) a'16 gis' a'8 fis''16 a'

% Bar 59
  g'16 fis' e' g' fis'8 dis''

% Bar 60
  e''16\prall dis'' e''8 r4

% Bar 61
  r4 e'

% Bar 62
  gis'4 b'~

% Bar 63
  b'8 a'16 gis' a'8 b'

% Bar 64
  c''8 d'' e''4~

% Bar 65
  e''8 d''16 c'' d''8 e''

% Bar 66
  fis''8 gis'' a''4~

% Bar 67
  a''8 gis''16 fis'' e'' d'' c'' b'

% Bar 68
  a'4~ a'16 e' c'' a'

% Bar 69
  f''16 c'' a'' f'' c'''8 f''

% Bar 70
  e''8 ees'' d'' des''~

% Bar 71
  des''8 c'' b' bes'

% Bar 72
  a'16 g' f' g' a' bes' c'' d''

% Bar 73
  e''16 d'' c'' d'' e'' f'' g''8

% Bar 74
  c''4 aes'

% Bar 75
  f'4. g'16 aes'

% Bar 76
  g'8 f' ees' des'

% Bar 77
  c'8 f' c' aes

% Bar 78
  bes16 c' des' ees' f' g' aes' bes'

% Bar 79
  g'16 f' e' f' g' aes' bes' c''

% Bar 80
  aes'16 g' f' g' aes' bes' c'' des''

% Bar 81
  e'16 des'' c'' bes' aes' g' f' e'

% Bar 82
  f'8 g'( aes' b')

% Bar 83
  c''4~ c''16 b' c'' d''

% Bar 84
  ees''4. des''16 c''

% Bar 85
  des''8 e' f'4

% Bar 86
  r8 ees'( fis' g'~

% Bar 87
  g'8) f'16 e' f'8 d''16 f'

% Bar 88
  ees'16 d' c' ees' d'8 b'

% Bar 89
  c''16\prall b' c''8 r4

% Bar 90
  r4 c'

% Bar 91
  e'4 g'~

% Bar 92
  g'8 f'16 e' f'8 g'

% Bar 93
  aes'8 bes' c''4~

% Bar 94
  c''8 bes'16 aes' bes'8 c''

% Bar 95
  d''8 e'' f''4~

% Bar 96
  f''8 e''16 d'' c'' bes' aes' g'

% Bar 97
  aes'8( b' c''4~

% Bar 98
  c''16) b' c'' d'' ees''4~

% Bar 99
  ees''8 des''16 c'' des''8 e'

% Bar 100
  f'4 r8 ees'(

% Bar 101
  fis'8 g'~ g') f'16 e'

% Bar 102
  f'8 d''16 f' ees' d' c' ees'

% Bar 103
  d'8 g' c''16\prall b' c''8~

% Bar 104
  c''8 b'16 a' g' f' ees' d'

% Bar 105
  c'4 ees'

% Bar 106
  g'4. f'16 ees'

% Bar 107
  f'8 g' a' b'

% Bar 108
  c''4. b'16 a'

% Bar 109
  b'8 c'' d'' ees''

% Bar 110
  \appoggiatura g'' f''8 ees''16 d'' ees''8 c''

% Bar 111
  d''4\mordent b'\turn

% Bar 112
  c''4 c''4\rest

% Bar 113
  f'4 a'

% Bar 114
  c''4. bes'16 a'

% Bar 115
  bes'8 c'' d'' e''

% Bar 116
  f''8 c'' f'' a''

% Bar 117
  g''16 f'' e'' d'' c'' bes' a' g'

% Bar 118
  a'16 c'' f' a' d''4~

% Bar 119
  d''8 c''16\prall b' c'' e'' d'' f''

% Bar 120
  e''16 d'' c'' b' a' c'' g' c''

% Bar 121
  f'16 e'' d'' c'' b' d'' g' b'

% Bar 122
  c''4~ c''16 e'' a' c''

% Bar 123
  f'4~ f'16 a' d' f'

% Bar 124
  bes'4~ bes'16 d'' g' bes'

% Bar 125
  e'4~ e'16 g' c' e'

% Bar 126
  a'16 c'' f' a' d' f' bes d'

% Bar 127
  g'16 bes' e' g' c' e' a c'

% Bar 128
  f'16 a' d' f' bes' d'' g' bes'

% Bar 129
  c'4 e'

% Bar 130
  f'4. f'16 e'

% Bar 131
  f'8 g' a' bes'

% Bar 132
  c''8 f' bes' d''

% Bar 133
  c''16 bes' a' g' f' ees' d' c'

% Bar 134
  d'16 bes f' d' bes'4~

% Bar 135
  bes'16 d'' g' bes' e'4~

% Bar 136
  e'16 c' g' e' c''4~

% Bar 137
  c''16 e'' a' c'' f'4~

% Bar 138
  f'16 d' a' f' d'' a' f'' d''

% Bar 139
  bes'16 g' d'' bes' g'' d'' bes'' g''

% Bar 140
  e''16 c'' g'' e'' bes'' g'' e'' c'''

% Bar 141
  a''16 c''' f'' a'' c'' f'' ees'' d''

% Bar 142
  ees''16 g'' c'' ees'' a' ees'' d'' c''

% Bar 143
  d''16 bes' e'' bes' f'' bes' g'' bes'

% Bar 144
  a'16 g'' f'' e'' d'' f'' c'' f''

% Bar 145
  bes'16 a'' g'' f'' e'' g'' c'' e''

% Bar 146
  f''16 c'' a'' f'' c'' a' f'' c''

% Bar 147
  a'16 f' c'' a' f' c' a' f'

% Bar 148
  c'4 g''\downmordent

% Bar 149
  f''4\fermata r \bar "|."
}

Two =  {
\key f \major  \time 2/4 \clef bass
\set Staff.midiInstrument = "harpsichord"

% Bar 1 - 4
  R2*4

% Bar 5
  c4 e

% Bar 6
  f4. f16 e

% Bar 7
  f8 g a b

% Bar 8
  c'8 g c' e'

% Bar 9
  d'16 c' b a g f e d

% Bar 10
  e16 g c e a4~

% Bar 11
  a16 c' f a d4~

% Bar 12
  d16 f bes, d g4~

% Bar 13
  g16 bes e g c4~

% Bar 14
  c16 e a, c f a d f

% Bar 15
  bes,16 d g, bes, e g c e

% Bar 16
  a,16 c f, a, d f bes, d

% Bar 17
  e16 g c e g bes e g

% Bar 18
  a16 c' f a d'4~

% Bar 19
  d'8 c'16 bes c' ees' d' f'

% Bar 20
  ees'16 d' ees' c' d' f' bes d'

% Bar 21
  ees16 d' c' bes a c' f a

% Bar 22
  bes,4~ bes,16 g, d bes,

% Bar 23
  g4~ g16 bes e g

% Bar 24
  c4~ c16 a, e c

% Bar 25
  a4~ a16 c' f a

% Bar 26
  d4~ d16 f d f

% Bar 27
  g16 bes d g bes, d g, bes,

% Bar 28
  c16 e g, c e, g, c, e,

% Bar 29
  f,4 a,

% Bar 30
  c4. bes,16 a,

% Bar 31
  bes,8 c d e

% Bar 32
  f8 c f a

% Bar 33
  g16 f e d c bes, a, g,

% Bar 34
  a,16 c f, a, c f a, c

% Bar 35
  f16 a c f a c' f a

% Bar 36
  c'4 c

% Bar 37
  f16 c a, c f,8 r

% Bar 38
  r8 e( f gis)

% Bar 39
  a4~ a16 gis a b

% Bar 40
  c'4. bes16 a

% Bar 41
  bes8 cis d4

% Bar 42
  r8 c( dis e~

% Bar 43
  e8) d16 cis d8 b16 d

% Bar 44
  c16 b, a, c b,8 e

% Bar 45
  a16\prall gis a8 r4

% Bar 46
  r4 a,

% Bar 47
  cis4 e~

% Bar 48
  e8 d16 cis d8 e

% Bar 49
  f8 g a4~

% Bar 50
  a8 g16 f g8 a

% Bar 51
  b8 cis' d' bes

% Bar 52
  \appoggiatura a g8 f16 g a8 e(

% Bar 53
  f8 gis a4~

% Bar 54
  a16) gis a b c'4~

% Bar 55
  c'8 bes16 a bes8 cis

% Bar 56
  d4 r8 c(

% Bar 57
  dis8 e4) d16 cis

% Bar 58
  d8 b16 d c b, a, c

% Bar 59
  b,8 e a16\prall gis a8~

% Bar 60
  a8 gis16 fis e d c b,

% Bar 61
  a,4 c

% Bar 62
  e4. d16 c

% Bar 63
  d8 e fis gis

% Bar 64
  a4. gis16 fis

% Bar 65
  gis8 a b c'

% Bar 66
  \appoggiatura e' d'8 c'16 b c'8 f'

% Bar 67
  d'8 b e' e

% Bar 68
  a16 c' e a c e a, c

% Bar 69
  f,4 a,

% Bar 70
  c4. bes,16 a,

% Bar 71
  bes,8 c d e

% Bar 72
  f8 c f a

% Bar 73
  g16 f e d c bes, a, g,

% Bar 74
  aes,16 c f, aes, c,8 c

% Bar 75
  des8 d ees e~

% Bar 76
  e8 f ges g

% Bar 77
  aes16 bes c' bes aes g f ees

% Bar 78
  des16 ees f ees des c bes,8

% Bar 79
  e16 f g f e d c8

% Bar 80
  f16 g aes g f ees des8

% Bar 81
  c8 c, r c(

% Bar 82
  des8 e) f4~

% Bar 83
  f16 e f g aes4~

% Bar 84
  aes8 ges16 f ges8 a,

% Bar 85
  bes,4. aes,8(

% Bar 86
  b,8 c4) bes,16 a,

% Bar 87
  bes,8 g16 bes, aes, g, f, aes,

% Bar 88
  g,8 c f16\prall e f8~

% Bar 89
  f8 e16 d c bes, aes, g,

% Bar 90
  f,4 aes,

% Bar 91
  c4. bes,16 aes,

% Bar 92
  bes,8 c d e

% Bar 93
  f4. e16 d

% Bar 94
  e8 f g aes

% Bar 95
  \appoggiatura c' bes8 aes16 g aes8 des'

% Bar 96
  bes8 g c' c

% Bar 97
  f8 d( ees fis)

% Bar 98
  g4~ g16 fis g a

% Bar 99
  bes4. aes16 g

% Bar 100
  aes8 b, c4

% Bar 101
  r8 bes,( cis d~

% Bar 102
  d8) c16 b, c8 a16 c

% Bar 103
  bes,16 a, g, bes, a,8 d

% Bar 104
  g16\prall fis g8 r4

% Bar 105
  r4 g,

% Bar 106
  b,4 d~

% Bar 107
  d8 c16 b, c8 d

% Bar 108
  ees8 f g4~

% Bar 109
  g8 f16 ees f8 g

% Bar 110
  a8 b c' aes

% Bar 111
  \appoggiatura g f8 ees16 f g8 g,

% Bar 112
  c16 \change Staff=up a' g' f' \stemDown e' \change Staff=down \stemUp d' c' bes

% Bar 113
  \stemNeutral a16 f' e' d' c' bes a g

% Bar 114
  f16 bes a g f ees d c

% Bar 115
  d16 f e d c bes, a, g,

% Bar 116
  a,8 f, r4

% Bar 117
  c4 e

% Bar 118
  f4. f16 e

% Bar 119
  f8 g a b

% Bar 120
  c'8 g c' e'

% Bar 121
  d'16 c' b a g f e d

% Bar 122
  e16 g c e a4~

% Bar 123
  a16 c' f a d4~

% Bar 124
  d16 f bes, d g4~

% Bar 125
  g16 bes e g c4~

% Bar 126
  c16 e a, c f a d f

% Bar 127
  bes,16 d g, bes, e g c e

% Bar 128
  a,16 c f, a, d f bes, d

% Bar 129
  e16 g c e g bes e g

% Bar 130
  a16 c' f a d'4~

% Bar 131
  d'8 c'16 bes c' ees' d' f'

% Bar 132
  ees'16 d' ees' c' d' f' bes d'

% Bar 133
  ees16 d' c' bes a c' f a

% Bar 134
  bes,4~ bes,16 g, d bes,

% Bar 135
  g4~ g16 bes e g

% Bar 136
  c4~ c16 a, e c

% Bar 137
  a4~ a16 c' f a

% Bar 138
  d4~ d16 f d f

% Bar 139
  g16 bes d g bes, d g, bes,

% Bar 140
  c16 e g, c e, g, c, e,

% Bar 141
  f,4 a,

% Bar 142
  c4. bes,16 a,

% Bar 143
  bes,8 c d e

% Bar 144
  f8 c f a

% Bar 145
  g16 f e d c bes, a, g,

% Bar 146
  a,16 c f, a, c f a, c

% Bar 147
  f16 a c f a c' f a

% Bar 148
  c'4 c

% Bar 149
  f4\fermata r \bar "|."

}

\score { <<
	\context PianoStaff <<
		\context Staff = "up" <<
			\One
		>>
		\context Staff = "down" <<
			\Two
		>>
	>>
>>


  \midi {
    \tempo 4 = 106
    }


\layout { }

}
