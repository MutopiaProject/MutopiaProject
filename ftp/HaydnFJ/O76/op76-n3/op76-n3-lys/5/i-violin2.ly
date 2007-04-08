\version "2.6.0"
violinIIFirstMov =  \relative a {
  \key d \major
  \clef violin

  \override Staff.Hairpin   #'minimum-length = #5

  r8
  | <a fis'>-.\p r <a fis'>-. 
  << { \slurUp <a g'>4.( ~ \slurNeutral } { s4-\> s8-\! } >>
  | <a fis'>8) g'( a) g4\fz( a8)
  | b4. e, ~
  | e8 r gis a( gis g)
  | <a, fis'>-.\p r <a fis'>-.
  << { \slurUp <a g'>4.( ~ \slurNeutral } { s4-\> s8-\! } >>
  | <a fis'>8) g'( a) g4\fz( a8)
  | b4. eis,
  | fis8.( g16 e!8) fis-. r r
  | <a, fis'>-.\p r <a fis'>-. << { <a g'>4. } { s4-\> s8-\! } >>

  % 10
  | fis'8( g a) g4(\fz a8)
  | b4. e, ~
  | e8 r gis a( gis g)
  | <a, fis'>-.\p r <a fis'>-. 
  << { \slurUp <a g'>4.( ~ \slurNeutral } { s4-\> s8-\! } >>
  | <a fis'>8) g'( a) g4\fz( a8)
  | b2. ~
  | b8 fis16( d) e( cis) d4 r8
  | c4 c8 b r r
  | a4 a8 g r b'
  | e,( a) a b4.(

  % 20
  | e,8) r gis a( gis g)
  | <a, fis'>-.\p r <a fis'>-. 
  << { \slurUp <a g'>4.( ~ } { s4-\> s8-\! } >>
  | <a fis'>8.)( \slurNeutral g'16 a8) g4\fz( a8)
  | b4. e, ~
  | e8 r gis a( gis g)
  | fis( e fis) << { \slurUp <a, g'>4.( ~ \slurNeutral } { s4-\> s8-\! } >>
  | <a fis'>8) g'8( a) g4(\fz d8)
  | fis4.( g)
  | fis8 r fis[-. fis]-. r r

  \bar "||"
  \key d \minor

  | R2.*2

  % 31
  | c4. d8.[( e32 f] g8)
  | r8 e( a) r f( bes)
  | r bes bes a a a
  | d( bes) g-. a16( bes c d e f)
  | e8 r bes a16( bes c d e f)
  | e8 r bes'[-. a]-. r c,,
  | f8.( e16 f8) g( e c)
  | a'8.( g16 a8) bes( g e)
  | c'( a fis) d4 g8 ~

  % 40
  | g16 fis( a bes c a) d,4 bes'8 ~
  | bes16( a c d es c) f,!8[\f r16 \lbcOne d-| f-| bes]-|
  | d32( c) bes-. a-. g( f) es-. d-. c( bes) a-. bes-. 
  c8[ r16 \lbcOne f-| a-| c]-|
  | es32( d)c-. bes-. a( g) f-. es-. d( c) bes-. a-.
  bes8[ r16 \lbcOne d-| f-| bes]-|
  | d32( c) bes-. a-. g( f) es-. d-. c( bes) a-. bes-. 
  c8[ r16 \lbcOne f-| a-| c]-|
  | es32( d)c-. bes-. a( g) f-. es-. d( c) bes-. a-.
  bes8[ r16 \lbcOne bes'-| d-| f]-|
  | <es, bes' g'>8-| <es bes' g'>-| r r4 r8
  | c'8.(\p d16 c8) g'( f es)
  | d r r c r r
  | r4 r8 r4 f,8\f

  % 50
  | d'8.( cis16 d8) e8(\(-\> cis16)-\! a( c e)\)
  | f8( a,) a bes4.
  | c8 r r r16 g'32( a) bes-. a-. g-. f-. e-. d-. c-. bes-.
  | a8 r r r16 e'32( f) g-. f-. e-. d-. cis-. bes!-. a-. g-.
  | f16-| f32( g) a g f e d c bes a gis8 d' d
  | cis r e[( f)] r a[(
  | g)] r cis[( d)] r f(
  | e) a,-. a-. a-. r r

  \bar "||"
  \key d \major

  | <a, fis'>-.\p r <a fis'>-. 
  << { \slurUp <a g'>4.( ~ \slurNeutral } { s4-\> s8-\! } >>
  | <a fis'>8) g'( a) g4\fz( a8)

  % 60
  | b4. e, ~
  | e8 r gis a( gis g)
  | <a, fis'>8-. r r <a g'>4.\fz
  | fis'16-. fis( g) g( a) a( g4)\fz a8
  | b2. ~
  | b8 fis16( d) e( cis) d4 r8
  | c4 c8 b r r
  | a4 a8 g r b'
  | e,( a) a b4.(
  | e,8) r gis a( gis g)

  % 70
  | <a, fis'>-.\p r <a fis'>-. 
  << { \slurUp <a g'>4.( ~ \slurNeutral } { s4-\> s8-\! } >>
  | <a fis'>8) g'( a) g4\fz( d8)
  | fis4.( g)
  | fis( gis,)
  | g!2.
  | g'4.\fermata ~ g4\fermata a8

  \bar "||"

  | d8.( cis16 d8) e8( cis a)
  | fis' r r r r a,
  | d8.( cis16 d8) e8( cis a)
  | fis' r r r r a,

  % 80
  | d8.( cis16 d8) e8( cis a)
  | fis' r r r4 r8
  | R2.*2
  | r4 r8 r r e,
  | a8.( gis16 a8) b( gis e)
  | cis'8.( b16 cis8) d( b gis)
  | e'( cis a) g'!( e cis)
  | d16 a fis a fis d ~ d( cis) e4 ~
  | e16 a, b cis d fis ~ fis( e) g4 ~

  % 90
  | g16 fis a b c a fis e dis b dis fis
  | g4 r8 r4 r8
  | R2.
  | d'4 g8 fis16 g a b c fis,
  | g4 r8 r c,( a)
  | b4 r8 r e( ais,)
  | b4 r8 r g'8( e)
  | d8.( cis16 d8) e( cis a)
  | a'4 r8 r r a,
  | d8.( cis16 d8) e( cis a)

  % 100
  | a'16 b a g fis e d4.
  | cis16 d e fis g fis g8( e) e-.
  | d8.( cis16 d8) e( cis a)
  | fis' r r r4 r8
  | r4 r8 fis( g e)
  | fis( d e) cis( d b)
  | e,4( fis8) cis( d e)
  | fis16-. a-. \repeat unfold 5 { fis-. a-. }
  | e a e a e a g a g a g a
  | \repeat unfold 6 { fis a }

  % 110
  | e a e a e a g a g a g a
  | \repeat unfold 6 { fis a }
  | g8-| g'-| r g,-| e'-| r
  | d,-| fis'-| r cis,-| e'-| r
  | d,-| fis'-| r r4 r8
  | g8. fis16-. e-. d-. cis-. b-. a-. g-. fis-. e-.
  | d8-| fis'-| r r4 r8
  | g8. fis16-. e-. d-. cis-. b-. a-. g-. fis-. e-.
  | d8-| a''-| r r4 r8
  | d,,8-| d'-| r g,-| e'-| r

  % 120
  | d,-| fis'-| r cis,-| e'-| r
  | d'8. cis16-. b-. a-. g-. fis-. e-. d-. cis-. b-.
  | a8-| e''-| r r4 r8
  | d8. cis16-. b-. a-. g-. fis-. e-. d-. cis-. b-.
  | a8-| e''-| r r4 r8
  | a,,,-| d-| fis-| a-| d-| fis-|
  | a4 r8 <d,, a' fis'>4 r8
  | <d a' fis'>4 r8 r4 r8    

  \bar "|."
}
