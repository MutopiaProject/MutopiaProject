\version "2.14.2"

\header {
  title = "Fuga 16 - BWV 861"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga XVI"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 861"
  date = "18th Century"
  source = "Bach Gesellschaft Edition (1866)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2011/Sep/21"
  
 footer = "Mutopia-2011/10/12-805"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key g \minor
 \time 4/4
 R1 r2 r8 g'8 bes' d' cis'4 d'4 r8 e'16 f' g'8 f'16 e'
 << { f'8 g'16 a' bes'8 a'16 g' a'8 bes'16 c'' d''8 c''16 bes' c''4 bes' a'8 d''16 c''! bes'8 c''16 d''
 ees''8 c'' a' fis'' g''4 g''4\rest } \\
 { d'4. e'8 f'8 e' f' g' a'8 g'16 fis' g'8 cis' d' a'4 g'16 fis' g'4 fis'8 a' d''4 f'4\rest } >>
 r8 e'8 a' f' d'4 cis'8 e' ~ e' d' g'4 ~ g'16 fis' g' a'
 << { bes'4 ~ bes'4 a'4 ~ a'16 d' e' fis' g'4 ~ g'8 fis'16 g' a'8 g'16 fis' g'4. c''8 } \\ { s4 c'2. bes8 ees'! s1 } >>
 f'8 g'16 a' bes'2 a'4 << { bes'4 f''4\rest f''2\rest } \\ { c'8\rest f'8 g' bes a4 bes4 } >>
 r8 c'16 d' ees'8 d'16 c' d'16 e' d' e' f'8 e'16 d' g'4. f'16 e' f'4
 << { s4 g''8\rest c''8 d'' f' ees'4 f' f''8\rest g'16 a' bes'8 a'16 g' a'8 bes'16 c'' d''8 c''16 bes'
 c''8 d''16 c'' bes'8 c''16 d'' ees''8 f''16 ees'' d''8 ees''16 f'' } \\
 { \stemUp e'8 bes' ~ \stemDown bes'8 a'4 g'16 a' bes'8 a'16 g' a'4 ~
 a'8 g'16 f' e'8 c' ~ c'8 d'16 ees'16 f'8. g'16 a'4 g'4 f'8\rest c'' d'' f' } >>
 << { g''8 ees'' c'' a'' bes''8 g''8\rest g''4\rest
 g''8\rest g''16 aes'' bes''8 aes''16 g'' aes''8 aes''16 g'' f''8 g''16 aes'' d''8 g''4 f''16 ees'' d''4. c''16 b' } \\
 { ees'4 f' f'8\rest f'16 g' aes'8 g'16 f' g'8 f'8\rest f'4\rest f'8\rest f''16 ees'' d''8 ees''16 f''
 b'8 ees''16 d'' c''8 d''16 ees'' f'8 g'16 f' ees'8 f'16 g' } >>
 << { c''4 b'8 d'' g'8 g'' aes'' c'' b'4 c'' g''8\rest d''16 ees'' f''8 ees''16 d''
 ees''16 d'' ees'' f'' g''8 g''8\rest g''8\rest d''16 c'' bes'8 c''16 d''
 ees''16 d'' c'' bes' a'8 fis'' g''8 g''8\rest g''16\rest d''16 c'' bes'
 a'4 ~ a'16 bes' c'' d'' g'4 ~ g'16 bes' aes' g' f'4 ~ f'16 g' aes' bes' ees'4 ~ ees'16 g' f' ees'
 d'4 ~ d'16 d' e' fis' g'4 ~ g'16 bes' a' g' } \\
 { aes'8 f' d' b' c''4 e'8\rest ees'8 d'8 ees'16 f' g'8 a'!16 b' c''8 b'16 c'' d''8 g'8 ~ g'8 c''16 d'' ees''8 g' fis'4 g'4 ~
 g'8 a'16 bes' c''8 bes'16 a' bes'16 d' e' fis' g'4 ~ g'16 g' f'! ees'! d'4 ~ d'16 bes c' d' ees'4 ~
 ees'16 ees' d' c' bes4 ~ bes16 g a! b c'4 ~ c'16 c' bes! a g4 ~ g16 g a bes c'8 cis' } >>
 << { fis'8 d'' ees'' g' fis'4 g'4 a''8\rest a'16 bes' c''8 bes'16 a' d''8 f''8\rest f''4\rest } \\
 { d'4 e'4\rest b,8\rest d''16 c'' bes'8 c''16 d'' ees''8 d'' c'' ees'' a'8 e'8\rest e'4\rest } >>
 << { f''2\rest g''8\rest d''16 ees'' f''!8 ees''16 d'' ees''4 ~ ees''16 d'' c'' bes' a'4 a''8\rest ees''16 d''
 c''8 d''16 ees'' d''8 e''16 fis'' g''8 fis''16 g'' a''4 ~ a''8 d'' g'' f'' ees'' d'' c'' bes'! a'2 g'2^\fermata } \\
 { e'8\rest fis'16 g' a'8 g'16 fis' g'2 ~ g'2 d'8\rest d''8 ees'' g' fis'4 g'4 f'8\rest a'16 bes' c''8 bes'16 a'
 bes'4. <g' b'>8 <a' c''>8 e'8\rest <d' g'>8 d'8\rest <ees' g'>4 <d' fis'>4 d'2 } >>
 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key g \minor
 \time 4/4
 << { d'8\rest d'8 ees' g fis4 g4 d'8\rest a16 bes c'8 bes16 a bes4 g d'8\rest a16 g f8 g16 a bes8 g e cis' }
 \\ { c1\rest c1\rest c1\rest } \\ { e,1\rest e,1\rest e,1\rest } >>
 << { R1 R1 e2\rest g8\rest g8 bes d cis4 d a8\rest e16 f g8 f16 e f8 g16 a bes8 a16 g a8 bes16 c' d'8 c'16 bes } \\
 { R1 c8\rest d8 ees g, fis,4 g, g,8\rest a,16 bes, c8 bes,16 a, bes,4 g,
 e,8\rest a,16 g, f,8 g,16 a, bes,8 g, e, cis d1 } >> e8 a16 g fis8 g16 a bes,8 c16 d ees8 d16 c
 << { a16 bes a bes c'8 bes16 a bes8 c'16 d' ees'4 ~ ees' d' c'2 d'4 a4\rest a8\rest f16 ees d8 ees16 f
 g8 ees c a bes2 ~ bes8 c'16 bes a8 bes16 c' d'8 bes g e' f'8. ees'!16 d'4 c'4. d'16 c'
 bes2 a4 d'16\rest bes16 c' d' ees'8 f'16 ees' d'8 g ~ g f bes aes } \\
 { d2 g,4. a,8 bes,8 f g d ees8 d16 ees f8 f, bes,4 g,4\rest g,2\rest
 g,2\rest f,8\rest bes,8 d f, e,4 f, f,8\rest g,16 a, bes,8 a,16 g, a,4 bes, g,8\rest c16 bes, a,8 bes,16 c
 d8 bes, g, e f2 ~ f8 f g bes, a,4 bes, } >>
 << { g4 a!8 c' f a8\rest a4\rest } \\ { g,8\rest c16 d ees8 d16 c d8 c16 bes, c8 d } >>
 ees8 d16 c d8 e f8 f,16 g, aes,8 g,16 f, g,8 g aes c b,4 c
 r8 d16 ees f8 ees16 d ees8 e f fis g16 aes g f! ees8 f16 g aes8 f d b c'4 ~ c'16 d' c' bes! a d c d ees d c bes,
 a,8 c d d, g,8 g16 a bes8 a16 g d'8 d16 ees f8 ees16 d ees,8 ees16 f g8 f16 ees
 bes8 bes,16 c d8 c16 bes, c,8 c16 d ees8 d16 c g8 g,16 a, bes,8 a,16 g, ees2
 << { b2\rest c'8\rest d'8 ees' g fis4 g a8\rest a16 bes c'8 bes16 a } \\
 { d4 b,4\rest b,2\rest g,8\rest d8 ees g, fis,4 a, } >>
 << { \once \override NoteColumn #'ignore-collision = ##t
       bes2 ~ bes8 b16 a g8 a16 b c'4 b4\rest a2\rest R1
 d'8\rest d'8 ees' g fis4 g a8\rest a16 bes c'8 bes16 a b2 } \\
 { \new Voice { \stemUp d,8[ \stemDown d16 c] bes,8 c16 d } ees2 ~
 ees8 ees16 d c8 d16 ees fis,8 a,16 g, fis,8 g,16 a, d,8 d16 c bes,8 c16 d ees8 c a, fis
 g8 f! ees d c bes, a, g, c8 a, d d, g,2_\fermata } >>
 \bar "|."
}
>>

 \layout {
   \context {
   \Staff \override VerticalAxisGroup #'minimum-Y-extent = #'( -6 . 6 )
   }
 }

 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 68 4)
      }
    }



}
