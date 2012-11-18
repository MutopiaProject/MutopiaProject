\version "2.16.0"
% Notes:
% Measure 31: I have added slashes through the grace notes. They are not
%   there in the manuscript, but I assumed it should be the same as in
%   measure 27 and Mandolin II in measure 31.

IMandI =  \relative c'''{
  \clef "treble"
  \key c\minor % actually g minor
  \time 3/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  <bes bes, es, g,>2 <as bes,>4 |
  as8 g f es d es |
  <bes g>2 as4 |
  %4
  as8 g f es d es |
  <<{f4 f8 f f f} \\ bes,2.>> |
  <g' bes,>4. as8 <bes g>4 |
  <<{d,4 d8 d d d} \\ bes2.>> |
  %8
  <es g,>4. f8 <g bes,>4 |
  es'8. d16 d4 c |
  <<\grace c8 bes4. g>> as8 g4 |
  \times 2/3 { g8[ f es]} \grace {c'16[ d]} \times 2/3 { es8[ d c]}
    \slashedGrace c8 \times 2/3 { bes8[ as g]} |
  %12
  as16 g f g <f bes,>2 |
  }

  \repeat "volta" 2 {
  <f' bes, d,>2 \grace {f16[ g]} as4 | \grace as8 g4 f8 es d es |
  <f, bes,>2 as4 |
  %16
  \grace as8 g4 f8 es d es |
  es' des des c c b |
  c d! es e f g |
  \grace bes8 as8 g16 f es4 d |
  %20
  es bes8 g es4 |
  d8 bes d f d bes |
  es bes es g es bes |
  bes' g c as f d |
  %24
  <es g,>2 <bes' es,>4 |
  <bes es,>4 <c es,> <as bes,> |
  <as bes,> <bes g> <es g,> |
  \slashedGrace d8 \times 2/3 { c8[ bes as]} \slashedGrace as8 \times 2/3 { g8[ f es]  d[ es f]} |
  %28
  \grace f8 <es g,>2 <bes' es,>4 |
  <bes es,>4 <c es,> <as bes,> |
  <as bes,> <bes g> <es g,> |
  \slashedGrace d8 \times 2/3 { c8[ bes as]} \slashedGrace as8 \times 2/3 { g8[ f es]  d[ es f]} |
  %32
  es8. bes16 g2 \bar "|."
  }
}
