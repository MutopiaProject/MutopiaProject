%Viola 2, 2nd movement

SecondViolaSecondMovement =
{
\override TupletBracket  #'bracket-visibility = ##f
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
  r8 g, g \cresc b4( c8) |
  d4( ees8) r4 r8 |
  \times 2/3 {f,16\f([ aes b])} \times 2/3 {f([ aes b)]} \times 2/3 {ees,([ g c)]} \times 2/3 {f,([ aes d)]} \times 2/3 {f,([ aes d)]} \times 2/3 {g,([ c ees)]} |
  \times 2/3 {aes,[( f aes)]} \times 2/3 {r aes([ g)]} \times 2/3 {r aes([ g])} c,8 aes'4\accent |
  bes8 ees4\accent \times 2/3 {g8.:16\p} \times 2/3 {g8.:16} \times 2/3 {g8.:16} |
  ees8 r r r4 r8 |
  r4 r8 c,\pp( d e |
  f fis g) g r r |
  r4 r8 r aes( g) |
  g r r r4 r8 |
  r \times 2/3 {r16 ees!\ff\([ f]} \times 2/3 {ges[ ees c\)]} \override TupletBracket  #'number-visibility = ##f  bes'8\( \times 2/3 {a16\)[ ees\( f]} \times 2/3 {ges[ ees c\)]} |
  bes'8\( \times 2/3 {a16\)[ aes\( bes]} \times 2/3 {ces[ aes f\)]} ees8\( \times 2/3 {d!16\)[ aes'\( bes]} \times 2/3 {ces[ aes f\)]} |
  ees8( d!16) r r8 r4 r8 |
  R2. |
  r4 r8 aes''4~\pp \times 2/3 {aes16( g f)} |
  e4~ \times 2/3 {e16[ e\( f]} g4\)~ \times 2/3 {g16[ g g]} |
  g8( fis) r \set doubleSlurs = ##t <bes, d>4.( |
  <bes ees>) \set doubleSlurs = ##f << { e4( f8)} \\ {c4.} >> |
  r4 r8 aes'!4.\( |
  ges \cresc f |
  e8 \times 2/3 {f16\)[ d d]} \times 2/3 {e[ e e]} \times 2/3 {f8.:16\f} \times 2/3 {ees8.:16\<} \times 2/3 {d8.:16} |
  \times 2/3 {<bes d>8.:16\ff} \times 2/3 {<bes d>8.:16} \times 2/3 {f'8.:16} \dim \times 2/3 {bes,8.:16} \times 2/3 {bes8.:16} \times 2/3 {bes8.:16} |
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
  \override TupletBracket  #'number-visibility = ##t
  \times 2/3 {ees'8.:16} \times 2/3 {ees8.:16} \times 2/3 {ees8.:16} \times 2/3 {ees8.:16} \times 2/3 {ees8.:16} \times 2/3 {d16\([ f aes]} |
  \times 2/3 {g\)[ ees, ees]} \override TupletBracket  #'number-visibility = ##f \times 2/3 {ees[ ees ees]} \times 2/3 {ees[ ees ees]} \times 2/3 {ees[ ees ees]} \times 2/3 {ees[ ees ees]} \times 2/3 {d[\( f aes]} |
  ees2. |
  << { des4. c\) } {s8\< s s\! s\> s s\!} >> |
  \override TupletBracket  #'number-visibility = ##t
  \times 2/3 {f'8.:16} \times 2/3 {f8.:16} \times 2/3 {f8.:16} \times 2/3 {f8.:16} \times 2/3 {f8.:16} \override TupletBracket  #'number-visibility = ##f \times 2/3 {e16\([ g bes]} |
  aes8\) r r r4 r8 |
  
  %% Bar 60
  R2. |
  r4 \times 2/3 {r16 bes,[\(\<^\markup{\large\bold\italic "cresc."} c\!]} \times 2/3 {d\> bes g\!} \times 2/3 {d\)[ d' d]} \times 2/3 {d[ d d]} |
  \cresc des2. |
  r4 \times 2/3 {r16 fes,[\<\( ges]\!} \times 2/3 {aes\>[ fes des]\!\)} \times 2/3 {r \cresc des''[ des]} \times 2/3 {des[ des des]} |
  d!4. c8(\< ees4) |
  g,16\f[ r32 g, a16 r32 a b16 r32 b] c16[ r32 c, ees16 r32 ees c16 r32 c] |
  \stemUp \times 2/3 {g'8.:16} \times 2/3 {a8.:16} \times 2/3 {b8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \stemNeutral |
  \times 2/3 {b8.:16} \times 2/3 {b8.:16} \times 2/3 {c8.:16} \times 2/3 {g8.:16} \times 2/3 {b8.:16} \times 2/3 {c8.:16} |
  \override TupletBracket  #'number-visibility = ##t
  b16 r r8 r r4 \times 2/3 {r16 f[-.(\p f-.)]} |
  \override TupletBracket  #'number-visibility = ##f
  \times 2/3 {r ees-.([ ees-.)]} \times 2/3 {r ees-.([ ees-.)]} \times 2/3 {r ees-.([ ees-.)]} \times 2/3 {r e-.([ e-.)]} \times 2/3 {r e-.([ e-.)]} \times 2/3 {r e-.([ e-.)]} |
  \times 2/3 {r f-.([ f-.)]} \times 2/3 {r g-.([ g-.)]} \times 2/3 {r g-.([ g-.)]} \times 2/3 {r aes-.([ aes-.)]} r8 r |
  r4 r8 ees4.( |
  d8) r r g4.~ |
  g8 r b-.( \dim c-. c-. c-.) |
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
  \override TupletBracket  #'number-visibility = ##t
  \times 2/3 {c8.:16} \override TupletBracket  #'number-visibility = ##f \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {b16[\( d f]} |
  \times 2/3 {ees\)[ c c]} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {b16[\( d f]} |
  \times 2/3 {ees\)[ c c]} \dim \times 2/3 {c[ c c]} \times 2/3 {b[\( d f]} \times 2/3 {ees\)[ c c]} \times 2/3 {c8.:16\pp} \times 2/3 {c8.:16} |
  \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} |
  \times 2/3 {c8.:16} \times 2/3 {des8.:16} \times 2/3 {des8.:16} \times 2/3 {c8.:16} \times 2/3 {des8.:16} \times 2/3 {c8.:16} |
  \times 2/3 {des8.:16} \times 2/3 {des8.:16} \times 2/3 {des8.:16} \times 2/3 {des8.:16} \times 2/3 {des8.:16} \times 2/3 {des8.:16} |
  \times 2/3 {des8.:16} \times 2/3 {des8.:16} \times 2/3 {des8.:16} \dim \times 2/3 {des8.:16} \times 2/3 {des8.:16} \times 2/3 {c8.:16} |
  \times 2/3 {b8.:16} \times 2/3 {b8.:16} \times 2/3 {b8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} |
  \times 2/3 {c8.:16\pp} \times 2/3 {c8.:16} \times 2/3 {c16[ c c]\(} \times 2/3 {des\)[^\markup{\bold\italic "espress."} des des]} \times 2/3 {des[ des des]} \times 2/3 {des[ des des]\(} |
  \times 2/3 {c\)[ c c]} \times 2/3 {c[ c c]} \times 2/3 {c[ c c]\(} \times 2/3 {des\)[\< des des]} \times 2/3 {des\![ des\> des]\(} \times 2/3 {c\)[ c c]\!} |
  \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c16[ c c]\(} \times 2/3 {des\)[\< des des]} \times 2/3 {c\![ c\> c]\(} \times 2/3 {c,\)[ c c]\!} |
  \times 2/3 {c[-. c( des)]} \times 2/3 {des-.[ des( c)]} \times 2/3 {c[ c c]} \times 2/3 {c([ des c])} \times 2/3 {c8.:16} \times 2/3 {c8.:16} |
  \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} r4 r8 |
  R2. |
  \bar "|."
 }    
}

SecondViolaSecondMovementTiming =
{
 s2.^\markup {" " \raise #4.0 \bold\huge "Andante"} |
 s2.*52 \pageBreak
}