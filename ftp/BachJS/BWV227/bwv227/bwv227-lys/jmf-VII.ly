\version "2.25.19"
\include "english.ly"

sopranoI = \relative {
  \tocItem \markup { \bold "Teil VII" " (Choral)" " — " \italic "Weg mit allen Schätzen" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #258
  \mark #24 b'4 b a g |
  fs2 e2^\fermata |
  %260
  b'4 cs d b |
  e2 ds^\fermata |
  e8[ fs] g4 fs4. fs8 |
  e1^\fermata | %<<bis
  b4 b a g |
  %265
  fs2 e2^\fermata |
  b'4 cs d b |
  e2 ds^\fermata |
  e8[ fs] g4 fs4. fs8 |
  e1^\fermata | %bis>>
  %270
  \mark \default b4 b c b |
  a4. a8 g2^\fermata |
  b4 cs d b |
  e d cs2 |
  b^\fermata b4 b |
  %275
  a g fs2 |
  e1^\fermata \bar "|." |
}

sopranoWordsI = \lyricmode {
  Weg mit al -- len |
  Schät -- zen! |
  %260
  Du bist mein Er -- |
  göt -- zen, |
  Je -- su, mei -- ne |
  Lust! |
  Weg ihr eit -- len |
  %265
  Eh -- ren, |
  ich mag euch nicht |
  hö -- ren, |
  bleibt mir un -- be -- |
  wußt! |
  %270
  E -- lend, Not, Kreuz, |
  Schmach und Tod |
  soll mich, ob ich |
  viel muß lei -- |
  den, nicht von |
  %275
  Je -- su schei -- |
  den. |
}

altoI = \relative {
  r8 g' b g g( fs4) e8 |
  e8([ ds16 cs] ds4) e8 ds e fs |
  %260
  g16[ fs] g8 r e a4. g16[ fs] |
  g8 a16[ b] a4^\trill b r8 c( |
  b8[ a]) g[ b] c[ a] fs4 |
  b8 gs[ e] a gs2 | %<<bis
  r8 g! b g g( fs4) e8 |
  %265
  e8([ ds16 cs] ds4) e8 ds e fs |
  g16[ fs] g8 r e a4. g16[ fs] |
  g8 a16[ b] a4^\trill b r8 c( |
  b8[ a]) g[ b] c[ a] fs4 |
  b8 gs[ e] a gs2 | %bis>>
  %270
  g!8[ a] a[ g] g[ a] a[ g] |
  g4 fs g8 d e fs |
  g d g4 r8 a4( g16[ fs] |
  e8) g fs b b4( as) |
  b8 fs b a! g2 ~ |
  %275
  g8 fs4 e8 e[ d!16 cs] d4 ~ |
  d8[ e16 d] c!16[ b c8] b2^\fermata |
}

altoWordsI = \lyricmode {
  Weg, weg mit al -- len |
  Schät -- zen, mit al -- len |
  %260
  Schät -- zen! Du, du bist __ |
  mein Er -- göt -- zen, Je -- %|
  su, __ mei -- ne |
  Lust, mei -- ne Lust! %|
  Weg, weg ihr eit -- len |
  %265
  Eh -- ren, ihr eit -- len |
  Eh -- ren, ich, ich mag |
  euch nicht hö -- ren, bleibt __ %|
  mir __ un -- be -- |
  wußt, un -- be -- wußt! |
  %270
  E -- lend, __ Not, __ Kreuz, __ |
  Schmach und Tod, Kreuz, Schmach und |
  Tod soll mich, ob __ %|
  ich viel muß lei -- |
  den, nicht, nicht von Je -- %|
  %275
  _ su schei -- _ %|
  _ den. |
}

tenorI = \relative {
  r8 b e b e ds e g, |
  c8[ b16 a b8 a] g a g fs |
  %260
  e e r4 r8 fs d' a |
  b a16[ g] e'[ ds e8] fs4 r |
  r8 ds( e4.) e8 d!4 ~ |
  d c16[ b c8] b2 | %<<bis
  r8 b e b e ds e g, |
  %265
  c8[ b16 a b8 a] g a g fs |
  e e r4 r8 fs d' a |
  b a16[ g] e'[ ds e8] fs4 r |
  r8 ds( e4.) e8 d!4 ~ |
  d c16[ b c8] b2 | %bis>>
  %270
  e8[ fs] fs[ e] e[ d] d[ e] |
  e4 d8[ c] c[ b] c a |
  g b e a,4 g16[ fs] d'4 ~ |
  d8 cs d[ e16 fs] g8[ as, fs' e ] |
  ds4 r8 b e e16[ ds] e4 ~ |
  %275
  e8[ ds] e[ g,] c![ a] fs b |
  b[ gs] e a4( gs8) gs4^\fermata |
}

tenorWordsI = \lyricmode {
  Weg, weg, weg, weg mit al -- len |
  Schät -- zen, mit al -- len |
  %260
  Schät -- zen! Du, du bist |
  mein Er -- göt -- zen, %|
  Je -- su, mei -- %|
  ne __ Lust! %|
  Weg, weg, weg, weg ihr eit -- len |
  %265
  Eh -- ren, ihr eit -- len |
  Eh -- ren, ich, ich mag |
  euch nicht hö -- ren, %|
  bleibt __ mir un -- %|
  be -- wußt! |
  %270
  E -- lend, __ Not, __ Kreuz, __ |
  Schmach und __ Tod, __ Schmach und |
  Tod soll mich, ob ich __ viel __ %|
  muß lei -- _ |
  den, nicht, nicht von Je -- %|
  %275
  su __ schei -- den, von |
  Je -- su schei -- den. |
}

bassI = \relative {
  r8 e g e c' r r b |
  a fs b[ b,] e4 r |
  %260
  r8 e a g fs d g4 ~ |
  g8[ fs16 e] c'4 b8 c8[ b] a |
  g[ fs] e[ g] a[ fs] b[ a] |
  gs e[ a] a, e'2 | %<<bis
  r8 e g e c' r r b |
  %265
  a fs b[ b,] e4 r |
  r8 e a g fs d g4 ~ |
  g8[ fs16 e] c'4 b8 c8[ b] a |
  g[ fs] e[ g] a[ fs] b[ a] |
  gs e[ a] a, e'2 | %bis>>
  %270
  e8[ ds] ds[ e] e[ fs] g![ e] |
  c[ cs] d4 g,2 |
  r8 g'4( fs16[ e] fs8) d g fs |
  gs[ as] b[ g!] e([ es] fs4) |
  b,2 r8 e! g e |
  %275
  c' r r b a[ fs] b[ a] |
  gs[ e a a,] e'2^\fermata |
}

bassWordsI = \lyricmode {
  Weg, weg, weg, weg mit |
  al -- len Schät -- zen, %|
  %260
  du, du bist mein Er -- göt -- %|
  _ zen, Je -- su, |
  Je -- su, __ mei -- ne __ |
  Lust, mei -- ne Lust! %|
  Weg, weg, weg, weg, ihr |
  %265
  eit -- len Eh -- ren, %|
  ich, ich mag euch nicht hö -- %|
  _ ren, bleibt __ mir, |
  bleibt __ mir __ un -- be -- |
  wußt, un -- be -- wußt! |
  %270
  E -- lend, __ Not, __ Kreuz, __ |
  Schmach __ und Tod, %|
  soll __ mich, ob ich |
  viel __ muß __ lei -- |
  den, nicht, nicht, nicht, |
  %275
  nicht von Je -- su __ |
  schei -- den. |
}

keyStuff = {
  \key g \major
  \time 4/4
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil VII (Choral)"
    copyright = ""
  }
  \score {
    \new ChoirStaff \with { \defaultTimeSignature } <<
      \new Staff \with {
        instrumentName = "Sopran"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "soprano" << \clef violin \keyStuff \sopranoI >>
        \new Lyrics \lyricsto "soprano" \sopranoWordsI
      >>
      \new Staff \with {
        instrumentName = "Alt"
        midiInstrument = #"viola"
        autoBeaming = ##f
      } <<
        \new Voice = "alto" << \clef violin \keyStuff \altoI >>
        \new Lyrics \lyricsto "alto" \altoWordsI
      >>
      \new Staff \with {
        instrumentName = "Tenor"
        midiInstrument = #"cello"
        autoBeaming = ##f
      } <<
        \new Voice = "tenor" << \clef "G2_8" \keyStuff \tenorI >>
        \new Lyrics \lyricsto "tenor" \tenorWordsI
      >>
      \new Staff \with {
        instrumentName = "Baß"
        midiInstrument = #"contrabass"
        autoBeaming = ##f
      } <<
        \new Voice = "bass" << \clef "F" \keyStuff \bassI >>
        \new Lyrics \lyricsto "bass" \bassWordsI
      >>
    >>
    %\midi { \tempo 4 = 120 }
  }
  \paper {
    bookTitleMarkup = \markup \null
    min-systems-per-page = #4
  }
}

