%Viola 1, 2nd movement
\version "2.19.80"

FirstViolaSecondMovement =
{
\override TupletBracket.bracket-visibility = ##f
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
  f( ees) d-. \deprecatedcresc d4( ees8) |
  f4( ees8) f( ees) d-. |
  \tuplet 3/2 {d8.:16\f} \tuplet 3/2 {d8.:16} \tuplet 3/2 {ees8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {ees8.:16} |
  \tuplet 3/2 {aes,8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \omit TupletNumber \tuplet 3/2 {g16[ c, c]} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} |
  \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} r4 r8 |
  \tuplet 3/2 {ees'16-.\p\([ ees-. ees-.]} \tuplet 3/2 {ees-.[ d-. c-.]} \tuplet 3/2 {b-.[ c-. b-.]} \tuplet 3/2 {c-.\)[ g-.\( g-.]} \tuplet 3/2 {g-.[ g-. g-.]} \tuplet 3/2 {aes!-.[ bes-. aes-.\)]} |
  \deprecateddim \tuplet 3/2 {g-.\([ g-. g-.]} \tuplet 3/2 {g-.[ aes-. g-.]} \tuplet 3/2 {f-.[ g-. f-.\)]} ees8\! r r |  
  r4 r8 c(\pp d e |
  f fis g) g r r |
  r aes4~ \deprecateddim aes8( g f |
  g) \tuplet 3/2 {r16 ees!\ff\([ f]}   
  \tuplet 3/2 {ges[ ees c\)]} bes'8\( \tuplet 3/2 {a16\)[ ees\( f]} \tuplet 3/2 {ges[ ees c\)]} |
  bes'8\( \tuplet 3/2 {a16\)[ aes\( bes]} \tuplet 3/2 {ces[ aes f\)]} ees8\( \tuplet 3/2 {d!16\)[ aes'\( bes]} \tuplet 3/2 {ces[ aes f\)]} |
  ees8\( \tuplet 3/2 {d!16\)[ ges'!\(\pp aes]} \tuplet 3/2 {bes[ ges f]} \tuplet 3/2 {ees[ ges aes]} \tuplet 3/2 {bes[ ges f]} \tuplet 3/2 {ees[ ges bes\)]} |
  
  %% Bar 30
  \tuplet 3/2 {f\([ aes bes]} \tuplet 3/2 {ces_\markup{\bold\italic "sempre" \dynamic {pp}}[ aes ges]} \tuplet 3/2 {f[ aes ces]} \tuplet 3/2 {f,[ aes bes]} \tuplet 3/2 {ces[ aes ges]} \tuplet 3/2 {f[ aes ces\)]} |
  \tuplet 3/2 {g!\([ bes c!]} \tuplet 3/2 {des[ c bes]} \tuplet 3/2 {aes[ bes g]} \tuplet 3/2 {f[ aes bes]} \tuplet 3/2 {c[ aes g]} \tuplet 3/2 {f[ aes c\)]} |
  \tuplet 3/2 {g\([ bes c]} \tuplet 3/2 {des[ bes aes]} \tuplet 3/2 {g[ bes des]} \tuplet 3/2 {g,[ bes c]} \tuplet 3/2 {des[ bes aes]} \tuplet 3/2 {g[ bes des\)]} |
  \tuplet 3/2 {a\([ c d!]} \tuplet 3/2 {ees[ d c]} \tuplet 3/2 {bes[ c a]} \tuplet 3/2 {g[ bes c]} \tuplet 3/2 {d[ bes a]} \tuplet 3/2 {g[ bes d\)]} |
  \tuplet 3/2 {g,\([ bes d]} \tuplet 3/2 {ees[ bes aes!]} \tuplet 3/2 {g[ bes ees]} \tuplet 3/2 {g,[ c e\)]} \tuplet 3/2 {e,([ g c)]} \tuplet 3/2 {c,([ f aes)]} |  
  \tuplet 3/2 {c,\([ ees! f]} \tuplet 3/2 {ges[ ees des]} \tuplet 3/2 {c[ ees ges]\)} \tuplet 3/2 {bes,[\(^\< d ees\!]} \tuplet 3/2 {f[^\> d c]\!} \tuplet 3/2 {bes[ d f]\)} | 
  \tuplet 3/2 {bes,\([^\< ees f]\!} \tuplet 3/2 {ges[^\> ees bes]\!\)} \tuplet 3/2 {bes[( ees ges])} \tuplet 3/2 {bes,[\(^\<_\markup{\huge\bold\italic "cresc."} f' g\!]} \tuplet 3/2 {aes[^\> f bes,\)]\!} \tuplet 3/2 {bes[( f' aes])} | 
  \tuplet 3/2 {bes,([ g' bes])} \tuplet 3/2 {bes,([ d f])} \tuplet 3/2 {bes,[( e g])} \tuplet 3/2 {bes,\f[( f' aes)]} \tuplet 3/2 {bes,[(\< ees ges)]} \tuplet 3/2 {bes,[( d f])} | 
  \tuplet 3/2 {f8.:16\ff} \tuplet 3/2 {f8.:16} \tuplet 3/2 {bes,8.:16} \deprecateddim \tuplet 3/2 {ees8.:16} \tuplet 3/2 {d8.:16} \tuplet 3/2 {ees8.:16} |
  \undo \omit TupletNumber
 
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
  \tuplet 3/2 {r16 ges'[\( aes]} \tuplet 3/2 {bes[ ges f]} \omit TupletNumber \tuplet 3/2{ees[ ges bes]} \tuplet 3/2 {f[ aes bes]} \tuplet 3/2 {ces[ aes ges]} \tuplet 3/2 {f[ aes ces]\)} |
  \tuplet 3/2 {f,[\( aes bes]} \tuplet 3/2 {ces[ aes ges]} \tuplet 3/2{f[ aes ces]} \tuplet 3/2 {g[ bes c]} \tuplet 3/2 {des[ c bes]} \tuplet 3/2 {aes[ bes g]} |
  f8\) des( c bes4)( g'8) |
  \tuplet 3/2 {r16 aes[\( bes]} \tuplet 3/2 {c[ aes g]} \tuplet 3/2{f[ aes c]} \deprecatedcresc \tuplet 3/2 {g[ bes c]} \tuplet 3/2 {des[ bes aes]} \tuplet 3/2 {g[ bes des]\)} |
  \tuplet 3/2 {g,[\( bes c]} \tuplet 3/2 {des[ bes aes]} \tuplet 3/2{g[ bes des]} \tuplet 3/2 {a[ c d]} \tuplet 3/2 {ees[ d c]} \tuplet 3/2 {bes[ c a]\)} |
  \deprecatedcresc bes2.~ |
  bes8\! r \tuplet 3/2 {r16 bes,16\<\([ c]\!} \tuplet 3/2 {des[\> bes g\!]} \tuplet 3/2 {ees\)[ g' g]} \tuplet 3/2 {g[ g g]} |
  aes2._\markup{\huge\bold\italic "cresc."} |
  r8 \tuplet 3/2 {r16 b[\(^\< c\!]} \tuplet 3/2 {c^\>[ b f]\!} ees8\) \tuplet 3/2 {r16 c^\<\([_\markup{\huge\bold\italic "cresc."} d]\!} \tuplet 3/2 {ees[^\> c aes]\!\)} |
  g16\f[ r32 g a16 r32 a b16 r32 b] c16[ r32 c ees16 r32 ees c16 r32 c] |
  \tuplet 3/2 {b8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {d8.:16} \tuplet 3/2 {ees8.:16} \tuplet 3/2 {ees8.:16} \tuplet 3/2 {ees8.:16} |
  \tuplet 3/2 {d8.:16} \tuplet 3/2 {d8.:16} \tuplet 3/2 {ees8.:16} \tuplet 3/2 {d8.:16} \tuplet 3/2 {d8.:16} \tuplet 3/2 {ees8.:16} |
  \undo \omit TupletNumber
  d16 r r8 r r4 \tuplet 3/2 {r16 aes-.\p( aes-.)} |
  \omit TupletNumber
  \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} \tuplet 3/2 {r16 g-.([ g-.)]} |
  \tuplet 3/2 {r16 aes-.([ aes-.)]} \tuplet 3/2 {r16 bes-.([ bes-.)]} \tuplet 3/2 {r16 ees,-.([ ees-.)]} \tuplet 3/2 {r16 c'-.([ c-.)]} r8 r |
  \undo \omit TupletNumber
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
  c aes g) f4 \tuplet 3/2 {d16( b' d)} |
  d8( b bes a aes g) |
  c( aes g c aes f16 aes) |
  g4( f8 ees8.) d16 ees8 |
  aes'4\accent( g8 f8.) e16 f8 |
  R2.*3 |
  aes,8-.( aes-. aes-.) g4 r8 |
  aes-.( aes-. aes-.) g4 r8 |
  \omit TupletNumber
  \tuplet 3/2 {aes16-.[\( g-. f-.]} \tuplet 3/2 {aes-.[ g-. f-.]} \tuplet 3/2 {aes-.[ g-. f-.]\)} e8 r f( |
  \undo \omit TupletNumber
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