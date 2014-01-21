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
  * Fichier de notes, Contrebasse                                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMcContrabasso =
\relative c {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 1 2)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIII

  \transposition c
  r2 r4
  d4 \p \Pizz r r d r r
  d4 \< r r d r r \!
  g,4 r r g \dim r r
  c4 \p \< r r c r r \!

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #1.5

  a2-. \mf \Arco d1 \fz
  g,2-. c1 \fz
  f,2-. bes \fz g4-. gis-.
  a2 \f r4 r2 r4

  \elseTag #'partScore
    \dynamicLineSpannerStandard

  R1 * 6/4 * 3
  a4 \pp \Pizz a' r a, a' r
  a,4 r r r2 r4
  r2 r4 r bes2 \ppp ( \Arco ~
  bes2. a4 ) r r
  R1 * 6/4 * 2
  d4 \mf \Pizz r r d' r r

  \tag #'partScore {
    d,4 r <<{r}{s8 s -\tweak #'minimum-length #5.5 \<}>> d'4 r \!  r
    g,,4 r r g' -\tweak #'minimum-length #5.5 \> r \! r
    c,4 r r -\tweak #'minimum-length #5.5 \< c' r \! r
  }
  \elseTag #'partScore {
    d,4 r <<{r}{s8 s \<}>> d'4 r \!  r
    g,,4 r r g' \> r \! r
    c,4 r r \< c' r \! r
  }

  a4 \PiuF \Arco a,d' d, d' r
  g,4 g, c' c, c' r
  f,4 f, bes' g gis a

  \mark \default  % Mark A

  d,4 r r r2 a4-. \mf
  d4-. r r r2 a4-.
  d8 \ff e c d bes c a bes g! gis a a
  d8 e c d bes c a bes g gis a a
  
  \tag #'partScore {
    <<{d1. ~}{s4 \fp \bindDynamics s s s -\tweak #'minimum-length #8 \> s s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{d1. ~}{s4 \fp \bindDynamics s s s \> s s8 s \!}>>
  }
  d1. \dim
  d1. ~
  d4 r r r2 r4
  d1.-> \fz
  d1.-> \fz
  d1.-> \fz
  d2-> \ff d4-. d2-> d4-.
  f,2-> bes4-. f2-> bes4-.
  f'4-. r ees-. r g,-. r
  a4-. r d-. r a-. r
  d4-. r a-. r2 r4
  R1 * 6/4 * 2
  d4 \p \Pizz r r d' r r
  bes,4 r r f r r
  g4 \fz r r g' r r
  c,4 r r c' r r
  a,4 \mf r d r2 r4
  g,4 r c r2 r4
  f,4 r bes r g gis

  \mark \default  % Mark A

  a4 \mf a' r a, \p a' r
  a,4 a' r r2 r4
  a,4 \p <<{r}{s8 s \>}>> d4 a r \! d
  a4 r r r2 r4
  a4-. \pp \Arco r a'-. a,-. r a'-.
  a,4-. r r r2 r4
  r2 r4 r bes' \mf \< ( g )
  f4 ( e d ) \! cis8 \bracketedF r r4 r
  R1 * 6/4 * 2

  \tag #'partScore
    \pageTurn  % pour améliorer la mise en page

  \mark \default  % Mark A

  d4 \ff r r d' r r
  d,4 r r d' r r
  g,,4 r r g' r r
  c,4 r r c'2 bes4
  a4-. a,-. d'-. d,-. d'-. r
  g,4-. g,-. c'-. c,-. c'-. r
  f,4-. f,-. bes'-. g-. gis-. a-.
  d,4-. r r r2 a4-.
  d4-. r r r2 a4-.
  \leftDynamic d8 \FFconForza e c d bes c a bes g! gis a a'
  d,8 e c d bes c a bes g! gis a a'
  d,4 r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  \leftDynamic d4-> \FFconForza e-. f-. g-> a-. bes-.
  a4-> b-. c!-. d-> e-. fis-.
  g4-. r r r2 r4
  r2 r4 r2 b,4-. \ff fis2 b4 \fz fis2 bis4 \fz
  cis,8 \fz cis r4 d8 \fz d r4 dis8 \fz dis r4
  e8 \fz e r4 fis8 \fz fis r4 g8 \fz g r4
  gis8 gis r4 r gis'8 gis r4 gis,8 gis
  g!4 r r r2 g4-.
  fis8 \ff fis fis fis fis fis f f f f f f
  e8 e e e e e a a a a a a
  d,4-. bes'-. a-. f'-. d-. a-.
  bes4-. a-. f-. d-. f'-. d-.
  d,4-. \fz f-. a-. \fz bes-. d-. \fz f-.
  a4-. \fz f-. d-. \fz bes-. a-. \fz f-.
  d4 r r d' r r

  \tag #'partScore {
    <<{d,1.}{s4 -\tweak #'minimum-length #10 \> s2 s s4 \!}>>
  }
  \elseTag #'partScore {
    <<{d1.}{s4 \> s2 s s4 \!}>>
  }

  \bar "||"

  \TempoIIIMM

  \key g \major
  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  \times 4/6 {
    cis8[ \ppp ( d cis d cis d] cis[ d cis d cis d] cis[ d cis d cis d] )
    \repeat tremolo 3 {cis8 ( d} \repeat tremolo 3 {cis d} \repeat tremolo 3 {cis d )}
    \repeat tremolo 3 {cis8 \< ( d} \repeat tremolo 3 {cis d} \repeat tremolo 3 {cis d ) \bindDynamics }
    \repeat tremolo 3 {cis8 \> ( d} \repeat tremolo 3 {cis d} \repeat tremolo 3 {cis d \! )}
    \repeat tremolo 3 {cis8 \pp ( d} \repeat tremolo 3 {cis d} \repeat tremolo 3 {cis d )}
    \repeat tremolo 3 {cis8 \< ( d} \repeat tremolo 3 {cis d} \repeat tremolo 3 {cis d \! )}
    \repeat tremolo 3 {cis8 \> ( d} \repeat tremolo 3 {cis d} \repeat tremolo 3 {cis d \! )}
    \repeat tremolo 3 {ais8 \p \< ( b} \repeat tremolo 3 {ais b} \repeat tremolo 3 {ais b \! )}
  }
  \set tupletSpannerDuration = #(ly:make-moment 3 4)
  \times 6/9 {b8 ( c b c b c b c b )}
  \times 6/8 {gis8 \f ( a? gis a gis a gis a )}
  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  \times 4/6 {
    \repeat tremolo 3 {ais8 \fz \> ( b} \repeat tremolo 3 {ais b} \repeat tremolo 3 {ais b \! )}
    \repeat tremolo 3 {gis8 \p \dim ( a! \!} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a \! )}
  }

  \set tupletSpannerDuration = #(ly:make-moment 3 4)
  \times 6/9 {e'8 \pp ( dis e dis e dis e dis e )}
  \times 6/9 {c8 ( b c b c b c b c )}
  \mark \default  % Mark A
  d4 r cis8 ( d ) r4 cis8 ( d ) r4
  b8 ( c! ) r4 b8 ( c ) r4 b8 ( c ) r4
  fis,8 ( g ) r4 fis8 ( g ) r4 fis8 ( g ) r4
  b8 ( c ) r4 b8 ( c ) r4 b8 ( c ) r4
  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  \times 4/6 {
    \repeat tremolo 3 {ais8 \pp ( b} \repeat tremolo 3 {ais b} \repeat tremolo 3 {ais b )}
    \tupletOff
    \repeat tremolo 3 {ais8 ( b} \repeat tremolo 3 {ais b} \repeat tremolo 3 {ais b )}
    \repeat tremolo 3 {ais8 ( b} \repeat tremolo 3 {ais b} \repeat tremolo 3 {ais b )}
    \tupletOn
    \repeat tremolo 3 {ais8 \pp ( b} \repeat tremolo 3 {ais b} \repeat tremolo 3 {ais b )}
    \repeat tremolo 3 {ais8 ( b} \repeat tremolo 3 {ais b} \repeat tremolo 3 {ais b )}
    \tupletOff
    \repeat tremolo 3 {ais8 ( b} \repeat tremolo 3 {ais b} \repeat tremolo 3 {ais b )}
    \repeat tremolo 3 {ais8 ( b} \repeat tremolo 3 {ais b} \repeat tremolo 3 {ais b )}
  }
  e4 r r r2 r4
  R1 * 6/4 * 7
  c4 \pp r r r2 r4
  bes4 r r r2 r4
  cis4 r r r2 r4
  d4 r r r2 r4
  R1 * 6/4

  \mark \default  % Mark A

  R1 * 6/4 * 3
  cis4 \bracketedP r r r2 r4
  d4 r r r2 r4
  e4 r r r2 e4
  e4 r r r2 e4
  e4 \bracketedPP r r r2 e4
  e4 r r r2 e4
  e4 r r r2 r4
  R1 * 6/4 * 3

  \tag #'partScore
    \pageTurn  % pour améliorer la mise en page

  \tupletOn
  \times 4/6 {
    \repeat tremolo 3 {b!8 \pp ( c} \repeat tremolo 3 {b c} \repeat tremolo 3 {b c )}
    \repeat tremolo 3 {b8 ( c} \repeat tremolo 3 {b c} \repeat tremolo 3 {b c )}
    \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis \cresc a} \repeat tremolo 3 {gis a ) \!}
  }
  \set tupletSpannerDuration = #(ly:make-moment 3 4)
  \times 6/8 {a8 \f ( b a b a b a b ) fis!( g? fis g fis g fis g )}
  \set tupletSpannerDuration = #(ly:make-moment 1 2)

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.4

  \times 4/6 {
    \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis \dim a} \repeat tremolo 3 {gis a )}
    \repeat tremolo 3 {fis!8 \p ( g!} \repeat tremolo 3 {fis \dim g} \repeat tremolo 3 {fis g )}
  }
  \set tupletSpannerDuration = #(ly:make-moment 3 4)
  \times 6/8 {cis8 \pp ( d cis d cis d cis d ) a ( bes! a bes a bes a bes )}

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default  % Mark A

  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  <<{\times 4/6 {\repeat tremolo 3 {b8 ( c} \repeat tremolo 3 {b c} \repeat tremolo 3 {b c ) }}}{s4 s2 \< s s4 \!}>>
  \times 4/6 {
    \repeat tremolo 3 {a8 ( bes \>} \repeat tremolo 3 {a bes} \repeat tremolo 3 {a bes ) \!}
    \repeat tremolo 3 {e,8 \pp ( f} \repeat tremolo 3 {e f} \repeat tremolo 3 {e f ) \!}
    \repeat tremolo 3 {a ( bes} \repeat tremolo 3 {a bes} \repeat tremolo 3 {a bes )}
  }

  \tag #'partScore {
    <<{
      \times 4/6 {
        \repeat tremolo 3 {gis8 \mp ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
        \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
        \repeat tremolo 3 {gis8 \pp ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
        \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
        \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
        \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}

        \TempoIIIAcc

        \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
        \repeat tremolo 3 {gis8 \< ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a ) \!}
        \repeat tremolo 3 {gis8 \mf ( a} \repeat tremolo 3 {gis \cresc a}
        <<{\repeat tremolo 3 {gis8 a )}}{s4 s s8 s \!}>>
        \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a ) \!}
      }
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeat #'transparent = ##t
        \override PercentRepeatCounter #'staff-padding = #1
        \repeat percent 10 {s1.}
    }>>
  }
  \elseTag #'partScore {
    \times 4/6 {
      \repeat tremolo 3 {gis8 \mp ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
      \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
      \repeat tremolo 3 {gis8 \pp ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
      \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
      \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
      \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}

      \TempoIIIAcc

      \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a )}
      \repeat tremolo 3 {gis8 \< ( a} \repeat tremolo 3 {gis a} <<{\repeat tremolo 3 {gis a )}}{s4 s s8 s \!}>>
      \repeat tremolo 3 {gis8 \mf ( a} \repeat tremolo 3 {gis a \cresc} \repeat tremolo 3 {gis a )}
      \repeat tremolo 3 {gis8 ( a} \repeat tremolo 3 {gis a} \repeat tremolo 3 {gis a ) \!}
    }
  }

  \TempoIIIViv

  a4 \f r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  \leftDynamic a''4-. \FFconForza r g-. r8 fis! f4-. e-.
  ees4-. r8 d-. cis4-. r8 c b!4-. bes-.
  a4 \ff r a, r8 a a4-. a-.
  a'4 r a, r8 a a4-. a-.
  a'4 r r r2 r4
  R1 * 6/4 * 2

  \bar "||"

  \key d \minor
  d,4 \pp \Pizz r r d r r
  
  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #2.6
    d4 r r d -\tweak #'minimum-length #5.5 \< r \! r
    g,4 \fz r r g -\tweak #'minimum-length #5.5 \> r \! r
  }
  \elseTag #'partScore {
    d'4 r r d \< r \! r
    g,4 \fz r r g \> r \! r
  }

  c4 \p r r c r r
  a2-. \mf \Arco d1 \fz \cresc
  g,2-. c1 \fz
  f,2-. bes-. \<  g4-. gis-. \!
  a2 \f r4 r2 r4

  \tag #'partScore
    \dynamicLineSpannerStandard

  R1 * 6/4 * 3
  a4 \pp \Pizz
  a'4 r a, a' r
  a,4 r r r2 r4
  r2 r4 r bes2 \ppp \Arco ~
  bes2. ( a4 ) r r
  R1 * 6/4 * 2

  \mark \default  % Mark A

  d4 \Pizz \mf r r d' r r
  
  \tag #'partScore {
    d,4 r r -\tweak #'minimum-length #5.5 \< d' r \! r
    g,,4 r r g' -\tweak #'minimum-length #5.5 \> r \! r
    c,4  r r c' -\tweak #'minimum-length #5.5 \< r \!  r
  }
  \elseTag #'partScore {
    d,4 r r \< d' r \! r
    g,,4 r r g' \> r \! r
    c,4  r r c' \< r \!  r
  }

  \leftDynamic a4 \Arco \PiuF a, d' d, d' r
  g,4 g, c' c, c' r
  f,4 f, bes' g gis a
  d,4 r r r2 a4-. \mf
  d4-. r r r2 a4-.
  d8 \ff e c d bes c a bes g! gis a a
  d8 e c d bes c a bes g gis a a
  d4-. a-. d-. a-. d-. a-.
  d4-. a-. d-. \dim a-. d-. a-.
  
  \tag #'partScore {
    <<{d1. -\tweak #'minimum-length #11.5 ~}{s4 \mp \bindDynamics s s \dim}>>
  }
  \elseTag #'partScore {
    <<{d1. ~}{s4 \mp \bindDynamics s s \dim}>>
  }

  d1.
  d4 \p r r g, \Pizz r r
  r2 r4 f r r
  r2 r4 g \ppp r r
  a4 r r r2 r4

  \mark \default  % Mark A

  d4 \< a d a d a
  d4 a d a d a \!
  d4 \f r r r2 r4
  R1 * 6/4 * 12
  g1. \pp
  <<{ges1.}{s4 \< s s s s s \!}>>

  \tag #'partScore {
    <<{f1. ~}{s4 \f -\tweak #'minimum-length #10 \> s s s s s \!}>>

    \TempoIIIPPrB

    f1. -\tweak #'minimum-length #15 \>
    \noBreak
  }
  \elseTag #'partScore {
    <<{f1. ~}{s4 \f \> s s s s s \!}>>

    \TempoIIIPPr

    f1. \>
  }

  e1. \!

  \tag #'partScore {
    <<{f1.}{s4 \p -\tweak #'minimum-length #8 \> s s s s s \!}>>
  }
  \elseTag #'partScore {
    <<{f1.}{s4 \p \> s s s s s \!}>>
  }

  g2. \dim ( gis )
  a1. \pp
  \tag #'partScore {
    <<{a,1.}{s4 -\tweak #'minimum-length #8 \> s s s s s \!}>>
  }
  \elseTag #'partScore {
    <<{a1.}{s4 \> s s s s s \!}>>
  }

  \TempoIIIiT

  d4-. \p e-. f-. g!-. a-. bes-.
  <<{d,4-.  e-. f-. g-. a-. bes-.}{s8 s \< s4 s s s s8 s \!}>>
  <<{d,4-. e-. f-. g-. a-. bes-.}{s \mf \< s s s s s8 s \!}>>
  d,4-. \< e-. f-. g-. a-. bes-. \!

  \mark \default  % Mark A

  d,4-. \ff e-. f-. g-. a-. bes-.
  a4-. \< b-. c!-. d-. e-. fis-. \!
  g4 r r r2 r4
  r2 r4 r r b,-. \ff
  fis4-. fis-. b-. fis-. fis-. bis-.
  bis,8 \f ( cis ) r4 cis8 ( d ) r4 d8 ( dis ) r4
  dis8 ( e ) r4 eis8 ( fis ) r4 fis8 ( g! ) r4
  gis4-. r r gis'8 gis r4 gis,8 gis
  g!4 r r r2 g4-.
  fis8 \fff fis fis fis fis fis f2.:8
  e2.: a:
  d,4-. \ff bes'!-. a-. f'-> d-. a-.
  bes4-. a-. f-. d-. f'-> d-.
  d,4 \fz f-. a \fz bes-. d \fz f-.
  a4 \fz f-. d \fz bes-. a \fz f-.
  d4-. r d-. r8 d-. d4-. d-.
  d4 r r d' r r d, r r r2 r4
  \bar "|."
}

voiceSgMcContrabasso = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 "Contrabassi"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "Cb."
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef bass
  \SgMcContrabasso
}

quoteScoreSgMcContrabasso = \SgMcContrabasso
