\version "2.18.0"
celloSecondMov =  \relative f {
  \key d \major
  \clef bass

  \repeat volta 2 {
    r8
    | d\p^\markup { pizz. } r b[ fis] r g
    | a r e' a,[ a'] r
    | d, r b[ fis] r g
    | a a\fz r d[ d,]
  }

  \repeat volta 2 {
    r8
    | d''4(^\markup { arco } ais8) b b, r
    | e4( gis8) a4 r8
    | R2.
    | r4 r8 d,4 d,8\fz
    | cis4.( fis8) fis' r
    | fis^\markup { pizz. } fis r fis fis r
    | R2.
    | \stemUp d4(^\markup { arco } b8 fis4) g8\fz \stemNeutral
    | a4( e'8) a r r
    | \stemUp d,4( b8 fis4) g8 \stemNeutral
    | a a4\fz d8 d,
  }

  \key c \major

  r8
  | R2.
  | bes'8\p(-. bes-. bes-.) f'4\fz r8
  | f8(-. f-. f-.) bes,4\fz r8
  | a'-. a-. f-. c-.\ff c-. c-.

  % 20
  | f4 r8 r4 r8
  | bes,8\p(-. bes-. bes-.) f'4\fz r8
  | f8(-. f-. f-.) bes,4\fz r8
  | a-. a-. a-. as-.\ff as-. as-.
  | g4 r8 r4 r8
  | g'4\p r8 g,4(\fz f'8)
  | es-. c-. g16.( es32) c8-. c-. r
  | R2.
  | c'8\p r r c r r
  | c r r c r r

  % 30
  | cis4.\pp ~ cis8 r r
  | r4 r8 cis r r

  \bar "||"
  \key d \major

  | d4(\p b8 fis4) g8\fz
  | a4( e'8) a r r
  | d,4( b8 fis4) g8
  | a a4\fz d8 d, r
  | d'^\markup { pizz. } r b[ fis] r g
  | a r e a[ a'] r
  | d, r b[ fis] r g
  | a r a d[ d,] r

  % 40
  | d''4(^\markup { arco } ais8 b4) r8
  | e,4( gis,8 a4) r8
  | R2.
  | r4 r8 d4( d,8)
  | cis4.( fis8) fis' r
  | fis-. fis-. r fis-. fis-. r
  | R2.
  | d8^\markup { pizz. } r b[ fis] r g
  | a r e a[ a'] r
  | d,4(^\markup { arco } b8 fis4) g8(

  % 50
  | a4) a'8 b4\fermata r8
  | R2.*3
  | r4 r8 r4 a,16.(\p d32)
  | fis8[-. fis]-. a,16.[( e'32]) g8[-. g]-. a,16.[( d32])
  | gis8[-. gis]-. a,16.[( g'32]) bes8[( a g])

  \cadenzaOn fis4.*4\fz\fermata-\> ~ fis4-\!\fermata\p g,16.( b32) \cadenzaOff

  \set Score.currentBarNumber = #58
  \bar "|"

  e8-. e-. r r4 dis,32( e dis e)
  | g8-. g-. r r4 r8

  % 60
  | a'-. r r a-.\pp r r
  | a-. r r a,4.\f
  | \repeat unfold 2 { d,8 d4 d8 d4 }
  | d8\p d4 d8 d4
  | d8 d4 d8 d4
  | d8 r cis[( d)] r cis(
  | d) d(-. d-. d-.) r

  \bar "|."
}
