%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement III - Scherzo Vivace                      *
  * Fichier de notes, piccolo, directrice                               *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  *     Piccolo                                                 *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMcPiccolo = \relative c''' {

  \include "Common/Properties.ly"

  \tag #'partScore
    \cueEventType

  \TempoIII

  s2 s4
  \repeat unfold 70 s1 * 6/4
  % La flûte se édouble en cet endroit
  % !!! selon la longueur du système, il convient de modifier la position des \break, et simultanément,
  % les reports de la seconde flûte sur le piccolo
  \break
  d4-.r r ^\markup {"[II muta in Flauto piccolo]"} r2 r4
  R1 * 6/4
  \transposition c''
  \set Staff.shortInstrumentName = \markup {"Picc."}
  \set Staff.midiInstrument = "piccolo"
  g,4-. \mp a-. \< b-. c-. b-. bes-. \!
  a8 \f ( bes a4 ) g8 \dim ( a g4 ) f8 ( a ) a4-. \!
  \mark \default  % Mark A
  d,4 r ^\markup {"[Muta in Flauto II (Gr. Fl.)]"} r r2 r4
  \repeat unfold 2 R1 * 6/4
  % piccolo redevient flûte 2 - on force un \break
  \break
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcPiccolo = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 "Piccolo"}
  \set Staff.shortInstrumentName = \markup {"Fl.II"}
  \set Staff.midiInstrument = "flute"
  \clef treble
  \SgMcPiccolo
}

quoteScoreSgMcPiccolo = \SgMcPiccolo
