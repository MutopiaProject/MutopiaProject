\version "2.18.0"
violinISecondMov =  \relative a' {
  \key d \major
  \clef violin

  \noTupletBracket

  \repeat volta 2 {
    a8(-\markup { \italic { mezza voce } }
    | fis[)-. fis]-. \acciaccatura a16 g16[( fis32 g]) 
      a4^\markup { \italic { ten. } } b8\fz
    | e,4 \acciaccatura e16 d16( cis32 b) a4 a'8(
    | fis[)-. fis]-. \acciaccatura a16 g16[( fis32 g]) 
      a4 b16.( e32)
    | d8 cis8.[(\trill\fz b32 cis] d8) r
  }

  \repeat volta 2 {
    fis16.( d32)
    | b8[-. b]-. \acciaccatura d16 cis16[( b32 cis]) 
      d8.[ e32( fis] e[ d cis b)]
    | a16[( gis]) gis8[( e']) d[( cis]) e16.[( cis32)]
    | a8[-. a]-. a'16.[( fis32]) d8[-. d]-. fis16.[( d32)]
    | b8[-. b]-. fis'16.[( d32]) b8[-. b( bis])\fz
    | cis a16.( fis32) gis16.( eis32) fis4 cis'16.( a32)

    % 10
    | fis8[-. fis]-. cis'32[( a cis a]) fis8[-. fis]-. a(\p
    | fis[)-. fis]-. a( fis[)-. fis]-. a(
    | fis[)-. fis]-. \acciaccatura a16 g16[( fis32 g]) a4 b8\fz
    | e,4 \acciaccatura e16 d16( cis32 b) a16 b32 cis d e fis g! a b a g
    | fis8[-. fis]-. \acciaccatura a16 g16[( fis32 g]) 
      a8.[( ais16]) b16.[(\turn e32)]
    | d8 cis8.[(\trill\fz b32 cis]) d4
  }

  \bar "||"
  \key c \major

  a'16.(\p f32)
  | d8[-. d]-. a'16.[( f32)] d8[-. d-.] f16.[(\fz d32)]
  | bes!8[(-. bes-. bes-.)] bes(\fz a) es'16.[( c32)]
  | a8[(-. a-. a-.)] a(\fz bes) d16.[( bes32)]
  | f'8-. f-. f-. <c g'>\ff-. <c g'>-. <c g'>-.

  % 20
  | a' ~ a32 f-. g-. a-. bes-. c-. d-. e-. f8-. r f,16.(\fz d32)
  | bes!8[(-. bes-. bes-.)] bes(\fz a) es'16.[( c32)]
  | a8[(-. a-. a-.)] a(\fz bes) d16.[( bes32)]
  | f'8-. f-. f-. <c fis>\ff-. <c fis>-. <c fis>-.
  | <b g'> ~ g'16 a32-. b!-. c-. d-. e!-. fis-. g8-. r r
  | r4 r8 as,4\fz g32( f! es d)
  | c8-. c( d) es4 g,16.(\p es32)
  | c8[-. c-.] c'16.[( g32)] es8[-. es-.] es'16.[( c32)]
  | a!8[-. a]-. c16.[( a32]) fis8[-. fis]-. a(
  | fis8[)-. fis]-. a( fis8[)-. fis]-. a(\pp

  % 30
  | fis8[)-. fis]-. a( fis8[)-. fis]-. a(
  | fis8[)-. fis]-. a( g8[)-. g]-. a(\fz

  \bar "||"
  \key d \major

  | fis8[)-.\p fis-.] \acciaccatura a16 g16([ fis32 g)] a4 b8\fz
  | e,4 \acciaccatura e16 d16( cis32 b) a16 b32 cis d e fis g! a b a g
  | fis8[-. fis]-. \acciaccatura a16 g16[( fis32 g]) 
    a8.[( ais16]) b16.[(\turn e32)]
  | d8 cis8.[(\trill\fz b32 cis]) d8 r a
  | fis32( d) a( d) fis( d) fis( d) g( d) g( d) 
    a'( fis) d-. fis-. a fis d d' cis b a g
  | fis e fis gis a b cis d e d b gis b a gis a gis a gis a g a g a
  | g fis e d cis d e fis g a b cis d e fis g gis a gis a ais b ais b
  | a! b a b cis d e fis g fis g e d8 r fis,16.( d32)

  % 40
  | b32( fis') d-. cis-. b( fis') e-. d-. cis( e) g!-. e-. 
    d( fis) d-. cis-. b fis' g fis e d cis b
  | a gis b a cis b d cis e d fis e d8[( cis]) e16.[( cis32)]
  | a gis a cis a cis e cis a a' g! e d cis d fis d fis a fis g fis e d
  | cis b ais b g' fis e d cis b ais b g' fis e d cis b ais b bis16 bis
  | cis32 fis a gis fis cis a fis gis b gis eis fis8 r cis'16.( a32)
  | fis cis a cis a cis fis cis a' fis cis' a fis cis a cis a cis fis cis a' fis cis' a
  | fis\p cis a cis fis cis a cis a' cis, a cis fis cis a cis fis cis a cis a' cis, a cis
  | fis( d) a( d) fis( d) fis( d) g( d) g( d) 
    a'( fis) d-. fis-. a fis d d' cis b a g
  | fis e fis gis a b cis d e d b gis b a gis a gis a gis a g a g a
  | g fis e d cis d e fis g a b cis d e fis g gis a gis a ais b ais b

  % 50
  | a! b a b cis d e fis g fis g e d4\fermata d16.( b32)
  | g8-.[ g-.] b16.([ g32)] fis8[-. fis-.] a16.([ fis32)]
  | e8-. e( fis) g4 b16.( g32)
  | fis8-.[ fis-.] a16.[( fis32)] e8-.[ e( eis)]
  | fis2.\f-\> ~
  | fis4-\! e4.\p d8 ~
  | d4 cis cis8 cis


  \cadenzaOn c8[\fz\fermata ~ \tuplet 3/2 { c16 a fis] } 
  \tuplet 3/2 { dis[ fis a] } 
  \small c16[ a fis dis fis a c8 a fis dis fis a] 
  \normalsize c4\p\fermata r8 \cadenzaOff

  \set Score.currentBarNumber = #58
  \bar "|"

  | r4 fis32( g fis g) b8-. b-. r
  | r4 fis32( g fis g) b8-. r16 b a32( g fis e)
  | d8-. r16 b' a32( g fis e) d8-. r16 b\pp a32( g fis e)
  | d8-. r16 b''32(\f a) g-. fis-. e-. d-.
    cis-. b-. a-. g-. fis-. e-. d-. cis-. b-. a-. b-. cis-.
  | d8 r d'([ cis)] r e(
  | d) r d([ a)] r a(
  | fis) r d'\p cis32-. d-. e-. fis-. g-. a-. b-. cis-. d-. e-. fis-. g-.
  | a8-. r r a,,32-. b-. cis-. d-. e-. fis-. g-. a-. b-. cis-. d-. e-.
  | fis8-. r a,,([ fis)] r a(
  | fis) fis-.( fis-. fis-.) r

  \bar "|."
}
