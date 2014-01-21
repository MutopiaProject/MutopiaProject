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
  * Fichier de notes, Flûtes I et II, directrice                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ************************************
  * Flûte I                          *
  ************************************
%}

\include "Common/Version.ly"

SgMcFlautoI = \relative c''' {

  \include "Common/Properties.ly"

  \TempoIII
  r2 r4
  \repeat unfold 17 R1 * 6/4
  a4 \mf r a r8 a a4-. g-.
  f r f r8 f \< g4-. a-. \!
  bes r bes r8 bes \> bes4-. a-. \!
  g r g r8 g \< a4-. bes-. \!
  c2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.

  \mark \default  % Mark A

  f4\f  r d' r8 d d4-. cis-.
  \dynamicSpannerOff
  d4 r d \cresc r8 d d4-. e-. \!
  % necessité de tricher sur les trilles : les deux voix sont rassemblées en une
  % la seconde voix est faite de silences invisibles
  % directrice
  \set Staff.soloText = #""
  \ignoreNoteCollision
  \poly {
    <<
      {\stemDown f2. %{\ff%} \stemNeutral}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  {
    <<
      {d2. \ff}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  r8 f8 f4-. e-.
  \poly {
    <<
      {\stemDown f2. \stemNeutral}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  {
    <<
      {d2.}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  r8 f8 f4-. e-.
  \notifyNoteCollision
  \set Staff.soloText = #"1."
  \partcombineApartOnce d4 r r r2 r4
  \repeat unfold 5 R1 * 6/4
  e,8 \f  ([fis \<]) fis ([g]) g ([a]) a ([bes]) bes ([b]) b ([c]) \!
  d2 \ff d4-. d2 d4-.
  d2 d4-. d2 d4-.
  d-. r ees-. r bes-. r
  a-. r b-. r cis-. r
  f-. r e-. r2 r4
  \repeat unfold 2 R1 * 6/4
  a,4-. \mp r a-. r8 a a4-. g-.
  f-. r f-. r8 f \< g4-. a-. \!
  bes-. \fz r bes-. r8 bes \> bes4-. a-. \!
  g-. \p r g-. r8 g \< a4-. bes-. \!
  c2-> \fz f,4.-> \fz f8 g4-. a-.
  bes2-> \fz e,4.-> \fz e8 f4-. g-.
  a2-> \fz d,4.-> \fz d8 e4-. f-.
  % acciacatura double : il faut passer en mode partcombineApart, régler manuellement les hampes, liaisons et
  % autres corrections
  \partcombineApart
  \acciaccatura e8

  \mark \default  % Mark B

  \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN e'4. %{\mf%} (
  \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN \tweak Beam #'stencil ##f f8
  \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN d
  \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN f )
  \partcombineAutomatic
  e4. \p ( f8 d f )
  e4 \< ( a g \dim f e \> d ) \!
  c!4. \p ( d8 b d ) c4. ( d8 b d )
  c4 ( f \> e d c bes! ) \!
  a4. %{\pp%} ( bes8 a bes ) a4. ( bes8 a bes )
  a4 r r r2 r4
  \repeat unfold 3 R1 * 6/4
  r8 a,-. -\tweak #'X-offset #-3.5 \f \< a-. cis-. cis-. f-. f-. a-. a-. cis-. cis-. a'-. \!

  \mark \default  % Mark C

  a,2 \ff a ( b4 cis )
  d2 ( a4 f2 d4 )
  d ( g a bes!2 b4 )
  c2 ( g4 e2 c4 )
  <<{f'2. d4 ( e f )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{f4 e2 c4 ( d e )}{s4 s4 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{e4 d2 d2 cis4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  d4-. r r r2 a'4-.
  d,-. r r r2 a'4-.
  % necessité de tricher sur les trilles : les deux voix sont rassemblées en une
  % la seconde voix est faite de silences invisibles
  % directrice
  \set Staff.soloText = #""
  \ignoreNoteCollision
  \poly {
    <<
      {\stemDown f2. \stemNeutral}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  {
    <<
      {d2.}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  r8 f8 f4-. e-.
  \poly {
    <<
      {\stemDown f2. \stemNeutral}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  {
    <<
      {d2.}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  r8 f8 f4-. e-.
  \notifyNoteCollision
  % La flûte se édouble en cet endroit
  % !!! selon la longueur du système, il convient de modifier la position des \break, et simultanément,
  % les reports de la seconde flûte sur le piccolo
  \break
  \set Staff.shortInstrumentName = \markup {"Fl.I"}
  \override Rest #'staff-position = #0
  d-. r r r2 r4
  a-. \p \< b-. c!-. d-. e-. fis-. \!
  g \f r r r2 r4
  R1 * 6/4

  \mark \default  % Mark D

  \partcombineSoloI
  d2-> \ff d-> d->
  e-> e4 fis-. g-. a-.
  d,-. c!-. d-. ees-. d-. d-.
  \set Staff.soloText = #"1."
  \set Staff.shortInstrumentName = \markup {\center-column {"Fl." I+II}}
  \partcombineApart
  % La flûte se rejoingnent en cet endroit
  % !!! selon la longueur du système, il convient de modifier la position des \break
  \break
  cis2-> d4 cis2-> d4
  ees2-> d4 ees2-> ees4
  \partcombineAutomatic
  a4 r fis r bis, r
  cis r a r b a
  cis cis,8 \< ( dis e fis gis ais bis cis dis e ) \!
  eis2.-> fis4-. g!-. \partcombineApartOnce a!-.
  a2.-^ \ff gis-^
  g-^ e-^
  f!4-. r f-. f-. f-. f-.
  f-. r f-. f-. f-. f-.
  f \fz f f \fz \partcombineApart d bes %{\fz%} a
  f %{\fz%} d f %{\fz%} bes d %{\fz%} f
  \partcombineAutomatic
  a r r \partcombineApartOnce d, r r
  R1 * 6/4
  \bar "||"
  \TempoIIIMM
  \key g \major
  R1 * 6/4
  d,4 \p ( a'4. d8 d4 a d )
  d2. \< \startTrillSpan ~ <<{d2}{s4 s8 s \stopTrillSpan}>> g,4 \!
  g ( d'4. \< g8 g4 g, d' ) \!
  d2. \> ( \startTrillSpan ~ d8 \stopTrillSpan c b a g a ) \!
  \partcombineApart
  fis \pp ( g a4-. a8 b c4-. c8 cis d4-. )
  \override Rest #'Y-offset = #3
  r4 cis8 \p ( d ) r4 cis8 ( d ) r4 cis8 ( d )
  r4 cis8 \< ( d ) r4 cis8 ( d ) r4 cisis8 ( dis ) \!
  r4 dis8 ( e ) r4 dis8 \f ( e ) r4 fis8 ( g )
  r4 eis8 \> ( fis ) r4 eis8 ( fis ) r4 dis8 ( e ) \!
  r4 dis8 ( \p \> e ) r4 dis8 ( e ) r4 cis8 ( d ) \!
  r4 ais8 \pp ( b ) r4 dis8 ( e ) r4 fis8 ( g )

  \mark \default  % Mark E

  d!4 r r r2 r4
  \revert Rest #'Y-offset
  \partcombineAutomatic
  R1 * 6/4
  d,4 ( \bracketedP \< g4. b8 b4 d4. g8 ) \!
  <<{g1.}{s4 \fz \> s s s s s8 s \!}>>
  gis2 %{\fz%} ( e4 b gis4. cis8 )
  cis2 ( %{\>%} b4 gis!2 e4 ) \!
  gis,1. %{\p \dim%} ( ~
  gis2. \! cis ~
  cis %{\dim%} b ) \! ~
  b4 -\tweak #'positions #'(5 . 5) ( a gis b2 a4 )
  gis2 \pp -\tweak #'positions #'(5 . 5) ( fisis4 a2 gis4
  e ) r \once \override Rest #'extra-offset = #'(0 . 1) r
    \once \override Rest #'extra-offset = #'(0 . 2) r2 r4
  R1 * 6/4
  e'4-. \mp b'8 ( f ) e4-. b'8 ( f ) e2 -> ~
  e4 c'8 ( b a gis a b d c a g!
  fis!4 ) r r r2 r4
  \repeat unfold 3 R1 * 6/4
  \partcombineApart
  ees'1. \p (
  d )
  e! (
  f )
  <<{f1.}{s4 \p \< s s s s s8 s \!}>>

  \mark \default  % Mark F

  fis!4 (\< b4. a8 \! a4 \> fis d ) \!
  <<{eis1.}{s4 \p \< s s s s s8 s \!}>>
  fis4 ( \< b4. a8 \! a4 \> fis d ) \!
  cis \partcombineAutomatic r r r2 r4
  \partcombineApart
  a2. \< \startTrillSpan \times 6/8 {a8 ( \stopTrillSpan b cis d e fis gis a ) \!}
  <<{e1. ~}{s4 s s \< s s s8 s \!}>>
  <<{e1.}{s4 s s \> s s s8 s \!}>>
  e1. ( \pp ~
  e1.
  c4 ) \partcombineAutomatic r r r2 r4
  \partcombineApart
  c,4 \p ( g'4. c8 c4 g c )
  <<{c2. ~ c4.}{s4 \startTrillSpan s s s \stopTrillSpan}>> f,8 ( a c )
  f ( e f g a f c a g a g f )
  e ( f g4-. g8 a bes4-. bes8 b c4-. )
  \override Rest #'Y-offset = #3
  r4 b8 ( \p c ) r4 b8 ( c ) r4 b8 ( c )
  \dynamicSpannerOff
  r4 b8 ( c ) r4 b8 \cresc ( c ) r4 c8 ( cis \! )
  r4 cis8 \f ( d ) r4 cis8 ( d ) r4 e8 ( f )
  r4 dis8 ( e ) r4 dis8 \dim ( e ) r4 cis8 ( d )
  r4 cis8 \p ( d ) r4 cis8 \dim ( d ) r4 b8 ( c )
  r4 gis8 \pp ( a ) r4 cis8 ( d ) r4 e8 ( f )

  \mark \default  % Mark G

  c!4 r r r2 r4
  \revert Rest #'Y-offset
  \partcombineAutomaticOnce
  R1 * 6/4
  c,4 -\tweak #'extra-offset #'(0 . -2) \bracketedP ( -\tweak #'rotation #'(4.5 0.5 0) \< f4. a8 ) a4 ( c4. f8 ) \!
  <<{f1.}{s4 \fz \> s s s s s8 s \!}>>
  fis2 %{\p%} ( d4 a fis?4. \> b8 )
  b2 ( a4 fis2 d4 ) \!
  \partcombineAutomatic
  \repeat unfold 4 R1 * 6/4
  \TempoIIIAcc
  \repeat unfold 2 R1 * 6/4
  r4 f'8 \mf f r4 f8 \cresc f r4 f8 f \!
  r4 f8 f r4 f8 f r4 f8 f
  f4 \ff r r2 r
  R1 * 6/4
  d,4-. \ff r e-. r8 f g4-. a-.
  bes-. c8 ( cis d4 ) e8 ( f g a bes gis )

  \mark \default  % Mark H

  <<
    {a1.}{
      \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      s4 ^\markup {\lower #1 \tiny \flat} \startTrillSpan
   }
  >>
  <<
    {a1.}{
      s4 s s s s s8 s \stopTrillSpan
   }
  >>
  a4-. a,-. r a'-. a,-. r
  a'-. a,-. r a'-. a,-. r
  a'4 r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \bar "||"
  \key d \minor
  \repeat unfold 17 R1 * 6/4

  \mark \default  % Mark J

  a,4 \mf r a r8 a a4-. g-.
  f r f r8 f \< g4-. a-. \!
  bes r bes r8 bes \> bes4-. a-. \!
  g r g r8 g \< a4-. bes-. \!
  c2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.
  f \f r d' r8 d d4-. cis-.
  d r d \cresc r8 d d4-. \! e-.
  % necessité de tricher sur les trilles : les deux voix sont rassemblées en une
  % la seconde voix est faite de silences invisibles
  % directrice
  \set Staff.soloText = #""
  \ignoreNoteCollision
  \poly {
    <<
      {\stemDown f2. \stemNeutral}{
        s4 \startTrillSpan %{\ff%} s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  {
    <<
      {d2.}{
        s4 \startTrillSpan \ff s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  r8 f8 f4-. e-.
  \poly {
    <<
      {\stemDown f2. \stemNeutral}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  {
    <<
      {d2.}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
   }>>
 }
  r8 f8 f4-. e-.
  \notifyNoteCollision
  \set Staff.soloText = #"1."
  f-. e-. f-. e-. f-. e-.
  f-. e-. f-. \dim e-. f-. e-.
  f \mp ( e d \dim c bes a )
  g \p ( f \> e d c bes \!
  a ) r r r2 r4
  \repeat unfold 3 R1 * 6/4

  \mark \default  % Mark K

  f''4 \p \< ( e f e f e )
  f ( e f e f e ) \!
  f \f ( e d \dim c bes a )
  g2 ( \p f4 e2 d4 )
  c r r r2 r4
  \partcombineApart
  \override Rest #'Y-offset = #0
  r2 \times 2/3 {a8 ( \p gis a} c4 bes g! )
  r2 \times 2/3 {g8 ( fis g} bes4 a d, )
  \dynamicSpannerOff
  r2 \times 2/3 {d8 \dim ( cis d} a'4 gis d ) \!
  r2 d4 \pp ( f2 e4 )
  d r r r2 e4 \p (
  g f ) r r2 r4
  \revert Rest #'Y-offset
  \partcombineAutomatic
  \repeat unfold 7 R1 * 6/4
  \TempoIIIPPr
  \repeat unfold 6 R1 * 6/4
  \TempoIIIiT
  \repeat unfold 2 R1 * 6/4
  <<{d''1. ~}{s4 \mp \< s s s s s \!}>>
  <<{d1.}{s4 \< s s s s s \!}>>

  \mark \default  % Mark L

  \partcombineApart
  d2-> %{\ff%} d-> d->
  e2-> e4 fis-. g-. a-.
  d,-. c-. d-. ees-. d-. d-.
  cis2-> d4-. cis2-> d4-.
  dis2-> d4-. dis2-> dis4-.
  \partcombineAutomatic
  a' \bracketedFF r fis! r bis, r	% [FF] pour la seconde voix !!!
  cis r a r b-. a-.
  cis cis,8 ( \< dis e fis gis ais bis cis dis e ) \!
  eis2. fis4-. g!-. \partcombineApartOnce a!-.
  a2.-^ \ff gis-^
  g!-^ e-^
  f!4-. r f-. f-. f-. f-.
  f-. r f-. f-. f-. f-.
  f \fz f f \fz d bes \fz a
  f \fz d f \fz bes d \fz f
  a r a r8 a a4 a
  a r r a r r
  a r r r2 r4
  \bar "|."
}

%{
  *****************************************************************
  *	Flûte II                                                      *
  *****************************************************************
%}

SgMcFlautoII = \relative c''{

  \include "Common/Properties.ly"

  \TempoIII
  r2 r4
  \repeat unfold 17 R1 * 6/4
  f4 \mf r f r8 f f4-. e-.
  d r d r8 d \< e4-. f-. \!
  g r g r8 g \> g4-. f-. \!
  e r e r8 e \< f4-. g-. \!
  c2-> \f f,4.-> f8 g4-. a-.
  bes2-> \aIIP e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.

  \mark \default  % Mark A

  f4 \f r d' r8 d d4-. cis-.
  \dynamicSpannerOff
  d4 r d \cresc r8 d d4-. cis-. \!
  % necessité de tricher sur les trilles : les deux voix sont rassemblées en une
  % la seconde voix est faite de silences invisibles
  % directrice
  s2. s8 d8 d4-. cis-.
  s2. s8 d8 d4-. cis-.
  d4 r r r2 r4
  \repeat unfold 5 R1 * 6/4
  e,8 \f ([fis \<]) fis ([g]) g ([a]) a ([bes]) bes ([b]) b ([c]) \!
  d2 \ff d4-. d2 d4-.
  d2 d4-. d2 d4-.
  d-.  r ees-. r bes-. r
  a-. \aIIP r b-. r cis-. r
  b-. r cis-. r2 r4
  \repeat unfold 2 R1 * 6/4
  f,4-. \mp r f-. r8 f f4-. e-.
  d-. r d-. r8 d \< e4-. f-. \!
  d-. \fz r d-. r8 d \> d4-. dis-. \!
  e-. \p r e-. r8 e \< f4-. g-. \!
  c2-> \fz f,4.-> \fz f8 g4-. a-.
  bes2-> \fz e,4.-> \fz e8 f4-. g-.
  a2-> \aII  \fz d,4.-> \fz d8 e4-. f-.
  \acciaccatura { \once \override NoteColumn #'force-hshift = #-0 \slurUp
                  \tweak Stem #'direction #DOWN e8}

  \mark \default  % Mark B

 \slurDown
  cis'4. \mf %{(%} d8 b d %{)%} cis4. \p ( d8 b d )
  cis4 \< ( f e \dim d c! \> b ) \!
  e,4. \p ( f8 d f ) e4. ( f8 d f )
  e4 ( a \> c f, e g ) \!
  cis,2. \pp ( c
  cis4  )r r r2 r4
  \repeat unfold 3 R1 * 6/4
  r8 \rightDynamic a-. -\tweak #'X-offset #-3.5 \f \< a-. cis-. cis-. f-. f-. a-. a-. cis-. cis-. a'-. \!

  \mark \default  % Mark C

  a,2 \aIIP  \ff a ( b4 cis )
  d2 ( a4 f2 d4 )
  d \aII ( g a bes2 b4 )
  c2 ( g4 e2 c4 )
  <<{f'2. d4 ( e f )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{f4 e2 c4 ( d e )}{s4 s4 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{e4 \aIIP  d2 d2 cis4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  d4-. \aII r r r2 a'4-.
  d,-. r r r2 a'4-.
  % necessité de tricher sur les trilles : les deux voix sont rassemblées en une
  % la seconde voix est faite de silences invisibles
  % directrice
  s2. s8 d,8 d4-. cis-.
  s2. s8 d8 d4-. cis-.
  %	La flûte passe au piccolo pour 3 mesures, avec 8 mesures de blanc pour la flûte II
  % !!! selon la longueur du système, il convient de modifier la position des \break, et simultanément,
  % les reports de la seconde flûte sur le piccolo
  \break
  %{
    \transposition c''
    \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Piccolo"}}
    \set Staff.shortInstrumentName = \markup {\center-column {"Picc."}}
    \set Staff.midiInstrument = "piccolo"
    g,4-._\markup {Piccolo} \mp a-. \< b-. c-. b-. bes-. \!
    a8 \f ( bes a4 ) g8 \dim ( a g4 ) f8 ( a ) a4-. \!

    \mark \default  % Mark D

    d,4 r r r2 r4
    \transposition c'
    \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Flauti" I+II}}
    \set Staff.shortInstrumentName = \markup {\center-column {"Fl." I+II}}
    \set Staff.midiInstrument = "flute"%}
  \repeat unfold 7 s1.
  % La flûte se rejoingnent en cet endroit
  % !!! selon la longueur du système, il convient de modifier la position des \break
  \break
  \repeat unfold 2 R1 * 6/4
  fis4 \bracketedFF r b, r bis r
  cis r a r b a
  cis \aII \aIIP cis,8 \< ( dis e fis gis ais bis cis dis e ) \!
  cis2.-> ~ cis2 e4-.
  d!2.-^ \ff d-^
  d-^ cis-^
  d4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d \fz d d \fz d bes \fz a
  f \fz d f \fz bes d \fz f
  f r r d r r
  R1 * 6/4
  \bar "||"
  \TempoIIIMM
  \key g \major
  fis,,1. \p ~
  fis
  <<{g ~}{s4 %{\<%} s s s s s \!}>>
  <<{g1.  ~}{s4 s2 %{\<%} s s4 \!}>>
  <<{g2. ( d )}{s4 s %{\>%} s s s s8 s \!}>>
  \repeat unfold 7 R1 * 6/4

  \mark \default  % Mark E

  \repeat unfold 2 R1 * 6/4
  b'4 ( \bracketedP \< b4. g'8 g4 b4. b8 ) \!
  <<{bes1.}{s4 \fz \> s s s s s8 s \!}>>
  e2 \fz ( b!4 ~ b \once \override NoteColumn #'force-hshift = #2.2 gis2 )
  gis2. ( \> e2 gis,4 ) \!
  \dynamicSpannerOff
  e1. \p \dim ( ~
  e \!
  fis2. \dim eis ) \!
  fis1.
  dis1. \pp
  \times 6/9 {e8 \p ( f e f e f e f e} \times 6/9 {f e f e f e f e f )}|
  \partcombineApart
  \times 6/9 {e8 ( f e f e f e f e} \times 6/9 {f e f e f e f e f )}|
  e4 r r r2 r4|
  \repeat unfold 2 R1 * 6/4
  \partcombineAutomatic
  \repeat unfold 8 R1 * 6/4

  \mark \default  % Mark F

  \repeat unfold 5 R1 * 6/4
  <<{e'4 ( a4. cis8 cis4 e,4. cis'8 )}{s4 s s \< s s s8 s \!}>>
  <<{c!2. b}{s4 s s \> s s s8 s \!}>>
  e,4 ( \pp a4. c8 c4 e,4. c'8 )
  c2. ( b )
  bes4 r r r2 r4
  \repeat unfold 10 R1 * 6/4

  \mark \default  % Mark G

  \repeat unfold 4 R1 * 6/4
  d2 \p ( a4 fis! d2 ~ )
  d4 r r r2 r4
  \repeat unfold 4 R1 * 6/4
  \TempoIIIAcc
  \repeat unfold 2 R1 * 6/4
  r4 d'8 \mf d r4 d8 \cresc d r4 d8 d \!
  r4 d8 d r4 d8 d r4 d8 d
  \TempoIIIViv
  d4 \ff r r2 r
  R1 * 6/4
  d,4-. \ff r e-. r8 f g4-. a-.
  bes-. \aIIP c8 ( cis d4 ) e8 ( f g a bes gis )

  \mark \default  % Mark H

  <<
    {a1. -\tweak TextScript #'outside-staff-priority #1000 -\tweak TextScript #'extra-offset #'(0 . -2) \aII}
    {
      \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      s4 ^\markup {\lower #1 \tiny \flat} \startTrillSpan
  }>>
  <<{a1.}{s4 s s s s s8 s \stopTrillSpan}>>
  a4-. a,-. r a'-. a,-. r
  a'-. a,-. r a'-. a,-. r
  a'4 r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \bar "||"
  \key d \minor
  \repeat unfold 17 R1 * 6/4

  \mark \default  % Mark J

  f,4 \mf r f r8 f f4-. e-.
  d r d r8 d \< e4-. f-. \!
  g r g r8 g \> g4-. f-. \!
  e r e r8 e \< f4-. g-. \!
  c2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.
  f \f r d' r8 d d4-. cis-.
  d \aII r d \cresc r8 d d4-. \! cis-.
  % necessité de tricher sur les trilles : les deux voix sont rassemblées en une
  % la seconde voix est faite de silences invisibles
  % directrice
  s2. s8 d8 d4-. cis-.
  s2. s8 d8 d4-. cis-.
  \notifyNoteCollision
  \set Staff.soloText = #"1."
  d-. cis-. d-. cis-. d-. cis-.
  d-. cis-. d-. \dim cis-. d-. cis-.
  d \mp ( c bes \dim a g f )
  e \p ( d \> c bes a g \!
  f ) r r r2 r4
  \repeat unfold 3 R1 * 6/4

  \mark \default  % Mark K

  d''4 \p \< ( cis d cis d cis )
  d ( cis d cis d cis ) \!
  d \f ( c bes \dim a g f )
  e2 ( \p d4 c2 bes4 )
  a r r r2 r4
  \override MultiMeasureRest #'staff-position = #-7
  \repeat unfold 6 R1 * 6/4
  \repeat unfold 7 R1 * 6/4
  \TempoIIIPPr
  \repeat unfold 6 R1 * 6/4
  \TempoIIIiT
  \repeat unfold 2 R1 * 6/4
  <<{d'1. ~}{s4 \mp \< s s s s s \!}>>
  <<{d1.}{s4 \< s s s s s \!}>>
  \mark \default  % Mark L
  d,4 \ff r r2 r2
  \override MultiMeasureRest #'staff-position = #-4
  \repeat unfold 4 R1 * 6/4
  fis'4 \bracketedFF r b, r bis r
  cis \aIIP r a r b-. a-.
  cis cis,8 ( \< dis e fis gis ais bis cis dis e ) \!
  cis2. ~ cis2 e4-.
  d!2.-^ \ff d-^
  d-^ cis-^
  d4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d \fz d d \fz d bes \fz a
  f \fz d f \fz bes d \fz f
  f r f r8 f f4 f
  f r r f r r
  f r r r2 r4
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcFlautoIAII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Flauti" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Fl." I+II}}
  \set Staff.midiInstrument = "flute"
  \clef treble
  \partcombine \SgMcFlautoI \SgMcFlautoII
}

