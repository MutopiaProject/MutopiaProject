\version "2.18.0"
violinIIFirstMov =  \relative a {
  \key d \minor
  \clef violin

  \noTupletBracket
  \tupletSpan 4

  \repeat volta 2 {
    r8 a\f-. a-. a-. r a-. a-. a-.
    | r bes-. bes-. bes-. r cis-. cis-. cis-.
    | d( cis d e) \acciaccatura e d4 cis8 a'16( g)
    | f( g f e) d8-. d-. cis4-. r
    | r8 a'-.\p a-. a-. r a-. a-. a-.
    | r bes-. bes-. bes-. r cis-. cis-. cis-.
    | d4 r8 a16( e') \acciaccatura e8 d4( cis8)-. d-.
    | \acciaccatura f8 e4( d8)-. f-. \acciaccatura a g4( f8)-. a-.
    | g4-. r8 f-. e4-. r8 f,-.

    % 10
    | e4-. r r r8 d\f-.
    | d-. d-. d-. d-. d4 r
    | <a f'>8-. r <a e'>-. r d4-. r
    | R1*2
    | d'2( g,)
    | c( f,4) c'
    | d2 r8 e-. e-. e-.
    | e( f) f-. f-. bes,8.\fz( c16) \acciaccatura es8 d( c16 bes)
    | a4.( bes16 a g4) r

    % 20
    | <g, e'!>8\fz \repeat unfold 7 { <g' bes> }
    | <a, f'>\fz \repeat unfold 7 { <f' a> }
    | <a fis'>-. <a fis'>-. r <bes g'>-. r <c e>-. r <c f>-.
    | r g'( a)-. a-. r g( a)-. a-.
    | r g,( a)-. a-. r g( a)-. a-.
    | bes2( a)
    | d( g,4) r8 a'-\< ~
    | a-.-\! g[-\< ~ g]-.-\! f[-\< ~ f]-.-\! e[-\< ~ e]-.-\! f-.
    | \stemUp bes,2( a
    | gis a4) \stemNeutral r8 c-\< ~ 

    % 30
    | c-.-\! d[-\< ~ d]-.-\! bes[-\< ~ bes]-.-\! c[-\< ~ c]-.-\! d-\< ~ 
    | d4-.-\! r8 <bes e>-\< ~ <bes e>4-.-\! r8 g
    | <as, f'>4 c'8-. des-. c-. r r4
    | <g, e'! c'>8 r c'-. b-. c-. r r4
    | c,2 des
    | des4.(^\flatTrill c16 des) bes'4-. bes-.
    | as2( des,)
    | es( g,)
    | as( f')
    | g4( e!) c( g')

    % 40
    | as4 as2 f4
    | g r8 as g( f e f)
    | e4 r8 as g( f e f)
    | e4 r8 as g( f e f)
    | e4 r r2
    | d'2( bes4 g)
    | c2 f,4 c'
    | d2 r8 e-. e-. e-.
    | e( f) f-. f-. bes,8.(\fz c16) \acciaccatura es d8( c16 bes)
    | a2 bes4 <bes, e>

    % 50
    | <a f'>2 << { e'2 } \\ { bes4.( g8) } >>
    | <a f'>2 << { e'2 } \\ { bes4.( g8) } >>
    | \repeat unfold 4 { <a f'>8-. } <a f'>4 r
    | bes'8-.\p bes-. bes-. bes-. bes4 r
    | c,8-.\f d-. c-. d-. c4 r
    | bes'8-.\p bes-. bes-. bes-. bes4 r
    | R1
  }

  \repeat volta 2 {
    | r8 a,-.\f a-. a-. r c-. c-. c-.
    | r bes-. bes-. bes-. r a-. a-. a-.
    | R1*2 

    % 61
    | es''2( g,)
    | f( c')
    | bes( es,)
    | f( bes,)
    | R1*3
    | g'4( c,) f( bes,)
    | e( a,) d8-. g-. f-. cis-.

    % 70
    | d-. g-. f-. cis-. d-. g-. f-. cis-.
    | d4 f2( d4)
    | a' a2 d,4 ~
    | d e2 a,4 ~
    | a f'2 bes,4 ~
    | bes c2 f4 ~
    | f g2 a4
    | <f b>8\fz \repeat unfold 7 { <f b> }
    | <g c>\fz \repeat unfold 7 { <g c> }
    | <g c>4\fz r r2

    % 80
    | f'2(\p cis)
    | d( a)
    | gis( b)
    | <gis b>1
    | a2( dis,)
    | e8-. e-. e-. e-. r e-. e-. e-.
    | r e e e r dis dis dis
    | r e e e r e e e
    | r e e e r dis dis dis
    | r e e e r e e e

    % 90
    | r e e e r e e e
    | r e\pp r e r e r e
    | r4 e-.( e-. e)-.
    | \slurUp <g,! e'>1( ~
    | <g f'>)-\< \slurNeutral
    | <g e'>2-\!\f e'16( g c e) g8-. g-.
    | \grace { a32[( g fis)] } g4 r d,16( g b d) g8-. g-.
    | \grace { a32[( g fis)] } g4 r d,16( g bes! d) g8-. g-.
    | g-.\f r e-. r <e, cis'>4 r\fermata
    | r8 a,\p-. a-. a-. r a-. a-. a-.

    % 100
    | r bes-. bes-. bes-. r cis-. cis-. cis-.
    | d( cis d e) \acciaccatura e d4 cis8 a'16( g)
    | f( g f e) d8-. d-. cis4-. r
    | r8 a'\f a a r a a a
    | r bes bes bes r cis cis cis
    | d4 r8 a16( e') \acciaccatura e8 d4( cis8)-. d-.
    | \acciaccatura f8 e4( d8)-. f-. \acciaccatura a g4( f8)-. a-.
    | g4-. r8 f-. e4-. r8 f,-.
    | e4-. r r2
    | R1

    % 110
    | r4 r8 d-.\f d-. c!-. d-. e-.
    | f4. f8-. e-. d-. e-. fis-.
    | g4. g8-. f!-. e-. f-. gis-.
    | a4 <e cis'>2 <e cis'>4
    | <f d'> <f d'>2 <f d'>4
    | \stemUp <g e'>( <f d'> <e cis'>) \stemNeutral r8 a'-\< ~
    | a4-.-\! r8 g-\< ~ g4-.-\! r8 f-\< ~
    | f4-.-\! r8 e-\< ~ e4-.-\! r
    | a,4.( bes16 a) bes4 e,

    % 120
    | f8-. a4( bes16 a) bes8-. bes-. e,-. e-.
    | f-. a4 cis8-. d-. a4 cis8-.
    | d4 d2 d4
    | d1 ~
    | d2 e4\fermata r8\fermata d-\< ~
    | d4-.-\! r8 bes-\< ~ bes4-.-\! r8 a-\< ~ 
    | a4-.-\! r8 g-\< ~ g4-.-\! r8 g'
    | f2\f bes,
    | c f,
    | f' bes,

    % 130
    | c f,4 r
    | r8 c'-.\p( c-. c-.) r bes-.( bes-. bes-.)
    | r cis-.( cis-. cis-.) r d-.( d-. d-.)
    | r cis-.( cis-. cis-.) r d-.( d-. d-.)
    | r b-.( b-. b-.) r cis-.( cis-. cis-.)
    | r f-.( f-. f-.) r g-.( g-. g-.)
    | r e-.( e-. e-.) f4 r
    | r8 cis'-.( cis-. cis-.) d4 r
    | r <a,, e'>-.\pp( <a e'>-. <a e'>-.)
  }

  \alternative {
    { 
      | <a d>1
    }

    {
      | <a d>2. r8\fermata d8-\< ~
    }
  }

  % 141
  | d4-.-\! r8 d-\< ~ d4-.-\! r8 c!-\< ~ 
  | c4-.-\! r8 c-\< ~ c4-.-\! r8 bes-\< ~ 
  | bes4-.-\! r8 g'16(\f f e8) r f r
  | d2 gis
  | a16( e d e) cis(d cis e) d( e d f) e( f e g)
  | f8-. f-. r f g16( a g fis) g( a g f)
  | e8-. e-. r e f16( g f e) f( g f e)
  | d2 e4.(\trill d16 e)
  | d2 c'!

  % 150
  | bes ~ bes8 bes4 bes8
  | a-. r a-. r g-. r e-. r
  | f2( fis)\fz
  | <g, g'>( <bes! e!>)
  | <a f'>8-.\fz r cis-. r d-. r g-. r
  | f-. r <e cis'>-. r <d d'>-. r <a' g'>-. r
  | <d, a' f'>4 r r2

  \bar "|."
}
