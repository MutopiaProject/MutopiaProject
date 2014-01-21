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
  * Fichier de notes, Violoncelle                                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMaVioloncello =
\relative c {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 6 8)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoI

  R1 * 6/8
  r4 r8 r4d16 \pp ( e
  f8 e f d e g )
  f ( e f d4 ) e16-. ( c-. )
  \poly {d4. ~ d4}{bes4. ~ bes4} e16-. ( c-. )

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #2.5
    \poly {d4. ~ d4 \<}{bes4. ~ bes4} f'16-. ( d-. ) \!
    bes'4 -\tweak #'minimum-length #9 \cresc r8 bes,8. \< f'16-. <<{d8-.}{s16 s \!}>>
  }
  \elseTag #'partScore {
    \poly {d4. ~ d4 \<}{bes4. ~ bes4} f'16-. ( d-. ) \!
    bes'4 \cresc r8 bes,8. \< f'16-. <<{d8-.}{s16 s \!}>>
  }

  c2.:32 \fpp

  \tag #'partScore
    \dynamicLineSpannerStandard
  c:
  c:
  c:
  c:
  r8 fis,-. \< a-. r c-. ees-. \!
  c'8-. ees,16-. \f \< ([c-.])a'8-. c,16-. ([a-.]) ees'8-. a,16-. ([fis-.]) \!
  d'8-. \ff r r
  \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
  \once \override TrillSpanner #'outside-staff-priority = #500
  <<{ ees,4.-> ^\markup {\lower #0.7 \tiny \natural}}{s4 \startTrillSpan s16 s \stopTrillSpan}>>

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.6

  \leftDynamic d16 ^\Marcato ees d \< fis a g fis a d r <g, d' bes'>8 \arpeggio \ff

  \tag #'partScore
    \noPageTurn

  r4 r8 \poly {
    ees'4.->
    d-> \< <<{bes4.->}{s8 s8 s8 \!}>>
    f'!4. \dim ~ f8
  }
  {
    c4.-> \f
    bes-> e,!->
    f! ~ f8
  }
  r8 r \!

  \tag #'partScore
    \dynamicLineSpannerStandard

  R1 * 6/8

  \tag #'partScore
    \noPageTurn

  r4 r8 g'4.-> \ff
  f-> b, \ff

  \tag #'partScore {
    c4. \fz -\tweak #'minimum-length #8 \< ~ c8 \! r r
  }
  \elseTag #'partScore {
    c4. \fz \< ~ c8 \! r r
  }

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2

  r4 r8 r4 a16 \f fis

  \mark \default    % Mark A - mesure 25

  c'8 \fz r a16 fis c'8 \fz r a16 \p fis
  c'8 ( ees \< fis ) a ( c ees ) \!
  d \f ( bes g ) d ( bes g )

  \tag #'partScore
    \dynamicLineSpannerStandard

  cis4. \fz ( cis,4 ) e'16 cis
  f d d'4-> \fz g,16 e e'4-> \fz
  a,16 f f'4-> \fz bes,16 g g'4-> \fz
  a,,16 \ff b cis d e f fis g a bes b cis
  \clef tenor
  d ( e fis g gis a ) bes! ( a g! e cis a )
  \clef bass

  \tag #'partScore {
    <<{r8}{s32 s ^\markup {\italic "con forza"}}>> d,8-. -\tweak #'minimum-length #8 \< f!-. bes4-> \fz <a c>8-> ~
  }
  \elseTag #'partScore {
    <<{r8}{s32 s ^\markup {\italic "con forza"}}>> d,8-. \< f!-. bes4-> \fz <a c>8-> ~
  }

  q8-. <aes c>-. <g bes>-. <fis a?>-. <g bes>-. <ees g>-.
  <d fis>-. g-. bes-. ees4-> d8-> ~
  d des-. \< c-. b-. bes-. a-. \!

  \tag #'partScore {
    d? d,-. \f -\tweak #'minimum-length #8 \< [f-.]bes4-> \! a8-> ~
  }
  \elseTag #'partScore {
    d? d,-. \f \< [f-.]bes4-> \! a8-> ~
  }

  a aes-. g-. fis-. g-. f-.

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2

  ees4.-> \fz d-> \fz

  \tag #'partScore {
    c16 \fz -\tweak #'minimum-length #9 \< ( ees g c ees8 ) \rightDynamic ees4. \bracketedFz \> (
  }
  \elseTag #'partScore {
    c,16 \fz \< ( ees g c ees8 ) \rightDynamic ees4. \bracketedFz \> (
  }
  d8 ) \! r r r4 r8

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default    % Mark B - mesure 42

  ees,,4. \pp ( g )|
  f16 ( bes f' bes, f' bes, f' bes, f' bes, aes bes )
  g4. ~ g

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.7

  f16 ( bes f' bes, \< f' bes, f' bes, f'bes, aes bes \! )
  <<{g4. des'4 bes8}{s8 \mf \bindDynamics s4 \< s s16 s \!}>>
  aes4-> \f r8 aes'4-> r8

  \tag #'partScore
    \dynamicLineSpannerStandard

  aes,4 r8 ces'16 \fz ces r8 r
  bes,4->r8 bes'4-> r8
  a,!16 \fz a r8 r a'4 \fz r8
  g!4.-> e->
  cis-> a8 r r|
  R1 * 6/8
  \tag #'partScore
    \pageTurn

  \mark \default    % Mark C - mesure 54

  \clef tenor
  a''4 \ff a, \clef bass a,8-.d'16-. [a-.]
  <d, a'>2.:32 \ff
  q4.: q32 q q q r16 a16-. a8-.
  f8.-> a16 \times 2/3 {a16 ([d f])} <f a>8 r16 a,-. a8-.
  f8.-> a16 \times 2/3 {a16 ([d f])} <f a>8 r r
  f,8 ( bes \< des ) f ( bes des ) \!
  f ( des bes ) f ( des bes )
  f8-. r r r4 r8
  R1 * 6/8 * 2
  r8. ees'16-. \pp c8-. ges'4. ( ~
  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #4.0
  ges \< ees ) d! ( c ) \!
  <<{bes ( cis, )}{s4 \fz \> s4 s8 s8 \!}>>
  <<{d4. ( ees )}{s4\pp -\tweak #'minimum-length #9 \< s4 s8 s8 \!}>>

  \tag #'quoteContrabasso {
    e!4. f4.
  }
  \elseTag #'quoteContrabasso {
    <<{e!4. (}{s8 -\tweak #'minimum-length #9 \< s8 s8 \!}>> f4. ) \fz -\tweak #'minimum-length #8 \> ~
  }

  <<{f2. ~}{s4 s \!}>>
  f8 \pp r r r f' \Pizz r

  \tag #'partScore
    \dynamicLineSpannerStandard

  \tag #'partScore
    \noBreak
  \TempoIRit

  R1 * 6/8

  \TempoIinTempo

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-3

  \mark \default    % Mark D - mesure 73
  r8 bes \pp f r c' bes
  r f d r f c
  r ees d r ees \cresc d
  r ees d c, \fz \> c' g'
  c, \! r r r4 r8
  c, \pp c' g' c, r r
  R1 * 6/8
  r4 r8 c, \p c' g'
  f16 \pp \Arco ( c f c f c f, c' f, c' f, c'
  f,8 )
  r r r4 r8
  r bes \pp \Pizz f r c' bes
  r f' d r c ees
  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #4.0
  r \< ees d r ees d
  r ees <<{r8}{s16 s16 \!}>> \once \override Voice.TextScript #'X-offset = #-5.4
  c,16 \Arco \fp \> ( g' c ees g bes \! )
  f8 \pp ( c f, c' f c )

  \tag #'partScore
    \dynamicLineSpannerStandard

  c,16 ( g' c ees g bes ) f8 ( c f, )
  \tag #'partScore {
    <<{c'2. ~}{s8 -\tweak #'minimum-length #6 \< s s16 \! s s16 s -\tweak #'minimum-length #6 \> s s16 s \!}>>
  }
  \elseTag #'partScore {
    <<{c2. ~}{s8 \< s s16 \! s s16 s \> s s16 s \!}>>
  }
  c2. \p
  <<{c4. ~ c8 r r}{s4 \< s16 s \!}>>
  R1 * 6/8

  \mark \default    % Mark E - mesure 93

  r8 

  \tag #'partScore {
    \once \override Voice.TextScript #'X-offset = #-5.4 \rightDynamic <b d> \Pizz \bracketedP
    -\tweak #'minimum-length #8 \<
  }
  \elseTag #'partScore {
    \once \override Voice.TextScript #'X-offset = #-5.4 \rightDynamic <b d> \Pizz \bracketedP \<
  }

  <g' b> \> <b! d> \! r r
  \tag #'partScore {
    <<{r8 <a, c > <f'! a> <a c> r r}{s8 s -\tweak #'minimum-length #10 \< s16 s \!}>>
    <<{r8 <g, bes!> <ees' g> <g bes> r r}{s8 s \mf -\tweak #'minimum-length #9 \< s16 s \!}>>
  }
  \elseTag #'partScore {
    <<{r8 <a, c > <f'! a> <a c> r r}{s8 s \< s16 s \!}>>
    <<{r8 <g, bes!> <ees' g> <g bes> r r}{s8 s \mf \< s16 s \!}>>
  }

  ges8 \Arco \f r r r4 r8

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.5

  <<{ees4. ( c )}{s4 \p s \< s8 s \!}>>
  a4. \f \> ( ges4. ) \!

  \tag #'partScore {
    f4. \p -\tweak #'minimum-length #8 \> ees \pp
  }
  \elseTag #'partScore {
    f4. \p \> ees \pp
  }

  d ( c )
  d ( c
  <<{d ) ees ~}{s4 \< s8 \! s \fz \>}>>
  ees4. \! ~ ees8 r r

  \tag #'partScore
    \dynamicLineSpannerStandard

  R1 * 6/8 * 2
  ees'16 \pp ( \< f ees f ees f ) ees ( f ees f ees c ) \!
  a \f ( c ees c a \> c ) d ( c a c d c ) \!
  g ( \< d' f d g, d' ) \! c ( g c, g' c e? )
  d,4 \f ( bes'8 ees,4 bes'8 )
  d, 4 \dim ( bes'8 ees,4 bes'8 )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #4.0

  <<{des,4 ( bes'8 ees,4 bes'8 \! )}{s4. \p \> s8 s8 s16 s16 \!}>>
  des4. \pp ( ees )

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default    % Mark F - mesure 113

  R1 * 6/8
  r4 r8 r4bes16 \pp ( c
  des8 c des bes c des )
  e,!4-| r8 e'4-| r8
  e'4-| \< e,-| e,-| \!

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #4.0

  \times 2/3 {f16 ( \mf ([bes d!]} f8 ) r f-> f,16 f f8

  \tag #'partScore
    \dynamicLineSpannerStandard

  \times 2/3 {f16 ([bes d]} f8 ) r f-> \< f,16 f f8 \!
  \times 2/3 {f16 \cresc ([bes d])} f16-. r \times 2/3 {f16 ([bes d])} f8 \! r r
  \times 2/3 {f,,16 \< ([bes d])} f16-. r \times 2/3 {f16 ([bes d])} f8 \! r r
  \once \override Hairpin #'rotation = #'(7 -2 0) f,,16 \f \< ( bes ees ges bes des ) \! <f, c'>8 r r
  bes,4.-> \ff bes'->
  a2.
  bes4.-> f'->
  fis-> ~ fis16 cis a fis cis a

  \mark \default    % Mark G - mesure 127

  ges2.:32
  ges4.: ges''4: e!8-.
  f8-. bes,,-. bes' ~ bes bes, bes' ~
  bes bes, bes' ~ bes bes, bes' ~
  bes bes, bes' ~ bes bes, bes' ~
  bes bes, bes' bes,8. _\markup {\italic "con forza"} g'16 f g
  ees4. \fz ~ ees8. f16 ees f
  d4. \fz ~ d8. ees16 d ees
  c8 r r f r r
  fis r r g r g,
  a8 r16 a'-> \ff g-> a-> f!8-> r16 bes-> a-> bes->
  g8-> r16 c-| bes-| c-| a8-| r16 a'-| \< g-| a-| \!

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #2

  \mark \default    % Mark H - mesure 139

  e8-| r r r <e, cis'> \ff ( a, )
  r4 r8 r <e' cis'> ( g, )
  r4 r8 r <fis' cis'> \dim ( fis, )
  r4 r8 r <e'' g> ( <e, g> )
  r4 r8 r d' \mp ( d, )
  cis \p r b \dim r a r \!
  fis2. \pp ~
  fis ~
  fis8 r r r4 r8
  R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor

  \tag #'partScore {
    \repeat tremolo 6 {d'16 \pp ( b )}
    \repeat tremolo 3 {d16 ( b} \repeat tremolo 3 {dis b )}
  }
  \elseTag #'partScore {
    d16 \pp ( b d b d b d b d b d b )
    d ( b d b d b dis b dis b dis b)
  }

  e4 ( dis8 g4 fis8 )
  e4 ( b8 ~ b g e )
  fis2. ~
  fis
  b4 ( ais8 ) d4 ( cis8 )
  fis \< ([d]) b' ([fis]) d' ([b])\!
  c! \f ([c,]) c ([c,]) r r
  c'' \ff ([c,]) c ([c,]) r r
  c'' ([c,]) c ([c,]) r r

  \tag #'partScore {
    c''8([ c,)] c([ c,)] r r
  }
  \elseTag #'partScore {
    c''8 _\footnote \markup {"(6)"} #'(0.5 . 1) \markup {\italic "6 - According to N. Simrock 1885"} \bracketedFF ([
    c,]) c ([c,]) r r
  }

  c'' ([c,]) c ([c,]) r r
  c'' ([c,]) c ([c,]) r r
  g''' ([g,]) g ([g,]) r r
  f'' ([f,]) f ([f,]) r r

  \mark \default    % Mark I forcé - mesure 165

  e' ( e, ) r r4 r8
  R1 * 6/8
  e''8 \fp \Pizz [e,] r r4 r8
  R1 * 6/8
  f'8 \p f, r r4 r8
  f4. \p \Arco ( fis ) \dim
  g ( gis )
  a \pp ( gis
  a f )
  bes2.:32 \ppp
  bes4.: bes4: aes32 aes aes aes
  aes2.:
  aes:
  r16 des,,8 \pp ([f16] aes16-.)r r f8 \< ([aes16] des16-. \! ) r
  r16 aes8 \< ([des16] f-. ) \! r des ( f aes) r aes \ff bes
  ces8 ( bes ces ) aes ( bes des )
  ces ( bes ces ) aes4 r8
  r16 d,,!8 \f ([f16] bes ) r r f8 ([bes16] d ) r
  r aes8 ([d16] f ) r d ([f bes8]) f16-. ( \ff g!-. )
  aes8 ( g aes ) f ( g bes )
  aes ( g aes ) f ( d aes )

  \mark \default    % Mark J - mesure 186

  b'! \ff ( a! b )g ( a c )
  b ( a b ) g4 c16-. ( a-. )
  b4. \fz ~ b4 c16-> a->
  b4. \fz ~ b4 c16-> aes->
  b!8 ( a b ) g ( a b )
  c4 c,16-| d-| ees8 ( d ees )
  c4-> \fz c16-| d-| ees8 ( d ees )
  c4-> \fz c16-| d-| ees8 ( d ees )
  cis4-> \fz cis16-| dis-| e!8 ( dis e )
  cis4-> \fz cis16-| dis-| e8 ( dis e16 a )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  <d,! a'>2.:32 \fff
  q4.: q4: a16-> a->
  f4.^^ ~f8 [r16 a a8]
  f4.^^ ~f8 [r16 f f8]
  f8 \< ( bes des ) f ( bes des )
  f8 ( des bes \! ) f ( des bes )
  f8 r r r4 r8
  R1 * 6/8 * 2
  r8. a'16-. \pp fis8-. c'4. ( ~
  c  b )
  <<{a ( fis )}{s8 \< s s s s s \!}>>

  \tag #'partScore {
    g8 \mf d16 ( b d b \repeat tremolo 3 {d16 b )}
    \repeat tremolo 6 {d16 \< ( bes ) \! )}
    \repeat tremolo 3 {a16 ( e} a e a e ais e )
  }
  \elseTag #'partScore {
    g'8 \mf d16 ( b d b d b d b d b )
    d \< ( bes d bes d bes d bes d bes d bes ) \!
    a \f ( e a e a e a e a e ais e )
  }

  ais ( \> e ais e b' e, b' e, b' e, c'! e, ) \!

  \tag #'partScore {
    \repeat tremolo 3 {c'16 \p ( \> g} \repeat tremolo 3 {cis a ) \!}
    \repeat tremolo 6 {cis16 \pp ( a )}
  }
  \elseTag #'partScore {
    c16 \p \> ( g c g c g cis a? cis a cis a ) \!
    cis \pp ( a cis a cis a cis a cis a cis a )
  }

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  d8 d' \Pizz [a] r e' d
  r a fis r e g
  r g fis r \cresc g fis \!
  r g fis e,16 \fz \Arco ( b' e g b d )
  d8 \> ( e, b ) e,16 ( b' e g b d \! )
  e,, \p \> ( a e' g a cis ) cis8 ( e, a, ) \!
  e16 \pp ( b' e g b d ) d8 ( e, b )
  e,16 ( \< a e' g a cis ) cis8 ( e, a, ) \!
  <<{e16 ( ais cis4 ) e,16 ( ais cis4}{s4 \< s s8 s16 s \!}>>
  e,8 ) r r r4 r8
  r8 -\tweak #'X-offset #-5 \Pizz <dis' fis>-. \Divisi \mp <b' dis>-. <dis! fis>-. r r
  r <cis, e>-. \dim <a'cis>-. <cis e>-. r r
  r <b, d> \pp <g' b> <b d> r r

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.5

  bes, \Arco \f r r r d16 \fz \> ( bes g bes ) \!
  <<{g'4. ( e )}{s4 \p s \< s8 s \!}>>
  <<{cis4. ( bes )}{s4 \f s \> s8 s16 s \!}>>
  \tag #'partScore {
    a4. ( -\tweak #'minimum-length #8 \dim g \p )
    \dynamicLineSpannerStandard
    fis -\tweak #'minimum-length #9 \dim ( e ) \pp
    fis ( e )
    fis -\tweak #'minimum-length #9 \< g \fz \> ~
  }
  \elseTag #'partScore {
    a4. ( \dim g \p )
    fis \dim ( e ) \pp
    fis ( e )
    fis \< g \fz \> ~
  }

  g ~ g8 \! r r
  R1 * 6/8 * 2

  \mark \default    % Mark M - mesure 237

  \tag #'partScore {
    \repeat tremolo 3 {g'16 \p \cresc ( a} g16 a g a g e ) \!
  }
  \elseTag #'partScore {
    g16 \p \cresc ( a g a g a g a g a g e ) \!
  }

  cis \f ( e g e cis e fis e cis e fis e )
  b ( fis' a fis b, fis' ) e ( b e, b' e8 )
  fis,8 \Pizz d' fis
  g, d' g
  fis, d' fis g, \dim d' g
  <<{f,  d' f g, d' g}{s4 \p s4 \> s8 s16 s \!}>>
  f,8 \pp d' f g, d' g
  R1 * 6/8
  r4 r8 r r d16 ( \pp \Arco ( e
  f8 e f d e f )

  \tag #'partScore {
    d,2. \bracketedPP
  }
  \elseTag #'partScore {
    d2._\footnote \markup {"(8)"} #'(1 . 0) \markup {\italic "8 - According to N. Simrock 1885"} \bracketedPP
  }

  \bar "||"    % mesure 248

  \key d \minor
  <d a'>4. ~ q4 g'16 \< ( a
  bes4 a8 ) \! g-| \cresc f-| e-| \!
  d-> \! bes'-> a-> g-> f-> e->
  d-| \mf \< bes'-| a-| g-| f-| e-|
  d-| bes'-| a-| \! g-| f-| e-|
  f-> \ff d-> e-> d-> e-> g->
  a-> g-> a-> f-> g-> bes->
  f'-> e-> f-> d-> e-> f->

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #2
    \leftDynamic d,4.-^ \FFconForza -\tweak #'minimum-length #13 \bindDynamics g-^
  }
  \elseTag #'partScore {
    \leftDynamic d4.-^ \FFconForza g-^
  }

  d'^^ \fz ~ d16 a f d a f
  ees''4.^^ \fz ~ ees16 c a f ees c
  ees'4.^^ \fz ~ ees16 c a f ees c
  f'4.^^ \fz ~ f16 d bes f d bes
  f''4.^^ \fz ~ f16 d bes f d bes
  g''4.^^ \fz ~ g16 d b g f d
  g'4.^^ \fz ~ g16 d b g f d
  f8-> d-. e-. f-> d-. f-.
  <bes,! gis'>2.:32

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default    % Mark N - mesure 266

  f: \fff
  f4.: f8 r r

  \tag #'partScore
    \noBreak
  
  \TempoIPaPAcc

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #18

  R1 * 6/8

  \tag #'partScore
    \noBreak

  r4 r8 r4 f16-. \ff a-.
  d8-> f, a d-> f, a
  d-> f, a d-> f, a
  d^^ \ff d, f16 a c8^^ d, fis16 a
  c8^^ d, fis16 a c8^^ d, fis16 a
  b8^^ d, g16 a b8^^ d, g16 b
  cis8^^ d, g16 bes! cis8^^ d, g16 bes

  \mark \default    % Mark O - mesure 276

  d8 f4 \fz e8 g4 \fz
  f8-> a g-> bes a-> c
  b-> d bes-> d a-> d
  g,-> bes f-> a e!-> g
  d4. \ff ~ d4 cis8 ~
  cis c-^ b-^ bes-^ a-^ aes-^
  g-^ f-^ e-^ f-^ g-^ a!-^
  d,-. a'-. d-. a-. \> d-. a-. \!
  d8-. r r r4 r8
  r a-. \p \> d-. a-. d-. a-. \!
  d a4:32 \pp a4.:

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  d,4. ~ d4 d'16 \pp ( e
  f8 e f d e g )
  f ( e f d4 ) f16 ( d
  ees4. ~ ees4 ) ees16 ( c
  des4. ~ des4 ) des16 ( bes
  b4. ~ b4 ) b16 a
  bes!2.
  a4. \dim ( bes
  a bes4 ) bes16 ( g!
  gis2. ) \ppp ~
  gis4. ( a
  bes ) r4 r8
  R1 * 6/8 * 2

  \mark \default    % Mark Q - mesure 301

  R1 * 6/8 * 2
  r8 r a16 \p d, d' a a'4
  r8 r a,16 d, d' a a'4
  r8 r a,16 d, d' a a'4
  r8 r a,16 d, d' \dim a a'4
  r8 r a,16 \pp d, d' a a'4
  r8 r a,16 d, d' a a'4

  \TempoIPocoRit    % Mesure 309

  r4 r8 d,16 a a'4
  r4 r8 d,16 \ppp a a'4 ~
  a2. ~
  a4. ~ a4d,16-. ( a-.
  d,2. ) ~
  d \fermata

  \bar "|."
}

voiceSgMaVioloncello = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 "Violoncelli"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore 
    \set Staff.shortInstrumentName = "Vlc."
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef bass
  \SgMaVioloncello
}

quoteScoreSgMaVioloncello = \SgMaVioloncello
