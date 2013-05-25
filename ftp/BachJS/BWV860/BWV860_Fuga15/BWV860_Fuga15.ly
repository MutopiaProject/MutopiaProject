\version "2.6.0"

\header {
  title = "Fuga 15 - BWV 860"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Fuga 15 - BWV 860"
  mutopiacomposer = "BachJS"
  mutopiapoet = "Johann Sebastian Bach"
  mutopiainstrument = "piano"
  date = "18th century"
  source = "Augener, ed. C. Czerny (1791-1857)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  maintainerEmail = "chopin@zak.forthnet.gr"
  lastupdated = "2005/August/20"
  
  footer = "Mutopia-2005/10/03-605"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key g \major
 \time 6/8
 g'8 a'16 g' fis' g' a'8 b'16 a' g' a' b'8 a' g' d' c''4 b'8 a' g' fis' e''4 d''8 e''16 d'' c'' b' a'8 c''16 b' a' g'
 << { fis'8 g' a' g' a' b' a' b'16 cis'' d'' b' cis'' b' cis'' d'' e'' cis'' d'' cis'' d'' e'' fis'' d'' e'' d'' e'' fis'' g'' e''
 fis''8 g''16 fis'' e'' d'' g''4. ~ g''16 fis'' e'' g'' d'' g'' cis'' g'' b' g'' a' g''
 fis''8 d'' e'' fis'' g'' a'' ~ a'' d'' g'' ~ g'' fis'' e'' d'' c'' b' a'4 r8
 r4 d''8 ~ d'' c'' a'' ~ a'' g''4 ~ g''8 a''16 g'' fis'' e'' d''4. ~ d''4. ~ d''8 d'' c'' b' a' g' c''16 d'' e''4 ~ e''16 d'' c'' b' a' c''
 b'16 c'' d''4 ~ d''16 c'' b' a' g' b' a'16 b' c''4 ~ c''16 b' a' g' fis' a'
 g'16 a' b'4 ~ b'8 e' a' ~ a'16 g' a'8 b' c''16 d'' c'' b' a' g' fis'8.^\prall[ e'32 fis' g'8] ~ g'16 b' a' g' fis' e'
 d'8 r r r4. a'8 g'16 a' b' a' g'8 fis'16 g' a' g' } \\
 { d'8 e'16 d' cis' d' e'8 fis'16 e' d' e' fis'8 e' d' a g'4 fis'8 e' d' cis' b'4 a'8 b'16 a' g' fis' e'8 g'16 fis' e' d'
 cis'8 g' fis' e' d' cis' d'16 e' fis' d' g' d' a' d' b' d' c''! d' b'4. c''4. ~ c''8 fis' g' ~ g' fis'16 g' a' fis'
 g'16 fis' g' a' b' g' a' g' a' b' c'' a' b'8 c''16 b' a' g' c''4. ~ c''16 b' a' c'' g' c'' fis' c'' e' c'' d' c''
 b'8 f' e' d' c' b r4 g'8 fis'4. ~ fis'4 fis'8 e'4. ~ e'4 e'8 d'4.
 d'8 c'16 d' e' d' c'8 b16 c' d' c' b8 c' d' g' s4 s2.
 g8 g16 a b cis' d'8 b16 cis' d' e' fis'8 e' dis' e' d' cis' } >> fis'8 g' a' d'' e'4 fis'8 g' a' b' cis'4
 d'8 d'16 e' fis' g' a'8 fis'16 g' a' b'
 << { c''4 b'8 a'4. g'16 g'' fis'' e'' d'' fis'' e'' fis'' e'' d'' c'' e'' d'' e'' d'' c'' b' d'' c'' d'' c'' b' a' c''
 b'16 a' g' b' fis' b' e' b' d' b' cis' b' a' g' fis' a' e' a' d' a' cis' a' b a' g' fis' e' g' d' g' cis' g' b g' a g' } \\
 { fis8 a' g' ~ g' g' fis' g' r r r4. R2. a8\rest a\rest d' cis' f\rest f\rest g\rest g\rest cis' b e\rest e\rest
 f8\rest f\rest b a d\rest d\rest } >>
 fis'16 d'' c''! b' a' g' fis' e' d' c' b a g a b g c' g d' g e' g f' g e' c'' b' d'' a' d'' gis' d'' fis' d'' e' d''
 c''16 a' b' cis'' dis'' e'' fis'' g'' a'' b'' c'''! dis''
 e''8 fis''16 e'' dis'' e'' fis''8 g''16 fis'' e'' fis'' g''8 fis'' e'' b' a''4
 << { g''8 fis'' e'' dis'' c'''4 b''8 c'''16 b'' a'' g'' fis''8 a''16 g'' fis'' e'' dis''8 a'' g'' fis'' e'' dis'' e'' d''! c'' d'' c'' b'
 c''16 c''' b'' a'' g'' b'' a'' b'' a'' g'' fis'' a'' g'' a'' g'' fis'' e'' g'' fis'' g'' fis'' e'' dis'' fis''
 e''8 fis''16 g'' a''8 ~ a''8 g''16 a'' b''8 ~ b''8 a'' g'' fis''16 g'' a''8 dis''
 e''4 b'8 a'4. ~ a'4 a'8 g'4. ~ g'4 g'8 fis'4. ~ fis'16 b' cis'' b' ais' b' cis''8 d''16 cis'' b' cis'' } \\
 { e'16 dis' e' fis' g' e' fis' e' fis' g' a' fis' g'8 a'16 g' fis' e' a'4. ~ a'16 g' fis' a' e' a' dis' a' cis' a' b a'
 g'8 fis'16 g' a' g' fis'8 e'16 fis' g' fis' e'8 fis' g' c'' dis'4 e'8 fis' g' a' b4
 c'16 b a b c' d' e' dis' e' fis' g' a' b'4. ~ b'8 c'' fis' e'16 fis' g'4 ~ g'16 fis' e' d' cis' e'
 d'16 e' fis'4 ~ fis'16 e' d' cis' b d' cis' d' e'4 ~ e'16 d' cis' b ais cis' b8 c'\rest c'\rest c'4.\rest } >>
 d''8 cis'' b' ais' g''4 fis''8 g''16 fis'' e'' d'' cis''8 e''16 d'' cis'' b' ais' b' cis'' ais' d'' ais' e'' ais' fis'' ais' g'' ais'
 fis''16[ ais' b' fis'' e''32 d'' cis'' d''] e''16[ gis' ais' e'' d''32 cis'' b' cis'']
 << { d''2. ~ d''2. ~ d''16[ fis'32 gis' a'16 e' b' e'] cis'' e' d'' fis' e'' g' } \\
 { b16 cis' d' b e' b fis' b gis' b a' b gis'8 e' fis' gis' a' b' s2. } >>
 fis'16[ g'32 a' b'16 fis' cis'' fis'] d'' fis' e'' g' fis'' a' g' fis' g' b' e'' g' fis' b' a' cis'' d''8 ~ d'' cis''4 d''8 e''16 d'' cis'' d''
 e''8 fis''16 e'' d'' e'' fis''8 g''16 fis'' e'' d'' cis''8 b''4 ~ b''16 a'' b'' a'' g'' fis'' e''2.^\trill ~
 e''16[ a''32 g'' fis''16 a'' e'' a''] d'' a'' cis'' a'' b' a''
 g''16 fis'' e'' g'' d'' g'' cis'' g'' b' g'' a' g'' fis'' e'' d'' fis'' cis'' fis'' b' fis'' a' fis'' g' fis''
 e''16 d'' cis'' e'' b' e'' a' e'' g' e'' fis' e'' d'' fis' e' g' d'' cis''
 << { d''4. ~ d''2. ~ d''8 c''4 ~ c''8 b'4 ~ b'8 a'4 ~ a'16 g' a' g' fis' g' fis'[ d'32 e' fis'16 d' g' d'] a'16 d' b' d' c'' d' } \\
 { s4. d'4.\rest e'16\rest g'16[ f' e' d' f'] e' f' e' d' c' e' d' e' d' c' b d' c' d' c' b a c' b4. a8 a8\rest a8\rest a4\rest a8\rest } >>
 b'16 g'' f'' e'' d'' c'' b' a' g' f' e' d' c' e'' d'' c'' b' a' gis' fis' e' d' c' b
 a16 b cis' a d' a e' a fis' a g' a
 << { fis'8 b' g' e' a' fis' g'4. ~ g'16[ a' a'8.^\trill g'32 a']
 b'8 c''16 b' a' b' c''8 d''16 c'' b' c'' d''8 c'' b' a' g''4 fis''8 e'' d'' cis'' bes''4
 a''16 g'' fis'' e'' d''8 a''16\rest g''8[ c''16 g'' fis''] g''16[ fis''32 e'' d''16 g'' c'' g''] b'8 g'' a'
 b'16[ d''32 c'' b'16 d'' a' d''] } \\
 { d'8 c'!16 d' e' d' c'8 b16 c' d' c' b8 c' d' e' fis4 g8 a'16 g' fis' g' a'8 b'16 a' g' a'
 b'8 a' g' ~ g' d'' cis'' d'' g' fis' e' cis''4 c''!4 ~ c''16[ b'32 a'] b'8 a'4 b'8 b' a' g'4 fis'8 g' g' f' } >>
 << { g'8 c''4 ~ c''32[ g' a' b' c''16 g' d'' g'] e''32[ b' c'' d'' e''16 c'' fis'' c''] g''4 ~ g''16 fis''
 g''4.^\markup { \hspace #5.0 \musicglyph #"scripts.ufermata" } } \\
 { e'4 ees'8 d' e'! f' g' g' a' b'4 a'8 b'4. } \\ { s8 s4 s4 b'8 c'' s4 s16 d''[ e'' c''] ~ c''8 d''4. } >>
 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key g \major
 \time 6/8
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. g8 a16 g fis g a8 b16 a g a b8 a g d c'4 b8 a g fis e'4
 d'8 e'16 d' c' b a8 c'16 b a g fis4 e8 d16 e d c b, a, g, a, b, g, c g, d g, e g, f g,
 e16 d c e b, e a, e g, e fis, e d c b, d a, d g, d fis, d e, d c b, a, c g, c fis, c e, c d, c b,8 a, g, a, g, fis,
 << { s2 a4 b8 c' d' e' fis4 } \\ { g,16 g f e d f e f e d c e d e d c b, d c d c b, a, c  } >>
 b,16 c b, a, g, a, b, cis d e fis g fis8 b b, e a a,
 << { d'8 cis'16 b a c' b c' b a g b a b a g fis a g a g fis e g
 fis16 g fis e d e fis g a b c' d' } \\ { d8 e fis ~ fis g cis d r r r4. R2. } >>
 d8 c16 d e d c8 b,16 c d c b,8 c d g a,4 b,8 c d e fis,4
 g,16 a, b,4 ~ b,16 a, g, fis, e, g, fis, g, a,4 ~ a,16 g, fis, e, d, fis, e, fis, g,4 ~ g,16 fis, e, d, cis, e,
 d,16 e, fis, d, g, d, a, d, b, d, c d, b, g f e d c b, a, g, f, e, d, c, d, e, fis, gis, a, b, c d e fis gis
 a16 g! fis a e a dis a cis a b, a g8 c' b a b b, e16 fis g e a e b e cis' e dis' e e'8 r r r4. R2. R2. R2.
 R2. R2. R2. r16 b,32[ cis dis16 b, e b,] fis b, g b, a b, g fis e g d g cis g b, g a, g
 fis16 e d fis cis fis b, fis a, fis g, fis e d cis e b, e ais, e gis, e fis, e d fis e d cis b, ais, cis b, ais, gis, fis,
 b,8 cis16 b, ais, b, cis8 d16 cis b, cis d8 cis b, ais, g4 fis16 gis ais fis b fis cis' fis d' fis e' fis
 d'16[ fis g d' cis'32 b ais b] cis'16[ e fis cis' b32 ais gis ais] b8 r r r r b, e16 fis gis e a e b e cis' e d' e
 << { e'8.[ d'16 cis' b] a b a g! fis e d8 b\rest b\rest b4.\rest b4.\rest d8 e16 d cis d e8 fis16 e d e fis8 e d
 cis8 b4 a8 b16 a g fis e8 g16 fis e d cis4 d8 ~ d16[ g32 fis e16 g d g] cis g b, g a, g fis g a4 ~ a16 g fis e d fis
 e16 fis g4 ~ g16 fis e d cis e d e fis4 ~ fis16 b, cis d e fis g a g fis e d cis8 a8\rest a8\rest } \\
 { cis'8 b,\rest b,\rest b,\rest b,\rest cis d8.[ e16 d cis] b, cis b, a, g, fis, e,8 d cis d4 b,8 g,8 a,4 d8 cis b,
 a,2. ~ a,2. ~ a,4. ~ a,4 d,8\rest g,8\rest g,16\rest e16 d cis b,4 g,8\rest
 e,8\rest e,16\rest d cis b, a,4 e,8\rest e,\rest e,16\rest cis b, a, g,8 e,\rest e,\rest
 e,4.\rest e,16\rest a, b, cis d e } >>
 fis16 g a8 a, d8 c!16 d e d c8 b,16 c d c b,8 c d g a,4 b,8 c d e fis,4 g,8 fis,16 g, a, b,
 c,8 c'16 b a g fis e d c b, a, g, a, b, g, c g, d g, e g, f g, e[ e,32 fis, gis,16 e, a, e,] b, e, c e, d e,
 cis16 a g fis e d cis b, a, g, fis, e, d,2. ~ d,16 d c d e d c8 b,16 c d c b,8 a,16 b, c b, a,8 g,16 a, b, a,
 g,16[ g32 fis e16 g d g] cis g b, g a, g d c! bes, d a, d g, e fis, e e, e fis,8 d, g, e, c, d,
 << { s2. d8 g, b, c32[ b, c d e16 c fis c] g2. ~ g2. } \\
 { \stemUp g,4. ~ g,16[ g,32 a, b,16 g, c g,] ~ \stemDown g,8 g,4 ~ g,4. ~ g,2. ~
 g,2._\markup { \hspace #20.0 \musicglyph #"scripts.dfermata" } } >>
 \bar "|."
}
>>

 \layout { }

 \midi { \tempo 4 = 68 }

}
