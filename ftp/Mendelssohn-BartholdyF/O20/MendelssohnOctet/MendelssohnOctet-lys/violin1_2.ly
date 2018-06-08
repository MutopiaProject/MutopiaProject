%Violin 1, 2nd movement
\version "2.19.80"

FirstViolinSecondMovement =
{
\override TupletBracket.bracket-visibility = ##f
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
  ees16( des c8 b) \deprecatedcresc b16( d f aes g8) |
  aes,16( b d f ees8) ees16( des c8 b) |
  b16(\f d f aes g8) aes,16( b d f ees8) |
  
  % Bar 20
  ees16( des) c8( b) c des4\accent |
  e8 fis4\accent \tuplet 3/2 {g16-.\p([ g-. g-.]} \tuplet 3/2 {g16-.[ f-. ees-.]} \tuplet 3/2 {d16-.[ ees-. d-.)]} |
  \omit TupletNumber 
  \tuplet 3/2 {c-.([ g'-. g-.]} \tuplet 3/2 {g-.[ g-. g-.]} \tuplet 3/2 {g-.[ g-. g-.]} \tuplet 3/2 {g-.)[ g,-.( g-.]} \tuplet 3/2 {g-.[ f-. ees-.]} \tuplet 3/2 {f-.[ g-. f-.)]} |
  \deprecateddim \tuplet 3/2 {ees-.([ ees-. ees-.]} \tuplet 3/2 {ees-.[ f-. ees-.]} \tuplet 3/2 {d-.[ ees-. d-.)]} c8\! r r |
  \undo \omit TupletNumber

  r \tuplet 3/2 {r16\pp d'([\< ees\!]} \tuplet 3/2 {f\>[ d b\!]} c8) r r |
  r \tuplet 3/2 {r16 d\<([ ees\!]} \tuplet 3/2 {f\>[ d b\!]} c8) \tuplet 3/2 {r16 d([ ees]} \tuplet 3/2 {f[ d b]} |
  c8) \tuplet 3/2 {r16 des([ ees]} \tuplet 3/2 {f[ d b]} \deprecateddim c8) c-.( c-. |
  \stemDown
  c-.)\! r r r16 << {<ees, c'>16\ff~ <ees c'>16} { s16 ges'\accent } >>  r16 r8 |
  r16 << {<ees, c'>16~ <ees c'>16} { s16 ges'\accent } >>  r16 r8 r16 <ces, f>( ces')\accent r r8 |
  r16 <ces, f>( ces')\accent r r8 ges4~\pp \tuplet 3/2 {ges16( f ees)} |
  \stemNeutral  
  
  % Bar 30
  d4~ \tuplet 3/2 {d16 d( ees} f4)~ \tuplet 3/2 {f16 f f} |
  f8( e) r aes4~ \tuplet 3/2 {aes16( g f)} |
  e4~ \tuplet 3/2 {e16 e( f} g4~) \tuplet 3/2 {g16 g g} |
  g8( fis) r d4.( |
  ees c'~) |
  c4( ees,8 d) r r |
  \tuplet 3/2 {c8.:16} \omit TupletNumber \tuplet 3/2 {c8.:16} \tuplet 3/2 {c8.:16} \deprecatedcresc \tuplet 3/2 {d8.:16} \tuplet 3/2 {d8.:16} \tuplet 3/2 {d8.:16} |  
  \tuplet 3/2 {e8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {aes8.:16\f[} \tuplet 3/2 {a8.:16\<]} \tuplet 3/2 {bes16 bes b} |
  \tuplet 3/2 {c8.:16\ff[} \tuplet 3/2 {c8.:16]} \tuplet 3/2 {c16 bes aes} \deprecateddim \tuplet 3/2 {g8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {ees8.:16} 
  ees4\p( f8 \tuplet 3/2 {\stemDown g16)[ g, g] \stemNeutral } \deprecateddim \tuplet 3/2 {f8.:16} \tuplet 3/2 {ees8.:16} |
  \undo \omit TupletNumber
 
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
  ees) r r r \tuplet 3/2 {r16 f\<([ g\!]} \tuplet 3/2 {aes\>[ f d\!]} |
  \omit TupletNumber
  ees8) r r r \tuplet 3/2 {r16 f,\<([ g\!]} \tuplet 3/2 {aes\>[ f d\!]} |
  ees8) r r aes4.~ |
  aes r4 r8 |
  r4 r8 r8 \tuplet 3/2 {r16 g'\<([ aes\!]} \tuplet 3/2 {bes\>[ g e\!]} |
  f8) r r r4 r8 |
  R2. |
  \tuplet 3/2 {r16 bes\<([_\markup{\large\bold\italic "cresc."} c\!]} \tuplet 3/2 {d\>[ bes g\!]} d8) r \tuplet 3/2 {r16 g[ g]} \tuplet 3/2 {g[ g g]} |
  \deprecatedcresc g2.
  \tuplet 3/2 {r16 e\<([ fis\!]} \tuplet 3/2 {gis\>[ e cis\!]} gis8) r \tuplet 3/2 {r16 \deprecatedcresc e''[ e]} \tuplet 3/2 {e[ e e]} |
  f4.(\< fis)\! |
  \tuplet 3/2 {g16\f[ g, g]} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g16[ g g]} \tuplet 3/2 {g-.[ a-. b-.]} \tuplet 3/2 {c-.[ aes-. fis-.]} |
  \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g8.:16} \tuplet 3/2 {g16[ g g]} \tuplet 3/2 {g-.[ a-. b-.]} \tuplet 3/2 {c-.[ aes-. fis-.]} |
  \tuplet 3/2 {g[ g g]} \tuplet 3/2 {g-.[ a-. b-.]} \tuplet 3/2 {c-.[ aes-. fis-.]} \tuplet 3/2 {g16[ g g]} \tuplet 3/2 {g-.[ a-. b-.]} \tuplet 3/2 {c-.[ aes-. fis-.]} |
  
  \undo \omit TupletNumber

  \tuplet 3/2 {g fis,\p-.( g-.)} 
  \omit TupletNumber \tuplet 3/2 {r fis-.( g-.)} \tuplet 3/2 {r aes-.( g-.)} \tuplet 3/2 {r bes-.( aes-.)} \tuplet 3/2 {r a-.( bes-.)} \tuplet 3/2 {r c-.( bes-.)} |
  \tuplet 3/2 {r a-.( bes-.)} \tuplet 3/2 {r a-.( bes-.)} \tuplet 3/2 {r bes-.( b-.)} \tuplet 3/2 {r b-.( c-.)} \tuplet 3/2 {r c-.( des-.)} \tuplet 3/2 {r des-.( c-.)} |
  
  % Bar 70
  \tuplet 3/2 {r ees-.( des-.)} \tuplet 3/2 {r f-.( ees-.)} \tuplet 3/2 {r ees-.( b-.)} \tuplet 3/2 {r b-.( c-.)} \tuplet 3/2 {r ees-.( d-.)} \tuplet 3/2 {r ees-.( d-.)} |
  \tuplet 3/2 {r f-.(\< f-.)} \tuplet 3/2 {r f-.( f-.)} \tuplet 3/2 {r f-.( f-.)\!} \tuplet 3/2 {r fis-.(\> fis-.)} \tuplet 3/2 {r fis-.( fis-.)} \tuplet 3/2 {r fis-.( fis-.)\!} |
  \tuplet 3/2 {r f!-.(\< f-.)} \tuplet 3/2 {r f-.( f-.)} \tuplet 3/2 {r f-.( f-.)\!} \tuplet 3/2 {r fis-.(\> fis-.)} \tuplet 3/2 {r fis-.( fis-.)} \tuplet 3/2 {r fis-.( fis-.)\!} |
  \tuplet 3/2 {g([ b,\< c\!]} \tuplet 3/2 {d\>[ b g\!)]} \tuplet 3/2 {r aes( g)} \tuplet 3/2 {r g( fis)} r8 r |
  \tuplet 3/2 {r16 f'!(\<[ g\!]} \tuplet 3/2 {aes\>[ f d\!)]} \tuplet 3/2 {r16 d(\<[ ees\!]} \tuplet 3/2 {f\>[ d b\!)]} \tuplet 3/2 {r16 b([ c]} \tuplet 3/2 {d)[ f,( g]} |
  \tuplet 3/2 {aes)[ d,( ees]} \tuplet 3/2 {f)[ b,\(\< c\!] } \tuplet 3/2 {d\>[ b aes\!]\)} \deprecateddim aes4( g8)~ |
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
  c4) r8 r \tuplet 3/2 {r16 d\<([ ees\!]} \tuplet 3/2 {f\>[ d b\!]} |
  
  % Bar 90
  c8) r r r \tuplet 3/2 {r16 d\<([ ees\!]} \tuplet 3/2 {f\>[ d b\!]} |
  c8) \tuplet 3/2 {r16 d\<([_\markup{\large\bold\italic "dim."} ees\!]} \tuplet 3/2 {f\>[ d b\!]} c8) \tuplet 3/2 {r16\pp des\<([ ees\!]} \tuplet 3/2 {f\>[ des b\!]} |
  c8-. ees-. g-. c) r r |
  R2. |
  aes4( ges8 f8.) e16 f8 |
  aes4( ges8) f4.~ |
  f( e) |
  \once\override TextScript.extra-offset = #'(0.0 . -1.0)
  \tuplet 3/2 {c16-.([_\markup{\bold\italic "espress."} bes-. aes-.]} \tuplet 3/2 {c-.[ bes-. aes-.]} \tuplet 3/2 {c-.[ bes-. aes-.])} g4 r8 |
  \tuplet 3/2 {aes16-.([ g-. f-.]} \tuplet 3/2 {aes-.[ g-. f-.]} \tuplet 3/2 {aes-.[ g-. f-.])} e4 r8 |
  \tuplet 3/2 {c16-.([ bes-. aes-.]} \tuplet 3/2 {c-.[ bes-. aes-.]} \tuplet 3/2 {c-.[ bes-. aes-.])} g8 r des'( |
  c) r des( c\< f e\! |
  aes\> g g-.\!) g r c, |
  c r r r4 r8 |
  \undo \omit TupletNumber

  \revert TupletBracket.bracket-visibility 
  \bar "|."
 }    
}

FirstViolinSecondMovementTiming =
{
 s2.*3^\markup {" " \raise #4.0 \bold\huge "Andante"} |
 s2.*10 \pageBreak
 s2.
}