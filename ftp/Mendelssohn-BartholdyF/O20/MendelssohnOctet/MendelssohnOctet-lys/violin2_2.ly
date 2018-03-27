%Violin 2, 2nd movement
\version "2.19.80"

SecondViolinSecondMovement =
{
\override TupletBracket.bracket-visibility = ##f
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
  aes( g) g-. \deprecatedcresc aes4( g8) |
  aes4( g8) aes( g) g-. |
  aes4(\f g8) g'8.( f16 ees8) |
  
  %% Bar 20
  ees16( des) c8( b) c c4\accent |
  c8 c4\accent \tuplet 3/2 {f!16-.[\p\( f-. f-.]} \tuplet 3/2 {ees-.[ d-. c-.]} \tuplet 3/2 {b-.[ c-. b-.\)] } |
  \omit TupletNumber  
  \tuplet 3/2 {c-.\([ g-. g-.]} \tuplet 3/2 {g-.[ g-. g-.]} \tuplet 3/2 {g-.[ g-. g-.]} \tuplet 3/2 {g-.[\) ees-.\( ees-.]} \tuplet 3/2 {ees-.[ d-. c-.]} \tuplet 3/2 {d-.[ ees-. d-.\)]} |
  \deprecateddim \tuplet 3/2 {c-.[\( c-. c-.]} \tuplet 3/2 {c-.[ d-. c-.]} \tuplet 3/2 {b-.[ c-. b-.]\)} c8\! r r |
  \undo \omit TupletNumber
  
  R2.*3 |
  r8 \tuplet 3/2 {r16 ees!\ff\([ f]} \tuplet 3/2 {ges-.[ ees-. c-.]\)} bes8\( \tuplet 3/2 {a16-.[\) ees'-.\( f-.]} \tuplet 3/2 {ges-.[ ees-. c-.]\)} |
  \omit TupletNumber
  bes8\( \tuplet 3/2 {a16-.[\) aes'!-.\( bes-.]} \tuplet 3/2 {ces-.[ aes-. f-.\)]} ees8\( \tuplet 3/2 {d!16-.[\) aes'-.\( bes-.]} \tuplet 3/2 {ces-.[ aes-. f-.]\)} |
  \undo \omit TupletNumber
  
  ees8( d16) r r8 ees'4.\pp( |
  ces2. |
  bes4) r8 f'4.( |
  des2. |
  c4) r8 bes'4.~ |
  bes~ bes4( aes8) |
  ges4( ees8 d) r \tuplet 3/2 {bes16 bes bes} |
  \tuplet 3/2 {a8.:16} \omit TupletNumber \tuplet 3/2 {a8.:16} \tuplet 3/2 {a8.:16} \deprecatedcresc \tuplet 3/2 {aes8.:16} \tuplet 3/2 {aes8.:16} \tuplet 3/2 {aes8.:16} |
  \tuplet 3/2 {g8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {aes8.:16\f[} \tuplet 3/2 {a8.:16]\<} \tuplet 3/2 {bes16[ bes b]} |
  \tuplet 3/2 {aes'8.:16\ff[} \tuplet 3/2 {aes8.:16]} \tuplet 3/2 {aes16[ g f]} \deprecateddim \tuplet 3/2 {ees8.:16} \tuplet 3/2 {d8.:16} \tuplet 3/2 {ees8.:16} |
  \undo \omit TupletNumber
  
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
  ges'4~ \tuplet 3/2 {ges16( f ees)} d4~ \tuplet 3/2 {d16 d\( ees} |
  f4\)~ \tuplet 3/2 {f16 f f} f8( e) r |
  R2. |
  aes4~ \tuplet 3/2 { aes16( g f)} e4~ \deprecatedcresc \tuplet 3/2 {e16 e\( f} |
  \omit TupletNumber
  
  %% Bar 60
  g4\)~ \tuplet 3/2 {g16 g g} g8( fis) r |
  \deprecatedcresc g2.~ |
  \tuplet 3/2 {g16\<[ bes\( c\!]} \tuplet 3/2 {des\>[ bes g\!]} ees8\) r \tuplet 3/2 {r16 des'[ des]} \tuplet 3/2 {des16[ des des]} |
  \deprecatedcresc des2. |
  \tuplet 3/2 {r16 d,!\<\([ ees\!]} \tuplet 3/2 {f\>[ d b\!]} f8\) \tuplet 3/2 {r16 c'\<\([_\markup{\large\bold\italic "cresc."} d\!]} \tuplet 3/2 {ees\>[ c ges\!]} ees8\) |
  \tuplet 3/2 {g'!8.:16\f} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g16[ g g]} \tuplet 3/2 {g16[-. a-. b-.]} \tuplet 3/2 {c16[-. aes-. fis-.]} |
  \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g16[ g g]} \tuplet 3/2 {g16[-. a-. b-.]} \tuplet 3/2 {c16[-. aes-. fis-.]} |
  \tuplet 3/2 {g16[ g g]} \tuplet 3/2 {g16[-. a-. b-.]} \tuplet 3/2 {c16[-. aes-. fis-.]} \tuplet 3/2 {g16[ g g]} \tuplet 3/2 {g16[-. a-. b-.]} \tuplet 3/2 {c16[-. aes-. fis-.]} |
  \tuplet 3/2 {g16[ d,-.(\p d-.)]} \tuplet 3/2 {r16 d-.([ d-.)]} \tuplet 3/2 {r16 d-.([ d-.)]} \tuplet 3/2 {r16 ees-.([ ees-.)]} \tuplet 3/2 {r16 f-.([ f-.)]} \tuplet 3/2 {r16 f-.([ f-.)]} |
   \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} |
   
   %% Bar 70
   \tuplet 3/2 {r16 f-.([ f-.)]} \tuplet 3/2 {r16 bes-.([ bes-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 aes-.([ aes-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 fis-.([ fis-.)]} |
   \tuplet 3/2 {r16 d'-.(\<[ d-.)]} \tuplet 3/2 {r16 d-.([ d-.)]} \tuplet 3/2 {r16 d-.([ d-.)]\!} \tuplet 3/2 {r16 ees-.(\>[ ees-.)]} \tuplet 3/2 {r16 ees-.([ ees-.)]} \tuplet 3/2 {r16 ees-.([ ees-.)]\!} |
   \tuplet 3/2 {r16 d-.(\<[ d-.)]} \tuplet 3/2 {r16 d-.([ d-.)]} \tuplet 3/2 {r16 d-.([ d-.)]\!} \tuplet 3/2 {r16 ees-.(\>[ ees-.)]} \tuplet 3/2 {r16 ees-.([ ees-.)]} \tuplet 3/2 {r16 ees-.([ ees-.)]\!} |
   d16 r r8 r \tuplet 3/2 {r16 c[\<\( d\!]} \tuplet 3/2 {ees16[\> c fis,\!\)]} \tuplet 3/2 {r16 g[( fis)]} |
   \tuplet 3/2 {r16 g([ f!)]} r8 r r4 r8 |   
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
   des~ \tuplet 3/2 {des16[ c-.\( bes-.]} \tuplet 3/2 {des16[ c-. bes-.]} \tuplet 3/2 {des16[ c-. bes-.]\)} |
   aes16 r r8 r8 r4 r8 |
   R2.*5 |
   \undo \omit TupletNumber
  
   \bar "|." 
 }    
}

SecondViolinSecondMovementTiming =
{
 s2.*3^\markup {" " \raise #4.0 \bold\huge "Andante"} |
}