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
  * Fichier de notes, Alto                                              *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMbViola =
\relative c' {

  \include "Common/Properties.ly"

  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoII

  d4 \Pizz \p r bes a
  c c <a c> r
  bes \pp a bes a
  g8 f e4 <f a> r

  \tag #'partScore {
    <f a> \p -\tweak #'minimum-length #5 \< r c' \! r
  }
  \elseTag #'partScore {
    <f, a> \p \< r c' \! r
  }

  d \> r8 d cis4 \! r
  cis \p \dim d g, r8 gis
  a8 \pp bes c!4 c r

  \tag #'partScore {
    r8 c,8 \Arco \p ( f4 ) -\tweak #'minimum-length #8 \cresc e8 \< ([f] gis [a])
  }
  \elseTag #'partScore {
    r8 c,8 \Arco \p ( f4 ) \cresc e8 \< ([f] gis [a])
  }
  gis ( a \! c4 ) \f \> a16 ( c f a c8 ) <<{r8}{s16 s16 \!}>>

  \mark \default    % Mark A - mesure 11

  f,,2 \pp ( g!4 a )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.8

  bes ( f2. ) \<
  <<{fis2 ( g )}{s16 s \! s8 s4 s16 s \dim}>>

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2

  g4 \p c8. ( f,!16 fis2 )
  g4 \pp ( ees'8. ees,16 e2 )

  \tag #'partScore {
    <<{f4 ( c'  b2 )}{s4 s16 -\tweak #'minimum-length #4 \< s4 s8 s \!}>>
    c4 -\tweak #'minimum-length #5 \< des \f ~ des16 ( c8 -\tweak #'minimum-length #6 \dim g16 )
    <<{bes?4 (}{s8. \p -\tweak #'minimum-length #5 \> s16 \!}>>
  }
  \elseTag #'partScore {
    <<{f4 ( c'  b2 )}{s4 s16 \< s4 s8 s \!}>>
    c4 \< des \f ~ des16 ( c8 \dim g16 )
    <<{bes?4 (}{s8. \p \> s16 \!}>>
  }
  des8 ) \! r r4 r2

  \tag #'partScore
    \dynamicLineSpannerStandard

  R1
  r4 <bes f'>4 \pp \Pizz q r
  R1
  r4 q \pp q r
  r g-- ( \pp \Arco g-- ) r16 e! ( g bes )
  r16 c, ( f a ) \cresc r c, ( e c' ) r c, ( f c' ) r d, ( f d' )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.8

  \tag #'partScore {
    r16 d, ( f d' )<<{c2.-> ~}{s2 \f s8 -\tweak #'minimum-length #6 \> s16 s \!}>>
    c8 \! r r a'16 -\tweak #'minimum-length #4 \> ( f ) r8 \! a,16 \p ( f ) r4
  }
  \elseTag #'partScore {
    r16 d ( f d' )<<{c2.-> ~}{s2 \f s8 -\tweak #'minimum-length #6 \> s16 s \!}>>
    c8 \! r r a'16 \> ( f ) r8 \! a,16 \p ( f ) r4
  }

  f8-- \p r r4 bes8-- \f r r4
  <bes des>16-> \ff q-> r8 r4 <c, c'>8 r r g''16 \dim ( f \!
  e8 ) r g,16 \p ( f e ) r c' \dim ( des e, f g8 ) \! r
  \tag #'partScore
    \dynamicLineSpannerStandard

  R1 * 2

  \mark \default    % Mark B - mesure 32

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.3

  \tag #'partScore {
    <<{f2. ( c4 ) \! ~}{s2. \pp -\tweak #'minimum-length #6.5 \< s8 \bracketedFz \dim}>>
    \once \override Slur #'positions = #'(0.5 . 1.2)
    c4 \! ( c'2. ) \pp ~
    c4 ( a -\tweak #'minimum-length #5 \< f c \fz -\tweak #'minimum-length #9 \dim ) ~
  }
  \elseTag #'partScore {
    <<{f2. ( c4 ) \! ~}{s2. \pp \< s8 \bracketedFz \dim}>>
    \once \override Slur #'positions = #'(0.5 . 1.2)
    c4 \! ( c'2. ) \pp ~
    c4 ( a \< f c \fz \dim ) ~
  }

  c c'2. \pp
  c1
  a8. ( f16 c4 ) a'8. ( f16 c4 ) ~
  c r r2
  r2 <c bes'>2-> \ff
  <f aes>2.:32 \ff <f des'>4:

  \tag #'partScore {
    <g bes>: <ees c'>: <f aes>: <des ges bes>: \bracketedDiv
  }
  \elseTag #'partScore {
    <g bes>: <ees c'>: <f aes>: <des ges bes>:
    ^\footnote \markup {"(11)"} #'(0.5 . 0) \markup {\italic "11 - According to N. Simrock 1885"} \bracketedDiv
  }

  <des f>: <c ees aes>: \dim <des f aes>: <des ges bes>:
  <<{<des f bes>: <f aes>: <ges aes>2:}{s8 \p s \> s4 s s8 s \!}>>

  \mark \default    % Mark C - mesure 44

  \repeat tremolo 8 {des32 \pp ( f} \repeat tremolo 8 {des32 f )}

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.8

  \tag #'partScore {
    <<{\repeat tremolo 4 {des32 ( f )} \repeat tremolo 12 {f32 ( aes )}}
      {s8 s -\tweak #'minimum-length #5 \< s8 s16 s \!}>>
    \repeat tremolo 8 {\rightDynamic f32 \mf -\tweak #'minimum-length #6 \< ( aes \! )}
      \repeat tremolo 8 {f32 \> ( aes \! )}
  }
  \elseTag #'partScore {
    <<{\repeat tremolo 4 {des,32 ( f )} \repeat tremolo 12 {f32 ( aes )}}
      {s8 s \< s8 s16 s \!}>>
    \repeat tremolo 8 {f32 \mf \< ( aes \! )} \repeat tremolo 8 {f32 \> ( aes \! )}
  }

  \repeat tremolo 4 {cis,32 \p \> ( e! )} cis32 ( e cis e dis e cis \! e ) \repeat tremolo 4 {e32 ( \pp gis}

  \tag #'partScore
    \dynamicLineSpannerStandard

  \repeat tremolo 4 {fis32 a? )}
  gis8 r r4 r16 e8 \pp ^\markup {\italic \fontsize #1 "Leggio I."} ( fis32 gis ) r16 gis-- ( a-- b )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.3

  r b8 \< ( cis32 dis e16 ) e-- ( fis-- gis-- ) \! r8 fis16-- \> ( e-- ) r8 b \!
  r16 e,-. \cresc e'-. gis, ~ gis b-. gis'-. b, ~ b e-. b'-. e, \dim ~ e b-. gis'-. gis,-.

  r e8 \p ( fis32 g! ) ~ g16 \dim e' ( d c ) r d8 \pp ( a'32 g? ) r16 a, ( ees' d )
  \tag #'partScore {
    \dynamicLineSpannerStandard
    \poly {
      \repeat tremolo 8 {b32 -\tweak #'X-offset #-4 \Div ^\markup {"Tutti"} \pp ( d )} \repeat tremolo 8 {b32 ( d )}
      \repeat tremolo 8 {b32 ( dis ) \cresc} \repeat tremolo 8 {b32 ( dis)}
      \override DynamicLineSpanner #'staff-padding = #3.3
      \repeat tremolo 8 {b32 \mf ( dis )} \repeat tremolo 4 {b32 \f ( -\tweak #'minimum-length #10 \< e)}
      \repeat tremolo 4 {b32 \f ( -\tweak #'minimum-length #10 \< g')}
    }
    {
      \repeat tremolo 8 {g,32 ( b! )} \repeat tremolo 8 {g ( b )}
      \repeat tremolo 8 {g32 ( b! )} \repeat tremolo 8 {g ( b )}
      \repeat tremolo 8 {g32 ( b! )} \repeat tremolo 4 {g ( e' )} \repeat tremolo 4 {g, ( b )}
    }
  }
  \elseTag #'partScore {
    \repeat tremolo 8 {<g b>32 \Div  ^\markup {\italic \fontsize #1 "Tutti"} \pp ( <b! d> )}
    \repeat tremolo 8 {<g b>32 ( <b d> )}
    <<{\repeat tremolo 8 {<g b>32 ( <b! dis> )} \repeat tremolo 8 {<g b>32  ( <b dis> )}}{s8 s16 s \cresc s4 \!}>>
    \repeat tremolo 8 {<g b>32 \mf \< ( <b! dis> )} \repeat tremolo 4 {<g b>32 ( e' )}
    \repeat tremolo 4 {\stemUp <g, b>32 ( <b g'> ) \! \stemNeutral}
  }

  <b' d>4:16 ^^ \ff <b, d?>: ^^ \fz <ais cis>:^^ \fz <ais' cis>:^^ \fz
  <a! c!>:^^ \fz <a,? c?>:^^ \fz <a dis>:^^ \fz <a' dis>:^^ \fz

  \tag #'partScore
    \dynamicLineSpannerStandard

  gis8. ( a32 gis ) gis8. \dim ( a32 gis ) a8. ( b32 a ) a8. ( b32 a )
  \clef treble e'8. \p \dim ( fis32 e ) e8. ( fis32 e ) dis2 \pp (
  cis8 ) r r4 \clef alto r16 cis8 \pp ( bis32 cis g!16 ) e-. ( cis-. a-. )
  R1
  r2 r16 b'8 \pp ( ais32 b g!16 ) e-. ( b-. g-. )
  r2 r16 g'8 \cresc ( fis32 g e16 ) cis-. ( a-. g-. ) \!

  \mark \default    % Mark D - mesure 63

  <cis fis>16 \ff r8. r <a! a'!>16-. <ais ais'>-. r8. r a16 \p
  \override Beam #'breakable = ##t
  ais r r a-. ([ais-.]) r r \dim a-. ([ais-.]) r r ais!-. ([a-.]) r r a-. ([
  gis-.]) \pp r r gis-. ([g-.]) r r g-. ([fis-.]) r r fis-. ([g-.]) r r g-. ([
  g-.]) r r g-. ([gis-.]) r r \cresc a-. ([gis-.]) r r g-. ([gis-.]) r r a-. ([
  gis-.]) r r e'-. ([e-.]) r r g-.( \f [gis-.]) r8. r4
  r4

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #3.2

    \ignoreNoteCollision
    \poly {
      gis,8 \p \< ( a8 cis4 ) \! d! ~
      <<{d1}{s8 s -\tweak #'minimum-length #4 \> s4 s8. s16 \! \bindDynamics s4 \p}>>
    }
    {
      \stemUp \tweak Flag #'stencil ##f \tweak Beam #'stencil ##f gis,8 (
        \tweak Flag #'stencil ##f fis \stemDown eis4 )fis8 ( g! )
      gis1
    }
    \notifyNoteCollision
  }
  \elseTag #'partScore {
    \ignoreNoteCollision
    \poly {
      gis8 \p \< ( a8 cis4 ) \! d! ~
      <<{d1}{s8 s \> s4 s8. s16 \! \bindDynamics s4 \p}>>
    }
    {
      \stemUp \tweak Flag #'stencil ##f \tweak Beam #'stencil ##f gis,8 (
        \tweak Flag #'stencil ##f fis \stemDown eis4 )fis8 ( g! )
      gis1
    }
    \notifyNoteCollision
  }

  <a c!>2 \pp f4 ( g! )

  \tag #'partScore
    \dynamicLineSpannerStandard

  a2 ( \dim g )
  f8 \! r

  \tag #'partScore {
    \poly {a4 -\tweak #'minimum-length #4 \< \leftDynamic c \mf ( e,}{\leftDynamic s4 ^\Espress s4 s4}
  }
  \elseTag #'partScore {
    \poly {a4 \< \rightDynamic  c \mf ( e,}{\leftDynamic s4 ^\Espress s4 s4}
  }

  cis'8 ) r cis4 ( d8 \< bes f d' ) \!
  ees ( \f fis, ees'4 ) d \dim ( des )
  c8 \p ( g ) c2 \> ( a4 ) \!
  bes8 (g16) r g8 \pp (ees16) r ees8 (g16) r g8 (bes16) r
  a8 (f16) \cresc r f8 (a16) r g8 (f16) r b8 (f16) r
  g8 \f \< (bes!16) r des8 ( f ) <g, e'>8 \! r r4
  r4 \leftDynamic c \PPdolce ( des4. e,8 )
  e2 ~ e8 \< g' ( aes bes \bindDynamics

  \tag #'partScore {
    des,2 -\tweak #'minimum-length #4 \>  ~ des8 ) \!  [c ( \acciaccatura ees8 des8. e,!16])
    \override DynamicLineSpanner #'staff-padding = #2.5
  }
  \elseTag #'partScore {
    des'2 \>  ~ des8 ) \!  [c ( \acciaccatura ees8 des8. e,!16])
  }

  e2\bracketedPP ~ e8 g' \< ( a!16 c bes des, \! )
  des2 \> ~ des8 \! g \cresc ( aes16 des ces d,! ) \!
  d2 ( \< ~ d8 g! \! ) aes16 ( des ces d,! )

  \tag #'partScore {
    bes2:32 \ff <c, c'>: -\tweak #'minimum-length #6 \ffz % pour éviter le chevauchement des ffz
  }
  \elseTag #'partScore {
    bes'2:32 \ff <c, c'>: \ffz
  }

  <d d'>: \ffz <e e' >: \ffz
  <f a>2: \fz
  <f bes>4: \fz <fis c'>: \fz
  <g bes>: \fz <f? des'>: \fz <c g' e'>8 r16. bes'32 \f

  \tag #'partScore
    \dynamicLineSpannerStandard

  \override TrillSpanner #'outside-staff-priority = #500
  \once \override TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
  c8. ^\markup {\lower #0.9 \tiny \flat}\startTrillSpan [des!16-.] \stopTrillSpan
  <c, bes'>16^^ q^^ r16. e'32 f8. \startTrillSpan g16 \stopTrillSpan <f, des'>^^ q^^ r16. bes'32
  \once \override TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
  c8. ^\markup {\lower #0.9 \tiny \flat}\startTrillSpan [des16-.] \stopTrillSpan
  \revert TrillSpanner #'outside-staff-priority
  <<{<c,, bes'>2:32 <e g>4: <c bes' e>:}{s2 \ff s4 \< s8 s16 s32 s \!}>>
  <<{<c a' f'>2: q:}{s4 \ffz s s s -\tweak #'minimum-length #7.5 \dim}>>
  a''8 \p ( f16 e32 f a,8 \dim d ) c ( a f32 a f a f a f a)
  <f a>1:32 \pp
  q:
  q4 r r2
  R1 * 2
  r2 <c a'> \ppp
  r2 q
  r2 c2:32 \ppp
  <<{c1:}{s4 s \dim s \!}>>
  c2:
  c4 \! r
  R1
  \time 2/4
  R2
  \time 4/4
  R1
  c1 \pp ~
  c ~
  c4 r \times 2/3 {a'8 ([c f]} a8 ) r
  r2 <f, a> \ppp
  q1 \fermata

  \bar "|."
}

voiceSgMbViola = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 "Viole"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "Vle."
  \set Staff.midiInstrument = "string ensemble 1"
  \key f \major
  \clef alto
  \SgMbViola
}

quoteScoreSgMbViola = \SgMbViola
