\version "2.25.19"
\include "english.ly"

sopranoI = \relative {
  \tocItem \markup { \bold "Teil I" " (Choral)" " — " \italic "Jesu, meine Freude" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #1
  \mark #1 b'4 b a g |
  fs2 e2^\fermata |
  b'4 cs d b |
  e2 ds^\fermata |
  %5
  e8[ fs] g4 fs4. fs8 |
  e1^\fermata | %<<bis
  b4 b a g |
  fs2 e2^\fermata |
  b'4 cs d b |
  %10
  e2 ds^\fermata |
  e8[ fs] g4 fs4. fs8 |
  e1^\fermata | %bis>>
  \mark \default b4 b c b |
  a4. a8 g2^\fermata |
  %15
  b4 cs d b |
  e d8[ cs] cs2 |
  b^\fermata b4 b |
  a g8[ fs8] fs2 |
  e1^\fermata \bar "|." |
}

sopranoWordsI = \lyricmode {
  Je -- su, mei -- ne |
  Freu -- de, |
  mei -- nes Her -- zens |
  Wei -- de, |
  %5
  Je -- su, mei -- ne |
  Zier, | 
  ach, wie lang, ach, |
  lan -- ge |
  ist dem Her -- zen |
  %10
  ban -- ge, |
  und ver -- langt nach |
  dir. |
  Got -- tes Lamm, mein |
  Bräu -- ti -- gam, |
  %15
  au -- ßer dir soll |
  mir auf Er -- |
  den nichts sonst |
  Lie -- bers wer -- |
  den. |
}

altoI = \relative {
  g'4 fs e8[ ds] e4 |
  e4( ds) b2^\fermata |
  g'8[ fs] e4 d! d |
  g8([ a] b4) b2^\fermata |
  %5
  g8[ a8] b4 b4. a8 |
  g1^\fermata | %<<bis
  g4 fs e8[ ds] e4 |
  e4( ds) b2^\fermata |
  g'8[ fs] e4 d! d |
  %10
  g8([ a] b4) b2^\fermata |
  g8[ a8] b4 b4. a8 |
  g1^\fermata | %bis>>
  g4 g a g |
  g fs d2^\fermata |
  %15
  g4 g a g8[ a] |
  b4 b b( as) |
  fs2^\fermata g4 fs |
  e e e( ds) |
  b1^\fermata |
}

altoWordsI = \lyricmode {
  Je -- su, mei -- ne |
  Freu -- de, |
  mei -- nes Her -- zens |
  Wei -- de, |
  %5
  Je -- su, mei -- ne |
  Zier, | 
  ach, wie lang, ach, |
  lan -- ge |
  ist __ dem Her -- zen |
  %10
  ban -- ge, |
  und ver -- langt nach |
  dir. |
  Got -- tes Lamm, mein |
  Bräu -- ti -- gam, |
  %15
  au -- ßer dir soll |
  mir auf Er -- |
  den nichts sonst |
  Lie -- bers wer -- |
  den. |
}

tenorI = \relative {
  e'4 b4 c8[ fs,] g4 |
  c4( b8[ a]) g2^\fermata |
  e'8[ d] cs[ b] a4 g8[ a] |
  b4( g') fs2^\fermata |
  %5
  e4 e e ds |
  b1^\fermata | %<<bis
  e4 b4 c8[ fs,] g4 |
  c4( b8[ a]) g2^\fermata |
  e'8[ d] cs[ b] a4 g8[ a] |
  %10
  b4( g') fs2^\fermata |
  e4 e e ds |
  b1^\fermata | %bis>>
  e4 d! d d |
  e d8[ c] b2^\fermata |
  %15
  d4 e d d |
  g fs g( fs8[ e]) |
  ds2^\fermata e4 fs8[ g] |
  a8[ a,] b4 c( b8[ a]) |
  b1^\fermata |
}

tenorWordsI = \lyricmode {
  Je -- su, mei -- ne |
  Freu -- de, |
  mei -- nes Her -- zens |
  Wei -- de, |
  %5
  Je -- su, mei -- ne |
  Zier, | 
  ach, wie lang, ach, |
  lan -- ge |
  ist __ dem Her -- zen __ |
  %10
  ban -- ge, |
  und ver -- langt nach |
  dir. |
  Got -- tes Lamm, mein |
  Bräu -- ti -- gam, |
  %15
  au -- ßer dir soll |
  mir auf Er -- |
  den nichts sonst |
  Lie -- bers wer -- |
  den. |
}

bassI = \relative {
  e4 d c4. b8 |
  a4( b) e2^\fermata |
  e4 a8[ g] fs4 g8[ fs] |
  e[ fs g a] b2^\fermata |
  %5
  c4 b8[ a] b4 b, |
  e1^\fermata | %<<bis
  e4 d c4. b8 |
  a4( b) e2^\fermata |
  e4 a8[ g] fs4 g8[ fs] |
  %10
  e[ fs g a] b2^\fermata |
  c4 b8[ a] b4 b, |
  e1^\fermata | %bis>>
  e8[ fs] g4 fs4 g |
  c, d g,2^\fermata |
  %15
  g'4 fs8[ e] fs4 g8[ fs] |
  e4 b e( fs) |
  b,2^\fermata e4 d4 |
  c b a( b) |
  e1^\fermata |
}

bassWordsI = \lyricmode {
  Je -- su, mei -- ne |
  Freu -- de, |
  mei -- nes __ Her -- zens __ |
  Wei -- de, |
  %5
  Je -- su, mei -- ne |
  Zier, | 
  ach, wie lang, ach, |
  lan -- ge |
  ist dem Her -- zen __ |
  %10
  ban -- ge, |
  und ver -- langt nach |
  dir. |
  Got -- tes Lamm, mein |
  Bräu -- ti -- gam, |
  %15
  au -- ßer dir soll |
  mir auf Er -- |
  den nichts sonst |
  Lie -- bers wer -- |
  den. |
}

keyStuff = {
  \key g \major
  \time 4/4
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil I (Choral)"
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

