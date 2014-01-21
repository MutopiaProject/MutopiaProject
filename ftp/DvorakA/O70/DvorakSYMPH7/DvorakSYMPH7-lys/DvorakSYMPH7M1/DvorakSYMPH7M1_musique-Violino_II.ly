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
  * Fichier de notes, Violons II                                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMaViolinoII =
\relative c' {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 3 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \tag #'partScore
  \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoI

  R1 * 6/8 * 7
  a2.:32 \fpp
  a:
  a:
  a:
  a:
  <<{<c ees>:}{s8 \< s8 s8 s8 s8 s8 \!}>>
  q8-. ees16-. \f \< ([c-.]) a'8-> c,16-. ([a-.]) ees'8-> \! r

  \elseTag #'partScore
    \once \override DynamicLineSpanner #'staff-padding = #3

  d-. \ff r r r4 r8
  R1 * 6/8 * 4
  r4 r8 r4 f16-> \f \< d-.
  a'-> f-. f'4-> \! ~ f8 e ( d )
  cis4. \fz \< <f, d'>4 ^( <f dis' )>8 ) \! ~
  q <a f'>8 \< ( e'16 c ) a8 \! r r
  R1 * 6/8

  \mark \default    % Mark A - mesure 25

  a4. ^> \f ees'-> \fz
  bes'-> \fz ~bes16 a fis ees d c
  bes8 r g16-. ( d-. ) d'8 r bes16-. ( g-. )
  f'!8 bes,16 \< g g' bes, \! bes'8 r r
  r4 r8 r16

  \tag #'partScore {
    d16-> \bracketedFF cis bes a g
  }
  \elseTag #'partScore {
    d'16-> _\footnote \markup {"(2)"} #'(1 . 0) \markup {\italic "2 - According to N. Simrock 1885"} \bracketedFF
    cis bes a g
  }

  r4 r8 r16 f'-> e bes a g
  r a-> \ff g f e d c! bes a g f e
  d4 ( d'8 ) ~ d16 c ( bes g e a )
  d,8 r r r4 r8
  R1 * 6/8
  r16 d' _\markup {\italic "con forza"} ( c bes a bes ) g4-> a8-> ~
  a b-. \< c-. d-. dis-. e-. \!
  f16 \rightDynamic a \f ( g _\markup {\italic "con forza"} f e f ) d?4-> cis8-> ~
  cis c-. b-. d-. d-. <d g>-.

    \override DynamicLineSpanner #'staff-padding = #2.3

  <c g'>4.-> \fz <b g'>-> \fz
  <g ees'>4 \fz ( f'32 \< ees d ees \! ) aes4. \f \> ~
  aes8 \! f \p \> ( d bes a! aes ) \!

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default    % Mark B - mesure 42

  g16 \pp ( bes, g bes g bes g bes g bes g bes )
  ees4 ( d8 f bes4 )
  r16 bes, ( g bes g bes g bes g bes g bes )
  ees4 ( d8 \< f bes4 \! )
  r16 des \mf ( c bes aes \< bes ) aes ( g f e! f g \! )
  f4 \f r8 f4-> r8
  r4 r8 <f aes>16 \fz q r8 r
  <bes, ges'>4 r8 r4 r8
  <cis fis>16 \fz q r8 r8 r8. b'16 \f -. ( gis8 -- )
  a8.-- ( d!16-. ) bis8-. cis8.-- ( fis16-. ) dis8-.
  e8.-- ( a16-. ) fis8-. g! a,16 \fz ([bes gis a])
  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  % 2 lignes de nuances dynamiques
  \polyNeutral {
    cis \fz ([d bis cis]) e \fz ([f! dis e]) \times 2/3 {a,16 \fz ([bes! gis] a[cis e]) \!}
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
  <ges ees'>8-. r r r4 r8
  R1 * 6/8 * 3

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.5

  a,4. \pp \< ( b4 c8 )
  c4 \( ( d8 ) d4 \! ( ees8 ) \)
  <<{des4. ( bes )}{s4 \f \> s8 s4 s8 \bindDynamics}>>
  f'8 \pp \< ( g aes ~ aes fis g \!)
  g \< ( a! bes \bindDynamics ) a4. \fz ~
  <<{a2. ~}{s4. \> s \!}>>
  a8 \pp r r r4 r8

  \tag #'partScore
    \dynamicLineSpannerStandard

  \tag #'partScore
    \noBreak

  \TempoIRit

  R1 * 6/8


  \mark \default    % Mark D - mesure 73

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #1.2
  \TempoIinTempo

  bes16 \pp ( f bes f a f a f a f bes f )
  a ( f a f bes f c f c f bes, ees )
  a, ( c a c bes d a \cresc c a c bes d )
  a ( c a c bes d )

  \tag #'partScore {
    \repeat tremolo 3 {bes16 \fp ( ees )}
    \repeat tremolo 3 {a,16 \pp ( ees'} \repeat tremolo 3 {a,16ees' )}
    \repeat tremolo 3 {bes16 ( ees} \repeat tremolo 3 {a,16 \< ees'}
    \repeat tremolo 6 {bes16 ees \!}
    \repeat tremolo 3 {a,16 \dim ees' \!} \repeat tremolo 3 {bes16 \p ees)}
  }
  \elseTag #'partScore {
    bes16 \fp ( ees bes ees bes ees )
    a, \pp ( ees' a, ees' a, ees' a,ees' a, ees' a, ees' )
    bes ( ees bes ees bes ees a, \< ees' a, ees' a, ees' )
    bes ( ees bes ees bes ees \! bes ees bes ees bes ees )
    a, \dim ( ees' a, ees' a, ees' \! bes \p ees bes ees bes ees)
  }

  c16 \pp ( ees c ees c ees c ees c ees c ees
  c8 ) r r r4 r8
  bes''16 \pp ( f bes f a f a f a f bes f )
  a ( f a f bes f c f c f bes, ees )

  \tag #'partScore
      \override DynamicLineSpanner #'staff-padding = #2

  a, ( \< c a c bes d a c a c bes d )

  \tag #'partScore {
    \repeat tremolo 3 {a16 ( c )}
  }
  \elseTag #'partScore {
    a16 ( c a c a c)
  }

  g16 \fp \> ( bes bes g bes g \! )

  \tag #'partScore {
    \repeat tremolo 3 {f16 \pp ( a} \repeat tremolo 3 {f16 a )}
  }
  \elseTag #'partScore {
    f16 \pp ( a f a f a f a f a f a )
  }

  \tag #'partScore
    \dynamicLineSpannerStandard

  g16 ( bes bes g bes g

  \tag #'partScore {
    \repeat tremolo 3 {a16 f )}
  }
  \elseTag #'partScore {
    a16 f a f a f )
  }

  \tag #'partScore {
    \repeat tremolo 3 {g16 ( \< bes \!}
  }
  \elseTag #'partScore {
    g16 ( \< bes g bes g \! bes
  }

  g16 bes \> g bes ees, g \bindDynamics )
  a ( \p f f a f a

  \tag #'partScore {
    \repeat tremolo 3 {f16 a)}
  }
  \elseTag #'partScore {
    f16 a f a f a)
  }

  <<{<fis a>4. ~ q8 r c'}{s4 -\tweak #'minimum-length #7 \< s16 s \!}>>
  r8 \dim fis r a \pp r d,16 ( e )

  \mark \default    % Mark E - mesure 93

  \tag #'partScore {
    \repeat tremolo 3 {d16 \p ( e}
  }
  \elseTag #'partScore {
    d16 \p ( e d e d e
  }

  d8 ) r r

  \tag #'partScore {
    \repeat tremolo 3 {c16 \< ( d}
  }
  \elseTag #'partScore {
    c16 \< ( d c d c d \!
  }

  c8 \! ) r r

  \tag #'partScore {
    \repeat tremolo 3 {bes16 \mf \< ( c}
  }
  \elseTag #'partScore {
    bes!16 \mf \< ( c bes c bes c \!
  }

  bes8 \! ) r r
  <ees, bes'>8 \ff r bes'16-> ([ges ees ges]) r8 r
  <<{c,4. ( ees )}{s4 \p s \< s8 s \bindDynamics}>>
  c'4. \f \> ( a \! )

  \tag #'partScore {
    \rightDynamic f \p -\tweak #'minimum-length #5 \> \leftDynamic bes, \pp ~
  }
  \elseTag #'partScore {
    f' \p \> bes, \pp ~
  }

  bes2. ~
  bes ~
  <<{bes4. des ~}{s4 \< s8 s \fz \>}>>
  <<{des4. <g bes>}{s4 s8 \> s4 s16 s \!}>>
  q2. \pp ( des' )
  <<{f,4. ( f' )}{s4. \< s4 s16 s \!}>>
  <<{fis2.}{s4 \f s \> s8 s16 s \!}>>
  <<{g4. bes8 ( a g )}{s4 \< s16 s \! s \f}>>
  g8 ( f bes, ) d4 ( c8 )
  g' ( f \> bes, ) d4 ( c8 ) \! (
  bes \p ) r r r4 r8
  R1 * 6/8

  \mark \default    % Mark F - mesure 113

  R1 * 6/8
  a,!2. \pp
  \set tupletSpannerDuration = #(ly:make-moment 12 16)
  \times 12/18 {
    g16 ( bes g bes g bes g bes g bes g bes g bes g bes g bes )
    g16 ( bes g bes g bes g bes g bes g bes g bes g bes g bes )
    g16 \< ( bes g bes g bes g bes g bes g bes g bes g bes g bes \! )
  }
  f'8 \mf r r r4 r8
  f \fz r r r4 r8
  r r16 f16-. \cresc \times 2/3 {f16 ([bes d])} <f, d'>8 r r
  r r16 \< f16-. \times 2/3 {f16 ([bes d])} <f, d'>8 \! r r
  <bes, ges' ees'>8 \f r16 bes \times 2/3 {bes16 ([ges' bes])} <f ees'>8 r r
  bes4.-> \ff f'->
  fis-> ~fis16 cis a fis cis' a
  <f! d'>8-. r bes'!16-. c!-. bes8 ( a bes )
  a4.-> cis:32->

  \mark \default    % Mark G - mesure 127

  bes16 [ges des bes] ges' [des bes ges] des' [bes ges des]
  bes' ( ges des bes c des ) ees ( f ges aes bes c )
  \acciaccatura { \slurUp d!8 \slurNeutral} bes'4 \ff ( a!8 ) c4 ( bes8 )
  ees4 ( d8 ) c4 ( bes8 )
  a4 (bes8 ) g4 (bes8 )
  a8. _\markup {\italic "con forza"} bes16 a bes g4. \fz ~
  g8. a16 g a f4. \fz~
  f8. g16f g ees4. \fz ~
  ees8 r16 c ees c d8-> r16 bes d bes
  c8-> r16 a c a bes8-> r16 g bes g
  a8 \f a, ([a']) r d, ([d'])
  r a ([a']) r <<{c,  ([c']}{s8 \< s16 s \!}>>

  \mark \default    % Mark H - mesure 139

  cis,8 ) \fz r r r <cis e> \ff ( a )
  r4 r8 r <cis e> ( a )
  r4 r8 r <cis e> \dim ( ais ) \!
  r4 r8 r g'! ( g, )
  r4 r8 r fis' ( \mp fis, )
  e \p r d \dim r cis r
  ais16[ \pp ( fis' cis fis] ais,[ fis' cis fis] ais,[ fis' cis fis])
  ais,16[ ( fis' cis fis] ais,[ fis' cis fis] ais,[ fis' cis fis])
  e ( g! fis g e g fis g e g fis g )
  e ( g fis g e g fis g e g fis g )

  \bar "||"    % mesure 149

  \key a \minor
  fis8 r16 d' \pp ( cis d b8 ) r r
  r8. fis16 ( eis fis a4 ) r8
  g r g ([g]) r g ~
  g ( g4-- g-- g8-- )
  e2. ~
  e
  \repeat tremolo 12 {fis32 \pp ( d )}
  <<{\repeat tremolo 12 {d'32 ( b )}}{s4 \< s s8 s \!}>>
  a'8 \ff a ([a,]) a ([a,]) r
  r a'' ([a,]) a ([a,]) r
  r a'' ([a,]) a ([a,]) r
  r a'' ([a,]) a ([a,]) r
  r f''' ([f,]) f ([f,]) r
  r g'' ([g,]) g ([g,]) r
  r g'' ([g,]) g ([g,]) r
  r dis'' ([a]) dis, ([a]) r

  \mark \default    % Mark I forcé - mesure 165

  <b gis'>8 r r r4 r8
  R1 * 6/8 * 4
  ees,16 \p ees8 ees ees16 ~ ees16 ees8 ees8 ees16 ~
  ees16 ees8 \dim ees ees16 ~ ees16 ees8 ees8 ees16 ~
  ees16 ees8 \pp ees ees16 ~ ees16 ees8 ees8 ees16 ~
  ees16 ees8 ees ees16 ~ ees16 ees8 ees8 f16
  f2.: \ppp
  f4.: f4: des32 des32 des32 des32
  des2.:
  des:
  R1 * 6/8
  r4 r8 r f16 ( \< aes des f ) \!
  <f aes>2.: \ff
  q4.: q4: bes16-. ( \f e,!-. )
  f4-> f16-. ( cis-. ) d!4-> d16-. ( a!-. )
  bes4-> bes16-. ( e,!-. ) f4-> f16-. ( d-. )
  <d' f>2.: \ff
  q4.: q4: d16-. f-.

  \mark \default    % Mark J - mesure 186

  d8 ( c d )b! ( c ees )
  d ( c d ) b4 ( ees16-. c-. )
  d4.-> \fz~d4 ees16-. ( c-. )
  d4. \fz~d4 ees16-. ( c-. )
  d8 ( c d ) b ( c d )
  ees ( d ees) <c, c'>4.:
  q2.:
  <aes aes'>:
  <des des'>:
  <cis cis'>4.: q4: a'16 ( a' )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  a2.: \fff
  a:
  a8 r16 a, \times 2/3 {a16 ([d f])}a4.:
  a8 r16 a, \times 2/3 {a16 ([d f])}a4.:
  bes8 [r16 f des8] f [r16 des bes8]
  des [r16 bes f8] bes [r16 f des8]
  <ges ees'>8 r r r4 r8
  R1 * 6/8 * 3
  fis4. \pp ( g4 gis8 )
  gis4 ( \< a8 a4 ais8 ) \!
  b16 \mf ( g? d g d g

  \tag #'partScore {
    \repeat tremolo 3 {d16 g16 )}
  }
  \elseTag #'partScore {
    d g d g d g )
  }

  d16 \< ( g d g ees g

  \tag #'partScore {
    \repeat tremolo 3 {d16 gis ) \!}
    \repeat tremolo 6 {cis,16 \f ( g'! )}
    \repeat tremolo 6 {e16 ( \> g ) \!}
    \repeat tremolo 3 {e16 \p \> ( g} \repeat tremolo 3 {e16 \dim a, )}
    \repeat tremolo 3 {\once \override DynamicLineSpanner #'staff-padding = #3.2
      g'16 \pp ( e} \repeat tremolo 3 {g16 \pp e)}
  }
  \elseTag #'partScore {
    d16 gis d gis d gis ) \!
    cis, \f ( g'! cis, g' cis, g' cis, g' cis, g' cis, g' )
    e ( \> g e g e g e g e g e g ) \!
    e \p ( g e g e g e \dim a, e' a, e' a, )
    g' \pp ( e g e g e g e g e g e)
  }

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  \override Fingering #'avoid-slur = #'outside
  \poly {fis16 ( a-0 a a-0 a a-0 ) a ( a a a a a )}{\set fingeringOrientations = #'(down) fis8 a-4 a-4 a a a}
  \set fingeringOrientations = #'(up)
  \poly {a16 ( a a a a a}{a8 a a} <a-4>8 ) r8 r
  R1 * 6/8
  \override DynamicLineSpanner #'staff-padding = #2.8
  r4 r8 d,4. \fz~
  <<{d2.}{s4 \> s4 s8 s16 s \!}>>
  <<{cis2. (}{s4 \p -\tweak #'minimum-length #8 \> s4 s8 s \!}>>
  d2. \pp )
  <<{cis2.}{s4 \< s s8 s16 s \!}>>
  <<{cis2. \< ~}{s4 \< s s8 s16 s \!}>>
  \dynamicLineSpannerStandard
  cis8 r r r4 r8
  b'16 \mp ( cis! b fis b fis b8 ) r r
  a16 ( \dim b a e a e a8 ) \! r r
  g16 \pp ( a g d g d g8 ) r r
  <g, g'>8 \f r r r4 r8
  \override DynamicLineSpanner #'staff-padding = #2.2
  <<{e'4. ( g )}{s4 \p s \< s8 s \!}>>
  <<{e'4. ( cis )}{s4 \f s \> s8 s16 s \!}>>
  a4 ( \dim d,8 ~ d4. ) \p
  d2. \dim ~
  d \pp ~
  d4. \< f \fz ~
  <<{f <b d> ~}{s4 s8 -\tweak #'minimum-length #8 \> s s \!}>>
  q2. \pp
  \dynamicLineSpannerStandard
  f'2.

  \mark \default    % Mark M - mesure 237

  \tag #'partScore {
    a,4. \< ( a' ) \!
  }
  \elseTag #'partScore {
    a,4. -\tweak #'stencil ##f \p \< ( a' ) \!
  }

  % Il faut allonger la note pour y placer le Fespressivo : on place un long silence multimesure invisible
  \tag #'partScore {
    <<{\leftDynamic ais2. \Fespressivo}{
        \once \override MultiMeasureRest #'stencil = ##f
        \once \override MultiMeasureRest #'minimum-length = #15 \oneMMRNumberOff R2. \oneMMRNumberOn
      }>>
  }
  \elseTag #'partScore {
    \leftDynamic ais2. \Fespressivo
  }

  <<{b4. d8 ( cis b )}{s4 \< s16 s \!}>>
  b8 ( a d, ) fis4 ( e8 )
  b' ( a d, ) fis4 \dim ( e8 ) \!
  d r r r4 r8
  R1 * 6/8 * 2

  \tag #'partScore
    \pageTurn

  cis,!2. \pp
  \repeat tremolo 6 {bes32 ( d} \repeat tremolo 6 {bes32 d}
  bes8 ) r r r4 r8

  \bar "||"    % mesure 248

  \key d \minor
  \repeat tremolo 6 {d32 ( d'} \repeat tremolo 4 {d,32 d' )} e8
  d8 ( \< ( cis d ) b4-> ( b16 \! cis )
  \leftDynamic d8 \SempreCresc ( cis d ) b4 ( cis16 d ) \!
  f8 ( \mf e f ) b,4 \bracketedFz ( cis16 d )
  f8 ( e f ) b,4 \fz( cis16 d )
  a4.-> \ff d->
  a'-> ~ a16 f d a f' d
  a f d' a f d a' f d a d' e
  f8 \fz( d e ) r4 e16 f
  g8 \fz( e f ) r4 f16 ( g
  a8 f ) f16 ( g a8 f g )
  a8 ( f ) f16 ( g a8 f g )
  bes ( g ) g16 ( a bes8 d bes )
  bes ( g ) g16 ( a bes8 d bes )
  b ( g ) g16 ( a b8 d b )
  b ( g ) g16 ( a b8 d b )
  gis,4.-> d'->
  aes'4.:32-> ~aes16 f d f, d d'

  \mark \default    % Mark N - mesure 266

  <c a'!>2.:32 \fff
  c'16 a f c f g c a f c f g

  \TempoIPaPAcc

  c a f c f g c a f c f g
  c a f c f g c a f c a' a
  a f d a d e a f d a d e
  a f d a d e a f d a d e
  \acciaccatura {\slurUp \once \override Slur #'positions = #'(0.5 . 2.2) d,8 \slurNeutral} d'4.-> \ff
  \acciaccatura {\slurUp \once \override Slur #'positions = #'(3 . 4) a8 \slurNeutral} a'4.->
  \acciaccatura {\slurUp \once \override Slur #'positions = #'(3 . 4.5) bes,8 \slurNeutral} bes'4. \fz ~
  bes16 a fis ees d c
  \acciaccatura {\once \override Slur #'positions = #'(-5 . -1.6) g,8} g'4.^>
  \acciaccatura {\slurUp d8 \slurNeutral} d'4.->
  \acciaccatura {\slurUp \once \override Slur #'positions = #'(1.3 . 3) f,8 \slurNeutral} f'4. ~ \fz f16 e cis bes a g

  \mark \default    % Mark O - mesure 276

  r16 bes-> \fz a f e d r d'-> \fz cis g f e
  r e'-> [d f,] r f'-> [e g,] r g'-> [fis a,]
  r a'-> [g b,] r a'-> [g bes,] r g'-> [f? a,]
  r f'-> [ees g,] r ees'-> [d f,] r d'-> [cis e,!]
  d'4.:32 \ff bes':
  bes8: a: g: f4.:
  ees8: d: cis: d: bes: a:
  a8-. e'-. f-. e-. \> f-. e-. \!
  f8 r r r4 r8
  r e,-. \p f-. \dim e-. f-. e-. \!
  d \pp r r r4 r8

  \mark \default    % Mark P - mesure 287

  \tag #'partScore
    \noBreak

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2

  \TempoITempoPrimo

  R1 * 6/8 * 4
  r4 fis16 ( \pp g a8 fis g )
  R1 * 6/8
  r4 \rightDynamic d16 \ppp ( e f!8 cis d )
  R1 * 6/8
  r8 d16 ( \dim e f8 cis d ) \! r
  R1 * 6/8 * 2
  bes4.\pp ( ~ bes4 bes16 g
  aes2. ) ~
  aes4. ( a

  \mark \default    % Mark Q - mesure 301

  d4 ) r8 r r f16 \pp d
  bes' f d'4 ~ d8 r f,16 d
  a' f a'4 ~ a r8
  R1 * 6/8 * 5

  \tag #'partScore
    \noBreak

  \TempoIPocoRit    % Mesure 309

  R1 * 6/8 * 2
  d,,4 \ppp r8 d4 r8
  d4. r4 r8
  a4 r8 a4 r8
  a2. \fermata

  \bar "|."
}

voiceSgMaViolinoII = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 "Violini II"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "2.Viol."
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef treble
  \SgMaViolinoII
}

quoteScoreSgMaViolinoII = \SgMaViolinoII
