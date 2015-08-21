\version "2.18.2"

\header {
  title = "Fuga 20 - BWV 865"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga XX"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 865"
  date = "18th Century"
  source = "Bach Gesselschaft Edition (1866)"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Stelios Samelis"

 footer = "Mutopia-2015/08/21-807"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\score {

 \context PianoStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \minor
 \time 4/4
 << { R1 R1 R1 } \\
 { \new Voice { \change Staff="down" \stemUp a8\rest a16 gis a8 b
 \change Staff="up" \stemDown c'8 c'16 b c'8 d' e'16 d' c' d' e'8 f'
 \change Staff="down" \stemUp gis8 e a8\rest a8 b16 c' a b
 \change Staff="up" \stemDown c'16 d' b c' d'8 c' b e' } } >>
 r8 e'16 dis' e'8 fis' g'8 g'16 fis' g'8 a' b'16 a' g' a' b'8 c'' dis' b r8 e'8
 \new Voice { \stemUp fis'16 g' e' fis' g' a' fis' g' a'8 g' fis' b' e'8 fis'16 gis' a'16 b' c'' d'' e''8 a' gis'4 }
 << { a'8 a' g'! f' e' c'' b' a' gis' e'' d'' c'' b'16 c'' d'' b' c'' b' a' c''
 d''16 e'' f'' d'' e''4 ~ e''8 a' b'16 c'' d''8 ~ d''8 c'' b' a' g' e'' d'' c''
 b'4 e''8\rest a'8 ~ a'8 g'16 fis' g'16 a' b' g' c''4 d''8\rest b'8 a'16 g' a' b' c''8 fis'
 b'16 a' c'' b' a' g' fis' g' e'8 e''16 f''! e''8 d''! c''8 c''16 d'' c''8 b' a'16 b' c'' b' a'8 g'
 fis''8 a'' f''8\rest e''8 d''16 c'' e'' d'' c'' b' d'' c'' b'8 c'' d''16 b' a' g' e''32[ fis'' e''16 fis'' g''] fis''8. g''16
 g''2 ~ g''8 g''16 a'' g''8 f'' e''16 d'' c'' d'' e''16 f'' g''8 ~ g''16 f'' e'' f'' g''16 a'' bes'' g''
 a''8. bes''16 g''8. a''16 f''16 e'' f'' g'' a''8 a' d''16 g'' f'' e'' e''8. d''16 d''4. e''8
 f''2 ~ f''4 ~ f''16 e'' d'' c'' b'8 c''4 b'8 c''4. bes'8 a'2 ~ a'8 gis' a' b' e'4 ~ e'16 fis' gis' a' b' c'' b' c'' d''4 ~
 d''8 c''4 b'8 ~ b'8 a'16 gis' a'4 ~ a'4 gis'4 a'8 a'16 gis' a'8 b'
 c''8 c''16 b' c''8 d'' e''16 d'' c'' d'' e''8 f'' gis'8 e' c''8\rest a'8 b'16 c'' a' b' c'' d'' b' c''} \\
 { c'16 b c'4 d'8 e'16 d' e'4 f'8 ~ f'16 fis' e' fis' gis'8 a' b'4 e'8\rest a'8
 g'!4 ~ g'16 f' e' g' fis'4 gis' a'8 a' g'! fis' e' c'' b' a'
 g'16 fis' e' fis' g'8 fis'8 ~ fis'8 e'16 dis' e'4 ~ e'8 a'16 dis' e'2 ~ e'8 dis'
 e'4. dis'8 e'8 c'8\rest c'4\rest d'8\rest e'8[ fis' g'] a'8 c'8\rest c'4\rest
 e'8\rest d'8[ e' fis'] g'8 e'8\rest e'4\rest r2 e'8\rest d''16 e'' d''8 c''
 b'8 b'16 c'' b'8 a' g'4 a'8 b' c''4 g'8\rest d''8 cis''8. d''16 e''4 ~
 e''16 cis'' d''8 ~ d''16 b'! cis''8 d''4 g'8\rest f'8 g'16 cis'' d'' e'' cis''4 d''8 a'16 bes' a'8 g'
 f'8 a' b'! c'' d''16 c'' b' a' g'8 f'8 ~ f'8 e' d'4 d'16\rest a'16 g' f' e'8 g'8 ~
 g'8 f'16 g' f'8 e' d'8 d'16 e' d'8 c' b16 c' d' c' b8 a gis' b' e'8\rest f'!8
 e'16 d' f' e' d' c' e' d' c'8 d' e'16 c' b a f'16 d' e' f' b8. a16 a8 b8\rest b4\rest R1 e'16 d' c' d' e'8 f' gis e s4 } >>
 << { d''8 c'' b' e'' a'8 a''4 g''8 ~ g''8 c'''16 b'' a''16 g'' fis'' e'' dis''8 b' cis'' dis''
 e''16 d''! c''! b' c''4 b'8 e''16 dis'' e''8 fis'' g''8 g''16 fis'' g''8 a'' b'2 ~
 b'4. e''16 d'' c''16 b' a' b' c''8 b'16 a' g'4 c''4 ~ c''8 b'16 a' b'8 cis''
 d''2 ~ d''8 c''16 b' c''8 d'' e''8 a' a''4 ~ a''16 gis'' a'' gis'' a''8 b'' e''4. d''16 c'' b'8 e''16 d'' c'' b' a' gis'
 a'8 a''8\rest gis'8 a''8\rest a'4 a''4\rest } \\
 { s1 r2 d'8\rest e'16 dis' e'8 fis' g'8 g'16 fis' g'8 a' b'16 a' g' a' b'8 c''
 dis'8 b c'8\rest e'8 fis'16 g' e' fis' g' a' fis' g' a'8 g' fis' b' e'4. dis'8
 e'8 c''16 b' a'16 g' fis' e' d'8 g'16 f' e' d' cis' b a8 d''16 c''! b' a' gis' fis' e'4 a'
 f'8\rest a'16 gis' a'8 b' c''8 c''16 b' c''8 d'' e''16 d'' c'' d'' e''8 f'' gis'8 e' d'8\rest a'8
 b'16 c'' a' b' c'' d'' b' c'' d''8 c'' b' e'' } >>
 a'4 ~ a'16 f'' d'' b' g'4 ~ g'16 e'' c'' a' f'8 g'16 a' g'16 f' e' f' e'2 ~ e'16 d' e' f' g' a' b' c''
 << { s2 e''8\rest c''16 b' c''8 d'' e''8 e''16 d'' e''8 f'' g''16 f'' e'' f'' g''8 a'' b'8 g' e''8\rest c''8
 d''16 e'' c'' d'' e'' f'' d'' e'' f''8 e'' d'' g'' c''16 b'! d'' c'' b' a' g' f' e'8 f'16 g' a' b' c'' d''
 b'8 a'16 g' c''2 b'4 c''8 e''16 f'' e''8 d'' c'' cis'' d'' e''
 a'8 d''16 e'' d''8 c'' b'16 c'' d'' c'' b'8 a' g'4 g''4\rest f''2\rest } \\
 { d'16 e' d' e' f'4 ~ f'16 a' g' f' e'8 a' g'2 ~ g'8 c'' b' a' g' g' f' e'
 d'16 g' a' b' c''2 b'8 bes' a'8 d'8\rest c'4\rest g4\rest c'8\rest d'8 ~
 d'16 e' c' d' e' f' d' e' f'8 e' d' g' e'16 f' e' d'
 \new Voice { \stemDown c'16[ b \change Staff="down" \stemUp a16 gis]
 a8[ \change Staff="up" \stemDown a'16 bes'] }
 a'8 g' f'8 f'16 g' f'8 e' d'16 e' f' e' d'8 c' b'8 d'' f'8\rest a'8 g'16 f' a' g' f' e' g' f' } >>
 << { s1 s1 f''2\rest f''8\rest d''16 e'' d''8 c'' b'8 b'16 c'' b'8 a' g'16 a' b' a' g'8 fis'
 e''8 g'' g''8\rest d''8 c''16 b' d'' c'' b' a' c'' b' a'8 b' c'' g' d''16 e'' d'' e'' e''8.^\trill d''32 e''
 f''2 ~ f''8 e''16 f'' e''8 d'' c''8 c''16 d'' c''8 b' a'16 b' c'' b' a'8 g'
 f''8 a'' g''8\rest e''8 d''16 c''! e'' d'' c'' b' d'' c'' b'4. a'8 ~ a'16 b' gis' a' b'4 ~
 b'16 c'' a' b' c''4 ~ c''16 d'' b' c'' d'' c'' b' a' gis'16 b' c'' d'' e''16 f'' g''!8 ~ g''16 a'' g'' f'' g''4 ~
 g''16 f'' e'' f'' g''4 ~ g''16 bes'' a'' g'' f'' e'' d'' cis'' d''16 e'' d'' e'' e''8. d''16 d''2 ~ d''4 f''4\rest d''2\rest R1 } \\
 { e'8 f' g' d' a'16 b' a' b' b'8.^\trill a'32 b' c''16 d'' c'' d'' d''8.^\trill c''32 d'' e''16 d'' c'' b' a' g' fis' e'
 fis'8 d' e' fis' g' fis' g' a' d'4. dis'8 e'8 e'16 dis' e'8 b8\rest
 f'8\rest g'8[ a' b'] c''8 g'4 fis'16 g' a'8 d'8\rest d'4\rest e'2\rest
 f'16\rest e''16 d'' c'' b' a' gis' a' b'2 ~ b'8 e'16 f' e'8 d' c'8 c'16 d' c'8 bes
 a16 b! cis' b a8 g fis'8 b' d'8\rest e'8 d'16 c' e' d' c' b d' c' b8 c' d'16 c' e' d'
 c'8 d' e'16 d' f' e' d'8 e' f'4 ~ f'8 e' e'8\rest e'16\rest bes'16 a'4 ~ a'16 cis'' e'' d''
 e''4 ~ e''16 a' cis'' d'' e''16 cis'' d''8 f'8\rest a'16 g' f'8 bes' a' g' ~ g'8 f'16 e' f'16 g' a' f' d'4 d'4\rest g'2\rest R1 } >>
 << { f''2\rest f''8\rest e''16 f'' e''8 d'' c''8 c''16 d'' c''8 bes' a'16 bes' c'' bes' a'8 g'
 f''8 a'' f''8\rest e'' d''16 cis'' e'' d'' cis'' b' d'' c'' b'8 cis'' d'' a' e''2 ~
 e''16 cis'' d'' f'' g''4 ~ g''16 e'' f'' a'' bes''4 ~ bes''16 g'' a'' c''' d''8 e''16 g'' c''4 ~ c''16 f' g' bes' ~
 bes'16 bes' a' g' g'8. f'16 f'4 c''4 ~ c''1 ~
 c''8 a' ees''4 ~ ees''8 d'' c''16 bes' d'' c'' bes'16 c'' d'' c'' bes' a' g' f' g' a' bes' a' g' f' e' d'
 e''2 g''8\rest e''16 d'' e''8 f'' g''8 g''16 f'' g''8 a'' bes''16 a'' g'' a'' bes'' g'' a'' e''
 f''16 e'' d'' e'' f'' d'' e'' cis'' d'' c'' bes' c'' d'' bes' c'' a' <b'! e'' gis''>4^\fermata g''4\rest a''2 ~
 a''8 e''16 d'' e''8 fis'' gis''8 gis''16 fis'' gis''8 a'' b''16 a'' gis'' a'' b''8 c''' <a' b' dis''>4 f''8\rest <b' e''>8 } \\
 { R1 d'8\rest a'16 b' a'8 g' f'8 f'16 g' f'8 e' d'16 e' f' e' d'8 cis' bes'8 d'' d'8\rest a'8 g'16 f' a' g' f' e' g' f' e'8 f' g'4
 f'4 e'8 a' ~ a'16 cis'' d''8 g'8 c''8 ~ c''16 e'' f''8 bes'4 ~ bes'16 g' a' c'' d'4
 e'8 f'4 e'8 f'8 c''16 d'' c''8 bes' a'8 a'16 bes' a'8 g' fis'16 g' a' g' fis'8 ees'
 d''8 fis'' e'8\rest c''8 bes'16 a' c'' bes' a' g' bes' a' g'8 c'8\rest c'4\rest c'2\rest
 d'8\rest a'16 g' a'8 b' cis''8 cis''16 b' cis''8 d'' e''16 d'' cis'' d'' e''8 f'' g'8 e' f'8\rest a'8
 a'8 d'' a' g' f' d' f' f' e'4 d'4\rest d'8\rest a'16 gis' a'8 b' c''8 c''16 b' c''8 d'' e''16 d'' c'' d'' e''8 f''!8
 gis'8 e' b'8\rest a'8 fis'4 e'8\rest e'8 } >>
<< { c''8 b'16 a' c''16 b' a' gis' a'4 d''4\rest f''2\rest f''8\rest d''16 cis'' d''8 e''
 f''8 f''16 e'' f''8 g'' a''16 g'' f'' g'' a''8 bes'' cis''8 a' a''8\rest d''8 ~ d''16 c'' b' c'' d'' e'' fis'' gis'' a''1^\fermata } \\
 { e'8 f'! e'4 e'4 e'8\rest e'8 a8 a'16 bes' a'8 g' f'8 f'16 g' f'8 e'
 b'8\rest a'16 g' a'8 b' cis''8 cis''16 b' cis''8 d'' e''16 d'' cis'' d'' e''8 f''8 gis'4 f'8\rest
 d''8 ~ \stemUp d''8 e''16 f''! <cis'' e''>8 <b' d''> cis''2 ^\fermata } \\
 { \stemUp a'4 \stemDown a'8 d' \stemUp cis'4 s4 s1 s1 s1
 d'8\rest \stemDown cis''16 d'' e'8\rest e'16\rest gis' a'2 } >>
 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key a \minor
 \time 4/4
 R1 R1 R1 << { a4 g8 fis e8 c' b a g16 fis e fis g8 a b16 a g a b8 c' ~ c'8 b16 a
 \new Voice { \tieDown b8[ \change Staff="up" \stemDown e'8] ~ e'8 d'16 cis' d'4 ~
 d'8 c'!16 b c'4 ~ c'16 a' g'! f'! e'16 d' c' b } } \\ { R1 R1 R1 R1 } >>
 r8 a,16 gis, a,8 b, c8 c16 b, c8 d e16 d c d e8 f gis,8 e, r8 a,8 b,16 c a, b, cis d b, cis d8 c b, e
 << { g8\rest e16 dis e8 fis g8 g16 fis g8 a b16 a g a b8 c' dis8 b, f8\rest e8 fis16 g e fis g a fis g a8 g fis b
 e4 b8 a gis8 e fis gis a8 f'8\rest f'4\rest f'8\rest a8[ b cis']
 d'8 d'8\rest d'4\rest d'8\rest b8 a4 g2 ~ g8 a4 d8 ~ d8 } \\
 { a,8 b, cis dis e8 e16 d e8 fis g4 b,8\rest a8 b b,16 a, g,8 e, a,4 b, c8[ b,] a,[ b,16 a,]
 g,8 a, b,4 e8 d c b, a, b a g! fis g fis e d e d c b,8 g4 fis8 g16 e d c b,8 e c a, d d, g,8 } >>
 \clef treble << { g'16 a' g'8 f' e'8 e'16 f' e'8 d' } \\ { b8\rest b4\rest b2\rest } >> c'16 d' e' d' c'8 bes a' cis'' r8 g'
 f'16 e' g' f' e' d' f' e' d'8 e' f'16 e' d' c'
 \clef bass << { bes8 a16 g a4 ~ a8 a b cis' d'8 d'8\rest d'4\rest } \\
 { b,8\rest a16 bes a8 g f8 f16 g f8 e d16 e f e d8 c } >> b8 d' r8 a8 g16 f a g f e g f e8 f g16 e d c
 << { b2\rest c'8\rest b16 c' b8 a gis4. e8 d8 f16 e d8 c b,8 c d b, e4. f8 ~ f8 d e d c d'8\rest d'4\rest
 c'8\rest a16 gis a8 b c'8 c'16 b c'8 d' s2 s4 d'8\rest a8
 b16 c' a b c' d' b c' d'8 c' b e' a2 ~ a8 g16 fis g8 a b8 e'4 dis'8 e'8 e'8\rest e'4\rest } \\
 { f16 e d c d e f d b,4 c8 d8 ~ d8 e d c b,8 d16 c b,8 a, gis,8 a, b, gis, a, b, c f d b, e e, a, a c e
 a,8 f e d c a g! f e8 a16 g f16 e d c b,8 c'16 b a g! f e
 d8 b,8\rest e8 b,\rest f8 e d e c b, c a, b,4. a,8 g,8 e16 dis e8 fis g8 g16 fis g8 a } >>
 b16 a g a b8 c' dis8 b, r e fis16 g e fis g a fis g a8 g fis b e8 e16 dis e8 fis g2 ~ g8 fis16 e fis8 gis
 << { e'8\rest a16 gis a8 b c'8 c'16 b c'8 d' e'16 d' c' d' e'8 f'
 gis8 e a8\rest a8 b16 c' a b c' d' b c' d'8 c' b e' a4. g8 ~ g8 f16 e f4 ~ f8 e16 d e4 ~
 e4 d4 ~ d16 c d e f g a b c'2 ~ c'4 ~ c'16 e' d' c'
 b8 e'16 d' c'16 b a b c'2 ~ c'8 g4 d'8 ~ d'8 e' d' c'
 g4 b4\rest c'4\rest c'8\rest g8 a16 b g a b c' a b c'8 b a d' g4. c'8 d'16 f g a b c' d' b g4 a4\rest } \\
 { a8 b,8\rest b,4\rest b,8\rest a8 g f e4 b,4\rest b,8\rest a,16 b, c8 d8 ~ d8 c16 d e8 f8 ~
 f8 e16 d e8 c f8 e16 d e f e d cis8 a, d c b, g, c b,
 a,8 b,16 c b,8 g, c4 g,8\rest b,8 a,4 g,8\rest g,8 f,16 g f e d c b, a,
 g,8 g a f c'8 c16 b, c8 d e8 e16 d e8 fis g16 f e f g8 a
 b,8 g, g,8\rest c8 d16 e c d e f d e f8 e d g c8 d16 e f4 ~ f4 e8 a d8 e16 f g8 g, c4 a,8\rest e8 } >>
 a,16 bes a g! f e d cis
 << { c'8\rest a16 bes a8 g f8 f16 g f8 e d16 e f e d8 c b d' b8\rest a8
 g16 f a g f e g f e8 f g d a16 b a b b8.^\trill a32 b c'2 ~ c'8 fis g a b d e fis g4. a8 b2 ~
 b8 e fis g a8 d e8 d16 e fis16 g e fis g a fis g a8 b16 c' b c' a b
 c'8 d'16 e' d'8 c' b gis a b c'8 e fis gis a4 a8\rest e8
 f8 g a bes a8 gis16 fis e8 a f!8 e4 f16 dis e2 ~ e1 ~ e8 c'8\rest c'4\rest c'8\rest e16 f e8 d
 cis8 cis16 d cis8 bes, a,4 d'8\rest f'16 e' d'4. cis'8 d'8 a c'4\rest
 d'8\rest a16 gis a8 b c'8 c'16 b c'8 d' e'16 d' c' d' e'8 f' gis e c'8\rest a8 } \\
 { d2 ~ d4. e8 f2 ~ f16 g f e d4 ~ d8 c4 b,8 c8 d g,4 ~ g,8 a g f e8 d c e
 d8 d16 e d8 c b,8 b,16 c b,8 a, g,16 a, b, a, g,8 fis, e8 g a,8\rest d!8
 c16 b, d c b, a, c b, a,8 b, c g, d4 e fis g a4 b8 a gis8 e fis gis a8 c d e f4 a,8\rest cis8
 d8 e f cis d4 a,4 ~ a,8 gis, a,4 e,2 ~ e,1 ~ e,8 e16 f e8 d cis8 cis16 d cis8 b,
 a,16 b, cis b, a,8 g, f,4 b,8\rest f8 bes8 g a4 d8 d16 cis d8 e
 f8 f16 e fis8 gis a16 gis fis gis a8 b c8 a, g,8\rest d8 e16 f d e f g e fis } >>
 << { b16 c' a b c' d' b cis' d'8 c' b e' a4 e'4\rest e'8\rest a16 bes c'8 bes a8 } \\
 { g8 f! e a d8 a ~ a16 gis a gis a4 ~ a16 g! f e f4 ~ f16 e d cis d8 } >>
 \clef treble << { d'16 e' f' g' a'8 ~ a'8 } \\ { g8\rest g4\rest s8 } >> g'4 f'8 ~ f'8 e' d'4 ~ d'16 cis' e' d' cis' b d' cis'
 d'4 ~ d'16 b cis' e' f'4 ~ f'16 d' e' g' a'4 ~ a'16 f' g' bes' e'8 f' bes4
 \clef bass << { c'2 ~ c'8 c d e f e f g a16 g fis g a16 bes c'8
 fis8 a g fis g f ees d8 ~ d8 g16 a g8 f e8 e16 f e8 d cis16 d e d cis8 b, a8 cis' e'8\rest a'8
 bes'8. a'16 g'16 f' e' d' cis'4 g'8\rest cis'8 d'8 f' d' a bes f bes d' b!4 d'4\rest c' d'4\rest c'4 d'\rest b d'4\rest
 d'8\rest b16 c' d' e' fis' gis' a4 b8\rest b8 } \\
 { a,8\rest c16 d c8 bes, a,8 a,16 bes, a,8 g, f,16 g, a, g, f,8 ees, d8 fis a,8\rest c8
 bes,16 a, c bes, a, g, bes, a, g,4. fis,8 g,1 ~ g,2 ~ g,8 e16 f g16 f e d cis8 c8\rest c4\rest c8\rest e'8[ cis' a]
 d8 b,8\rest b,4\rest d8 a,8\rest a,4\rest d4_\fermata b,4\rest <dis a> b,4\rest
 <e a>4 b,4\rest <e d'> b,4\rest c2\rest fis4 a,8\rest gis8 } >>
<< { s1 s1 \change Staff="up" \stemDown d'8[ \change Staff="down" \stemUp a16 b] cis'8 d' e'4 d'8\rest d'8
 g'4 d'8\rest f'16 e' d'4 d'8\rest d'16 e' f'8 e'16 d' e'8 f' e'2 } \\
 { \stemUp c'8 d' c' b a8 a16 bes a8 g! f8 f16 g f8 e d16 e f e d8 cis
 \stemDown d8 f e d g4 c8\rest f8 e4 c8\rest d8 b2 s8 cis'16 b cis'8 d' e'2_\fermata } \\
 { \stemDown a8 d e4 \tieDown a,2 ~ a,1 ~ a,1 ~ a,1 ~ <a, a>1_\fermata } >>
 \bar "|."
}
>>

 \layout {
   \context {
   }
 }

 
  \midi {
    \tempo 4 = 76
    }



}
