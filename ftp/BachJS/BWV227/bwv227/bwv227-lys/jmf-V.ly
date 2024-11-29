\version "2.25.19"
\include "english.ly"

sopranoOneV = \relative {
  \tocItem \markup { \bold "Teil V" " — " \italic "Trotz dem alten Drachen" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #147
  \mark #14 d''4 r r |
  c r8 fs b,4 ~ |
  b8 a g4( fs8[ e]) |
  %150
  e4 e8 fs g e |
  b' b, b'4 r |
  cs r8 e ds4 ~ |
  ds8 b e4.( fs8) |
  ds4 b8 cs ds b |
  %155
  e e, e'4 r8 g |
  fs[ e] ds4.( e8) |
  e4 d! r8 d^\p |
  d[ c] a'4^\f r8 c,^\p |
  c[ b] fs'4^\f r8 a,^\p |
  %160
  a[ g] c^\f a b4 ~ |
  b8[ e] ds2 |
  e4 \mark \default d!8 b r4 |
  r c8 a r4 |
  r4 b8 g e'4 |
  %165
  r8 b g'4( fs) |
  e e,8 fs g e |
  b' b, b'4 r |
  cs2 ds4 |
  r8 b e4( ds8[ e]) |
  %170
  ds4 b8 cs ds b |
  e e, e'2 ~ |
  e4 e2 ~ |
  e8[ fs] g2 ~ |
  g8[ fs] ds2 |
  %175
  \mark \default e4 d!^\p r8 d8 |
  d c c2 ~ |
  c8[ b] b4 r8 b8 |
  b8 a8 a2 ~ |
  a8[ fs] g^\f c b4 ~ |
  %180
  b8[ a] g4 fs8[ e] |
  e2. ~ |
  e ~ |
  e4 b'8[ c] d[ b] |
  c4 c2 ~ |
  %185
  c4 a8[ b] c[ a] |
  b2. ~ |
  b4 e8[ fs] g[ e] |
  c[ a] d2 ~ |
  d4 c8[ b] a[ g] |
  %190
  g4 \mark \default b r8 cs |
  d4 d, r |
  r cs' r8 ds |
  e4 e, r |
  r e' d! |
  %195
  cs b r8 g^\p |
  g4 fs r |
  r e'^\f d |
  cs8[ b] as[ gs] fs4 |
  r8 b^\p d4( cs8[ b]) |
  %200
  b4 r r |
  \mark \default r d^\f r8 e |
  c4 r c |
  b2. ~ |
  b4 a8[ g] a4 ~ |
  %205
  a g2 ~ |
  g4 fs8[ e fs e] |
  ds fs b4 r8 c |
  b a g4( fs8[ e]) |
  e2.^\fermata \bar "|." |
}

sopranoOneWordsV = \lyricmode {
  Trotz, |
  Trotz dem al -- %|
  ten Dra -- |
  %150
  chen, Trotz dem al -- ten |
  Dra -- chen, Trotz, |
  Trotz des To -- %|
  des Ra -- |
  chen, Trotz des To -- des |
  %155
  Ra -- chen, Trotz der |
  Furcht __ dar -- |
  zu, Trotz der |
  Furcht, __ Trotz der |
  Furcht, __ Trotz der |
  %160
  Furcht, __ Trotz der Furcht __ %|
  dar -- |
  zu! To -- be, %|
  to -- be, %|
  to -- be Welt, %|
  %165
  und sprin -- |
  ge, to -- be, Welt, und |
  sprin -- ge; ich |
  steh hier %|
  und sin -- |
  %170
  ge, ich steh hier und |
  sin -- ge in __ %|
  gar __ %|
  sich -- %|
  rer |
  %175
  Ruh, in gar |
  sich -- rer Ruh, __ %|
  in gar |
  sich -- rer Ruh, __ %|
  in gar sich -- %|
  %180
  _ rer __ |
  Ruh! __ %|
   %|
  Got -- tes __ |
  Macht hält __ %|
  %185
  mich __ in __ |
  acht, __ %|
  Got -- tes __ |
  Macht __ hält __ %|
  mich __ in __ |
  %190
  acht; Erd und |
  Ab -- grund, %|
  Erd und |
  Ab -- grund %|
  muß ver -- |
  %195
  stum -- men, ver -- |
  stum -- men, %|
  Erd und |
  Ab -- grund __ muß %|
  ver -- stum -- |
  %200
  men, %|
  ob sie |
  noch so |
  brum -- %|
  _ _ %|
  %205
  _ %|
  _ |
  _ men, ob sie |
  noch so brum -- |
  men. |
}

sopranoTwoV = \relative {
  b'4 r r |
  a r8 b g4 ~ |
  g8 fs e4( ds) |
  %150
  e e8 fs g e |
  b' b, fs'4 r |
  a r8 b8 c!4 ~ |
  c8 fs, b4( a) |
  b b8 cs ds b |
  %155
  e e, g4 r8 b |
  c4 b2 |
  b4 b r8 b |
  b[ a] c4 r8 a |
  a[ g] a4 r8 fs |
  %160
  fs[ e] e a g4 ~ |
  g fs2 |
  g4 b8 gs r4 |
  r a8 e r4 |
  r g8 e b'4 |
  %165
  r8 e e4( ds) |
  e4 e,8 fs g e |
  b' b, fs'4 r |
  a2 a4 |
  r8 b b2 |
  %170
  b4 b8 cs ds b |
  e e, e'4 d! |
  c b2 |
  a4 b e8[ d] |
  c4( b) a |
  %175
  g gs^\p r8 b |
  b a a2 ~ |
  a8[ g] g4 r8 g |
  g fs fs2 ~ |
  fs4 e8^\f fs g4 ~ |
  %180
  g8[ fs] e4 ds |
  e2. ~ |
  e ~ |
  e4 gs8[ a] b[ gs] |
  a4 a2 ~ |
  %185
  a4 fs8[ g] a[ fs] |
  g2. ~ |
  g4 a b |
  c c2 |
  b4( a8[ g]) fs4 |
  %190
  g g r8 a |
  a4 d, r |
  r a' r8 b |
  b4 e, r |
  r cs' b |
  %195
  as b r8 d,8^\p |
  d4 cs r |
  r cs'^\f b8[ a!] |
  g4 fs as |
  r8 b^\p b4( as) |
  %200
  b r r |
  r b r8 gs |
  a4 r a ~ |
  a g!8[ fs g fs] |
  e[ g fs e] fs4 ~ |
  %205
  fs e2 ~ |
  e4 fs cs |
  b4. ds8 e4 |
  r8 e e4( ds) |
  e2.^\fermata |
}

sopranoTwoWordsV = \lyricmode {
  Trotz, |
  Trotz dem al -- %|
  ten Dra -- |
  %150
  chen, Trotz dem al -- ten |
  Dra -- chen, Trotz, |
  Trotz des To -- %|
  des Ra -- |
  chen, Trotz des To -- des |
  %155
  Ra -- chen, Trotz der |
  Furcht dar -- |
  zu, Trotz der |
  Furcht, __ Trotz der |
  Furcht, __ Trotz der |
  %160
  Furcht, __ Trotz der Furcht __ %|
  dar -- |
  zu! To -- be, %|
  to -- be, %|
  to -- be Welt, %|
  %165
  und sprin -- |
  ge, to -- be, Welt, und |
  sprin -- ge; ich |
  steh hier %|
  und sin -- |
  %170
  ge, ich steh hier und |
  sin -- ge in gar |
  sich -- rer |
  Ruh, in gar |
  sich -- rer |
  %175
  Ruh, in gar |
  sich -- rer Ruh, __ %|
  in gar |
  sich -- rer Ruh, __ %|
  in gar sich -- %|
  %180
  _ rer |
  Ruh! __ %|
   %|
  Got -- tes __ |
  Macht hält __ %|
  %185
  mich __ in __ |
  acht, __ %|
  Got -- tes __ |
  Macht __ hält __ %|
  mich __ in __ |
  %190
  acht; Erd und |
  Ab -- grund, %|
  Erd und |
  Ab -- grund %|
  muß ver -- |
  %195
  stum -- men, ver -- |
  stum -- men, %|
  Erd und |
  Ab -- grund muß %|
  ver -- stum -- |
  %200
  men, %|
  ob sie |
  noch so __ %|
  brum -- |
  _ _ %|
  %205
  _ %|
  _ _ |
  _ men, noch %|
  so brum -- |
  men. |
}

altoV = \relative {
  e'4 r r |
  e r8 fs e4 ~ |
  e8 fs g([ e] b4) |
  %150
  b e8 fs g e |
  b' b, ds4 r |
  e r8 g a4 ~ |
  a8 ds, e[ g fs e] |
  fs4 b8 cs ds b |
  %155
  e e, c'!4 r8 g |
  a[ g fs g] a4 |
  g gs r |
  r e r |
  r ds r |
  %160
  r a'8 ds, e4 ~ |
  e b'2 |
  b4 gs8 b8 r4 |
  r e,8 c r4 |
  r b8 e g4 |
  %165
  r8 b b[ g a fs] |
  g4 e8 fs g e |
  b' b, ds4 r |
  e2 fs4 |
  r8 ds e4( fs8[ g]) |
  %170
  fs4 b8 cs ds b |
  e e, r4 b' |
  a g gs |
  a g!8[ fs] e4 |
  a fs2 |
  %175
  e4 b'^\p a |
  gs( a) g! |
  fs g fs |
  e( ds8[ e]) fs4 |
  b, e4.^\f ds8 |
  %180
  e[ fs g e] b4 |
  e d c |
  d( c8[ b]) c4 |
  b2 r4 |
  r e a |
  %185
  fs r r |
  g d g |
  e e d |
  a' a2 |
  g2 d4 |
  %190
  d d r8 a |
  d4 a r |
  r e' r8 b |
  e4 b r |
  r fs' fs |
  %195
  e d r8 b^\p |
  b4 as r |
  r fs'^\f fs |
  e8[ d] cs4 fs |
  r8 fs^\p fs4( e) |
  %200
  d r r |
  r e^\f r8 e |
  e4 r ds8[ e] |
  fs4 b,2 |
  as8[ b e g fs ds] |
  %205
  b2 as8[ b] |
  cs4 fs,2 ~ |
  fs4. c'!8 b4 |
  r8 c8 b2 |
  b2.^\fermata |
}

altoWordsV = \lyricmode {
  Trotz, |
  Trotz dem al -- %|
  ten Dra -- |
  %150
  chen, Trotz dem al -- ten |
  Dra -- chen, Trotz, |
  Trotz des To -- %|
  des Ra -- |
  chen, Trotz des To -- des |
  %155
  Ra -- chen, Trotz der |
  Furcht __ dar -- |
  zu, Trotz, %|
  Trotz, %|
  Trotz, %|
  %160
  Trotz der Furcht __ %|
  dar -- |
  zu! To -- be, %|
  to -- be, %|
  to -- be Welt, %|
  %165
  und sprin -- |
  ge, to -- be, Welt, und |
  sprin -- ge; ich |
  steh hier %|
  und sin -- |
  %170
  ge, ich steh hier und |
  sin -- ge in |
  gar sich -- rer |
  Ruh, in __ gar |
  sich -- rer |
  %175
  Ruh, in gar |
  sich -- rer |
  Ruh, in gar |
  sich -- rer |
  Ruh, in gar |
  %180
  sich -- rer |
  Ruh, in gar |
  sich -- rer |
  Ruh! %|
  Got -- tes |
  %185
  Macht |
  hält mich in |
  acht, Got -- tes |
  Macht hält |
  mich in |
  %190
  acht; Erd und |
  Ab -- grund, %|
  Erd und |
  Ab -- grund %|
  muß ver -- |
  %195
  stum -- men, ver -- |
  stum -- men, %|
  Erd und |
  Ab -- grund muß %|
  ver -- stum -- |
  %200
  men, %|
  ob sie |
  noch so __ %|
  brum -- _ |
  _ |
  %205
  _ _ |
  _ _ %|
  men, noch %|
  so brum -- |
  men. |
}

tenorV = \relative {
  b4 r r |
  c r8 b b4 ~ |
  b8 c b4( a) |
  %150
  g e8 fs g e |
  b' b b4 r |
  a r8 e' a,4 ~ |
  a8 b b([ g] c4) |
  fs, b8 cs ds b |
  %155
  e e, e'4 r8 e |
  fs4 b,2 |
  b4 e r |
  r a, r |
  r c r |
  %160
  r e8 fs b,([ g] |
  e[ cs']) fs,4( b) |
  b b8 e r4 |
  r e8 a r4 |
  r e8 b g4 |
  %165
  r8 g'8 g([ e] b4) |
  b e,8 fs g e |
  b' b b4 r |
  a2 c!4 |
  r8 fs b,4( a8[ b]) |
  %170
  b4 b8 cs ds b |
  e e, r4 r |
  r e'4 d |
  c( b) c |
  r fs, b |
  %175
  b e^\p fs |
  b,( c8[ d]) e4 |
  ds e d! |
  c2 b8[ a] |
  b4 b8^\f[ a] g[ a] |
  %180
  b([ c] b4.) a8 |
  g4 gs a |
  b( a8[ gs]) a4 |
  gs2 r4 |
  r c8[ d] e[ c] |
  %185
  d4 d2 ~ |
  d4 b8[ c] d[ b] |
  g4 c d |
  e d2 ~ |
  d4 d c |
  %190
  b g r8 e' |
  a,4 fs r |
  r a r8 fs'8 |
  b,4 g r |
  r fs b |
  cs8[ as] fs4 r8 b8^\p |
  e,8[ d] e4 r |
  r cs^\f d |
  e fs cs' |
  r8 d8^\p d([ b] fs4) |
  fs r r |
  r b^\f r8 b |
  a4 r a8[ g] |
  fs4 g2 ~ |
  g4 a8[ b c! fs,] |
  g4. fs8[ e d] |
  cs4 fs as |
  b4. a!8 g4 |
  r8 fs8 g[ e a fs] |
  gs2.^\fermata |
}

tenorWordsV = \lyricmode {
  Trotz, |
  Trotz dem al -- %|
  ten Dra -- |
  %150
  chen, Trotz dem al -- ten |
  Dra -- chen, Trotz, |
  Trotz des To -- %|
  des Ra -- |
  chen, Trotz des To -- des |
  %155
  Ra -- chen, Trotz der |
  Furcht dar -- |
  zu, Trotz, %|
  Trotz, %|
  Trotz, %|
  %160
  Trotz der Furcht __ %|
  dar -- |
  zu! To -- be, %|
  to -- be, %|
  to -- be Welt, %|
  %165
  und sprin -- |
  ge, to -- be, Welt, und |
  sprin -- ge; ich |
  steh hier %|
  und sin -- |
  %170
  ge, ich steh hier und |
  sin -- ge %|
  in gar |
  sich -- rer, %|
  sich -- rer |
  %175
  Ruh, in gar |
  sich -- rer |
  Ruh, in gar |
  sich -- rer __ |
  Ruh, in __ gar __ |
  %180
  sich -- rer |
  Ruh, in gar |
  sich -- rer |
  Ruh! %|
  Got -- tes __ |
  %185
  Macht hält __ %|
  mich __ in __ |
  acht, Got -- tes |
  Macht hält %|
  mich in |
  %190
  acht; Erd und |
  Ab -- grund, %|
  Erd und |
  Ab -- grund %|
  muß ver -- |
  %195
  stum -- men, ver -- |
  stum -- men, %|
  Erd und |
  Ab -- grund muß %|
  ver -- stum -- |
  %200
  men, %|
  ob sie |
  noch so __ %|
  brum -- _ %|
  _ |
  %205
  _ _ |
  _ _ _ |
  _ men, noch %|
  so brum -- |
  men. |
}

bassV = \relative {
  gs4 r r |
  a r8 ds,8 e4 ~ |
  e8 a b4( b,) |
  %150
  e e8 fs g e |
  b' b, a'4 r |
  g r8 g8 fs4 ~ |
  fs8 a g([ e] c'4) |
  b b8 cs ds b |
  %155
  e e, c'!4 r8 b |
  a4 b2 |
  e,2. ~ |
  e2. ~ |
  e2. ~ |
  %160
  e4 a8 fs g([ e] |
  c![ as]) b2 |
  e4 e16[ ds e fs] gs[ fs gs e] |
  a[ e fs gs] a[ gs a b] c[ b c a] |
  ds8 b e4 r8 b |
  %165
  g[ e] b2 |
  e4 e8 fs g e |
  b' b, a'4 r |
  g2 fs4 |
  r8 a g4( fs8[ e]) |
  %170
  b'4 b8 cs ds b |
  e e, r4 r |
  r2. |
  r4 e8[ d] c[ b] |
  a4 b2 |
  %175
  e2.^\p ~ |
  e ~ |
  e ~ |
  e2 ds8[ cs] |
  ds4 e4.^\f fs8 |
  %180
  g8([ a] b4) b, |
  c b a |
  gs( a) a |
  e'2 r4 |
  r a,8[ b] c[ a] |
  %185
  d4 r r |
  g g,8[ a] b[ g] |
  c4 c' b |
  a8[ g fs g a fs] |
  b g d'4 d, |
  %190
  g g, r8 g' |
  fs4 fs, fs'8 gs |
  a a, a'4 r8 a |
  g fs e[ d] cs[ b] |
  as2( b4) |
  %195
  fs2. |
  r4 fs' e8[ fs16 g] |
  as,2 b4 |
  e2 ~ e8 cs |
  d([ b] fs2) |
  %200
  b4 r r |
  r gs' r8 e |
  a[ b a g!] fs[ e] |
  ds4 e8[ ds e ds] |
  cs[ b cs e ds fs] |
  %205
  e[ b e d! cs b] |
  as2 as4 |
  a!4. fs'8 g4 |
  r8 a8 b4( b,) |
  e2.^\fermata |
}

bassWordsV = \lyricmode {
  Trotz, |
  Trotz dem al -- %|
  ten Dra -- |
  %150
  chen, Trotz dem al -- ten |
  Dra -- chen, Trotz, |
  Trotz des To -- %|
  des Ra -- |
  chen, Trotz des To -- des |
  %155
  Ra -- chen, Trotz der |
  Furcht dar -- |
  zu, __ %|
   %|
   %|
  %160
  Trotz der Furcht __ %|
  dar -- |
  zu! To -- _ |
  _ _ _ |
  _ be, Welt, und |
  %165
  sprin -- _ |
  ge, to -- be, Welt, und |
  sprin -- ge; ich |
  steh hier %|
  und sin -- |
  %170
  ge, ich steh hier und |
  sin -- ge %|
   %|
  in __ gar __ |
  sich -- rer |
  %175
  Ruh, __ %|
   %|
   %|
  _ |
  _ in gar |
  %180
  sich -- rer |
  Ruh, in gar |
  sich -- rer |
  Ruh! %|
  Got -- tes __ |
  %185
  Macht |
  hält mich __ in __ |
  acht, Got -- tes |
  Macht __ %|
  _ hält mich in |
  %190
  acht; Erd und |
  Ab -- grund muß ver -- |
  stum -- men, Erd und |
  Ab -- grund muß __ ver -- |
  stum -- |
  %195
  men, %|
  Erd und __ |
  Ab -- grund |
  muß ver -- |
  stum -- |
  %200
  men, %|
  ob sie |
  noch __ so __ |
  brum -- _ |
  _ |
  %205
  _ |
  _ men, |
  ob sie noch %|
  so brum -- |
  men. |
}

keyStuff = {
  \key g \major
  \time 3/4
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil V"
    copyright = ""
  }
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = "Sopran I"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "cantus" << \clef violin \keyStuff \sopranoOneV >>
        \new Lyrics \lyricsto "cantus" \sopranoOneWordsV
      >>
      \new Staff \with {
        instrumentName = "Sopran II"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "soprano" << \clef violin \keyStuff \sopranoTwoV >>
        \new Lyrics \lyricsto "soprano" \sopranoTwoWordsV
      >>
      \new Staff \with {
        instrumentName = "Alt"
        midiInstrument = #"viola"
        autoBeaming = ##f
      } <<
        \new Voice = "alto" << \clef violin \keyStuff \altoV >>
        \new Lyrics \lyricsto "alto" \altoWordsV
      >>
      \new Staff \with {
        instrumentName = "Tenor"
        midiInstrument = #"cello"
        autoBeaming = ##f
      } <<
        \new Voice = "tenor" << \clef "G2_8" \keyStuff \tenorV >>
        \new Lyrics \lyricsto "tenor" \tenorWordsV
      >>
      \new Staff \with {
        instrumentName = "Baß"
        midiInstrument = #"contrabass"
        autoBeaming = ##f
      } <<
        \new Voice = "bass" << \clef "F" \keyStuff \bassV >>
        \new Lyrics \lyricsto "bass" \bassWordsV
      >>
    >>
    %%\midi { \tempo 4 = 120 }
  }
  \paper {
    bookTitleMarkup = \markup \null
    min-systems-per-page = #3
  }
}

