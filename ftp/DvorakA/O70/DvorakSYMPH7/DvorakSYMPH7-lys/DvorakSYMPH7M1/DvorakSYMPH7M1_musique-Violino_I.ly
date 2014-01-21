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
  * Fichier de notes, Violons I                                         *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Fichier cité par la trompette I II, timbales, le trombone I, II et III :
% le \tag #'partscore devient \tag #'partScore \tag #'quoteTrombaI \tag #'quoteTrombaII
% \tag #'quoteTimpani \tag #'quoteTromboneI \tag #'quoteTromboneII \tag #'quoteTromboneIII {

SgMaViolinoI = \relative c'' {

  \include "Common/Properties.ly"
  
  \tag #'partScore
  \set Staff.minimumPageTurnLength = #(ly:make-moment 3 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \tag #'partScore
  \cueEventType
  \tag #'partScore
    \oneMMRNumberOn
  
  \TempoI
  
  R1 * 6/8 * 11
  r4 r8 r8. ees16-. ( \pp c8--)
  a'-. r16 c,-. ( a8-- ) ees'-. \cresc r16 a,-. ( fis8-- )
  c'-. ees,16-. \f \< ([c-.]) a'8-> c,16-. ([a-.]) ees'8-> \! r

  \elseTag #'partScore
    \once \override DynamicLineSpanner #'staff-padding = #3

  d-. \ff r r r4 r8
  R1 * 6/8 * 4
  r4 r8 r4 f'16-> \f \< d-.
  a'-> f-. f'4-> \! ~ f8 e ( d )
  cis4. \fz \< d4 ( dis8 \! ) ~
  dis f \< ( e16 c ) a8-. \! r r
  R1*6/8
  
  \mark \default    % Mark A - mesure 25
  
  R1*6/8 * 2
  g4.-> \f d'-> \fz
  f-> \fz ~ f16 e cis bes a g
  r bes-> a f e d r4 r8
  r16 e'-> d a g f r4 r8
  r16 a'-> \ff g f e d c! bes a g f e
  d4. ~ d16 c! ( bes g e a )
  d,8 r r r4 r8
  R1*6/8 * 3
  
%  \tag #'conductorScore
%    \break  % pour assurer la synchronisation des "a2" rajoutés manuellement en mode Conducteur
  
  r16 \rightDynamic a'' \f ( g _\markup {\italic "con forza"} f e f ) d4-> e8-> ~
  e fis-. g-. a-. bes!-. b-.
  c4.-> \fz d-> \fz
  ees4 \fz ( f32 \< ees d ees ) \! aes4. \f \> ~
  aes8 \! f ( \p \> d bes a! aes \!
  
  \mark \default    % Mark B - mesure 42
  
  g ) r r r4 r8
  R1 * 6/8 * 2
  
  \tag #'partScore
    \pageTurn  % pour améliorer la mise en page
  
  r4 r8 r r d \< (
  f4. ) \! e!4 \< ( des8 \! )
  c8. \f des16-. b8-. c4-> r8
  r8. ees16-. c8-. des8. ees16-. c8-.
  des4 r8 r8. ees16-. c8-.
  des4 r8 r8. b'16-. \f ( gis8-- )
  a8.-- ( d!16-. ) bis8-. cis8.-- ( fis16-. ) dis8-.
  e8.-- ( a16-. ) fis8-. g!8 a,,16 [\fz ( bes! gis a])
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  
  % 2 lignes de nuances dynamiques
  \polyNeutral {
    cis \fz ([d bis cis]) e \fz ([f! dis e]) \times 2/3 {a16 \fz ([bes! gis] a[cis e]) \!}
  }
  {
    \once \override DynamicText #'stencil = ##f
    \once \override Hairpin #'rotation = #'(3 -1 0) s8 \fz \< s s s s s16 s \!
  }

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-2
  
  \mark \default    % Mark C - mesure 54
  
  \once \override TextScript #'script-priority = #-100
  \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -0.5 )
  \once \override TrillSpanner #'outside-staff-priority = #500
  a4. \ff ^\markup {\tiny \flat} \startTrillSpan a4 a,16 ( \stopTrillSpan a' )
  a2.:32 \ff
  a:
  a:
  a4.: a8: [r16 f16-. d8-.]
  bes'8-> [r16 f16-. des8-.] f-> [r16 des-. bes8-.]
  des8-> [r16 bes-. f8-.] bes-> [r16 f-. des8-.]
  <bes ges'>8-. r r r4 r8
  R1 * 6/8 * 3
  a,2. \pp \< ~
  a4. a4 \! ( a'8 )
  a4. \f \> ~ ( a4 bes8 \! )
  bes4 \( ( \pp \< b8 ) b4 ( c8 ) \) \!
  c4 \< ( cis8 ) d4. \fz \( (
  des ) \> c \! ~
  c8 \) \pp r r r4 r8

  \tag #'partScore
    \noBreak
  \TempoIRit
  
  R1 * 6/8
  
  \mark \default    % Mark D - mesure 73
  
  \tag #'partScore
    \noBreak
  \TempoIinTempo

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  
  R1 * 6/8 * 10
  d'4 \pp ( c8 ees4 d8 )
  c4 ( bes8 a4 g8 )
  f4 ( \< g8 f4 g8 )
  <<{f8. ( g16 f g ) ees4. ~}{s4. s4 \fp -\tweak #'minimum-length #8 \> s16 s \!}>>
  ees8. f16 \pp ( d f ees8 c' a )
  ees8. ( f16 d f ) ees4. ~
  ees8 \< ees' ( bes \! <<{g ees bes'16 a )}{s16 s \> s8 s16 s \!}>>
  ees8. \p ( f16 d f ees4. )
  d8. ( \< e!16 cis e ) \! d ( e cis d fis g )
  eis \dim ( fis a b gis a d e! cis d ) \! r8
  
  \mark \default    % Mark E - mesure 93
  
  d8. \p ( e16 cis e ) d ( b g? d g b )
  c!8. \< ( d16 b d ) c \! ( \cresc a f c f a )
  bes!8. \mf \< ( c16 a c ) \! bes ( g ees bes ees g )
  bes-> \ff ( ges ees ges ) r8 r4 r8
  a,8 \p ( g! f \< ) c' ( bes a ) \!
  ees'4. \f \> d4 ( c8 ) \!
  c \p \> ( bes f ) a4 \pp ( g8 ~
  g ) f ( bes, a'4 g8 ~
  g ) f ( bes, a'4 g8 ~

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.5

  g8 ) \< f ( bes, \! bes'4. \fz -\tweak #'minimum-length #9 \> ~
  <<{bes4 ) bes16 ( des des4. )}{s4 \! s8 \> s4 s16 s \!}>>
  des4. \pp ( ~ des4 des16 c )

  \tag #'partScore
    \dynamicLineSpannerStandard

  bes2.
  <<{f'4. ( f' )}{s4. \< s4 s16 s \!}>>
  <<{fis2.}{s4 \f s \> s8 s16 s \!}>>
  <<{g4. bes8 ( a g )}{s4 \< s16 s \! s \f}>>
  g8 ( f bes, ) d4 ( c8 )
  g' ( f \> bes, ) d4 ( c8 \!
  bes ) \p r r r4 r8
  R1 * 6/8
  
  \mark \default    % Mark F - mesure 113
  
  r4 ges,8 \pp ( f4 ) bes,8 (
  des4. c )
  bes ~ bes4 r8
  r4 r8 r4 bes'16 ( \pp c
  des8 c des bes ) r r
  f' \mf r r r4 r8
  f \fz r r r4 r8
  r r16 f,16-. \cresc \times 2/3 {f16 ([bes d])} f8 r r
  r r16 \< f,16-. \times 2/3 {f16 ([bes d])} f8 \! r r
  
  \tag #'conductorScore \tag #'pocketScore
    \tupletOff
  
  <ees, bes' ges'> \f r16 bes' \times 2/3 {bes16 ([ges' bes])} <a c,>8 r r
  bes4.-> \ff f'->
  fis-> ~ fis16 cis a fis cis a
  <f! d'>8 r bes'!16-. c-. d8 ( cis d )
  d ( cis d ) a'4.:->
  
  \mark \default    % Mark G - mesure 127
  
  bes16 [ges des bes] ges' [des bes ges] des' [bes ges des]
  bes' ( ges des bes c des ) ees ( f ges aes bes c )
  d!4 \ff ( c8 ) ees4 ( d8 )
  g!4 ( f8 ) ees4 ( d8 )
  c4 ( d8 ) bes4 ( d8 )
  c8. _\markup {\italic "con forza"} d16 c d bes4. \fz ~
  bes8. c16 bes c a4. \fz ~
  a8. bes16 a bes g4. \fz ~
  g8 r16 a g a f8-> r16 g f g
  ees8-> r16 f ees f d8->r16 ees d ees
  cis8 \f a ([a']) r d, ( d' )
  r a ( a' ) r <<{c,? ( c'}{s8 \< s16 s \!}>>
  
  \mark \default    % Mark H - mesure 139
  
  cis,8 ) \fz r r r <cis, a'> \ff ( a)
  r4 r8 r <cis a'> ( a )
  r4 r8 r <cis ais'> \dim ( ais )
  r4 r8 r <cis ais'> ( ais )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #1.5

  r4 r8 r b' \mp ( b, )
  ais \p r b \dim r cis r
  cis2. \pp ~

  \tag #'partScore
    \dynamicLineSpannerStandard

  cis ~
  cis8 r r r4 r8
  R1 * 6/8
  
  \tag #'partScore
    \pageTurn
  
  \bar "||"    % mesure 149
  
  \key a \minor
  
  % 2 lignes de nuances dynamiques
  \polyNeutral {
    fis4 \pp \bindDynamics ( eis8 \< g!4 fis8 \bindDynamics )
  }
  {
    s8 s16 \leftDynamic s -\tweak #'extra-offset #'(0 . 1.5) _\Espressivo
  }
  e!4 ( d8 \> cis4 c8 ) \!
  b r b \pp ([b]) r b ~
  b ( b4-- b-- b8-- )
  ais2. ~
  ais
  b8 r16 d \pp cis d b8-. r16 fis' eis fis
  d \< [b' ais b] fis [d' cis d] b [fis' fis \! g]
  a8 \ff a ([a,?]) a ([a,]) r
  r a'' ( a, ) a ( a, ) r
  r a'' ( a, ) a ( a, ) r
  r a'' ( a, ) a ( a, ) r
  r a'' ( a, ) a ( a, ) r
  r bes'' ( bes, ) bes ( bes, ) r
  r b'' ( b, ) b ( b, ) r
  r c'' ( c, ) c ( c, ) r
  
  \mark \default    % Mark I forcé - mesure 165
  
  <e e'> r r r4 r8
  R1 * 6/8 * 10
  r8. des16-. \pp des,8 aes'4 r8
  r8. des16-. des,8 aes'4 r8
  R1 * 6/8
  r4 r8 r des16 \< ( ees f des' ) \!
  des2.: \ff
  des4.: des4: bes'16-. \f ( e,!-. )
  f4-> f16-. ( cis-. ) d!4-> d16-. ( a!-. )
  bes4-> bes16-. ( e,!-. ) f4-> f16-. ( d-. )
  <d bes'>2.: \ff
  q4.: q4 bes'16-. c-.
  
  \mark \default    % Mark J - mesure 186
  
  d8 ( c d ) b! ( c ees )
  d ( c d ) b4 ( ees16-. c-. )
  d4.-> \fz ~ d4 ees16-. ( c-. )
  d4.-> \fz ~ d4 ees16-. ( c-. )
  d8 ( c d ) b ( c d )
  ees ( d ees ) c4.
  <g g'>8 \Divisi ( <fis fis'> <g g'> ) <c, c'>4.
  <aes' aes'>8 ( <g g'> <aes aes'> ) <c, c'>4.
  <aes' aes'>8 ( <g g'> <aes aes'> ) <des, des'>4.
  <a'! a'!>8 ( <gis gis'> <a a'> ) <cis, cis'>4 a'16 ( a' )
  
  \bar "||"
  
  \mark \default    % Mark K - mesure 196
  
  \key d \minor
  a2.: \fff
  a:
  \tupletOn
  a8 r16 a, \times 2/3 {a16 ([d f])} a4.:
  a8 r16 a, \times 2/3 {a16 ([d f])} a4.:
  bes8 [r16 f des8] f [r16 des bes8]
  des [r16 bes f8] bes [r16 f des8]
  <bes ges'>8 r r r4 r8
  R1 * 6/8 * 5
  b4. \mf cis4 ( d8 )
  d4 \< ( dis8 ) e4 ( eis8 ) \!
  fis4 \f ( g8 ) g4. ~
  g \> g4 bes!8 \!
  <<{bes4. ( a4 g8 )}{s4. \p \> s4 s16 s \!}>>
  e4 \pp ( cis8 b4 g8 )
  
  \bar "||"
  
  \mark \default    % Mark L - mesure 214
  
  \key d \major
  fis16 ( a d a cis a cis a cis a d a )
  cis ( a cis a d a cis a e a d, g )
  cis, ( e cis e d fis cis \cresc e cis e d fis ) \!
  cis ( e cis e d fis )  g4. \fz ( ~
  <<{g8. a16 fis a ) g4. ( ~}{s4 \> s4 s8 s16 s \!}>>
  <<{g8. a16 fis a ) g4. ~}{s4 \p \> s4 s8 s \!}>>
  g2. \pp
  g8. ( \< a16 fis a g8. b16 a g ) \!
  fis8. ( \< gis16 eis fis ) fis8. ( gis16 eis fis ) \!
  fis ([gis eis fis] ais \> [b gisis ais] cis [dis bis cis] \! )
  fis8. \mp ( gis16 eis gis ) fis ( dis b? fis b dis )
  e!8. \dim ( fis16 dis fis ) e ( cis a! e a cis )
  d!8. \pp ( e16 cis e ) d ( b g d g b )
  d-> \f ( bes g bes ) r8 r4 r8
  cis8 \p ( b! a \<  ) e' ( d cis ) \bindDynamics
  <<{g'4. fis4 ( e8 )}{s4 \f \bindDynamics s \> s8 s16 s \!}>>
  e8 \dim ( d fis, cis'4 \p b8 ~
  b8 ) a ( d, \> cis'4 b8 \pp ~
  b ) a ( d, cis'4 b8 ~
  b ) \< a ( d, d'4. ) \fz ~
  <<{d4 d16 ( f f4. )}{s4 s8 \> s s \!}>>
  f4. \pp ~f4 f16 ( e
  d2. )
  
  \mark \default    % Mark M - mesure 237
  
  \tag #'quoteTimpani
  {  % fichier appelé pour une citation
     a4. -\tweak #'stencil ##f \p \< ( a' ) \!
     \leftDynamic ais2. \Fespressivo
     <<{b4. d8 ( cis b )}{s4 \< s16 s \!}>>
     b8  ( a d, ) fis4 ( e8 )
     b'8 ( a d, ) fis4 \dim ( e8 ) \!
     d r r r4 r8
  }
  \elseTag #'quoteTimpani {
    a'4. \< ( a' ) \!
    % Le ais doit être allongé pour placer le F espressivo - on place une liaison invisible et longue
    \leftDynamic ais2. \Fespressivo -\tweak #'stencil ##f -\tweak #'minimum-length #15 (
    \ottava #1
    \set Staff.ottavation = #"8"
    <<{b4. ) d8 ( cis b )}{s4 -\tweak #'minimum-length #9 \< s16 s \!}>>
    b8  ( a d, ) fis4 ( e8 )
    b'8 ( a d, ) fis4 \dim ( e8 ) \!
    d \ottava #0 r r r4 r8
  }
  R1 * 6/8
  
  \tag #'partScore
    \pageTurn
  
  r4 bes,8 \pp ( a4 d,8 % bes, suite au \tag - bes si pas de \tag
  f4. e )
  d ~ d4 r8
  r4 r8 r4 d'16 \pp ( e
  
  \bar "||"    % mesure 248
  
  \key d \minor
  f8 e f d e g )
  f ( \< e f d4-> ) d16 \! ( e
  \leftDynamic f8 \bracketedSempreCresc e f d4 ) e16 ( f )
  a8 ( \mf g a ) d,4 \fz ( e16 f )
  a8 ( g a ) d,4 \fz ( e16 f )
  a4.-> \ff d->
  a'4.-> ~ a16 f d a f' d
  a f d' a f d a' f d a f' g
  
%  \tag #'conductorScore
%    \break  % pour assurer la synchronisation des "a2" rajoutés manuellement en mode Conducteur
  
  a8 ( \fz f g ) r4 g16 a
  bes8 \fz ( g a ) r4 a16 ( bes
  c8 a ) a16 ( bes c8 f c )
  c ( a ) a16 ( bes c8 f c )
  d ( bes ) bes16 ( c d8 f d )
  d ( bes ) bes16 ( c d8 f d )
  d ( b ) b16 ( c d8 g d )
  d ( b ) b16 ( c d8 g d )
  gis,4.-> d'->
  aes'4.:-> ~ aes16 f d f, d d'
  
  \mark \default    % Mark N - mesure 266
  
  a'2.: \fff
  \ottava #1
  c16 a f c f g c a f c f g
  
  \TempoIPaPAcc
  
  c a f c f g c a f c f g

  \tag #'partScore
    \noBreak  % pour éviter la coupure du tempo
  
%  \tag #'conductorScore
%    \break  % pour assurer la synchronisation des "a2" rajoutés manuellement en mode Conducteur
  
  c a f c f g c a f c a' a
  \ottava #0
  a f d a d e a f d a d e
  a f d a d e a f d a d e
  \acciaccatura {\slurUp d,8 \slurNeutral} d'4.-> \ff \acciaccatura {\slurUp a8 \slurNeutral} a'4.->
  \acciaccatura {\slurUp \once \override Slur #'positions = #'(6 . 8) bes,8 \slurNeutral} bes'4. \fz ~
  bes16 a fis ees d c
  \acciaccatura {\slurUp \once \override Slur #'positions = #'(3.5 . 4) <d,, b'>8 \slurNeutral} g'4.->
  \acciaccatura {\slurUp d8 \slurNeutral} d'4.->
  \acciaccatura {\slurUp f,!8 \slurNeutral} f'4. \fz ~ f16 e cis bes a g
  
  \mark \default    % Mark O - mesure 276
  
  r bes-> \fz a f e d r d'-> \fz cis g f e
  r e'-> [d f,] r f'-> [e g,] r g'-> [fis a,]
  r a'-> [g b,] r a'-> [g bes,] r g'-> [f? a,]
  r f'-> [ees g,] r ees'-> [d f,] r d'-> [cis e,!]
  d'4.: \ff bes':
  
%  \tag #'conductorScore
%    \break  % pour assurer la synchronisation des "a2" rajoutés manuellement en mode Conducteur
  
  bes8: a: g: f4.:
  ees8: d: cis: d: bes: a:
  <<{
    a8 a4: a4.:
    }
    {
      s8 s4 \fz s8 \> s8 s8 \!
  }>>
  a8 a,4: \> a4.: \!
  <<{a8 a,4: a4.:}{s8 s4 \p \> s s8 \!}>>
  a8 \pp r r r4 r8
  
  \mark \default    % Mark P - mesure 287
  
  \tag #'partScore
    \noBreak
  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  \TempoITempoPrimo
  
  R1 * 6/8 * 3
  r4 gis'16 \pp ( a bes8 gis a )
  R1 * 6/8
  r4 e16 \ppp ( f! g!8 e f )
  R1 * 6/8
  r4 d16 ( \dim e f8 cis d ) \!
  R1 * 6/8
  r4 r8 b4. ( \pp
  c cis4 d16 e
  f8 cis d ) r4 r8
  R1 * 6/8 * 2
  
  \mark \default    % Mark Q - mesure 301
  
  r4 r8 r r f16 \pp d
  bes' f f'4 ~ f8 r f,16 d
  a' f f'4 ~ f r8
  R1 * 6/8 * 5
  
  R1 * 6/8 * 2
  
  f,4 \ppp r8 f4 r8
  f4. r4 r8
  d4 r8 d4 r8
  d2. \fermata
  
  \bar "|."
}

voiceSgMaViolinoI = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 "Violini I"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "1.Viol."
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef treble
  \SgMaViolinoI
}

quoteScoreSgMaViolinoI = \SgMaViolinoI
