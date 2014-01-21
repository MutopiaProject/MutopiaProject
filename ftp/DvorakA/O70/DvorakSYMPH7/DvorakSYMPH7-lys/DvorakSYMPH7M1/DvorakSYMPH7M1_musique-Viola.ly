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
  * Fichier de notes, Alto                                              *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMaViola =
\relative c {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 3 8)
  \tag #'partScore 
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoI

  R1 * 6/8
  r4 r8 r4 d16 \pp ( e
  f8 e f d e g )
  f ( e f d4 ) e16-. ( c-. )
  d4. ~ d4 e16-. ( c-. )
  d4. ~ d4 \< f16-. ( d-. ) \!
  bes'4 \cresc r8 r8. f16-. ( d8-. )
  <ees fis>2.:32 \fpp ^\Divisi
  <ees fis>:
  <ees fis>:
  <ees fis>:
  <ees fis>:|

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #2.5
    <<{<fis a>2.:32 -\tweak #'minimum-length #6 \<}{s4 s s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{<fis a>2.:32 \<}{s4 s s8 s \!}>>
  }

  <fis a>8-.
  ees'16-. \f \< ([c-.]) a'8-. c,16-. ([a-.]) ees'8-. a,16-. ([fis!-.]) \!

  \tag #'partScore
    \dynamicLineSpannerStandard 

  d'8-. \ff r r
  \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
  \once \override TrillSpanner #'outside-staff-priority = #500

  \tag #'partScore {
    ees,4.-> ^\markup {\tiny \natural} \trill
  }
  \elseTag #'partScore {
    <<{ ees4.-> ^\markup {\lower #0.7 \tiny \natural}}{s4 \startTrillSpan s16 s \stopTrillSpan}>>
  }

  \leftDynamic d16 \< ^\Marcato ees d fis a g fis a d c bes-> _\ff [g]

  \tag #'partScore {
    d'16-> -\tweak #'minimum-length #3 \< bes \! bes'4-> ~ bes8 a ( g )
  }
  \elseTag #'partScore {
    d16-> \< bes \! bes'4-> ~ bes8 a ( g )
  }

  fis4. \< g4 ( gis8 ) \! ~
  gis bes! \dim ( a16 f! d8 ) \! r r
  R1 * 6/8
  r4 r8 bes4.-> \ff
  bes-> a8 \< ( gis a ) \!
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  dis,4 ( \times 2/3 {e16 a c )} e8 \< f ( e16 c ) \!
  a8 r r r4 r8

  \mark \default    % Mark A - mesure 25

  \poly {<fis a>2.: \f ^\markup {\italic divisi}}
  {ees:32}
  <c' ees>4.:-> <ees! fis>:->
  <bes g'>2.:
  <g' bes>4.: q4: g,16 e

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.8

  f d f'4-> \fz g,16 e g'4-> \fz
  a,16 f a'4-> \fz bes,16 g bes'4-> \fz
  r8 cis,,16 \ff d e f fis g a bes! b cis
  d ( e fis g gis a ) bes! ( a g! e cis a' )
  r16 a _\markup {\italic "con forza"} ( g f! e f )
  d4-> \fz e8-> ~
  e fis-. g-. a-. bes-. c-.
  d g,,-. [bes]-. g'4-> fis8-> ~
  fis f-. \< ees-. d-. cis-. cis-. \!
  d r r d4-> \f <cis e>8-> ~
  q8 c-. d-. a-. bes-. d-.
  <g, ees'>4.-> \fz <g f'>-> \fz
  <g ees'> \fz <f aes> \fz \> ~
  q8 \! r r r4 r8

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default    % Mark B - mesure 42

  \tag #'partScore {
    \repeat tremolo 3 {ees16 \pp ( g} \repeat tremolo 3 {ees16 g )}
  }
  \elseTag #'partScore {
    ees16 \pp ( g ees g ees g ees16 g ees g ees g )
  }

  aes4. ( <d, f>4.)   % aes4. ( <d, f>4. \Div )

  \tag #'partScore {
    \repeat tremolo 3 {ees16 ( g} \repeat tremolo 3 {ees16 g )}
  }
  \elseTag #'partScore {
    ees16 ( g ees g ees g ees g ees g ees g)
  }

  <<{aes4. ( <d, f>4. )}{s4. \< s16 s s \!}>>
  <<{<g bes>4. des4 ( bes'8 )}{s8 \mf \bindDynamics s4 \< s s16 s \!}>>
  <f aes>4 \f r8 <aes! c>4-> r8
  r4 r8 <f aes>16 \fz q r8 r
  <des bes'>4 r8 r4 r8

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.7

  <cis a'!>16 \fz <cis a'> r8 r r4 r8
  <cis' e>4.:32 \fz <a g'>: \fz
  q: <a cis>8 a16 \fz ([bes! gis a])

  \tag #'partScore
    \dynamicLineSpannerStandard

  % 2 lignes de nuances dynamiques
  \polyNeutral {
    cis-> \fz ([d bis cis]) e-> \fz ([f! dis e]) \times 2/3 {a16 \fz ([bes! gis] a [cis e])}
  }
  {
    \once \override DynamicText #'stencil = ##f
    \once \override Hairpin #'rotation = #'(3 -1 0) s8 \fz \< s s s s s16 s \!
  }

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-2.5

  \mark \default    % Mark C - mesure 54

  \tag #'partScore {
    \once \override TextScript #'script-priority = #-100
    a,4 \ff -\tweak #'extra-offset #'(0 . -2) \trill ^\markup {\lower #1.5 \tiny \flat}
    a,4 \trill
    a8-. a16 ([a'])
  }
  \elseTag #'partScore {
    \once \override TextScript #'script-priority = #-100
    \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -0.5 )
    \once \override TrillSpanner #'outside-staff-priority = #500
    <<
      {a4 \ff ^\markup {\tiny \flat}}
      {s8 \startTrillSpan s16 s32 s \stopTrillSpan}
    >> <<{a,4}{s8 \startTrillSpan s16 s32 s \stopTrillSpan}>>
    a8-. a16 ([a'])
  }

  <d, a'>2.:32 \ff
  q4.: q32 q q q r16 <c e>16-. <a c>8-.
  <a d>8.-> a16 \times 2/3 {a16 ([d f])}<f a>8 r16 <c e>16-. <a c>8-.
  <a d>8.-> a16 \times 2/3 {a16 ([d f])}<f a>8 r16 f16-. d8-.
  <des f>2.:32
  q:
  <c ees>8-. r r r4 r8
  R1 * 6/8 * 3
  ges2. \pp \< ~
  ges4. ( f ) \!

  \tag #'partScore {
    <<{e!2.}{s4 \fz -\tweak #'minimum-length #4 \> s4 s8 s8 \!}>>
  }
  \elseTag #'partScore {
    <<{e!2.}{s4 \fz \> s4 s8 s8 \!}>>
  }


  f8 \pp \< ( g aes ~ aes fis g ) \!
  g ( \< a!bes \! ) ees4. \fz ~

  \tag #'partScore {
    <<{ees2. ~}{s4. -\tweak #'minimum-length #4 \> s \!}>>
  }
  \elseTag #'partScore {
    <<{ees2. ~}{s4. \> s \!}>>
  }

  ees8 \pp r r r4 r8

  \noBreak
  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #1.5
  \TempoIinTempo

  r8 d16 \pp ( f c f, ) r8 ees'16 ( f d bes )
  r8 c16 ( a f bes ) r8 a16 ( f ees g )
  r8 f16 ( a bes8 ) r f16 ( \cresc a bes8 )
  r f16 ( a f bes ) g \fp ( c, g' c, g' c, )

  \tag #'partScore {
    \repeat tremolo 6 {f16 \pp ( c )}
    \repeat tremolo 3 {g'16 ( \< c,} \repeat tremolo 3 {f16 c)}
    \repeat tremolo 6 {g'16 ( c, ) \!}
    \repeat tremolo 3 {f16 \dim ( c} \repeat tremolo 3 {g'16 \p c,)}
    \repeat tremolo 6 {a'16 \pp ( f}
  }
  \elseTag #'partScore {
    f16 \pp ( c f c f c f c f c f c )
    g' ( c, g' c, g' c, f \< c f c f c )
    g' ( c, g' c, g' c, \! g' c, g' c, g' c, )
    f \dim ( c f c f c g' \p c, g' c, g' c,)
    a' \pp ( f a f a f a f a f a f
  }

  a8 ) r r r4 r8
  bes'16 \pp ( f bes f a f a f a f bes f )
  a ( f a f bes f c f c f bes, ees )
  <f, a> \< ( c' q c <f, bes> d' <f, a> c' q c <f, bes> d' )

  \tag #'partScore {
    \repeat tremolo 3 {<f, a>16 ( c' )}
  }
  \elseTag #'partScore {
    <f, a>16 ( c' <f, a> c' <f, a> c' )
  }

  g16 \fp \> ( bes bes g bes g ) \!

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #3
    \repeat tremolo 6 {a16 \pp ( f )}
    \repeat tremolo 3 {bes16 ( g} \repeat tremolo 3 {f16 a )}
    \repeat tremolo 3 {bes16 \< ( g ) \!}
  }
  \elseTag #'partScore {
    a16 \pp ( f a f a f a f a f a f )
    bes ( g bes g bes g f a f a f a)
    bes \< ( g bes g bes \! g )
  }

  bes ( g \> bes g g ees ) \!

  \tag #'partScore
    \dynamicLineSpannerStandard

  f \p ( a a f a f a f a f a f )

  \tag #'partScore {
    <<{<fis a>4. ~ q8 r a'}{s4 -\tweak #'minimum-length #4 \< s16 s \!}>>
  }
  \elseTag #'partScore {
    <<{<fis, a>4. ~ q8 r a'}{s4 \< s16 s \!}>>
  }
  r8 \dim c r \clef treble fis \pp r r
  \clef alto

  \mark \default    % Mark E - mesure 93

  \tag #'partScore {
    \repeat tremolo 3 {b,16 \bracketedPP ( g}
  }
  \elseTag #'partScore {
    b16 \bracketedP ( g b g b g
  }

  b8) r r

  \tag #'partScore {
    \repeat tremolo 3 {a16 \< ( f!}
  }
  \elseTag #'partScore {
    a16 \< ( f! a f a f \!
  }

  a8) \! r r

  \tag #'partScore {
    \repeat tremolo 3 {g16 \mf \< ( ees}
  }
  \elseTag #'partScore {
    g16 \mf \< ( ees g ees g ees \!
  }

  g8) \! r r
  <bes, ees>8 \ff r r r bes16-> ( ges ees ges )
  c8 \p ( bes a \< ) a ( g! f ) \!

  \tag #'partScore {
    ges4. \f -\tweak #'minimum-length #4 \> ( ees ) \!
    d4. \p ( -\tweak #'minimum-length #5 \> bes' ) \pp
  }
  \elseTag #'partScore {
    ges4. \f \> ( ees ) \!
    d4. \p ( \> bes' ) \pp
  }

  f4. ( e!
  f e

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #2.5
    <<{f4. ) g ~}{s4 -\tweak #'minimum-length #4 \< s8 \! s \fz \>}>>
  }
  \elseTag #'partScore {
    <<{f4. ) g ~}{s4 \< s8 \! s \fz \>}>>
  }

  <<{g4. \! ees'4 \( ees16 ( e )\)}{s4 \! s8 \> s4 s16 s \!}>>
  e2. \pp ~
  e
  \tag #'partScore
    \dynamicLineSpannerStandard

  \tag #'partScore {
    \repeat tremolo 3 {ees16 \< ( f )}
  }
  \elseTag #'partScore {
    ees16 \< ( f ees f ees f )
  }

  ees16 ( f ees f ees c \! )
  a \f ( c ees c a \> c ) d ( c a c d c ) \!
  g ( \< d' f d g, d' ) \! e! ( bes! g bes e bes )
  f' \f ( bes, f bes f' bes, ges bes ges' bes, ges bes )
  f' ( \dim bes, f bes f' bes, ges bes ges' bes, ges bes )
  f' \p \> ( bes, f bes f' bes, ges bes ges' bes, ges bes ) \!
  f' \dim ( bes, f bes f' bes, ges bes ges' bes, ges bes )

  \mark \default    % Mark F - mesure 113

  r4 r8 r4 e,!16 \pp ( f
  ges2. )
  \set tupletSpannerDuration = #(ly:make-moment 6 8)
  \times 12/18 {
    g!16 ( bes g bes g bes g bes g
    \tag #'partScore
      \tupletOff
    bes g bes g bes g bes g bes )
    g ( bes g bes g bes g bes g bes g bes g bes g bes g bes )
    g ( \< bes g bes g bes g bes g bes g bes g bes g bes g bes ) \!
  }

  \tupletOn
  f8 \mf r \times 2/3 {f16 ( bes d!} f8 ) r r
  r4 \times 2/3 {f,16 ( bes d} f8 ) r r
  r r16 f,16-. \cresc \times 2/3 {f16 ([bes d])} f8 \! r r
  r r16 \< f,16-. \times 2/3 {f16([bes d])} f8 \! r r
  \once \override Hairpin #'rotation = #'(7 -2 0) f,16 \f \< bes ees ges bes des \! <ees, c'>8 r r
  <bes d!>4:32 \ff<f c'>32 q q q <c' ees>4: <bes d>32 q q q
  cis4: bis32 bis bis bis dis4: cis32 cis cis cis
  <bes! d>8 r bes'16-. c!-. d8 ( cis d )
  d ( cis d )
  <fis, a>4.:->

  \mark \default    % Mark G - mesure 127

  bes8
  <des,, bes'>4: q4.:
  q4.: q4: bes'16-. c-.
  <bes d!>4: \ff \Divisi <a! c>32 <a c> q q <c ees>4: <bes d>32 q q q
  <ees g!>4: <d f>32 q q q <c ees!>4: <bes d>32 q q q
  <a c>4: <bes d>32 q q q <g bes>4: <bes d>32 q q q
  f'4. \fz ~ f8. _\markup {\italic "con forza"} g16 f g
  ees4. \fz ~ ees8. f16 ees f
  d4. \fz ~ d8. ees16 d ees
  c8 r r f, r r
  fis r r g r bes
  a r16 f'!-> \ff e!-> f-> d8-> r16 g-> f-> g->
  e8-> r16 a-| g-| a-| f8-| r16 f'-| \< e-| f-| \!

  \mark \default    % Mark H - mesure 139

  cis8-| r r r <e, a> \ff ( a, )
  r4 r8 r <e' a> ( <cis e> )
  r4 r8 r <ais ais'> \dim ( <cis e> )
  r4 r8 r cis' ( cis, \! )
  r4 r8 r8 r16 d16 \mp ( cis d )
  cis \p ([e d e] d \dim [fis e fis] e [g fis g] \! )
  fis \pp ([ais gis ais] fis [ais gis ais] fis [ais gis ais])
  fis ([ais gis ais] fis [ais gis ais] fis [ais gis ais])

  \tag #'partScore {
    \repeat tremolo 3 {cis,16 ( ais} \repeat tremolo 3 {cis16 ais )}
    \repeat tremolo 3 {cis16 ( ais} \repeat tremolo 3 {cis16 ais )}

    \bar "||"    % mesure 149

    \key a \minor
    \repeat tremolo 6 {fis16 ( b )}
    \repeat tremolo 3 {fis16 ( b} \repeat tremolo 3 {fis16 a )}
  }
  \elseTag #'partScore {
    cis16 ( ais cis ais cis ais cis ais cis ais cis ais )
    cis ( ais cis ais cis ais cis16 ais cis ais cis ais )

    \bar "||"    % mesure 149

    \key a \minor
    fis \pp ( b fis b fis b fis b fis b fis b )
    fis ( b fis b fis b fis a fis a fis a)
  }

  b8 r b ([b]) r b ~
  b ( b4-- b-- b8 )
  cis2. ~
  cis
  \repeat tremolo 6 {d,16 \pp ( fis )}
  <<{\repeat tremolo 6 {b ( d )}}{s4 \< s s8 s \!}>>
  \poly {dis4.:32 \f fis8:[e: dis:]}{c!4.:32 c:}
  <c dis>4.: <c fis>4:
  \poly { dis16:32 fis:}{c16:32 c:}
  <c e>4.: \fz q4:
  \poly {dis16:32 fis:}{c16:32 c:}
  <c e>2.: \ff
  \ignoreNoteCollision
  \poly {
    \arpeggioBracket
    \once \override Arpeggio #'positions = #'(2.2 . 2.2)
    \stemDown <f a>2. \arpeggio \Div g
    \once \override Arpeggio #'positions = #'(1.25 . 2.25)
    <d b'>\arpeggio
    \once \override Arpeggio #'positions = #'(1.35 . 3.05)
    <dis c'> \arpeggio
  }
  {
    c2.:32
    \arpeggioBracket
    \once \override Arpeggio #'positions = #'(0.4 . 0.6)
    <c e>:\arpeggio
    g:
    \once \override Arpeggio #'positions = #'(-1.7 . -1.2)
    <f a>:\arpeggio
  }
  \notifyNoteCollision
  \stemNeutral

  \mark \default    % Mark I forcé - mesure 165

  \ignoreNoteCollision
  \poly {
    \once \override Arpeggio #'positions = #'(1.50 . 3.75)
    \once \override Flag #'stencil = ##f
    \stemDown <e' e'>8 \arpeggio
  }
  {<e, gis>8}
  \stemNeutral
  \notifyNoteCollision
  <<{e4 ~ e4. ~}{s4 \fp \> s4 s8 \!}>>
  e4. \pp ~ e16 \< e8 e8 e16 \!

  \tag #'partScore {
    <<{e2. ~}{s4 \fp -\tweak #'minimum-length #6 \> s4 s8 s16 s \!}>>
    e4. ~ e16 \< e8 <<{e8}{s16 s -\tweak #'minimum-length #4.5 \>}>>e16 \!
    <<{f2.}{s4 \fp -\tweak #'minimum-length #6 \> s4 s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{e2. ~}{s4 \fp  \> s4 s8 s16 s \!}>>
    e4. ~ e16 \< e8 <<{e8}{s16 s \>}>>e16 \!
    <<{f2.}{s4 \fp \> s4 s8 \!}>>
  }

  c'16 \p c8 c c16 ~ c c8 c c16 ~
  c c8 \dim c c16 ~ c c8 c c16 ( \!
  f ) f8 \pp f f16 ~ f f8 f f16 ~
  f f8 f f16 ~ f f8 f ees16
  des2.:32 \ppp des4.: des4: ces32 ces ces ces
  ces2.:
  ces:
  r16 des,8 \p ([f16] aes-. ) r r f8 \< ([aes16] des-. ) \! r
  r aes8 \< ([des16] f-. \! ) r des ( f aes ) r r8
  <f aes>2.: \ff
  q4.: q4: <aes, bes d! f>16 \Div \f <aes bes d f>
  q4.:32 q:
  q: q:
  <d f>2.: \ff
  q:

  \mark \default    % Mark J - mesure 186

  b!8 ( a! b ) g ( a c )
  b ( a! b ) g4 c16-. (  a-. )
  b4. \fz ~ b4 c16-> a->
  b4. \fz ~ b4 c16-> aes->
  b!8 ( a! b ) g ( a b )
  c4 ees,16-| f!-| g8 ( f g )
  ees4-> \fz ees16-| f-| g8 ( f g )
  ees4-> \fz ees16-| f-| ges8 ( f ges )
  e!4-> \fz e16-| fis-| gis8 ( fis gis )
  e4-> \fz e16-| fis-| g!8 ( fis g )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  <d' a'>2.:32 \fff
  q4.: q4: <c e>16-> <a c>->
  <a d>8-. r16 a \times 2/3 {a16([d f])} a4.:
  a8 r16 a, \times 2/3 {a16([d f])} a4.:
  <des, f>2.:
  q:
  <bes ges'>8 r r r4 r8
  R1 * 6/8 * 3
  ees2. \pp ~

  \tag #'partScore {
    <<{ees2.}{s4 -\tweak #'minimum-length #4 \< s4 s8 s8 \!}>>
  }
  \elseTag #'partScore {
    <<{ees2.}{s4 \< s4 s8 s8 \!}>>
  }

  d16 \mf ( g, d g d g

  \tag #'partScore {
    \repeat tremolo 3 {d16 g )}
  }
  \elseTag #'partScore {
    d16 g d g d g)
  }

  d16 ( \< g d g ees g

  \tag #'partScore {
    \repeat tremolo 3 {d16 gis \! )}
    \repeat tremolo 6 {cis,16 \f ( g'! )}
    \repeat tremolo 6 {e16 \> ( g ) \!}
    \repeat tremolo 6 {e16 \p \dim ( g )}
    \repeat tremolo 6 {e16 \pp ( g )}
  }
  \elseTag #'partScore {
    d16 gis d gis d gis \! )
    cis, \f ( g'! cis, g' cis, g' cis, g' cis, g' cis, g' )
    e \> ( g e g e g e g e g e g ) \!
    e \p ( g e g e g e \dim g e g e g )
    e \pp ( g e g e g e g e g e g )
  }

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  fis8 fis'16 ([d e a,]) r8 g'16 ( e fis d )
  r8 e16 ( cis d a ) r8 cis16 ( a b g )
  r8 a16 ( g fis d' ) r8 \cresc a16 ( g fis d' ) \!
  r8 a16 ( g fis a ) b4. \fz ~

  \tag #'partScore {
    <<{b2.}{s4 -\tweak #'minimum-length #5 \> s4 s8 s16 s \!}>>
    <<{a2. (}{s4 \p -\tweak #'minimum-length #5 \> s4 s8 s8 \!}>>
  }
  \elseTag #'partScore {
    <<{b2.}{s4 \> s4 s8 s16 s \!}>>
    <<{a2. (}{s4 \p \> s4 s8 s8 \!}>>
  }
  b2. \pp )

  \tag #'partScore {
    <<{a2.}{s4 -\tweak #'minimum-length #5 \< s s8 s16 s \!}>>
    <<{ais2. ~}{s4 -\tweak #'minimum-length #5 \< s s8 s16 s \!}>>
  }
  \elseTag #'partScore {
    <<{a2.}{s4 \< s s8 s16 s \!}>>
    <<{ais2. ~}{s4 \< s s8 s16 s \!}>>
  }

  ais8 r r r4 r8

  \tag #'partScore {
    \repeat tremolo 3 {dis16 \mp ( fis}
  }
  \elseTag #'partScore {
    dis16 \mp ( fis dis fis dis fis
  }

  dis8 ) r r

  \tag #'partScore {
    \repeat tremolo 3 {cis16 \dim ( e}
  }
  \elseTag #'partScore {
    cis16 \dim ( e cis e cis e
  }

  cis8 ) r r

  \tag #'partScore {
    \repeat tremolo 3 {b16 \dim ( d!}
  }
  \elseTag #'partScore {
    b16 \pp ( d! b d b d
  }

  b8 ) r r
  <d, bes' d>8 \f r d'16->  ([bes g bes]) r8 r
  a8 \p ( b! cis \< ) cis ( b a ) \!

  \tag #'partScore {
    <<{bes4. ( g )}{s4 \f s -\tweak #'minimum-length #5 \> s8 s16 s \!}>>
  }
  \elseTag #'partScore {
    <<{bes4. ( g )}{s4 \f s \> s8 s16 s \!}>>
  }

  fis4 \dim ( a8 d,4. ) \p
  d8 ( \dim fis a gis4. \pp )
  a4. ( gis )

  \tag #'partScore {
    a4. -\tweak #'minimum-length #4 \< b \fz ~
    <<{b g'4 g16 ( gis )}{s4 s8 -\tweak #'minimum-length #4 \> s s \!}>>
  }
  \elseTag #'partScore {
    a,4. \< b \fz ~
    <<{b g'4 g16 ( gis )}{s4 s8 \> s s \!}>>
  }

  gis2. \pp ~
  gis

  \mark \default    % Mark M - mesure 237

  \tag #'partScore {
    \repeat tremolo 3 {g!16 \p \cresc ( a} g a g a g e ) \!
  }
  \elseTag #'partScore {
    g!16 \p \cresc ( a g a g a g a g a g e ) \!
  }

  cis \f ( e g e cis e fis e cis e fis e )
  b ( fis' a fis b, fis' gis d! b d gis d )
  a' ( d, a d a' d, bes d bes' d, bes d )
  a' ( d, a d a' d, bes \dim d bes' d, bes d )
  a' \p  ( d, a d a' \> d, bes d bes' d, bes d ) \!
  a' \pp ( d, a d a' d, bes d bes' d, bes d )
  r4 r8 r4 gis,16 \pp ( a
  bes2. )
  \repeat tremolo 12 {bes32 ( d)}
  \repeat tremolo 12 {d,32 \pp ( bes' )}

  \bar "||"    % mesure 248

  \key d \minor
  \repeat tremolo 6 {d,32 ( a'} \repeat tremolo 4 {d,32 a')} g16 \< ([a]
  bes4 a8 \! ) g-|\cresc  f-| e-| \!
  d-> bes'-> a-> g-> f-> e->
  d-| \mf \< bes'-| a-| g-| f-| e-|
  d-| bes'-| a-| g-| f-| e-| \!
  a-> \ff f-> g-> f-> g-> bes->
  f'-> e-> f-> d-> e-> g->
  a-> g-> a-> f-> g-> bes->
  \leftDynamic d,,4.^^ \FFconForza g^^
  d'4.^^ \fz ~ d16 a f d r8
  ees'4.^^ \fz ~ ees16 c a f ees c
  ees'4.^^ \fz ~ ees16 c a f ees c
  f'4.^^ \fz ~ f16 d bes f d bes'
  f'4.^^ \fz ~ f16 d bes f d bes'
  g'4.^^ \fz ~ g16 d b g f d
  g'4.^^ \fz ~ g16 d b g f d
  gis' d b gis b d gis d b gis b d
  <d d'>2.:32

  \mark \default    % Mark N - mesure 266

  <f f'>: \fff
  c'16 a f c f g c a f c f g

  \TempoIPaPAcc

  c a f c f g c a f c f g
  c a f c f g c a f c a' a
  a f d a d e a f d a d e
  a f d a d e a f d a d e
  <a, f'>4.:32 \ff <ees' fis>:
  q2.:
  <b g'>:
  <bes! g'>:

  \mark \default    % Mark O - mesure 276

  d,8 f4-> \fz e8 g4-> \fz
  f8-> a g-> bes a-> c
  b-> d bes-> d a-> d
  g,-> bes f-> a e!-> g
  r16 a' \ff ( g f e f ) d4 e8 ~
  e-> fis-> g-> gis-> a-> bes-> ~
  bes-> a-> g!-> f-> d-> cis->
  d-. cis'-. d-. cis-. \> d-. cis-. \!
  d r r r4 r8
  r cis,-. \p d-. \dim cis-. d-. cis-. \!

  \tag #'partScore {
    d8 <cis, e>8 [-.
    \pp \Div <d f>-.] <cis e>-. [<d f>-. <cis e>]
  }
  \elseTag #'partScore {
    d'8 <cis, e>8[-.
    \pp ^\footnote \markup {"(10)"} #'(0.5 . 1.5) \markup {\italic "10 - According to N. Simrock 1885"} \Div
    <d f>-.] <cis e>-. [<d f>-. <cis e>]
  }

  \mark \default    % Mark P - mesure 287

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  \TempoITempoPrimo

  d4. ~ d4 r8
  R1 * 6/8 *2
  <fis c'>4. \pp ~ q4 r8
  <e bes'>4. ~ q4 r8 |
  <d gis>4. ~ q4 r8
  <d g!>4. ~ <d g>4 r8
  \poly {a'4. \dim ( gis )}{f2.} |
  <f ~ a>4. ^( <f gis>4 ) r8
  r4 r8 <d fis>4. \ppp ~
  q <e g>4. ( |
  <f? aes>4. ) r4 r8 |
  R1 * 6/8 *2

  \mark \default    % Mark Q - mesure 301

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #18

  R1 * 6/8 * 8

  \TempoIPocoRit    % Mesure 309

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #18

  R1 * 6/8 * 2
  a4 \ppp r8 a4 r8
  a4. r4 r8
  f4 r8 f4 r8
  f2. \fermata

  \bar "|."
}

voiceSgMaViola = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 "Viole"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "Vle"
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef alto
  \SgMaViola
}

quoteScoreSgMaViola = \SgMaViola
