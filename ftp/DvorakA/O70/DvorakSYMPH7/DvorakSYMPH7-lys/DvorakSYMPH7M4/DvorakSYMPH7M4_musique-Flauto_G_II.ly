%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7	: mouvement IV - Finale allegro                       *
  * Fichier de notes, Flûte 2, directrice, passage sur 2 portées        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  *	Flûte II                                                      *
  *****************************************************************
%}

SgMdFlautoIIB = \relative c''' {

  \include "Common/Properties.ly"
  \repeat unfold 254 R1
  % Séparation des flûtes, un \break est ajouté
  \break
  \repeat unfold 4 R1
  <<{g,2 ( d'}{s2 \p s4 \< s8 s \!}>>
  des2. \> bes4 \! )
  g4 ( a bes \< g8 d! \!
  <<{ees1 )}{s4 \fp \> s s s \!}>>
  \hairpinToBarLineFalse
  g2 \< ( d'
  f \! ees4 \> d )
  f2 ( ees4 \! des
  bes \pp g ees ees' ~
  ees4 ) r aes,2 \pp ~
  aes aes ~
  aes aes ~
  aes aes ~
  aes gis! ~
  gis gis ~
  gis gis ~
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  gis2 \< gis ~
  gis b ~
  b b ~
  b4 d2 <<{b4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  b4 \< d2 b4 ~
  b d2 b4 ~
  b f'2 gis4 \!
  % Les flûtes se rejoignent, ajout forcé d'un \break
  \break
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdFlautoIIB = \new Voice {
  \time 2/2
  \key a \minor
  \set Staff.shortInstrumentName = \markup {"Fl. II"}
  \set Staff.midiInstrument = "flute"
  \clef treble
  \SgMdFlautoIIB
}

