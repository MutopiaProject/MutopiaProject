%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Sérénade n°1 mouvement 1, Allegro molto                             *
  * Définition des titres                                               *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
\include "Common/Version.ly"
\header {
  title = \markup {\fontsize #7 \thisWork}
  subtitle = \markup {
    \left-align
    \column
    \center-align {\lower #4 \concat { \fontsize #6 \thisOrchester \hspace #2 \fontsize #6 \thisTonality}}
 }
  composer = \markup \center-column {\fontsize #5 \thisComposer}
  opus = \markup \center-column {\fontsize #4 \lower #3 \thisOpus}
  subsubtitle = \markup {
    \left-align
    \column
    \center-align {\fontsize #6 \lower #6 "-- I --"}
 }
  
  % Pour publication dans MUTOPIA
  mutopiatitle = "Symphony Nr. 7"
  mutopiatitle = "DvořákA"
  mutopiaopus = "Op.70"
  mutopiainstrument = "for Orchestra"
  date = "1885"
  source = "O. Šourek, Plate H 1535"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "J.F. Lucarelli"
  maintainerEmail = "j-f.lucarelli@espace-midi.com"
  maintainerWeb = "http://www.espace-midi.com"
  moreInfo = "Compiled with LilyPond 2.16.2 - Unzip using the original directory structure"
}

