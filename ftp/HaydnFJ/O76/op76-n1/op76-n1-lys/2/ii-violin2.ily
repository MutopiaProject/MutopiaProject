\version "2.18.0"
violinIISecondMov =  \relative a {
  \key d \major
  \clef violin

  \noTupletBracket

  \repeat volta 2 {
    r8
    | <a fis'>\p^\markup { pizz. } r g'[ a] r <d, b'>
    | <cis e> r <b gis'>[ <a a'>] r r
    | <a fis'> r g'![ a] r b
    | fis <e cis'>\fz r <fis d'> r
  }

  \repeat volta 2 {
    r8
    | fis4(^\markup { arco } e8 d4) r8
    | b4( b'8) b( a) r8
    | e-. e-. r a-. a-. r
    | fis-. fis-. r fis4 a8\fz ~
    | a[ fis] eis16.[ gis32] fis4 r8
    | cis^\markup { pizz. } cis r cis cis r
    | R2.
    | d2.(^\markup { arco }
    | cis8)( e gis) a r r
    | d,2.(
    | fis8) g4\fz fis
  }

  \key c \major

  r8
  | R2.
  | d8(-. d-. d-.) es4\fz r8
  | es(-. es-. es-.) es(\fz d) r
  | c'-. c-. c-. <bes e!>-.\ff <bes e>-. <bes e>-.

  % 20
  | <a f'>4 r8 r4 r8
  | d,8(-.\p d-. d-.) es4\fz r8
  | es(-. es-. es-.) es(\fz d) r
  | c'-. c-. c-. <es, c'>\ff-. <es c'>-. <es c'>-.
  | <g b>4 r8 r4 d'16.(\p b32)
  | g8[-. g]-. d'16.[( b32]) f8[-.\f f]-. b
  | c es,[( f)] es r r
  | R2.
  | fis8\p r r a, r r
  | a r r a r r

  % 30
  | a4.\pp ~ a8 r r
  | r4 r8 e'! r r

  \key d \major

  | d2.(\p
  | cis8)( e gis) a r r
  | d,2.(
  | fis8) g4\fz fis8 r r
  | <a, fis'>^\markup { pizz. } r g'[ <d a'>] r <d b'>
  | <cis e> r <b gis'>[ <a e' a>] r r
  | <a fis'> r g'![ a] r b
  | a r <e cis'>[ <fis d'>] r r

  % 40
  | fis4(^\markup { arco } e16 cis) d8 r r
  | b4( b'8) b( a) r
  | e-. e-. r a-. a-. r
  | fis-. fis-. r b,4 a'8 ~
  | a8.[ fis16] eis16[( gis]) fis8 r r
  | cis-. cis-. r cis-. cis-. r
  | R2.
  | <a fis'>8^\markup { pizz. } r g'[ <d a'>] r <d b'>
  | <cis e> r <b gis'>[ <a e' a>] r r
  | d2.^\markup { arco }

  % 50
  | fis4( cis'8) d4\fermata r8
  | \repeat unfold 2 { cis32[( d cis d]) cis[( d]) r16 r8 }
  | d32( cis d cis) d16 d d d d4 r8
  | cis32[( d cis d]) cis[( d]) r16 r8 d32( cis d cis) d16 d d d
  | d2.\f-\> ~
  | d4-\! cis4.\p b8 ~
  | b4 g e8 e

  \cadenzaOn <a, dis>4.*4\fz\fermata-\> ~ 
  <a dis>4\fermata-\! r8 \cadenzaOff

  \set Score.currentBarNumber = #58
  \bar "|"

  | r4 dis32( e dis e) g8-. g-. r
  | r4 dis32( e dis e) g8-. r r
  | fis-. r r fis-.\pp r r
  | fis-. r r <cis e>4.\f
  | <d fis>8 r fis[( e)] r cis'(
  | d) r d,[( cis)] r cis(
  | d) r fis[(\p e)] r cis'16.( e32)
  | d8 r d, cis4.(
  | d8) r e[( fis)] r e(
  | d) a(-. a-. a-.) r

  \bar "|."
}
