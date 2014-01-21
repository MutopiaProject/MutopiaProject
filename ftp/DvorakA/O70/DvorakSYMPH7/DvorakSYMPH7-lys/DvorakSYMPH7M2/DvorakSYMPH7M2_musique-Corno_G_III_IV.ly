%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement II - Poco Adagio                          *
  * Fichier de notes, Cors 3 et 4, directrice                           *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  * Cor III                                                     *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMbCornoIII = \relative c'' {

  \include "Common/Properties.ly"

  \TempoII

  \transposition f
  \repeat unfold 8 R1
  \partcombineApart
  R1
  \dynamicSpannerOff
  \tweak #'staff-position #2.7 r4 g2. ~

  \mark \default    % Mark A - mesure 11

  g2 \pp ~ g4 ~ g8 \tweak #'staff-position #0 r
  \partcombineAutomatic
  \repeat unfold 8 R1
  \partcombineApart
  \tweak #'staff-position #0 r4 f-- \pp ( f-- ) \tweak #'staff-position #0 r4
  \partcombineAutomatic
  R1
  \partcombineApart
  \tweak #'staff-position #0 r4 f-- \pp ( f-- ) \tweak #'staff-position #0 r4
  \partcombineAutomatic
  \repeat unfold 2 R1
  \partcombineApart
  r4 g,16 \mf \Solo c e g c8 e ~ e16 \> g e c \!
  e \dim c g c g8 \p e16 c <<{g2}{s4 \> s4 \!}>>
  \partcombineAutomatic
  r2 aes'8 \f r r4
  c16-> \ff c-> r8 r4 r2
  \repeat unfold 3 R1

  \mark \default    % Mark B - mesure 32

  \partcombineChords
  <<{g2. c8. c16}{s4 \pp \< s s8 s16 s \! s \mf}>>
  \partcombineApart
  c ( b a b ) \! <<{b2.}{s4 \> s s8 s \!}>>
  \partcombineChords
  <<{g2. c8. c16}{s4 \pp \< s s8 s16 s \! s \mf}>>
  \partcombineApart
  c ( b a b ) \! <<{b2.}{s4 \> s s \!}>>
  \partcombineChords
  <<{g1 ~}{s4 \pp s \> s s8 s \!}>>
  g8 r r4 r2
  \partcombineAutomatic
  R1
  c4-> \f \< <<{c4->}{s8 s8 \!}>> b2 \ff
  c16-> \ff c-> r8 r c c16-> c-> r8 r aes!
  \partcombineApartOnce bes16 \partcombineApartOnce bes r8 r bes c16 c r8 r des
  c16 c r8 r ees \dim ees16 ees r8 r aes,!
  aes16 \p aes r8 r aes \> g16 g r8 <<{r8}{s16 s32 s64 s \!}>> \partcombineApartOnce ees!8 \!

  \mark \default    % Mark C - mesure 44

  aes8 \pp r r4 r2
  \repeat unfold 7 R1
  \partcombineApart
  r16 fis8 \pp fis fis fis16 r fis8 fis \< fis \! fis16
  r16 fis8 fis \cresc fis \! fis16 r fis8 fis fis fis16
  \partcombineAutomatic r16 \partcombineChords <<{fis8 fis ais ais16 r}{s16 \mf s8 s8 \cresc}>> b8 b a! a16
  \partcombineAutomatic
  a4-> \ff a-> gis4.-> r8
  g!4-> g-> ais-> ais->
  <<{\partcombineApartOnce gis2:16}{s4 s4 \dim}>> gis2:16
  gis:16 \p \dim fisis:16
  gis4 \pp r r2
  \repeat unfold 3 R1

  \mark \default    % Mark D - mesure 63

  b16 \ff r8. r b16-. b-. r8. r4
  \repeat unfold 4 R1
  r2 r4 a \f \> ~
  <<{a1}{s8 s s4 s8. s16 \!}>>
  g4 \tweak #'staff-position #0 r \tweak #'staff-position #0 r2
  \partcombineApart
  R1
  R1
  \partcombineAutomatic
  R1
  \rightDynamic bes2 \fz \> a4 \pp ( c
  b!8 ) r r4 r2
  \repeat unfold 4 R1
  r4 f2 \pp r4
  R1
  r4 f2 r4
  r4 ges2 \< r4 \!
  r4 ges2 \fz r4
  f2-> \ff g->
  a-> b->
  \partcombineApart
  a4-^ g8-^ c,-^ f4-^ e8-^ a-^
  d4->\partcombineAutomatic c-> b8 r r4
  f16-^ \ff f-^ r8 r4 f16-^ f-^ r8 r4
  b2-> <<{g2-^}{\once \override Voice.DynamicText #'X-offset = #-2 s4 \ff \< s8 s16 s \!}>>
  <<{g1-^ ~}{s4 \ffz s s \> s8 s16 s \!}>>
  g4 r r2
  \repeat unfold 7 R1
  r2 c, \pp ~
  c1 ~
  c2 ~ c8 r r4
  \partcombineApart
  r2 r4 c'4-> \mf
  \time 2/4
  a4-> \< aes-> \!
  \time 4/4
  \partcombineAutomatic
  g1 \f \> ~
  g8 \! r r4 r2
  \repeat unfold 3 R1
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  *     Cor IV                                                  *
  ***************************************************************
%}

SgMbCornoIV = \relative c {

  \include "Common/Properties.ly"

  \TempoII

  \transposition f
  \repeat unfold 8 R1
  \dynamicSpannerOff
  r4 fis8 \p ([g dis' -\tweak #'minimum-length #6 \cresc e]) b ( \< [c
  a' g]) \!
  \ignoreNoteCollision
  \dynamicSpannerOff
  <<{\voiceOne \tieDown g,2. ~ \voiceTwo}{s4 \f s8 s \dim}>>
  \notifyNoteCollision

  \mark \default    % Mark A - mesure 11

  g8 \! r r4 \tweak #'staff-position #-7 r2
  \repeat unfold 8 R1
  \once \override MultiMeasureRest #'staff-position = #-6
  R1
  R1
  \once \override MultiMeasureRest #'staff-position = #-6
  R1
  R1
  R1
  \override MultiMeasureRest #'staff-position = #-7
  R1
  \once \override MultiMeasureRest #'staff-position = #-11
  R1
  \revert MultiMeasureRest #'staff-position
  r2 d'8 \f r r4
  d16-> \ff d-> r8 r4 r2
  \repeat unfold 3 R1

  \mark \default    % Mark B - mesure 32

  <<{e2. c8. c16}{s4 \pp \< s s8 s16 s \! s \mf}>>
  <<{c1}{\dynamicSpannerOff \once \override DynamicText #'stencil = ##f s4 \f \> s \dim s \!}>>
  <<{e2. c8. c16}{s4 \pp \< s s8 s16 s \! s \mf}>>
  <<{c1}{s4 \> s8 s16 s \!}>>
  <<{c1 ~}{s4 \pp s \> s s8 s16 s \!}>>
  c8 r r4 r2
  R1
  a'4-> \f \< <<{f4->}{s8 s8 \!}>> d2 \ff
  c16-> \ff c-> r8 r c aes'16-> aes-> r8 r f
  bes16 bes r8 r ees, aes16 aes r8 r des,
  f16 f r8 r ees \dim aes16 aes r8 r des,
  d!16 \p d r8 r ees \> ees16 ees r8 <<{r8}{s16 s32 s64 s \!}>> ees8	% À vérifier, soufflet trop long

  \mark \default    % Mark C - mesure 44

  ees8 \pp r r4 r2
  \repeat unfold 7 R1
  \override MultiMeasureRest #'staff-position = #-6
  R1
  R1
  \revert MultiMeasureRest #'staff-position
  r16 <<{d8 d fis! fis16 r}{s16 \mf s8 s8 \cresc}>> fis8 fis fis fis16
  fis4-> \ff fis-> eis4.-> r8
  e!4-> e-> e-> cis->
  <<{gis'2:16}{s4 s4 \dim}>> cis,2:16
  dis:16 \p \dim dis:16
  dis4 \pp r r2
  \repeat unfold 3 R1

  \mark \default    % Mark D - mesure 63

  b16 \ff r8. r gis'16-. gis-. r8. r4
  \repeat unfold 2 R1
  \repeat unfold 2 R1
  r2 r4 b, \f \> ~
  <<{b1}{s8 s s4 s8. s16 \!}>>
  c1 \pp (
  g1 )
  c4 \override Rest #'Y-offset = #-2 r r2
  \revert Rest #'Y-offset
  R1
  \rightDynamic g'2 \fz \> \leftDynamic f2 \bracketedPP ~
  f8 r r4 r2
  \repeat unfold 4 R1
  r4 f,2 \pp r4
  R1
  r4 f2 r4
  r4 ges2 \< r4 \!
  r4 ges2 \fz r4
  f2-> \ff g->
  a-> b->
  a'4-^ g8-^ c,-^ f4-^ e8-^ a-^
  d4-> f,-> f8 r r4
  d16-^ \ff d-^ r8 r4 d16-^ d-^ r8 r4
  f2-> <<{g,2-^}{\once \override Voice.DynamicText #'X-offset = #-2 s4 \ff \< s8 s16 s \!}>>
  <<{g1-^ ~}{s4 \ffz s s \> s8 s16 s \!}>>
  g4 r r2
  \repeat unfold 7 R1
  r2 c, \pp ~
  c1 ~
  c2 ~ c8 r r4
  \override MultiMeasureRest #'staff-position = #-6
  R1
  \time 2/4
  R2
  \time 4/4
  \revert MultiMeasureRest #'staff-position
  c'1 \f \> ~
  c8 \! r r4 r2
  \repeat unfold 3 R1
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMbCornoIIIAIV = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corni (F)" III+IV}}
  \tag #'conductorScore \tag #'pocketScore
    {\set Staff.shortInstrumentName = \markup {\center-column {"Cor. (F)" III+IV}}}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \partcombine \SgMbCornoIII \SgMbCornoIV
}

