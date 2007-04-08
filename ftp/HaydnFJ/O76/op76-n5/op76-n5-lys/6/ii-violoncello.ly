\version "2.6.0"
celloSecondMov =  \relative b {
  \key c \major
  \clef bass

  \noTupletBracket

  b4(\p cis b)
  | ais2( b4)
  | e,2( eis4)
  | fis4. e'!8( dis cis)
  | b4( cis b)
  | ais8.( gis16 fis4 gis)
  | e fis2
  | b,4.-> b8( dis fis)
  | b4(\pp cis b)

  % 10
  | ais2( b4)
  | e,2( eis4)
  | fis4. e'!8( dis cis)
  | b4( cis b)
  | ais2( a4)
  | << { gis2.( } { s2-\< s4-\! } >>
  | cis,4) r r
  | R2.*3

  % 20
  | e'4(\p fis e)
  | dis2( e4)
  | a,2( ais4)
  | b2 r4
  | << { e,2. } { s2-\< s4-\! } >>
  | d!2\fz c'!4
  | b8.( g!16) d8-. r d-.\ff r
  | g-. g,(\pp fis g a b)
  | c( a gis a b c)
  | d( b c d e fis)

  % 30
  | g(-\< d e fis g a)-\!
  | bes4(\p c bes)
  | a2( bes4)
  | es,2( e4)
  | f!4. es8( d c)
  | bes4(\pp c des)
  | es2.(
  | << { e)( } { s2-\< s4-\! } >>
  | fis2.-\markup { \italic "poco " \dynamic "f" }
  | b,!4) r r

  % 40
  | R2.*3
  | r8 cis[( dis e fis a!)]
  | fisis2 gis8( fis)
  | e2.
  | e,2\fermata r4
  | f!2\fermata-\markup { \italic "dim." } r4
  | es2\p\fermata r4\fermata
  | as4(\pp bes as)

  % 50
  | g2( as4)
  | des2( d4)
  | es4. des'8[(-\< c bes)-\!]
  | as4(\mf bes as)
  | g8.( f16 es4 f)
  | des4 es2
  | as8-. as,(\pp g as bes c)
  | des( bes a bes c des)
  | es( c des es f g)
  | as( es f g as bes)

  \bar "||"
  \key b \major

  % 60
  | b!4(\p cis b)
  | ais2( b4)
  | e,2( eis4)
  | fis4. e'!8[(-\< dis cis)-\!]
  | b4 r r
  | R2.*3
  | b,4(-\markup { \italic "poco " \dynamic "f" } ais b)
  | cis8.( dis16 e4 dis)

  % 70
  | cis8( b ais fis gis ais)
  | b4 b'( ais8 gis16 fis)
  | eis8( dis cis eis fis e)
  | dis4. dis8[( eis fisis)]
  | gis4 r r
  | R2.*2
  | a,4( gis) a8.( ais16)
  | b8.( cis16) dis!2
  | e8( cis' b a gis e)

  % 80
  | dis( b' fis dis e dis)
  | cis( gis') cis4( b)
  | ais8( gis fis ais) b4
  | gis2( cis,4)
  | R2.*3
  | cis8.( dis16) e8( dis e eis)
  | fis2. ~
  | fis

  % 90
  | e! ~
  | e
  | dis(
  | e)
  | fis4( fisis gis)
  | e r r
  | e'2 r4
  | dis2 r4
  | e2 r4
  | fis,2.

  % 100
  | r8 gis16( fis) e( dis gis fis e dis cis b)
  | ais2( b4)
  | e( fis fis,)
  | r8 gis'16( fis) e( dis gis fis e dis cis b)
  | ais2( b4)
  | e( fis) fis
  | b,2.\p ~
  | b ~
  | b\pp ~
  | b ~

  % 110
  | b4 b(-. b)-.
  | \repeat unfold 3 { b16( ais b fis) }
  | b2.\fermata

  \bar "|."
}
