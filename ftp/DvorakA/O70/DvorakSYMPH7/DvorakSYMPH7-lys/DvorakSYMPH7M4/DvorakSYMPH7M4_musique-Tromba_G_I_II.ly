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
  * Fichier de notes, Trompettes 1 et 2, directrice                     *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Trompette I                                                   *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMdTrombaI = \relative c'' {

  \include "Common/Properties.ly"
  \TempoIV
  \transposition d'	% Ligne à modifier pour obtenir une transposition vers une autre tonalité (bes)
  \repeat unfold 41 R1
  R1
  \mark \default
  \partcombineApart
  g1-^ %{\ff%} ~
  g2 c->
  \partcombineAutomatic
  g2.-> c4
  c r g r
  R1
  r4 r8 g16-. \ff g-. g4-. g-.
  \repeat unfold 4 {
    R1
    r4 r8 g16-. g-. g4-. g-.
  }
  R1
  r4 r8 g16-. \ff g-. g4-. g-.
  g'1-^ ~
  g ~
  g4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 6 R1
  r4 \partcombineApartOnce g,-. %{\ff%} c-. g-.
  g2. bes4-.
  bes-. bes-. g-. c-.
  d-. c-. g2->
  \repeat unfold 2 R1
  g2-> \ff g->
  g2.-> r4
  \repeat unfold 2 R1
  f2-> \ff f->
  \partcombineApartOnce
  c'2.-> r4
  \repeat unfold 2 R1
  \partcombineApartOnce g4 r r2
  R1
  \mark \default
  \repeat unfold 2 R1
  g4 \f r g r
  g r r2
  g4 r r2
  g4 r g r
  g r g r
  d' r r2
  \repeat unfold 7 R1
  \bar "||"
  \mark \default
  \repeat unfold 13 R1
  \repeat unfold 2 R1	% insérer ici une citation de 2 mesures du cor III
  \repeat unfold 5 R1
  r2 g,4 \f r
  g r g r
  \mark \default
  d'\f d r d
  \repeat unfold 4 {r d r d}
  r d r e
  r d r d
  \partcombineApartOnce g, r r2
  \repeat unfold 3 R1
  \partcombineApartOnce g4 %{\f%} r r2
  \repeat unfold 3 R1
  d'4 \f r d r
  d r \partcombineApartOnce a r
  d r \partcombineApartOnce a r
  d r d r
  d r d-. d-.
  d r \partcombineApartOnce a r
  d r c r
  d r d r
  \bar "||"
  \mark \default
  \partcombineApartOnce g,4 r r2
  \repeat unfold 17 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \TempoIVIT
  \repeat unfold 39 R1
  \mark \default
  \repeat unfold 8 R1
  \partcombineApartOnce
  a1-^ %{\ff%}
  \partcombineAutomatic
  r2 d4-. r
  r2 d4-. r
  r2 d4-. r
  a1-^ \ff
  r2 c4-. r
  r2 c4-. r
  r2 r4 r8 d,
  g4 \f r c, r
  d r g r
  \mark \default
  \repeat unfold 6 R1
  r4 des'8 \mf des g,4 bes8 bes
  a4 r r2
  R1
  r4 a8 \mf a d,!4 fis8 fis
  cis4 r r2
  ces4 r r2
  R1
  r4 g'8 \f g c,!4 e8 e
  b4 b' r b
  r b r b
  b r r2
  \repeat unfold 7 R1
  \mark \default
  \repeat unfold 26 R1
  \repeat unfold 4 R1	% insérer ici une citation de 4 mesures du violon I
  \bar "||"
  \mark \default
  \partcombineApart
  g1 ~
  g4 \partcombineAutomatic g r g
  r g r g
  r g r c
  r c g g
  c r r2
  \partcombineApartOnce g4 r r2
  r2 g4 \f r
  \repeat unfold 12 {r2 g4 r}
  \mark \default
  \partcombineApartOnce g4 %{\f%} r r2
  \repeat unfold 14 R1
  \bar "||"
  \repeat unfold 19 R1
  \repeat unfold 3 R1	% insérer ici une citation de 3 mesures du cor I
  \mark \default
  g4 \f g r g
  \repeat unfold 4 {r4 g r g}
  r4 c r c
  r g r g
  c r r2
  \repeat unfold 2 R1
  r2 r4 \partcombineApartOnce g %{\f%}
  c r r2
  \repeat unfold 3 R1
  g4 \f r g r
  g r bes r
  bes r f r
  g r g r
  g r g-. g-.
  g r d' r
  g, r f r
  g r g r
  \bar "||"
  \mark \default
  g4 r r2
  \repeat unfold 11 R1
  c1-^ \ff ~
  c
  c-^ \ff ~
  c
  c-^ \fz
  c-^ \fz
  \mark \default
  \partcombineApartOnce g4 r r2
  \repeat unfold 5 R1
  g2 \f r
  g \f r
  \partcombineApartOnce g4 r r2
  \repeat unfold 4 R1
  c1  \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ff
  c2 c
  c c
  f,2. f4
  r f r f
  r f f f
  f r r2
  \mark \default
  d'4-^ g,-^ r2
  g4 r c r
  g g r2
  \TempoIVPAn
  r2 c \ff
  r c
  r c
  r c
  c c
  c1 ~
  c4 r r2
  \repeat unfold 2 R1
  g'4 \f r g r
  \repeat unfold 5 {g4 r g r}
  \TempoIVMMaes
  g4 r r2
  c,1-^ \ff
  \repeat unfold 4 c1-^
  \repeat unfold 3 {c1-^ \fz}
  c4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  *****************************************************************
  * Trompette II                                                  *
  *****************************************************************
%}

SgMdTrombaII = \relative c'' {

  \include "Common/Properties.ly"
  \TempoIV
  \transposition d'	% Ligne à modifier pour obtenir une transposition vers une autre tonalité (bes)
  \repeat unfold 41 R1
  R1	% insérer ici une citation de 1 mesure du violon I
  \mark \default
  g1-^ \ff ~
  g2 c->
  g2.-> c4
  c r g r
  R1
  r4 r8 g16-. \ff g-. g4-. g-.
  R1
  r4 r8 g16-. g-. g4-. g-.
  R1
  r4 r8 g16-. \aII \aIIP g-. g4-. g-.
  R1
  r4 r8 g16-. g-. g4-. g-.
  R1
  r4 r8 g16-. g-. g4-. g-.
  R1
  r4 r8 g16-. \aII \ff g-. g4-. g-.
  g1-^ ~
  g ~
  g4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 6 R1
  r4 \partcombineApartOnce g-. \ff c,-. g-.
  g2. bes4-.
  bes-. bes-. g-. c-.
  g'-. c,-. g2->
  \repeat unfold 2 R1
  g'2-> \ff g->
  g2.-> r4
  \repeat unfold 2 R1
  f2-> \ff f->
  \partcombineApartOnce
  c2.-> r4
  \repeat unfold 2 R1
  \partcombineApartOnce g'4 \f r r2
  R1
  \mark \default
  \repeat unfold 2 R1
  g4 \f r g r
  g r r2
  g4 r r2
  g4 r g r
  g \aIIP r g r
  d' \aII r r2
  \repeat unfold 7 R1
  \bar "||"
  \mark \default
  \repeat unfold 13 R1
  \repeat unfold 2 R1	% insérer ici une citation de 2 mesures du cor III
  \repeat unfold 5 R1
  r2 g,4 \aII \aIIP \f r
  g \aIIP r g r
  \mark \default
  d \f d r d
  \repeat unfold 4 {r d r d}
  r d r e
  r d r d
  \partcombineApartOnce g r r2
  \repeat unfold 3 R1
  \partcombineApartOnce g4 \f r r2
  \repeat unfold 3 R1
  d4 \f r d r
  d r \partcombineApartOnce a' r
  d, r \partcombineApartOnce a' r
  d, r d r
  d r d-. d-.
  d r \partcombineApartOnce a' r
  d, r c r
  d r d r
  \bar "||"
  \mark \default
  \partcombineApartOnce g4 r r2
  \repeat unfold 17 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \TempoIVIT
  \repeat unfold 39 R1
  \mark \default
  \repeat unfold 8 R1
  \partcombineChords
  a1-^ \ff
  \partcombineAutomatic
  r2 d,4-. r
  r2 d4-. r
  r2 d4-. r
  a1-^ \ff
  r2 c4-. r
  r2 c4-. r
  r2 r4 r8 d
  g4 \f r c, r
  d r g r
  \mark \default
  \repeat unfold 6 R1
  r4 des'8 \aII \aIIP \mf des g,4 bes8 bes
  a4 \aIIP r r2
  R1
  r4 a8 \aII \mf a d,4 fis8 fis
  cis4 r r2
  ces4 r r2
  R1
  r4 g'8 \f g c,!4 e8 e
  b4 \aIIP b' r b
  r b \aII r b
  b r r2
  \repeat unfold 7 R1
  \mark \default
  \repeat unfold 26 R1
  \repeat unfold 4 R1	% insérer ici une citation de 4 mesures du violon I
  \bar "||"
  \mark \default
  \partcombineApart
  g1 \ff ~
  g4 \partcombineAutomatic g, r g
  r g r g
  r g r c
  r c g g
  c r r2
  \partcombineApartOnce g'4 r r2
  r2 g,4 \f r
  \repeat unfold 12 {r2 g4 r}
  \mark \default
  \partcombineApartOnce g'4 \f r r2
  \repeat unfold 14 R1
  \bar "||"
  \repeat unfold 19 R1
  \repeat unfold 3 R1	% insérer ici une citation de 3 mesures du cor I
  \mark \default
  g,4 \f g r g
  \repeat unfold 4 {r4 g r g}
  r4 c r c
  r g r g
  c r r2
  \repeat unfold 2 R1
  r2 r4 \partcombineApartOnce g' \f
  c, r r2
  \repeat unfold 3 R1
  g'4 \f r g r
  g r bes r
  bes r f r
  g  r g r
  g \aII r g-. g-.
  g r d' r
  g, r f r
  g r g r
  \bar "||"
  \mark \default
  g4 r r2
  \repeat unfold 11 R1
  c,1-^ \ff ~
  c
  c-^ \ff ~
  c
  c-^ \fz
  c-^ \fz
  \mark \default
  \partcombineApartOnce g'4 r r2
  \repeat unfold 5 R1
  g,2 \f r
  g \f r
  \partcombineApartOnce g'4 r r2
  \repeat unfold 4 R1
  c1 \ffz ~
  c \aIIP
  c-^ \ffz ~
  c 
  c-^ \ffz ~
  c
  c-^ \aII \ffz ~
  c
  c-^ \ff
  c,2 c
  c c
  f2. f4
  r f r f
  r f \aII f f
  f r r2
  \mark \default
  d'4-^ g,-^ r2
  g4 r c r
  g g r2
  \TempoIVPAn
  r2 c, \ff
  r c
  r c
  r c
  c c
  c1 ~
  c4 r r2
  \repeat unfold 2 R1
  g'4 \f r g r
  \repeat unfold 5 {g4 r g r}
  \TempoIVMMaes
  g4 r r2
  c,1-^ \ff
  \repeat unfold 4 c1-^
  \repeat unfold 3 {c1-^ \fz}
  c4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdTrombaIAII = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombe (D)" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Trb. (D)" I+II}}
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \partcombine \SgMdTrombaI \SgMdTrombaII
}

