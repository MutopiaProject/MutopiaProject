\version "2.10.3"

\header {
  title = "Praeludium 11 - BWV 856"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium XI"
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
 footer = "Mutopia-2007/04/21-963"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key f \major
 \time 12/8
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 104
 f''16 c'' a' g' a' c'' f' a' c'' ees'' d'' c'' d'' bes' f' e'! f' bes' d' f' a' c'' bes' a'
 bes'16 g' e' d' e' g' c' e' g' bes' a' g' a' g' f' e' f' a' c' e' f' a' g' f'
 b'2.^\upprall c''16 g' e' d' e' g' c' e' g' bes' a' g' cis''2.^\downprall d''16 a' f' e' f' a' d' f' a' c'' bes' a'
 bes'16 g' e' d' e' g' c' e' g' bes' a' g' a' f' d' cis' d' f' bes d' f' a' g' f'
 g'16 e' cis' b cis' e' a cis' e' g' f' e' f'8 a' d'' a' f' d' g' bes' d'' bes' g' d' g' cis'' e'' cis'' g' e'
 d''16 a' f' e' f' a' d' f' a' c'' bes' a' f'' d'' bes' a' bes' d'' f' bes' d'' f'' e'' d''
 gis''2.^\downprall a''16 e'' cis'' b' cis'' e'' a' cis'' e'' g''! fis'' e''
 fis''2.^\upprall g''16 d'' b' a' b' d'' g' b' d'' f'' ees'' d''
 ees''16 c'' a' g' a' c'' f' a' c'' ees'' d'' c'' d'' bes' g' fis' g' bes' ees' g' bes' d'' c'' bes'
 c'' a' fis' e'! fis' a' d' fis' a' c'' bes' a'
 << { bes'2.^\upprall~ bes'2. a'2.~ a'16 a' f' e'! f' a' } \\ { s2. e'2. ees'2._\prall d'8 s4 } >>
 d'16 f' a' c'' bes' a' g' d'' bes' a' bes' d'' g' bes' d'' f'' e'' d''
 e'' g'' e'' d'' e'' g'' c'' e'' g'' bes'' a'' g'' c''' a'' f'' e'' f'' a'' d'' f'' a'' c''' bes'' a''
 bes'' g'' e'' d'' e'' g'' c'' e'' g'' bes'' a'' g'' a'' f'' c'' bes' c'' f'' a' c'' ees'' g'' f'' ees''
 d''4.^\prall~ d''16 c'' bes' a' g' f' bes'8 g'' e'' c'' bes' g''
 a'16 g' f' e' f' a' d' f' d' bes g e' f' bes a g a c' s4. \bar "||"
}

 \context Staff = "down" {
 \clef bass
 \key f \major
 \time 12/8
 f8 a c' a f a bes d' bes f,4 r8 f8 g bes g e c f a f f,4 r8
 f16 d b, a, b, d g, b, d f e d e2.^\upprall g16 e cis b, cis e a, cis e g f e f2.^\downprall g8 bes g e c e f a f d bes, d
 e8 g e cis a, cis d16 a, f, e, f, a, d, f, a, c bes, a,
 d bes, g, fis, g, bes, d, g, bes, d cis b, cis bes, g, fis, g, bes, d, g, cis e d cis d8 f a f d f d, f, bes, d4 r8
 d'16 b gis fis gis b e gis b d' cis' b cis'2.^\upprall c'!16 a fis e fis a d fis a c' b a b2.^\upprall
 c'8 ees' c' a f a bes d' bes g ees g a c' a fis d fis g16 d bes, a, bes, d g, bes, d f e d
 c16 g, e, d, e, g, c, g, c e d c f c a, g, a, c f, c f a g f
 bes1.^\downprall~ bes2. a8 c' a f d f g bes g e c e f16 c a, g, a, c f, a, c ees d c
 f16 d bes, a, bes, d f, bes, d f e! d e c bes, a, bes, e g, bes, e g f e
 f8 a, d bes,8.^\trill a,32 bes, c8 f,4 r8 << { f4 a8\rest } \\ { g,16\rest c a, c f,8 } >> \bar "||"
}
>>

 \layout { }

 \midi { }

}
