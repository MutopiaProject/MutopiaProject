\version "2.25.19"
\include "english.ly"

sopranoOneVI = \relative {
  \tocItem \markup { \bold "Teil VI" " — " \italic "Wir aber seid nicht fleischlich" }
  \set Score.rehearsalMarkFormatter = #format-mark-roundbox-numbers
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #210
  %210
  \mark #19 r1 |
  r |
  r |
  r |
  r |
  %215
  r8 g' g g a b c4 ~ |
  c8 b e d c16[ d b c] d[ e d c] |
  b[ c d c] b[ a g fs] g[ b a c] b[ d cs e] |
  d8 a d d d4( cs) |
  d r8 a d c! d a |
  %220
  b b r b e d e b |
  c c r a d4. b8 |
  cs8 d d[ cs] d a \mark \default d4 ~ |
  d8 e16[ d] c!4. b8 c d |
  e fs g2 fs4 |
  %225
  g r r r8 b, |
  e d c b a b16 c b8[ cs16 ds] |
  e2 ~ e4 ds |
  e4 r r2 |
  r1 |
  %230
  r8 g, g g a b c4 ~ |
  c8 b e d c16[ d b c] d[ e d c] |
  b[ c d c] b[ a g fs] g[ b a c] b[ d cs e] |
  d[ cs d e] fs4 ~ fs16[ e ds e] b[ cs! d b] |
  e8 a, \mark \default d c! b16[ c a b] c[ d c b] |
  %235
  a[ b g a] b[ c b a] g[ a fs g] a4 ~ |
  a8 g16 fs g8 g a b c4 |
  b8 b e d c[ b] a[ g] |
  fs g16 a g8[ a16 b] c8[ d16 c] b4 ~ |
  b a4. d,8 d' d |
  %240
  d4( cs) d r |
  r2 r4 r8 d |
  g fs e d c4. b16 a |
  b[ c a b] c[ d c b] a[ b g a] b[ c b a] |
  g[ a fs g] a[ b a g fs8] d d' c |
  %245
  b4( a) g r8^\parenthesize \fermata \mark \default b |
  cs cs d d gs,[ f'!] e[ d] |
  c!4 r8 b g!4 a |
  b r8 b e[ g] fs[ e] |
  ds b16[ cs] d!4. d8 c! c |
  %250
  b[ a] g[ fs] e4 r8 as |
  b4 cs fs,8 d' g4 ~ |
  g8[ fs] e[ g] fs4 r8 fs |
  b, b e4. ds8 e fs |
  g4 r8 fs d!4 e^\trill |
  %255
  fs r8 b, d[ cs] b[ as] |
  b4 e fs, r8 b |
  d4 cs b2^\fermata \bar "|." |
}

sopranoOneWordsVI = \lyricmode {
  %210
   %|
   %|
   %|
   %|
   %|
  %215
  Ihr a -- ber seid nicht fleisch -- %|
  lich, son -- dern geist -- _ |
  _ _ _ _ |
  _ lich, son -- dern geist -- |
  lich, ihr a -- ber seid nicht |
  %220
  fleisch -- lich, ihr a -- ber seid nicht |
  fleisch -- lich, nicht fleisch -- lich, |
  son -- dern geist -- lich, ihr a -- %|
  ber seid nicht fleisch -- lich, |
  son -- dern geist -- _ |
  %225
  lich, so |
  an -- ders Got -- tes Geist in euch woh -- |
  _ _ |
  net. %|
   %|
  %230
  Ihr a -- ber seid nicht fleisch -- %|
  lich, son -- dern geist -- _ |
  _ _ _ _ |
  _ _ _ |
  _ lich, son -- dern geist -- _ |
  %235
  _ _ _ _ %|
  lich, ihr a -- ber seid nicht fleisch -- |
  lich, so an -- ders Got -- tes __ |
  Geist in euch woh -- _ _ %|
  _ net, in euch |
  %240
  woh -- net, %|
  so |
  an -- ders Got -- tes Geist in euch |
  woh -- _ _ _ |
  _ _ net, in euch |
  %245
  woh -- net. Wer |
  a -- ber Chri -- sti Geist __ nicht __ |
  hat, der ist nicht |
  sein, der ist __ nicht __ |
  sein, wer __ a -- ber Chri -- sti |
  %250
  Geist __ nicht __ hat, der |
  ist nicht sein, der ist __ %|
  nicht __ sein, wer |
  a -- ber Chri -- sti Geist nicht |
  hat, der ist nicht |
  %255
  sein, der ist __ nicht __ |
  sein, der, der, der |
  ist nicht sein. |
}

sopranoTwoVI = \relative {
  %210
  r1 |
  r |
  r |
  r |
  r |
  %215
  r |
  r |
  r |
  r |
  r |
  %220
  r |
  r2 r8 d' d d |
  e8 fs g4. fs8 b a |
  g16[ a fs g] a[ b a g] fs[ a g b] a[ c b a] |
  g[ b a c] b[ d c b] a[ b c b] a[ g fs e] |
  %225
  d[ e c d] e[ d e fs g8] d r4 |
  r8 e a g fs e d e16 fs |
  g8[ fs16 g] a[ g fs e] b'2 |
  b8 b e d c b a b16 c |
  d4 ~ d16[ f! e d] c[ b c d] c[ e d c] |
  %230
  b[ a b c] b[ d c b a8] d, r8 e |
  a g16[ fs] g8 b e, d16[ e] fs[ g a8] |
  d,2 ~ d8[ e] fs[ a16 g] |
  a8 a16 a d8 c b[ a] g[ fs] |
  e fs16 g fs2 e4 ~ |
  %235
  e d2 c4 |
  b8 cs16 ds e8 e fs g a4 ~ |
  a8 g16 g c8 b a[ g] fs[ e] |
  ds e16 fs e2 d!4 ~ |
  d c8 e a a g b |
  %240
  b b16 b a4 a8 a d4 ~ |
  d8 b e fs16[ g] c,8 d16 c b4 ~ |
  b8[ c16 d] e4 ~ e16[ d c b] a[ g fs a] |
  g[ a fs g] a[ b a g] fs[ g e fs] g[ a g fs] |
  e8[ e'] ~ e16[ d c b a8] g16[ fs] g8 g |
  %245
  g4( fs) g r8^\parenthesize \fermata g |
  a a a a b[ d] c[ b] |
  a4 r8 fs e4 e |
  ds8 fs b2 a8[ g] |
  fs4 r8 fs8 b b a g |
  %250
  fs4 ds' e8 b e4 ~ |
  e8[ d!] cs[ e] d4 r8 cs |
  d4 e a, r8 a |
  gs gs a a b4 cs8[ ds] |
  e4 r8 cs d![ cs] b[ as] |
  %255
  b4 r8 d, g4 fs8[ e] |
  d4 b' cs r8 b |
  b4 as b2^\fermata |
}

sopranoTwoWordsVI = \lyricmode {
  %210
  %|
  %|
  %|
  %|
  %|
  %215
  %|
  %|
  %|
  %|
  %|
  %220
  %|
  Ihr a -- ber |
  seid nicht fleisch -- lich, son -- dern |
  geist -- _ _ _ |
  _ _ _ _ |
  %225
  _ _ lich, %|
  so an -- ders Got -- tes Geist in euch |
  woh -- _ _ |
  net, so an -- ders Got -- tes Geist in euch |
  woh -- _ _ |
  %230
  _ _ net, so |
  an -- ders __ Got -- tes Geist in __ euch __ |
  woh -- _ |
  _ net, so an -- ders Got -- tes __ |
  Geist in euch woh -- _ %|
  %235
  _ _ |
  _ net. Ihr a -- ber seid nicht fleisch -- %|
  lich, so an -- ders Got -- tes __ |
  Geist in euch woh -- _ %|
  net, so an -- ders Got -- tes |
  %240
  Geist in euch woh -- net, so an -- %|
  ders Got -- tes __ Geist in euch woh -- %|
  _ _ |
  _ _ _ _ |
  _ net, in euch |
  %245
  woh -- net. Wer |
  a -- ber Chri -- sti Geist __ nicht __ |
  hat, der ist nicht |
  sein, der ist nicht __ |
  sein, wer a -- ber Chri -- sti |
  %250
  Geist nicht hat, der ist __ %|
  nicht __ sein, der |
  ist nicht sein, wer |
  a -- ber Chri -- sti Geist nicht __ |
  hat, der ist __ nicht __ |
  %255
  sein, der ist nicht __ |
  sein, der, der, der |
  ist nicht sein. |
}

altoVI = \relative {
  %210
  r1 |
  r |
  r8 d' d d e fs g4 ~ |
  g8 fs b a g16[ a fs g] a[ b a g] |
  fs[ g a g] fs[ e d cs] d[ fs e g] fs[ a g b] |
  %215
  a8 d, g g g4( fs) |
  g r8 b a g a d, |
  g fs g b g fs fs e |
  a16[ b a g] fs[ e fs d] e2^\trill |
  d8 d a'4. g8 a4 ~ |
  %220
  a8 g b4. a8 b4 ~ |
  b8 a c4 ~ c8[ d16 c] b[ a g fs] |
  e8[ d] e4 a, r |
  r1 |
  r2 r4 r8 d |
  %225
  g fs e d c b16[ a] b4 |
  a16[ b c d] e[ fs d e] fs8[ g16 a] g[ fs g a] |
  b4 e, r8 fs b a |
  g fs e fs16 g a4 ~ a16[ b g a] |
  fs8 d d g e4( d) |
  %230
  d8 d g4. g8 fs e |
  d e16 d c[ d b c] a2 |
  g4 r r2 |
  r8 fs' b a g[ fs] e[ d] |
  cs d16 e d2 c!4 ~ 
  %235
  c b2 a16[ b a g] |
  fs8[ b] ~ b16[ c a b] c[ b a g] fs8[ fs'] ~ |
  fs16[ g e fs] g[ fs g a] ds,[ e ds e] fs4 ~ |
  fs8[ e16 ds] e8[ fs16 g] fs2 |
  e r8 d! d d |
  %240
  e fs g4. fs8 b a |
  g16[ a fs g] a[ b a g] fs[ g e fs] g[ fs g a] |
  b8 fs r g a g fs d |
  d fs4 a8 c[ d16 c] b4 ~ |
  b8[ c16 b] a4. c8 b e, |
  %245
  d2 d4 r8^\parenthesize \fermata d |
  e e f! f b,4 e |
  e r8 b b4 c |
  fs, r8 fs' g4 c |
  b r8 b e, e e e |
  %250
  fs4 b b r8 fs |
  e4. cs8 b4 r8 e |
  d4 a' a r8 d, |
  b' b a a g[ a] g[ fs] |
  e4 r8 fs fs4 b,8[ cs] |
  %255
  d fs b4 ~ b8[ e,] d[ cs] |
  b4 g' cs, r8 g' |
  d8[ e] fs[ e] d2^\fermata |
}

altoWordsVI = \lyricmode {
  %210
   %|
   %|
  Ich a -- ber seid nicht fleisch -- %|
  lich, son -- dern geist -- _ |
  _ _ _ _ |
  %215
  _ lich, son -- dern geist -- |
  lich, ihr a -- ber seid nicht |
  fleisch -- lich, seid nicht fleisch -- lich, son -- dern |
  geist -- _ _ |
  lich, ihr a -- ber seid __ %|
  %220
  nicht fleisch -- lich, son -- %|
  dern geist -- _ |
  _ _ lich, %|
   %|
  so |
  %225
  an -- ders Got -- tes Geist in __ euch |
  woh -- _ _ _ |
  _ net, so an -- ders |
  Got -- tes Geist in euch woh -- |
  _ net, in euch woh -- |
  %230
  net, so an -- ders Got -- tes |
  Geist in euch woh -- _ |
  net, %|
  so an -- ders Got -- tes __ |
  Geist in euch woh -- _ %|
  %235
  _ _ |
  _ _ _ %|
  _ _ _ %|
  _ _ |
  net. Ihr a -- ber |
  %240
  seid nicht fleisch -- lich, son -- dern |
  geist -- _ _ _ |
  _ lich so an -- ders Got -- tes |
  Geist in euch woh -- _ %|
  _ net, in euch |
  %245
  woh -- net. Wer |
  a -- ber Chri -- sti Geist nicht |
  hat, der ist nicht |
  sein, der ist nicht |
  sein, wer a -- ber Chri -- sti |
  %250
  Geist nicht hat, der |
  ist nicht sein, der |
  ist nicht sein, wer |
  a -- ber Chri -- sti Geist __ nicht __ |
  hat, der ist nicht __ |
  %255
  sein, der ist __ nicht __ |
  sein, der, der, der |
  ist __ nicht __ sein. |
}

tenorVI = \relative {
  %210
  r8 g! g g a b c4 ~ |
  c8 b e d c16[ d b c] d[ e d c] |
  b[ c d c] b[ a g fs] g[ b a c] b[ d cs e] |
  d8 a d d d4( cs) |
  d8 cs d a b4 r8 b |
  %215
  c!16[ b c d e8] d8 c b a16[ d c d] |
  g,8 d' g g g4( fs) |
  g4 r8 d b d g, a |
  d, d r fs b b a a |
  a a r g fs g d d' |
  %220
  d d r a g a e e' |
  e e r e a, fs g b |
  e[ a, b g] a4 r |
  r1 |
  r2 r8 a d c |
  %225
  b[ a] g[ fs] e g16 fs g4 ~ |
  g8[ a16 b] c4 ~ c8[ b16 a] b4 |
  e, r r r8 b' |
  e d c b a b16 c d4 ~ |
  d16[ e c d] b[ d c b] a8[ g] a4 |
  %230
  g8 b e d c[ b] a[ g] |
  fs g16 a g2( fs4) |
  g8 fs g a b cs d fs16 e |
  fs4 ~ fs16[ g e fs] b,8 r r4 |
  r1 |
  %235
  r |
  r |
  r8 g g g a b c4 ~ |
  c8 b e d! c16[ d b c] d[ e d c] |
  b[ c a b] c[ d c b] a[ b g a] b[ c b a] |
  %240
  g[ a g fs] e4 d r8 b' |
  e d c b a g16 a b4 ~ |
  b16[ g a b] c[ b c d] e[ c d e] a,8[ d16 c] |
  b8[ c16 b a8] d, r a' d8. c16 |
  b16[ c a b c8] a d4 g,8 a |
  %245
  b[ a16 b] c4 b r8^\parenthesize \fermata b |
  a a a a e'4 gs, |
  a r8 fs'8 g![ fs] e4 |
  fs r8 ds e[ d!] c4 |
  fs, r8 b b e, a a |
  %250
  a4 r8 fs' b,4 r8 cs |
  b4 fs' fs r8 cs8 |
  b4 e d r8 fs |
  e e e fs g[ fs] e[ ds] |
  cs4 r8 cs d!4 g |
  %255
  fs r8 g b,4 fs' |
  fs e e r8 e |
  fs4 fs, fs2^\fermata |
}

tenorWordsVI = \lyricmode {
  %210
  Ihr a -- ber seid nicht fleisch -- %|
  lich, son -- dern geist -- _ |
  _ _ _ _ |
  _ lich, son -- dern geist -- |
  lich, ihr a -- ber seid nicht |
  %215
  fleisch -- lich, son dern geist -- %|
  _ lich, son -- dern geist -- |
  lich, ihr a -- ber seid nicht |
  fleisch -- lich, nicht fleisch -- lich, son -- dern |
  geist -- lich, ihr a -- ber seid nicht |
  %220
  fleisch -- lich, ihr a -- ber seid nicht |
  fleisch -- lich, nicht fleisch -- lich, son -- dern |
  geist -- lich, %|
   %|
  so an -- ders |
  %225
  Got -- tes __ Geist in euch woh -- %|
  _ _ |
  net, so |
  an -- ders Got -- tes Geist in euch woh -- %|
  _ _ _ |
  %230
  net, so an -- ders Got -- tes __ |
  Geist in euch woh -- |
  net, so an -- ders Got -- tes Geist in euch |
  woh -- net. %|
   %|
  %235
   %|
   %|
  Ihr a -- ber seid nicht fleisch -- %|
  lich, son -- dern geist -- _ |
  _ _ _ _ |
  %240
  _ _ lich, so |
  an -- ders Got -- tes Geist in euch woh -- %|
  _ _ _ |
  _ net, so an -- ders |
  Got -- tes Geist in euch |
  %245
  woh -- _ net. Wer |
  a -- ber Chri -- sti Geist nicht |
  hat, der ist __ nicht |
  sein, der ist __ nicht |
  sein, wer a -- ber Chri -- sti |
  %250
  Geist nicht hat, der |
  ist nicht sein, der |
  ist nicht sein, wer |
  a -- ber Chri -- sti Geist __ nicht __ |
  hat, der ist nicht |
  %255
  sein, der ist nicht |
  sein, der, der, der |
  ist nicht sein. |
}

bassVI = \relative {
  %210
  r1 |
  r |
  r |
  r |
  r |
  %215
  r |
  r |
  r8 d d d e fs g4 ~ |
  g8 fs b a g16[ a fs g] a[ b a g] |
  fs[ g a g] fs[ e d cs] d[ fs e g] fs[ g e fs] |
  %220
  g[ a b a] g[ fs e ds] e[ g fs a] gs[ a fs gs] |
  a[ b c b] a[ g! fs e fs8] d! g4 ~ |
  g8 fs e4 d r |
  r1 |
  r1 |
  %225
  r2 r8 b e d |
  c b a b16 c d8[ g,] g'4 ~ |
  g8[ a16 b] c4 b r |
  r r8 e, a g fs e |
  d e16 fs g2( fs4) |
  %230
  g r r2 |
  r1 |
  r |
  r8 d d d e fs g4 ~ |
  g8 fs b a g16[ a fs g] a[ b a g] |
  %235
  fs[ g e fs] g[ a g fs] e[ fs ds e] fs[ g fs e] |
  ds8 b e e e4( ds) |
  e8 e e e fs g a4 ~ |
  a8 g c b a16[ b g a] b[ c b a] |
  gs[ a fs gs] a[ b a g!] fs[ g e fs] g[ a g fs] |
  %240
  e8 e a, a d d r4 |
  r2 r8 d g fs |
  e[ d] c[ b] a b16 c d4 ~ |
  d1 ~ |
  d4 c4. b16[ a] b8 c |
  %245
  d2 g,4 r8^\parenthesize \fermata g' |
  g g f! f e2 ~ |
  e8 e ds ds e[ d!] c4 |
  b r8 b' g4 a |
  b r8 a gs gs a a |
  %250
  ds,[ c'] b[ a] g!4 r8 fs |
  gs4 as b r8 as |
  b4 cs d8 \mark \default d, d'4 ~ |
  d8 d c! c b2 ~ |
  b8 b as as b[ a!] g4 |
  %255
  d r8 g e4 fs |
  g8 fs g e as fs b g |
  fs4 fs b,2^\fermata |
}

bassWordsVI = \lyricmode {
  %210
   %|
   %|
   %|
   %|
   %|
  %215
   %|
   %|
  Ihr a -- ber seid nicht fleisch -- %|
  lich, son -- dern geist -- _ |
  _ _ _ _ |
  %220
  _ _ _ _ |
  _ _ lich, son -- %|
  dern geist -- lich, %|
   %|
   %|
  %225
  so an -- ders |
  Got -- tes Geist in euch woh -- _ %|
  _ net, %|
  so an -- ders Got -- tes |
  Geist in euch woh -- |
  %230
  net. %|
   %|
   %|
  Ihr a -- ber seid nicht fleisch -- %|
  lich, son -- dern geist -- _ |
  %235
  _ _ _ _ |
  _ lich, son -- dern geist -- |
  lich, ihr a -- ber seid nicht fleisch -- %|
  lich, son -- dern geist -- _ |
  _ _ _ _ |
  %240
  _ lich, son -- dern geist -- lich, %|
  so an -- ders |
  Got -- tes __ Geist in euch woh -- %|
   %|
  _ net, in euch |
  %245
  woh -- net. Wer |
  a -- ber Chri -- sti Geist __ %|
  nicht hat, der ist __ nicht |
  sein, der ist nicht |
  sein, wer a -- ber Chri -- sti |
  %250
  Geist __ nicht __ hat, der |
  ist nicht sein, der |
  ist nicht sein, wer a -- %|
  ber Chri -- sti Geist __ %|
  nicht hat, der ist __ nicht |
  %255
  sein, der ist nicht |
  sein, wer Chri -- sti Geist nicht hat, der |
  ist nicht sein. |
}

keyStuff = {
  \key g \major
  \time 4/4
  \dynamicUp
}

\bookpart {
  \header {
    piece = "Teil VI"
    copyright = ""
  }
  \score {
    \new ChoirStaff \with { \defaultTimeSignature } <<
      \new Staff \with {
        instrumentName = "Sopran I"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "cantus" << \clef violin \keyStuff \sopranoOneVI >>
        \new Lyrics \lyricsto "cantus" \sopranoOneWordsVI
      >>
      \new Staff \with {
        instrumentName = "Sopran II"
        midiInstrument = #"violin"
        autoBeaming = ##f
      } <<
        \new Voice = "soprano" << \clef violin \keyStuff \sopranoTwoVI >>
        \new Lyrics \lyricsto "soprano" \sopranoTwoWordsVI
      >>
      \new Staff \with {
        instrumentName = "Alt"
        midiInstrument = #"viola"
        autoBeaming = ##f
      } <<
        \new Voice = "alto" << \clef violin \keyStuff \altoVI >>
        \new Lyrics \lyricsto "alto" \altoWordsVI
      >>
      \new Staff \with {
        instrumentName = "Tenor"
        midiInstrument = #"cello"
        autoBeaming = ##f
      } <<
        \new Voice = "tenor" << \clef "G2_8" \keyStuff \tenorVI >>
        \new Lyrics \lyricsto "tenor" \tenorWordsVI
      >>
      \new Staff \with {
        instrumentName = "Baß"
        midiInstrument = #"contrabass"
        autoBeaming = ##f
      } <<
        \new Voice = "bass" << \clef "F" \keyStuff \bassVI >>
        \new Lyrics \lyricsto "bass" \bassWordsVI
      >>
    >>
    %\midi { \tempo 4 = 120 }
  }
  \paper {
    bookTitleMarkup = \markup \null
    min-systems-per-page = #3
  }
}

