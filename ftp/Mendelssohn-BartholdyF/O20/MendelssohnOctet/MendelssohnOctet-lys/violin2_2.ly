%Violin 2, 2nd movement

SecondViolinSecondMovement =
{
\override TupletBracket  #'bracket-visibility = ##f
 \relative c' {  
  \key c \minor
  \time 6/8
  R2.*3 |
  des'2.\p |
  des4( ees8 des) r r |
  des4( c8 des4.) |
  des4( ees8 aes,) r r |
  r ges-.( ges-. ges-.) r r |
  r aes-.( aes-. aes-.) r r |
  r aes-.(\< aes-. aes-. aes-. des)\! |
  des(\> bes g\! aes) r r |
  ees'4( des8 c8.) b16 c8 |
  ees4( des8) c4.~ |
  c4.( des) |
  des4( ees8 des) r r |
  aes4( g8) d( aes' g) |
  aes( g) g-. \cresc aes4( g8 |
  aes4( g8) aes( g) g-. |
  aes4(\f g8) g'8.( f16 ees8) |
  
  %% Bar 20
  ees16( des) c8( b) c c4\accent |
  c8 c4\accent \times 2/3 {f!16-.[\p\( f-. f-.]} \times 2/3 {ees-.[ d-. c-.]} \times 2/3 {b-.[ c-. b-.\)] } |
  \override TupletBracket  #'number-visibility = ##f  
  \times 2/3 {c-.\([ g-. g-.]} \times 2/3 {g-.[ g-. g-.]} \times 2/3 {g-.[ g-. g-.]} \times 2/3 {g-.[\) ees-.\( ees-.]} \times 2/3 {ees-.[ d-. c-.]} \times 2/3 {d-.[ ees-. d-.\)]} |
  \dim \times 2/3 {c-.[\( c-. c-.]} \times 2/3 {c-.[ d-. c-.]} \times 2/3 {b-.[ c-. b-.]\)} c8\! r r |
  \revert TupletBracket  #'number-visibility  
  R2.*3 |
  r8 \times 2/3 {r16 ees!\ff\([ f]} \times 2/3 {ges-.[ ees-. c-.]\)} bes8\( \times 2/3 {a16-.[\) ees'-.\( f-.]} \times 2/3 {ges-.[ ees-. c-.]\)} |
  \override TupletBracket  #'number-visibility = ##f
  bes8\( \times 2/3 {a16-.[\) aes'!-.\( bes-.]} \times 2/3 {ces-.[ aes-. f-.\)]} ees8\( \times 2/3 {d!16-.[\) aes'-.\( bes-.]} \times 2/3 {ces-.[ aes-. f-.]\)} |
  \revert TupletBracket  #'number-visibility  
  ees8( d16) r r8 ees'4.\pp( |
  ces2. |
  bes4) r8 f'4.( |
  des2. |
  c4) r8 bes'4.~ |
  bes~ bes4( aes8) |
  ges4( ees8 d) r \times 2/3 {bes16 bes bes} |
  \times 2/3 {a8.:16} \override TupletBracket  #'number-visibility = ##f \times 2/3 {a8.:16} \times 2/3 {a8.:16} \cresc \times 2/3 {aes8.:16} \times 2/3 {aes8.:16} \times 2/3 {aes8.:16} |
  \times 2/3 {g8.:16} \times 2/3 {f8.:16} \times 2/3 {g8.:16} \times 2/3 {aes8.:16\f[} \times 2/3 {a8.:16]\<} \times 2/3 {bes16[ bes b]} |
  \times 2/3 {aes'8.:16\ff[} \times 2/3 {aes8.:16]} \times 2/3 {aes16[ g f]} \dim \times 2/3 {ees8.:16} \times 2/3 {d8.:16} \times 2/3 {ees8.:16} |
  \revert TupletBracket  #'number-visibility  
  ees4.\p~ ees8 r r |
  
  %% Bar 40
  R2. |
  g8(\pp f16 ees d c bes aes g f ees d) |
  c8( d f d) r r |
  bes''4-.( bes8-.) bes( aes16 g f ees) |
  d8( ees4 d8 ees4) |
  r4 r8 r ees( d |
  g f16 ees d c bes aes g f ees d) |
  c( aes bes c d ees f g aes bes c d |
  bes'4 bes8-.) bes( aes16 g aes g |
  fis4 g16) g-. fis4( g16) g-. |
  fis4( g8) ees4.( |
  d4 c8) d4( c16) c-. |
  d4( c16) c-. d4( c8) |
  c4.( bes4 aes8 |
  g) r r r4 r8 |
  R2. |
  ges'4~ \times 2/3 {ges16( f ees)} d4~ \times 2/3 {d16 d\( ees} |
  f4\)~ \times 2/3 {f16 f f} f8( e) r |
  R2. |
  aes4~ \times 2/3 { aes16( g f)} e4~ \cresc \times 2/3 {e16 e\( f} |
  \override TupletBracket  #'number-visibility =##f
  
  %% Bar 60
  g4\)~ \times 2/3 {g16 g g} g8( fis) r |
  \cresc g2.~ |
  \times 2/3 {g16\<[ bes\( c\!]} \times 2/3 {des\>[ bes g\!]} ees8\) r \times 2/3 {r16 des'[ des]} \times 2/3 {des16[ des des]} |
  \cresc des2. |
  \times 2/3 {r16 d,!\<\([ ees\!]} \times 2/3 {f\>[ d b\!]} f8\) \times 2/3 {r16 c'\<\([_\markup{\large\bold\italic "cresc."} d\!]} \times 2/3 {ees\>[ c ges\!]} ees8\) |
  \times 2/3 {g'!8.:16\f} \times 2/3 {g8.:16} \times 2/3 {g8.:16} \times 2/3 {g16[ g g]} \times 2/3 {g16[-. a-. b-.]} \times 2/3 {c16[-. aes-. fis-.]} |
  \times 2/3 {g8.:16} \times 2/3 {g8.:16} \times 2/3 {g8.:16} \times 2/3 {g16[ g g]} \times 2/3 {g16[-. a-. b-.]} \times 2/3 {c16[-. aes-. fis-.]} |
  \times 2/3 {g16[ g g]} \times 2/3 {g16[-. a-. b-.]} \times 2/3 {c16[-. aes-. fis-.]} \times 2/3 {g16[ g g]} \times 2/3 {g16[-. a-. b-.]} \times 2/3 {c16[-. aes-. fis-.]} |
  \times 2/3 {g16[ d,-.(\p d-.)]} \times 2/3 {r16 d-.([ d-.)]} \times 2/3 {r16 d-.([ d-.)]} \times 2/3 {r16 ees-.([ ees-.)]} \times 2/3 {r16 f-.([ f-.)]} \times 2/3 {r16 f-.([ f-.)]} |
   \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 g-.([ g-.)]} |
   
   %% Bar 70
   \times 2/3 {r16 f-.([ f-.)]} \times 2/3 {r16 bes-.([ bes-.)]} \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 aes-.([ aes-.)]} \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 fis-.([ fis-.)]} |
   \times 2/3 {r16 d'-.(\<[ d-.)]} \times 2/3 {r16 d-.([ d-.)]} \times 2/3 {r16 d-.([ d-.)]\!} \times 2/3 {r16 ees-.(\>[ ees-.)]} \times 2/3 {r16 ees-.([ ees-.)]} \times 2/3 {r16 ees-.([ ees-.)]\!} |
   \times 2/3 {r16 d-.(\<[ d-.)]} \times 2/3 {r16 d-.([ d-.)]} \times 2/3 {r16 d-.([ d-.)]\!} \times 2/3 {r16 ees-.(\>[ ees-.)]} \times 2/3 {r16 ees-.([ ees-.)]} \times 2/3 {r16 ees-.([ ees-.)]\!} |
   d16 r r8 r \times 2/3 {r16 c[\<\( d\!]} \times 2/3 {ees16[\> c fis,\!\)]} \times 2/3 {r16 g[( fis)]} |
   \times 2/3 {r16 g([ f!)]} r8 r r4 r8 |   
   R2.*2 |
   r4 d'8-.(\pp d-. d-. d-.) |
   g4( g8-.) g( f16 e d c |
   b8 c4) b8( c4) |
   R2. |
   c8( bes!16 aes! g f ees des c bes aes g |
   f'4) r8 r4 r8 |
   ees'4( ees8-.) ees( des16 c des c |
   b4 c16) c-. b4( c16) c-. |
   b4( c8) r4 r8 |
   r4 r8 e8. e16-.( f-. f-.) |
   e8. e16-.( f-. f-.) e4( f8) |
   R2.*6 |
   des4( c8 des8.) c16 des8 |
   c4. des~ |
   des~ \times 2/3 {des16[ c-.\( bes-.]} \times 2/3 {des16[ c-. bes-.]} \times 2/3 {des16[ c-. bes-.]\)} |
   aes16 r r8 r8 r4 r8 |
   R2.*5 |
   \revert TupletBracket  #'number-visibility  
   \bar "|." 
 }    
}

SecondViolinSecondMovementTiming =
{
 s2.*3^\markup {" " \raise #4.0 \bold\huge "Andante"} |
}