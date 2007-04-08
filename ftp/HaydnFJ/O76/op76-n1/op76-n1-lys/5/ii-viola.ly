\version "2.6.0"
violaSecondMov =  \relative ais {
  \key fis \major
  \clef alto

  \override Staff.Hairpin   #'minimum-length = #5

  r4
  | ais1(\p\<
  | b2)\!\f ais
  | gis4(-\> fis eis) fis8.( ais16)-\!
  | cis2\p r
  | ais1(\p\<
  | b2)\!\f ais
  | gis2\fz gis\p
  | fis4( ais) b2
  | ais4 ais(-. ais-. ais)-.

  % 10
  | b(-. b-. b-. b)-.
  | ais(-. ais-. ais-. ais)-.
  | b(-. b-. b-. b)-.
  | ais2 r
  | dis(\f cisis)
  | dis2( eis4 cisis)
  | ais dis2 dis4
  | << dis2. { s2-\> s4-\! } >> r4
  | r2 cis,(\p
  | bis4) r bis( bis')

  % 20
  | cis( eis gis) eis8.( cis16)
  | bis4( dis gis) fis8.( dis16)
  | cis4(-\>\fz eis8. dis16) cis4( bis)-\!
  | ais8.[(\p cis16] eis8.[ cis16]) ais'2
  | gis,8.[( bis16] dis8.[ bis16]) gis'2
  | ais1(\fz\>
  | gis2)(\!\p fis4 dis)
  | cis2. r4
  | cis2\fz gis\fz
  | ais1\fz\> ~

  % 30
  | ais1\!\p
  | gis4( eis cis2)
  | dis4(\pp eis fis2)
  | eis8 gis4 gis gis gis8 ~
  | gis gis4 gis gis gis8
  | cis,4( e gis) e8.( cis16)
  | bis4( dis gis) fis8.( dis16)
  | cis2( dis)
  | e4(-\markup { \italic "cresc." }  fis8. gis16) a2
  | gis4( bis) cis4.( e8)

  % 40
  | gis2.\fermata r4
  | gis1(\p\<
  | a2)(\!\f gis)
  | fis4(\> e dis)\! e8.( gis16)
  | b2 r
  | e,,1\p
  | dis4 d2.
  | cis4 c2 c'4
  | gis(\< d' c b)\!
  | a2\f a4(-. a)-.

  % 50
  | << a2.\fermata { s2\> s4\! } >> d,4\p
  | g( b d) b8.( g16)
  | cis!2( dis!4) dis,
  | e!( g b) g8.( e16)
  | eis!2 eis'!
  | \repeat unfold 2 { fis8(-. fis-. fis-. fis)-. }
  | cis eis eis eis eis eis eis eis
  | \repeat unfold 8 e
  | d-\< d d d d d d d
  | cis cis cis cis cis cis cis cis-\!

  % 60
  | d\f d d d d d d d
  | cis2 gis4(-.\p gis)-.
  | gis2.\fermata r4
  | ais1(\p\<
  | b2)\!\f ais
  | gis4(-\> fis eis) fis8.( ais16)-\!
  | cis2\p r
  | ais1(\p\<
  | b2)\!\f ais
  | gis\fz gis\p

  % 70
  | fis4( ais b2)
  | ais4r r2
  | cis1 ~
  | cis4 r r2
  | eis2 eis,(
  | fis4) r fis2(
  | eis4) r eis eis'
  | fis( ais cis) ais8.( fis16)
  | eis4( gis cis) b8.( gis16)
  | fis4(\fz-\> ais8. gis16) fis4( eis)-\!

  % 80
  | dis8.[(\p fis16] ais8.[ fis16]) dis'2
  | cis,8.[( eis16] gis8.[ eis16]) cis'2
  | dis1\fz\>
  | cis2(\!\p b4 gis)
  | fis2. r4
  | fis2\fz cis\fz
  | dis1\fz\> ~
  | dis1\!\p
  | cis4( ais fis2)
  | gis4( ais b2)

  % 90
  | ais4 ais(-. ais-. ais)-.
  | b(-. b-. b-. b)-.
  | ais(-. ais-. ais-. ais)-.
  | b(-. b-. b-. b)-.
  | ais8-. r r4 cis8-. r r4
  | fis,8-. r r4 gis8-.\pp r r4
  | fis4 r cis(-. cis)-.
  | cis1\fermata

  \bar "|."
}
