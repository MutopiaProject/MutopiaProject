\version "2.10.3"

 \header {
  title = "Prelude Op. WoO 55"
  subtitle = "for the piano"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Prelude Op. WoO 55"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "WoO 55"
  date = "1787"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/March/18"
  version = "2.10.3"
 footer = "Mutopia-2007/03/24-939"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new PianoStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key f \minor
 \time 3/2
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 98
 r8 c'8 f' g' aes' e' f' d' c' b d' aes' r bes'! aes' g' f' e' des'! c' bes! a c' f'
 << { bes8[ des'] f'4~ f'2~ f'8[ aes'! g' f'] e'4 e''4\rest c''8 des'' c'' bes' aes' bes' aes' g' } \\
 { bes8 des' f' ees'! des' c' bes a b2 c'8 des' c' bes! aes!4. bes8 c'4. e'8 } >>
 f'8 c' f' g' aes' e' f' d'
 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t c'8 b d' aes' } \\ { s8 b4. } >>
 <c' ees'! g'>4 r <g' c'' ees''>2. <f' c'' ees''>4 des''!8\f ees'' des'' c'' bes' f' bes' c''
 << { des''2 f''2\rest f''2\rest ees''8 f'' ees'' des''! c''2 f''2~ f''8 ces'' bes' aes' g'2 aes'2. f'4~
 f'8 ees'4 des'4 c'4 ces'8 bes8[ d' ees' bes] c'!4 } \\
 { des''8 f' bes' aes' g' aes' g' f' ees' bes ees' f' g'2 s1 f'2 ees'8 f' ees' des' c' des' c' bes aes ces' bes aes
 g4 bes4 ees4 aes2 g4 aes4_\markup { \italic "cresc." } } >> r4
 << { f''2\rest } \\ { g'8\rest ees'8[ aes' bes'] } >>
 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t
 g''8\rest ees''8[ aes'' bes''] c''' a'' ges'' f'' ees'' des'' c'' bes' a' ges' f' ees' } \\
 { c''2~ c''4 s4 s1 } \\ { \stemDown s8 ees''4.~ ees''4 s4 s1 } >>
 des'8 c' bes a ees'4 << { c''4. ees''8[ f'' ges''] f'' des'' c'' bes' } \\ { s2 a'4 bes'4 s4 } >>
 aes'!8 g' f' ees' \clef bass d'8 c' b aes g f ees d ees4 << { c'4. c'8[ d' ees'] } \\ { s4 ees2 } >>
 \clef treble << { d'8 g' fis' a' d'4 d''4. ees''8[ d'' c''] bes'8 c'' bes' aes'! g' aes' g' f'! ees' f' ees' des'! } \\
 { a4 s4 d'8 ees' d' c' bes4 ees'4 d'4 f'!4 ees'!4 s4 s2 } >>
 << { c'4 f'4 s4 c''4 d'' ees'' } \\ { s4 f'2~ f'2. } \\ { \stemUp s2 aes'4~ \stemDown aes'2. } >>
 f''8 d'' aes' g' f' aes' d' f' b d' g f' e' g' c' c''
 << { fis'8 ees''! d'' c'' b'2 c''2 aes' g'8 f' ees' d' ees'4 } \\
 { fis'2 g'8 aes'! g' f' ees' d' ees' c' f' ees' d' c' b2 c'4 } >> r4
 << { ees''2 ees''2 d''8 f''! ees'' d'' } \\ { g'2 fis'2 g'4 s4 } >> c''8 b' aes'! g' f'! aes' g' f'
 ees'4 r4 << { ees''2 ees''2 d''8 aes'' g'' f'' ees'' d'' c'' bes' aes' c'' bes' aes' } \\
 { g'2 c''2 f'4 f'4\rest s2 s2 } >> g'2 aes'8 g' f' ees' d'2 ees'8 bes ees' f' g' d' ees' bes aes g bes ees'
 << { s2 aes'2~ aes'8 c'' bes' aes' g'8 d''8\rest d''4\rest d''2\rest d''2\rest d''2\rest ges'2~ ges'8 bes' aes' ges'
 f'8 ges' f' ees' des'4 d''4\rest bes'8 c'' bes' aes' } \\
 { \stemUp bes8 aes c' f'~ \stemDown f'8 g' f' ees' d'2 ees'8 bes ees' f' g' d' ees' bes aes g bes ees'
 bes8 aes c' ees'~ ees' f' ees' des'! c'2~ c'2 bes8 c' bes aes! s2 } >>
 g'8 aes' g' f' e'4 r4 r2 r8 c'8 f' g' aes' e' f' d' c' b d' aes' r bes'! aes' g' f' e' des'! c' bes! a c' f'
 << { bes8[ des'] f'4~ f'2~ f'8 aes'! g' f' e'4 d''4\rest c''8 des'' c'' bes' a'2
 bes'4. c''8 d''2 ees''2 c''!4. des''!8 ees''2 f''8 ges'' f'' ees'' des'' ees'' des'' c'' bes'2 ces''2
 ees''8 f'' ees'' des'' c''!2 des''2~ des''8 ees'' des'' c'' bes' c'' bes' aes' g'! aes' g' f' } \\
 { bes8 des' f' ees'! des' c' bes a b2 c'8 des' c' bes! aes!4. bes8 c'8 ees'! f' ges'
 f'2 bes'8 ces'' bes' aes'! ges' aes' ges' f' ees'2 aes'8 bes' aes' ges' f'2 s1 s2
 s2 aes'8 bes' aes' ges' f' ges' f' ees' des'2 s1 } >> e'2 f'2~ f'8 e' g' e' f' c' f' g' aes' e' f' d' c' b d' aes'
 des'!8 c' e' g' bes! a c' ges' c' bes d' f' b aes' g' f' e'2 << { des''!2 c''4. aes'8 } \\ { e'!2 f'2 } >>
 g'8 f' e' des'! c' bes aes g << { f''4\rest f'4~ f'1 } \\ { aes1. } \\ { g'8\rest \stemDown c'8~ c'4~ c'1 } >>
 \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key f \minor
 \time 3/2
 <f, aes, c f>1 <f aes>2 <e g>1 <ees! f>2 <des f>2. <des f>4 <d f>2 <c g>2 r2 c8 des c bes,
 aes,4 r << { aes2. } \\ { f2. } >> f4 ees!8 d ees f g d ees c bes,! a, c f
 bes, f bes c' des' ees' des' c' bes aes! g f ees bes c' d' g aes g f ees2
 << { c'8 des'! c' bes aes2 } \\ { e2 f8 g f ees } >> d2 ees2 f2. d4 ees8 ees, f, g, aes, bes, c d ees4 ees,4
 aes,8 ees aes bes c' des'! c' bes aes4. ges8 f4 r4 f,2. c4
 a,8 a ges f ees des c bes, a, ges, f, ees, des,4 r4 d,2. f,4 ees,4 r4 g8 f ees d c bes,! a, g,
 fis,8 ees, d, c, fis,4 fis4 g a bes4 d ees << { aes!4 bes ees } \\ { f!4 g g, } >>
 <aes, aes>8 bes aes g f g f ees d ees d c b,1~ b,4 bes,4~ bes,4 a,2 d!4 g,4 g c2 f,2 g,2
 r8 c8 ees f g d ees c c, c ees a b,4 r4
 << { b8\rest g8[ b c'] d' b ees' d' c'4 d'4\rest } \\ { b,2\rest b,2\rest c8\rest c8[ ees f] } >> g8 d ees c bes,! a, c f bes,4 r4
 << { c'8\rest bes8 d' ees' f' ees' d' f' ees' d' c' bes aes2 f8 bes4 aes8 g2 } \\
 { b,2\rest b,2\rest b,2\rest f,2 bes,8 aes, g, f, ees,2 } >> ees2. ees4~ ees2 d2 bes,2 ees2 ees2 des!2 c1 aes,2
 a,2 bes,4 r4 << { g!8 aes g f e4. f8 g4. g8 f4. bes8 aes2 } \\ { bes,4. b,8 c2~ c8 des c bes,! aes, bes, aes, g,
 <f, c f>2 } >> r2 << { aes2 g1 f2 f2. f4 f2 g4 } \\ { f2 e1 ees!2 des2. des4 d2 c4 } >> r4 r2 f8 ges f ees
 des!8 ees des c bes,2 ces2 ees8 f ees des c!2 des2
 << { f2 bes8 ces' bes aes ges aes ges f ees2 } \\ { bes,4. c8 d2 ees2 c4. des!8 } >> ees2 f2 f2 g!8 aes g f
 << { bes2~ bes8 c' bes aes g aes g f c'4 bes!4 aes4 b4\rest b2\rest aes2 g2 ges2 f2 f2 g2 } \\
 { e8 f e d c2 b,2 c2 <f, aes, c f>1 f2 e2 ees2 d2 des!2~ des8 c e g } >> c8 bes,! e g bes, aes, c f bes,2 c2
 f,4 r8 e8 f8 b, c aes, f,2
 \bar "|."
}
>>

 \layout { }

 \midi { }

}
