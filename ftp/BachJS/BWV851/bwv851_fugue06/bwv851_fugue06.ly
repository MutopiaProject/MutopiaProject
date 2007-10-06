\version "2.10.3"

\header {
  title = "Fugue 6 - BWV 851"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Das Wohltemperierte Clavier I, Fuga VI"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 851"
  date = "18th Century"
  source = "Bach Gesselschaft (1866)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/June/13"
  version = "2.10.3"
 footer = "Mutopia-2007/06/13-988"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key d \minor
 \time 3/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 82
 r8 d'[ e' f' g' e'] f'16( d' cis' d') bes'4^\staccatissimo g'^\trill a'4~ a'16 g' f' e' g' f' e' d'
 << { e'8 c''~ c''16 b' a' b' b' a' gis' a' a'16 g'! fis' g' e''4^\staccatissimo g'4 f'8 d''~ d''16 c'' bes' a' c'' bes' a' g'
 a'4 g'2~ g'8[ e' f' g' a' f'] bes'16 g' fis' g' ees''4^\staccatissimo cis''4^\turn
 d''4 d''^\staccatissimo b'^\turn c'' c''^\staccatissimo a'^\turn bes'2.~ bes'8[ a' b' cis'' d'' b']
 cis''16[ a' gis' a'] f''4^\staccatissimo d''4^\trill e''8 a''~ a''16 g'' fis'' e'' g'' fis'' e'' d''
 ees''16[ c''' bes''8] g''16\rest a''[ gis'' fis''] a'' gis'' fis'' e'' d''16 c'' b' c'' c'' b' a' b' b' a' gis' a' } \\
 { s4 f'4 d'_\trill e'4~ e'16 d' cis' b d' cis' b a d'4 d'4\rest d'4\rest c'8\rest f'8~ f'16 e' d' e' e' d' cis' d'
 cis'4 d'8[ e' cis' d'] ees'8 d' g'4 e' e'16\rest a'[ g' a'] f'4 d' e'16\rest g'[ f' g'] ees'4 c'
 e'8\rest a'[ g' f' e'! g'] cis'4 d'8 e' s4 c'8\rest e'8[ d' cis' b d'] cis'16 e' f' e' s4 c'4
 bes16 d' ees' d' b4 e'4~ e'8 d'8\rest d'4\rest d'4\rest } >> g'!4~ g'16 f' e' f' f' e' d' a'
 << { a'2.~ a'4~ a'16 dis'' e'' a' c'' b' a' gis' } \\ { s4 f'4_\staccatissimo d'_\trill e'8 f' s4 s4 } >>
 a'4^\mordent~ a'16 g' f' e' g' f' e' d' e'8[ e'' d'' cis'' b' d''] cis''16 e'' f'' e'' g'4_\staccatissimo bes'4~
 bes'16 a' g' a' a' g' f' g' g' f' e' f' f'4~ f'16 e' fis' g' fis' g' a' g' g'16 a' bes' a' a' b' c'' b' b' cis'' d'' cis''
 cis''8[ a'' g'' f'' e'' g''] << { f''16 a'' bes'' a'' cis''4 e''4~ e''8 a' d''4 c''!~ c''8 ees''~ ees''16 d'' c'' d'' d'' c'' bes' c'' } \\
 { e'8\rest d'[ e' f' g' e'] f'16 d' cis' d' bes'4 g'_\prall a'4 s2 } >>
 c''16 bes' a' bes' d'' c'' bes' c'' c'' bes' a' bes' bes' a' g' a' c'' bes' a' bes' bes' a' g' a'
 a'16 g' f' g' e''4^\staccatissimo cis''4^\trill d''4~ d''16 c'' bes' a' c'' bes' a' g' a'8[ fis' g' a' bes' g']
 a'16 c'' ees''8~ ees''16 d'' c'' bes' d'' c'' bes' a' bes'16 d'' f''8~ f''16 e'' d'' cis'' e'' d'' cis'' b'
 cis''16 e'' bes''!8~ bes''16 a'' g'' f'' a'' g'' f'' e'' g''16 f'' e'' f'' f'' e'' d'' e'' e'' d'' cis'' d''
 << { c''!4~ c''16 bes' a' bes' bes' a' g' d'' d''2.~ d''4~ d''16 gis'' a'' d'' f'' e'' d'' cis'' d''2. d''2.^\fermata } \\
 { d'8\rest d'8[ e' fis' g' e'] f'!16 dis' cis' d' bes'4_\staccatissimo g'4_\trill a'8 bes' e'2_\trill
 e'8\rest <a' c''>8[ <g' bes'> <fis' a'> <e' g'> <g' bes'>] <fis' a'>2. } >>
 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key d \minor
 \time 3/4
 << { R2. R2. c'8\rest a8[ b c' d' b] c'16 a gis a s2 } \\ { R2. R2. R2. R2. } >> R2.
 r8 d8[ e f g e] f16 d cis d bes4^\staccatissimo g^\trill a4~ a16 g f e g f e d
 g8 bes8~ bes16 a g a a g f g g16 f e f a g f g g f e f f e d e g f ees f f ees d ees
 ees d cis d bes4^\staccatissimo g^\trill a4~ a16 g f e << { a4 } \\ { g16 f e d } >> e8[ cis d e f d]
 a4 << { a4 s4 } \\ { fis8[ e d fis] } >> g4 gis8[ fis e gis] a8[ a, b, c d b,]
 << { b8\rest a8[ b cis' d' b] c'16 a gis a } \\ { cis16 a, gis, a, f4 d4_\trill e8[ f] } >>
 e16 d c d d c b, c << { s4 b2^\trill a4 b4\rest b4\rest } \\ { c8[ d e d] e4 a8[ a, b, cis d b,] } >>
 cis16 a, gis, a, f4^\staccatissimo d4^\trill a8[ f e d cis e] d16 f g f a,4^\staccatissimo cis4^\trill
 << { c'8\rest d'8[ c' bes a c'] bes4 d'2 g4 b4\rest b4\rest } \\
 { d2. b,8\rest g8[ fis e d f] e4~ e16 d cis b, d cis b, a, } >> d4 r4 r r8 a8[ g f e g] fis16 a bes a
 << { fis4^\staccatissimo a^\staccatissimo a16\rest g16[ fis g] e4^\staccatissimo g^\staccatissimo
 a16\rest f16[ e f] d4^\staccatissimo f^\staccatissimo c'8\rest f8[ g a bes g] a[ f g a] g4
 c'8\rest a8[ g f e g] fis8[ bes a g fis a] g8[ c' b a gis b] a[ f' e' d' cis' e'] d'8 d'8\rest d'4\rest d'4\rest } \\
 { d4 fis4 g,4 c e f,4 bes, d e2. f8[ d e fis g e] fis16 d cis d bes8[ a g bes] a8[ g fis e d fis]
 a,8[ a gis fis e gis] a,[ d' cis' b a cis'] d'8[ d e f g e] } >>
 fis16 d cis d bes4^\staccatissimo g4^\trill a8 bes a16 g f g g f e f f8[ g a g] a4
 << { d'8\rest <d fis>8[ <e g> <fis a> <g bes> <e g>] <fis a>2. } \\ { d2. d2._\fermata } >>
 \bar "|."
}
>>

 \layout { }

 \midi { }

}
