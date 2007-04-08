%Violin 1, 2nd movement

FirstViolinSecondMovement =
{
\override TupletBracket  #'bracket-visibility = ##f
 \relative c' {  
  \key c \minor
  \time 6/8
  R2.*3 |
  aes''4\p( ges8 f8.) e16 f8 |
  aes4( ges8 f) des( f) |
  aes4( ges8 f8.) e16 f8 |
  aes4( ges8 f) aes( des, |
  c4) des8( ees) bes'( c, |
  des4 ees8 f) des( bes) |
  aes4(\< bes8 c des f)\! |
  ees8.(\> d!16 des bes\! aes8) r r |
  R2.*2 |
  aes'4( ges8 f8.) e16 f8 |
  aes4( ges8 f) des( c) |
  b16( d! f aes g8) aes,16( b d f ees8) |
  ees16( des c8 b) \cresc b16( d f aes g8) |
  aes,16( b d f ees8) ees16( des c8 b) |
  b16(\f d f aes g8) aes,16( b d f ees8) |
  
  % Bar 20
  ees16( des) c8( b) c\8 des4\accent |
  e8 fis4\accent \times 2/3 {g16-.\p([ g-. g-.]} \times 2/3 {g16-.[ f-. ees-.]} \times 2/3 {d16-.[ ees-. d-.)]} |
  \override TupletBracket  #'number-visibility = ##f  
  \times 2/3 {c-.([ g'-. g-.]} \times 2/3 {g-.[ g-. g-.]} \times 2/3 {g-.[ g-. g-.]} \times 2/3 {g-.)[ g,-.( g-.]} \times 2/3 {g-.[ f-. ees-.]} \times 2/3 {f-.[ g-. f-.)]} |
  \dim \times 2/3 {ees-.([ ees-. ees-.]} \times 2/3 {ees-.[ f-. ees-.]} \times 2/3 {d-.[ ees-. d-.)]} c8\! r r |
  \revert TupletBracket  #'number-visibility
  r \times 2/3 {r16 d'(\pp[\< ees\!]} \times 2/3 {f\>[ d b\!]} c8) r r |
  r \times 2/3 {r16 d\<([ ees\!]} \times 2/3 {f\>[ d b\!]} c8) \times 2/3 {r16 d([ ees]} \times 2/3 {f[ d b]} |
  c8) \times 2/3 {r16 des([ ees]} \times 2/3 {f[ d b]} \dim c8) c-.( c-. |
  \stemDown
  c-.)\! r r r16 << {<ees, c'>16\ff~ <ees c'>16} { s16 ges'\accent } >>  r16 r8 |
  r16 << {<ees, c'>16~ <ees c'>16} { s16 ges'\accent } >>  r16 r8 r16 <ces, f>( ces')\accent r r8 |
  r16 <ces, f>( ces')\accent r r8 ges4~\pp \times 2/3 {ges16( f ees)} |
  \stemNeutral  
  
  % Bar 30
  d4~ \times 2/3 {d16 d( ees} f4)~ \times 2/3 {f16 f f} |
  f8( e) r aes4~ \times 2/3 {aes16( g f)} |
  e4~ \times 2/3 {e16 e( f} g4~) \times 2/3 {g16 g g} |
  g8( fis) r d4.( |
  ees c'~) |
  c4( ees,8 d) r r |
  \times 2/3 {c8.:16} \override TupletBracket  #'number-visibility = ##f \times 2/3 {c8.:16} \times 2/3 {c8.:16} \cresc \times 2/3 {d8.:16} \times 2/3 {d8.:16} \times 2/3 {d8.:16} |  
  \times 2/3 {e8.:16} \times 2/3 {f8.:16} \times 2/3 {g8.:16} \times 2/3 {aes8.:16\f[} \times 2/3 {a8.:16\<]} \times 2/3 {bes16 bes b} |
  \times 2/3 {c8.:16\ff[} \times 2/3 {c8.:16]} \times 2/3 {c16 bes aes} \dim \times 2/3 {g8.:16} \times 2/3 {f8.:16} \times 2/3 {ees8.:16} 
  ees4\p( f8 \times 2/3 {\stemDown g16)[ g, g] \stemNeutral } \dim \times 2/3 {f8.:16} \times 2/3 {ees8.:16} |
  \revert TupletBracket  #'number-visibility 
  ees4.\pp( f |
  g4) r8 r4 r8 |
  r r f'-.( f-. f-. f-.) |
  f( ees) r c'4( c8-.) |
  c( bes a aes g ges |
  f) d( c bes) g'!( f |
  ees4) ees8-.( ees-. ees-. ees-.) |
  ees( d16 c bes aes g f ees d c bes) |
  bes8( ees) r c''4( c8-.) |
  d8._\markup{\bold\italic "espress."}( c16) bes-.( cis-.) d8.( c16) bes-.( cis-.) |
  
  %% Bar 50
  d8.( cis16-. bes-. a-.) g(\< a bes\! c\> d c\!) |
  c8( bes a g8. f16) ees-.( aes-.) |
  g8.( f16) ees-.( aes-.) g8.( f16-. ees-. d-.) |
  c(\< d ees f\! g\> f)\! f8( ees d |
  ees) r r r \times 2/3 {r16 f\<([ g\!]} \times 2/3 {aes\>[ f d\!]} |
  \override TupletBracket  #'number-visibility = ##f
  ees8) r r r \times 2/3 {r16 f,\<([ g\!]} \times 2/3 {aes\>[ f d\!]} |
  ees8) r r aes4.~ |
  aes r4 r8 |
  r4 r8 r8 \times 2/3 {r16 g'\<([ aes\!]} \times 2/3 {bes\>[ g e\!]} |
  f8) r r r4 r8 |
  R2. |
  \times 2/3 {r16 bes\<([_\markup{\large\bold\italic "cresc."} c\!]} \times 2/3 {d\>[ bes g\!]} d8) r \times 2/3 {r16 g[ g]} \times 2/3 {g[ g g]} |
  \cresc g2.
  \times 2/3 {r16 e\<([ fis\!]} \times 2/3 {gis\>[ e cis\!]} gis8) r \times 2/3 {r16 \cresc e''[ e]} \times 2/3 {e[ e e]} |
  f4.(\< fis)\! |
  \times 2/3 {g16\f[ g, g]} \times 2/3 {g8.:16} \times 2/3 {g8.:16} \times 2/3 {g16[ g g]} \times 2/3 {g-.[ a-. b-.]} \times 2/3 {c-.[ aes-. fis-.]} |
  \times 2/3 {g8.:16} \times 2/3 {g8.:16} \times 2/3 {g8.:16} \times 2/3 {g16[ g g]} \times 2/3 {g-.[ a-. b-.]} \times 2/3 {c-.[ aes-. fis-.]} |
  \times 2/3 {g[ g g]} \times 2/3 {g-.[ a-. b-.]} \times 2/3 {c-.[ aes-. fis-.]} \times 2/3 {g16[ g g]} \times 2/3 {g-.[ a-. b-.]} \times 2/3 {c-.[ aes-. fis-.]} |
  
  \revert TupletBracket  #'number-visibility
  \times 2/3 {g fis,\p-.( g-.)} 
  \override TupletBracket  #'number-visibility = ##f
       \times 2/3 {r fis-.( g-.)} \times 2/3 {r aes-.( g-.)} \times 2/3 {r bes-.( aes-.)} \times 2/3 {r a-.( bes-.)} \times 2/3 {r c-.( bes-.)} |
  \times 2/3 {r a-.( bes-.)} \times 2/3 {r a-.( bes-.)} \times 2/3 {r bes-.( b-.)} \times 2/3 {r b-.( c-.)} \times 2/3 {r c-.( des-.)} \times 2/3 {r des-.( c-.)} |
  
  % Bar 70
  \times 2/3 {r ees-.( des-.)} \times 2/3 {r f-.( ees-.)} \times 2/3 {r ees-.( b-.)} \times 2/3 {r b-.( c-.)} \times 2/3 {r ees-.( d-.)} \times 2/3 {r ees-.( d-.)} |
  \times 2/3 {r f-.(\< f-.)} \times 2/3 {r f-.( f-.)} \times 2/3 {r f-.( f-.)\!} \times 2/3 {r fis-.(\> fis-.)} \times 2/3 {r fis-.( fis-.)} \times 2/3 {r fis-.( fis-.)\!} |
  \times 2/3 {r f!-.(\< f-.)} \times 2/3 {r f-.( f-.)} \times 2/3 {r f-.( f-.)\!} \times 2/3 {r fis-.(\> fis-.)} \times 2/3 {r fis-.( fis-.)} \times 2/3 {r fis-.( fis-.)\!} |
  \times 2/3 {g([ b,\< c\!]} \times 2/3 {d\>[ b g\!)]} \times 2/3 {r aes( g)} \times 2/3 {r g( fis)} r8 r |
  \times 2/3 {r16 f'!(\<[ g\!]} \times 2/3 {aes\>[ f d\!)]} \times 2/3 {r16 d(\<[ ees\!]} \times 2/3 {f\>[ d b\!)]} \times 2/3 {r16 b([ c]} \times 2/3 {d)[ f,( g]} |
  \times 2/3 {aes)[ d,( ees]} \times 2/3 {f)[ b,\(\< c\!] } \times 2/3 {d\>[ b aes\!]\)} \dim aes4( g8)~ |
  g r c'\pp-.( c-. c-. c-.) |
  c( b16 a g f e d c b a g |
  g8) r r a''4( a8-.) |
  a( g fis f e ees |
  d) b( c e16 d c8 b |
  c4) c8-.( c-. c-. c-.) |
  c( bes16 aes g f ees des c bes aes g |
  e'4) r8 f'4( f8-.) |
  g8.( f16) ees-.( fis-.) g8.( f16) ees-.( fis-.) |
  g8.( f!16) ees-.( ees-.) ees( d f d aes' d,) |
  c4( b8 des'8._\markup{\dynamic {pp} \bold\italic "espress."} c16) bes!-.( aes-.) |
  des8.( c16) bes-.( aes-.) des8.( c16 bes aes |
  g f ees des f aes) c,4( b8 |
  c4) r8 r \times 2/3 {r16 d\<([ ees\!]} \times 2/3 {f\>[ d b\!]} |
  
  % Bar 90
  c8) r r r \times 2/3 {r16 d\<([ ees\!]} \times 2/3 {f\>[ d b\!]} |
  c8) \times 2/3 {r16 d\<([_\markup{\large\bold\italic "dim."} ees\!]} \times 2/3 {f\>[ d b\!]} c8) \times 2/3 {r16 des\<(\pp[ ees\!]} \times 2/3 {f\>[ des b\!]} |
  c8-. ees-. g-. c) r r |
  R2. |
  aes4( ges8 f8.) e16 f8 |
  aes4( ges8) f4.~ |
  f( e) |
  \once\override TextScript #'extra-offset = #'(0.0 . -1.0)
  \times 2/3 {c16-.([_\markup{\bold\italic "espress."} bes-. aes-.]} \times 2/3 {c-.[ bes-. aes-.]} \times 2/3 {c-.[ bes-. aes-.])} g4 r8 |
  \times 2/3 {aes16-.([ g-. f-.]} \times 2/3 {aes-.[ g-. f-.]} \times 2/3 {aes-.[ g-. f-.])} e4 r8 |
  \times 2/3 {c16-.([ bes-. aes-.]} \times 2/3 {c-.[ bes-. aes-.]} \times 2/3 {c-.[ bes-. aes-.])} g8 r des'( |
  c) r des( c\< f e\! |
  aes\> g g-.\!) g r c, |
  c r r r4 r8 |
  \revert TupletBracket  #'number-visibility
  \revert TupletBracket  #'bracket-visibility 
  \bar "|."
 }    
}

FirstViolinSecondMovementTiming =
{
 s2.*3^\markup {" " \raise #4.0 \bold\huge "Andante"} |
 s2.*10 \pageBreak
 s2.
}