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
  * Fichier de notes, Violons II                                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMbViolinoII =
\relative c' {

  \include "Common/Properties.ly"

  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoII

  f4 \Pizz \p r e f
  c e f r
  f \pp f d f
  d c c r
  d \p \< r e \! r
  f \> r8 f e4 \! r
  e \p \dim f d r8 d
  c4 \pp e <f a,> r
  b,8 \p \Arco ( c f4 \cresc ) c ( gis'8 a ) \!
  e8 f <<{<f a>2.}{s4 \f \> s4 s8 s8 \!}>>

  \mark \default    % Mark A - mesure 11

  r16 a8 \pp ( f16 ) r a8 ( f16 ) r e8 ( c16 ) r e8 ( c16 )
  r e8 ( c16 ) r e8 ( c16 ) r d8 ( bes16 ) r d8 \< bes16
  r c'8 \! ( ees,16 ) r c'8 ( ees,16 ) r g8 ( \dim d16 ) r f8 ( des16 )
  r e?8 \p ( c16 ) r a'8 ( c,16 ) r a'8 ( c,16 ) r a'8 ( c,16 )
  r g'8 \pp ( bes,16 ) r des8 ( g,16 ) r g'8 ( des!16 ) r g8 ( des16 )
  <<{r f8 ( c16 ) r f8 ( c16 ) r f8 ( b,16 ) r f'8 ( b,16 )}{s4 s16 s4 \< s8 s \!}>>

  \tag #'partScore {
    r16 e8 \< ( c16 ) r \bindDynamics bes'8 \f ( des,16 ) r g8 \dim ( c,16 <<{bes?4 ) ~}
      {s8. \p -\tweak #'minimum-length #6 \> s16 \!}>>
  }
  \elseTag #'partScore {
    r16 e8 \< ( c16 ) r \bindDynamics bes'8 \f ( des,16 ) r g8 \dim ( c,16 <<{bes?4 ) ~}{s8. \p \> s16 \!}>>
  }

  bes8 r r4 r2
  R1
  r4 <bes g'> 4 \Pizz \pp q r
  R1
  r4 q \pp q r
  r4 des-- \pp \Arco ( des-- ) r8 bes16 ( des )
  r8 a!16 ( f' \cresc ) r8 bes,16 ( e ) r8 c16 ( f ) r8 d?16 ( f ) \!

  \tag #'partScore {
    r8 d16 ( f ) <<{f2.->  ~}{s2 \f s8 -\tweak #'minimum-length #5 \> s16 s \!}>>
  }
  \elseTag #'partScore {
    r8 d16 ( f ) <<{f2.->  ~}{s2 \f s8 \> s16 s \!}>>
  }

  f8 r r c'16 ( \> a ) r8 \! c,16 \p ( a ) r4
  bes8-- \p r r4 des8-- \f r r4
  <f g,>16^> \ff q^> r8 r4 <e g,>8 r r bes'16 \dim ( a \!
  g8 ) r bes,16 ( \p a g ) r r2
  R1 * 2

  \mark \default    % Mark B - mesure 32

  R1
  r4 r8 e''8 \Pizz \pp c bes g e
  f r r4 r2
  r4 r8 e' \pp c bes g e
  f r g'16 \pp \Arco ( f e f ) r4 g,16 ( f e f )
  <f a,>2 ~ q16 f ( a c ~ c4 ~
  <<{c1 )}{s4 \< s4 s s8 s \!}>>
  f4 \f \< ( bes ) ~ bes8 \! \times 4/5 {
    \once \override Hairpin #'rotation = #'(5 -1.8 0)bes,,32 \< ([a bes c d])
  } e32 ( f g a bes c d e ) \!
  f4-> \ff r f-> \fz f8. ( e32 f )
  g4-> aes8. ( g32 aes ) f4-> des8. ( c32 des )
  des4 c-> \dim des8([aes ) bes8. ( des16]) \!

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2

  des8 \p ( bes \> f aes ) ges ( ees ) <<{ges4}{s8 s \!}>>

  \mark \default    % Mark C - mesure 44

  f8 \pp r r4 r2

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.8

  R1 * 3
  \repeat tremolo 8 {e32 \pp ( gis )} \repeat tremolo 8 {e32 ( gis )}
  \repeat tremolo 4 {e32 ( gis \cresc} \repeat tremolo 12 {gis32 b ) \!}
  \repeat tremolo 8 {gis32 ( b} <<{\repeat tremolo 8 {gis b )}}{s8 s16 s \dim}>>
  \repeat tremolo 4 {e,32 \p ( g!} e32 \dim g e g fis g e g \! )
  \repeat tremolo 4 {g32 \pp ( b} \repeat tremolo 4 {a32 \pp c )}

  \tag #'partScore
    \dynamicLineSpannerStandard

  b4. r8 b4 \< ( a8. g16 \! )
  dis'4 \< ( b8 ) b16 ( b' ) b4 \! a8. ( g16 )
  dis'4 \mf \< b4. d,!8 ( cis b ) \!
  fis'8.-> \ff ( g32 fis ) fis,8.-> ( g32 fis ) fis8.-> ( g32 fis ) fis'8.-> ( g32 fis )
  fis8.-> ( g32 fis ) fis,8.-> ( g32 fis ) fis8.-> ( gis32 fis ) fis'8.-> ( gis32 a )
  gis8. ( a32 gis ) gis8. \dim ( a32 gis ) a8. ( b32 a ) a8. ( b32 a )
  gis8. \p \dim ( a32 gis ) gis8. ( a32 gis ) gis8. \pp ( a32 gis ) gis8. ( a32 gis )
  gis16 e8 ( dis32 e cis16 ) gis-. ( e-. gis,-. ) r2
  r2 r16 d''!8 \pp ( cis32 d b16 ) g !-. ( d-. b-. )
  R1 * 2
  \override Beam #'breakable = ##t

  \mark \default    % Mark D - mesure 63

  <ais' fis'>16 \ff r r8 r4 r16 cis8 -\tweak #'X-offset #-3.2 \f ( bis32 cis \dim ais16 ) fis-. ( cis-. g'!-. )
  fis16\p  r r cis-. ([cis-.]) r r \dim cis-. \! ([cis-.]) r r cis-. ([cis-.]) r r cis-. ([
  cis-.] \pp ) r r cis-. ([cis-.]) r r cis-. ([cis-.]) r r cis-. ([cis-.]) r r cis-. ([
  cis-.]) r r cis-. ([cis-.]) r r \cresc cis-. ([cis-.]) r r cis-. ([d-.]) r r <d e>-. ([
  <d e>-.]) r r g-. ([gis-.]) r r ais-. \f ([b-.]) r8. r4
  r \slurUp <e, gis>8 \p ( \< _\markup {\raise #1.2 \italic " molto cresc."} <dis fis>
  \poly {eis4 \! fis8 g! )}{d2} \slurNeutral

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2

  <<{gis1}{s8 s \> s4 s8. s16 \bindDynamics s4 \p}>>
  b4 \pp ( a8 c, d2 )
  c2 \dim ( bes! ) \!

  \tag #'partScore
    \dynamicLineSpannerStandard

  a8 r <a f'>8 \Pizz \p q <c e> r q q
  <cis e> r <e g> q <d f> \< r  q q \!
  <c fis> \fz \> r q q \! <bes g'> \p \> r <bes f'!> <bes f'> \!
  <g e'> \p r <<{<c ees>8}{s16 s \>}>> q8 q r q q \!
  <bes d> r <g ees'> \pp q q r <g e'> q
  <a f'> r \cresc <c f> q <b f'> r q <f' b> \!
  <g bes!> \mf \< r <f des'> \Arco q \! <bes g'> \f r r4
  R1
  r4 <aes,bes>-- \pp ( q-- ) r
  r <f' g!>-- ( <f g>-- ) r
  r <aes, bes>-- \pp ( q-- ) r
  r <<{<ces aes'>-- (}{s8 s \cresc}>> q4-- ) r
  r <ges' ces>-- ( <f ces'>-- ) \! r
  bes8 ( \ff ges' ) g16-> bes,-> c?-> des-> c8 ( aes') a16-> c,-> d!-> ees->
  d8 (bes'! ) b16-> d,-> e!-> f-> e8-^ a-^ ( ~ a16 bes a g )|
  \poly {
    \set doubleSlurs = ##t
    \stemDown
    \afterGrace {<a, a'>4 \startTrillSpan}{\stemUp <gis gis'>16 \stopTrillSpan ([<a a'>])}
    \stemDown
    \afterGrace {<ees' ees'>4 \startTrillSpan}{\stemUp <d d'>16 \stopTrillSpan ([<ees ees'>])}
    \stemDown
    \afterGrace {
      \once \override TextScript #'script-priority = #-1000
      <f, f'>4 ^\markup {\lower #0.4 \tiny \natural}
      -\tweak TrillSpanner #'extra-offset #'(0.0 . -1.3 )
      -\tweak TrillSpanner #'outside-staff-priority #500
      \startTrillSpan
    }{\stemUp <e! e'!>16 \stopTrillSpan ([<f f'>])}
    \stemDown
    \afterGrace {<c' c'>4 \startTrillSpan}{\stemUp <b b'>16 \stopTrillSpan ([<c c'>])}
    \stemDown
    \afterGrace {
      \once \override TextScript #'script-priority = #-100
      <d, d'>4 ^\markup {\lower #0.9 \tiny \flat}
      -\tweak TrillSpanner #'extra-offset #'(0.0 . -1.5 )
      -\tweak TrillSpanner #'outside-staff-priority #500
      \startTrillSpan
    }{\stemUp <cis cis'>16 \stopTrillSpan ([<d d'>])}
    \stemDown
    \afterGrace {<f f'>4 \startTrillSpan}{\stemUp <e! e'!>16 \stopTrillSpan ([<f f'>])}
    \unset doubleSlurs
  }
  {

    \tag #'partScore
      \override DynamicLineSpanner #'staff-padding = #5.2

    \repeat unfold 2 {\afterGrace {s4 \fz \startTrillSpan}{\stemUp s16 \stopTrillSpan s}}

    % Il faut placer ici, du haut vers le bas, un markup (bécarre), le trillspan et la nuance Fz
    % En appliquant un X-offset négatif, le Fz remonte
    \afterGrace {
      s4
      -\tweak #'outside-staff-priority #2000 -\tweak #'X-offset #-1 \fz
      -\tweak #'extra-offset #'(0 . -2.5)
      -\tweak #'X-offset #0.7 _\markup {\tiny \natural}
      -\tweak #'outside-staff-priority #1000
      -\tweak #'extra-offset #'(1 . 2.6)
      \startTrillSpan
    }{\stemUp s16 \stopTrillSpan s}
    \afterGrace {s4 \fz \startTrillSpan}{\stemUp s16 \stopTrillSpan s}

    % Il faut placer ici, du haut vers le bas, un markup (bémol), le trillspan et la nuance Fz
    % En appliquant un X-offset négatif, le Fz remonte
    \afterGrace {
      s4
      -\tweak #'outside-staff-priority #2000 -\tweak #'X-offset #-1 \fz
      -\tweak #'extra-offset #'(0 . -2.5)
      -\tweak #'X-offset #0.7 _\markup {\tiny \flat}
      -\tweak #'outside-staff-priority #1000
      -\tweak #'extra-offset #'(1 . 2.2)
      \startTrillSpan
    }{\stemUp s16 \stopTrillSpan s}
    \afterGrace {s4 \fz \startTrillSpan}{\stemUp s16 \stopTrillSpan s}
  }

  \tag #'partScore
    \dynamicLineSpannerStandard

  \stemNeutral
  \override TrillSpanner #'outside-staff-priority = #500
  <g? bes? e>8 r16. bes32 \f
  \once \override TrillSpanner #'extra-offset = #'(0.0 . -1.3 )
  c8. \startTrillSpan ^\markup {\lower #0.9 \tiny \flat} des16 \stopTrillSpan
  <g,, e'>16^^ q^^ r16. e''32 f8. \startTrillSpan g16 \stopTrillSpan <des, f>16^^ q^^ r16. bes''32
  \once \override TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
  c8. \startTrillSpan ^\markup {\lower #0.9 \tiny \flat} des16 \stopTrillSpan
  \revert TrillSpanner #'outside-staff-priority
  e,16 ( f g bes, ) c ( des e,32 f g a ) bes ( \< a bes b c d! e, f ) g ( a bes! c d e f g ) \!
  a8 \ffz r r4 a8^^ \ffz f16 ( e32 f ) a,8 \dim ( d )
  c \p ( a ) \repeat tremolo 4 {f32 \dim ( a} \repeat tremolo 4 {f32 a} f8 ) r
  R1 * 2
  \once \override DynamicText #'self-alignment-X = #-0.75
  f1:32 \PPPMorendo
  <ees f>2:32 <d f>:
  des4: c: b2:
  bes: a:
  gis: a:
  gis: a4 c8 ( f
  a,4 ) c8 ( \dim f a,4 ) c16 \( ( f ) c ( f )\!
  a,4 \) c16 \( ( f ) c ( f ) a,4 \) r
  R1
  \time 2/4
  R2
  \time 4/4
  R1
  a1 \pp ~
  a ~
  a4 r r2
  r <a f'> \ppp
  q1 \fermata

  \bar "|."
}

voiceSgMbViolinoII = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 "Violini II"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "2.Viol."
  \set Staff.midiInstrument = "string ensemble 1"
  \key f \major
  \clef treble
  \SgMbViolinoII
}

quoteScoreSgMbViolinoII = \SgMbViolinoII
