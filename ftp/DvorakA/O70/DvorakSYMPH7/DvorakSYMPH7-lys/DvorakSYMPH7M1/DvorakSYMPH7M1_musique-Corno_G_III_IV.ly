%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n° 7 mouvement I, Allegro maestoso                        *
  * Fichier de notes, Cors III et IV - partition directrice             *
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

SgMaCornoIII = \relative c {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \transposition d'	% Ligne à modifier pour obtenir une transposition vers une autre tonalité

  \TempoI

  c2. \pp  ~ |
  \repeat unfold 6 {c2. ~}
  c8 r r r4 r8
  \repeat unfold 2 R1 * 6/8
  \clef treble

  \transposition d
  \partcombineApart
  r8. e''16 \p \Solo e,8 bes' r r
  \partcombineApart
  r8. e16 e,8 bes'8 r r
  \partcombineAutomatic
  \repeat unfold 4 R1 * 6/8
  r4 r8 des4. \f
  <<{c2.}{s4 \< s s8 s8 \!}>>
  c4. \> ~ c8 \! r r
  R1 * 6/8
  r4 r8 aes4. \ff
  ees'-> ees4 ees8
  bes4.-> ~bes8 r r
  R1 * 6/8

  \mark \default    % Mark A - mesure 25

  \repeat unfold 2 R1 * 6/8
  c4.-> \f aes!->
  b!-> ~ b8 r r
  c4 r8 c4 r8
  c4 r8 c4 r8
  g2.->
  g4. ~ g4 g8
  c r r r4 r8
  %\voiceOne
  \partcombineApart
  r c \f c c c f
  e \override Rest #'staff-position = #2 r r r4 r8 \revert Rest #'staff-position
  %\oneVoice
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/8
  r4 r8 c \f c c
  f4.-> f->
  f8 r r r4 r8
  R1 * 6/8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 5 R1 * 6/8
  r4 r8 r8. ges,16-. \f ges8-.
  ges4 r8 r4 r8
  r8. aes16 aes8 aes4 r8
  r8. g!16-. g8-. g4 r8
  g4 \f r8 g4 r8
  g4 r8 g r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  g'4-> %{\f%} g,-> g,8 g''16 \ff [g]
  g,2. ~ g4. ~ g8. g16-. g8-.
  g4.-^ ~ g8 [r16 g-. g8-.]
  g4.-^ ~ g8 r r
  \repeat unfold 13 R1 * 6/8

  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \repeat unfold 20 R1 * 6/8

  \mark \default    % Mark E - mesure 93

  \repeat unfold 14 {R1 * 6/8}
  \partcombineApart
  <<{ g2.}{s4 %{\f \>%} s4 s8 s16 s16 \!}>>
  c4. %{\<%} aes%{->%} \!
  \partcombineAutomatic
  r8 r aes \f ~ aes4. ~
  <<{aes2.}{s4 \> s4 s8 s16 s16 \!}>>
  <<{aes2. ~}{\bracketedHairpin \rightDynamic s8 %{\p%}
         \tweak #'transparent ##t \mp \tweak #'X-offset #4 \> s s s s s \!}>>
  aes2. \pp

  \mark \default    % Mark F - mesure 113

  \transposition bes,
  <<
    {\repeat unfold 10 R1 * 6/8}
    {
      s1. * 0 ^\markup {"[Muta in B basso]"} s
      \set Staff.shortInstrumentName = \markup {\center-column {"Cor. (B)" III+IV}}
  }>>
  c2. \ff
  b!->
  c4.-> g'->
  \partcombineApart
  \stemDown
  \once \override Voice.NoteHead #'X-offset = #-0.6
  \once \override Voice.Stem #'X-offset = #-0.6 aes ( ~ \stemUp aes16 [ees ces aes! ) ees'8]
  \partcombineAutomatic

  \mark \default    % Mark G - mesure 127

  c!2.-> ~
  c4. ~ c4 c8
  c \ff c, [c'] ~ c c, c' ~
  c c, c' ~ c c, c' ~
  c c, c' ~ c c, c' ~
  c c, c' c,4 c8
  c4. \fz ~ c4 c8
  c4. \fz ~ c4 c8
  g' r r c r r
  c r r e r a,
  b r ^\markup {"[Muta in D]"} r r4 r8
  \set Staff.shortInstrumentName = \markup {\center-column {"Cor. (D)" III+IV}}

  \transposition d
  R1 * 6/8

  \mark \default    % Mark H - mesure 139

  r4 r8 r8 g4 \f
  r4 r8 r g4
  \partcombineAutomatic
  r4 r8 r e'4 \dim
  <<{\repeat unfold 3 R1 * 6/8}{s1 * 0 \!}>>
  \partcombineApart
  e2. \pp ~
  e
  d \ppp ~
  d
  \partcombineAutomatic

  \bar "||"    % mesure 149

  \repeat unfold 8 R1 * 6/8
  cis4. \ff e8-^ d-^ cis-^
  cis4. e4 cis16-. e-.
  d4. \aII \fz ~ d4 cis16-. e-.
  d4.  \fz ~ d4 d16-. d-.
  bes4. \aIIP \fz ~ bes4 bes16-. bes-.
  bes4. \fz ~ bes4 bes16-. bes-.
  c4. \fz ~ c4 c16-. c-.
  cis4. \fz ~ cis4 cis16-. cis-.

  \mark \default    % Mark I forcé - mesure 165

  \partcombineApart
  d8 r r r4 r8
  R1 * 6/8
  R1 * 6/8
  R1 * 6/8
  \once \override MultiMeasureRest #'staff-position = #2
  R1 * 6/8
  \partcombineAutomatic
  \repeat unfold 8 {R1 * 6/8}
  b16 \p \<
  \repeat unfold 10 b
  b \!
  b16 \<
  \repeat unfold 10 b
  b \!
  dis2. \ff ~
  dis4. ~ dis4 c!16 \f c
  \repeat unfold 24 c16
  c2.-> \ff ~
  c

  \mark \default    % Mark J - mesure 186

  c8-> bes-> c-> a-> bes-> des->
  c-> bes-> c-> a4 des16 bes
  c4.-^ ~ c4 des16 bes!
  c4.-^ ~ c4 des16 bes!
  c8-. bes-. c-. a-. bes-. c-.
  des4 r8 bes!8 r r
  r4 r8 bes r r
  r4 r8 bes r r
  r4 r8 b! r r
  r4 r8 b r g16 g

  \bar "||"

  \mark \default    % Mark K - mesure 196

  c2.-> \ff ~
  c4. ~ c4 g8
  g4.-^ ~ g8 [r16 g g8]
  \partcombineApart
  \once \override NoteColumn #'force-hshift = #0.5
  g4.-^ ~ g8 [s16 c c8]
  \partcombineAutomatic
  ces2. \ff ~
  ces
  des8 r r r4 r8
  \repeat unfold 7 R1 * 6/8
  r4 r8 d4. ~
  d2. ~
  d2. ~
  d2. (

  \bar "||"

  \mark \default    % Mark L - mesure 214

  c8 ) r r r4 r8
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  \repeat unfold 7 {R1 * 6/8}
  \partcombineAutomatic
  \repeat unfold 4 R1 * 6/8
  <<{g'2.}{s4 \p \< s s8 s8 \!}>>
  \partcombineApart
  %	<<{f2.}{s4 \fz \> s s8 s16 s \!}>>
  f2.
  e4. \partcombineAutomatic c4. \dim ~
  <<{c2.}{s4 \> s s8 s16 s \!}>>
  c2. \pp ~
  c8 r r r4 r8
  \repeat unfold 3 R1 * 6/8

  \mark \default    % Mark M - mesure 237

  R1 * 6/8
  \partcombineApartOnce
  b2. %{\f%}
  e,4.-> \< a8-> b-| c-| \!
  c2.-^ ~
  c
  c2. ~
  c2. \pp
  \repeat unfold 4 R1 * 6/8

  \bar "||"    % mesure 248

  g,2. \p ~
  <<{g ~}{s4 s8 s8 \cresc}>>
  g2. ~
  g2. \mf ~
  <<{g2.}{s4 \< s s8 s8 \!}>>
  \repeat unfold 3 R1 * 6/8
  c4.-> \ff f->
  c'-> ~ c8 r r
  des4.-> \fz ~ des8 r r
  des4.-> \fz ~ des8 r r
  ees,4.-^ ~ ees8 r r
  ees4.-^ ~ ees8 r r
  f4.-^ ~ f8 r r
  f4.-^ ~ f8 r r
  c'2.
  ees8-^ c-^ d-^ ees-^ c-^ ees-^

  \mark \default    % Mark N - mesure 266

  ees2.-^
  g4.-^ ~ g4 ees!16-. f-.

  \TempoIPaPAcc

  g8-> ees! f g-> ees f
  g-> ees! f g-> ees c16 \bracketedFF [d]
  ees8-^ c-^ d-^ ees-^ c-^ d-^
  ees-^ c-^ d-^ ees-^ c-^ d-^
  ees4. e-> ~
  e2.
  f \fz
  f \fz

  \mark \default    % Mark O - mesure 276

  ees8 r r c,4.-^ ~
  c2. ~
  c ~
  c
  c'4. \ff ( ees4-> ) \partcombineApart
  \tweak Stem #'transparent ##t \tweak Flag #'transparent ##t \tweak Stem #'length #8 d8 ~
  d  g, c \partcombineChords c c c \partcombineApart
  c c g g c g
  \partcombineAutomatic
  c d [ees] d \> ees d \!
  ees-. g,-. [g-.] \dim g-. g-. g-.
  g g4 \p ~ g4. ~
  g8 g \pp [g] g g g

  \TempoITempoPrimo

  \mark \default    % Mark P - mesure 287

  \repeat unfold 9 {c,2. ~}
  c4 r8 r4 r8
  \repeat unfold 3 R1 * 6/8
  \partcombineApart
  R1 * 6/8

  \mark \default    % Mark Q - mesure 301

  c'2. \pp ~
  c ~
  c8 r r r4 r8
  \repeat unfold 5 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  R1 * 6/8
  R1 * 6/8
  c4 \pp r8 c4 \dim r8
  c4. r4 r8 \!
  c4 r8 c4 r8
  c2. \fermata

  \bar "|."
}
%{
  ***************************************************************
  * Cor IV                                                      *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMaCornoIV = \relative c {

  \include "Common/Properties.ly"

  \TempoI

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \transposition d'
  c,2. \pp  ~ |
  \repeat unfold 6 {c2. ~}
  c8 r r r4 r8
  \repeat unfold 2 R1 * 6/8

  \clef treble

  \transposition d
  \partcombineApartOnce
  \override MultiMeasureRest #'staff-position = #-8
  R1 * 6/8
  \partcombineApartOnce
  R1 * 6/8
  \revert MultiMeasureRest #'staff-position
  \repeat unfold 4 R1 * 6/8
  r4 r8 des''4. \f
  <<{c2.}{s4 \< s s8 s8 \!}>>
  c4. \> ~ c8 \! r r
  R1 * 6/8
  r4 r8 f4. \ff
  ees-> ees4 ees8
  g4.-> ~ g8 r r
  R1 * 6/8

  \mark \default    % Mark A - mesure 25

  \repeat unfold 2 R1 * 6/8
  aes4.-> \f f->
  b,!-> ~ b8 r r
  c4 r8 c4 r8
  c4 r8 c4 r8
  g2.->
  g4. ~ g4 g8
  c r r r4 r8
  \partcombineApart
  \override MultiMeasureRest #'staff-position = #-2
  \repeat unfold 2 R1 * 6/8
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/8
  r4 r8 c \f c c
  f4.-> f->
  f8 r r r4 r8
  R1 * 6/8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 5 R1 * 6/8
  r4 r8 r8. ges16-. \f ges8-.
  ges4 r8 r4 r8
  r8. aes16-. aes8-. aes4 r8
  r8. g!16-.  g8-. g4 r8
  g,4 \f r8 g4 r8
  g4 r8 g r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  \partcombineApart
  g''4-> \f g,-> g,8-. \partcombineAutomatic g'16 \ff [g]
  g,2. ~ g4. ~ g8. g16-. g8-.
  g4.-^ ~ g8 [r16 g-. g8-.]
  g4.-^ ~ g8 r r
  \repeat unfold 13 R1 * 6/8

  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \repeat unfold 20 R1 * 6/8

  \mark \default    % Mark E - mesure 93

  \repeat unfold 14 {R1 * 6/8}
  <<{g'2.}{s4 \f \> s s8 s16 s16 \!}>>
  c4. \< \once \override NoteColumn #'force-hshift = #-0 \tweak Stem #'direction #UP f,-> \!
  r8 r aes, \f ~ aes4. ~
  <<{aes2.}{s4 \> s s8 s16 s16 \!}>>
  aes2. \p
  R1 * 6/8

  \mark \default    % Mark F - mesure 113

  \transposition bes,
  <<
    {\repeat unfold 10 R1 * 6/8}
    {
      s1. * 0 ^\markup {"[Muta in B basso]"} s
      \set Staff.shortInstrumentName = \markup {\center-column {"Cor. (B)" III+IV}}
  }>>
  c2. \ff ^\markup {"[in B basso]"}
  b!->
  c4.-> g'->
  \partcombineApart aes ( ~ aes16 [ees' ces aes! ) ees'8]
  \partcombineAutomatic

  \mark \default    % Mark G - mesure 127

  c,!2.-> ~
  c4. ~ c4 c8
  g' \ff c, [c'] ~ c c, c' ~
  c \aII c, c' ~ c c, c' ~
  c \aIIP c, c' ~ c c, c' ~
  c c, c' c,4 c8
  c4.  \fz ~ c4 c8
  c4. \aII \fz ~ c4 c8
  c r r c' r r
  c r r e r a,
  b \aIIP r ^\markup {"[Muta in D]"} r r4 r8
  \set Staff.shortInstrumentName = \markup {\center-column {"Cor. (D)" III+IV}}

  \transposition d
  R1 * 6/8

  \mark \default    % Mark H - mesure 139

  r4 r8 r8 g,4 \f ^\markup {"[in D]"}
  r4 r8 r g4
  \partcombineAutomatic
  r4 r8 r e'4 \dim
  <<{\repeat unfold 3 R1 * 6/8}{s1 * 0 \!}>>
  \partcombineApart
  \override MultiMeasureRest #'staff-position = #-2
  \repeat unfold 4 {R1 * 6/8}
  \partcombineAutomatic

  \bar "||"    % mesure 149

  \repeat unfold 8 R1 * 6/8
  cis'4. \ff e8-^ d-^ cis-^
  cis4.-^ e4 cis16-. e-.
  d4. \fz ~ d4 cis16-. e-.
  d4. \fz ~ d4 d16-. d-.
  bes4. \fz ~ bes4 bes16-. bes-.
  bes4. \fz ~ bes4 bes16-. bes-.
  f4. \fz ~ f4 f16-. f-.
  ees4. \fz ~ ees4 ees16-. ees-.

  \mark \default    % Mark I forcé - mesure 165

  \partcombineApart
  <<{d2. ~}{s4 \fp \> s s8 s16 s \!}>>
  d2. \pp
  <<{d2. ~}{s4 \fp \> s s8 s16 s32 s \!}>>
  d2. \pp
  \partcombineAutomatic
  \repeat unfold 9 {R1 * 6/8}
  a'16 \p \<
  \repeat unfold 10 a
  a \!
  a16 \<
  \repeat unfold 10 a
  a \!
  b2. \ff ~
  b4. ~ b4 aes16 \f aes
  \repeat unfold 24 aes16
  aes2.-> \ff ~
  aes

  \mark \default    % Mark J - mesure 186

  a!8-> g-> a-> f-> g-> bes!->
  a-> g-> a-> f4 bes!16 g
  a4.-^ ~ a4 bes16 g
  a4.-^ ~ a4 bes16 ges
  a!8-. g!-. a-. f-. g-. a-.
  bes4 r8 bes!8 r r
  r4 r8 bes r r
  r4 r8 bes \aIIP r r
  r4 r8 b! \aII r r
  r4 r8 b  r
  \footnote \markup {"(7)"} #'(0 . -1)
  \markup { \italic "7 - Some parts editions indicate twice B in place of G"}
  g16 g

  \bar "||"

  \mark \default    % Mark K - mesure 196

  c2.-> \ff ~
  c4. ~ c4 g,8
  g4.-^ ~ g8 [r16 g g8]
  \partcombineApart
  \tweak Stem #'direction #UP g4.%{-^%} ~ g8 [\once \override Voice.Rest #'Y-extent = #'(0.0 . 1.6 ) r16 c' c8]
  \partcombineAutomatic
  aes2. \ff ~
  aes
  bes8 r r r4 r8
  \repeat unfold 7 R1 * 6/8
  r4 r8 <<{d,4. ~}{\rightDynamic s4 \fz \> s8 \!}>>
  \dynamicSpannerOff
  d2. \dim ~
  <<{d4. ( g, )}{s4 \p \> s s8 s16 s \!}>>
  g2. ~ \pp

  \bar "||"

  \mark \default    % Mark L - mesure 214

  g8 r r r4 r8
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  r4 r8 d'4. \fz \> ~
  <<{d2. ~}{s4 s4 s8 s \!}>>
  <<{d2. ~}{s4 \p \> s4 s8 s \!}>>
  d2. \pp ~
  <<{d2. ~}{s4 \< s s8 s16 s \!}>>
  <<{d2. ~}{s4 \< s s8 s16 s \!}>>
  d8 \override Rest #'staff-position = #-5 r r r4 r8 \revert Rest #'staff-position
  \partcombineAutomatic
  \repeat unfold 4 R1 * 6/8
  <<{g2.}{s4 \p \< s s8 s8 \!}>>
  \partcombineApart
  <<{f'2.}{s4 \fz \> s s8 s16 s \!}>>
  e4. \p \partcombineAutomatic c,4. \dim ~
  <<{c2.}{s4 \> s s8 s16 s \!}>>
  c2. \pp ~
  c8 r r r4 r8
  \repeat unfold 3 R1 * 6/8

  \mark \default    % Mark M - mesure 237

  R1 * 6/8
  b'2. \f
  e,4.-> \< a8-> b-| c-| \!
  c,2.-^ ~
  \polyNeutral {
    <<{c}{s4 s8 s8 \dim}>>
  }
  {
    s4 -\tweak #'stencil ##f \f \> s s8 s8 \!
  }
  <<{c2.}{s4 \p \> s s8 s16 s \!}>>
  R1 * 6/8
  \repeat unfold 4 R1 * 6/8

  \bar "||"    % mesure 248

  g2. \p ~
  <<{g ~}{s4 s8 s8 \cresc}>>
  g2. ~
  g2. \aII \aIIP  \mf ~
  <<{g2.}{s4 \< s s8 s8 \!}>>
  \repeat unfold 3 R1 * 6/8
  c4.-> \aII \ff f->
  c'-> ~ c8 r r
  des4.-> \aIIP  \fz ~ des8 r r
  des4.-> \fz ~ des8 r r
  ees,4.-^ ~ ees8 r r
  ees4.-^ \aII ~ ees8 r r
  f4.-^ ~ f8 r r
  f4.-^ ~ f8 r r
  a2.
  ees8-^ c-^ d-^ ees-^ c-^ ees-^

  \mark \default    % Mark N - mesure 266

  ees2.-^
  ees'4.-^ ~ ees4 g,16-. bes-.

  \TempoIPaPAcc

  ees8-> g, bes ees-> g, bes
  ees-> g, bes ees-> g, c16 \bracketedFF [d]
  ees8-^ \aII \aIIP  c-^ d-^ ees-^ c-^ d-^
  ees-^ c-^ d-^ ees-^ c-^ d-^
  c4. des-> ~
  des2.
  c \fz
  b! \fz

  \mark \default    % Mark O - mesure 276

  c8 r r c,4.-> ~
  c2. ~
  c ~ \aII
  c
  c'4.  \ff ( ees4-^ ) d8	% la liaison de prolongation est supprimée car faisant doublon
  d g, c, c c c
  c c g' g c, g'
  \partcombineAutomatic
  c, g' [g] g \> g g \!
  g-. g,-. [c-.] \dim g-. c-. g-.
  c g4 \p ~ g4. ~
  g8 g \pp [g] g g g

  \TempoITempoPrimo

  \mark \default    % Mark P - mesure 287

  \repeat unfold 9 {c,2. ~}
  c4 r8 r4 r8
  \repeat unfold 3 R1 * 6/8
  \partcombineApart
  r4 r8 r4 c'8 \pp

  \mark \default    % Mark Q - mesure 301

  c2. ~
  c ~
  c ~
  c ~
  c ~
  c ~
  \dynamicSpannerOff
  c \dim ~
  c

  \TempoIPocoRit    % Mesure 309

  c4. \pp ~ c8 r r
  c4. ~ c8 r r
  \partcombineChordsOnce c4 \pp \partcombineChordsOnce r8 \partcombineChordsOnce c4 \dim \partcombineChordsOnce r8
  \partcombineChordsOnce c4. \partcombineChordsOnce r4 \partcombineChordsOnce r8 \!
  c,2. ~
  c2. \fermata

  \bar "|."
}
%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}
voiceSgMaCornoIIIAIV = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corni (D)" III+IV}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Cor. (D)" III+IV}}
  \set Staff.midiInstrument = "french horn"
  \trebleToBass
  \partcombine \SgMaCornoIII \SgMaCornoIV
}

