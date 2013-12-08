\version "2.16.1"

\header {
  title = "Chant de guerre pour l'Armée du Rhin"
  subtitle = "Dédié au Maréchal Lukner"
  subsubtitle = "(La Marseillaise)"
  composer = "Claude Joseph Rouget de Lisle (1760-1836)"
  poet = "Claude Joseph Rouget de Lisle (1760-1836)"
  copyright = "Public Domain"
  % Supprimer le pied de page par défaut

  mutopiacomposer = "RougetdeLisleCJ"
  mutopiapoet = "RougetdeLisleCJ"
  mutopiainstrument = "harpsichord, voice"
  date = "1792"
  source = "Bignon 1792"
  style = "March"
  maintainer = "Coyau"
  moreInfo = "Scan: http://catalogue.bnf.fr/ark:/12148/cb397916744"

 footer = "Mutopia-2013/12/08-1891"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global = {
  \key c \major
  \time 2/2
  \partial 2
  \tempo "Temps de marche animée"
}

melody = \relative c'' {
  \global
  \autoBeamOff
  r8\mf r16 g e8. g16
  c4 c d d
  g4.( f8) e r16 c e8. c16
  a4 f'2 d8. b16
  c2 r4 c8.\cresc d16
  e4 e e f8. e16
  e4 d8 r r4 d8.\f e16
  f4 f f g8. f16
  \appoggiatura f8 e2 r4 g8.\ff g16
  g4( e8.) c16 g'4 e8. c16
  g2 r8\p r16 g g8.\cresc g16
  b4. d8 f4. d8
  d[ c] c r r4 aes\f
  g c8. c16 c4 b8. c16
  d2 r4 d\p
  ees4.\cresc ees8 ees ees f g
  d2 r4 ees8\f d
  c4 c ees d8. c16
  c4 b8 r r4 r8 r16 g'\ff
  g2\<~ g8\! e c8. c16
  d2 r4 r8 r16 g
  g2~ g8 e c8. c16
  d2 r4 g,\p
  c2\< r4\! c
  e2\< r\!
  f\f g4 a
  b,2 r4 r8 r16 a'\ff
  g2~ g8 e f d
  c2 r2
  R1*6 r2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  Al -- lons En -- fants de la Pa -- tri -- e_!
  Le jour de gloire est ar -- ri -- vé.
  Con -- tre nous de la ty -- ran -- ni -- e
  L'É -- ten -- dart san -- glant est le -- vé,
  L'É -- ten -- dart san -- glant est le -- vé,
  En -- ten -- dez -vous dans les Cam -- pa -- gnes,
  Mu -- gir ces fé -- ro -- ces sol -- dats_?
  Ils vien -- nent jus -- que dans vos bras,
  É -- gor -- ger vos fils, vos Com -- pa -- gnes_!...

  Aux a -- rmes, Ci -- to -- yens_!
  For -- mez vos ba -- tail -- lons_:
  Mar -- chez, mar -- chez_!
  Qu’un sang im -- pur
  A -- breu -- ve nos sil -- lons_!
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Que veut cet -- te hor -- de d'es -- cla -- ves
  De trai -- tres, de Rois con -- ju -- rés_?
  Pour qui ces i -- gno -- bles en -- tra -- ves,
  Ces fers dès long -- temps pré -- pa -- rés_?
  Ces fers dès long -- temps pré -- pa -- rés_?
  Fran -- çais_! pour nous, ah_! quel ou -- tra -- ge_!
  Quels trans -- ports il doit ex -- ci -- ter_?
  C'est nous qu'on o -- se mé -- di -- ter
  De rendre à l'an -- ti -- que es -- cla -- vage_!...

  Aux a -- rmes, Ci -- to -- yens_!
  For -- mez vos ba -- tail -- lons_:
  Mar -- chez, mar -- chez_!
  Qu’un sang im -- pur
  A -- breu -- ve nos sil -- lons_!
}

verseThree = \lyricmode {
  \set stanza = "3."
  Quoi ces co -- hor -- tes é -- tran -- gè -- res
  Fe -- roient la loi dans nos fo -- yers_!
  Quoi ces pha -- lan -- ges mer -- ce -- nai -- res
  Ter -- ras -- se -- raient nos fiers guer -- riers_!
  Ter -- ras -- se -- raient nos fiers guer -- riers_!
  Grands Di -- eux_!... Par des mains en -- chaî -- nées,
  Nos fronts sous le joug plo -- i -- raient
  Des vils des -- po -- tes de -- vien -- draient
  Les maî -- tres de nos des -- ti -- né -- es_!...

  Aux a -- rmes, Ci -- to -- yens_!
  For -- mez vos ba -- tail -- lons_:
  Mar -- chez, mar -- chez_!
  Qu’un sang im -- pur
  A -- breu -- ve nos sil -- lons_!
}

verseFour = \lyricmode {
  \set stanza = "4."
  Trem -- blez, Ti -- rans_! et vous, per -- fi -- des,
  L'o -- pro -- bre de tous les par -- tis,
  Trem -- blez_!... vos pro -- jets par -- ri -- ci -- des
  Vont en -- fin re -- ce -- voir leur prix.
  Vont en -- fin re -- ce -- voir leur prix.
  Tout est Sol -- dat pour vous com -- ba -- tre.
  S'ils tom -- bent nos jeu -- nes Hé -- ros,
  La terre en pro -- duit de nou -- veaux
  Con -- tre vous tous prèts à se bat -- tre.

  Aux a -- rmes, Ci -- to -- yens_!
  For -- mez vos ba -- tail -- lons_:
  Mar -- chez, mar -- chez_!
  Qu’un sang im -- pur
  A -- breu -- ve nos sil -- lons_!
}

verseFive = \lyricmode {
  \set stanza = "5."
  Fran -- çais_! en guer -- riers ma -- gna -- ni -- mes,
  Por -- tez_! ou re -- te -- nez vos coups,
  É -- par -- gnez ces tris -- tes vic -- ti -- mes
  À re -- grêt s'ar -- mant con -- tre tous,
  A re -- grêt s'ar -- mant con -- tre tous,
  Mais le des -- po -- te san -- gui -- nai -- re_!
  Mais les com -- pli -- ces de Boui -- llé_!
  Tous ces tig -- res qui sans pi -- tié
  Dé -- chi -- rent le sein de leur mè -- re

  Aux a -- rmes, Ci -- to -- yens_!
  For -- mez vos ba -- tail -- lons_:
  Mar -- chez, mar -- chez_!
  Qu’un sang im -- pur
  A -- breu -- ve nos sil -- lons_!
}

verseSix = \lyricmode {
  \set stanza = "6."
  A -- mour sa -- cré de la Pa -- tri -- e,
  Con -- duis, sou -- tiens nos braves ven -- geurs.
  Li -- ber -- té_! Li -- ber -- té ché -- ri -- e
  Com -- bats a -- vec tes dé -- fen -- seurs_:
  Com -- bats a -- vec tes dé -- fen -- seurs_:
  Sous nos dra -- peaux que la vic -- toi -- re
  Ac -- coure à tes mâ -- les ac -- cents,
  Que tes en -- ne -- mis ex -- pi -- rans
  Voient ton tri -- omphe et no -- tre gloi -- re.

  Aux a -- rmes, Ci -- to -- yens_!
  For -- mez vos ba -- tail -- lons_:
  Mar -- chez, mar -- chez_!
  Qu’un sang im -- pur
  A -- breu -- ve nos sil -- lons_!
}

right = \relative c'' {
  \global
  r8\mf r16 <e, g>16 <e g>8. <d g>16
  <e g c>4 <e g c> <g b d> <g b d>
  <c e g>4.( <b d f>8) <c e>8[ r16 <g e'>] <g e'>8. <bes g'>16
  <a f'>4 <a f'>2 <b f'>4
  <c e>16[ c b c] d c b c c4 b8.\cresc d16
  <c e>4 <c e> <c e> <d f>8. <c e>16
  d16[ g fis g] a g fis g g,8[ <b d>] <b d>8.\f <c e>16
  <d f>4 <d f> <d f> <e g>8. <d f>16
  \appoggiatura <d f>8 <c e>16[ c b c] d c b c c4 <g g'>8.\ff <g g'>16
  <g g'>4( <e e'>8.) <c c'>16 <g' g'>4( <e e'>8.) <c c'>16
  <g' g'>16[ g' fis e] d c b a g8.\p g16\cresc g8. g16
  <b d g>4. <g d'>8 <g f'>4. <f d'>8
  <f d'>8 <e c'> <e c'>4 r <aes e'>\f
  <g e'> <c e>8. <c e>16 <c e>4 <b d>8. c16
  g[ g' fis g] a g fis g g,4 d'\p
  ees4.\cresc ees8 ees ees ees <ees g>
  <b d g> <b d> <b d> <b d> <b d>4 <c ees>8\f <g d'>
  <g c>4 <c ees> <ees g> <d f>8. <c ees>16
  <c ees>4 <b d>8 r r4 r8 r16 <g g'>\ff
  <g g'>2 ~ <g g'>8[ <e' g>] <c e>8. <c e>16
  <g d'>8 g' g g g4 r8 r16 <g, g'>
  <g g'>2 ~ <g g'>8.[ <e' g>16] <c e>8. <c e>16
  <b d>8 g' g g g4 r8\p <g, g'>
  e' c c b a[ a'16 g] a8 b
  c <c, e> <c e> <c e> <c e>4 r
  <d f>2 <d g>4. <c a'>8
  <g g'>8 g g g g[ b d r16 f]\ff
  <c e>2 ~ <c e>8[ <e, c'>] <f d'> <d b'>
  <e c'>4^\markup { \italic {Ritournelle.}} c'8. c16 <g d'>4 <g d'>8. <g d'>16
  <c e>8[ e16 f] g8 g g f e d
  <e, c'>[ <e c'>16 <e c'>] <e c'>8 <e c'> <g d'>[ <g d'>16 <g d'>] <g d'>8 <g d'>
  <c e>[ e16 f] g8 g g f e d
  <c e>[  <c e>16 <d f>] <e g>8 <e g> <e g> <d f> <c e> <b d>
  <c e>[ a'16 b] c8 a g f e d
  c[ <e, g c>16 <e g c>] <e g c>8 <e g c> <e g c>2
  <e g c>
}

left = \relative c' {
  \global
  r8 r16 c,16 e8. g16
  c,4 c' b g
  c8 c g e c e c e
  d4 d2 g4
  c g c, r
  r c e c
  g' d g r
  r g\f b g
  c g c, g'8.\ff g16
  g4( e8.) c16 g'4( e8.) c16
  g'4 g, g8\p b d f
  g g b, g' b, g' b, g'
  a, c' g e c4 <c c'>\f
  <c c'>2. r8 fis
  g4 d g, <g' b>\p
  <g c>4. c8 c c d c
  b a g f ees4 g8\f f
  ees4 g c8[ c,] f8. fis16
  g8 g d b g4 r8 r16 g'\ff
  g2 ~ g8[ c,] e8. c16
  g8 g' g g g4 r8 r16 g
  g2 ~ g8[ c,] e8. c16
  g8 g' d b g4 g\p %coquille première note
  r8 c e g e c e g
  c c,e g e c e g
  f2\f f4. e8
  g g g f e4 r8 d\ff
  c4 e g g,
  c c' g g,
  c e g g,
  c8 e g c g, b d g
  c,4 e g g,
  c e g g,
  c f d g
  c, c' g e
  c2 \bar "|."
}

leadSheetPart = \new Staff \with {
  instrumentName = "Chant"
  midiInstrument = "synth voice"
}  { \melody }
\addlyrics { \verseOne }
\addlyrics { \verseTwo }
\addlyrics { \verseThree }
\addlyrics { \verseFour }
\addlyrics { \verseFive }
\addlyrics { \verseSix }

harpsichordPart = \new PianoStaff \with {
  instrumentName = "Clavecin"
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  } { \clef bass \left }
>>

\score {
  <<
    \leadSheetPart
    \harpsichordPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
