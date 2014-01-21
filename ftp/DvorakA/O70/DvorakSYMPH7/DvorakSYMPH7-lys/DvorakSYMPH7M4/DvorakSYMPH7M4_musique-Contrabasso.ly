%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement IV - Finale allegro                       *
  * Fichier de notes, Contrebasse                                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMdContrabasso =
\relative c' {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 1 2)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn


  \TempoIV
  
  \transposition c
  r2 a \p
  <a, a'>1 \fz \> ~
  <<{q1}{s4 s s s8 s \!}>>
  q1 \dim ~
  \tag #'partScore {
    <<{q1}{s4 -\tweak #'minimum-length #8 \> s s s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{q1}{s4 \> s s s8 s \!}>>
  }
  \set doubleSlurs = ##t
  <bes bes'>2 ( \pp <g g'> )
  \set doubleSlurs = ##f
  <a a'>1 \> ~
  <<{q1}{s4 s s s8 s \!}>>
  a2-- \pp ( a-- )
  a2.-- ( a4-- )
  a2-- ( a-- )
  a2-- ( a-- )
  a2-- ( a-- ) \<
  
  \tag #'partScore {
    <<{a2.-- ( a4-- )}{\dShort s8 \! \bindDynamics s -\tweak #'minimum-length #8 \> s4 s s8 s \!}>>
  }
  \elseTag #'partSore {
    <<{a2.-- ( a4-- )}{\dShort s8 \! \bindDynamics s \> s4 s s8 s \!}>>
  }
  
  a2-- ( a--
  a2-- a-- )
  
  \TempoIVPPCresc
  
  a2-. \pp a-.
  
  \tag #'partScore
    <<{a1}{s8 \fz \bindDynamics s s -\tweak #'minimum-length #8 \> s s s \!}>>
  \elseTag #'partScore
    <<{a1}{s8 \fz s s \> s s s \!}>>
  
  a2-. a-.
  
  \tag #'partScore
    <<{a1}  {s8 \fz \bindDynamics s -\tweak #'minimum-length #6 \> s s s s \!}>>
  \elseTag #'partScore
    <<{a1}  {s8 \fz s \> s s s s \!}>>
  
  <<{a2-. a-.}{s4 \< s s s8 s \!}>>
  a4 \f r r2
  R1 * 10
  
  \tag #'partScore
    \pageTurn  % pour améliorer la mise en page
  
  bes1 ( \p aes2 g )
  gis \pp \< ( a?
  bes ) \fz r2
  <<{gis ( a4 bes )}{s4 s \< s s \!}>>
  b2 \fz r
  a2 \p \< ( bes!4 b ) \!
  c2 \f r
  <<{b2 ( d )}{s4 \< s s s8 s \!}>>
  a4 \ff r r2
  
  \mark \default
  
  d1 \ffz
  d2 \ffz d'
  f,4 ( a ) f' ( d8 bes )
  g4-. e'8-. d-. cis4-. cis,-.
  \leftDynamic d2-. _\Marcato g,-.
  a-. r
  d-. g,-.
  a-. r
  a-. a'-.
  a,-. r
  a-. fis-.
  b-. r
  bis-. cis-.
  a-. r
  cis-. a-.
  
  \tag #'partScore {
    fis2:8 \ff
    fis:
    e8 e' e e a,2:
    a: a:
  }
  \elseTag #'partScore {
    fis8 \ff fis fis fis fis fis fis fis
    e8 e' e e a, a a a
    a a a a a a a a
  }
  
  a4 r r2
  r8 g'8 \ff cis, d e g, a bes!
  gis4-. a-. r bes!-.
  r gis8-. gis-. bes4-. a-.
  
  \TempoIVRit
  
  r4 g!-^ e-^ a-^
  
  \TempoIVIT
  
  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-3
  
  \mark \default
  
  \tag #'partScore {
    d8 r \rightDynamic d4 \ff -\tweak #'minimum-length #8 \< ( bes' ) \! a8 a
  }
  \elseTag #'partScore {
    d,8 r \rightDynamic d4 \ff \< ( bes' ) \! a8 a
  }
  d,4-. e-. f-. a8 ( g )
  f4-. c-. d ( bes )
  a-. d-. a2->
  R1
  r2 r4 a'-. \f
  d,8 r f4-. \ff bes-. a-.
  d,-. e-. f-. g-.
  f-. c-. d-.bes-.
  a-. d-. a2->
  R1
  r4 c-. \f r2
  f2-> \ff f,->
  fis2. a4-.
  r c-. r ees-.
  r fis-. d-. d'-.
  g,2-> \ff g,->
  gis2. b4
  r d-. r f-.
  r gis-. e-. e'-.
  a,, r a' \dim r
  a, r a' \p r
  
  \mark \default
  
  a, \p r r2
  R1
  a'4 \f ( bes! \< ) b ( c! ) \!
  cis4. ( d16 e ) f4-. d-.
  e4.  ( f16 g ) aes4-. ( f-. )
  a!-. \ff c,!-. fis-. a,-.
  dis-. fis,-. b-. b,-.
  e r r2
  R1
  r2 r4 e8 \mf e
  \tag #'partScore {
    a,2-. \p -\tweak #'minimum-length #8 \> b-. \!
  }
  \elseTag #'partScore {
    a2-. \p \> b-. \!
  }
  e4 r r2
  R1 * 3
  
  \bar "||"
  
  \mark \default
  
  \key a \major
  a,4 \mp r gis r
  a r b r
  fis' r cis r
  e r e r
  a, r gis r
  a r b r
  fis r cis' r
  cis r cis r
  fis r r2
  R1 * 3
  fis4 \p r cis r
  d \Pizz d' d, d'
  d, d' d, d'
  d, d' d, d'
  d, r cis'2-> \Arco \f
  
  cis,-> c->
  b'-> \fz b, \fz ~
  b bes
  \tag #'partScore {
    <<{a2 ( g )}{s8 s -\tweak #'minimum-length #8 \< s4 s s8 s \!}>>
    <<{fis!2 ( f )}{s8 s -\tweak #'minimum-length #8 \< s4 s s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{a2 ( g )}{s8 s \< s4 s s8 s \!}>>
    <<{fis!2 ( f )}{s8 s \< s4 s s8 s \!}>>
  }
  
  \mark \default
  
  e8-. \ff cis'! ( e ) r d-. e ( d' ) r
  cis,-. e ( cis' ) r gis,-. e' ( gis ) r
  a,-. e' ( a ) r b,-. e ( b' ) r
  a,-. e' ( a ) r d,-. e ( d' ) r
  cis,-. e ( cis' ) r gis,-. e' ( gis ) r
  a,-. e' ( a ) r d,-. a' ( d ) r
  e,-. cis' ( e ) r e,2
  a,4 r r2
  R1 * 2
  e'1 \fz
  a,4 r r2
  R1 * 2
  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.5
  g'1-> \fz
  c,4 \fz r b \fz r
  a \fz r g \fz r
  c \fz r d \fz r
  e \fz r e \fz r
  a, \fz r c-. b-.
  a \fz r g \fz r
  c \fz r d \fz r
  e \fz r e \fz r
  
  \bar "||"
  
  \mark \default
  
  \key a \minor
  a,4. \ff c8-. a'4.-> c8-.
  \tag #'partScore
    \dynamicLineSpannerStandard
  a'4.-> c,8-. a4.-> c,8-.
  a1-> \fz \> ~
  <<{a}{s2 s4 s8 s \!}>>
  a4.-> \ff cis8-. a'4.-> \> cis8-.
  a'4.-> cis,8-. a4.-> cis,8-. \!
  a1-> \p \> ~
  <<{a}{s2 s4 s8 s \!}>>
  a'1 \pp (
  g )
  f (
  c )
  f (
  e8 ) r r4 r2
  R1 * 2
  r2 e4 \pp r
  R1

  \tag #'partScore
    \TempoIVPRit
  
  % allonger le silence multimesure pour placer correctementle tempo
  \tag #'partScore {
    \once \override Voice.MultiMeasureRest #'minimum-length = #18
  }
  
  R1 * 4
  
  \mark \default
  
  R1 * 3
  ees'1 \pp ~
  ees ~
  ees ~
  ees4 r r2
  R1 * 4
  e!1 \ppp ~
  e ~
  e ~
  e4 r r2
  R1 * 6
  b,2 \pp ( e, )
  <<{
    fis2 ( g
    fis1 )
    fis2 ( g ~
    g1 )
    g2 ( aes
    g1 )
    g2 ( aes ~
    aes1 )
    a!2 ( bes ~
    bes1 )
    <<{bes2 ( b ~}{s2 s8 s s s16 s \<}>>
    }
    {

      \tag #'partScore {
        \override DynamicLineSpanner #'staff-padding = #2
        s4 -\tweak #'minimum-length #8 \< s8 s16 s s8 -\tweak #'minimum-length #8 \> s s s8 \!
        s1
        s4 -\tweak #'minimum-length #8 \< s8 s16 s s8 -\tweak #'minimum-length #8 \> s s s8 \!
        s1
        s4 -\tweak #'minimum-length #8 \< s8 s16 s s8 -\tweak #'minimum-length #8 \> s s s8 \!
        s1
        s4 -\tweak #'minimum-length #8 \< s8 s16 s s8 -\tweak #'minimum-length #8 \> s s s8
        \dynamicLineSpannerStandard
      }
      \elseTag #'partScore {
        s4 \< s8 s16 s s8 \> s s s8 \!
        s1
        s4 \< s8 s16 s s8 \> s s s8 \!
        s1
        s4 \< s8 s16 s s8 \> s s s8 \!
        s1
        s4 \< s8 s16 s s8 \> s s s8
      }

      s2 \! s2
      s1
      % deux lignes de dynamique superposées - celle qui commence en premier lieu (<) est en dessous
      \polyNeutral {
        \hairpinToBarLineFalse
        s1 -\tweak #'transparent ##t \<
        s4 -\tweak #'Y-offset #0.5 \cresc s4 \!
      }
      {
        \hairpinToBarLineFalse
        s1
        \once \override DynamicText #'self-alignment-X = #1.2
        s4 -\tweak #'transparent ##t \p -\tweak #'minimum-length #12 -\tweak #'extra-offset #'(-0.8 . 2) \< s s \!
      }
  }>>
  b2 ) b' \! ~
  b b,
  b4 \mf r b \cresc r
  b r b r \!
  b \f r r2
  R1
  
  \mark \default
  
  e1 \ff ~
  e2 e4. e8
  e'1 \fz
  b \fz
  e,4 r r2
  R1 * 3
  g,1-^ \ff
  r4 b'8 b e,4 g8 g
  r4 b8 b e,4 g8 g
  r4 b8 b e,4 g8 g
  gis,1-^ \ff
  r4 d''8 d d,4-> f8 f
  r4 d'8 d d,4 f8 f
  r4 d'8 d d, e f e
  a,4 \ff r a r
  a r a r
  
  \mark \default
  
  R1 * 6
  f'1 \fz
  b \fz
  bes \fz
  e! \fz
  ees, \fz
  a! \fz
  aes \fz
  d! \fz
  cis4 \ff r cis, r
  cis r cis r
  cis r cis r
  cis \dim r cis r
  <<{cis4. ( dis16 eis fis4-. ) d-.}{s4 s \dim}>>
  <<{cis4. ( dis16 eis fis4-. ) d-.}{s4. s8 \> s4 s8 s \!}>>
  cis4 \p r r2
  R1 * 3
  
  \mark \default
  
  fis,4-. \ppp r8 a-. fis4-. r8 a
  fis4-. r8 a-. fis4-. r8 d'
  a4 r8 cis \ppp fis4-. r8 cis'
  fis4-. r8 a fis4-. r8 d
  a4-. r8 cis fis,4-. r8 cis
  fis,4-. r8 a fis4-. r
  R1
  r2 r4 r8 fis \pp
  g4 r8 bes g4 r8 bes
  g4 r8 bes g4 r8 ees'
  bes4-. r8 d \ppp g4-. r8 d'
  g4-. r8 bes g4-. r8 ees
  bes4-. r8 d g,4-. r8 d
  g,4 r8 bes g4 r4
  R1
  r2 r4 r8 g \pp
  aes4-. r r2
  r fes''2 \pp (
  ees ) ces (
  aes ) fes' (
  ees ) ces (
  aes ) ges' (
  f ) d (
  
  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  b2 \< ) fis' (

  \tag #'partScore
    \noBreak  % Pour ne pas couper le spanner
  
  eis ) d! (
  
  \tag #'partScore
    \noBreak  % Pour ne pas couper le spanner
  
  b2 ) a' (
  gis4 ) d, ( f!4 ) <<{a (}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  gis4 ) \< d4 ( f ) a (
  <<{gis ) r f r}{s4 s s s8 s16 s \!}>>
  d4-. \f r bes-. r
  
  \bar "||"
  
  \mark \default
  
  \key d \minor
  a1 \ff
  a4 r8 f \< a4 r8 d
  f4 r8 a d4 r8 f \!
  a4 r8 f bes4 r8 bes,
  g'4 r8 e cis4 r8 a
  d4 r8 d, g4 r8 g,
  a'4 \ff r8 a, a'4 r8 a,
  a'4-. a,-. r a'-.
  
  
  \tag #'partScore
  <<{
    \repeat unfold 12 {r4 a, r a'}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #1
      \repeat percent 12 {s1}
  }>>
  \elseTag #'partScore
  \repeat unfold 12 {r4 a,-. r a'-.}
  
  \mark \default
  
  a,4 \fz r r2
  R1 * 6
  a'4 \pp \Pizz r a, r
  a' r a, r
  a' r a, r
  a' r a, r
  a' r a, r
  R1
  a'4 r a, r
  R1
  
  \bar "||"
  
  \key d \major
  
  d'4 \bracketedP r cis r
  d \< r e r \!
  b r fis r
  a \> r a r \!
  d, \p r cis r
  d \< r e r \!
  b r fis r
  fis' \> r fis, r \!
  
  \TempoIVTran
  
  b1 \p \Arco ~
  b
  b \pp ~
  b
  b4 r fis' r
  g, \mf \Pizz g' g g'
  g g, g g,
  g g' g g'
  g r fis2-^ \ff \Arco
  fis,-^ f-^
  e' e, \fz ~
  e ees->
  <<
    {d ( c )  b ( bes4 e, )}	% 2 mesures
    {s4 \bracketedHairpin s \< s2 s s8 s16 s \!}
  >>
  
  \mark \default
  
  fis8-. \ff d' ( fis ) r g,-. a ( g' ) r
  fis,-. a ( fis' ) r cis-. a' ( cis ) r
  d,-. a' ( d ) r e,-. a ( e' ) r
  d,-. a' ( d ) r g,,-. a ( g' ) r
  fis-. a ( fis' ) r cis,-. a' ( cis ) r
  d,-. a' ( d ) r g,,-. d' ( g ) r
  a,-. d ( a' ) r a,-. cis ( a' ) r
  d,4 r r2
  R1 * 2
  a1 \fz
  d4 r r2
  R1 * 2
  c1 \fz
  f4 \ff r e r
  d r c r
  f, r g r
  a r a r
  d r f-. e-.
  d r c r f, r g r
  a r a r
  
  \bar "||"
  
  \mark \default
  
  \key d \minor
  d4.-> \ff f8 d4.-> f8
  d4.-> f8 d4.-> f8
  d1-^ \ffz ~

  \tag #'partScore {
    <<{d1}{s4 -\tweak #'minimum-length #8 \> s s s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{d1}{s4 \> s s s8 s \!}>>
  }

  d4.-> \ff fis8 d4.-> fis8
  d4.-> fis8 d4.-> fis8
  d1-^ \ffz ~
  \tag #'partScore {
    <<{d1}{s4 -\tweak #'minimum-length #8 \> s s s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{d1}{s4 \> s s s8 s \!}>>
  }

  \override DynamicLineSpanner #'staff-padding = #2.5
  d4.-> \ff f!8 d4.-> f8
  cis1-^ \fz
  c4.-> ees8 c4.-> ees8
  c1-^ \fz
  b4. \fz d8 b4. \fz d8
  b1-^ \fz
  bes4. \fz d8 bes4. \fz d8
  bes1-^ \fz
  bes-^ \ffz
  e,-^ \ffz
  
  \mark \default
  
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 4/6 {a2.:8 \ff a:}
  \dynamicLineSpannerStandard
  \tupletOff
  \times 4/6 {a2.:8 a:}
  \times 4/6 {a2.:8 a:}
  \times 4/6 {a2.:8 a:}
  \times 4/6 {a2.:8 a:}
  \times 4/6 {a2.:8 a:}
  a2 \ff r
  a \ff r
  a4 r bes8 \p bes r bes
  bes bes r bes bes bes r bes
  bes \dim bes r bes bes bes r bes
  bes bes r bes a \pp a r a
  a a r a a a r a
  d1-^ \ffz ~
  d
  c-^ \ffz ~
  c
  b-^ \ffz ~
  b
  bes-^ \ffz ~
  bes
  a2 \fz d
  g, d'
  g, d'
  g, g4-. bes-.
  r ees-. r g-.
  r bes,-. ees-. g-.
  bes-. r r2
  
  \mark \default
  
  g4-^fis-^ r2
  f4-.r e-. r
  a,-^ a'-^ r2
  \TempoIVPAn
  d,2-> \ff d'->
  bes,-> bes'->
  d,-> d'->
  bes,-> bes'->
  d,2 \ff bes''
  a2. f4
  d ( e ) f ( d8 a )
  cis4-> d gis,-> a
  e-> f cis-> d
  a-> cis d-> a
  cis-> d a-> cis
  d-> a d-> a'
  d-> a d,-> a
  d-> a' d-> a
  d,-> a d-> a'
  
  \TempoIVMMaes
  
  d, r d2 \ff
  fis,1->
  g-> ~
  g
  d'-^
  d-^
  d-^ \fz
  d-^ \fz
  d-^ \fz
  
  
  \tag #'partScore {
    d4 \ffz r r2
  }
  \elseTag #'partScore {
    d4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  }
  
  \bar "|."
}

voiceSgMdContrabasso = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 "Contrabassi"}
  \tag #'partScore
  \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
  \set Staff.shortInstrumentName = "Cb."
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef bass
  \SgMdContrabasso
}

quoteScoreSgMdContrabasso = \SgMdContrabasso
