\version "2.16.1"

\header {
  title = "Praeludium II"
  composer = "J.S. Bach (1685-1750)"
  opus = "BWV 871-Praeludium"
  
  % mutopia headers
  mutopiatitle = "Das Wohltemperierte Clavier II, Praeludium II"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 871"
  mutopiainstrument = "Harpsichord, Piano"
  source = "Bach-Gesellschaft"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Jesse Mehrbach"
  maintainerEmail = "jam@uchicago.edu"

 footer = "Mutopia-2013/01/08-316"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

upper = \relative c'' {
  \repeat volta 2 {
  r16 g f g aes f ees f g ees d ees f d c d |
  ees8 c' f, c' ees, c' d, b' |
  c,16 ees g c d, c' b a d, g b! d ees, d' c b! |
  ees, aes c ees f, ees' d c f, bes d f g, f' ees d \stemUp |
  
  %5
  ees c bes c d bes aes bes c bes aes g f r r8 |
  d'16 bes aes bes c aes g aes bes aes g f ees r r8 \stemNeutral |
  c'16 aes g aes bes g f g aes f ees f aes8\mordent aes |
  aes16 g f g aes8\mordent aes aes16 d f ees d c bes aes |
  g bes ees g f ees f d ees bes aes bes c aes g aes |
  
  %10
  bes g f g aes f ees f g ees d ees c8 aes' | \break
  bes, g' aes, f' g,16 bes ees g ~ g f ees d |
  << {ees16 g c8 <bes g> <aes f>} \\ 
    { ees4(  ees16) ees8 d16} \\ 
    {s8 \stemDown c'16 f, s4}
  >>
  <bes, ees g>2 }
  
  \repeat volta 2 {
  r16 bes' a bes ees bes a bes f' bes, a bes aes'! bes, a bes |
  g'8 ees c16\trill b c8 f d b16\trill a b8 |
  
  %15
  ees16 ees, d ees g ees d ees bes' ees, d ees des' ees, d! ees |
  c'8 aes f16\trill e f8 bes g e!16\trill d e8 |
  aes16 c b c des c b! c g c b! c des! c b! c |
  f, c' d! e f bes,! a bes g' f e! d c bes aes g |
  aes f e f c' aes g aes f' ees! des c bes aes g f |
  
  %20
  g ees d! ees bes' g f g ees' des c bes aes g f e |
  f8 a bes c des e f g |
  c,16 e f aes bes, g' f e aes, c e f g, des' c bes |
  aes g f e f aes c, ees d aes' f d bes r r8 |
  g'16 f ees d ees g b, d c g' ees c aes r r8 |
  
  %25
  f'16 ees d c d f aes c, b f' d b g b c d |
  << {r8 g c2 ~ c16 c bes aes} \\
    {ees4 ~ ees16 bes' aes g f g aes f d8 r}
  >> |
  g16 aes bes g c, des' c bes aes bes c aes d,! ees' d! c |
  << {b g c d s4 <ees, g c>2} \\
    {s8 c' ~ \voiceOne <ees c>[ <d b!>]} \\ \\
    {s4 r16 g,8 f16 s2} >>}
}

lower = \relative c {
  \repeat volta 2 {
  c8 c' f, c' ees, c' d, b' |
  c,16 g' f g aes f ees f g ees d ees f d c d |
  ees8 c f d g f g ees |
  aes g a f bes a! b g |
  
  %5
  \stemUp
  c16
  \change Staff = upper \stemDown
  aes' g aes
  \change Staff = lower \stemUp
  bes,
  \change Staff = upper \stemDown
  g' f g
  \change Staff = lower \stemUp
  aes,8 r
  \change Staff = upper \stemDown
  r16 ees' d c |
  \change Staff = lower \stemUp
  bes
  \change Staff = upper \stemDown
  g' f g
  \change Staff = lower \stemUp
  aes,
  \change Staff = upper \stemDown
  f' ees f
  \change Staff = lower \stemUp
  g,8 r
  \change Staff = upper \stemDown
  r16 des' c bes |
  \change Staff = lower \stemUp
  aes
  \change Staff = upper \stemDown
  f' ees f
  \change Staff = lower \stemUp
  g,
  \change Staff = upper \stemDown
  ees' d ees
  \change Staff = lower \stemUp
  f,
  \change Staff = upper \stemDown
  d' c d
  \change Staff = lower \stemNeutral
  ees, c' bes c |
  d bes aes bes c aes g aes bes,8 bes' r d, |
  ees c aes bes ees, ees' aes ees | 
  
  %10
  g, ees' f, d' ees16 g f g aes f ees f |
  g ees d ees f d c d ees8 g aes bes |
  c aes bes bes, r16 ees bes g ees4 }
  
  \repeat volta 2 {
  ees'8 f g ees d c d bes |
  ees16 g aes g aes, g' aes g d f g f g, f' g f |
  
  %15
  c8 c' bes aes g f g ees |
  aes16 c des c des, c' des c g bes c bes c, bes' c bes |
  f8 aes f des e g ees c |
  d! f des bes' c, d e c |
  f16 aes g aes ees! c' bes c des,8 f bes des! |
  
  %20
  ees,16 g f g des bes' aes bes c,8 ees aes c |
  des,16 f ees f ges f ees f bes, f' g aes g f e f |
  aes,8 f c' c, f aes bes c |
  f g aes f bes bes, r16 aes' g f |
  ees8 f g ees aes aes, r16 g' f ees |
  
  %25
  d8 ees f d g g, r16 f' ees d |
  c d ees c aes g' f ees d ees f d bes aes' g f |
  ees8 d ees e f e! f fis |
  g16 f! ees f g8 g, c,16 c' ees g c4 }
}

\score {
  \context PianoStaff <<
    \time 4/4
    \context Staff = "upper" <<
      \set Staff.midiInstrument = "harpsichord"
       
      \key c \minor
      \upper
    >>  
    \context Staff = "lower" <<
      \set Staff.midiInstrument = "harpsichord"
       
      \key c \minor
      \clef bass
      \lower
    >>  
  >>
  \layout { }  
  
  \midi {
    \tempo 4 = 120
    }

  
}
