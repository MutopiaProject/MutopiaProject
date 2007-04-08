\version "2.6.0"
violaSecondMov =  \relative dis' {
  \key c \major
  \clef alto

  \noTupletBracket

  dis4(\p e dis)
  | cis2( b4) ~
  | b8. bis16 cis2 ~
  | cis4. gis'8( fis e)
  | dis4( e dis)
  | cis8.( b16 ais4 b)
  | cis4( dis e)
  | e(-> dis8)-. r r4
  | dis4(\pp e dis)

  % 10
  | cis2( b4) ~
  | b8.( bis16) cis2 ~
  | cis4. gis'8( fis e)
  | dis4( e dis)
  | e8.( dis16) cis2 ~
  | cis8.(-\< dis16) e4( fis)-\!
  | e r r
  | R2.*3

  % 20
  | gis4(\p a gis)
  | fis2( e4) ~
  | e8.( eis16) fis2 ~
  | fis4. a8( gis fis)
  | <b, e>4(-\< c! b)-\!
  | c8.(\fz b16) fis4 fis'
  | g!( g8)-. r <d a'>-.\ff r
  | <g, g'>4-. r r
  | R2.*3

  % 31
  | d'4(\p es d)
  | c2( bes4) ~
  | bes8.( b16) c2 ~
  | c4 r r
  | cis4(\pp dis cis)
  | b2. ~
  | b8.-\< ais16 gis4( cis)-\!
  | b4(-\markup { \italic "poco " \dynamic "f" } dis cis)
  | b r r

  % 40
  | R2.*4
  | r8 ais( dis cis) b4 ~
  | b8 b( e dis cis b)
  | ais2\fermata r4
  | d!2\fermata-\markup { \italic "dim." } r4
  | des2\fermata\p r4\fermata
  | c!4(\pp des c)

  % 50
  | bes2( as4) ~
  | as8.( a16) bes2 ~
  | bes4. f'8(-\< es des)-\!
  | c4(\mf des c)
  | bes8.( as16 g4 as)
  | bes( c des)
  | c4 r r
  | R2.*3

  \bar "||"
  \key b \major

  % 60
  | dis4(\p e dis)
  | cis2( b4) ~
  | b8.( bis16) cis2 ~
  | cis4. gis'8[(-\< fis e)]-\!
  | dis8(-\markup { \italic "poco " \dynamic "f" } gis fis e dis b)
  | ais([ fis' cis ais] b[ ais])
  | gis( dis') gis4( fis)
  | eis8( dis cis eis fis ais,)
  | b4 r r
  | R2.*2

  % 71
  | fis'4( eis fis)
  | gis8.( ais16 b4 ais8 gis)
  | fisis4. fisis8[( gis ais)]
  | gis( e! dis cis b gis)
  | fisis4. fisis8 gis8[( gis')]
  | fis!( e dis b) cis( b)
  | a( cis d4) cis( ~
  | cis8 b16 ais!) b4 r
  | e( dis! e)

  % 80
  | << { fis8.( gis16 a4 gis8 fis) }
  { s8 s8^\turn } >>
  | e4.( fis8 e dis)
  | cis8[( b] ais) fis'4( dis8)
  | bis( gis' dis bis) cis cis' ~
  | cis( b!16 ais) b8( ais b e)
  | cis( b ais dis,) gis( fis)
  | e( dis cis fis) b,( dis)
  | e8.( dis16) cis2 ~
  | cis4. dis8[-.\( dis( cis])\)
  | bis4( ais bis)

  % 90
  | cis8.( dis16 e8 dis cis b!)
  | ais4( gis ais)
  | b8.( cis16 dis8 cis b ais)
  | \stemUp gis4.( ais16 b cis8 cis) \stemNeutral
  | cis2( b4)
  | e4 r r
  | gis2 r4
  | gis2 r4
  | gis2 r4
  | dis8 e16( dis) cis( b) e( dis) cis( b) cis-. cis-.

  % 100
  | b8 b16( ais) gis( fis b ais gis fis e dis)
  | cis4( cis' b)
  | e,( fis) r
  | r8 b16( ais) gis( fis b ais gis fis e dis)
  | cis4( cis' b)
  | e,( fis) r
  | dis'(\p e dis)
  | <ais e'>2( cis4)
  | dis(\pp e dis)
  | <ais e'>2( cis4)

  % 110
  | b8 gis!16( fis) e( dis gis fis) e( dis gis fis)
  | fis2. ~
  | fis2.\fermata

  \bar "|."
}
