\version "2.25.19"
\include "english.ly"

sopranoOneIX = \relative {
  \tocItem \markup { \bold "Teil IX" " — " \italic "Gute Nacht, o Wesen" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #300
  %300
  \mark #29 c''4. c8 |
  c8[ b] r4 |
  a4.^\p a8 |
  a8[ gs] r4 |
  e'4.^\f e8 |
  %305
  e8[ d] r4 |
  f,4. f8 |
  f e b'4 ~ |
  b8[ a b cs] |
  d[ e] f4 ~ |
  %310
  f8[ e] e[ d] |
  cs[ d] e4 |
  e8[ d] r4 |
  b8[ c] d4 |
  d8[ c] c4 ~ |
  %315
  c8 b b4 ~ |
  b8 gs a4( ~ |
  a gs) |
  a \mark \default e' ~ |
  e8 d c b |
  %320
  a4.( b16[ c] |
  b4) e, |
  f e8[ d] |
  e c'[ d] e |
  f2 ~ |
  %325
  f8[ d] g[ f] |
  e2 ~ |
  e8[ f16 g] f[ e d c] |
  d2 ~ |
  d8 f e d |
  %330
  c([ b] a4 ~ |
  a4.) gs8 |
  a4 e' ~ |
  e d |
  d c |
  %335
  b r4 |
  \mark \default c4. c8 |
  c8[ b] r4 |
  e4. e8 |
  e8[ d] r4 |
  %340
  f,4. f8 |
  f e b'4 ~ |
  b8[ a b cs] |
  d[ e] f4 ~ |
  f8[ e] e[ d] |
  %345
  cs[ d] e4 |
  e8[ d] r4 |
  b8[ c] d4 |
  d8[ c] c4 ~ |
  c8 b b4 ~ |
  %350
  b8 gs a4( ~ |
  a gs) |
  a \mark \default e' ~ |
  e8 d c b |
  a4.( b16[ c] |
  %355
  b4) e, |
  f e8[ d] |
  e c'[ d] e |
  f2 ~ |
  f8 d g f |
  %360
  e2 ~ |
  e8[ f16 g] f[ e] d[ c] |
  d2 ~ |
  d8[ f] e[ d] |
  c b a4 ~ |
  %365
  a4. gs8 |
  a4 e' |
  e d |
  d8[ cs] r4 |
  \mark \default e4. e8 |
  %370
  e[ d] r4 |
  f,4. f8 |
  f( e4.) |
  r8 gs a b |
  c cs4 cs8 |
  %375
  d r c!4( |
  c4.) b8 |
  c bf[ a16 g] a8 |
  g e' f d |
  e c[ d] b |
  %380
  c4 r | % The rehearsal mark here has been moved to the tenor voice
  r2 |
  r8 b4 cs8 |
  d a d d |
  d[ c!16 b] c8[ b] |
  %385
  b e4 d8 |
  c d c b |
  a fs ds8. ds16 |
  e8 e'4 fs8 |
  g d g g |
  %390
  g[ f!16 e] d[ c b a] |
  e'[ d e f] e[ d c d] |
  b[ a b c] b[ a gs fs] |
  e[ d c d] e[ g! f! e] |
  d2 ~ |
  %395
  d8 c r4 |
  \mark \default a'4. a8 |
  a[ gs] r4 |
  g!4. g8 |
  g[ f] r4 |
  %400
  f4. f8 |
  f[ e] r4 |
  d'4. e8 |
  c4 r8 f |
  c4( b) |
  %405
  a2^\fermata \bar "|."
}

sopranoOneWordsIX = \lyricmode {
  %300
  Gu -- te |
  Nacht, __ |
  gu -- te |
  Nacht, __ |
  gu -- te |
  %305
  Nacht, __ |
  gu -- te |
  Nacht, o We -- %|
   |
  _ _ %|
  %310
  sen, __ |
  gu -- te |
  Nacht, __ |
  gu -- te |
  Nacht, __ gu -- %|
  %315
  te Nacht, %|
  o We -- %|
   |
  sen, das __ %|
  die Welt er -- |
  %320
  le -- %|
  sen, |
  gu -- te __ |
  Nacht, gu -- te |
  Nacht __ %|
  %325
  o __ |
  We -- %|
  _ |
  _ %|
  sen, mir ge -- |
  %330
  fällst __ %|
  du |
  nicht, mir __ %|
  ge -- |
  fällst du |
  %335
  nicht! |
  Gu -- te |
  Nacht, __ |
  gu -- te |
  Nacht, __ |
  %340
  gu -- te |
  Nacht, ihr Sün -- %|
   |
  _ _ %|
  den, __ |
  %345
  gu -- te |
  Nacht, __ |
  gu -- te |
  Nacht, __ gu -- %|
  te Nacht, __ %|
  %350
  ihr Sün -- %|
   |
  den, blei -- %|
  bet weit da -- |
  hin -- %|
  %355
  ten, |
  gu -- te |
  Nacht, blei -- bet |
  weit __ %|
  da -- hin -- ten, |
  %360
  blei -- %|
  _ bet |
  weit __ %|
  da -- |
  hin -- ten, kommt __ %|
  %365
  nicht |
  mehr, nicht %|
  mehr ans |
  Licht! __ |
  Gu -- te |
  %370
  Nacht, __ |
  gu -- te |
  Nacht, __ %|
  du Stolz und |
  Pracht, gu -- te |
  %375
  Nacht, gu -- %|
  te |
  Nacht, gu -- te |
  Nacht, du Stolz und |
  Pracht, gu -- te |
  %380
  Nacht! %|
   %|
  Dir sei |
  ganz, du La -- ster -- |
  le -- _ |
  %385
  ben, dir sei |
  ganz, du La -- ster -- |
  le -- ben, gu -- te |
  Nacht, dir sei |
  ganz, du La -- ster -- |
  %390
  le -- _ |
  _ _ |
  _ _ |
  _ _ |
  _ %|
  %395
  ben, |
  gu -- te |
  Nacht, __ |
  gu -- te |
  Nacht, __ |
  %400
  gu -- te |
  Nacht, __ |
  gu -- te |
  Nacht ge -- |
  ge -- |
  %405
  ben! |
}

sopranoTwoIX = \relative {
  %300
  a'4. a8 |
  a[ gs] r4 |
  c4.^\p c8 |
  c[ b] r4 |
  g!4.^\f g8 |
  %305
  g[ f] r4 |
  d4. d8 |
  d2 ~ |
  d8[ cs] r4 |
  a'4. a8 |
  %310
  a[ gs] r4 |
  g!4. g8 |
  g[ f] r4 |
  f4. f8 |
  f[ e] r4 |
  %315
  d4. e8 |
  c4 r8 f'8 |
  c4( b) |
  a r4 |
  r2 |
  %320
  r4 e'4 ~ |
  e8 d c b |
  a gs a b |
  c2 ~ |
  c8[ a] d[ c] |
  %325
  b2 ~ |
  b8[ c16 d] c[ b a gs] |
  a2 ~ |
  a8 c b a |
  gs4. gs8 |
  %330
  a4 a8 g! |
  f[ e] d4 |
  c4 g' ~ |
  g f |
  e a |
  %335
  gs r4 |
  a4. a8 |
  a[ gs] r4 |
  g!4. g8 |
  g[ f] r4 |
  %340
  d4. d8 |
  d2 ~ |
  d8[ cs] r4 |
  a'4. a8 |
  a[ gs] r4 |
  %345
  g!4. g8 |
  g[ f] r4 |
  f4. f8 |
  f[ e] r4 |
  d4. e8 |
  %350
  c4 r8 f'8 |
  c4( b) |
  a r4 |
  r2 |
  r4 e'4 ~ |
  %355
  e8 d c b |
  a gs a b |
  c2 ~ |
  c8 a d c |
  b2 ~ |
  %360
  b8[ c16 d] c[ b] a[ gs] |
  a2 ~ |
  a8[ c] b[ a] |
  gs2 |
  a4 a8 g! |
  %365
  f[ e] d4 |
  c4 g' |
  g f |
  f8[ e] r4 |
  g4. g8 |
  %370
  g8[ f] r4 |
  d4. d8 |
  d gs a b |
  e, e fs gs |
  a a4 g!8 |
  %375
  a2 ~ |
  a8 e' a, g |
  e e[ f] d |
  e g a f |
  g e[ f] d |
  %380
  e4 r |
  r8 e4 fs8 |
  g d g g |
  g[ fs16 e] fs8[ gs] |
  a e'4 ds8 |
  %385
  e b g gs |
  a e4 d8 |
  c c' b a |
  g g16[ fs] g8 a |
  d,4 r |
  %390
  r8 f!4 gs8 |
  a e a a |
  a[ gs16 fs] g[ a b8] ~ |
  b[ a16 gs] a[ b c8] ~ |
  c[ d16 c] b[ a b8] ~ |
  %395
  b a b cs |
  d e f4 ~ |
  f8[ e] e[ d] |
  cs[ d] e4 |
  e8[ d] r4 |
  %400
  b8[ c] d4 |
  d8[ c] c4 ~ |
  c8 b b4 ~ |
  b8 gs a4 ~ |
  a gs |
  %405
  a2^\fermata
}

sopranoTwoWordsIX = \lyricmode {
  %300
  Gu -- te |
  Nacht, __ |
  gu -- te |
  Nacht, __ |
  gu -- te |
  %305
  Nacht, __ |
  gu -- te |
  Nacht __ %|
   |
  gu -- te |
  %310
  Nacht, __ |
  gu -- te |
  Nacht, __ |
  gu -- te |
  Nacht, __ |
  %315
  gu -- te |
  Nacht, o |
  We -- |
  sen, %|
   %|
  %320
  das __ %|
  die Welt er -- |
  le -- sen, das die |
  Welt __ %|
  er -- |
  %325
  le -- %|
  _ |
  _ %|
  sen, mir ge -- |
  fällst du |
  %330
  nicht, mir ge -- |
  fällst __ du |
  nicht, mir __ %|
  ge -- |
  fällst du |
  %335
  nicht! |
  Gu -- te |
  Nacht, __ |
  gu -- te |
  Nacht, __ |
  %340
  gu -- te |
  Nacht, __ %|
   |
  gu -- te |
  Nacht, __ |
  %345
  gu -- te |
  Nacht, __ |
  gu -- te |
  Nacht, __ |
  gu -- te |
  %350
  Nacht, ihr |
  Sün -- |
  den %|
   %|
  blei -- %|
  %355
  bet weit da -- |
  hin -- ten, blei -- bet |
  weit __ %|
  da -- hin ten, |
  blei -- %|
  %360
  _ bet __ |
  weit __ %|
  da -- |
  hin -- |
  ten, kommt nicht |
  %365
  mehr __ ans |
  Licht, nicht |
  mehr ans |
  Licht! __ |
  Gu -- te |
  %370
  Nacht, __ |
  gu -- te |
  Nacht, du Stolz und |
  Pracht, du Stolz und |
  Pracht, gu -- te |
  %375
  Nacht, %|
  du Stolz __ und |
  Pracht, gu -- te |
  Nacht, du Stolz und |
  Pracht, gu -- te |
  %380
  Nacht! %|
  Dir sei |
  ganz, du La -- ster -- |
  le -- _ |
  _ _ _ |
  %385
  _ ben, gu -- te |
  Nacht, dir sei |
  ganz, du La -- ster -- |
  le -- ben, __ gu -- te |
  Nacht, %|
  %390
  dir sei |
  ganz, du La -- ster -- |
  le -- _ %|
  _ %|
  _ %|
  %395
  ben, gu -- te |
  Nacht ge -- ge -- %|
  ben, __ |
  gu -- te |
  Nacht, __ |
  %400
  gu -- te |
  Nacht, __ gu -- %|
  te Nacht __ %|
  ge -- ge -- %|
  _ |
  %405
  ben!
}

altoIX = \relative {
  %300
  r2 |
  r |
  r |
  r |
  r |
  %305
  r |
  r |
  r |
  e'4 e |
  d c |
  %310
  b2 |
  a |
  r |
  r |
  r |
  %315
  r |
  r |
  r |
  e'4 e |
  fs gs |
  %320
  a2 |
  gs |
  r |
  r |
  r |
  %325
  r |
  r |
  r |
  r |
  r |
  %330
  a8[ b] c4 |
  b8[ a] b4 |
  a2 ~ |
  a |
  r |
  %335
  r |
  r |
  r |
  r |
  r |
  %340
  r |
  r |
  e4 e |
  d c |
  b2 |
  %345
  a |
  r |
  r |
  r |
  r |
  %350
  r |
  r |
  e'4 e |
  fs gs |
  a2 |
  %355
  gs |
  r |
  r |
  r |
  r |
  %360
  r |
  r |
  r |
  r |
  a8[ b] c4 |
  %365
  b8[ a] b4 |
  a2 ~ |
  a |
  r |
  r |
  %370
  r |
  r |
  r |
  r |
  e4 e |
  %375
  f e |
  d8[ c] d4 |
  c2 |
  r |
  r |
  %380
  r |
  r |
  r |
  r |
  e4 fs |
  %385
  g e |
  a g |
  fs2 |
  e |
  r |
  %390
  r |
  r |
  r |
  r |
  r |
  %395
  e4 e |
  d c |
  b2 |
  a ~ |
  a |
  %400
  r |
  r |
  r |
  r |
  r |
  %405
  r^\fermata |
}

altoWordsIX = \lyricmode {
  %300
   |
   |
   |
   |
   |
  %305
   |
   |
   |
  Gu -- te |
  Nacht, o |
  %310
  We -- |
  sen, |
   |
   |
   |
  %315
   |
   |
   |
  das die |
  Welt er -- |
  %320
  le -- |
  sen, |
   |
   |
   |
  %325
   |
   |
   |
   |
   |
  %330
  mir __ ge -- |
  fällst __ du |
  nicht! __ %|
   |
   |
  %335
   |
   |
   |
   |
   |
  %340
   |
   |
  Gu -- te |
  Nacht, ihr |
  Sün -- |
  %345
  den, |
   |
   |
   |
   |
  %350
   |
   |
  blei -- bet |
  weit da -- |
  hin -- |
  %355
  ten, |
   |
   |
   |
   |
  %360
   |
   |
   |
   |
  kommt __ nicht |
  %365
  mehr __ ans |
  Licht! __ %|
   |
   |
   |
  %370
   |
   |
   |
   |
  Gu -- te |
  %375
  Nacht, du |
  Stolz __ und |
  Pracht! |
   |
   |
  %380
   |
   |
   |
   |
  Dir sei |
  %385
  ganz, du |
  La -- ster -- |
  le -- |
  ben, |
   |
  %390
   |
   |
   |
   |
   |
  %395
  gu -- te |
  Nacht ge -- |
  ge -- |
  ben! __ %|
   |
  %400
   |
   |
   |
   |
   |
  %405
   |
}

tenorIX = \relative {
  %300
  a8 b c d |
  e e, r4 |
  a8^\p b c d |
  e e, r4 |
  e'8^\f d cs a |
  %305
  d d, d' c! |
  b[ c] b[ a] |
  gs[ e fs gs] |
  a[ g!] f![ e] |
  f[ e] e[ ds] |
  %310
  e4. e8 |
  a[ b cs a] |
  d[ c! b a] |
  g[ a b g] |
  c[ b a g] |
  %315
  fs b gs e |
  a[ b] c[ d] |
  e[ d e e,] |
  a b c a |
  d[ b] e[ d] |
  %320
  c[ b c d] |
  e e, e'4 ~ |
  e8 d c b |
  a[ g f e] |
  d[ e f d] |
  %325
  g[ f e d] |
  c[ c' d e] |
  f[ e d c] |
  b[ c d b] |
  e[ d c b] |
  %330
  a g f e |
  d([ c d e] |
  f) e d cs |
  d[ e] f[ g] |
  a b c d |
  %335
  e4 r4 |
  a,8 b c d |
  e e, r4 |
  e'8 d cs a |
  d d, d' c! |
  %340
  b[ c] b[ a] |
  gs[ e fs gs] |
  a[ g!] f![ e] |
  f[ e] e[ ds] |
  e4. e8 |
  %345
  a[ b cs a] |
  d c! b a |
  g[ a] b[ g] |
  c[ b a g] |
  fs b gs e |
  %350
  a[ b] c[ d] |
  e[ d e e,] |
  a b c a |
  d[ b] e[ d] |
  c[ b c d] |
  %355
  e e, e'4 ~ |
  e8 d c b |
  a g f e |
  d[ e f d] |
  g[ f e d] |
  %360
  c[ c' d e] |
  f[ e d c] |
  b[ c d b] |
  e[ d c b] |
  a[ g] f[ e] |
  %365
  d[ c] d[ e] |
  f[ e] d[ cs] |
  d[ e] f[ g] |
  a4 r4 |
  a8[ b] cs[ a] |
  %370
  d d, d' c! |
  b c[ b] a |
  gs e e' d |
  c d[ c] b |
  a g[ f] e |
  %375
  d f a g |
  f e f g |
  a g[ a] f |
  c2 ~ |
  c ~ |
  %380
  c8 \mark \default e' f d |
  e c[ b] a |
  g f e a |
  d, d'[ c] b |
  a g[ a] b |
  %385
  e,2 ~ |
  e |
  r8 a4 b8 |
  c g c c |
  c[ b16 a] b8[ cs] |
  %390
  d a d4 ~ |
  d8 c!16[ b] c8 d |
  e e, e' d |
  c e c a |
  fs[ e fs gs] |
  %395
  a g! f! e |
  f[ e] e[ ds] |
  e4 e8 e' |
  a,[ b] cs[ a] |
  d[ c! b a] |
  %400
  g a b g |
  c b a g |
  fs b gs e |
  a[ b] c[ d] |
  e[ d e e,] |
  %405
  a2^\fermata
}

tenorWordsIX = \lyricmode {
  %300
  Gu -- te Nacht, o |
  We -- sen, |
  gu -- te Nacht, o |
  We -- sen, |
  gu -- te Nacht, o |
  %305
  We -- sen, gu -- te |
  Nacht, __ o __ |
  We -- |
  _ sen, __ |
  gu -- te __ |
  %310
  Nacht, o |
  We -- |
  _ |
  _ |
  _ |
  %315
  _ sen, gu -- te |
  Nacht, __ o __ |
  We -- %|
  _ sen, das die |
  Welt __ er -- |
  %320
  le -- %|
  _ sen, das __ %|
  die Welt er -- |
  le -- |
  _ |
  %325
  _ |
  _ |
  _ |
  _ |
  _ |
  %330
  _ sen mir ge -- |
  fällst __ %|
  du, mir ge -- |
  fällst __ du __ |
  nicht, ge -- fällst du |
  %335
  nicht. |
  Gu -- te Nacht, ihr |
  Sün -- den, |
  gu -- te Nacht, ihr |
  Sün -- den, gu -- te |
  %340
  Nacht, __ ihr __ |
  Sün -- |
  _ den, __ |
  gu -- te __ |
  Nacht, ihr |
  %345
  Sün -- %|
  _ den, gu -- te |
  Nacht, __ ihr __ |
  Sün -- %|
  _ den, gu -- te |
  %350
  Nacht, __ ihr __ |
  Sün -- %|
  _ den, blei -- bet |
  weit __ da -- |
  hin -- %|
  %355
  _ ten, blei -- %|
  bet weit da -- |
  hin -- ten, blei -- bet |
  weit __ |
  _ |
  %360
  _ |
  _ |
  _ |
  _ |
  _ da -- |
  %365
  hin -- ten, __ |
  kommt __ nicht __ |
  mehr __ ans __ |
  Licht! |
  Gu -- te __ |
  %370
  Nacht, du Stolz und |
  Pracht, gu -- te |
  Nacht, du Stolz und |
  Pracht, gu -- te |
  Nacht, gu -- te |
  %375
  Nacht, du Stolz und |
  Pracht, du Stolz und |
  Pracht, gu -- te |
  Nacht, __ %|
   %|
  %380
  du Stolz und |
  Pracht, gu -- te |
  Nacht, du Stolz und |
  Pracht, gu -- te |
  Nacht, gu -- te |
  %385
  Nacht! __ %|
   %|
  Dir sei |
  ganz, du La -- ster -- |
  le -- _ |
  %390
  _ ben, gu -- %|
  te Nacht ge -- |
  ge -- ben, dir sei |
  ganz, du La -- ster -- |
  le -- %|
  %395
  _ ben, gu -- te |
  Nacht __ ge -- |
  ge -- ben, du |
  La -- ster -- |
  le -- %|
  %400
  _ ben, dir sei |
  ganz, du La -- ster -- |
  le -- ben, gu -- te |
  Nacht, __ ge -- |
  ge -- |
  %405
  ben!
}

keyStuff = {
  \key c \major
  \time 2/4
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil IX"
    copyright = ""
  }
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = "Sopran I"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "cantus" << \clef violin \keyStuff \sopranoOneIX >>
        \new Lyrics \lyricsto "cantus" \sopranoOneWordsIX
      >>
      \new Staff \with {
        instrumentName = "Sopran II"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "soprano" << \clef violin \keyStuff \sopranoTwoIX >>
        \new Lyrics \lyricsto "soprano" \sopranoTwoWordsIX
      >>
      \new Staff \with {
        instrumentName = "Alt"
        midiInstrument = #"viola"
        autoBeaming = ##f
      } <<
        \new Voice = "alto" << \clef violin \keyStuff \altoIX >>
        \new Lyrics \lyricsto "alto" \altoWordsIX
      >>
      \new Staff \with {
        instrumentName = "Tenor"
        midiInstrument = #"cello"
        autoBeaming = ##f
      } <<
        \new Voice = "tenor" << \clef "G2_8" \keyStuff \tenorIX >>
        \new Lyrics \lyricsto "tenor" \tenorWordsIX
      >>
    >>
    %%\midi { \tempo 4 = 120 }
  }
  \paper {
    bookTitleMarkup = \markup \null
    min-systems-per-page = #4
  }
}

