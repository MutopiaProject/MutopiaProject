\version "2.6.0"
violinISecondMov =  \relative cis' {
  \key fis \major
  \clef violin

  cis4\p-\<^\markup { \italic "tenuto" }
  | fis( ais cis) ais8.( fis16)-\!
  | fis'4(\f dis8. b16) cis4( ais8. fis16)
  | eis4(-\> fis b ais)-\!
  | gis4.\(\p \acciaccatura b8 ais gis\) r cis,4
  | fis(-\< ais cis) ais8.( fis16)-\!
  | fis'4(\f dis8. b16) cis4( ais8. fis16)
  | dis'2\fz dis,8(\p-. eis-. fis-. gis)-.
  | ais2 \acciaccatura ais8 gis8.( fis16 gis8. ais16)
  | fis4 r r r8. cis'16

  % 10
  | gis8.[( cis,16]) b'8.[( ais16]) gis8-. r r8. cis16
  | fis,8.[( cis16]) ais'8.[( gis16]) fis8 r r8. cis'16
  | gis8.[( cis,16]) b'8.[( ais16]) gis8 r r8. cis16
  | ais8.[( fis16)] cis'8.[( ais32 cis)]
  fis8.[(-\< cis16)] ais'8.[( gis16)]-\!
  | fis4 \grace { gis32[( fis eis] } fis8.)( gis16) eis4 ais8.( fis16)
  | dis4 \grace { eis32[( dis cisis] } dis8.)( eis16) cisis4 ais
  | dis( fis ais-\> gis16 fis eis dis)-\!
  | cis2(-\> bis4)-\! r
  | eis8.[(\p gis,16)] gis'8.[( fis16)] eis8-. r r8. gis,16
  | dis'8.[(\p gis,16)] fis'8.[( eis16)] dis8-. r r8. gis,16

  % 20
  | gis'2 gis4(-. gis)-.
  | \grace { fisis32[( gis ais] } gis1)-\< ~
  | gis\fz-\!-\< ~
  | gis2\p-\! fis ~
  | fis eis
  | dis8.(\fz-\> fis16 ais8. fis16) dis4(-. dis)-.-\!
  | dis2\p ~ dis8 eis(-. fis-. gis)-.
  | fis2( eis8.) cis'16\f gis8.( eis16)
  | cis8.[ cis16] gis8.[( eis16)] cis8.[( eis16)] gis8.[( eis16)]
  | dis8.[(\fz-\> fis16] ais8.[ fis16]) dis4(-. dis)-.-\!

  % 30
  | e8.[(\p ais16] cis8.[ ais16]) e4(-. e)-.
  | eis!8.[( gis16] cis8.[ gis16]) eis'4( dis16 cis bis ais)
  | gis2\pp ~ gis8 fis(-. eis-. dis)-.
  | cis4 r r2
  | r r4 r8. gis'16
  | e'8.[( gis,16)] gis'8.[( fis16)] e8-. r r8. gis,16
  | dis'8.[( gis,16)] fis'8.[( e16)] dis8-. r r8. gis,16
  | e'8.[( gis,16)] gis'8.[( e16)] dis8.[( gis,16)] gis'8.[( dis16)]
  | cis4(-\markup { \italic "cresc." } dis8. e16) fis4( fisis)
  | gis4. gis8 fis!( e dis cis)

  % 40
  | bis2.\fermata b4\p
  | e4(-\< gis b) gis8.( e16)-\!
  | e'4(\f cis8. a16) b4( gis8. e16)
  | dis4(-\> e a gis)-\!
  | fis4.\( \acciaccatura a8 gis fis\)-. r b,,4\p
  | \slurDown e( g b g8. e16)
  | dis4( fis b fis8. d16) \slurNeutral
  | cis4( e a e8. c16)
  | b4(-\< g' fis e)-\!
  | d4.\(\f \acciaccatura fis8 e\) d4(-. d)-.

  % 50
  | d2.-\>\fermata r4-\!
  | b'8(-.\p b-. b-. b)-. b(-. b-. b-. b)-.
  | a a a a a a c c
  | b b b b b b b b
  | d d d d cis cis cis cis
  | \repeat unfold 24 cis
  | cis-\< cis cis cis bis bis bis bis
  | cis cis cis cis cis cis cis cis-\!

  % 60
  | bis\f bis bis bis bis bis bis bis
  | cis2 cis4(-.\p cis)-.
  | cis2.\fermata cis,4
  | fis(-\< ais cis) ais8.( fis16)-\!
  | fis'4(\f dis8. b16) cis4( ais8. fis16)
  | eis4(-\> fis b ais)-\!
  | gis4.\(\p \acciaccatura b8 ais gis\) r cis,4
  | fis(-\< ais cis) ais8.( fis16)-\!
  | fis'4(\f dis8. b16) cis4( ais8. fis16)
  | dis'2\fz dis,8(\p-. eis-. fis-. gis)-.

  % 70
  | ais2 \acciaccatura ais8 gis8.( fis16 gis8. ais16)
  | fis4 r8 fis eis(-. fis-. gis-. ais)-.
  | b2 \acciaccatura b8 ais8.( gis16 ais8. b16)
  | gis4 r8 fisis gis(-. ais-. b-. cis)-.
  | dis8.( cis16) gis'4 ~ gis8.( gis16\turn ais8. b16)
  | ais8.[( cis,16)] cis'8.[( b16)] ais8-. r r8. ais16
  | gis8.[( cis,16)] b'8.[( ais16)] gis8-. r r8. cis,16
  | cis'2 cis4(-. cis)-.
  | << { \grace { bis32[( cis dis] } cis1) ~ }
       { s2.-\< s8. s16-\! } >>
  | << { cis1\fz } { s2.-\> s8. s16-\! } >>

  % 80
  | cis2\p b ~
  | b ais
  | gis8.(\fz-\> b16 dis8. b16) gis4(-. gis)-.-\!
  | gis2\p ~ gis8 ais(-. b-. cis)-.
  | b2( ais8.) fis'16\f cis8.( ais16)
  | fis8.[ fis16] cis8.[( ais16)] fis8.[( ais16)] cis8.[( ais16)]
  | gis8.(-\>\fz b16 dis8. b16) gis4(-. gis)-.-\!
  | a8.(\p dis16  fis8. dis16) a4(-. a)-.
  | ais!8.( cis16 fis8. cis16) ais'4( gis16 fis eis dis)
  | cis2 ~ cis8 b(-. ais-. gis)-.

  % 90
  | fis4 r r r8. cis'16
  | gis8.( cis,16) b'8.( ais16) gis8-. r r8. cis16
  | fis,8.( cis16) ais'8.( gis16) fis8-. r r8. cis'16
  | gis8.( cis,16) b'8.( ais16) gis8-. r r8. cis16
  | fis,8-. r r8. cis'16-. gis8-. r r8. cis16-.
  | ais8-. r r8. cis16\pp-. eis,8-. r r8. cis'16-.
  | fis,4 r fis(-. fis)-.
  | fis1\fermata

  \bar "|."
}
