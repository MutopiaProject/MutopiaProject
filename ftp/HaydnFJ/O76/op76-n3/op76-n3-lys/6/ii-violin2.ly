\version "2.6.0"
violinIISecondMov =  \relative fis' {
  \key c \major
  \clef violin

  \noTupletBracket

  fis2.\p ~
  | fis
  | gis ~
  | gis4( fis8)-. r r4
  | fis2. ~
  | fis4 cis'( b)
  | gis( fis e8. cis16)
  | ais4(-> b8)-. r r4
  | fis'2.\pp ~

  % 10
  | fis
  | gis ~
  | gis4( fis8)-. r r4
  | fis2.(
  | g!)
  | gis2(-\< dis4)-\!
  | e r r
  | R2.*3

  % 20
  | b'2. ~
  | b
  | cis ~
  | cis4( b8) cis( b a)
  | g!4(-\< a g)-\!
  | a8.(\fz b16) c!4 d ~
  | d( b8)-. r <d, c'>-.\ff r
  | <g, d' b'>4-. r r
  | R2.*3

  % 31
  | f'!2.\p ~
  | f
  | g ~
  | g4( f8) r r4
  | f2.\pp
  | fis(
  | gis8.)(-\< fis16) e4( ais)-\!
  | b4(-\markup { \italic "poco " \dynamic "f" } fis e)
  | dis8( b cis dis e gis)

  % 40
  | eis4( fis8)-. r r4
  | r8 cis[( dis e! fis a!)]
  | fisis4( gis8)-. r r4
  | cis4-. cis-. cis ~
  | cis b8( ais b ais)
  | gis2( ais8 gis)
  | fisis2\fermata r4
  | gis2\fermata-\markup { \italic "dim." } r4
  | g!2\p\fermata r4\fermata
  | es2.\pp ~

  % 50
  | es
  | f! ~
  | f4( es8) r r4
  | es2.\mf ~
  | es4 bes'( as)
  | f( es des8. bes16)
  | as4 r r
  | R2.*3

  \bar "||"
  \key b \major
  % 60
  | fis'2.\p ~
  | fis
  | gis ~
  | gis4( fis8) r r4
  | b4(-\markup { \italic "poco " \dynamic "f" } ais b)
  | cis8.( dis16 e4 dis8 cis)
  | b4.( cis8 b ais)
  | gis( fis eis gis fis) e'! ~
  | e( dis) cis4( fis,)
  | e8.( fis16 gis4 fis)

  % 70
  | e8( gis cis ais b) cis( ~
  | cis b16 ais) b4 r
  | R2.*2
  | gis4( fisis gis)
  | ais8.( b16 cis4 b)
  | a8[( gis fis dis']) e[( dis)]
  | cis4( b cis)
  | fis,2.(
  | b,4) r r

  % 80
  | R2.
  | b'4( ais! b)
  | << { cis8.( dis16 e4 dis) }
  { s8 s8^\turn } >>
  | dis8.( e16 fis4) e ~
  | e8( dis16 cis) dis8( cis dis gis)
  | gis4( fisis) gis8( b)
  | b4( ais) b8( ais)
  | gis2.
  | fis4 fis8 fis-.[\( fis( e)\)]
  | dis4( cis dis)

  % 90
  | e8.( dis16 cis8[ dis e d)]
  | cis4( b cis) 
  | dis!8.( cis16 b8[ cis dis cis])
  | b4.( ais8 gis8[ ais16 b])
  | ais2( b4)
  | b r r
  | cis2 r4
  | bis2 r4
  | cis2 r4
  | r8 gis16( fis) e( dis gis fis) e( dis) e-. e-.

  % 100
  | dis2( e8 fis)
  | fis2. ~ 
  | fis16( e dis cis) b8[( dis cis e)]
  | dis2( e8 fis)
  | fis2. ~
  | fis16( e dis cis) b8[( dis cis e)]
  | fis4(\p g fis)
  | g16( fis a g) fis( e a g) fis( e g e)
  | fis4(\pp g fis)
  | g16( fis a g) fis( e a g) fis( e g e)

  % 110
  | dis!4 b(-. b)-.
  | b2. ~
  | b\fermata

  \bar "|."
}
