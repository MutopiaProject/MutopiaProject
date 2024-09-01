\version "2.25.19"
\include "english.ly"

sopranoXI = \relative {
  \tocItem \markup { \bold "Teil XI" " (Choral)" " — " \italic "Weicht, ihr Trauergeister" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #447
  \mark #41 b'4 b a g |
  fs2 e2^\fermata |
  b'4 cs d b |
  %450
  e2 ds^\fermata |
  e8[ fs] g4 fs4. fs8 |
  e1^\fermata | %<<bis
  b4 b a g |
  fs2 e2^\fermata |
  %455
  b'4 cs d b |
  e2 ds^\fermata |
  e8[ fs] g4 fs4. fs8 |
  e1^\fermata | %bis>>
  \mark \default b4 b c b |
  %460
  a4. a8 g2^\fermata |
  b4 cs d b |
  e d8[ cs] cs2 |
  b^\fermata b4 b |
  a g fs2 |
  %465
  e1^\fermata \bar "|." |
}

sopranoWordsXI = \lyricmode {
  Weicht, ihr Trau -- er -- |
  gei -- ster, |
  denn mein Freu -- den -- |
  %450
  mei -- ster, |
  Je -- sus, tritt her -- |
  ein. |
  De -- nen, die __ Gott |
  lie -- ben, |
  %455
  muß auch ihr Be -- |
  trü -- ben |
  lau -- ter Zuk -- ker |
  sein. |
  Duld ich schon hier |
  %460
  Spott und Hohn, |
  den -- noch bleibst du |
  auch im __ Lei -- |
  de, Je -- su, |
  mei -- ne Freu -- |
  %465
  de. |
}

altoXI = \relative {
  g'4 fs e8[ ds] e4 |
  e4( ds) b2^\fermata |
  g'8[ fs] e4 d! d |
  %450
  g8([ a] b4) b2^\fermata |
  g8[ a] b4 b4. a8 |
  g1^\fermata | %<<bis
  g4 fs e8[ ds] e4 |
  e4( ds) b2^\fermata |
  %455
  g'8[ fs] e4 d! d |
  g8([ a] b4) b2^\fermata |
  g8[ a] b4 b4. a8 |
  g1^\fermata | %bis>>
  g4 g a g |
  %460
  g fs d2^\fermata |
  g4 g a g8[ a] |
  b4 b b( as) |
  fs2^\fermata g4 fs |
  e e e( ds) |
  %465
  b1^\fermata |
}

altoWordsXI = \lyricmode {
  Weicht, ihr Trau -- er -- |
  gei -- ster, |
  denn __ mein Freu -- den -- |
  %450
  mei -- ster, |
  Je -- sus, tritt her -- |
  ein. |
  De -- nen, die __ Gott |
  lie -- ben, |
  %455
  muß __ auch ihr Be -- |
  trü -- ben |
  lau -- ter Zuk -- ker |
  sein. |
  Duld ich schon hier |
  %460
  Spott und Hohn, |
  den -- noch bleibst du __ |
  auch im Lei -- |
  de, Je -- su, |
  mei -- ne Freu -- |
  %465
  de. |
}

tenorXI = \relative {
  e'4 b4 c8[ fs,] g4 |
  c4( b8[ a]) g2^\fermata |
  e'8[ d] cs[ b] a4 g8[ a] |
  %450
  b4( g') fs2^\fermata |
  e4 e e ds |
  b1^\fermata | %<<bis
  e4 b4 c8[ fs,] g4 |
  c4( b8[ a]) g2^\fermata |
  %455
  e'8[ d] cs[ b] a4 g8[ a] |
  b4( g') fs2^\fermata |
  e4 e e ds |
  b1^\fermata | %bis>>
  e4 d! d d |
  %460
  e d8[ c] b2^\fermata |
  d4 e d d |
  g fs g( fs8[ e]) |
  ds2^\fermata e4 fs8[ g] |
  a8[ a,] b4 c( b8[ a]) |
  %465
  gs1^\fermata |
}

tenorWordsXI = \lyricmode {
  Weicht, ihr Trau -- er -- |
  gei -- ster, |
  denn __ mein __ Freu -- den -- |
  %450
  mei -- ster, |
  Je -- sus, tritt her -- |
  ein. |
  De -- nen, die __ Gott |
  lie -- ben, |
  %455
  muß __ auch __ ihr Be -- |
  trü -- ben |
  lau -- ter Zuk -- ker |
  sein. |
  Duld ich schon hier |
  %460
  Spott und __ Hohn, |
  den -- noch bleibst du |
  auch im Lei -- |
  de, Je -- su __ |
  mei -- ne Freu -- |
  %465
  de. |
}

bassXI = \relative {
  e4 d c4. b8 |
  a4( b) e2^\fermata |
  e4 a8[ g] fs4 g8[ fs] |
  %450
  e[ fs g a] b2^\fermata |
  c4 b8[ a] b4 b, |
  e1^\fermata | %<<bis
  e4 d c4. b8 |
  a4( b) e2^\fermata |
  %455
  e4 a8[ g] fs4 g8[ fs] |
  e[ fs g a] b2^\fermata |
  c4 b8[ a] b4 b, |
  e1^\fermata | %bis>>
  e8[ fs] g4 fs4 g |
  %460
  c, d g,2^\fermata |
  g'4 fs8[ e] fs4 g8[ fs] |
  e4 b e( fs) |
  b,2^\fermata e4 d4 |
  c b a( b) |
  %465
  e1^\fermata |
}

bassWordsXI = \lyricmode {
  Weicht, ihr Trau -- er -- |
  gei -- ster, |
  denn mein __ Freu -- den -- |
  %450
  mei -- ster, |
  Je -- sus, __ tritt her -- |
  ein. |
  De -- nen, die Gott |
  lie -- ben, |
  %455
  muß auch __ ihr Be -- |
  trü -- ben |
  lau -- ter __ Zuk -- ker |
  sein. |
  Duld __ ich schon hier |
  %460
  Spott und Hohn, |
  den -- noch __ bleibst du __ |
  auch im Lei -- |
  de, Je -- su, |
  mei -- ne Freu -- |
  %465
  de. |
}

keyStuff = {
  \key g \major
  \time 4/4
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil XI (Choral)"
    copyright = ""
  }
  \score {
    \new ChoirStaff  \with { \defaultTimeSignature } <<
      \new Staff \with {
        instrumentName = "Sopran"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "soprano" << \clef violin \keyStuff \sopranoXI >>
        \new Lyrics \lyricsto "soprano" \sopranoWordsXI
      >>
      \new Staff \with {
        instrumentName = "Alt"
        midiInstrument = #"viola"
        autoBeaming = ##f
      } <<
        \new Voice = "alto" << \clef violin \keyStuff \altoXI >>
        \new Lyrics \lyricsto "alto" \altoWordsXI
      >>
      \new Staff \with {
        instrumentName = "Tenor"
        midiInstrument = #"cello"
        autoBeaming = ##f
      } <<
        \new Voice = "tenor" << \clef "G2_8" \keyStuff \tenorXI >>
        \new Lyrics \lyricsto "tenor" \tenorWordsXI
      >>
      \new Staff \with {
        instrumentName = "Baß"
        midiInstrument = #"contrabass"
        autoBeaming = ##f
      } <<
        \new Voice = "bass" << \clef "F" \keyStuff \bassXI >>
        \new Lyrics \lyricsto "bass" \bassWordsXI
      >>
    >>
    %\midi { \tempo 4 = 120 }
  }
  \paper {
    bookTitleMarkup = \markup \null
    min-systems-per-page = #4
  }
}

