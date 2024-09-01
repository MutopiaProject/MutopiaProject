\version "2.25.19"
\include "english.ly"

sopranoOneIII = \relative {
  \tocItem \markup { \bold "Teil III" " (Choral)" " — " \italic "Unter deinem Schirmen" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #104
  \mark #10 b'4 b a g |
  %105
  fs2 e2^\fermata |
  b'4 cs d b |
  e2 ds^\fermata |
  e8[ fs] g4 fs4. e8 |
  e1^\fermata | %<<bis
  %110
  b4 b a g |
  fs2 e2^\fermata |
  b'4 cs d b |
  e2 ds^\fermata |
  e8[ fs] g4 fs4. e8 |
  %115
  e1^\fermata | %bis>>
  \mark \default b4 b c b |
  a4. g8 g2^\fermata |
  b4 cs d b |
  e d8[ cs] cs2 |
  %120
  b^\fermata g8[ a] b4 |
  a g8[ fs8] fs2 |
  e1^\fermata \bar "|." 
}

sopranoOneWordsIII = \lyricmode {
  Un -- ter dei -- nem |
  %105
  Schir -- men |
  bin ich vor den |
  Stür -- men, |
  al -- ler Fein -- de |
  frei. |
  %110
  Laß den Sa -- tan |
  wit -- tern, |
  Laß den Feind er -- |
  bit -- tern, |
  mir __ steht Je -- sus |
  %115
  bei. |
  Ob es itzt gleich |
  kracht und blitzt, |
  ob gleich Sünd und |
  Höl -- le __ schrek -- |
  %120
  ken: Je -- sus |
  will mich dek -- |
  ken. |
}

sopranoTwoIII = \relative {
  g'4 g fs e |
  %105
  e( ds) e2^\fermata |
  d!4 a' a b |
  b( a) b2^\fermata |
  e4 e e ds |
  e1^\fermata | %<<bis
  %110
  g,4 g fs e |
  e( ds) e2^\fermata |
  d!4 a' a b |
  b( a) b2^\fermata |
  e4 e e ds |
  %115
  e1^\fermata | %bis>>
  g,4 a g8 d g4 |
  r8 g g fs g2^\fermata |
  g8[ fs] e4 a g |
  g8[ fs] b4 b( as) |
  %120
  b2^\fermata b8[ a!] g4 |
  fs e e( ds) |
  e1^\fermata |
}

sopranoTwoWordsIII = \lyricmode {
  Un -- ter dei -- nem |
  %105
  Schir -- men |
  bin ich vor den |
  Stür -- men, |
  al -- ler Fein -- de |
  frei. |
  %110
  Laß den Sa -- tan |
  wit -- tern, |
  Laß den Feind er -- |
  bit -- tern, |
  mir steht Je -- sus |
  %115
  bei. |
  Ob es itzt gleich kracht, %|
  gleich kracht und blitzt, |
  ob __ gleich Sünd und |
  Höl -- le schrek -- |
  %120
  ken: Je -- sus |
  will mich dek -- |
  ken. |
}

altoIII = \relative {
  e'4 b c b8[ e] |
  %105
  c4( b) b2^\fermata |
  g'8[ fs] e4 d d8[ g] |
  g8[a16 g fs8 e] fs2^\fermata |
  g8[ a] b[ c] fs,[ g] a4 |
  g1^\fermata | %<<bis
  %110
  e4 b c b8[ e] |
  c4( b) b2^\fermata |
  g'8[ fs] e4 d d8[ g] |
  g8[a16 g fs8 e] fs2^\fermata |
  g8[ a] b[ c] fs,[ g] a4 |
  %115
  g1^\fermata | %bis>>
  e4 fs e8 a d, g |
  e4 d8 d d2^\fermata |
  d4 a' d, d8[ g] |
  e8[ cs] d4 g( fs) |
  %120
  fs2^\fermata g8[ fs] e[ d] |
  c4 b8[ e] c4( b) |
  b1^\fermata |
}

altoWordsIII = \lyricmode {
  Un -- ter dei -- nem __ |
  %105
  Schir -- men |
  bin __ ich vor den __ |
  Stür -- men, |
  al -- ler __ Fein -- de |
  frei. |
  %110
  Laß den Sa -- tan __ |
  wit -- tern, |
  Laß den Feind er -- |
  bit -- tern, |
  mir __ steht __ Je -- sus |
  %115
  bei. |
  Ob es itzt gleich kracht und |
  blitzt, kracht und blitzt, |
  ob gleich Sünd und __ |
  Höl -- le schrek -- |
  %120
  ken: Je -- sus __ |
  will mich __ dek -- |
  ken. |
}

tenorIII = \relative {
  e8[ fs] g[ e] a[ fs] g[ e] |
  %105
  a[ g fs a] g2^\fermata |
  g4 a a g |
  c8([ b] c4) fs,2^\fermata |
  b8[ a] g[ e] b'4 b |
  b1^\fermata | %<<bis
  %110
  e,8[ fs] g[ e] a[ fs] g[ e] |
  a[ g fs a] g2^\fermata |
  g4 a a g |
  c8([ b] c4) fs,2^\fermata |
  b8[ a] g[ e] b'4 b |
  %115
  b1^\fermata | %bis>>
  b8( e4) ds8 e a, b g |
  c4 c8 a b2^\fermata |
  g4 a a b |
  as8[ cs] fs[ b,] e[ d cs e] |
  %120
  ds2^\fermata e4 e, |
  fs g8[ e] a[ g d a'] |
  gs1^\fermata |
}

tenorWordsIII = \lyricmode {
  Un -- ter __ dei -- nem __ |
  %105
  Schir -- men |
  bin ich vor den |
  Stür -- men, |
  al -- ler __ Fein -- de |
  frei. |
  %110
  Laß __ den __ Sa -- tan __ |
  wit -- tern, |
  Laß den Feind er -- |
  bit -- tern, |
  mir __ steht __ Je -- sus |
  %115
  bei. |
  Ob __ es itzt gleich kracht und |
  blitzt, kracht und blitzt, |
  ob gleich Sünd und |
  Höl -- le __ schrek -- |
  %120
  ken: Je -- sus |
  will mich __ dek -- |
  ken. |
}

bassIII = \relative {
  e2 ~ e8 ds e c |
  %105
  a4( b) e2^\fermata |
  g2 ~ g8 fs g e |
  c2 b^\fermata |
  g'8[ c] b[ a] b4 b, |
  e1^\fermata | %<<bis
  %110
  e2 ~ e8 ds e c |
  a4( b) e2^\fermata |
  g2 ~ g8 fs g e |
  c2 b^\fermata |
  g'8[ c] b[ a] b4 b, |
  %115
  e1^\fermata | %bis>>
  e2 ~ e8 fs g e |
  c[ a] d4 g,2^\fermata |
  g'2 ~ g8 fs g e |
  cs[ a'] b[ g] e4( fs) |
  %120
  b,2^\fermata e ~ |
  e8 ds e c a4( b) |
  e1^\fermata |
}

bassWordsIII = \lyricmode {
  Un -- ter dei -- nem |
  %105
  Schir -- men |
  bin __ ich vor den |
  Stür -- men |
  al -- ler __ Fein -- de |
  frei. |
  %110
  Laß __ den Sa -- tan |
  wit -- tern, |
  Laß __ den Feind er -- |
  bit -- tern, |
  mir __ steht __ Je -- sus |
  %115
  bei. |
  Ob __ es itzt gleich |
  kracht und blitzt, |
  ob __ gleich Sünd und |
  Höl -- le __ schrek -- |
  %120
  ken Je -- %|
  sus will mich dek -- |
  ken. |
}

keyStuff = {
  \key g \major
  \time 4/4
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil III (Choral)"
    copyright = ""
  }
  \score {
    \new ChoirStaff \with { \defaultTimeSignature } <<
      \new Staff \with {
        instrumentName = "Sopran I"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "cantus" << \clef violin \keyStuff \sopranoOneIII >>
        \new Lyrics \lyricsto "cantus" \sopranoOneWordsIII
      >>
      \new Staff \with {
        instrumentName = "Sopran II"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "soprano" << \clef violin \keyStuff \sopranoTwoIII >>
        \new Lyrics \lyricsto "soprano" \sopranoTwoWordsIII
      >>
      \new Staff \with {
        instrumentName = "Alt"
        midiInstrument = #"viola"
        autoBeaming = ##f
      } <<
        \new Voice = "alto" << \clef violin \keyStuff \altoIII >>
        \new Lyrics \lyricsto "alto" \altoWordsIII
      >>
      \new Staff \with {
        instrumentName = "Tenor"
        midiInstrument = #"cello"
        autoBeaming = ##f
      } <<
        \new Voice = "tenor" << \clef "G2_8" \keyStuff \tenorIII >>
        \new Lyrics \lyricsto "tenor" \tenorWordsIII
      >>
      \new Staff \with {
        instrumentName = "Baß"
        midiInstrument = #"contrabass"
        autoBeaming = ##f
      } <<
        \new Voice = "bass" << \clef "F" \keyStuff \bassIII >>
        \new Lyrics \lyricsto "bass" \bassWordsIII
      >>
    >>
    %\midi { \tempo 4 = 120 }
  }
  \paper {
    bookTitleMarkup = \markup \null
    min-systems-per-page = #3
  }
}

