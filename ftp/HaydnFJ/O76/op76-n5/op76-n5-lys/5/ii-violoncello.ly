\version "2.6.0"
celloSecondMov =  \relative fis {
  \key fis \major
  \clef bass

  \override Staff.Hairpin   #'minimum-length = #5

  r4
  | << { fis1\p-\markup { \italic "tenuto" } ~ }
  { s2.-\< s8. s16-\! } >>
  | fis1\f
  | << { cis1 ~ } { s2.-\> s8. s16-\! } >>
  | cis2\p r
  | << { fis,1 ~ } { s2.-\< s8. s16-\! } >>
  | fis1\f
  | b2(\fz bis)\p
  | cis1
  | fis4 fis(-. fis-. fis)-.

  % 10
  | \repeat unfold 3 { fis(-. fis-. fis-. fis)-. }
  | fis2 r
  | dis'(\f ais)
  | b( ais4 gis)
  | fis1
  | gis2.-\> gis,4-\!\p
  | cis( eis gis) eis8.( cis16)
  | bis4( dis gis) dis8.( bis16)

  % 20
  | cis4 r cis,( eis
  | gis) r bis,2(
  | cis4)\fz r r2
  | r dis'8.(\p fis16 ais8. fis16)
  | dis'4 r cis,8.( eis16 gis8. eis16)
  | << { fis2(\fz fisis) } { s2.-\> s4-\! } >>
  | gis1\p
  | ais2. r4
  | eis2\fz eis,\fz
  | << { fis1\fz( }
  { s2.-\> s8. s16-\! } >>

  % 30
  | fisis1)\p
  | gis ~
  | gis\pp
  | cis,4( eis gis) eis8.( cis16)
  | bis4( dis gis) dis8.( bis16)
  | cis4 r cis( e)
  | gis r bis,( bis')
  | cis2( b!)
  | a1-\markup { \italic "cresc." }
  | gis

  % 40
  | gis2.\fermata r4
  | << { e''1\p ~ } { s2.-\< s8. s16-\! } >>
  | e1\f
  | << { b ~ } { s2-\> s4-\! } >>
  | b2 r
  | e,,1\p
  | dis4 d2.
  | cis4 c2 c'4
  | b2(-\< a4 g)-\!
  | fis2\f fis4(-. fis)-.

  % 50
  | fis2.\fermata-\> r4-\!
  | R1*3
  | r2 r4 cis\p
  | fis( a cis) a8.( fis16)
  | eis!4( gis! cis) gis8.( eis16)
  | e4( gis cis) gis8.( e16)
  | d4(-\< fis a) fis8.( d16)
  | cis4( eis gis) eis8.( cis16)-\!\f

  % 60
  | d4( fis a) fis8.( d16)
  | cis2 cis4(-.\p cis)-.
  | cis2.\fermata r4
  | << { fis'1\p-\markup { \italic "tenuto" } ~ }
  { s2.-\< s8. s16-\! } >>
  | fis1\f
  | << { cis1 ~ } { s2.-\> s8. s16-\! } >>
  | cis2\p r
  | << { fis,1 ~ } { s2.-\< s8. s16-\! } >>
  | fis1\f
  | b2(\fz bis)\p

  % 70
  | cis1
  | dis4 r r2
  | eis( fis)
  | cis4 r r2
  | r r4 cis
  | fis( ais cis) ais8.( fis16)
  | eis4( gis cis) b8.( gis16)
  | fis4 r fis( ais
  | cis) r eis,2(
  | fis4)\fz r r2

  % 80
  | r gis8.(\p b16 dis8. b16)
  | gis'4 r fis,8.( ais16 cis8. ais16)
  | << { b2(\fz bis) } { s2.-\> s4-\! } >>
  | cis1\p
  | dis2. r4
  | ais2\fz ais,\fz
  | << { b1\fz( } { s2.-\> s4-\! } >>
  | bis1)\p
  | cis ~
  | cis

  % 90
  | fis4 fis(-. fis-. fis)-.
  | \repeat unfold 3 { fis(-. fis-. fis-. fis)-. }
  | fis,8-. r r4 cis'8-. r r4
  | fis8-. r r4 cis8\pp r r4
  | fis4 r fis,(-. fis)-.
  | fis1\fermata

  \bar "|."
}
