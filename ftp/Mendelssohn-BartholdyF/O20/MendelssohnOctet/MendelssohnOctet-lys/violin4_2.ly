%Violin 4, 2nd movement
\version "2.19.80"

FourthViolinSecondMovement =
{
\override TupletBracket.bracket-visibility = ##f
 \relative c' {  
  \key c \minor
  \time 6/8
  R2.*3 |
  des2.\p~ |
  des4.~ des8 r r |
  des2.~ |
  des4.~ des8 r r |
  r aes-.( aes-. aes-.) r r |
  r f'( c des) r r |
  r aes8-.\<( aes-. aes-. aes-. aes-.)\! |
  g(\> bes des\! c) r r |
  c4( bes8 c8.) des16 c8 |
  bes4.( aes8) r r |
  ges'4( ees8 f4.) |
  bes4( aes8) aes r r |
  R2.*3 |
  \tuplet 3/2 {f8.:16\f} \tuplet 3/2 {f8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {aes8.:16} \tuplet 3/2 {aes8.:16} \tuplet 3/2 {g8.:16} |
  \tuplet 3/2 {f8.:16} \tuplet 3/2 {ees8.:16} \tuplet 3/2 {d8.:16} c8 aes'4\accent |
  c,8 ees'4\accent \omit TupletNumber \tuplet 3/2 {d16-.\p\([ d-. d-.]} \tuplet 3/2 {c-.[ b-. c-.]} \tuplet 3/2 {g-.[ g-. g-.\)] } |
  \undo \omit TupletNumber
  \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {f8.:16} ees8 r r |
  \omit TupletNumber
  r4 r8 \tuplet 3/2 {c8.:16\pp} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} |
  \tuplet 3/2 {c8.:16[} \tuplet 3/2 {c8.:16]} \tuplet 3/2 {b16( d f)} ees8 r r |
  r4 r8 \tuplet 3/2 {c8.:16[} \tuplet 3/2 {c8.:16]} \tuplet 3/2 {b16( d f)} |
  \tuplet 3/2 {ees8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {f8.:16} \deprecateddim \tuplet 3/2 {f8.:16} \tuplet 3/2 {e8.:16} \tuplet 3/2 {d8.:16} |
  e8\! r r r16 <c ees>~\ff <c ees c'>\accent r r8 |
  r16 <c ees>~ <c ees c'> r r8 r16 <f aes>~ <f aes f'>\accent r r8 |
  r16 <f aes>~ <f aes f'>\accent r r8 ges4.(\pp |
  
  %% Bar 30
  aes2. |
  g!4) r8 aes4.( |
  g2. |
  a4) r8 bes4.~ |
  bes4. e4( f8 |
  ees!4 ges,8 f) r r |
  R2. |
  \tuplet 3/2 {cis'8.:16} \tuplet 3/2 {d8.:16} \tuplet 3/2 {e8.:16} \tuplet 3/2 {f8.:16\f} \tuplet 3/2 {ges8.:16\<} \tuplet 3/2 {f8.:16} |
  \tuplet 3/2 {bes,8.:16\ff} \tuplet 3/2 {bes8.:16} \tuplet 3/2 {bes8.:16} \deprecateddim \tuplet 3/2 {bes8.:16} \tuplet 3/2 {aes8.:16} \tuplet 3/2 {bes8.:16} |
  aes4.(\p g8) r r |
  
  %% Bar 40
  R2. |
  g'4\pp( g8-. g-. g-. g-.) |
  g( f16 ees d c bes aes g f ees d) |
  d8( ees16 d' c bes aes8) r r |
  r4 r8 r bes( a |
  aes!) r r r bes4( |
  g') g8-.( g-. g-. g-.) |
  g8( f16 ees d c bes aes g f ees d) |
  d8( ees) r g( aes) r |
  fis4 g16-.( g-.) fis4 g16-.( g-.) |
  fis4( g8) r4 r8 |
  r4 r8 f!4( ees16) ees-. |
  f4( ees16) ees-. f4( ees8) |
  ees4.~ ees4 bes8( |
  ees) r r r4 r8 |
  ees8( d des c ces bes) |
  bes'4.( f~) |
  f( g4) r8 |
  R2. |
  f'4.( \deprecatedcresc des)~ |
  
  %% Bar 60
  des( a4) r8 |
  \deprecatedcresc d,!2.( |
  ees16) r \tuplet 3/2 {r bes'\<\([ c\!] } \tuplet 3/2 {des\>[ bes g]\!} ees16\) r \tuplet 3/2 {r ees'[ ees]} \tuplet 3/2 {ees[ ees ees]} |
  \deprecatedcresc fes2. |
  r8 \tuplet 3/2 {r16 d[\<\( ees]\!} \tuplet 3/2 {f!\>[ d b\!]} ees8\) \tuplet 3/2 {r16 ees,16\<[\(_\markup{\large\bold\italic "cresc."} f]\!} \tuplet 3/2 {ges[\> ees c\)\!]\!} |
  \tuplet 3/2 {g'!8.:16\f} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g16[ g g]} \tuplet 3/2 {g-.[ a-. b-.]} \tuplet 3/2 {c-.[ aes-. fis-.]} |
  \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {<g, g'>8.:16} \tuplet 3/2 {<g g'>8.:16} \tuplet 3/2 {<g g'>8.:16} |
  \tuplet 3/2 {<g g'>8.:16} \tuplet 3/2 {<g g'>8.:16} \tuplet 3/2 {<g g'>8.:16} \tuplet 3/2 {<g g'>8.:16} \tuplet 3/2 {<g g'>8.:16} \tuplet 3/2 {<g g'>8.:16} |
  <g g'>16 r r8 r r4 r8 |
  bes2.\p |
  
  %% Bar 70
  aes8(\< des4\> c4.\!) |
  \tuplet 3/2 {r16 aes'-.([\< g-.)]} \tuplet 3/2 {r aes-.([ g-.)]} \tuplet 3/2 {r aes-.([ g-.)]\!} \tuplet 3/2 {r b-.(\> a-.)} \tuplet 3/2 {r b-.( a-.)} \tuplet 3/2 {r b-.( a-.)\!} |
  \tuplet 3/2 {r16 aes!-.([\< g-.)]} \tuplet 3/2 {r aes-.([ g-.)]} \tuplet 3/2 {r aes-.([ g-.)]\!} \tuplet 3/2 {r b-.(\> a-.)} \tuplet 3/2 {r b-.( a-.)} \tuplet 3/2 {r b-.( a-.)\!} |
  g16 r r8 r r4 r8 |
  R2.*2 |
  e'4\pp( e8-. e-. e-. e-.) |
  e( d16 c b a g f e d c b) |
  b8( c4) cis8( d4) |
  r4 r8 r g( fis |
  
  %% Bar 80
  f!) r r r4 r8 |
  aes!4( aes8-. aes-. aes-. aes-.) |
  aes( g16 f bes8) bes-.( bes-. bes-.) |
  bes8( aes16 g f e f8) r r |
  f4( ees!16) c-. f4( ees16) c-. |
  f4( ees8) aes4.~ |
  aes16( g aes g aes g) g8. g16-.( f-. f-.) |
  g8. g16-.( f-. f-.) g4( aes8)~ |
  aes4. r8 g( f) |
  ees16 r r8 r r4 r8 |
  R2.*4 |
  f4( ees8 f8.) ges16 f8 |
  ges4( ees8) f4.~ |
  f r4 r8 |
  \tuplet 3/2 {aes16-.\(_\markup{\bold\italic "espress."}[ g-. f-.]} \tuplet 3/2 {aes16-.[ g-. f-.]} \tuplet 3/2 {aes16-.[ g-. f-.\)]} e4 r8 |
  \tuplet 3/2 {c16-.\([ bes-. aes-.]} \tuplet 3/2 {c16-.[ bes-. aes-.]} \tuplet 3/2 {c16-.[ bes-. aes-.\)]} g4 r8 |
  r4 r8 r4 aes8( |
  g) r aes( g\< b c\! |
  b\> c c-.)\! c-. r g |
  g r r r4 r8 |
  \bar "|."
 }
}

FourthViolinSecondMovementTiming =
{
 s2.*3^\markup {" " \raise #4.0 \bold\huge "Andante"} |
 s2.*72 \pageBreak
}