%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement II - Poco Adagio	                        *
  * Fichier de notes, Trombone 1 et 2, conductrice                      *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Trombone I                                                    *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMbTromboneI = \relative c' {

  \include "Common/Properties.ly"

  \TempoII

  \repeat unfold 9 R1
  r4 <<{a2. ~}{s4 \fp \> s4 s8 s16 s16 \!}>>

  \mark \default    % Mark A - mesure 11

  a8 \pp r r4 r2
  \repeat unfold 7 R1
  \once \override MultiMeasureRest #'staff-position = #2
  R1
  R1
  \once \override MultiMeasureRest #'staff-position = #2
  R1
  \repeat unfold 10 R1

  \mark \default    % Mark B - mesure 32

  \repeat unfold 7 R1
  r2 \partcombineApart <<{c8.-> c16 bes8-> \! g->}{%{s4 s \bracketedHairpin s \f -\tweak #'X-offset #2 \< s8 s8 \!%}}>>
  \partcombineAutomatic f'2. \ff ees8 ( des )
  bes4 ( c ) \partcombineApartOnce des2
  des4 ( ees ) f ( des ~ des ) \partcombineAutomatic aes ( c4. bes8

  \mark \default    % Mark C - mesure 44

  des8 ) r r4 r2
  \repeat unfold 10 R1
  fis2 \fz e \fz
  dis \fz bis \fz
  cis4 r r2
  R1
  cis1 %{\ppp%}
  cis2 ( d )
  cis ( b )
  <<{c2 ( cis )}{s4 s4 s4 \< s8 s16 s16 \!}>>

  \mark \default    % Mark D - mesure 63

  cis16 \f r8. r cis16-. cis-. r8. r4
  \repeat unfold 22 R1
  r2 e!2 \f
  f4 ees8 ( c ) f, ( d' ) c4->
  bes-> des-> bes8 r r4
  R1
  \partcombineApart
  <<{c2 c8-^ bes-^ g-^ c-^}{s4 %{\ff%} s4 s4 %{\<%} s8 s16 s \!}>>
  \partcombineAutomatic
  <<{f1-^ ~}{s4 \ffz s4 s4 \> s8 s16 s16 \!}>>
  f4 r r2
  \repeat unfold 11 R1
  \time 2/4
  R2
  \time 4/4
  \repeat unfold 5 R1
  \oneMMRNumberOff
  R1 ^\fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  * Trombone II                                                   *
  *****************************************************************
%}

SgMbTromboneII = \relative c {

  \include "Common/Properties.ly"

  \TempoII
  \repeat unfold 9 R1
  r4 <<{f2. ~}{s4 \fp \> s4 s8 s16 s16 \!}>>

  \mark \default    % Mark A - mesure 11

  f8 \pp r r4 r2
  \repeat unfold 7 R1
  \partcombineApart
  \tweak #'staff-position #-7 r4 des-- \pp ( des-- ) \tweak #'staff-position #-7 r
  \partcombineAutomatic
  R1
  \partcombineApart
  \tweak #'staff-position #-7 r4 des-- \pp ( des-- ) \tweak #'staff-position #-7 r
  \partcombineAutomatic
  \repeat unfold 10 R1

  \mark \default    % Mark B - mesure 32

  \repeat unfold 7 R1
  <<{r2 c'8.-> c16 bes8->  g->}{s4 s \bracketedHairpin s \f -\tweak #'X-offset #2 \< s8 s8 \!}>>
  aes2. \ff g8 ( f )
  g4 ( aes ) f ( bes )
  <<
    {bes4 ( c ) aes ( bes ~ bes ) f ( ges2

    \mark \default    % Mark C - mesure 44

    f8 ) r r4 r2} % 3 mesures
    {
      s4 s8 \once \override DynamicText #'stencil = ##f
      \dynamicSpannerOff s8 \p \dim s4 \! s4 s4 \p s8 s8 \> s4 s8 s8 \! s8 \pp
    }
  >>
  \repeat unfold 10 R1
  fis2 \fz e \fz
  dis \fz bis \fz
  cis4 r r2
  R1
  gis'2 \ppp ( a )
  ais2 ( b )
  ais ( g! )
  <<{bes!2 ( a? )}{s4 s4 s4 \< s8 s16 s16 \!}>>

  \mark \default    % Mark D - mesure 63

  ais16 \f r8. r a16-. ais-. r8. r4
  \repeat unfold 22 R1
  r2 a4-> \f bes!->
  a2 f4-> fis->
  g-> f-> g8 r r4
  R1
  <<{c2 c8-^ bes-^ g-^ c-^}{s4 \ff s4 s4 \< s8 s16 s \!}>>
  <<{a1-^ ~}{s4 \ffz s4 s4 \> s8 s16 s16 \!}>>
  a4 r r2
  \repeat unfold 11 R1
  \time 2/4
  R2
  \time 4/4
  \repeat unfold 5 R1
  \oneMMRNumberOff
  R1 ^\fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMbTromboneIAII = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Trbn." I+II}}
  \set Staff.midiInstrument = "trombone"
  \key f \major
  \clef alto
  \partcombine \SgMbTromboneI \SgMbTromboneII
}

