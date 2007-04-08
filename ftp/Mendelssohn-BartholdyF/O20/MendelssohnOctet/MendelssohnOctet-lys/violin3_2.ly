%Violin 3, 2nd movement

ThirdViolinSecondMovement =
{
\override TupletBracket  #'bracket-visibility = ##f
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
  \times 2/3 {aes16\f([ d, b])} \times 2/3 {aes'([ d, b])} \times 2/3 {g'([ ees c])} \times 2/3 {f([ d aes])} \times 2/3 {f'([ d aes])} \times 2/3 {ees'([ c g])} |
  \override TupletBracket  #'number-visibility = ##f  
  \times 2/3 {f'([ aes f])} \times 2/3 {ees([ aes g])} \times 2/3 {d([ aes' g])} \times 2/3 {g[ c, c]} 
  \revert TupletBracket  #'number-visibility  
  \times 2/3 {c8.:16-.[ } \times 2/3 {c8.:16-.] } |
  
  %% Bar 20
  \times 2/3 {c8.:16[ } \times 2/3 {c8.:16} \times 2/3 {c8.:16] } r4 r8 |
  \override TupletBracket  #'number-visibility = ##f  
  \times 2/3 {g''16-.\(\p[ g-. g-.]} \times 2/3 {g-.[ f-. ees-.]} \times 2/3 {d-.[ ees-. d-.]} \times 2/3 {c-.\)[ g-.\( g-.]} \times 2/3 {g-.[ g-. g-.]} \times 2/3 {g-.[ g-. g-.\)]} |
   \dim \times 2/3 {g8.:16} \times 2/3 {g8.:16} \times 2/3 {g8.:16} g8\! r r |   
   r4 r8 \times 2/3 {c,8.:16\pp} \times 2/3 {c8.:16} \times 2/3 {c8.:16} |
   \times 2/3 {c8.:16[} \times 2/3 {c8.:16]} \times 2/3 {b16([ d f)]} ees8 r r |
   \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} \dim \times 2/3 {c8.:16} \times 2/3 {c8.:16} \times 2/3 {c8.:16} |
   c8 \times 2/3 {r16 ees![\(\ff f]} \times 2/3 {ges[ ees c]\)} bes8\( \times 2/3 {a16[\) ees'\( f]} \times 2/3 {ges[ ees c\)]} |
   bes8\( \times 2/3 {a16\)[ aes'!\( bes]} \times 2/3 {ces[ aes f\)] } ees8\( \times 2/3 {d!16\)[ aes'\( bes]} \times 2/3 {ces[ aes f\)]} |
   ees8( d!16) r r8 bes'4.\pp( |
   aes2. |
   g4) r8 c4.( |
   bes2. |
   a4) r8 d4.( |
   des4.) c4.~ |
   \revert TupletBracket  #'number-visibility 
   c4. \times 2/3 {bes8.:16-.} \times 2/3 {bes8.:16-.} \times 2/3 {bes8.:16-.} |
   \times 2/3 {bes8.:16} 
   \override TupletBracket  #'number-visibility = ##f  
   \times 2/3 {bes8.:16} \times 2/3 {bes8.:16} \cresc \times 2/3 {bes8.:16} \times 2/3 {bes8.:16} \times 2/3 {bes8.:16} |
   \times 2/3 {bes8.:16} \times 2/3 {bes8.:16} \times 2/3 {bes8.:16} \times 2/3 {bes8.:16\f[} \times 2/3 {bes8.:16]\<} \times 2/3 {bes16[ bes b]} |
   \times 2/3 {d[\ff d d]} \times 2/3 {d[ d ees]} \times 2/3 {f[ f f]} \dim \times 2/3 {bes,8.:16} \times 2/3 {bes8.:16} \times 2/3 {bes8.:16} |
   c4.\(\p \times 2/3 {bes16\)[ bes, bes]} \dim \times 2/3 {aes8.:16[} \times 2/3 {bes8.:16]} |
   
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
   c'4.( \cresc bes)~ |
   
   %% Bar 60
   bes( c4) r8 |
   r \times 2/3 {r16 bes[\<\(_\markup{\large\bold\italic "cresc."} c\!]} \times 2/3 {d\>[ bes g]\!} d8\) \times 2/3 {r16 bes'[ bes]} \times 2/3 {bes[ bes bes]} |
   \cresc bes2. |
   r8 \times 2/3 {r16 fes[\(\< ges\!]} \times 2/3 {aes!\>[ fes des]\!} aes!8\) \times 2/3 {r16 \cresc aes''[ aes] } \times 2/3 {aes[ aes aes]} |
   b4.(\< c)\! |
   \times 2/3 {g16\f[ g, g]} \times 2/3 {g8.:16} \times 2/3 {g8.:16} \times 2/3 {g16[ g g]} \times 2/3 {g-.[ a-. b-.]} \times 2/3 {c-.[ aes!-. fis-.]} |
   \times 2/3 {g8.:16} \times 2/3 {g8.:16} \times 2/3 {g8.:16} \times 2/3 {g16[ g g]} \times 2/3 {g-.[ a-. b-.]} \times 2/3 {c-.[ aes!-. fis-.]} |
   \times 2/3 {g[ g g]} \times 2/3 {g-.[ a-. b-.]} \times 2/3 {c-.[ aes!-. fis-.]} \times 2/3 {g[ g g]} \times 2/3 {g-.[ a-. b-.]} \times 2/3 {c-.[ aes!-. fis-.]} |
   \times 2/3 {g[ b,-.(\p b-.)]} \times 2/3 {r b-.( b-.)} \times 2/3 {r b-.( b-.)} \times 2/3 {r c-.( c-.)} \times 2/3 {r aes'-.( aes-.)} \times 2/3 {r d,-.( d-.)} |
   \times 2/3 {r ees-.( ees-.)} \times 2/3 {r ees-.( ees-.)} \times 2/3 {r des-.( des-.)} \times 2/3 {r c-.( c-.)} \times 2/3 {r c-.( c-.)} \times 2/3 {r c-.( c-.)} |
   \times 2/3 {r aes'-.( aes-.)} \times 2/3 {r ees-.( ees-.)} \times 2/3 {r ees-.( ees-.)} \times 2/3 {r ees-.( ees-.)} \times 2/3 {r c'-.( c-.)} \times 2/3 {r c-.( c-.)} |
   \times 2/3 {r c-.(\< b-.)} \times 2/3 {r c-.( b-.)} \times 2/3 {r c-.( b-.)\!} \times 2/3 {r d-.(\> c-.)} \times 2/3 {r d-.( c-.)} \times 2/3 {r d-.( c-.)\!} |
   \times 2/3 {r c-.(\< b-.)} \times 2/3 {r c-.( b-.)} \times 2/3 {r c-.( b-.)\!} \times 2/3 {r d-.(\> c-.)} \times 2/3 {r d-.( c-.)} \times 2/3 {r d-.( c-.)\!} |
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
   aes\( \times 2/3 {bes16-.\)[ aes\(-. g-.]} \times 2/3 {bes-.[ aes-. g-.]} \times 2/3 {bes-.[ aes-. g-.\)]} |
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