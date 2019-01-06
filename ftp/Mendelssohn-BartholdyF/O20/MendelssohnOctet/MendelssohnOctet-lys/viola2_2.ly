%Viola 2, 2nd movement
\version "2.19.80"

SecondViolaSecondMovement =
{
\override TupletBracket.bracket-visibility = ##f
 \relative c {  
  \key c \minor
  \clef "alto"
  \time 6/8
  c4.\p c8-.( c-. c-.) |
  c2. |
  f'4( e8 c4.) |
  R2.*5 |
  r4 r8 r des( bes) |
  aes4(\< bes8 c des f)\! |
  ees,\>( g bes)\! aes-.( aes-. aes-.) |
  aes2.~ |
  aes4. aes8-.( aes-. aes-.) |
  aes2. |
  bes4( c8 des) r r |
  R2. |
  r8 g, g \deprecatedcresc b4( c8) |
  d4( ees8) r4 r8 |
  \tuplet 3/2 {f,16\f([ aes b])} \tuplet 3/2 {f([ aes b)]} \tuplet 3/2 {ees,([ g c)]} \tuplet 3/2 {f,([ aes d)]} \tuplet 3/2 {f,([ aes d)]} \tuplet 3/2 {g,([ c ees)]} |
  \tuplet 3/2 {aes,[( f aes)]} \tuplet 3/2 {r aes([ g)]} \tuplet 3/2 {r aes([ g])} c,8 aes'4\accent |
  bes8 ees4\accent \tuplet 3/2 {g8.:16\p} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} |
  ees8 r r r4 r8 |
  r4 r8 c,\pp( d e |
  f fis g) g r r |
  r4 r8 r aes( g) |
  g r r r4 r8 |
  r \tuplet 3/2 {r16 ees!\ff\([ f]} \tuplet 3/2 {ges[ ees c\)]} \omit TupletNumber bes'8\( \tuplet 3/2 {a16\)[ ees\( f]} \tuplet 3/2 {ges[ ees c\)]} |
  bes'8\( \tuplet 3/2 {a16\)[ aes\( bes]} \tuplet 3/2 {ces[ aes f\)]} ees8\( \tuplet 3/2 {d!16\)[ aes'\( bes]} \tuplet 3/2 {ces[ aes f\)]} |
  ees8( d!16) r r8 r4 r8 |
  R2. |
  r4 r8 aes''4~\pp \tuplet 3/2 {aes16( g f)} |
  e4~ \tuplet 3/2 {e16[ e\( f]} g4\)~ \tuplet 3/2 {g16[ g g]} |
  g8( fis) r \set doubleSlurs = ##t <bes, d>4.( |
  <bes ees>) \set doubleSlurs = ##f << { e4( f8)} \\ {c4.} >> |
  r4 r8 aes'!4.\( |
  ges \deprecatedcresc f |
  e8 \tuplet 3/2 {f16\)[ d d]} \tuplet 3/2 {e[ e e]} \tuplet 3/2 {f8.:16\f} \tuplet 3/2 {ees8.:16\<} \tuplet 3/2 {d8.:16} |
  \tuplet 3/2 {<bes d>8.:16\ff} \tuplet 3/2 {<bes d>8.:16} \tuplet 3/2 {f'8.:16} \deprecateddim \tuplet 3/2 {bes,8.:16} \tuplet 3/2 {bes8.:16} \tuplet 3/2 {bes8.:16} |
  aes8\p r r r4 r8 |
  
  %% Bar 40
  R2. |
  ees''8\pp( d16 c bes aes g f ees d c bes) |
  aes4.~ aes8 r r |
  r ees'4( e8 f4) |
  r16 bes,8 bes bes bes bes bes16~ |
  bes bes8 bes bes bes bes bes16 |
  ees'8( d16 c bes aes g f ees d c bes) |
  aes( f g aes bes c d ees f g aes bes) |
  bes4 r8 e,( f) r |
  c4( bes16) g-. c4( bes16) g-. |
  c4( bes8) ees,4.( |
  f g4) g16-.( g-.) |
  g4 g16-.( g-.) g4. |
  R2. |
  \undo \omit TupletNumber
  \tuplet 3/2 {ees'8.:16} \tuplet 3/2 {ees8.:16} \tuplet 3/2 {ees8.:16} \tuplet 3/2 {ees8.:16} \tuplet 3/2 {ees8.:16} \tuplet 3/2 {d16\([ f aes]} |
  \tuplet 3/2 {g\)[ ees, ees]} \omit TupletNumber \tuplet 3/2 {ees[ ees ees]} \tuplet 3/2 {ees[ ees ees]} \tuplet 3/2 {ees[ ees ees]} \tuplet 3/2 {ees[ ees ees]} \tuplet 3/2 {d[\( f aes]} |
  ees2. |
  << { des4. c\) } {s8\< s s\! s\> s s\!} >> |
  \undo \omit TupletNumber
  \tuplet 3/2 {f'8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {f8.:16} \omit TupletNumber \tuplet 3/2 {e16\([ g bes]} |
  aes8\) r r r4 r8 |
  
  %% Bar 60
  R2. |
  r4 \tuplet 3/2 {r16 bes,[\(\<^\markup{\large\bold\italic "cresc."} c\!]} \tuplet 3/2 {d\> bes g\!} \tuplet 3/2 {d\)[ d' d]} \tuplet 3/2 {d[ d d]} |
  \deprecatedcresc des2. |
  r4 \tuplet 3/2 {r16 fes,[\<\( ges]\!} \tuplet 3/2 {aes\>[ fes des]\!\)} \tuplet 3/2 {r \deprecatedcresc des''[ des]} \tuplet 3/2 {des[ des des]} |
  d!4. c8(\< ees4) |
  g,16\f[ r32 g, a16 r32 a b16 r32 b] c16[ r32 c, ees16 r32 ees c16 r32 c] |
  \stemUp \tuplet 3/2 {g'8.:16} \tuplet 3/2 {a8.:16} \tuplet 3/2 {b8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \stemNeutral |
  \tuplet 3/2 {b8.:16} \tuplet 3/2 {b8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {b8.:16} \tuplet 3/2 {c8.:16} |
  \undo \omit TupletNumber
  b16 r r8 r r4 \tuplet 3/2 {r16 f[-.(\p f-.)]} |
  \omit TupletNumber
  \tuplet 3/2 {r ees-.([ ees-.)]} \tuplet 3/2 {r ees-.([ ees-.)]} \tuplet 3/2 {r ees-.([ ees-.)]} \tuplet 3/2 {r e-.([ e-.)]} \tuplet 3/2 {r e-.([ e-.)]} \tuplet 3/2 {r e-.([ e-.)]} |
  \tuplet 3/2 {r f-.([ f-.)]} \tuplet 3/2 {r g-.([ g-.)]} \tuplet 3/2 {r g-.([ g-.)]} \tuplet 3/2 {r aes-.([ aes-.)]} r8 r |
  r4 r8 ees4.( |
  d8) r r g4.~ |
  g8 r b-.( \deprecateddim c-. c-. c-.) |
  d-.(\pp d-. f-.) r f r |
  R2. |
  c'8( b16 a g f e d c b a g) |
  f2. |
  g4( c8 a4.) |
  f'8( e ees d) r r |
  r d,( e f e d) |
  c( des16 ees! f g aes bes c des ees f)  |
  des,8. des16( ees f g aes bes c des ees) |
  c,( des ees f g aes a8 bes16 a bes aes) |
  g4 g16-.( g-.) g4 g16-.( g-.) |
  g4. r4 r8 |
  r4 r8 bes8. bes16-.( aes-. aes-.) |
  bes8. bes16-.( c-. c-.) bes8( des4) |
  R2. |
  \undo \omit TupletNumber
  \tuplet 3/2 {c8.:16} \omit TupletNumber \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {b16[\( d f]} |
  \tuplet 3/2 {ees\)[ c c]} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {b16[\( d f]} |
  \tuplet 3/2 {ees\)[ c c]} \deprecateddim \tuplet 3/2 {c[ c c]} \tuplet 3/2 {b[\( d f]} \tuplet 3/2 {ees\)[ c c]} \tuplet 3/2 {c8.:16\pp} \tuplet 3/2 {c8.:16} |
  \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} |
  \tuplet 3/2 {c8.:16} \tuplet 3/2 {des8.:16} \tuplet 3/2 {des8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {des8.:16} \tuplet 3/2 {c8.:16} |
  \tuplet 3/2 {des8.:16} \tuplet 3/2 {des8.:16} \tuplet 3/2 {des8.:16} \tuplet 3/2 {des8.:16} \tuplet 3/2 {des8.:16} \tuplet 3/2 {des8.:16} |
  \tuplet 3/2 {des8.:16} \tuplet 3/2 {des8.:16} \tuplet 3/2 {des8.:16} \deprecateddim \tuplet 3/2 {des8.:16} \tuplet 3/2 {des8.:16} \tuplet 3/2 {c8.:16} |
  \tuplet 3/2 {b8.:16} \tuplet 3/2 {b8.:16} \tuplet 3/2 {b8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} |
  \tuplet 3/2 {c8.:16\pp} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c16[ c c]\(} \tuplet 3/2 {des\)[^\markup{\bold\italic "espress."} des des]} \tuplet 3/2 {des[ des des]} \tuplet 3/2 {des[ des des]\(} |
  \tuplet 3/2 {c\)[ c c]} \tuplet 3/2 {c[ c c]} \tuplet 3/2 {c[ c c]\(} \tuplet 3/2 {des\)[\< des des]} \tuplet 3/2 {des\![ des\> des]\(} \tuplet 3/2 {c\)[ c c]\!} |
  \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c16[ c c]\(} \tuplet 3/2 {des\)[\< des des]} \tuplet 3/2 {c\![ c\> c]\(} \tuplet 3/2 {c,\)[ c c]\!} |
  \tuplet 3/2 {c[-. c( des)]} \tuplet 3/2 {des-.[ des( c)]} \tuplet 3/2 {c[ c c]} \tuplet 3/2 {c([ des c])} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} |
  \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} r4 r8 |
  R2. |
  \bar "|."
 }    
}

SecondViolaSecondMovementTiming =
{
 s2.^\markup {" " \raise #4.0 \bold\huge "Andante"} |
 s2.*52 \pageBreak
}