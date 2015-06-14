\version "2.18.2"
\language "english"

\header {
  title = "Troldtog"
  subtitle = "Zuge der Zwerge"
  subsubtitle = "March of the Dwarfs"
  composer = "Edvard Grieg (1843-1907)"
  opus = "Op. 54, No. 3"
  license = "Public Domain"
  mutopiatitle = "Troldtog (March of the Dwarfs)"
  mutopiacomposer = "GriegE"
  mutopiaopus = "Op. 54, No. 3"
  mutopiainstrument = "Piano"
  source = "C.F. Peters, n.d.(ca.1891)"
  style = "Romantic"
  license = "Public Domain"
  maintainer = "Anonymous"
  maintainerEmail = "beybladepiano@gmail.com"
  moreInfo = "Changed a few 'molto cresc.' and one 'dim.' for easier reading."

 footer = "Mutopia-2015/06/14-2014"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

global = {
  \key d \minor
  \numericTimeSignature
  \time 2/4
  \tempo "Allegro moderato"
}

right = \relative c' {
  \global
  % Music follows here.
  R2 | \noBreak %m1
  r4 r8 d32( e f g | \noBreak %m2
  a8\staccato) <d, f d'>\staccato <d f d'>\staccato <d f cs'>\staccato | \noBreak %m3
  <d f cs'>8\staccato <d f c'>\staccato <d f c'>\staccato <d f b>\staccato | \noBreak %m4
  <d f b>8\staccato <d f bf>\staccato <d f bf>\staccato <d f a>\staccato | \noBreak %m5
  <b e gs>8\staccato <b e gs>4\tenuto g'32( a bf c | \break %m6
  d8\staccato) <g, bf g'>\staccato <g bf g'>\staccato <g bf fs'>\staccato | \noBreak %m7
  <g bf fs'>8\staccato <g bf f'>\staccato <g bf f'>\staccato <g bf e>\staccato | \noBreak %m8
  <g bf e>8\staccato <g bf ef>\staccato <g bf ef>\staccato <g bf d>\staccato | \noBreak %m9
  <e a cs>8\staccato <e a cs>4\tenuto r8 | \noBreak %m10
  d'32\accent( e f g a8\staccato) g32\accent( f e d c8\staccato) | \noBreak %m11
  bf32\accent( c d e f8\staccato) e32\accent( d c bf a8\staccato) | \break %m12
  g32\accent(^[ a bf c d8\staccato)] c32\accent( bf a g f8\staccato) | \noBreak %m13
  r8 <a, e'>4.^\tenuto | \noBreak %m14
  d''32\accent( c bf a g8\staccato) d32\accent( c bf a g8\staccato) | \noBreak %m15
  r8 <a, e'>4.^\tenuto | \noBreak %m16
  d''32\accent( c bf a g8\staccato) d32\accent( c bf a g8\staccato) | \break %m17
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m18
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m19
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m20
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m21
  r8 <a, cs e>8\staccato r <bf cs e>\staccato | \noBreak %m22
  \set crescendoText = \markup { \italic { a poco } }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner.style = #'dashed-line
  r8_\markup{\italic "cresc. poco"} <gs cs e>\staccato r <a cs e>\staccato | \break %m23
  r8\< <bf cs e>\staccato r <b cs e>\staccato | \noBreak %m24
  r8 <c! cs e>^\staccato  r <b cs e>^\staccato | \noBreak %m25
  r8 <bf cs e>\staccato r <a cs e>\staccato | \noBreak %m26
  r8 \clef bass <gs cs e>\staccato r <g bf cs>\staccato | \noBreak %m27
  \crescHairpin r8 <fs bf cs>\staccato r <f bf cs>8\staccato | \noBreak %m28
  r8\!_\markup{\italic "molto cresc."} <e a cs> r <ef g a cs> | \break %m29
  R2 \clef treble| \noBreak %m30
  r4 r8 d''32( e f g | \noBreak %m31
  a8\staccato) <d, f d'>\staccato <d f d'>\staccato <d f cs'>\staccato | \noBreak %m32
  <d f cs'>8\staccato <d f c'>\staccato <d f c'>\staccato <d f b>\staccato | \noBreak %m33
  <d f b>8\staccato <d f bf>\staccato <d f bf>\staccato <d f a>\staccato | \noBreak %m34
  <b e gs>8\staccato <b e gs>4\tenuto g'32( a bf c | \break %m35
  d8\staccato) <g, bf g'>\staccato <g bf g'>\staccato <g bf fs'>\staccato | \noBreak %m36
  <g bf fs'>8\staccato <g bf f'>\staccato <g bf f'>\staccato <g bf e>\staccato | \noBreak %m37
  <g bf e>8\staccato <g bf ef>\staccato <g bf ef>\staccato <g bf d>\staccato | \noBreak %m38
  <e a cs>8\staccato <e a cs>4\tenuto r8 | \noBreak %m39
  \ottava #1 d'32\accent( e f g a8\staccato) g32\accent( f e d c8\staccato) | \noBreak %m40
  bf32\accent( c d e f8\staccato) e32\accent( d c bf a8\staccato) | \break %m41
  g32\accent(^[ a bf c d8\staccato)] c32\accent( bf a g f8\staccato) | \noBreak %m42
  <e a e'>8\staccato <e a e'>4\tenuto r8 | \noBreak %m43
  bf'32\accent( c d e f8\staccato) e32\accent( d c bf a8\staccato) | \noBreak %m44
  g32\accent( a bf c d8\staccato) c32\accent( bf a g f8\staccato) | \noBreak %m45
  ef32\accent( f g a bf8\staccato) a32\accent( g f e d8\staccato) | \noBreak %m46
  <a e' a>8\staccato <a e' a>4\tenuto r8 | \break %m47
  \ottava #0 d32\accent_\markup {\italic "dim. poco a poco"}( e f g a8\staccato) g32\accent( f e d c8\staccato) | \noBreak %m48
  bf32\accent( c d e f8\staccato) e32\accent( d c bf a8\staccato) | \noBreak %m49
  g32\accent(^[ a bf c d8\staccato)] c32\accent( bf a g f8\staccato) | \noBreak %m50
  <e a e'>8\staccato <e a e'>4\tenuto r8 | \noBreak %m51
  bf'32\accent( c d e f8\staccato) e32\accent( d c bf a8\staccato) | \break %m52
  g32\accent( a bf c d8\staccato) c32\accent( bf a g f8\staccato) | \noBreak %m53
  ef32\accent( f g a bf8\staccato) a32\accent( g f e d8\staccato) | \noBreak %m54
  <a e' a>8\staccato <a e' a>4\tenuto r8 | \noBreak %m55
  d''32\p\accent( c bf a g8\staccato) d32\accent( c bf a g8\staccato) | \noBreak %m56
  r8 <a, e'>4.^\tenuto | \break %m57
  d''32\accent( c bf a g8\staccato) d32\accent( c bf a g8\staccato) | \noBreak %m58
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m59
  r8_\markup {\italic " dim."} <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m60
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m61
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \break %m62
  r4\pp r8 \clef bass d,32( e f g | \noBreak %m63
  a8\staccato) <d, f d'>\staccato <d f d'>\staccato <d f cs'>\staccato | \noBreak %m64
  <d f cs'>\staccato <d f c'>\staccato <d f c'>\staccato <d f b>\staccato | \noBreak %m65
  <d f b>\staccato <d f bf>\staccato <d f bf>\staccato <d f a>~ | \noBreak %m66
  <d f a>2 | \noBreak %m67
  R2 \clef treble |\noBreak %m68
  <<
    {
      \stemDown d'8\staccato[ a'\staccato d\staccato a'\accent~] | \noBreak %m69
      a2~\fermata \bar "||" \key d \major | \pageBreak %m70
      \stemUp a4( b8 cs | %m71
      d4 cs8 b | %m72
      cs8 a4 cs8) | %m73
      \slashedGrace cs8( fs,2) | %m74
      a4( b8 cs | %m75
      d4 cs8 b | \break %m76
      \dimHairpin cs8 fs,4 cs'8\>) | %m77
      \slashedGrace cs8( a2) | %m78
      a,4\!( b8 cs | %m79
      d4 cs8 b | %m80
      cs8 a4 cs8) | %m81
      \slashedGrace cs8( fs,2) | %m82
      a4( b8 cs | \break %m83
      d4 cs8 b | %m84
      cs8 fs,4 cs'8) | %m85
      \slashedGrace cs8( a2) \bar "||" | %m86
    }
    \\
    {
      s2 | s2 |
      <d fs>2_\markup {\dynamic p \italic "cantabile"} | %m71
      d2 | %m72
      <d fs>2 | %m73
      d2 | %m74
      <d fs>2 | %m75
      \crescHairpin d2\< | %m76
      d2\! | %m77
      cs2 | %78
      r8 <d, fs>4. | %m79
      r8 d4. | %m80
      r8 <d fs>4. | %m81
      r8 d4. | %m82
      r8 <d fs>4.\< | %m83
      r8 d4. | %m84
      r8\! d4. | %m85
      r8 cs4. | %m86

    }
  >>
  s4_\p b''4\tenuto | %m87
  s4 b4\tenuto | %m88
  r8 g,16( cs b e d g | %m89
  e16 a g cs b e) r8 | %m90
  s4 g,4\tenuto | %m91
  s4 g4\tenuto | \break %m92
  r8 ef,16^(a \stemUp g c bf ef | %m93
  c16 f ef a g c) r8 | %m94
  r8\pp c,,16^( fs e a g c | %m95
  a d c fs e a) r8\fermata | \pageBreak %m96
  <<
    {
      d4( e8 fs | %m97
      g4 fs8 e | %m98
      fs8 d4 fs8) | %m99
      \slashedGrace fs8( b,2) | %100
      d4\<( e8 fs | %m101
      g4 fs8 e | \break %m102
      fs8 b,4 fs'8\!) | %m103
      \slashedGrace fs8( d2) | %m104
      d,4( e8 fs | %m105
      g4 fs8 e | %m106
      fs8 d4 fs8) | %m107
      \slashedGrace fs8( b,2) | \break %108
      d4( e8 fs | %m109
      g4 fs8 e |  %m110
      fs4 b,8 fs'8) | %m111
      \slashedGrace fs8( d2) | %m112
    }
    \\
    {
      <g b>2\p | %m97
      g2 | %m98
      <g b>2 | %m99
      g2 | %m100
      <g b>2 | %m101
      g2 | %m102
      g2 | %m103
      fs2\> | %m104
      r8\! <g, b>4. | %m105
      r8 g4. | %m106
      r8 <g b>4. | %m107
      r8 g4. | %m108
      r8 <g b>4.\< | %m109
      r8 g4. | %m110
      r8 g4.\! | %m111
      r8 fs4. | %m112
    }
  >>
  s4 \stemDown e''4\tenuto | %m113
  r8 g,16^( d' b g' d b') | \break %m114
  s4 \stemDown b,4\tenuto | %m115
  r8 fs16( d' a fs' d a') | %m116
  s4 e,4\tenuto_\markup {\italic dim.} | %m117
  r8 g,16( d' b g' d b') | \break %m118
  s4 b,4\tenuto | %m119
  r8 \stemUp fs16( d' \crescHairpin \stemDown a\< fs' d a'\!) | %m1120
  R2 * 3 | \pageBreak %m121-123
  \key d \minor R2 | \noBreak %m124
  r4 r8 \stemNeutral d,,32( e f g | \noBreak %m125
  a8\staccato) <d, f d'>\staccato <d f d'>\staccato <d f cs'>\staccato | \noBreak %m126
  <d f cs'>8\staccato <d f c'>\staccato <d f c'>\staccato <d f b>\staccato | \noBreak %m127
  <d f b>8\staccato <d f bf>\staccato <d f bf>\staccato <d f a>\staccato | \noBreak %m128
  <b e gs>8\staccato <b e gs>4\tenuto g'32( a bf c | \break %m129
  d8\staccato) <g, bf g'>\staccato <g bf g'>\staccato <g bf fs'>\staccato | \noBreak %m130
  <g bf fs'>8\staccato <g bf f'>\staccato <g bf f'>\staccato <g bf e>\staccato | \noBreak %m131
  <g bf e>8\staccato <g bf ef>\staccato <g bf ef>\staccato <g bf d>\staccato | \noBreak %m132
  <e a cs>8\staccato <e a cs>4\tenuto r8 | \noBreak %m133
  d'32\accent( e f g a8\staccato) g32\accent( f e d c8\staccato) | \noBreak %m134
  bf32\accent( c d e f8\staccato) e32\accent( d c bf a8\staccato) | \break %m135
  g32\accent(^[ a bf c d8\staccato)] c32\accent( bf a g f8\staccato) | \noBreak %m136
  r8 <a, e'>4.^\tenuto | \noBreak %m137
  d''32\accent( c bf a g8\staccato) d32\accent( c bf a g8\staccato) | \noBreak %m138
  r8 <a, e'>4.^\tenuto | \noBreak %m139
  d''32\accent( c bf a g8\staccato) d32\accent( c bf a g8\staccato) | \break %m140
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m141
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m142
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m143
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m144
  r8 <a, cs e>8\staccato r <bf cs e>\staccato | \noBreak %m145
  \set crescendoText = \markup { \italic { a poco } }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner.style = #'dashed-line
  r8_\markup{\italic "cresc. poco"} <gs cs e>\staccato r <a cs e>\staccato | \break %m146
  r8\< <bf cs e>\staccato r <b cs e>\staccato | \noBreak %m147
  r8 <c! cs e>^\staccato  r <b cs e>^\staccato | \noBreak %m148
  r8 <bf cs e>\staccato r <a cs e>\staccato | \noBreak %m149
  r8 \clef bass <gs cs e>\staccato r <g bf cs>\staccato | \noBreak %m150
  \crescHairpin r8 <fs bf cs>\staccato r <f bf cs>8\staccato | \noBreak %m151
  r8\!_\markup{\italic "molto cresc."} <e a cs> r <ef g a cs> | \break %m152
  R2 \clef treble| \noBreak %m153
  r4 r8 d''32( e f g | \noBreak %m154
  a8\staccato) <d, f d'>\staccato <d f d'>\staccato <d f cs'>\staccato | \noBreak %m155
  <d f cs'>8\staccato <d f c'>\staccato <d f c'>\staccato <d f b>\staccato | \noBreak %m156
  <d f b>8\staccato <d f bf>\staccato <d f bf>\staccato <d f a>\staccato | \noBreak %m157
  <b e gs>8\staccato <b e gs>4\tenuto g'32( a bf c | \pageBreak %m158
  d8\staccato) <g, bf g'>\staccato <g bf g'>\staccato <g bf fs'>\staccato | \noBreak %m159
  <g bf fs'>8\staccato <g bf f'>\staccato <g bf f'>\staccato <g bf e>\staccato | \noBreak %m160
  <g bf e>8\staccato <g bf ef>\staccato <g bf ef>\staccato <g bf d>\staccato | \noBreak %m161
  <e a cs>8\staccato <e a cs>4\tenuto r8 | \noBreak %m162
  \ottava #1 d'32\accent( e f g a8\staccato) g32\accent( f e d c8\staccato) | \noBreak %m163
  bf32\accent( c d e f8\staccato) e32\accent( d c bf a8\staccato) | \break %m164
  g32\accent(^[ a bf c d8\staccato)] c32\accent( bf a g f8\staccato) | \noBreak %m165
  <e a e'>8\staccato <e a e'>4\tenuto r8 | \noBreak %m166
  bf'32\accent( c d e f8\staccato) e32\accent( d c bf a8\staccato) | \noBreak %m167
  g32\accent( a bf c d8\staccato) c32\accent( bf a g f8\staccato) | \noBreak %m168
  ef32\accent( f g a bf8\staccato) a32\accent( g f e d8\staccato) | \noBreak %m169
  <a e' a>8\staccato <a e' a>4\tenuto r8 | \break %m170
  \ottava #0 d32\accent_\markup {\italic "dim. poco a poco"}( e f g a8\staccato) g32\accent( f e d c8\staccato) | \noBreak %m171
  bf32\accent( c d e f8\staccato) e32\accent( d c bf a8\staccato) | \noBreak %m172
  g32\accent(^[ a bf c d8\staccato)] c32\accent( bf a g f8\staccato) | \noBreak %m173
  <e a e'>8\staccato <e a e'>4\tenuto r8 | \noBreak %m174
  bf'32\accent( c d e f8\staccato) e32\accent( d c bf a8\staccato) | \break %m175
  g32\accent( a bf c d8\staccato) c32\accent( bf a g f8\staccato) | \noBreak %m176
  ef32\accent( f g a bf8\staccato) a32\accent( g f e d8\staccato) | \noBreak %m177
  <a e' a>8\staccato <a e' a>4\tenuto r8 | \noBreak %m178
  d''32\p\accent( c bf a g8\staccato) d32\accent( c bf a g8\staccato) | \noBreak %m179
  r8 <a, e'>4.^\tenuto | \break %m180
  d''32\accent( c bf a g8\staccato) d32\accent( c bf a g8\staccato) | \noBreak %m181
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m182
  r8_\markup {\italic " dim."} <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m183
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \noBreak %m184
  r8 <a, e'>8 d'32\accent( c bf a g8\staccato) | \break %m185
  r4\pp r8 \clef bass d,32( e f g | \noBreak %m186
  a8\staccato) <d, f d'>\staccato <d f d'>\staccato <d f cs'>\staccato | \noBreak %m187
  <d f cs'>\staccato <d f c'>\staccato <d f c'>\staccato <d f b>\staccato | \noBreak %m188
  <d f b>\staccato <d f bf>\staccato <d f bf>\staccato <d f a>~ | \noBreak %m189
  <d f a>2 | \noBreak %m190
  R2 \clef treble |\noBreak %m191
  \stemDown d'8-.[ a'-. d-. a'8\accent~] | %m192
  a2 | %m193
  <d, a' d>16\ff\accent <d a' d> r8 r4 \bar "|." | %m194
}

left = \relative c' {
  \global
  % Music follows here.
  d,,8\accent\staccato^\pp a'\staccato d,8\accent\staccato a'\staccato | %m1
  d,8\staccato^\markup{\italic "staccato"} a'\staccato d,\staccato a'\staccato | %m2
  d,8 a' d, a' | %m3
  d,8 a' d, a' | %m4
  d,8 a' d, a' | %m5
  d,8 a' d, a' | %m6
  d,8 a' d, a' | %m7
  d,8 a' d, a' | %m8
  d,8 a' d, a' | %m9
  d,8 a' d, a' | %m10
  r8 <bf' f'>8\staccato r8 <f c'>\staccato | %m11
  r8 <g d'>8\staccato r8 <d a'>\staccato | %m12
  r8 <ef bf'>8\staccato r8 <bf f'>\staccato | %m13
  a8\staccato e'\staccato a,\staccato e'\staccato | %m14
  ef,8\staccato^\markup{\italic "sempre" \dynamic "pp"} bf'\staccato ef,\staccato bf'\staccato | %m15
  a8^\markup{\italic "staccato"} e' a, e' | % m16
  ef,8 bf' ef, bf' | %m17
  a8\staccato e'\staccato ef,\staccato bf'\staccato | %m18
  a8\staccato e'\staccato ef,\staccato bf'\staccato | %m19
  a8\staccato_\markup{\italic "una corda"} e'\staccato ef,\staccato bf'\staccato | %m20
  a8\staccato e'\staccato ef,\staccato bf'\staccato | %m21
  a8_\markup{\italic "staccato"} e' bf e | %m22
  gs,8_\markup{\italic "tre corde"} e' a, e' | %m23
  bf8 e b e | %m24
  c8 e b e | %m25
  bf8 e a, e' | %m26
  gs,8 e' g, cs | %m27
  fs,8 cs' f, cs' | %m28
  e,8 cs' ef, cs' | %m29
  <d, d'>8\accent^\ff <a a'> <d d'>\accent <a a'> | %m30
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m31
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m32
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m33
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m34
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m35
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m36
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m37
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m38
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m39
  <f'' f'>8\accent <d, d'> <e' e'>\accent <d, d'> | %m40
  <d' d'>8\accent <d, d'> \stemDown <c' c'>\accent <d, d'> | %m41
  \stemNeutral <bf' bf'>8\accent <d, d'> <a' a'>\accent <d, d'> | %m42
  <g g'>8\accent <d d'> <g g'>\accent <d d'> | %m43
  <d' d'>8\accent <d, d'> <c' c'>\accent <d, d'> | %m44
  <bf' bf'>8\accent <d, d'> <a' a'>\accent <d, d'> | %m45
  <g g'>8\accent <d d'> <f f'>\accent <d d'> | %m46
  <e e'>8\accent <d d'> <e e'>\accent <d d'> | %m47
  f'8^\accent_\staccato d,\staccato e'^\accent_\staccato d,\staccato | %m48
  d'8^\accent_\staccato d,\staccato c'^\accent_\staccato d,\staccato | %m49
  bf'8^\accent_\staccato d,\staccato a'^\accent_\staccato d,\staccato | %m50
  g^\accent_\staccato d\staccato g^\accent_\staccato d\staccato | %m51
  d'8^\accent_\staccato d,\staccato c'^\accent_\staccato d,\staccato | %m52
  bf'8^\accent_\staccato d,\staccato a'^\accent_\staccato d,\staccato | %m53
  g8\accent\staccato d\staccato f\accent\staccato d\staccato | %m54
  e8\accent\staccato d\staccato e\accent\staccato d\staccato | %m55
  ef8\staccato a\staccato ef\staccato a\staccato | %m56
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m57
  ef8\staccato a\staccato ef\staccato a\staccato | %m58
  d,8\staccato a'\staccato ef\staccato a\staccato | %m59
  d,8\staccato a'\staccato ef\staccato a\staccato | %m60
  d,8\staccato_\markup {\italic "una corda"} a'\staccato ef\staccato a\staccato | %m61
  d,8\staccato a'\staccato ef\staccato a\staccato | %m62
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m63
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m64
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m65
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m66
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m67
  \stemUp d,8\staccato[ a'\staccato d\staccato a'\staccato] | %m68
  R2 | %m69
  R2\fermata \clef treble \key d \major | %m70
  <d a'>2 | %m71
  <b fs' b>2 | %m72
  <d a'>2 | %m73
  <b fs' b>2 | %m74
  <<
    {
      a'2 | %m75
      <b, b' >2 | %m76
      \stemDown e2 | %m77
      \stemNeutral <a, a'>2 | %m78
    }
    \\
    {
      d4 cs | %m75
      fs4^( f) | %m76
      \stemUp a4^( gs) | %m77
      \stemDown e4^( es) \clef bass | %m78

    }
  >>
  r8 <d, a'>4. | %m79
  r8 <b fs' b>4. | %m80
  r8 <d a'>4. | %m81
  r8 <b fs' b>4. | %m82
  <<
    {
      s8 a'4. | %m83
      \stemDown s8 <b, b'>4. | %m84
      \stemUp s8 \slashedGrace e,8~ e4. | %m85
    }
    \\
    {
      r8 d'4 cs8 | %m84
      r8 fs4 f8 | %m85
      \stemUp r8 a4 gs8 | %m86
    }
  >>
  r8 <a, e' a>4. \clef treble| %m87
  \override TupletNumber.Y-offset = 7.75 \tuplet 6/4 {a'16\sustainOn([ g' cs \change Staff = right \stemDown e g e')]} \change Staff = left g,4\tenuto | %m87
  \tuplet 6/4 {\stemUp a,,16([ g' cs \change Staff = right \stemDown e g e')]} \change Staff = left g,4\tenuto | \break %m88
  \stemUp a,,8\staccato[\sustainOn e'\staccato g\staccato b\staccato] | %m89
  \stemDown cs8\staccato[ e\staccato g\staccato] r8 | %m90
  \override TupletNumber.X-offset = 8.5 \override TupletNumber.Y-offset = 8 \tuplet 6/4 {\stemUp f,,16\sustainOn([ ef' a \change Staff = right \stemDown c ef c')]} \change Staff = left ef,4\tenuto | %m91
  \tuplet 6/4 {\stemUp f,,16([ ef' a \change Staff = right \stemDown c ef c')]} \change Staff = left ef,4\tenuto \clef bass| %m92
  \stemUp f,,8^\staccato[\sustainOn c'^\staccato \change Staff = right \stemDown ef_\staccato g_\staccato] | %m93
  a_\staccato[ c_\staccato ef_\staccato] r8 | %m94
  \change Staff = left \stemUp d,,8^\staccato[\sustainOn a'^\staccato c^\staccato \change Staff = right \stemDown e_\staccato] | %m95
  fs8_\staccato[ a_\staccato c!_\staccato] s8 \change Staff = left | %m96
  \clef treble <g d'>2 | %m97
  <e b' e>2 | %m98
  <g d'>2 | %m99
  <e b' e>2 | %m100 
  <<
    {
     d'2 | %m101
     <e, e'>2 | %m102
     d'4( cs) | %m103
     <d, d'>2 | %m104
    }
    \\
    {
     g4( fs) | %m101
     b4^( bf) | %m102
     a2 | %m103
     a4^( as)| %m104
    }
  >>
  \clef bass r8 <g, d'>4. | %m105
  r8 <e b' e>4. | %m106
  r8 <g d'>4. | %m107
  r8 <e b' e>4. | %m108
  <<
    {
     r8 d'4. | %m109
     r8 e4. | %m110
     r8 \slashedGrace a,,8( d'4)( cs8) | %m111
    }
    \\
    {
     r8 g4( fs8) | %m109
     r8 <e b'>4^( bf'8) | %m110
     r8 \stemUp \slashedGrace a,8~ \stemDown a4. | %m111
    }
  >>
  r8 <d a' d>4. | %m112
  \clef treble \override TupletNumber.X-offset = 7.75 \override TupletNumber.Y-offset = 11 \tuplet 6/4 {\stemUp d'16\sustainOn[( c' fs \change Staff = right \stemDown a c a')]} \change Staff = left c,4\tenuto %m113
  \stemUp d,,8\staccato\sustainOn[ b'\staccato d\staccato g\staccato] | %m114
  \override TupletNumber.X-offset = 7.5 \override TupletNumber.Y-offset = 7.75 \tuplet 6/4 {d,16\sustainOn( a' cs \change Staff = right \stemDown e g e')} \change Staff = left \stemDown g,4\tenuto | %m115
  \stemUp d,8-.\sustainOn a'-. d-. fs-. | %m116
  \clef bass \override TupletNumber.X-offset = 8.5 \override TupletNumber.Y-offset = 8.5 \tuplet 6/4 {d,,16\sustainOn( c' fs \change Staff = right \stemDown a c a')} \change Staff = left \clef treble c,4\tenuto | %m117
  \clef bass \stemDown d,,8-.\sustainOn b'-. d-. g-. | %m118
  \stemUp \override TupletNumber.X-offset = 7.25 \override TupletNumber.Y-offset = 9 \tuplet 6/4 {d,16\sustainOn( a' cs \change Staff = right \stemDown e g e')} \change Staff = left g,4\tenuto | %m119
  \stemDown d,8-.\sustainOn a'-. d-. a'-.\sustainOff | %m120
  \clef treble \stemUp d8\accent\staccato[ a-. d,-. a'-.] | %m121
  \clef bass \dimHairpin \stemDown d,8-.\>[ a-. d-. a-.\!] | %m122
  \stemUp d,8-.[ a'-. d,-. a-.] \bar "||" | %m123
  \key d \minor \stemNeutral d,8\accent\staccato^\pp a'\staccato d,8\accent\staccato a'\staccato | %m124
  d,8\staccato^\markup{\italic "staccato"} a'\staccato d,\staccato a'\staccato | %m125
  d,8 a' d, a' | %m126
  d,8 a' d, a' | %m127
  d,8 a' d, a' | %m128
  d,8 a' d, a' | %m129
  d,8 a' d, a' | %m130
  d,8 a' d, a' | %m131
  d,8 a' d, a' | %m132
  d,8 a' d, a' | %m133
  r8 <bf' f'>8\staccato r8 <f c'>\staccato | %m134
  r8 <g d'>8\staccato r8 <d a'>\staccato | %m135
  r8 <ef bf'>8\staccato r8 <bf f'>\staccato | %m136
  a8\staccato e'\staccato a,\staccato e'\staccato | %m137
  ef,8\staccato^\markup{\italic "sempre" \dynamic "pp"} bf'\staccato ef,\staccato bf'\staccato | %m138
  a8^\markup{\italic "staccato"} e' a, e' | % m139
  ef,8 bf' ef, bf' | %m140
  a8\staccato e'\staccato ef,\staccato bf'\staccato | %m141
  a8\staccato e'\staccato ef,\staccato bf'\staccato | %m142
  a8\staccato_\markup{\italic "una corda"} e'\staccato ef,\staccato bf'\staccato | %m143
  a8\staccato e'\staccato ef,\staccato bf'\staccato | %m144
  a8_\markup{\italic "staccato"} e' bf e | %m145
  gs,8_\markup{\italic "tre corde"} e' a, e' | %m146
  bf8 e b e | %m147
  c8 e b e | %m148
  bf8 e a, e' | %m149
  gs,8 e' g, cs | %m150
  fs,8 cs' f, cs' | %m151
  e,8 cs' ef, cs' | %m152
  <d, d'>8\accent^\ff <a a'> <d d'>\accent <a a'> | %m153
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m154
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m155
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m156
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m157
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m158
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m159
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m160
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m161
  <d d'>8\accent <a a'> <d d'>\accent <a a'> | %m162
  <f'' f'>8\accent <d, d'> <e' e'>\accent <d, d'> | %m163
  <d' d'>8\accent <d, d'> \stemDown <c' c'>\accent <d, d'> | %m164
  \stemNeutral <bf' bf'>8\accent <d, d'> <a' a'>\accent <d, d'> | %m165
  <g g'>8\accent <d d'> <g g'>\accent <d d'> | %m166
  <d' d'>8\accent <d, d'> <c' c'>\accent <d, d'> | %m167
  <bf' bf'>8\accent <d, d'> <a' a'>\accent <d, d'> | %m168
  <g g'>8\accent <d d'> <f f'>\accent <d d'> | %m169
  <e e'>8\accent <d d'> <e e'>\accent <d d'> | %m170
  f'8^\accent_\staccato d,\staccato e'^\accent_\staccato d,\staccato | %m171
  d'8^\accent_\staccato d,\staccato c'^\accent_\staccato d,\staccato | %m172
  bf'8^\accent_\staccato d,\staccato a'^\accent_\staccato d,\staccato | %m173
  g^\accent_\staccato d\staccato g^\accent_\staccato d\staccato | %m174
  d'8^\accent_\staccato d,\staccato c'^\accent_\staccato d,\staccato | %m175
  bf'8^\accent_\staccato d,\staccato a'^\accent_\staccato d,\staccato | %m176
  g8\accent\staccato d\staccato f\accent\staccato d\staccato | %m177
  e8\accent\staccato d\staccato e\accent\staccato d\staccato | %m178
  ef8\staccato a\staccato ef\staccato a\staccato | %m179
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m180
  ef8\staccato a\staccato ef\staccato a\staccato | %m181
  d,8\staccato a'\staccato ef\staccato a\staccato | %m182
  d,8\staccato a'\staccato ef\staccato a\staccato | %m183
  d,8\staccato_\markup {\italic "una corda"} a'\staccato ef\staccato a\staccato | %m184
  d,8\staccato a'\staccato ef\staccato a\staccato | %m185
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m186
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m187
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m188
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m189
  d,8\staccato a'\staccato d,\staccato a'\staccato | %m190
  \stemUp d,8\staccato[ a'\staccato d\staccato a'\staccato] | %m191
  R2 * 2 | %m192-193
  <d,, a' d>16\accent <d a' d>16 r8 r4 | %m194
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout {}
  \midi {
    \tempo 4=120
  }
}
