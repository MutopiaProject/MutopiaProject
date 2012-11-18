\version "2.16.0"

IMandII =  \relative c'''{
  \clef "treble"
  \key c\minor % actually g minor
  \time 3/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  <g bes, g bes,>2 <f f, bes,>4 |
  as,8 g f es d es |
  <g bes,>2 <f bes,>4 |
  %4
  as8 g f es d es |
  <<{d4 d8 d d d} \\ bes2.>> |
  <es g,>4. f8 <g bes,>4 |
  <<{f4 f8 f f f} \\ bes,2.>> |
  %8
  <g' bes,>4. as8 <bes g>4 |
  c8. bes16 bes4  as |
  \grace as8 g4. f8 es4 |
  \times 2/3 { g8[ f es]} \grace {as16[ bes]} \times 2/3 { c8[ bes as]}
    \slashedGrace as8 \times 2/3 { g8[ f es]} |
  %12
  f16 es d es <d bes>2 |
  }

  \repeat "volta" 2 {
  bes'8 c d c d bes |
  \grace as'8 g4 f8 es d es |
  bes, c d c d bes |
  %16
  \grace as'8 g4 f8 es d es |
  R2. | R2.
  g4 as bes |
  %20
  es,8 bes <es g,>2 |
   d16[ bes d f]  d[ bes d f]  d[ bes d f] |
   es[ bes es g]  es[ bes es g]  es[ bes es g] |
   g,[ as bes g]  as[ bes c as]  d[ es f d] |
  %24
  <es g,>2 <g bes,>4 |
  <<{g4 as f} \\ bes,2.>> |
  <f' bes,>4 <g bes,> es |
  \slashedGrace d'8 \times 2/3 { c[ bes as]} \slashedGrace as \times 2/3 { g[ f es]  d[ es f]} |
  %28
  \grace f8 <es g,>2 <g bes,>4 |
  <<{g4 as f} \\ bes,2.>> |
  <<{f'4 g <es' es,>} \\ bes,2.>> |
  \slashedGrace d8 \times 2/3 { c'[ bes as]} \slashedGrace as \times 2/3 { g[ f es]  d[ es f]} |
  %32
  es8. bes16 es2 \bar "|."
  }
}
