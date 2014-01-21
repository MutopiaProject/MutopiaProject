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
  * Fichier de notes, Violons I                                         *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMbViolinoI =
\relative c' {

  \include "Common/Properties.ly"

  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie

  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoII

  \tag #'partScore {
    R1 * 6
    r2 r4 r8
    \oneMMRNumberOff
    \cueDuring #"scoreSgMbViolinoII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Vl II"} r8 R1}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 8
  }

  \tag #'quoteCornoII \tag #'quoteCornoIV {
    b8 \p ( [c] ) a'4 \cresc e8 ( f c'4 )
  }
  \elseTag #'quoteCornoII \elseTag #'quoteCornoIV {
    b,8 \p ( c a'4 ) \cresc e8 ( f c'4 )
  }

  \tag #'partScore {
    gis8 \! ( a ) <<{f'2.}{s4 \f -\tweak #'minimum-length #5 \> s4 s8 s8 \!}>>
  }
  \elseTag #'partScore {
    gis,8 \! ( a ) <<{f'2.}{s4 \f \> s4 s8 s8 \!}>>
  }

  \mark \default    % Mark A - mesure 11

  r16 c8 ( \pp a16 ) r c8 ( a16 ) r c8 ( e,16 ) r c'8 ( e,16)
  r16 c'8 ( e,16 ) r c'8 ( e,16 ) r bes'8 ( d,16 ) r bes'8 \< ( d,16)
  r16 ees'8 \! ( fis,16 ) r ees'8 ( fis,16 ) r d'8 \dim ( g,16 ) r des'8 ( f,!16 )
  r16 c'8 \p ( e,16 ) r c'8 ( ees,16 ) r c'8 ( ees,16 ) r c'8 ( ees,16 )
  r16 bes'8 \pp ( d,16 ) r g8 ( des16 ) r des'8 ( g, 16 ) r des'8 ( g,16 )
  <<{r16 c8 ( f,16 ) r c'8 ( f,16 ) r b8 ( f16 ) r b8 ( f16 )}{s4 s16 s4 \< s8 s \!}>>

  \tag #'partScore {
    r16 c'8 -\tweak #'minimum-length #5 \< ( e, 16 ) r \! des'8 \f ( f,16 ) r c'8 \dim (
    g16 e8. ) \p -\tweak #'minimum-length #5 \> f16 ( \!
  }
  \elseTag #'partScore {
    r16 c'8 \< ( e, 16 ) r \! des'8 \f ( f,16 ) r c'8 \dim ( g16 e8. ) \p \> f16 ( \!
  }

  g8 ) r

  \tag #'partScore {
    <<
      {c4 ^\markup {\italic espressivo} ( des4. e,8 )}
      {\rightDynamic s4 \pp -\tweak #'minimum-length #5 \< s8 s8 \> s8 s8 \!}
    >>
    <<{e2 ~}{s4 -\tweak #'minimum-length #5 \> s8 s16 s \!}>> e8 g' \< ( aes bes ) \bindDynamics
    <<
      {des,2 -\tweak #'minimum-length #5 \> ~ \stemDown des8 [c \pp ( \acciaccatura ees8 des8. e,!16])}
      {s4 -\tweak #'minimum-length #5 \> s8 s16 s \!}
    >> \stemNeutral
    e2 ~ e8 \< g' ( a!16 c bes \bindDynamics des, )
    <<{des2 ~}{s4 -\tweak #'minimum-length #5 \> s8 s16 s \!}>> des8 g ( a16 \pp c bes des, )
  }
  \elseTag #'partScore {
    <<
      {c4 ^\markup {\italic espressivo} ( des4. e,8 )}
      {\rightDynamic s4 \pp \< s8 s8 \> s8 s8 \!}
    >>
    <<{e2 ~}{s4 \> s8 s16 s \!}>> e8 g' \< ( aes bes ) \bindDynamics
    <<
      {des,2 \> ~ \stemDown des8 [c \pp ( \acciaccatura ees8 des8. e,!16])}
      {s4 \> s8 s16 s \!}
    >> \stemNeutral
    e2 ~ e8 \< g' ( a!16 c bes \bindDynamics des, )
    <<{des2 ~}{s4 \> s8 s16 s \!}>> des8 g ( a16 \pp c bes des, )
  }

  des8 a' ~ ( a16 c bes des, ) des8 a' ( ~ a16 c bes des, )
  des bes' ( a c, \cresc c ) a' ( g bes, bes ) g' ( f a, a ) \< g' ( f g,
  g ) \! g' ( f gis, a ) \f \< g'! ( f c bes' a f d' ) \bindDynamics c \> ( a f' d ) \!

  \tag #'quoteFlautoI {
    c16 -\tweak #'stencil ##f \f ( a f \dim ) d'-. \! ( c-. a-. f-. d-. ) c-. ( a-. f-. d-. c8 ) r
  }
  \tag #'quoteClarinettoI {
    c''16 -\tweak #'stencil ##f \f ( a f \dim ) d'-. \! ( c-. a-. f-. d-. ) c-. ( a-. f-. d-. ) c8 r
  }
  \elseTag #'quoteFlautoI \elseTag #'quoteClarinettoI {
    c''16 ( a f \dim ) d'-. \! ( c-. a-. f-. d-. ) c-. ( a-. f-. d-. c8 ) r
  }

  des-- \p r r4 <f g,>8-- \f r r4
  bes16 \ff -> bes-> r8 r4 <g bes>8 r r4
  r16 bes \mf ( c des e, \> f g bes, c des ) \! r8 r4
  R1 * 2

  \mark \default    % Mark B - mesure 32

  R1
  r4 r8 g'32 \pp ([c g e] e [g e c] c [e c bes]) bes ([c bes g] g [bes g e])
  f8 r r4 r2
  r4 r8 g'32 \pp ([c g e] e [g e c] c [e c bes]) bes ([c bes g] g [bes g e])
  f8 r bes'16 \pp ( a g a ) r4 bes,16 ( a g a )
  c, ( f a c ~ c4 ~ c16 ) f ( a c ~ c4 ~

  \tag #'partScore {
    <<{c1 )}{s4 -\tweak #'minimum-length #5 \< s4 s s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{c1 )}{s4 \< s4 s s8 s \!}>>
  }

  f4 \f \< ( bes ) ~ bes8 \! \times 4/5 {\once \override Hairpin #'rotation = #'(6 -2 0) bes,,32([\< a bes c d])}
  e32 ( f g a bes c d e ) \!
  f4-> \ff c8. ( bes32 c ) <f, aes>4-> <des des'>->
  ees'-> c8. ( bes32 c ) aes4-> bes->
  f aes8. \> ( ees32 aes ) \bindDynamics ( f4 \dim ges ) \!
  <<{f4 (}{s8 \p s \>}>> des4 ) ees4. ( des8 ) \!

  \mark \default    % Mark C - mesure 44

  des \pp r r4 r2
  R1 * 7

  \tag #'quoteClarinettoII {
    b'4 \pp ( a8. g16 ) d4. r8
  }
  \elseTag  #'quoteClarinettoII {
    \acciaccatura b8 b'4 \pp ( a8. g16 ) d4. r8
  }

  b'4 \< ( a8. g16 ) dis'4 \! r8 b16 ( b' )
  b4 ( \mf \< a8. g16 ) g8 ( b, cis d \! )
  fis8.-> \ff ( g32 fis ) fis,8.-> ( g32 fis ) fis8.-> ( g32 fis ) fis'8.-> ( g32 fis )
  fis8.-> ( g32 fis ) fis,8.-> ( g32 fis ) fis8.-> ( gis32 fis ) fis'8.-> ( gis32 fis )
  <<{e2}{s4 s4 \dim}>> dis2

  \tag #'partScore {
    cis2 \p \dim ( <<{bis}{s4 s4 \pp}>>
  }
  \elseTag #'partScore {
    cis2 \p \dim ( bis \pp
  }

  cis8 ) r r4 r2
  r16 fis,8 \pp ( eis32 fis cis16 ) ais-. ( fis-. cis-. ) r2
  r16 e'?8 ( dis32 e cis16 ) ais-. ( g!-. e-. ) r2

  \tag #'quoteTrombaI \tag #'quoteTrombaII {
    r16 -\tweak #'stencil ##f \p g'8 \< ( fis32 g e16 ) c!-. \! ( g-. e-. ) r2
  }
  \elseTag #'quoteTrombaI \elseTag #'quoteTrombaII {
    r16 g'8 \< ( fis32 g e16 ) c!-. \! ( g-. e-. ) r2
  }

  \mark \default    % Mark D - mesure 63

  r16 fis''8 \ff ( eis32 fis cis16 ) ais-. ( fis-. g!-. ) fis8 r r4
  \override Beam #'breakable = ##t

  \tag #'conductorScore \tag #'pocketScore {
    r8. g,!16-. _\footnote \markup {"(12)"} #'(0.5 . -0.8) \markup {\italic "12 - According to N. Simrock 1885"}
    \bracketedP ([fis-.]) r r \dim g-. ([fis-.]) r r fis-. ([g-.]) r r g-. ([
  }
  \elseTag #'conductorScore \elseTag #'pocketScore {
    r8. g!16-. \bracketedP ([fis-.]) r r \dim g-. ([fis-.]) r r fis-. ([g-.]) r r g-. ([
  }

  gis-.]) \pp r r gis-. ([a-.]) r r a-. ([bes!-.]) r r bes-. ([a-.]) r r a-. ([
  bes!-.]) r r b-. ([ais-.]) r r \cresc a-. ([bes-.]) r r bes-. ([b-.]) r r cis-. ([
  b-.]) r r cis-. ([d-.]) r r fis-. \f ([e-.]) r8. r4
  \revert Beam #'breakable
  r4 gis,8 \p \< _\markup {\raise #1.0 \italic " molto cresc."} ( a ) cis2 \bindDynamics ( ~
  <<{cis4. c8 ) b4 ( gis8. e16 )}{s8 s \> s4 s8. s16 \! s4 \p}>>
  b'4 \pp ( a2 ) g!8 ( d )
  f!2 \dim ( ~ f8 e d e \!
  f8 ) a16 ( c, ) r8 a'16 ( c, ) r8 c'16 ( e, ) r8 c'16 ( e, )
  r8 cis'16 ( e, ) r8 cis'16 ( e, ) r8 d'16 \< ( f, ) r8 d'16 ( f, ) \!
  r8 ees'16 \fz \> ( fis, ) r8 ees'16 ( fis, \! ) r8 d'16 \p \> ( g, ) r8 des'16 ( f, ) \!
  r8 c'16 \p ( g ) r8 a16 \> ( ees ) r8 a16 ( ees ) r8 a16 ( ees) \!
  r8 g16 \pp ( d ) r8 g16 ( ees ) r8 g16 ( ees ) r8 g16 ( des )
  r8 f16  ( c ) r8 a'16 \cresc ( f ) r8 b16 ( g ) r8 f'16 ( b, ) \!
  r8 \rightDynamic e16 \mf \< ( bes ) r8 f'16 ( des ) \! des'8 \f r r4
  r4 \leftDynamic c, \PPdolce ( des4. e,8 )
  e2 ~ e8 \< g' ( aes bes \!
  des,2 ) \> ~ \stemDown des8 \! [c ( \acciaccatura ees8 des8. e,!16]) \stemNeutral

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.5

  e2 \pp ~ e8 g' \< ( a!16 c bes des, ) \!
  des2 \> ~ des8 \! g \cresc ( aes16 \! des ces d, )

  \tag #'partScore
    \dynamicLineSpannerStandard

  d2 \< ( ~ d8 g! ) \! aes16 ( des ces d, )
  ees8-^ \ff bes'-^( ~ bes16 des c? e, ) f8-^c'-^( ~ c16 ees d! fis, )
  g8-^d'-^( ~ d16 f! e! gis, ) a8-^a'-^( ~ a16 bes a g! )
  g ( f e f ) fis ( g f ees ) ees ( d cis d ) f ( ees! d c! )
  c ( bes a bes ) des ( bes g f ) <g, bes e>8 r16. bes32 \f
  \override TrillSpanner #'outside-staff-priority = #500

  \tag #'partScore {
    c8. \trill ^\markup {\tiny \flat} des16
  }
  \elseTag #'partScore  {
    \once \override TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
    c8. \startTrillSpan ^\markup {\lower #1.3 \tiny \flat} des16 \stopTrillSpan
  }

  <e, g,>16-^ <e g,>-^ r16. e'32

  \tag #'partScore {
    f8. -\tweak #'Y-offset #4 \trill g16
  }
  \elseTag #'partScore  {
    f8. \startTrillSpan g16 \stopTrillSpan
  }

  bes,16-^ bes-^ r16. bes'32

  \tag #'partScore {
    c8. \trill ^\markup {\tiny \flat} des16
  }
  \elseTag #'partScore  {
    \once \override TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
    c8. \startTrillSpan ^\markup {\lower #0.9 \tiny \flat} des16 \stopTrillSpan
  }

  \revert TrillSpanner #'outside-staff-priority
  e,16 ( f g bes, ) c ( des e,32 f g a ) bes \< ( a bes b c d! e f ) g ( a bes! c d? e f g ) \bindDynamics
  a8-> \ffz f16 ( e32 f ) a,8-> d-> c-> a-> f32 \dim ( a f a f a f a ) \!
  \repeat tremolo 4 {f32 \p \> ( a32} f8 \! ) r r2
  r2 a,8 \pp ( f16 e32 f a,8 d )
  c4 ( d ) a'8 ( f16 e32 f a,8 d )
  \once \override DynamicText #'self-alignment-X = #-0.75 a'1:32 \PPPMorendo
  
  \tag #'partScore
    \noBreak  % Pour ne pas couper la nuance

  a2.: f4:
  f2: d:
  des: c:
  b: c:
  b: c4 gis'8 ( a
  f4 ) gis8 ( \dim a f4 ) gis16 \( ( a ) gis ( a ) \!
  f4 \) gis16 \( ( a ) gis ( a ) f4 \) r
  R1

  \time 2/4

  R2

  \time 4/4

  R1

  c'4 \pp ( a8. g16 f8. [c16 a8. c16])
  a'4 ( g8. f16 a4 g8. f16
  a4 ) r r \times 2/3 {a8 ( c f}
  a2 ) a, \ppp (
  c,1 ) \fermata

  \bar "|."
}

voiceSgMbViolinoI = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 "Violini I"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "1.Viol."
  \set Staff.midiInstrument = "string ensemble 1"
  \key f \major
  \clef treble
  \SgMbViolinoI
}

quoteScoreSgMbViolinoI = \SgMbViolinoI
