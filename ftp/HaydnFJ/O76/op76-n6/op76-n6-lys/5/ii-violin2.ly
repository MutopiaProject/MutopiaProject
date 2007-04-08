\version "2.6.0"
violinIISecondMov =  \relative cis' {
  \key fis \major
  \clef violin

  \override Staff.Hairpin   #'minimum-length = #5

  r4
  | cis1(\p\<
  | dis2)\!\f cis
  | b4(-\> ais gis' fis)-\!
  | eis4.(\p fis8 eis) r r4
  | cis1(\p\<
  | dis2)\!\f cis4( fis)
  | fis2\fz fis\p ~
  | fis eis
  | fis4 cis(-. cis-. cis)-.

  % 10
  | eis(-. eis-. eis-. eis)-.
  | fis4 cis(-. cis-. cis)-.
  | eis(-. eis-. eis-. eis)-.
  | fis2 r
  | ais1\f ~
  | ais4 gisis( ais eis)
  | fis1 ~
  | << fis2. { s2-\> s4-\! } >> r4
  | gis1\p ~
  | gis

  % 20
  | eis'8.[( gis,16)] gis'8.[( fis16)] eis8-. r r8. gis,16
  | dis'8.[( gis,16)] fis'8.[( eis16)] dis8-. r r8. gis,16
  | eis'8.[(\fz gis,16)] gis'8.[(-\> fis16)] eis4 dis-\!
  | cis1(\p
  | bis2) cis ~
  | cis1\fz\> ~
  | cis2\!\p bis
  | cis2. r4
  | gis,2\fz cis\fz
  | cis1\fz\> ~

  % 30
  | cis1\!\p ~
  | cis ~
  | cis2\pp bis
  | cis8.[( gis16)] gis'8.[( fis16)] eis8-. r r8. gis,16
  | dis'8.[( gis,16)] fis'8.[( eis16)] dis8-. r r4
  | gis1 ~
  | gis ~
  | gis ~
  | gis4-\markup { \italic "cresc." } fis8.( e16 dis4 cis)
  | bis( dis) e2

  % 40
  | dis2.\fermata r4
  | b'!1\p\<
  | cis2(\!\f b)
  | a4(-\> gis fis' e)-\!
  | dis4.( e8 dis)-. r r4
  | e,1\p
  | dis4 d2.
  | cis4 c2.
  | b4(-\< g a b)-\!
  | c2\f c4(-. c)-.

  % 50
  | << c2.\fermata { s2-\> s4-\! } >> r4
  | g'8(-.\p g-. g-. g)-. 
  g(-. g-. g-. g)-.
  | g g g g fis fis a a
  | a a g g g g g g
  | \repeat unfold 8 b
  | \repeat unfold 8 a
  | gis! \repeat unfold 7 gis
  | \repeat unfold 8 gis
  | fis-\< \repeat unfold 7 fis
  | eis! eis eis eis eis eis eis eis-\!

  % 60
  | fis\f \repeat unfold 7 fis
  | eis2 eis4(-. eis)-.
  | eis2.\fermata r4
  | cis1(\p\<
  | dis2)\!\f cis
  | b4(-\> ais gis' fis)-\!
  | eis4.(\p fis8 eis)-. r r4
  | cis1(\p\<
  | dis2)\!\f cis4( fis)
  | fis2\fz fis\p ~

  % 70
  | fis2 eis
  | fis4 r r2
  | gis2 \acciaccatura gis8 fis8.( eis16 fis8. gis16)
  | eis4 r r8 fisis8(-. gis-. ais)-.
  | b2. ais8( gis)
  | ais cis4 cis cis cis8 ~
  | cis cis4 cis cis cis8
  | ais'8.[( cis,16)] cis'8.[( b16)] ais8-. r r8. cis,16
  | gis'8.[( cis,16)] b'8.[( ais16)] gis8-. r r8. cis,16
  | ais'8.[(\fz cis,16)] cis'8.[(-\> b16)] ais4( gis)-\!

  % 80
  | fis1(\p
  | eis2) fis ~
  | fis1\fz\> ~
  | fis2\!\p eis
  | fis2. r4
  | cis,2\fz fis\fz
  | fis1\fz\>
  | fis1\!\p ~
  | fis ~
  | fis2 eis

  % 90
  | fis4 cis(-. cis-. cis)-.
  | eis(-. eis-. eis-. eis)-.
  | fis4 cis(-. cis-. cis)-.
  | eis(-. eis-. eis-. eis)-.
  | fis8-. r r4 eis8-. r r4
  | fis8-. r r4 b,8\pp r r4
  | ais r ais(-. ais)-.
  | ais1\fermata

  \bar "|."
}
