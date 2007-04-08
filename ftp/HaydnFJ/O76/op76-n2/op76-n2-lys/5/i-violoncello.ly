\version "2.6.0"
celloFirstMov =  \relative d {
  \key d \major
  \clef bass

  \override Staff.Hairpin   #'minimum-length = #5

  r8
  | d-.\p r d-. << { d4. ~ } { s4-\> s8-\! } >>
  | d8 cis( c) b\fz b'( a)
  | g4. ~ g4 gis8
  | a r e[-. a,]-. r r
  | d,-.\p r d'-. << { d4. ~ } { s4-\> s8-\! } >>
  | d8 cis( c) b\fz b'( a)
  | g4.( gis)
  | a4 a,8 d-. r r
  | d-.\p r d-. << { d4. ~ } { s4-\> s8-\! } >>

  % 10
  | d8 cis( c) b\fz b'( a)
  | g4. ~ g4 gis8
  | a r e[-. a,]-. r r
  | d,-.\p r d'-. << { d4. ~ } { s4-\> s8-\! } >>
  | d8 cis( c) b\fz b'( a)
  | g4.( g,)
  | fis4 fis8 b4 r8
  | fis'4 fis8 g r r
  | dis4 dis8 e4( d8)
  | cis4( d8) g4( gis8)

  % 20
  | a8 r e[-. a,]-. r r
  | d,-. r d'-. << { d4. ~ } { s4-\> s8-\! } >>
  | d8 cis( c) b\fz b'( a)
  | g4. ~ g4 gis8
  | a8 r e[-. a,]-. r r
  | d,-. r d'-. << { d4. ~ } { s4-\> s8-\! } >>
  | d8 cis( c) b4\fz( bes8)
  | a2.
  | d8 r d,[-. d-.] r a'

  \bar "||"
  \key d \minor

  | d8.( cis16 d8) e( cis a)

  % 30
  | f'!8.( e16 f8) g( e c!)
  | a'8.( g16 a8) bes( g e)
  | c'( a f) d'( bes g)
  | e4. f4( d8)
  | bes( g) c-. f,4 r8
  | c' r c[-. f-.] r r
  | c r c'[-. f-.] r r
  | R2.*2
  | r4 r8 g,4.(

  % 40
  | d) g(
  | f!) bes,32\f-. d-. \repeat unfold 11 { bes-. d-. }
  \repeat unfold 6 { a-. f'-. }
  | \repeat unfold 6 { a, f' } \repeat unfold 12 { bes, f' }
  \repeat unfold 12 { a, f' }
  \repeat unfold 6 { as, f' }
  | g,8-| es-| r r4 r8
  | es''8.(\p f16 es8) c( d es)
  | f r r f, r r
  | r r bes\f ~ bes16 a32( bes) c-. bes-. a-. g-. f-. es-. d-. c-.

  % 50
  | bes8 r d' ~ d16 cis32( d) e-. d-. cis-. bes!-. a-. g-. f-. e-.
  | d8 r r r4 r8
  | r4 f'8 e4. ~
  | e8 d4 ~ d8 cis4
  | d16-| f,32( g) a-. g-. f-. e-. d-. c!-. bes-. a-. gis4.
  | a2. ~
  | a ~
  | a8 a-. a-. a-. r r

  \bar "||"
  \key d \major

  | d,-.\p r d'-. << { d4. ~ } { s4-\> s8-\! } >>
  | d8 cis( c) b\fz b'( a)

  % 60
  | g4. ~ g4 gis8
  | a r e[-. a,]-. r r
  | d,-. r r d'4.\fz ~
  | d16 d( cis) cis( c) c( b8)\fz b'( a)
  | g4.( g,)
  | fis4 fis8 b4 r8
  | fis'4 fis8 g r r
  | dis4 dis8 e4( d8)
  | cis4( d8) g4( gis8)
  | a r e[-. a,-.] r r

  % 70
  | d,-. r d'-. << { d4. ~ } { s4-\> s8-\! } >>
  | d8 cis( c) b4(\fz bes8)
  | a2.
  | b!
  | a ~
  | a4.\fermata ~ a4\fermata r8

  \bar "||"

  | R2.*2
  | d'4 r8 a4 r8
  | d,4 r8 a4 r8

  % 80
  | d,4 r8 r4 a'8
  | d8.( cis16 d8) e( cis a)
  | fis'8.( e16 fis8) g( e cis)
  | a'8.( g16 a8) b( g e)
  | cis4 cis'8 d( b gis)
  | a,4 r8 e4 r8
  | a4 fis'8 b,4.
  | cis4 r8 r4 r8
  | R2.*4

  % 92
  | r4 r8 r r d
  | g8.( fis16 g8) a( fis d)
  | b'8. a16 g b d8 d, d
  | g g, g fis4.\fz
  | b a4 g'8
  | fis16-. a-. fis-. a-. fis-. a-. g-. a-. g-. a-. g-. a-.
  | fis4 r8 r4 r8
  | fis16 a fis a fis a g a g a g a

  % 100
  | fis g fis e d cis b4 e8
  | a,2. ~
  | a ~
  | a ~
  | << { a ~ } { s4. s4 } >>
  | a2. ~
  | a
  | d8-| d'-| r r4 r8
  | g,8. fis16-. e-. d-. cis-. b-. a-. g-. fis-. e-.
  | d8-| d'-| r r4 r8

  % 110
  | g8. fis16-. e-. d-. cis-. b-. a-. g-. fis-. e-.
  | d8-| d'-| r r4 r8
  | g,4 r8 r4 r8
  | a4 r8 a4 r8
  | \repeat unfold 6 { d,16-. a'-. }
  | \repeat unfold 6 { cis, a' }
  | \repeat unfold 6 { d, a' }
  | \repeat unfold 6 { cis, a' }
  | \repeat unfold 6 { c, a' }
  | b4 r8 r4 r8

  % 120
  | a4 r8 a4 r8
  | d-| d,-| r8 r4 r8
  | a'8. b16-. cis-. d-. e-. fis-. g-. a-. b-. cis-.
  | d8-| d,,-| r r4 r8
  | a'8. b16-. cis-. d-. e-. fis-. g-. a-. b-. cis-.
  | d8-| a-| fis-| d-| a-| fis-|
  | d4 r8 d4 r8
  | d4 r8 r4 r8

  \bar "|."
}
