\version "2.8.0"

\header {
  title = "Praeludium 16 - BWV 861"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium XVI"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 861"
  date = "18th Century"
  source = "Bach Gesselschaft Edition (1866)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2006/August/15"
  version = "2.6.0"
 footer = "Mutopia-2006/08/17-806"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key g \minor
 \time 4/4
 g''1^\trill ~ g''16[ d'' ees''32 d'' c''16] d''[ g'' c''32 bes' a'16] bes'[ g'' c''32 bes' a'16] bes'[ g'' a'32 g' fis'16]
 g'1^\trill ~ g'16[ e'' bes'32 a' g'16] a'[ e'' g'32 fis' e'16] fis'8.[ g'16] fis'[ a' d''32 c'' bes'16]
 c''16[ ees'' d''32 c'' bes'16] c''[ a'' c''32 bes' a'16] bes'[ d'' c''32 bes' a'16] bes'[ g'' bes'32 a' g'16]
 a'16[ f' bes'32 c'' d''16] c''[ f' d''32 ees'' f''16] ees''16[ c'' g''32 a'' bes''16] a''32[ bes'' c'''16 f''32 g'' ees''16]
 << { c'''16\rest bes''16 g'' bes'' f'' bes'' ees'' bes'' f'' bes'' g'' bes'' f'' bes'' ees'' a''
 bes''2. f''4 ~ f''16[ g''32 f'' ees'' f'' d''16] ees''4 ~ ees''16[ f''32 ees'' d'' ees'' c''16] d''4 ~
 d''16[ ees''32 d'' c'' d'' b'16] c''4 ~ c''16[ d''32 c'' b' c'' a'!16] b'4
 f''16\rest c''16 aes' c'' g' c'' f' c'' g' c'' aes' c'' g' c'' f' b'
 c''4 ees''4 ~ ees''16[ a''32 g'' fis'' g'' a''16] d''16 ees''8.
 d''8[ c''] bes'4 ~ bes'16[ ees''32 d'' c'' d'' ees''16] aes'16[ c''32 bes' aes' bes' c''16]
 fis'4 d''16\rest g'32[ a' bes' a' g'16] c''4 bes'4 a' g' fis' f''16\rest g''[ f''!32 ees''! d''16] } \\
 { d''8[ ees''] d''[ c''] d''[ ees''] d''[ c''] d''[ ees''] f''[ g''] d''[ ees''] ~ ees''16 d'' b' d''
 g'4 ~ g'16[ c''32 bes'! aes' bes' c''16] f'4 ~ f'16[ bes'32 aes' g' aes' bes'16]
 ees'4 ~ ees'16[ aes'32 g' f' g' aes'16] d'4 ~ d'16[ ees'32 f' ees' f' d'16] ees'8[ f'] ees'[ d'] ees'[ f'] ees'[ d']
 ees'8 g'4 c''8 ~ c''4 ~ c''16.[ c''32 a' bes' c''16]
 bes'8[ fis'] g'[ d'] ees'2 ~ ees'4 d'4 d'16\rest fis'32[ g' a' g' fis'16] d'16\rest e'32[ fis' g' fis' e'16]
 c'16\rest d'32[ e' fis' e' d'16] c'16\rest cis'32[ d' e' d' cis'16] d'4 f'4\rest } >>
 ees''16[ c''' d''32 c'' bes'16] c''16[ a'' bes'32 a' g'16] a'16[ ees''32 d'' c'' bes' a'16]
 << { bes'4 ~ bes'16[ c''32 bes' aes' c'' fis'16] g'4 ~ g'4 fis'4
 c''16\rest d'32[ g' f' ees' d'16] ees'8[ d'] c''16\rest g'32[ c'' bes'! a' g'16] a'16[ c''32 a' g' fis' e'16] fis'2 g'2^\fermata } \\
 { d'16\rest a'32[ g' f' ees' d'16] ees'4 e' c'16\rest a32[ bes c' bes a16] b16\rest c'32[ d' ees'! d' c'16]
 bes8[ b] c'[ b] c'2 ~ c'4 ~ c'16[ d'32 ees' d' ees' c'16] ~ c'16[ c'32 b a b c'16] b4^\trill } >>
 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key g \minor
 \time 4/4
 << { bes16 d' c' ees' bes d' a c' bes d' c' ees' bes d' a c' bes8[ c'] bes[ ees'] d'[ ees'] d'[ c']
 bes16 c' d'8 ~ d'16 c'8 bes16 ~ bes a8 bes16 ~ bes c'8 bes16
 a8[ g] e[ a] ~ a16 c' bes8] ~ bes16 a8 g16 ~ g8[ g] fis4 a8\rest d8 e4 f8[ g] s4 s2 } \\
 { g8[ g] g[ g] g[ g] g[ g] g1 ~ g8.[ f16] ees8[ d] c[ d] ees[ d] cis2 d8.[ d16] c8[ bes,]
 a,4. d8 g,4. c8 f,4 a8[ bes] c'[ bes] c'[ a] } >>
 bes1^\trill ~ bes16[ bes, c32 d ees16] d[ bes, ees32 f g16] f[ bes, g32 aes bes16] aes32[ bes aes16 g32 aes f16]
 b8[ g] c'[ bes] aes[ f] bes[ aes] g[ ees] aes[ g] f[ d] g[ g,]
 c1^\trill ~ c16[ g,32 f, ees, f, g16] c,16[ c'32 bes a bes c'16] fis2
 g16[ d32 c bes, c d16] g,16[ g32 f ees f g16] c2 d16[ a32 bes c' bes a16] bes8[ d] a[ d] g[ d]
 fis8[ d] e[ d] c!16[ a32 g fis g a16] bes,8[ b,] c16[ a bes,! g] a,[ fis g, ees] fis,8[ d,] g,[ g]
 << { b8\rest c'8 bes4 d2 a4\rest g16\rest c32[ g f ees d16] ees2 ~ ees16[ ees32 d c d ees16] ~ ees4 d2 } \\
 { c4 b,16\rest cis32[ d e d cis16] f,4\rest d,4 g,1 ~ g,4 g,4 ~ g,2_\fermata } >>
 \bar "|."
}
>>

 \layout {
   \context {
   \Staff \override VerticalAxisGroup #'minimum-Y-extent = #'( -6 . 6 )
   }
 }

 \midi { \tempo 8 = 54 }

}
