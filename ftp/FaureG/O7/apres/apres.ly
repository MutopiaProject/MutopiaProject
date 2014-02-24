\version "2.18.0"

#(set-global-staff-size 16)

\header {
  dedication = "à Madame Marguérite Baugnies"
  title = "Après un Rêve"
  poet = "Poésie de Romain Bussine."
  composer = "Gabriel Fauré"
  mutopiatitle = "Après un Rêve"
  mutopiacomposer = "FaureG"
  mutopiapoet = "R. Bussine (1830-1899)"
  mutopiaopus = "Op. 7"
  mutopiainstrument = "Voice, Piano"
  date = "1877"
  source = "Choudens, 1880"
  style = "Romantic"
  maintainer = "Tak-Shing Chan"
  % Updated by Francisco Vila <paconet.org@gmail.com>
  maintainerEmail = "chan12@alumni.usc.edu"
  license = "Public Domain"

 footer = "Mutopia-2014/02/24-368"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

chant =  \relative c'' {
  \key c \minor
  \time 3/4
  \set Staff.autoBeaming = ##f
  \override Staff.Hairpin.minimum-length = #8
  \dynamicUp
  \override DynamicLineSpanner.padding = #1.2
  \override TupletBracket.bracket-visibility = ##f
  \override TupletBracket.direction = #UP
  \tupletSpan 4
  R2. |
  g4^\markup{\italic "dolce"} c\< d\! |
  ees ~ \tuplet 3/2 { ees8 d c ees d c } |
  c2\> bes4\! |
  des8 f, des'4 c8 b |
  c4.\< c8 bes8. aes16\! |
  g4\> ~ \tuplet 3/2 {
    \override TupletBracket.direction = #DOWN
    g8([ aes bes]
    \override TupletBracket.direction = #UP
    aes[ bes c])\!
  } |
  g2. |
  g4 \tuplet 3/2 { ees4 f8 g4 aes8 } |
  bes4 ~ \tuplet 3/2 { bes8 f f f e f } |
  aes2 g4 |
  c\< c4. ces8\! |
  bes4 ees, ees |
  f ~ \tuplet 3/2 {
    \override TupletBracket.direction = #DOWN
    f8 ges\> aes
    \override TupletBracket.direction = #UP
    ges aes\! bes
  } |
  bes2 ees,4 |
  R2. |
  g4\< c d\! |
  ees ~ \tuplet 3/2 { ees8 d c ees d c } |
  c2\> bes4\! |
  des8 f, des'4 c8 b |
  c4. c8 bes aes |
  g4 ~ \tuplet 3/2 {
    \override TupletBracket.direction = #DOWN
    g8([ aes bes]
    \override TupletBracket.direction = #UP
    aes[ bes c])
  } |
  g2. |
  g4 \tuplet 3/2 { ees4( f8) g4( aes8) } |
  bes4. f8 \tuplet 3/2 { f e f } |
  aes4 g c, |
  des4^\markup{ \italic "cresc. poco a poco"} ~ \tuplet 3/2 { des8([ ees f]) ees([ f]) g } |
  g4 c, e |
  \tuplet 3/2 { f4 f8 f([ g)] aes }
  \tuplet 3/2 {  bes([ aes)] bes }
  %\override TupletBracket.direction = #UP
  |
  c4 c, c' |
  f2\f f,4 |
  f \tuplet 3/2 {
    f8 g a
    \override TupletBracket.direction = #DOWN
    bes([ c]) des
  } |
  des4 ~ \tuplet 3/2 { des8\>([ c ees] des[ c bes])\! } |
  des2 bes8.\< bes16\! |
  ees2 des4 |
  des4 ~ \tuplet 3/2 {
    des8([ c]) bes
    \override TupletBracket.direction = #UP
    aes g f
  } |
  g4\> ~ \tuplet 3/2 { g8([ aes g] f[ g aes])\! } |
  g2 g4 |
  c2^\markup{\italic "cresc."} c4 |
  c2 c8. d16 |
  ees2.\f |
  d2\> d4\! |
  d2\p c4 |
  bes4. g8 ees f |
  g4\pp ~ \tuplet 3/2 { g8([ f ees] f[ g aes] } |
  g2.) |
  c, |
  R |
  \bar "|."
}

poesie = \lyricmode {
  Dans un som -- meil que char -- mait ton i -- ma -- ge
  Je rê -- vais le bon -- heur,
  ar -- dent mi -- ra -- ge,
  Tes yeux é -- taint plus doux,
  ta voix pure et so -- no -- re,
  Tu ray -- on -- nais comme un ciel é -- clai -- ré par l'au -- ro -- re;
  Tu m'ap -- pe -- lais __ et je quit -- tais la ter -- re
  Pour m'en -- fuir a -- vec toi vers la lu -- miè -- re,
  Les cieux pour nous __ entr' -- ouv -- raient leurs nu -- es splen -- deurs __ in -- con -- nu -- es,
  lu -- eurs di -- vi -- nes en -- tre -- vu -- es,
  Hé -- las!
  Hé -- las,
  tris -- te ré -- veil des son -- ges
  Je t'ap -- pelle,
  ô nuit,
  rends moi tes men -- son -- ges,
  Re -- viens,
  re -- viens ra -- di -- eu -- se,
  Re -- viens,
  ô nuit mys -- té -- ri -- eu -- se!
}

droit =  \relative c' {
  \key c \minor
  \time 3/4
  <c ees g>8 <c ees g> <c ees g> <c ees g> <c ees g> <c ees g> |
  <c ees g> <c ees g> <c ees g> <c ees g> <bes d ees g> <bes d ees g> |
  <a c ees g> <a c ees g> <a c ees g> <a c ees g> <a c ees f> <a c ees f> |
  <aes c d f> <aes c d f> <aes c d f> <aes c d f> <aes bes d f> <aes bes d f> |
  <aes des f> <aes des f> <aes des f> <aes des f> <g des' fes> <g des' fes> |
  <aes c e> <aes c e> <aes c e> <aes c e> <aes c f> <aes c f> |
  <f g b d> <f g b d> <f g b d> <f g b d> <f aes c d> <f aes c d> |
  <f g b d> <f g b d> <f g b d> <f g b d> <f g b d> <f g b d> |
  <g c ees> <g c ees> <g c ees> <g c ees> <g c ees> <g c ees> |
  <f bes f'> <f bes f'> <f bes f'> <f bes f'> <f bes f'> <f bes f'> |
  <aes des f> <aes des f> <aes des f> <aes des f> <g des' e> <g des' e> |
  <f c' f> <f c' f> <f c' ees> <f c' ees> <f c' d> <f ces' d> |
  <ees bes' ees> <ees bes' ees> <ees bes' ees> <ees bes' ees> <g c ees> <g c ees> |
  <aes ees' f> <aes ees' f> <aes ees' f> <aes ees' f> <aes d f> <aes d f> |
  <g bes ees g> <g bes ees g> <g bes ees g> <g bes ees g> <g bes ees g> <g bes ees g> |
  <g b ees g> <g b ees g> <g b ees g> <g b ees g> <f b d g>\arpeggio <f b d g>\arpeggio |
  <ees c' g'>\arpeggio <c' ees g> <c ees g> <c ees g> <bes d ees g> <bes d ees g> |
  <a c ees g> <a c ees g> <a c ees g> <a c ees g> <a c ees f> <a c ees f> |
  <aes c d f> <aes c d f> <aes c d f> <aes c d f> <aes bes d f> <aes bes d f> |
  <aes des f> <aes des f> <aes des f> <aes des f> <g des' fes> <g des' fes> |
  <aes c e> <aes c e> <aes c e> <aes c e> <aes c f> <aes c f> |
  <f g b d> <f g b d> <f g b d> <f g b d> <f aes c d> <f aes c d> |
  <f g b d> <f g b d> <f g b d> <f g b d> <f g b d> <f g b d> |
  <g c ees> <g c ees> <g c ees> <g c ees> <g c ees> <g c ees> |
  <f bes f'> <f bes f'> <f bes f'> <f bes f'> <f bes f'> <f bes f'> |
  <aes c> <aes c> <g bes c> <g bes c> <g bes c> <g bes c> |
  <f aes des> <f aes des> <f aes des> <f aes c> <f g c> <f g b> |
  <e g c> <e g c> <e g c> <e g c> <e g c> <e g c> |
  <f c' des> <f c' des> <f c' des> <f c' des> <aes c d> <aes c d> |
  <g c e> <g c e> <g c e> <g c e> <g c e> <g c e> |
  <f c' ees f> <f c' ees f> <f c' ees f> <f c' ees f> <ees' f c'> <ees f c'> |
  <ees f c'> <ees f c'> <des f bes> <des f bes> <c f aes> <c f aes> |
  <bes des f g> <bes des f g> <bes des f g> <bes des f g> <bes des f aes> <bes des f aes> |
  <bes des ees g> <bes des ees g> <ees g> <ees g> <des ees g> <des ees g> |
  <c ees g> <c ees g> <bes ees g> <bes ees g> <aes bes des f> <aes bes des f> |
  <g bes des f> <g bes des f> <g bes des e> <g bes des e> <aes c f> <aes c f> |
  <g d' f> <g d' f> <g d' f> <g d' f> <aes d f> <aes d f> |
  <g d' f> <g d' f> <g b ees> <g b ees> <g b d> <g b d> |
  <g c> <g c> <f c' d> <f c' d> <bes c e> <bes c e> |
  <aes c f> <aes c f> <c g'> <c g'> <c fis a> <c fis a> |
  <bes ees bes'> <bes ees bes'> <ees f c'> <ees f c'> <c ees f> <c ees f> |
  <d f aes> <d f aes> <d f g> <d f g> <aes d f> <aes d f> |
  <aes d f> <aes d f> <g d' f> <g d' f> <g c ees> <g c ees> |
  <g bes ees> <g bes ees> <g bes ees> <g bes ees> <g bes ees> <g bes ees> |
  <f g b ees> <f g b ees> <f g b d> <f g b d> <ees g c> <ees g c> |
  <d g c> <d g c> <d g b> <d g b> <d f g b> <d f g b> |
  <ees g c> <ees g c> <ees g c> <ees g c> <ees g c> <ees g c> |
  <ees g c>2 r4 |
  \bar "|."
}

dynamics =  {
  \override Staff.Hairpin.minimum-length = #8
  s2.\pp
  s s s s s s s s s s s s s s
  s8\< s s\! s\> s s\!
  s2. s s s s s s s s s s s s
  s8\< s2 s8\!
  s2.
  s8\> s s2 s s8 s\!
  s8 s4. s8\< s\!
  s2. s
  s8\> s2 s8\!
  s2.
  s8\< s s2 s s8 s\!
  s2. s
  s\p
  s
  s\pp
}

gauche =  \relative c,, {
  \clef "F"
  \key c \minor
  \time 3/4
  R2. |
  R |
  <f f'> |
  <bes bes'> |
  <ees, ees'> |
  <aes aes'>2 <d, d'>4 |
  <g g'>2. ~ |
  <g g'> |
  <c c'> |
  <des des'> |
  <bes bes'> |
  <aes aes'> |
  <g g'>2 <c c'>4 |
  <ces ces'> <bes bes'>2 |
  <ees, ees'>2. |
  <g g'> |
  <c c'> |
  <f, f'> |
  <bes bes'> |
  <ees, ees'> |
  <aes aes'>2 <d, d'>4 |
  <g g'>2. ~ |
  <g g'> |
  <c c'> |
  <des des'> |
  e |
  f2 g4 |
  c,2. |
  <aes aes'>2 <f f'>4 |
  <c' c'>2 <bes bes'>4 |
  <a a'>2. |
  <bes bes'> |
  <ees ees'> ~ |
  <ees ees'>4 r r |
  R2. |
  r4 c'\( f, |
  b2 c4 |
  b g f\) |
  ees\( aes g |
  f ees d |
  g a2\) |
  bes4\( b2 |
  c c,4 |
  ees2\) <g, g'>4 ~ |
  <g g'>2. ~ |
  <g g'> |
  <c, c'>2 <c c'>4 |
  <c c'>2 r4 |
  \bar "|."
}

\score {
  <<
    \new Staff {
      \set Staff.instrumentName = "Chant"
      \tempo "Andantino"
      \chant
    }
    \addlyrics \poesie
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Piano"
      \new Staff \droit
      \new Dynamics \dynamics
      \new Staff \gauche
    >>
  >>
  \layout {
    \context {
      \Staff
      \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 10))
    }
  }
  \midi { }
}

\paper {
  markup-system-spacing #'basic-distance = #16
  top-system-spacing #'basic-distance = #16
  top-markup-spacing #'basic-distance = #8
  ragged-last-bottom = ##f
  last-bottom-spacing #'basic-distance = #16
}
