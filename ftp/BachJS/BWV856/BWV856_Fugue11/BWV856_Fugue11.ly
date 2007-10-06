\version "2.10.3"

\header {
  title = "Fugue 11 - BWV 856"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga XI"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 856"
  date = "18th Century"
  source = "Bach Gesselschaft"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2006/April/19"
  version = "2.10.3"
 footer = "Mutopia-2007/04/21-964"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key f \major
 \time 3/8
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 92
 \partial 8 r8 R4. R4. R4. r8 r f'8 a'8 g' f' g'8 b16 c' d' e' f'8 g'16 f' e' d' e' d' c' d' e' f' g'8 f' e'
 << { f'16 e' d' e' f' g' a' c'' bes' a' g' f' e'4.^\prall f'8 a'4 g'8 c''4 b'8 e''4
 d''4.~ d''16[ d'' c''8] c''8 d''8 c'' bes' c'' e'16 f' g' a' bes'8 c''16 bes' a' g' a' g' f' g' a' bes'
 c''16 bes' a' bes' c'' d'' e'' g'' f'' e'' d'' c'' b'4.^\prall c''16 d'' e'' f'' g'' a'' bes' c'' d'' e'' f'' g''
 a'' c''' bes'' a'' g'' f'' f''8 e''4^\prall f''8 f''8\rest f''8\rest g''4.~ g''16 g'' f'' e'' d'' c'' f''4.~ f''16 f'' e'' d'' cis'' b'
 e''4.~ e''8 a' d'' cis''4 a''8 bes''8 a'' g'' a''8 cis''16 d'' e'' f'' g''8 a''16 g'' f'' e'' f'' a'' g'' f'' e'' d''
 cis''4.~ cis''16 d''32 c'' bes'16 a' g' f' bes'8 a' g' a'4.~ a'16 bes' e'8.^\prall d'16 d'16 e' f' g' a' bes'
 c''16 bes' c'' d'' ees'' d'' fis' e'! d' e' fis' g' a'4.~ a'16 g' a' bes' c'' d'' ees''8 d'' c'' } \\
 { s4 d'8 e'8 g' c' c'4.~ c'4 f'8 e'4 a'8 g'4 c''8~ c''16 c'' b' a' g' f' e'8.[ bes'!16 a' g'] f'16 e' d' e' f' g'
 a'8 a8\rest a8\rest R4. b8\rest b8\rest f'8 a' g' f' g'8 b16 c' d' e' f'8 g'16 f' e' d' e' d' c' d' e' c'
 f'4 e'8\rest g'8\rest g'8\rest c''8 d'' c'' bes' c''8 e'16 f' g' a' bes'8 c''16 bes' a' g' a'4.~ a'8 bes'16 a' g' f'
 g'4.~ g'8 a'16 g' f' e' f' e' f' g' a' g' a' bes' a' g' f' e' d' cis' d' f' e' d' cis'8 d'8\rest a'8 bes'8 a' g'
 a'8 cis'16 d' e' f' g'8 a'16 g' f' e' f'4 c'8\rest cis'4.~ cis'16 a b cis' d' e' f'16 e' cis'4 d'4 c'8\rest R4.
 a8\rest a8\rest d'8 ees'8 d' c' s4. s4. } >>
 d''8 fis'16 g' a' bes' c'' bes' d'' c'' bes' a' bes' fis' g' a' bes' cis'' d''16 g'' bes'8^\prall a'16 g'
 << { g'8 bes'4~ bes'16 g' c'' bes' a' g' a'4.~ a'16 f' bes' a' g' f' e'8 f' g' a' bes' c''
 d''8 e'' f'' g''4.~ g''16 c'' f'' ees'' d'' c'' d'' c'' ees'' d'' c'' bes' c''8 e'!16 f' g' a' bes' a' c'' bes' a' g'
 a'16 g' bes' a' c'' bes' d'' c'' e'' d'' f'' e'' g'' a' bes' g' a'8~ a'16 bes' g'8. f'16 f'4^\fermata } \\
 { g16 d' g' f' e' d' e'4. c16\rest c' f' ees' d' c' d'4. c'8 d' e' f' g' a'
 bes'4.~ bes'16 g' c'' bes' a' g' a'4.~ a'8 s4 s4. s4. s4. s4. s8 e'8 f'8~ f' e'4 f'4 } >> \bar "||"
}

 \context Staff = "down" {
 \clef bass
 \key f \major
 \time 3/8
 \partial 8 << { c'8 } \\ { b,8\rest } >>
 << { d'8 c' bes c'8 e16 f g a bes8 c'16 bes a g a g f g a bes c'16 bes a bes c' d' e' g' f' e' d' c'
 b4.^\prall c'8 bes! a bes16 a g a bes c' a4 s8 } \\
 { R4. R4. R4. R4. R4. R4. R4. R4. b,8\rest b,8\rest c8 d8 c bes, } >>
 c8 e,16 f, g, a, bes,8 c16 bes, a, g, a, g, f, g, a, bes, c16 b, a, b, c d e g f e d c b,4.^\prall
 c8[ d16 e f8] bes4. a16 c' bes a g f e4.^\trill f4 r8 R4. R4. R4. r8 r8 c'8 d' c' bes c'8 e16 f g a
 bes8 c'16 bes a g a c' bes a g f e4.^\trill f8 g a d4 r8 e8 f g cis4 cis'8 d'8 c'! bes a4.~ a4.~ a4.~ a4.~ a4 a8
 bes8 a g a8 cis16 d e f g8 a16 g f e f8. g16 f e d16 g a8 a, d,4 d8 ees8 d c d8 fis,16 g, a, bes, c16 bes, d c bes, a,
 << { d'8 fis16 g a bes c' bes d' c' bes a bes d' c' bes a g fis8 b8\rest b8\rest g16 a bes c' d' a bes8 g fis } \\
 { bes,8 b,8\rest b,8\rest fis b,8\rest b,8\rest g8 b,\rest b,\rest ees8 b,\rest b,\rest d b,\rest b,\rest
 b,16\rest c d8 d } >> g,8 a, bes, c d e f g a bes4.~ bes16 g c' bes a g f c f ees d c bes,16 c bes, a, g, f, e,4 r8
 f,8 g, a, << { s8 d8 g8~ g16 f bes a g f g8 bes,16 c d e f4.~ f4 bes8~ bes8 s4 } \\
 { bes,4 g,8\rest a,4 a,8\rest g,4 g,8\rest f,8 g, a, bes, c d e c f } >> bes,8 c c, f,4_\fermata \bar "||"
}
>>

 \layout { }

 \midi { }

}
