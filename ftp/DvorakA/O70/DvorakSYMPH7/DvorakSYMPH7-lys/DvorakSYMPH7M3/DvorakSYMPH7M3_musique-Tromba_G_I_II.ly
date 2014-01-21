%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7	: mouvement III - Scherzo Vivace                      *
  * Fichier de notes, Trompettes I et II, directrice                    *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  *	Trompette I                                                   *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMcTrombaI = \relative c'' {

  \include "Common/Properties.ly"

  \TempoIII
  \transposition c'
  r2 r4
  \repeat unfold 7 R1 * 6/4
  a2 \mf r4 a2 \dim r4
  a2 \p r4 r2 r4
  \repeat unfold 12 R1 * 6/4
  \repeat unfold 3 R1 * 6/4	% insérer ici une citation de 3 mesures des cors I et II
  \mark \default  % Mark A
  % suite à un bug de la commande \partcombine, il faut décaler très légèrement le crescendo (aux deux parties)
  d4 \mf r r r2 <<{a4}{s64 s64 \cresc}>>
  d4 r r r2 a4
  d \ff r d r d-. a-.
  d r d r d-. a-.

  d r r r2 r4
  \repeat unfold 3 R1 * 6/4
  d4 \f r r r2 r4
  a4 r r r2 r4
  d4 r r r2 r4
  d2 \ff d4-. d2 d4-.
  d2 d4-. d2 d4-.
  d4-. r bes-. r bes-. r
  a-. r a-. r a-. r
  a-. r a-. r2 r4
  a4 \f \dim r a4 r8 a a4 \p a
  a r a r8 a \> a4 \! a
  \repeat unfold 7 R1 * 6/4
  \mark \default  % Mark A
  r4 a8 \mf a a4 r a8 \p a a4
  r a-. r r2 r4
  r a8 \p a a4 r a8 a a4
  a r r r2 r4
  a \pp r r a r r
  a r r r2 r4
  \repeat unfold 4 R1 * 6/4
  \mark \default  % Mark A
  d4 \f r d r8 d d4 d
  d4 r d r8 d d4 d
  d4 r d r8 d d4 d
  c4 r c r8 c c4 c
  c2. \f ~ c4 r r
  bes2. ~ bes4 r r
  a2-^ \ff d-^ d4-. a-.
  d-. r r r2 a4-.
  d-. r r r2 a4-.
  d \ff r d r d-. a-.
  d r d r d-. a-.
  d r r r2 r4
  \repeat unfold 3 R1 * 6/4
  \mark \default  % Mark A
  d2 \ff d d
  a4 r a r d r
  d r r r2 r4
  R1 * 6/4
  r2 r4 r2 a4 %{\ff%}
  a r a r a r
  e' r a, r a r
  e' r r r2 r4
  a2. \ff ~ a2 a4-.
  d,2.-^ d-^
  d-^ a-^
  d4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d \fz d d \fz d d \fz d
  d \fz d d \fz d d \fz d
  d r r d r r
  <<{d,1. ~}{s2. \> s2 s4 \!}>>
  \bar "||"
  \TempoIIIMM
  d4 r r r2 r4
  \repeat unfold 11 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 24 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 20 R1 * 6/4
  \mark \default  % Mark A
  R1 * 6/4
  \repeat unfold 2 R1 * 6/4	% insérer ici une citation de 2 mesures des cors I et II
  \rightDynamic bes'4 \pp \Solo \< ( c4. d8 \! ) d4 ( \> c4. bes8 ) \!
  d4 r r r2 r4
  \repeat unfold 5 R1 * 6/4
  \TempoIIIAcc
  \repeat unfold 4 R1 * 6/4
  \TempoIIIViv
  \repeat unfold 4 R1 * 6/4
  \mark \default  % Mark A
  a4 \f r a r8 a a4 a
  a4 r a r8 a a4 a
  a4 a r a a r
  a a r a a r
  a r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \bar "||"
  \repeat unfold 7 R1 * 6/4
  a2 \mf r4 a2 r4
  a4 \p r r r2 r4
  \repeat unfold 8 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 7 R1 * 6/4
  \partcombineAutomatic
  d4 \mf r r r2 <<{\partcombineApartOnce a4}{%{\dynamicSpannerOff s8 -\tweak #'stencil ##f \mf \cresc s \!%}}>>
  d4 r r r2 \partcombineApartOnce a4 \!
  d \ff r d r d-. \partcombineApartOnce a-.
  d r d r d-. \partcombineApartOnce a-.
  d-. \partcombineApartOnce a-. d-. \partcombineApartOnce a-. d-. \partcombineApartOnce a-.
  d-. \partcombineApartOnce a-. d-. \dim \partcombineApartOnce a-. d-. \partcombineApartOnce a-.
  d \! r r r2 r4
  \repeat unfold 5 R1 * 6/4
  \mark \default  % Mark A
  \partcombineApart
  d4-. %{\pp \<%} a-. d-. a-. d-. a-.
  d-. a-. d-. a-. d-. a-. \!
  \partcombineAutomatic
  d \f r r r2 r4
  \repeat unfold 15 R1 * 6/4
  \TempoIIIPPr
  \repeat unfold 6 R1 * 6/4
  \TempoIIIiT
  \repeat unfold 4 R1 * 6/4	% insérer ici une citation de 4 mesures des violoncelles
  \mark \default  % Mark A
  d2 \ff d d
  a4 r a r d r
  d r r r2 r4
  R1 * 6/4
  r2 r4 r2 a4 %{\ff%}
  a r a r a r
  e' r a, r a r
  e' r r r2 r4
  a2. \ff ~ a2 a4-.
  d,2.-^ d-^
  d-^ a-^
  d4 r d d d d
  d r d d d d
  d \fz d d \fz d d \fz d
  d \fz d d \fz d d \fz d
  d r d r8 d d4 d
  d r r d r r
  d r r r2 r4
  \bar "|."
}

%{
  *****************************************************************
  *	Trompette II                             *
  *****************************************************************
%}

SgMcTrombaII = \relative c'{

  \include "Common/Properties.ly"

  \TempoIII
  \transposition c'
  r2 r4
  \repeat unfold 7 R1 * 6/4
  a2 \mf r4 a2 \dim r4
  a2 \p r4 r2 r4
  \repeat unfold 12 R1 * 6/4
  \repeat unfold 3 R1 * 6/4	% insérer ici une citation de 3 mesures des cors I et II
  \mark \default  % Mark A
  % suite à un bug de la commande \partcombine, il faut décaler très légèrement le crescendo (aux deux parties)
  d4 \mf r r r2 <<{\partcombineApartOnce a'4}{s64 s64 \cresc}>>
  d,4 r r r2 \partcombineApartOnce a'4
  d, \ff r d r d-. \partcombineApartOnce a'-.
  d, r d r d-. \partcombineApartOnce a'-.
  d, r r r2 r4
  \repeat unfold 3 R1 * 6/4
  d4 \f r r r2 r4
  \partcombineApartOnce a'4 r r r2 r4
  d,4 r r r2 r4
  d2 \ff d4-. d2 d4-.
  d2 d4-. d2 d4-.
  d4-. r g-. r g-. r
  a-. r a-. r a-. r
  a-. \aII r a-. r2 r4
  a4 \f \dim r a4 r8 a a4 \p a
  a r a r8 a \> a4 \! a
  \repeat unfold 7 R1 * 6/4
  \mark \default  % Mark A
  r4 a,8 \mf a a4 r a8 \p a a4
  r a-. r r2 r4
  r a8 \p a a4 r a8 a a4
  a r r r2 r4
  a \pp r r a r r
  a r r r2 r4
  \repeat unfold 4 R1 * 6/4
  \mark \default  % Mark A
  d4 \f r d r8 d d4 d
  d4 r d r8 d d4 d
  d4 r d r8 d d4 d
  c4 r c r8 c c4 c
  c2. \f ~ c4 r r
  bes2. ~ bes4 r r
  a2-^ \ff d-^ d4-. \partcombineApartOnce a'-.
  d,-. r r r2 \partcombineApartOnce a'4-.
  d,-. r r r2 \partcombineApartOnce a'4-.
  d, \ff r d r d-. \partcombineApartOnce a'-.
  d, r d r d-. \partcombineApartOnce a'-.
  d, r r r2 r4
  \repeat unfold 3 R1 * 6/4
  \mark \default  % Mark A
  d2 \ff d d
  \partcombineApartOnce a'4 r \partcombineApartOnce a r d, r
  d r r r2 r4
  R1 * 6/4
  r2 r4 r2 \partcombineApartOnce a'4 \ff
  \partcombineApartOnce a r \partcombineApartOnce a r \partcombineApartOnce a r
  e r \partcombineApartOnce a r \partcombineApartOnce a r
  e r r r2 r4
  a2. \ff ~ a2 a4-.
  d,2.-^ d-^
  d-^ e-^
  d4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d \fz d d \fz d d \fz d
  d \fz d d \fz d d \fz d
  d r r d r r
  <<{d1. ~}{s2. \> s2 s4 \!}>>
  \bar "||"
  \TempoIIIMM
  d4 \aII \aIIP r r r2 r4
  \repeat unfold 11 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 24 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 20 R1 * 6/4
  \mark \default  % Mark A
  R1 * 6/4
  \repeat unfold 2 R1 * 6/4	% insérer ici une citation de 2 mesures des cors I et II
  \rightDynamic d4 \pp \< ( f4. bes!8 \! ) bes4 ( \> f4. d8 ) \!
  d4 r r r2 r4
  \repeat unfold 5 R1 * 6/4
  \TempoIIIAcc
  \repeat unfold 4 R1 * 6/4
  \TempoIIIViv
  \repeat unfold 4 R1 * 6/4
  \mark \default  % Mark A
  a'4 \f r a r8 a a4 a
  a4 r a r8 a a4 a
  a4 a r a a r
  a a r a a r
  a r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \bar "||"
  \repeat unfold 7 R1 * 6/4
  a,2 \mf r4 a2 r4
  a4 \p r r r2 r4
  \repeat unfold 8 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 7 R1 * 6/4
  d4 \mf r r r2 \dynamicSpannerOff  <<{a'4}{s8 -\tweak #'stencil ##f \mf \cresc s \!}>>
  d,4 r r r2 a'4 \!
  d, \ff r d r d-. a'-.
  d, r d r d-. a'-.
  d,-. a'-. d,-. a'-. d,-. a'-.
  d,-. a'-. d,-. \dim a'-. d,-. a'-.
  d, \! r r r2 r4
  \repeat unfold 5 R1 * 6/4
  \mark \default  % Mark A
  \once \override NoteColumn #'force-hshift = #0 \tweak Stem #'direction #UP d4-. \pp \< a'-.
    \once \override NoteColumn #'force-hshift = #0 \tweak Stem #'direction #UP d,-. a'-.
    \once \override NoteColumn #'force-hshift = #0 \tweak Stem #'direction #UP d,-. a'-.
  \once \override NoteColumn #'force-hshift = #0 \tweak Stem #'direction #UP d,-. a'-.
    \once \override NoteColumn #'force-hshift = #0 \tweak Stem #'direction #UP d,-. a'-.
    \once \override NoteColumn #'force-hshift = #0 \tweak Stem #'direction #UP d,-. a'-. \!
  d, \f r r r2 r4
  \repeat unfold 15 R1 * 6/4
  \TempoIIIPPr
  \repeat unfold 6 R1 * 6/4
  \TempoIIIiT
  \repeat unfold 4 R1 * 6/4	% insérer ici une citation de 4 mesures des violoncelles
  \mark \default  % Mark A
  d2 \ff d d
  \partcombineApartOnce a'4 r \partcombineApartOnce a r d, r
  d r r r2 r4
  R1 * 6/4
  r2 r4 r2 \partcombineApartOnce a'4 \ff
  \partcombineApartOnce a r \partcombineApartOnce a r \partcombineApartOnce a r
  e r \partcombineApartOnce a r \partcombineApartOnce a r
  e r r r2 r4
  a2. \ff ~ a2 a4-.
  d,2.-^ d-^
  d-^ e-^
  d4 r d d d d
  d r d d d d
  d \fz d d \fz d d \fz d
  d \fz d d \fz d d \fz d
  d r d r8 d d4 d
  d r r d r r
  d r r r2 r4
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcTrombaIAII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombe (C)" I+II}}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = \markup {\center-column {"Trb. (C)" I+II}}}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \partcombine \SgMcTrombaI \SgMcTrombaII
}

