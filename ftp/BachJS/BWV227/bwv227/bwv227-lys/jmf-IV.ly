\version "2.25.19"
\include "english.ly"

sopranoOneIV = \relative {
  \tocItem \markup { \bold "Teil IV" " — " \italic "Denn das Gesetz" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #123
  \mark #12 b'4 g a |
  b2 c4 |
  %125
  d8[ c] e d c b |
  a[ g fs a] g([ b]) |
  a4 a8 a a b |
  c2. ~ |
  c4 b b |
  %130
  e( fs) g |
  fs8[ e fs e] d4 |
  d8 b e4. d8 |
  c4 a8 fs b4 ~ |
  b8 a g4. a8 |
  %135
  b4. g8 c4 ~ |
  c8 e e[ d] d[ c] |
  b cs ds[ e ds e] |
  fs2. ~ |
  fs8 b, cs[ b] as[ b] |
  %140
  e4 g,8[ fs] g4 |
  \mark \default fs r r |
  r8 b cs ds e fs |
  g[ fs] e4 r8 as, |
  b as d cs cs g' |
  %145
  fs e d4( cs8[ b]) |
  b2.^\fermata \bar "|." |
}

sopranoOneWordsIV = \lyricmode {
  Denn das Ge -- |
  setz des |
  %125
  Gei -- stes, der da le -- |
  ben -- dig __ |
  ma -- chet in Chri -- sto |
  Je -- %|
  su, in |
  %130
  Chri -- sto |
  Je -- su, |
  hat mich frei ge -- |
  macht, hat mich frei __ %|
  ge -- macht, von |
  %135
  dem Ge -- setz, __ %|
  von dem __ Ge -- |
  setz der Sün -- |
  _ %|
  de und __ des __ |
  %140
  To -- _ _ |
  des, %|
  von dem Ge -- setz der |
  Sün -- de, von |
  dem Ge -- setz der Sün -- de |
  %145
  und des To -- |
  des. |
}

sopranoTwoIV = \relative {
  g'4 e fs |
  g2 a4 |
  %125
  b8[ a] c b a g |
  fs[ e d fs] e([ g]) |
  fs4 fs8 fs fs g |
  a2. ~ |
  a4 g g |
  %130
  g( a) b |
  a8[ g a g] fs4 |
  r g8 e a4 ~ |
  a8 g fs4 fs'8 d |
  g4. fs8 e4 |
  %135
  d8 b e4. d8 |
  c b a[ fs] g[ a] |
  b a c!2 ~ |
  c8 b a[ g] a[ fs] |
  g2. ~ |
  %140
  g8[ fs e ds] e4 |
  ds4 r r |
  r2. |
  r8 fs gs as b cs |
  d cs b as b4 ~ |
  %145
  b2 as4 |
  b2.^\fermata |
}

sopranoTwoWordsIV = \lyricmode {
  Denn das Ge -- |
  setz des |
  %125
  Gei -- stes, der da le -- |
  ben -- dig __ |
  ma -- chet in Chri -- sto |
  Je -- %|
  su, in |
  %130
  Chri -- sto |
  Je -- su, %|
  hat mich frei __ %|
  ge -- macht, hat mich |
  frei ge -- macht, |
  %135
  hat mich frei ge -- |
  macht von dem __ Ge -- |
  setz der Sün -- %|
  de und __ des __ |
  To -- %|
  %140
  _ |
  des, %|
   %|
  von dem Ge -- setz der |
  Sün -- de und des To -- %|
   %|
  %145
  _ |
  des. |
}

altoIV = \relative {
  e'2 r4 |
  e d c |
  %125
  b2 c4 |
  d2. ~ |
  d8[ c] e d c b |
  a[ e' a g fs e] |
  fs d g[ fs] e d |
  %130
  c[ d c b] a[ g] |
  d'2 d8[ c] |
  b g c4. b8 |
  a4 d4. b8 |
  e4. d8 c4 |
  %135
  g'4. e8 a4 ~ |
  a8 g fs d e fs |
  g fs a g fs e |
  ds4 ds4. ds8 |
  e fs e[ d!] cs[ b] |
  %140
  as2 as4 |
  r8 b cs ds e fs |
  g4. a8 g fs |
  e2. ~ |
  e2 e8[ cs] |
  %145
  d e fs2 |
  b,2.^\fermata |
}

altoWordsIV = \lyricmode {
  Denn, |
  denn das Ge -- |
  %125
  setz des |
  Gei -- %|
  stes, der da le -- |
  ben -- |
  _ dig ma -- chet in |
  %130
  Chri -- sto __ |
  Je -- su, __ |
  hat mich frei ge -- |
  macht, hat mich |
  frei ge -- macht, |
  %135
  hat mich frei __ %|
  ge -- macht von dem Ge -- |
  setz, von dem Ge -- setz der |
  Sün -- de, der |
  Sün -- de und __ des __ |
  %140
  To -- des, %|
  von dem Ge -- setz der |
  Sün -- de und des |
  To -- %|
  des, __ |
  %145
  und des To -- |
  des.  
}

keyStuff = {
  \key g \major
  \time 3/4
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil IV"
    copyright = ""
  }
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = "Sopran I"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "cantus" << \clef violin \keyStuff \sopranoOneIV >>
        \new Lyrics \lyricsto "cantus" \sopranoOneWordsIV
      >>
      \new Staff \with {
        instrumentName = "Sopran II"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "soprano" << \clef violin \keyStuff \sopranoTwoIV >>
        \new Lyrics \lyricsto "soprano" \sopranoTwoWordsIV
      >>
      \new Staff \with {
        instrumentName = "Alt"
        midiInstrument = #"viola"
        autoBeaming = ##f
      } <<
        \new Voice = "alto" << \clef violin \keyStuff \altoIV >>
        \new Lyrics \lyricsto "alto" \altoWordsIV
      >>
    >>
    %%\midi { \tempo 4 = 120 }
  }
  \paper {
    bookTitleMarkup = \markup \null
    min-systems-per-page = #5
  }
}

