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
  * Fichier de notes, Violoncello I                                     *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Fichier cité par la trompette I II :
% le \tag #'partscore devient \tag #'partScore \tag #'quoteTrombaI \tag #'quoteTrombaII {

SgMcVioloncelloI = {

  \include "Common/Properties.ly"

  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 1 2)
  \tag #'partScore
    \oneMMRNumberOn

  % partie I, commune

  \relative c' {

    \TempoIII

    r2 r4
    \override DynamicLineSpanner #'outside-staff-priority = #500
    \polyNeutral {
      \leftDynamic a4 \PPocoEspr ( b c cis2. )
    }
    {
      s128 \once \override DynamicText #'stencil = ##f s128 \p \< s64 s32 s16 s8 s4 s s \!
    }
    \revert DynamicText #'outside-staff-priority
    <<{d4 ( c bes! a2 d,4 )}{s2. \> s4 s \!}>>
    d ( g \< a ) bes!2 ( b4 ) \!
    c4 ( \> g e ) c2. \!

    \tag #'partScore {
      r8 \mf -\tweak #'minimum-length #9 \< f ( a c f-> \fz e ) d ( c \> bes a g f ) \!
    }
    \elseTag #'partScore {
      r8 \mf \< f ( a c f-> \fz e ) d ( c \> bes a g f ) \!
    }

    r d \< ( g bes e-> \fz d ) c ( bes \> a g f e ) \!
    r d ( \< f a d-> \fz c ) bes \> ( a g f e d ) \!
    <a e' cis'>2 \f \arpeggio r4 r2 r4
    R1 * 6/4

    \tag #'partScore
      \override DynamicLineSpanner #'staff-padding = #2

    \tag #'partScore {
      <<{a4 ( d2 ) a4 ( d2}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4
      -\tweak #'minimum-length #4 \> s4 \! s4 \< s4 -\tweak #'minimum-length #4 \> s \! }>>
    }
    \elseTag #'partScore {
      <<{a4 ( d2 ) a4 ( d2}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4 \> s4 \! s4 \< s4 \> s \!}>>
   }

    \tag #'partScore
      \dynamicLineSpannerStandard

    a4 ) \! r r r2 r4
    a2.-- \pp ( a-- )
    a2 r4 r bes'4 \pp ( g
    f e d ) cis ( bes g
    f e d ) cis8 ( a' \cresc bes a bes a )
    d-\parenthesize -> ([cis d cis]) f-\parenthesize -> ([e f e]) bes'-\parenthesize -> ([a bes a])
    R1 * 6/4
    d,,8 \mf ( a' f') d,-. a'-. f'-. d, ( a' f') d,-. a'-. f'-.
    d, ( a' f') d,-. a'-. f'-. d, \< ( a' f') d,-. a'-. f'-. \!
    g, ( d' bes' ) g,-. d'-. bes'-. g, \> ( d' bes' ) g,-. d'-. g-. \!
    c,, ( g' e' ) c,-. g'-. e'-. c, \< ( g' e' ) c-. e-. g-. \!
    \leftDynamic a2-> \PiuF a4.-> c8 bes4-. a-.
    g2-> \fz g4.-> bes8 a4-. g-.
    f2-> f8 f g g gis gis a a

    \mark \default  % Mark A

    d \mf e c d bes c a bes g gis a a,
    d' e c d bes c a bes g gis a a,
    d \ff e c d bes c a bes g! gis a a
    d e c d bes c a bes g! gis a a
    <<{d,1. ~}{s4 \fp \bindDynamics s s s -\tweak #'minimum-length #5 \> s s8 s \!}>>
    d1. \dim
    d ~
    d4 r r r2 r4
    d'\f  r \times 2/3 {a'8 _\markup {\italic "con forza"} ( gis a} bes4 ) a-. d,-.
    cis r \times 2/3 {a'8 ( gis a} bes4 ) a4-. cis,-.
    c!-. r \times 2/3 {a'8 ( gis a} bes4 ) a-. c,-.
    b2-> \ff c4-. b2-> bes4-.
    f2-> bes4-. f2-> bes4-.
    f'-. r ees-. r <g, ees' bes'>-. \arpeggio r
    <a e'! cis'>-. \arpeggio r <a f' d'>-. r <a e' cis'>-. r
    <a f' d'>-. r <a e' cis'>-. r2 r4
    R1 * 6/4 * 2
    d4 \p \Pizz f a d r a
    bes, \< d f d' \! r d
    g,, \fz \< d' g d' \! r g, \p
    c,, c' e c' r c
    a, \mf f' d d' r r
    g,, g' c, c' r r
    f,, f' bes, bes' g, gis

    \mark \default  % Mark A

    a8 \mf \Arco a' a a a4-. a,8 \p a' a a a4-.
    a,8 a' a4-. a,-. r2 r4
    a8 \p a' a a \> a4-. a,8 \! a' a a a4-. \!
    a,4 r r r2 r4
    a8 \pp a' a a a4 a,8 a' a a a4
    \textSpannerDown
    \override TextSpanner #'style = #'dashed-line
    \override TextSpanner #'(bound-details left text) = #"cresc."
    \override TextSpanner #'(bound-details right text) = #"molto"
    a,8 r e''4 ( d \startTextSpan cis bes! g )
    f ( \stopTextSpan e d cis bes g )
    f ( e d ) cis8 \f ( a' bes a bes a )
    d-> ([cis d cis] \< ) f-> ([e f e]) bes'-> ([a bes a]) \!
    R1 * 6/4

    \mark \default  % Mark A

    d,,8 \f ( a' ) f'-. a,-. f'-. a,-. d, ( a' ) f'-. a,-. f'-. a,-.
    d, ( a' ) f'-. a,-. f'-. a,-. d, ( a' ) f'-. a,-. f'-. a,-.
    g ( d' ) bes'-. d,-. bes'-. d,-. g,-. ( d' ) g-. d-. g-. g,-.
    c, ( g' e' ) g,-. e'-. g,-. c, ( g' e' ) c-. e-. c-.
    a'2-> \ff a4.-> c8 bes4-. a-.
    g2-> g4.-> bes8 a4-. g-.
    f2-> f8 f g g gis gis a a
    d e c d bes c a bes g gis a a
    d e c d bes c a bes g! gis a a
    \leftDynamic d, \FFconForza e c d bes c a bes g! gis a a'
    d, e c d bes c a bes g! gis a a'
    d,4 r r r2 r4

    \tag #'partScore
      \pageTurn  % pour améliorer la mise en page

    \times 2/3 {d8 \pp d d} r4 r r2 r4
    \times 2/3 {d8 d d} r4 r r2 r4
    \times 2/3 {d8 d d} r4 r r2 r4

    \mark \default  % Mark A

    d,8 \ff d e e f f g g a a bes bes
    a a b b c! c d d e e fis fis
    g g a a b b c c b b bes bes
    \tag #'partScore {
      f2:8 bes8 \fz bes f2:8 b8 \fz b
      fis2:8 b8 \fz b fis2:8 bis8 \fz bis
    }
    \elseTag #'partScore {
      f8 [f f f] bes \fz bes f [f f f] b \fz b
      fis [fis fis fis] b \fz b fis [fis fis fis] bis \fz bis
    }
    cis, \fz cis r4 d8 \fz d r4 dis8 \fz dis r4
    e8 \fz e r4 fis8 \fz fis r4 g8 \fz g r4
    gis8 gis r4 r gis8 gis r4 gis,8 gis
    g!4 r r r2 g'?4-.

    \tag #'partScore {
      fis2.:8 \ff f:
      e: a,:
    }
    \elseTag #'partScore {
      fis'8 \ff fis fis fis fis fis f f f f f f
      e e e e e e a, a a a a a
    }

    d,8 d bes' bes a a f' f d d a a
    bes' bes a a f f d d f' f d d

    \tag #'partScore
      \override DynamicLineSpanner #'staff-padding = #3.0

    d,,4-. \fz f-. a-. \fz bes-. d-. \fz f-.
    a-. \fz f-. d-. \fz bes-. a-. \fz f-.

    \tag #'partScore
      \dynamicLineSpannerStandard

    d r r d' r r
    \tag #'partScore {
      <<{d,1.}{s4 -\tweak #'minimum-length #10 \> s2 s s4 \!}>>
    }
    \elseTag #'partScore {
      <<{d1.}{s4 \> s2 s s4 \!}>>
    }

    % Les violoncelles se dédoublent - \break forcé
    \break
  }

  % partie II, séparée

  \relative c, {
    \bar "||"

    \tag #'partScore
      \set Staff.shortInstrumentName = "I"
    \elseTag #'partScore
      \set Staff.shortInstrumentName = \markup {\center-column {Vlc. I}}

    \TempoIIIMM

    \key g \major
    \set tupletSpannerDuration = #(ly:make-moment 1 2)

    \tag #'partScore {
      \times 4/6 {
        cis8 \pp ( d cis d cis d
      }
      \times 4/6 {
        \repeat tremolo 3 {cis8 d} \repeat tremolo 3 {cis8 d )}
      }
    }
    \elseTag #'partScore {
      \times 4/6 {
        cis8 \pp ([d cis d cis d] cis [d cis d cis d] cis [d cis d cis d])
      }
    }

    \tag #'partScore
      \set Staff.shortInstrumentName = ""

    \times 4/6 {
      \repeat tremolo 3 {cis8 ( d} \repeat tremolo 3 {cis8 d} \repeat tremolo 3 {cis8 d )}
    }
    \times 4/6 {
      \repeat tremolo 3 {cis8 \< ( d} \repeat tremolo 3 {cis8 d} \repeat tremolo 3 {cis8 d \! )}
    }

    d'2 \> r4 r r e4 \!
    e2 ( \pp d4 c!2 b4 )
    a2. ( \< c2 e4 ) \!
    e2. ( \> d2 c4 ) \!
    b4 \p \< ( d4. f8 ) f4 ( e4. dis8 \! )
    dis4 ( e4. g8 ) g4 ( \f fis? e )

    \tag #'partScore {
      <<{dis2. ( d )}{s4 -\tweak #'minimum-length #6 \dim s \> s4 s s s \!}>>
    }
    \elseTag #'partScore {
      <<{dis2. ( d )}{s4 \dim s \> s4 s s s \!}>>
    }

    e2. ( \p \dim c ) \!
    b2. ( \pp c )

    % Les violoncelles se rejoignent - \break forcé
    \break
  }

  % partie III, commune

  \relative c {
    \mark \default  % Mark A
    \tag #'partScore
      \set Staff.shortInstrumentName = \markup {\center-column {I+ II}}
    \elseTag #'partScore
      \set Staff.shortInstrumentName = \markup {\center-column {Vlc. I+ II}}

    d4 r cis,8 ( d ) r4 cis8 ( d ) r4

    \tag #'partScore
      \set Staff.shortInstrumentName = ""
    \elseTag #'partScore
      \set Staff.shortInstrumentName = "Vlc."

    b'8 ( c! ) r4 b8 ( c ) r4 b8 ( c ) r4
    fis,8 ( g ) r4 fis8 ( g ) r4 fis8 ( g ) r4
    b8 ( c ) r4 b8 ( c ) r4 b8 ( c ) r4

    \tag #'partScore {
      \set tupletSpannerDuration = #(ly:make-moment 6/4)
      \times 12/18 {
        \repeat tremolo 3 {ais8 \pp ( b} \repeat tremolo 3 {ais8 b} \repeat tremolo 3 {ais8 b )}
      }
      \times 12/18 {
        \repeat tremolo 3 {ais8 ( b} \repeat tremolo 3 {ais8 b} \repeat tremolo 3 {ais8 b )}
      }
      \times 12/18 {
        \repeat tremolo 3 {ais8 ( b} \repeat tremolo 3 {ais8 b} \repeat tremolo 3 {ais8 b )}
      }
    }
    \elseTag #'partScore {
      \set tupletSpannerDuration = #(ly:make-moment 1 2)
      \times 4/6 {
        \repeat tremolo 3 {ais8 \pp ( b} \repeat tremolo 3 {ais8 b} \repeat tremolo 3 {ais8 b )}
      }
      \tupletOff
      \times 4/6 {
        \repeat tremolo 3 {ais8 ( b} \repeat tremolo 3 {ais8 b} \repeat tremolo 3 {ais8 b )}
      }
      \times 4/6 {
        \repeat tremolo 3 {ais8 ( b} \repeat tremolo 3 {ais8 b} \repeat tremolo 3 {ais8 b )}
      }
    }

    \repeat tremolo 3 {e,8 \pp ( ais} \repeat tremolo 3 {e8 ais )}
    \repeat tremolo 3 {a!8 ( b} \repeat tremolo 3 {gis8 b )}
    \repeat tremolo 3 {fis8 ( b} \repeat tremolo 3 {fis8 c'! )}
    \repeat tremolo 3 {fis,8 ( c'} \repeat tremolo 3 {fis,8 b )}
    e,4 r r r2 r4
    R1 * 6/4
    e''4 \pp \Pizz e, e' e, e' e,
    e' e, e' e, ees' ees,
    d r r r2 r4
    R1 * 6/4
    d'4 \Pizz \pp d, d' d, d' d,
    d' d, d' d, d' d,
    c4 \Arco r r r2 r4
    bes r r r2 r4
    cis r r r2 r4
    d r r r2 r4

    \tag #'partScore {
      b'2. \pp \< ~ b4 b -. b-. \!
    }
    \elseTag #'partScore {
      b2. \pp \< ~ b4 b -\footnote \markup {"(17)"} #'(0 . 0.5)
      \markup {\italic "17 - Tenuto in place of dots according to N. Simrock 1885"}-. b-. \!
    }

    \mark \default  % Mark A

    c!2. \> ~ c4 \! fis8 \p ( d ) c4-.

    \tag #'partScore {
      <<{b1.}{s4 \pp -\tweak #'minimum-length #8 \< s s s s s8 s8 \!}>>
    }
    \elseTag #'partScore {
      <<{b1.}{s4 \pp \< s s s s s8 s8 \!}>>
    }

    c2. \> ~ c4 \! fis8 ( \p d ) c4-.
    cis-. r r r2 r4
    d,,8 \p d a' a d d fis fis a a d d
    e,4 r r r2 r4
    e,8 e e' e gis gis d' d e e e, e
    e,4 r r r2 r4
    e8 e e' e gis gis d' d e e e, e
    e'1.:16 \pp
    e:
    f:
    f2.: f4 r r

    % Les violoncelles se séparent - \break forcé
    \break
  }

  % partie IV, séparée

  \relative c {
    \tag #'partScore
      \set Staff.shortInstrumentName = "I"
    \elseTag #'partScore
      \set Staff.shortInstrumentName = \markup {\center-column {Vlc. I}}

    <<{e4 ( bes'4. d8 ) d4 ( g, bes ) \!}{\leftDynamic s4 \Pespress s s s \< s s \!}>>

    \tag #'partScore
      \set Staff.shortInstrumentName = ""

    <<{bes2. ( a2 g4 )}{s4 s4 s4 \< s s s \!}>>
    fis!4 ( \< c'4. ees8 ) ees4 ( d4. cis8 ) \!
    cis4 \f ( d f ~ f ) e? ( d )
    <<{cis2. ( c ) ~}{s2. \fz s4 \dim s s \!}>>
    c2 \p ( b4 \dim bes2. )
    a2. \pp ( c2 bes4 )

    \mark \default  % Mark A

    <<{a2 ( c4 f a2 )}{s4 s2 \< s2 s4 \!}>>
    <<{aes1.}{s4 s2 \> s s8 s \!}>>
    \clef alto
    <<{a!2 ( c4 ~ c ) a4. ( f8 )}{s4 \p \< s s s \!}>>
    <<{d'4 ( c4. bes8 ) bes4 ( aes2}{s4 \> s s s \!}>>
    a!4 ) r \clef bass a,,8 \mp ([d fis! a]) a, ([d fis a])

    % Les violoncelles se rejoignent - \break forcé
    \break
  }

  % partie V, commune

  \relative c {

    \tag #'partScore
      \set Staff.shortInstrumentName = \markup {\center-column {I+ II}}
    \elseTag #'partScore
      \set Staff.shortInstrumentName = \markup {\center-column {Vlc. I+ II}}

    a8 ([d fis a]) a,8([d fis a]) a,8 ([d fis a])

    \tag #'partScore
      \set Staff.shortInstrumentName = ""
    \elseTag #'partScore
      \set Staff.shortInstrumentName = "Vlc."

    a,8 \pp ([d f a]) a,8([d f a]) a,8 ([d f a])
    a,8 ([d f a]) a,8([d f a]) a,8 ([d f a])
    bes2 ( a4 f2 d4 )
    bes2 ( a4 f2 d4 )

    \TempoIIIAcc

    bes''4 ( a f d ) bes' ( a
    f \< d ) bes'-> ( a f <<{d )}{s8 s \!}>>
    bes'4-> \mf  ( a f d \cresc ) bes'-> ( a
    f d ) bes'-> ( a f d )

    \TempoIIIViv

    a4 \ff r r r2 r4
    R1 * 6/4
    <a f'>1.-^ \ff ~
    q

    \mark \default  % Mark A

    a''4-. _\markup {\italic "con forza"}r g-. r8 fis! f4-. e-.
    ees r8 d8-. cis4-. r8 c b!4-. bes-.
    a4 \ff r a, r8 a a4-. a-.
    a' r a, r8 a a4-. a-.
    a' r r r2 r4
    R1 * 6/4 * 2

    \bar "||"

    \key d \minor

    a4 \pp ( b! _\markup {\italic "[poco espress.]"} c cis2. )
    d4 ( a f d2. )
    d4 ( \< g a bes!2 b4 ) \!
    c \p \> ( g e c2. ) \!
    f'2. \fz \startTrillSpan d4 \stopTrillSpan \cresc ( e f )
    f e2 \fz \startTrillSpan c4 \stopTrillSpan ( d e )
    <<{e d2 ~ d2.}{s4 s4 \< \startTrillSpan s s s s8 \! s8 \stopTrillSpan}>>
    <a, e' cis'>2 \f \arpeggio r4 r2 r4
    R1 * 6/4

    \tag #'partScore {
      <<{a4 ( d2 ) a4 ( d2}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4
      -\tweak #'minimum-length #4 \> s4 \! s4 \< s4 -\tweak #'minimum-length #4 \> s \! }>>
    }
    \elseTag #'partScore {
      <<{a4 ( d2 ) a4 ( d2}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4 \> s4 \! s4 \< s4 \> s \!}>>
    }

    a4 ) r r r2 r4
    a2.-- \pp ( a-- )
    a2 r4 r bes'4 \pp ( g
    f e d ) cis ( bes g
    f e d ) cis8 ( a' \cresc bes a bes a )
    d-> ([cis d cis]) f-> \cresc ([e f e]) bes'-> ([a bes a]) \!
    R1 * 6/4

    \mark \default  % Mark A

    d,,8 \mf ( a' f' ) d,-. a'-. f'-. d, ( a' f' ) d,-. a'-. f'-.
    d, ( a' f' ) d,-. a'-. f'-. d, \< ( a' f' ) d,-. a'-. f'-. \!
    g, ( d' bes' ) g,-. d'-. bes'-. g, \> ( d' bes' ) g,-. d'-. g-. \!
    c,, ( g' e' ) c,-. g'-. e'-. c, \< ( g' e' ) c-. e-. g-. \!
    \leftDynamic a2-> \PiuF a4.-> c8 bes4-. a-.
    g2-> \fz g4.-> bes8 a4-. g-.
    f2-> f8 f g g gis gis a a
    d \mf e c d bes c a bes g gis a a,
    d' e c d bes \bracketedCresc c \! a bes g! gis a a,
    d \ff e c d bes c a bes g! gis a a
    d e c d bes c a bes g! gis a a
    d4-. a-. d-. a-. d-. a-.
    d-. a-. d-. \dim a-. d-. a-.
    d-. \mp a-. d-. \dim a-. d-. a-.
    d-. a-. d-. a-. d-. a-.
    d \p r r g, \Pizz r r
    r2 r4 f r r
    r2 r4 g \ppp r r
    a r r r2 r4

    \mark \default  % Mark A

    d \Arco \< a d a d a
    d a d a d a \!
    d \f r r r2 r4
    R1 * 6/4

    \tag #'partScore
      \pageTurn  % pour améliorer la mise en page

    r4 a' \p ( bes c2 \dim c,4 )
    d2 r4 g,2 ^\markup{\italic ten.} r4
    r2 r4 f2 \dim r4
    r2 r4 e2 \pp r4
    r2 r4 <a g'>2 \dim r4
    \leftDynamic d2. \pp ( des ~
    des c )
    b1. \ppp (
    bes )
    a ~
    a4 r r r2 r4
    <e' des'>1. \pp
    \poly {
      bes'2. ( \< c2 des4 ) \!
      <<{des1. ~}{
        \tag #'partScore {\rightDynamic s4 \f \>}
        \elseTag #'partScore {s4 \f \>}
        s s s s s \!}>>

      \TempoIIIPPrB

      des2. \> d ~

      \tag #'partScore
        \noBreak

      <<{d1. ~}{s4 \! s s s \p}>>
      <<{d1.}{s2. \> s2 s4 \!}>>
      bes!1. \dim
      a ( \pp
      <<{cis )}{s4 \> s s s s s \!}>>
    }
    {
      e,1. bes' ~
      bes2. b ~
      b gis (
      a1. )
      d,
      d (
      g )
    }

    \TempoIIIiT

    <f d'>8 \p r d,-. e-. e-. f-. f-. g-. g-. a-. a-. bes-.
    d d, \<  d e e f f g g a a bes \!
    d \mf \< d, d e e f f g g a a bes \!
    d d, \< d e e f f g g a a bes \!

    \mark \default  % Mark A

    d \ff d, d e e f f g g a a bes
    bes a a b b c c d d e e fis
    fis g g a a b b c c b b bes
    e, \ff ( f! e f ces' bes ) e, ( f e f c' b )
    eis, ( fis eis fis c'! b ) eis, ( fis eis fis cis' bis )
    bis, \f ( cis ) r4 cis8 ( d ) r4 d8 ( dis ) r4
    dis8 ( e ) r4 eis8 ( fis ) r4 fis8 ( g! ) r4
    gis-. r r gis'8 gis r4 gis,8 gis
    g!4 r r r2 g4-.

    \tag #'partScore {
      fis2.:8 \fff
    }
    \elseTag #'partScore {
      fis8 \fff fis fis fis fis fis
    }

    f2.:8
    e: a:
    d,4-. \ff bes'!-. a-. f'-> d-. a-.
    bes-. a-. f-. d-. f'-> d-.
    d, \fz f-. a \fz bes-. d \fz f-.
    a \fz f-. d \fz bes-. a \fz f-.
    <d a'>4-. r q-. r8 q q4-. q-.
    q r r <d a' f'>4 r r
    <d, a' f'>4 r r r2 r4

    \bar "|."
  }
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcVioloncelloI = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 "Violoncelli"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "Vlc."
  \set Staff.midiInstrument = "string ensemble 1"
  \clef bass
  \SgMcVioloncelloI
}

quoteScoreSgMcVioloncello = \SgMcVioloncelloI
