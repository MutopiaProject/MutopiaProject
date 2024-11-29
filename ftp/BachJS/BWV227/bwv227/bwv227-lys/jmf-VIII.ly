\version "2.25.19"
\include "english.ly"

altoVIII = \relative {
  \tocItem \markup { \bold "Teil VIII" " — " \italic "So aber Christus in euch ist" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #277
  \mark #26 r8 r g' e4 f8 g[ a] b c[ b] c |
  b4 b8 c[ b] a g4. ~ g4 b,8 |
  c4 b8 c4 d8 e[ f] d e[ g] fs |
  %280
  g4 d8 g4 a8 bf4. ~ bf8[ a] g |
  f4. ~ f4 a8 gs4 a8 b!4. ~ |
  b4 e,8 a4 b8 c4. ~ c8[ b] a |
  g4. ~ g8 a g f4. ~ f8[ g] f |
  e4. ~ e8 fs g a[ c] bf c4 ef,8 |
  %285
  ef4( d8) r8 a' c bf[ a] g fs4( g8) |
  g4 \mark \default r8 r4 r8 r2. |
  r8 r g c16[ d c bf a g f8] bf a g[ c] bf |
  a16[ g a bf g a] bf[ a bf c bf a] g[ f g a f g] a[ g a bf a g] |
  f[ e f g e f] g4. ~ g16[ f g a f g] a4. ~ |
  %290
  a8 g f e[ f] g f a16[ g] f[ e] f8 d d |
  e16[ d e f d e] fs[ e fs g e fs] g4. ~ g16[ a g f! e d] |
  c8 f e d[ g] f e16[ d e f g a] b[ a b c a b] |
  c8 c, c f[ e] d g4. ~ g8 a g |
  f d e f[ g] a bf4. ~ bf8 c bf |
  %295
  a b! c f,4. ~ f8 d e f[ d] e |
  f d e f[ a] g g f e d4. |
  c4 r8 r4 r8 r r a' g[ f] e |
  f16[ g f e d f] e4. ~ e8 a f d4. |
  e r4 r8 r2. \bar "|." |
}

altoWordsVIII = \lyricmode {
  So a -- ber Chri -- stus in __ euch |
  ist, so Chri -- stus in __ euch |
  ist, so a -- ber Chri -- stus in __ euch |
  %280
  ist, so ist der Leib __ zwar |
  tot, __ der Leib zwar tot, __ %|
  so ist der Leib __ zwar |
  tot __ un der Sün -- de |
  wil -- len, so ist __ der Leib zwar |
  %285
  tot __ um der Sün -- de will -- |
  len; %|
  der Geist __ a -- ber ist __ das |
  Le -- _ _ _ |
  _ _ _ %|
  %290
  ben um der __ Ge -- rech -- tig -- keit __ wil -- len, der |
  Geist __ _ _ %|
  _ a -- ber ist __ das Le -- _ |
  _ ben um der __ Ge -- rech -- tig -- keit |
  wil -- len, um der __ Ge -- rech -- tig -- keit |
  %295
  wil -- len, der Geist __ a -- ber ist __ das |
  Le -- ben um der __ Ge -- rech -- tig -- keit wil -- |
  len, um der __ Ge -- |
  rech -- _ tig -- keit wil -- |
  len. |
}

tenorVIII = \relative {
  r8 r e' c4 d8 e[ f] d e[ g] fs |
  g4. ~ g4 f!8 e[ d] c b[ c] d |
  g,4 f8 e4 f8 g[ a] b c[ b] c |
  %280
  b4 r8 r r d cs4 d8 e4. ~ |
  e4 a,8 d4 e8 f4. ~ f8[ e] d |
  c4. ~ c4 e8 ds4 e8 fs4. ~ |
  fs4 b,8 e4. ~ e8 d! c b4 g8 |
  c4. ~ c8 a bf c4 d8 ef[ d] c |
  %285
  c bf a d4. ~ d8[ c] bf! a4( g8) |
  g4 d'8 g16[ a g f e d c8] f e d[ g] f |
  e16[ d e f e d] c[ bf c d bf c] d[ c d e c d] e[ d e f d e] |
  f[ e f g e f] g[ f g a g f] e[ d e f d e] f[ e f g f e] |
  d4. ~ d16[ cs d e cs d] e4. ~ e16[ d e f d e] |
  %290
  f8 e d d4( cs8) d4 a8 d16[ e d c! b a] |
  g8 c b a[ d] c b16[ a b c d b] e[ f e d c b] |
  a[ g a b g a] b[ a b c a b] c[ b c d e c d8] g, g |
  a16[ g a b g a] b[ a b c a b] c[ b c d bf c a8] b! cs |
  d4. ~ d8[ e] f e16[ d e f g e] c!4. ~ |
  %295
  c8 d e f a, a d b c d[ b] c |
  d b c d[ c] b c b c c4.^\trill |
  c4 e8 d[ c] b c16[ d c b a c] b[ a b d cs e] |
  d4. ~ d8[ c! b] c e c a4.^\trill |
  gs4. r4 r8 r2. |
}

tenorWordsVIII = \lyricmode {
  So a -- ber Chri -- stus in__ euch |
  ist, __ so Chri -- stus in __ euch |
  ist, so a-- ber Chri -- stus in __ euch |
  %280
  ist, so ist der Leib, __ %|
  so ist der Leib, __ zwar |
  tot, __ so ist der Leib __ %|
  zwar tot __ um der Sün -- de |
  wil -- len, so ist der Leib __ zwar |
  %285
  tot um der Sün -- de wil -- |
  len; der Geist __ a -- ber ist __ das |
  Le -- _ _ _ |
  _ _ _ _ |
  _ _ |
  %290
  _ ben, das Le -- ben, der Geist __ %|
  _ a -- ber ist __ das Le -- _ |
  _ _ _ ben, das |
  Le -- _ _ ben um |
  der __ Ge -- rech -- _ %|
  %295
  tig -- keit wil -- len, der Geist a -- ber ist __ das |
  Le -- ben um der __ Ge -- rech -- tig -- keit wil -- |
  len, um der __ Ge -- rech -- _ |
  _ _ tig -- keit wil -- |
  len. |
}

bassVIII = \relative {
  c4. c' ~ c4 b8 a4 d,8 |
  g4 g,8 a4 b8 c[ d] e f[ e] f |
  e[ f] g c,4. ~ c4 b8 a4 d8 |
  %280
  g,4 r8 r r f'8 e4 d8 cs4 cs8 |
  d4. ~ d4 c'!8 b4( a8) gs4. |
  a4. ~ a4 g!8 fs4 e8 ds4 ds8 |
  e4( d!8) cs4 a8 d[ e] f! g a b |
  c4 bf8 a4 g8 fs2. ~ |
  %285
  fs4 r8 r fs8 d g4 c,8 d4. |
  g,4 r8 r r g'8 a16[ g a b g a] b[ a b c a b] |
  c8 c bf a[ g] f bf16[ a] g4 c16[ bf] a4 |
  d8 d, d' bf[ g] bf c c, c' a f a |
  bf4. ~ bf8[ g] e cs4. ~ cs16[ b! cs d b cs] |
  %290
  d8 bf' g a4( a,8) d4 c!8 b!4 g8 |
  c b c d4. g,4 r8 r4 r8 |
  r2. r8 r c8 \mark \default g'16[ a g f e d] |
  c8 f e d[ g] f e16[ d e f d e] f[ e f g e f] |
  d[ c d e c d] bf[ a bf c a bf g8] g' f e16[ d e f d e] |
  %295
  f[ e f g e f d8] d' c b16[ a b c a b] g[ f g a g a] |
  g[ f g a g a] g[ f g a f g e8] d c g'4( g,8) |
  c4 c'8 b[ a] gs a2. ~ |
  a8[ d16 c b a] gs[ a gs fs gs e a8] c a f!4.^\trill |
  e r4 r8 r2. |
}

bassWordsVIII = \lyricmode {
  So a -- ber Chri -- stus |
  in euch ist, so Chri -- stus in __ euch |
  ist, __ so Chri -- stus in euch |
  %280
  ist, so ist der Leib zwar |
  tot, __ der Leib __ zwar |
  tot, __ so ist der Leib zwar |
  tot __ um der Sün -- de wil -- len, so |
  ist der Leib zwar tot __ %|
  %285
  um der Sün -- de wil -- |
  len; der Geist __ _ %|
  _ a -- ber ist __ das Le -- _ _ _ |
  _ ben, um der __ Ge -- rech -- tig -- keit wil -- len, um |
  der __ Ge -- rech -- %|
  %290
  _ tig -- keit wil -- len, um der Ge -- |
  rech -- tig -- keit wil -- len, %|
  der Geist __ %|
  _ a -- ber ist __ das Le -- _ |
  _ _ ben, das Le -- |
  %295
  _ ben, das Le -- _ |
  _ _ ben, das Le -- |
  ben um der __ Ge -- rech -- %|
  _ tig -- keit wil -- |
  len. |
}

keyStuff = {
  \key c \major
  \time 12/8
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil VIII"
    copyright = ""
  }
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = "Alt"
        midiInstrument = #"viola"
        autoBeaming = ##f
      } <<
        \new Voice = "alto" << \clef violin \keyStuff \altoVIII >>
        \new Lyrics \lyricsto "alto" \altoWordsVIII
      >>
      \new Staff \with {
        instrumentName = "Tenor"
        midiInstrument = #"cello"
        autoBeaming = ##f
      } <<
        \new Voice = "tenor" << \clef "G2_8" \keyStuff \tenorVIII >>
        \new Lyrics \lyricsto "tenor" \tenorWordsVIII
      >>
      \new Staff \with {
        instrumentName = "Baß"
        midiInstrument = #"contrabass"
        autoBeaming = ##f
      } <<
        \new Voice = "bass" << \clef "F" \keyStuff \bassVIII >>
        \new Lyrics \lyricsto "bass" \bassWordsVIII
      >>
    >>
    %%\midi { \tempo 4 = 120 }
  }
  \paper {
    bookTitleMarkup = \markup \null
    min-systems-per-page = #5
  }
}

