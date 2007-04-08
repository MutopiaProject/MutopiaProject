\version "1.6.0"

noStroke = \notes { \property Voice.Stem \set #'stroke-style = #'() }

IMandII = \notes \relative c'''{
  \clef "treble"
  \key c\minor % actually g minor
  \time 3/4
  \property Voice.tupletSpannerDuration = #(make-moment 1 4)

  \repeat "volta" 2 {
  <g2 bes, g bes,> <f4 f, bes,> |
  as,8 g f es d es |
  <g2 bes,> <f4 bes,> |
  %4
  as8 g f es d es |
  <{d4 d8 d d d} \\ bes2.> |
  <es4. g,> f8 <g4 bes,> |
  <{f4 f8 f f f} \\ bes,2.> |
  %8
  <g4. bes,> as8 <bes4 g> |
  c8. bes16 bes4  as |
  \grace {\noStroke as8} g4. f8 es4 |
  \times 2/3 {[g8 f es]} \grace {[as16 bes]} \times 2/3 {[c8 bes as]}
    \grace as8 \times 2/3 {[g8 f es]} |
  %12
  f16 es d es <d2 bes> |
  }

  \repeat "volta" 2 {
  bes'8 c d c d bes |
  \grace {\noStroke as'8} g4 f8 es d es |
  bes, c d c d bes |
  %16
  \grace {\noStroke as'8} g4 f8 es d es |
  R2. | R2.
  g4 as bes |
  %20
  es,8 bes <es2 g,> |
  [d16 bes d f] [d bes d f] [d bes d f] |
  [es bes es g] [es bes es g] [es bes es g] |
  [g, as bes g] [as bes c as] [d es f d] |
  %24
  <es2 g,> <g4 bes,> |
  <{g4 as f} \\ bes,2.> |
  <f4 bes,> <g bes,> es |
  \grace d'8 \times 2/3 {[c bes as]} \grace as \times 2/3 {[g f es] [d es f]} |
  %28
  \grace {\noStroke f8} <es2 g,> <g4 bes,> |
  <{g4 as f} \\ bes,2.> |
  <{f4 g <es' es,>} \\ bes,2.> |
  \grace d8 \times 2/3 {[c bes as]} \grace as \times 2/3 {[g f es] [d es f]} |
  %32
  es8. bes16 es2 \bar "|."
  }
}
