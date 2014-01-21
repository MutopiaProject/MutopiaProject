%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement IV - Finale allegro                       *
  * Fichier de notes, Trombone 1 et 2, directrice                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  *     Trombone I                                              *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMdTromboneI = \relative c' {

  \include "Common/Properties.ly"

  \TempoIV
  \repeat unfold 41 R1
  R1	% insérer ici une citation du violon 1
  \mark \default
  f1-^ %{\ff%} ~
  f
  cis4 r r d
  d r cis r
  f r ees r
  cis r r2
  f4 r d r
  cis r r2
  e4 r ees r
  d r r2
  c4 r e! r dis r r2
  dis4 r e r
  cis r r2
  a4 r cis r
  cis1-^ \ff
  cis-^ ~
  cis ~
  cis4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 6 R1
  r4 d2-> ( cis4 )
  d2. ( e4 )
  f ( e ) a, ( d )
  \partcombineApart
  cis4-. d-. cis2->
  \partcombineAutomatic
  \repeat unfold 2 R1
  c2-> \ff c->
  ees2.-> r4
  R1
  r2 \partcombineApartOnce d4 r d2-> \ff d->
  d2.-> r4
  R1
  r2 e4 \f r
  cis4 r r2
  R1
  \mark \default
  \repeat unfold 15 R1
  \mark \default
  \bar "||"
  \key a \major
  \repeat unfold 22 R1
  \mark \default
  \repeat unfold 5 R1	% insérer ici une citation de 5 mesures des hautbois-flûtes
  cis4 \f r b r
  cis r d r
  cis r r2
  \repeat unfold 7 R1
  c4 \f r d r
  c r d r
  e r b r
  c r b r
  c r e-. d-.
  c r d r
  c r f r
  a r gis! r
  \mark \default
  \bar "||"
  \key a \minor
  a4 r r2
  R1
  dis,1-^ ( \fz \> ~
  <<{dis1}{s4 s4 s4 s8 s8 \!}>>
  e4 ) r r2
  R1
  dis1 ( ~
  dis
  e4 ) r r2
  \repeat unfold 9 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \TempoIVIT
  \repeat unfold 3 R1
  aes,1 (
  ces2. aes4
  a1 ~
  a4 ) r r2
  \repeat unfold 4 R1
  a1 (
  c2. a4
  ais1 ~
  ais4 ) r r2
  \repeat unfold 22 R1
  \repeat unfold 2 R1	% insérer ici une citation de 2 mesures du violon I
  \mark \default
  e1-^ \f ~
  e2 e4. e8
  e'1-^ \fz
  b-^ \fz
  \repeat unfold 4 R1
  e1-^ \ff
  \repeat unfold 3 R1
  f!1-^ \ff
  \repeat unfold 5 R1
  \mark \default
  \repeat unfold 6 R1
  \partcombineApart f,1 \fz
  b \fz
  bes \fz
  e! \fz
  \partcombineApart
  \repeat unfold 7 R1
  \partcombineAutomatic
  \repeat unfold 7 R1
  \mark \default
  a,1 ~
  a ~
  a4 r r2
  \repeat unfold 5 R1
  \tieUp
  \partcombineApart bes1 \ppp ~
  bes ~
  bes4 \partcombineAutomatic r r2
  \tieNeutral
  \repeat unfold 15 R1
  \repeat unfold 4 R1	% insérer ici une citation de 4 mesures du violon I
  \bar "||"
  \mark \default
  \key d \minor
  d1 \ff ~
  d4 r r2
  \repeat unfold 2 R1
  r2 r4 cis \f
  d r ees r
  cis r r2
  \repeat unfold 13 R1
  \mark \default
  \repeat unfold 15 R1
  \bar "||"
  \key d \major
  \repeat unfold 22 R1
  \mark \default
  \repeat unfold 11 R1
  \repeat unfold 4 R1	% insérer ici une citation de 4 mesures du violon I
  c4 \f r cis r
  d r e r
  f r e r
  d r cis! r d r c-.cis-.
  d r e r
  f r ees r
  f r cis! r
  \mark \default
  \bar "||"
  \key d \minor
  d4 r r2
  R1
  gis1 ( \fz ~
  <<{gis1}{s4 \> s s s8 s8 \!}>>
  a4 ) r r2
  R1
  <<{gis1 ( ~}{s4 \> s s s8 s8 \!}>>
  gis1
  a4 ) \f r8 f d4. f8
  cis1-^
  c!4. ees8 c4. ees8
  c1-^
  b4. \f d8 b4. d8
  b1-^
  bes!4. \f d8 bes4. d8
  bes1-^
  d1-^ \fz
  b-^ \fz
  \mark \default
  \partcombineApartOnce a4 r r2
  \repeat unfold 5 R1
  ees'2 \ff r
  ees \ff r
  ees4 r r2
  \repeat unfold 4 R1
  d1 -^ \ffz ~
  d
  c!-^ \ffz ~
  c
  b-^ \ffz ~
  b
  bes-^ \ffz ~
  bes
  a2-> d->
  bes c
  bes c
  ees2. r4
  \repeat unfold 3 R1
  \mark \default
  \repeat unfold 3 R1
  \TempoIVPAn
  d1-^\ff
  bes-^
  d-^
  bes-^
  d2 r
  \repeat unfold 6 R1
  d4 \f r d r
  d r d r
  d r d r
  d r d r
  \TempoIVMMaes
  d r r2
  a2-^ \ff c-^ ~
  c bes4-^ a-^
  bes1-^
  a-^
  bes-^
  d-^ \fz
  d-^ \fz
  d-^ \fz
  d4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  *    Trombone II                                              *
  ***************************************************************
%}

SgMdTromboneII = \relative c' {

  \include "Common/Properties.ly"

  \TempoIV
  \repeat unfold 41 R1
  R1	% insérer ici une citation du violon 1
  \mark \default
  b1%{-^%} \ff
  bes2 -^ a-^
  a4 r r bes
  bes r a r
  a r bes r
  e,4 r r2
  a4 r bes r
  e, r r2
  cis'4 r c r
  c r r2
  a4 r c r
  a r r2
  a4 r a r
  a r r2
  g4 r a r
  a1-^ \ff
  a-^ ~
  a ~
  a4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 6 R1
  r4 f-. \ff bes-. a-.
  d,-. e-. f-. g-.
  f-. c'-. d-. bes-.
  a-. a-. a2->
  \repeat unfold 2 R1
  a2-> a->
  c2.-> r4
  R1
  r2 \partcombineApartOnce d4 \f r
  bes2-> \ff bes->
  b2.-> r4
  R1
  r2 e,4 \f r
  e r r2
  R1
  \mark \default
  \repeat unfold 15 R1
  \mark \default
  \bar "||"
  \key a \major
  \repeat unfold 22 R1
  \mark \default
  \repeat unfold 5 R1	% insérer ici une citation de 5 mesures des hautbois-flûtes
  a4 \f r a r
  a r gis r
  a r r2
  \repeat unfold 7 R1
  g4 r gis r
  a r f r
  g r f r
  a r gis r
  a r g?-. gis-.
  a r f r
  g r bes r
  c r b! r
  \mark \default
  \bar "||"
  \key a \minor
  c! r r2
  R1
  bis1-^ \fz \> ( ~
  <<{bis1}{s4 s4 s4 s8 s8 \!}>>
  cis4 ) r r2
  R1
  c!1 \pp ~
  c1 ~
  c4 r r2
  \repeat unfold 9 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \TempoIVIT
  \repeat unfold 3 R1
  ces,1 \ppp ~
  ces (
  c! ) ~
  c4 r r2
  \repeat unfold 4 R1
  c1 \ppp ~
  c (
  cis ) ~
  cis4 r r2
  \repeat unfold 22 R1
  \repeat unfold 2 R1	% insérer ici une citation de 2 mesures du violon I
  \mark \default
  e1-^ \f ~
  e2 e4. e8
  e'1-^ \aII \aIIP \fz
  b-^ \fz
  \repeat unfold 4 R1
  b1-^ \ff
  \repeat unfold 3 R1
  d1-^ \ff
  \repeat unfold 5 R1
  \mark \default
  \repeat unfold 6 R1
  \override MultiMeasureRest #'staff-position = #-4
  \repeat unfold 4 R1	% citation de trombone I
  \revert MultiMeasureRest #'staff-position
  ees,1 \fz
  a! \fz
  aes \fz
  d! \fz
  \override Rest #'staff-position = #-0.5
  cis4 \aIIP \f r cis r
  cis \aII r cis r
  \override Rest #'staff-position = #-0.5
  cis r \override Rest #'staff-position = #-2 r2
  \repeat unfold 7 R1
  \mark \default
  cis,1 \ppp (
  d
  cis4 ) r r2
  \repeat unfold 5 R1
  d1 \ppp _(
  ees
  d4 ) r r2
  \repeat unfold 15 R1
  \repeat unfold 4 R1	% insérer ici une citation de 4 mesures du violon I
  \bar "||"
  \mark \default
  \tieNeutral
  \key d \minor
  f1 \ff ~
  f4 r r2
  \repeat unfold 2 R1
  r2 r4 a \f
  a r bes r
  a r r2
  \repeat unfold 13 R1
  \mark \default
  \repeat unfold 15 R1
  \bar "||"
  \key d \major
  \repeat unfold 22 R1
  \mark \default
  \repeat unfold 11 R1
  \repeat unfold 4 R1	% insérer ici une citation de 4 mesures du violon I
  a4 \f r g r
  f r g r
  a r bes r
  f r e r
  f r a-. g-.
  f r g r
  a r bes r
  d r a r
  \mark \default
  \bar "||"
  \key d \minor
  a r r2
  R1
  b1 \fz ( ~
  <<{b1}{s4 \> s s s8 s \!}>>
  c4 \p ) r r2
  R1
  <<{bes! ( ~}{s4 \fz \> s s s8 s \!}>>
  bes1
  a4 ) \f r8 f' d4. f8
  cis1-^ \aIIP
  c4.  ees8 c4. ees8
  c1-^
  b4. \f d8 b4. d8
  b1-^ \aII
  bes!4. \f d8 bes4. d8
  bes1-^
  f-^ \fz
  gis-^ \fz
  \mark \default
  \partcombineApartOnce a4 r r2
  \repeat unfold 5 R1
  c2 \ff r
  c2 \ff r
  c4 r r2
  \repeat unfold 4 R1
  d1-^ \ffz ~
  d \aIIP
  c-^ \ffz ~
  c 
  b-^ \ffz ~
  b
  bes-^ \aII \ffz ~
  bes
  a2-> d->
  g, fis
  g fis
  bes2. r4
  \repeat unfold 3 R1
  \mark \default
  \repeat unfold 3 R1
  \TempoIVPAn
  d1-^\ff
  bes-^
  d-^ \aII \aIIP
  bes-^ 
  d2 r
  \repeat unfold 6 R1
  d,4 \f r d r
  d r d r
  d r d r
  d r d r
  \TempoIVMMaes
  d r r2
  fis2-^ \ff a-^
  g1-^
  g1-^
  fis-^
  g-^
  fis-^ \fz
  fis-^ \fz
  fis-^ \fz
  fis4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdTromboneIAII = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Trbn." I+II}}
  \set Staff.midiInstrument = "trombone"
  \key d \minor
  \clef alto
  \partcombine \SgMdTromboneI \SgMdTromboneII
}

