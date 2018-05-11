%Violin 3, 2nd movement
\version "2.19.80"

ThirdViolinSecondMovement =
{
\override TupletBracket.bracket-visibility = ##f
 \relative c' {  
  \key c \minor
  \time 6/8
  R2.*3 |
  f4\p( bes8 aes8.) g16 aes8 |
  bes4( c8 des) r r |
  f,4( ees8 des4.)~ |
  des4.~ des8 r r |
  r ees-.( des-. c-.) r r |
  r aes'( ges f) r r |
  r des-.(\< des-. ees f aes)\! |
  bes\>( g ees)\! ees r r |
  aes4( g8 aes8.) g16 aes8 |
  g4.( aes~) |
  aes2. |
  des4( aes8) aes r r |
  R2.*3 |
  \tuplet 3/2 {aes16\f([ d, b])} \tuplet 3/2 {aes'([ d, b])} \tuplet 3/2 {g'([ ees c])} \tuplet 3/2 {f([ d aes])} \tuplet 3/2 {f'([ d aes])} \tuplet 3/2 {ees'([ c g])} |
  \omit TupletNumber  
  \tuplet 3/2 {f'([ aes f])} \tuplet 3/2 {ees([ aes g])} \tuplet 3/2 {d([ aes' g])} \tuplet 3/2 {g[ c, c]} 
  \undo \omit TupletNumber
  
  \tuplet 3/2 {c8.:16-.[ } \tuplet 3/2 {c8.:16-.] } |
  
  %% Bar 20
  \tuplet 3/2 {c8.:16[ } \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16] } r4 r8 |
  \omit TupletNumber  
  \tuplet 3/2 {g''16-.\(\p[ g-. g-.]} \tuplet 3/2 {g-.[ f-. ees-.]} \tuplet 3/2 {d-.[ ees-. d-.]} \tuplet 3/2 {c-.\)[ g-.\( g-.]} \tuplet 3/2 {g-.[ g-. g-.]} \tuplet 3/2 {g-.[ g-. g-.\)]} |
   \deprecateddim \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} g8\! r r |   
   r4 r8 \tuplet 3/2 {c,8.:16\pp} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} |
   \tuplet 3/2 {c8.:16[} \tuplet 3/2 {c8.:16]} \tuplet 3/2 {b16([ d f)]} ees8 r r |
   \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \deprecateddim \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} |
   c8 \tuplet 3/2 {r16 ees![\(\ff f]} \tuplet 3/2 {ges[ ees c]\)} bes8\( \tuplet 3/2 {a16[\) ees'\( f]} \tuplet 3/2 {ges[ ees c\)]} |
   bes8\( \tuplet 3/2 {a16\)[ aes'!\( bes]} \tuplet 3/2 {ces[ aes f\)] } ees8\( \tuplet 3/2 {d!16\)[ aes'\( bes]} \tuplet 3/2 {ces[ aes f\)]} |
   ees8( d!16) r r8 bes'4.\pp( |
   aes2. |
   g4) r8 c4.( |
   bes2. |
   a4) r8 d4.( |
   des4.) c4.~ |
   \undo \omit TupletNumber
 
   c4. \tuplet 3/2 {bes8.:16-.} \tuplet 3/2 {bes8.:16-.} \tuplet 3/2 {bes8.:16-.} |
   \tuplet 3/2 {bes8.:16} 
   \omit TupletNumber  
   \tuplet 3/2 {bes8.:16} \tuplet 3/2 {bes8.:16} \deprecatedcresc \tuplet 3/2 {bes8.:16} \tuplet 3/2 {bes8.:16} \tuplet 3/2 {bes8.:16} |
   \tuplet 3/2 {bes8.:16} \tuplet 3/2 {bes8.:16} \tuplet 3/2 {bes8.:16} \tuplet 3/2 {bes8.:16\f[} \tuplet 3/2 {bes8.:16]\<} \tuplet 3/2 {bes16[ bes b]} |
   \tuplet 3/2 {d[\ff d d]} \tuplet 3/2 {d[ d ees]} \tuplet 3/2 {f[ f f]} \deprecateddim \tuplet 3/2 {bes,8.:16} \tuplet 3/2 {bes8.:16} \tuplet 3/2 {bes8.:16} |
   c4.\(\p \tuplet 3/2 {bes16\)[ bes, bes]} \deprecateddim \tuplet 3/2 {aes8.:16[} \tuplet 3/2 {bes8.:16]} |
   
   %% Bar 40
   ces4.(\pp <ces d> |
   <bes ees>4) r8 r4 r8 |
   aes''4( aes8-. aes-. aes-. aes-.) |
   aes8( g16 f ees d c4.) |
   r4 r8 r bes( c |
   d) aes4~ aes8( g aes) |
   g16( g, aes bes c d ees f g aes bes c) |
   aes'4( aes8-. aes-. aes-. aes-.) |
   aes( g16 f ees d) c8( f16 e f ees |
   d4) d16-.( d-.) d4 d16-.( d-.) |
   d4.( bes) |
   bes4( c8 g4) g16-.( g-.) |
   g4 g16-.( g-.) g4. |
   aes4.( g4) f8( |
   ees d des c ces bes) |
   R2.
   ees'4.( ces)~ |
   ces( bes4) r8 |
   f( e ees d des c) |
   c'4.( \deprecatedcresc bes)~ |
   
   %% Bar 60
   bes( c4) r8 |
   r \tuplet 3/2 {r16 bes[\<\(_\markup{\large\bold\italic "cresc."} c\!]} \tuplet 3/2 {d\>[ bes g]\!} d8\) \tuplet 3/2 {r16 bes'[ bes]} \tuplet 3/2 {bes[ bes bes]} |
   \deprecatedcresc bes2. |
   r8 \tuplet 3/2 {r16 fes[\(\< ges\!]} \tuplet 3/2 {aes!\>[ fes des]\!} aes!8\) \tuplet 3/2 {r16 \deprecatedcresc aes''[ aes] } \tuplet 3/2 {aes[ aes aes]} |
   b4.(\< c)\! |
   \tuplet 3/2 {g16\f[ g, g]} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g16[ g g]} \tuplet 3/2 {g-.[ a-. b-.]} \tuplet 3/2 {c-.[ aes!-. fis-.]} |
   \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g16[ g g]} \tuplet 3/2 {g-.[ a-. b-.]} \tuplet 3/2 {c-.[ aes!-. fis-.]} |
   \tuplet 3/2 {g[ g g]} \tuplet 3/2 {g-.[ a-. b-.]} \tuplet 3/2 {c-.[ aes!-. fis-.]} \tuplet 3/2 {g[ g g]} \tuplet 3/2 {g-.[ a-. b-.]} \tuplet 3/2 {c-.[ aes!-. fis-.]} |
   \tuplet 3/2 {g[ b,-.(\p b-.)]} \tuplet 3/2 {r b-.( b-.)} \tuplet 3/2 {r b-.( b-.)} \tuplet 3/2 {r c-.( c-.)} \tuplet 3/2 {r aes'-.( aes-.)} \tuplet 3/2 {r d,-.( d-.)} |
   \tuplet 3/2 {r ees-.( ees-.)} \tuplet 3/2 {r ees-.( ees-.)} \tuplet 3/2 {r des-.( des-.)} \tuplet 3/2 {r c-.( c-.)} \tuplet 3/2 {r c-.( c-.)} \tuplet 3/2 {r c-.( c-.)} |
   \tuplet 3/2 {r aes'-.( aes-.)} \tuplet 3/2 {r ees-.( ees-.)} \tuplet 3/2 {r ees-.( ees-.)} \tuplet 3/2 {r ees-.( ees-.)} \tuplet 3/2 {r c'-.( c-.)} \tuplet 3/2 {r c-.( c-.)} |
   \tuplet 3/2 {r c-.(\< b-.)} \tuplet 3/2 {r c-.( b-.)} \tuplet 3/2 {r c-.( b-.)\!} \tuplet 3/2 {r d-.(\> c-.)} \tuplet 3/2 {r d-.( c-.)} \tuplet 3/2 {r d-.( c-.)\!} |
   \tuplet 3/2 {r c-.(\< b-.)} \tuplet 3/2 {r c-.( b-.)} \tuplet 3/2 {r c-.( b-.)\!} \tuplet 3/2 {r d-.(\> c-.)} \tuplet 3/2 {r d-.( c-.)} \tuplet 3/2 {r d-.( c-.)\!} |
   b16 r r8 r r4 r8 |
   R2.*3 |
   f'4(\pp f8-. f-. f-. f-.) |
   f( e16 d c b a4.) |
   r4 r8 r g( a |
   b) f( g a g f |
   ees!4.) r4 r8 |
   des'4( des8-. des-. des-. des-.) |
   des( c16 bes aes g f8) r r |
   g4 g16-.( g-.) g4 g16-.( g-.) |
   g4. r4 r8 |
   r4 r8 bes8. bes16-.( aes-. aes-.) |
   bes8. bes16-.( aes-. aes-.) bes8( des4) |
   R2.*6 |
   aes2. |
   aes4. aes~ |
   aes\( \tuplet 3/2 {bes16-.\)[ aes\(-. g-.]} \tuplet 3/2 {bes-.[ aes-. g-.]} \tuplet 3/2 {bes-.[ aes-. g-.\)]} |
   f16 r r8 r r4 r8 |
   R2.*5 |
   \bar "|."
 }
}

ThirdViolinSecondMovementTiming =
{
 s2.*3^\markup {" " \raise #4.0 \bold\huge "Andante"} |
 s2.*72 \pageBreak
}