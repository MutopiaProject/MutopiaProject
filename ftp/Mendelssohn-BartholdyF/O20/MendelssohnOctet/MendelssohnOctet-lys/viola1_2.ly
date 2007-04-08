%Viola 1, 2nd movement

FirstViolaSecondMovement =
{
\override TupletBracket  #'bracket-visibility = ##f
 \relative c' {  
  \key c \minor
  \clef "alto"
  \time 6/8
  g4.\p g8-.( g-. g-.) |
  g4( f8 ees8.) d16 ees8 |
  aes'4( g8 f8.) e16 f8~ |
  f r r r4 r8 |
  R2. |
  aes4.~ aes8. g16 aes8 |
  bes4( c8 des) r r |
  R2.*2 |
  r8 des,,-.(\< des-. ees f g)\! |
  bes(\> des g,)\! ees'-.( ees-. ees-.) |
  ees2.~ |
  ees4. ees8-.( ees-. ees-.) |
  ees4.( des) |
  f4( ees8 f) r r |
  f4( ees8) b4( c8) |
  f( ees) d-. \cresc d4( ees8) |
  f4( ees8) f( ees) d-. |
  \times 2/3 {d8.:16\f} \times 2/3 {d8.:16} \times 2/3 {ees8.:16} \times 2/3 {f8.:16} \times 2/3 {f8.:16} \times 2/3 {ees8.:16} |
  \times 2/3 {aes,8.:16} \times 2/3 {g8.:16} \times 2/3 {g8.:16} \override TupletBracket  #'number-visibility = ##f \times 2/3 {g16[ c, c]} \times 2/3 {c8.:16} \times 2/3 {c8.:16} |
  \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} r4 r8 |
  \times 2/3 {ees'16-.\p\([ ees-. ees-.]} \times 2/3 {ees-.[ d-. c-.]} \times 2/3 {b-.[ c-. b-.]} \times 2/3 {c-.\)[ g-.\( g-.]} \times 2/3 {g-.[ g-. g-.]} \times 2/3 {aes!-.[ bes-. aes-.\)]} |
  \dim \times 2/3 {g-.\([ g-. g-.]} \times 2/3 {g-.[ aes-. g-.]} \times 2/3 {f-.[ g-. f-.\)]} ees8\! r r |  
  r4 r8 c(\pp d e |
  f fis g) g r r |
  r aes4~ \dim aes8( g f |
  g) \times 2/3 {r16 ees!\ff\([ f]}   
  \times 2/3 {ges[ ees c\)]} bes'8\( \times 2/3 {a16\)[ ees\( f]} \times 2/3 {ges[ ees c\)]} |
  bes'8\( \times 2/3 {a16\)[ aes\( bes]} \times 2/3 {ces[ aes f\)]} ees8\( \times 2/3 {d!16\)[ aes'\( bes]} \times 2/3 {ces[ aes f\)]} |
  ees8\( \times 2/3 {d!16\)[ ges'!\(\pp aes]} \times 2/3 {bes[ ges f]} \times 2/3 {ees[ ges aes]} \times 2/3 {bes[ ges f]} \times 2/3 {ees[ ges bes\)]} |
  
  %% Bar 30
  \times 2/3 {f\([ aes bes]} \times 2/3 {ces_\markup{\bold\italic "sempre" \dynamic {pp}}[ aes ges]} \times 2/3 {f[ aes ces]} \times 2/3 {f,[ aes bes]} \times 2/3 {ces[ aes ges]} \times 2/3 {f[ aes ces\)]} |
  \times 2/3 {g!\([ bes c!]} \times 2/3 {des[ c bes]} \times 2/3 {aes[ bes g]} \times 2/3 {f[ aes bes]} \times 2/3 {c[ aes g]} \times 2/3 {f[ aes c\)]} |
  \times 2/3 {g\([ bes c]} \times 2/3 {des[ bes aes]} \times 2/3 {g[ bes des]} \times 2/3 {g,[ bes c]} \times 2/3 {des[ bes aes]} \times 2/3 {g[ bes des\)]} |
  \times 2/3 {a\([ c d!]} \times 2/3 {ees[ d c]} \times 2/3 {bes[ c a]} \times 2/3 {g[ bes c]} \times 2/3 {d[ bes a]} \times 2/3 {g[ bes d\)]} |
  \times 2/3 {g,\([ bes d]} \times 2/3 {ees[ bes aes!]} \times 2/3 {g[ bes ees]} \times 2/3 {g,[ c e\)]} \times 2/3 {e,([ g c)]} \times 2/3 {c,([ f aes)]} |  
  \times 2/3 {c,\([ ees! f]} \times 2/3 {ges[ ees des]} \times 2/3 {c[ ees ges]\)} \times 2/3 {bes,[\(^\< d ees\!]} \times 2/3 {f[^\> d c]\!} \times 2/3 {bes[ d f]\)} | 
  \times 2/3 {bes,\([^\< ees f]\!} \times 2/3 {ges[^\> ees bes]\!\)} \times 2/3 {bes[( ees ges])} \times 2/3 {bes,[\(^\<_\markup{\huge\bold\italic "cresc."} f' g\!]} \times 2/3 {aes[^\> f bes,\)]\!} \times 2/3 {bes[( f' aes])} | 
  \times 2/3 {bes,([ g' bes])} \times 2/3 {bes,([ d f])} \times 2/3 {bes,[( e g])} \times 2/3 {bes,\f[( f' aes)]} \times 2/3 {bes,[(\< ees ges)]} \times 2/3 {bes,[( d f])} | 
  \times 2/3 {f8.:16\ff} \times 2/3 {f8.:16} \times 2/3 {bes,8.:16} \dim \times 2/3 {ees8.:16} \times 2/3 {d8.:16} \times 2/3 {ees8.:16} |
  \revert TupletBracket  #'number-visibility 
  ees4.~\p ees8 r r |
  
  %% Bar 40
  R2. |
  ees'4(\pp ees8-. ees-. ees-. ees-.) |
  ees( d16 c bes aes g f ees d c bes) |
  bes4.( g'8 aes4) |
  aes8( g ges f) r r |
  r f,( ees d) r r |
  ees8( f16 g aes bes c d ees f g aes |
  c8) r f-.( f-. f-. f-.) |
  f( ees16 d c bes c8) r r |
  d,4 d16-.( d-.) d4 d16-.( d-.) |
  d4.( g) |
  f4( ees8 d4 c16) c-. |
  d4( c16) c-. d4( c8) |
  aes4.( bes |
  ees,8) ces'( bes aes4 f'8) |
  ees( ces bes aes4 f8) |
  \times 2/3 {r16 ges'[\( aes]} \times 2/3 {bes[ ges f]} \override TupletBracket  #'number-visibility = ##f \times 2/3{ees[ ges bes]} \times 2/3 {f[ aes bes]} \times 2/3 {ces[ aes ges]} \times 2/3 {f[ aes ces]\)} |
  \times 2/3 {f,[\( aes bes]} \times 2/3 {ces[ aes ges]} \times 2/3{f[ aes ces]} \times 2/3 {g[ bes c]} \times 2/3 {des[ c bes]} \times 2/3 {aes[ bes g]} |
  f8\) des( c bes4)( g'8) |
  \times 2/3 {r16 aes[\( bes]} \times 2/3 {c[ aes g]} \times 2/3{f[ aes c]} \cresc \times 2/3 {g[ bes c]} \times 2/3 {des[ bes aes]} \times 2/3 {g[ bes des]\)} |
  \times 2/3 {g,[\( bes c]} \times 2/3 {des[ bes aes]} \times 2/3{g[ bes des]} \times 2/3 {a[ c d]} \times 2/3 {ees[ d c]} \times 2/3 {bes[ c a]\)} |
  \cresc bes2.~ |
  bes8\! r \times 2/3 {r16 bes,16\<\([ c]\!} \times 2/3 {des[\> bes g\!]} \times 2/3 {ees\)[ g' g]} \times 2/3 {g[ g g]} |
  aes2._\markup{\huge\bold\italic "cresc."} |
  r8 \times 2/3 {r16 b\8[\(^\< c\!]} \times 2/3 {c^\>[ b f]\!} ees8\) \times 2/3 {r16 c^\<\([_\markup{\huge\bold\italic "cresc."} d]\!} \times 2/3 {ees[^\> c aes]\!\)} |
  g16\f[ r32 g a16 r32 a b16 r32 b] c16[ r32 c ees16 r32 ees c16 r32 c] |
  \times 2/3 {b8.:16} \times 2/3 {c8.:16} \times 2/3 {d8.:16} \times 2/3 {ees8.:16} \times 2/3 {ees8.:16} \times 2/3 {ees8.:16} |
  \times 2/3 {d8.:16} \times 2/3 {d8.:16} \times 2/3 {ees8.:16} \times 2/3 {d8.:16} \times 2/3 {d8.:16} \times 2/3 {ees8.:16} |
  \revert TupletBracket  #'number-visibility 
  d16 r r8 r r4 \times 2/3 {r16 aes-.\p( aes-.)} |
  \override TupletBracket  #'number-visibility = ##f
  \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 g-.([ g-.)]} \times 2/3 {r16 g-.([ g-.)]} |
  \times 2/3 {r16 aes-.([ aes-.)]} \times 2/3 {r16 bes-.([ bes-.)]} \times 2/3 {r16 ees,-.([ ees-.)]} \times 2/3 {r16 c'-.([ c-.)]} r8 r |
  \revert TupletBracket  #'number-visibility 
  r4 r8 c4.( |
  b8) r r ees4.( |
  d8) r r r4 r8 |
  r4 b8\pp r d r |
  R2. |
  e'8( d16 c b a g f e d c b) |
  a8( b d b) r d' |
  d( c16 b a gis a4.) |
  r16 g,8[ g g g g g16]~ |
  
  %% Bar 80
  g[ g8 g g g g g16]( |
  c aes'! g f ees! des c bes aes g f ees) |
  des8( ees16 f g aes bes c des ees f g) |
  ees4 r8 r4 r8 |
  d!4 c16-.( c-.) d4 c16-.( c-.) |
  d4( c8) c4.( |
  ees4 d8) e8. e16-.( f-. f-.) |
  e8. e16-.( f-. f-.) e4( f8)~ |
  f4. r8 ees!( d |
  c aes g) f4 \times 2/3 {d16( b' d)} |
  d8( b bes a aes g) |
  c( aes g c aes f16 aes) |
  g4( f8 ees8.) d16 ees8 |
  aes'4\accent( g8 f8.) e16 f8 |
  R2.*3 |
  aes,8-.( aes-. aes-.) g4 r8 |
  aes-.( aes-. aes-.) g4 r8 |
  \override TupletBracket  #'number-visibility = ##f
  \times 2/3 {aes16-.[\( g-. f-.]} \times 2/3 {aes-.[ g-. f-.]} \times 2/3 {aes-.[ g-. f-.]\)} e8 r f( |
  \revert TupletBracket  #'number-visibility
  e) r f( e\< aes g\! |
  f\> e e-.)\! e-. r e |
  e r r r4 r8 
  \bar "|."
 }    
}

FirstViolaSecondMovementTiming =
{
 s2.^\markup {" " \raise #4.0 \bold\huge "Andante"} |
 s2.*39 \pageBreak
}