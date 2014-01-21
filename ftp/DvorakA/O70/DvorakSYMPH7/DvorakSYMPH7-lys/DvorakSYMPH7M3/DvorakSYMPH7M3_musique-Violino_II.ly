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
  * Fichier de notes, Violons II                                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Fichier cité par les violons I :
% le \tag #'partscore devient \tag #'partScore \tag #'quoteViolinoI {

SgMcViolinoII =
\relative c'' {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 2 2)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIII

  r8 f8-. \p f4-. ( f-. )
  f-. ( r f-. ) r8 f8 \< f4-. ( e-. ) \!
  d-. ( \fp \> r d-. ) \! r8 d \< e4-. ( f-. ) \!
  g-. ( \fz r g-. ) r8 g \> g4-. ( f-. ) \!
  e-. ( \p r e-. ) r8 e \< f4-. ( g-. ) \!
  f \mf ( c ) c ( f,4. ) f'8 ( e f )
  f4 \fz ( bes, ) bes ( e,4. ) e'8 ( d e )
  e4 \fz ( a, ) a ( d,4. ) d'8 ( c b )
  <e, cis'>2 \f r4 r2 r4
  R1.

  \tag #'partScore {
    <<{e4 ( f2 ) e4 ( f2 ) (}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4
      -\tweak #'minimum-length #4 \> s4 \! s4 \< s4 -\tweak #'minimum-length #4 \> s \! }>>
  }
  \elseTag #'partScore {
    <<{e4 ( f2 ) e4 ( f2 ) (}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4 \> s4 \! s4 \< s4 \> s \! }>>
  }

  e4 ) r r r2 r4
  cis2.-- \pp ( c-- )
  cis4 ( e d cis bes g )
  R1. * 3

  % 2 lignes de nuances dynamiques
  \polyNeutral {
    d'8 \fz ([cis d cis]) f \fz ([e f e]) bes' \fz ([a bes a])
  }
  {
    \once \override DynamicText #'stencil = ##f
    s2 \fz s2 \< s4 s8 s8 \!
  }
  a2 -\tweak #'extra-offset #'(0 . 1) _\markup {\italic [espress.]} \mf a \< ( b4 cis ) \!
  d2 ( a4 f2 \< d4 \! )
  d4 ( g a bes2 \dim b4 ) \!
  c2 ( g4 \< e2 c4 ) \!
  <<{f'2. \PiuF d4 ( e f )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{e2. \fz c4 ( d e )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{d2. d2 cis4-.}{s2 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>

  \mark \default  % Mark A

  d4 r r r2 a'4-.\mf
  d,-. r r r2 a'4-.
  d \ff r d r8 d d4-. cis-.
  d r d r8 d d4-. cis-.
  d r \times 2/3 {a8 ( gis a} bes4-. ) \> a-. d,-. \!
  cis-. r r r2 r4
  r2 \times 2/3 {g'8 \pp ( fis g} a4-. ) g-. d-.

  \tag #'conductorScore \tag #'pocketScore {
    \override TextSpanner #'font-shape = #'upright
    \override TextSpanner #'style = #'dashed-line
    \override TextSpanner #'dash-period = #0
    \override TextSpanner #'bound-details =
      #`((left (text . ,#{ \markup {"[ " \raise #0.6 \musicglyph #"scripts.sforzato"} #})
      (Y . 0)
      (padding . 0)
      (attach-dir . 0))
      (right (text . ,#{ \markup\concat {\raise #0.6 \musicglyph #"scripts.sforzato" "]"} #})
      (Y . 0)
      (padding . 0)
      (attach-dir . 0)))
    \override Score.FootnoteItem #'annotation-line = ##f
    \footnote \markup {"14"} #'(0.5 . 3.8) \markup {\italic "14 - According to N. Simrock 1885"}
    g4 ( -\tweak #'extra-offset #'(0 -1)
      \startTextSpan f! ) f -\tweak #'extra-offset #'(0 . 2)-> ( ees ) d (  cis ) \stopTextSpan
    \revert TextSpanner #'font-shape
    \revert TextSpanner #'style
    \revert TextSpanner #'dash-period
    \revert TextSpanner #'bound-details
  }
  \elseTag #'conductorScore \elseTag #'pocketScore {
    g'-\parenthesize-> ( f! ) f-\parenthesize-> ( ees ) d-\parenthesize-> ( cis )
  }

  <<{d1.}{s4 \fp \bindDynamics s s8 s \< s4 s s8 s \!}>>
  <<{e1.}{s4 \fp \bindDynamics s s s \< s s8 s \!}>>

  \tag #'partScore {
    <<{fis1.}{s4 \fp s s s \< s s8 \once \override DynamicText #'self-alignment-X = #-1.3 s \ff
      -\tweak #'stencil ##f -\tweak #'minimum-length #3 \<}>>
    \once \override DynamicText #'self-alignment-X = #-0.5 a4-> \fz g!4 fis a-> \fz g gis
  }
  \elseTag #'partScore {
    <<{fis1.}{s4 \fp s s s \< s s8 \once \override DynamicText #'self-alignment-X = #-1.3 s \ff}>>
    \once \override DynamicText #'self-alignment-X = #-0.5 a4-> \fz g!4 fis a-> \fz g gis
  }
  
  bes!4-> \fz a gis bes-> \fz a gis
  bes-> \fz a g-> \fz f ees-> \fz d
  cis \fz a f' \fz d cis \fz a
  a' \fz a, a' \fz a, a' \fz a,
  a' \fz a, \dim a' a, a' \p a,
  a' a, a' \> a, a' a, \!
  d,8 \p ([e d e] f [g f g] a [b c cis])
  d ([cis d e] f [e d a] g [f e d])
  d ( \< [g fis g] a [bes \bindDynamics a \> bes] cis [d g f!]) \!
  e \p ([d e d] c! \> [b c d] c [bes a g]) \!
  r \rightDynamic f \mf \< ( a c f e \bindDynamics d \> c bes a g f \! )
  r bes, ( \< g' bes e d \bindDynamics c \> bes a g f e \! )
  r a, ( \< f' a d c \bindDynamics bes \> a g f e d \! )

  \mark \default  % Mark A

  cis \mf cis' cis <b d> q4-. r8 cis-. \p cis-. <b d>-. q4-.
  r8 cis a'4-. a,-. r2 r4
  r8 e \p e f \> f4-. r8 \! e e f \! f4-.
  r8 e-. a4-.a,-. r2 r4
  r8 e' \pp e e e4 r8 f f f f4
  \textSpannerDown
  \override TextSpanner #'style = #'dashed-line
  \override TextSpanner #'(bound-details left text) = #"cresc."
  \override TextSpanner #'(bound-details right text) = #"molto"
  e8 r e'4 ( d \startTextSpan cis bes! g ) \!
  f (  \stopTextSpan e d cis bes' g )
  f ( e d ) cis8 \f ( a' bes a bes a )
  d-> ([cis d cis] \< ) f-> ([e f e]) bes'-> ([a bes a]) \!
  \once \override Hairpin #'rotation = #'(3 -1 0) d,, \ff \< ( cis f e bes' a ) d ( cis f e bes'-> a ) \!

  \mark \default  % Mark A

  <a f'>4-. \ff r q-. r8 q q4-. <g e'>-.
  <f d'>-. r q-. r8 q <g e'>4-. <a f'>-.
  <bes g'>-. r q-. r8 q q4-. <a f'>-.
  <g e'>-. r q-. r8 q <a f'>4 <bes g'>
  c2-> \fz f,4.-> \fz f8 g4-. ( a-. )
  bes2-> \fz e,4.-> \fz e8 f4-. ( g-.)
  a2-> \fz d,4.-> <f d'>8 q4-. <e cis'>-.
  <f d'> r f r8 f f4-. e-.
  <f d'> r f r8 f f4-. e-.
  d' \ff r d r8 d d4-. cis-. d r d r8 d d4-. cis-.
  d r r r2 r4
  r r \times 2/3 {a,8 \p \< ( gis a} bes4 ) a-. c,!-. \!
  b->-. r r r2 r4
  R1.

  \mark \default  % Mark A

  d'4 \ff r \times 2/3 {a'8 ( gis a} bes4-. ) a-. d,-.
  cis-. r \times 2/3 {a'8 ( gis a} bes4-. ) a-. c,!-.
  b-. r \times 2/3 {g'8 ( fis g} a4-. ) g-. gis-. \fz
  bes!-. a-. gis-. \fz bes-. a-. gis-. \fz
  b-. a-. gis-. \fz b-. a-. fis-. \fz
  d' \fz cis b \fz a gis \fz fis
  e \fz dis d \fz cis b \fz a
  <gis cis e> r r <gis cis>8 q r4 q8 q
  <e cis' a'>4 \arpeggio \once \override Hairpin #'rotation = #'(3 -1.6 0) a8-> \< ( b cis d e fis g! a b cis ) \!
  <d, d'>2.:16 \ff q:
  q: <e cis'>:
  <d d'>4 r \times 2/3 {a'8 ( gis a} bes!4 ) a-. f-.
  d r \times 2/3 {a'8 ( gis a} bes4 ) a-. f-.

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.5

  bes-. \fz a-. f-. \fz d-. bes-. \fz a-.
  f-. \fz d-. f-. \fz bes-. d-. \fz f-.
  f' r r <d,, d' d'> r r

  \tag #'partScore {
    <<{d1.}{s4 -\tweak #'minimum-length #10 \> s2 s s4 \!}>>
  }
  \elseTag #'partScore {
    <<{d1.}{s4 \> s2 s s4 \!}>>
  }

  \bar "||"

  \TempoIIIMM

  \key g \major

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.8

  c2. \pp ( ~ c2 e4 )
  e2. ( d2 c4 )
  b2. ( \< ~ b2 c4 )
  <<{c2 ( b4 d2 c4 )}{s2. \> s2 s4 \!}>>
  c2 \pp ( b4 a2 g4 )
  <<{r c4. ^\markup {\italic "4.Corda"}( e8 ) e4 ( a,4. c8 )}{s4 s2 \< s2 s8 s8 \!}>>
  <<{c2. ( b2 a4 )}{s2. \> s2 s4 \!}>>
  <<{gis4 ( d'4. f!8 ) f4 ( e4. dis8 )}{s4 \p \< s2 s2 s4 \!}>>
  dis4 ( e4. g?8 ) g4 \f ( fis? e )

  \tag #'partScore {
    <<{dis2. ( d )}{s4 -\tweak #'minimum-length #6 \dim s \> s4 s s s \!}>>
  }
  \elseTag #'partScore {
    <<{dis2. ( d )}{s4 \dim s \> s4 s s s \!}>>
  }

  <<{d2 ( cis4 c2. )}{s2. \p \dim s4 s4 s4 \!}>>
  b2. \pp ( g )

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default  % Mark A

  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  \times 4/6 {
    \repeat tremolo 3 {g'8 ( d8}
    \repeat tremolo 3 {g8 d8}
    \repeat tremolo 3 {g8 d8 )}
    \tupletOff
    \repeat tremolo 3 {g8 ( e8}
    \repeat tremolo 3 {g8 e8}
    \repeat tremolo 3 {g8 e8 )}
    \repeat tremolo 3 {g8 ( d}
    \repeat tremolo 3 {g8 d}
    \repeat tremolo 3 {g8 d )}
    \repeat tremolo 3 {g8 ( e8}
    \repeat tremolo 3 {g8 e8}
    \repeat tremolo 3 {g8 e8 )}
  }
  \tupletOn
  gis4-. \pp r e-. r gis,-. e'-.
  e'-. r gis,-. r gis,-. e'-.
  R1. * 4

  \tag #'partScore
    \pageTurn

  a,1. \pp (
  gis4 ) r r r2 r4
  R1.
  r4 d'''4 \Pizz \pp gis, d gis, r
  r e'' a, e a, r
  R1. * 2
  r4 c' \pp fis, c fis, r
  r d'' g, d g, r
  r2 r4 ees'8 \Arco \pp ( c ) a4-. r
  r2 r4 d8 ( bes ) g4-. r
  r2 r4 bes8 ( g ) e4-. r
  r2 r4 a8 ( f ) d4-. r

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.5

  <d eis>2. \< ( ~ q4 \! q-- q-- )

  \mark \default  % Mark A

  <<{<d fis!>1.}{s2 s4 \> s4 s4 s4 \!}>>
  <d eis>2. \< ( ~ q4 q-- q-- \! )
  <<{<d fis>1.}{s2 s4 \> s4 s4 s4 \!}>>
  \tag #'partScore
    \dynamicLineSpannerStandard
  R1. * 2
  <<{e'1. ~}{s4 \p s4 s4 s4 \< s4 s8 s8 \!}>>
  e4 e,4. ( e'8 \> e4 e, e' ) \!
  e1. \pp ~


  e4 e,4. ( e'8 e4 e, e' )
  c1.:16 \pp
  c:
  c:
  a2.: f4: d: c:

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #1.9

  <<{e1. ^\markup {\italic "4.Corda"}}{s2 \p s4 \< s s s \!}>>
  <<{e1.}{s2 \p s4 \< s s s \!}>>
  <<{fis!1.}{s2 \p s4 \< s s s \!}>>
  g2. \f ( bes )
  a ( e2 \dim fis!4 )
  g!2. \p  ( d2 \dim e4) \!
  f2. \pp ( e2 d4 )

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default  % Mark A

  <<{c1. (}{s4 s2 \< s2 s4}>>
  <<{d1. )}  {s4 s2 \> s s8 s \!}>>
  c1. \pp (
  d
  a4 ) r r r2 r4
  R1. * 5

  \tag #'partScore
    \noBreak

  \TempoIIIAcc

  R1.
  d4 \p \< ( f4. d'8 )  f,4 ( d'4. f8 ) \!
  f8 \mf a f' d, f d' f,, \cresc d' f f, d' f
  d, f d' d, f d' a, f' a a, d f

  \TempoIIIViv

  \leftDynamic a,4-> \FFbracketedRinfor r b!-> r8 cis d4-> e-> \<
  f8 g gis4 a8 b cis d \! e f g! gis
  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  \times 4/6 {
    \repeat tremolo 3 {a8 \ff ( bes8}
    \repeat tremolo 3 {a8 bes8}
    \repeat tremolo 3 {a8 bes8 )}
    \repeat tremolo 3 {a8 ( bes8}
    \repeat tremolo 3 {a8 bes8}
    \repeat tremolo 3 {a8 bes8 )}
  }

  \mark \default  % Mark A

  a,4-. _\markup {\italic "con forza"} r bes-. r8 b c4-. cis-.
  d r8 dis-. e4-. r8 fis! g4-. gis-.
  <a, a'> \ff r q r8 q q4-. q-.
  q r q r8 q q4-. q-.
  q4 r r r2 r4
  R1.
  r2 r4 r8 f' \pp f4-. f-.

  \bar "||"

  \key d \minor
  f4 r f r8 f f4-. e-.
  d r d r8 d \< e4-. f-. \!
  g-. \fp r g-. r8 g \> g4-. f-. \!
  e \p r e r8 e \< f4-. g-. \!
  f \fz ( c )  <<{a4.->}{s4 s8 \cresc}>> c8 bes4-. a-. \!
  bes2 \fz g4.-> bes8 a4-. g-.
  a2 \fz f4. \< a8 bes4-. b-. \!
  e,2 \f r4 r2 r4
  R1.

  \tag #'partScore {
    <<{e4 ( f2 ) e4 ( f2}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4
      -\tweak #'minimum-length #4 \> s4 \! s4 \< s4 -\tweak #'minimum-length #4 \> s \! }>>
  }
  \elseTag #'partScore {
    <<{e4 ( f2 ) e4 ( f2}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4 \> s4 \! s4 \< s4 \> s \!}>>
  }

  e4 ) r r r2 r4
  cis2.-- \pp ( c--)
  cis4 ( e d cis bes g )
  R1. * 3

  % 2 lignes de nuances dynamiques
  \polyNeutral {
    d'8 \fz ([cis d cis]) f \fz ([e f e]) bes' \fz ([a bes a])
  }
  {
    \override DynamicLineSpanner #'outside-staff-priority = #800
    s4
    \once \override DynamicText #'stencil = ##f
    s4 \fz \< s s s s8 s\!
  }

  \mark \default  % Mark A

  \tag #'partScore {
    \set restNumberThreshold = #0
    <<{\leftDynamic a2 ~ \MFBracketedEspressivo <<{a2 ( b4 cis )}{s4 s \< s s \!}>>}
     {
       \once \override MultiMeasureRest #'stencil = ##f
       \once \override MultiMeasureRest #'minimum-length = #31
       R1 * 6/4
     }>>
     \set restNumberThreshold = #1   % ou reset restNumberThreshold
  }
  \elseTag #'partScore {
    \leftDynamic a2 ~ \MFBracketedEspressivo <<{a2 ( b4 cis )}{s4 s \< s s \!}>>
  }

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.2

  d2 ( a4 ) f2 \< ( d4 )\!
  <<{d ( g a ) bes2 ( b4 )}{s2. s8 s \> s4 s \!}>>
  c2 ( g4 ) e2 \< ( c4 ) \!
  <<{\leftDynamic f'2. \PiuF d4 ( e f )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{e2. \fz c4 ( d e )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>

  \tag #'partScore
    \dynamicLineSpannerStandard

  <<{d2. d2 cis4-.}{s2 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  d4 r r r r a'-. \mf
  d,-. r r r r a'-.
  d \ff r d r8 d d4-. cis-.
  d r d r8 d d4-. cis-.
  d-. cis-. d-. cis-. d-. cis-.
  d-. cis-. d-. \dim cis-. d-. cis-.
  d8 \mp ( f c! e bes \dim d a c g bes f a ) \!
  e ( g d f c e bes d a c g bes )
  f4 \p r r <bes, ees> \Pizz r r
  r2 r4 <a d> \dim r r
  r2 r4 bes \pp r r
  <g a> r r r2 r4

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-3

  \mark \default  % Mark A

  d'8 \< \Arco d a' a d d a a d d a' a   % Arco doit coïncider exactement avec la note
  d, d a a d, d a' a d, d a a \!
  d4 \f r r r2 r4
  R1.
  r4 f2 \p ( ~ f \dim e4 )
  d2 r4 bes2 ^\markup {\italic ten.} r4
  r2 r4 a2 \dim r4
  r2 r4 gis2 \pp r4
  r2 r4 a2 \dim r4 \!
  d4 r r r2 r4
  R1. * 8

  \tag #'partScore
    \noBreak

  \TempoIIIPPrB

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #18

  R1. * 4

  % Citation polyphonique, seule la première voix est rapportée.
  % On rajoute manuellement la seconde voix en descendant les silences multi-mesure
  % et en réduisant la taille des éléments : #'font-size = #-4

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMcViola" #UP #"alto" {
      s4 * 0 ^\markup { \fontsize #-3 "Viole"}
      \poly {\override MultiMeasureRest #'extra-offset = #'(0 . -4) R1. * 2}
      {
        \override NoteHead #'font-size = #-4
        \override Dots #'font-size = #-4
        \override Stem #'length = #3
        \override Slur #'thickness = #1
        \override Tie #'thickness = #1
        f1. ( ~ f2. e )
      }
    }
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1. * 2
  }

  \TempoIIIiT

  r4 r \times 2/3 {a8 \pp (  \bracketedHairpin gis \< a} bes4 ) a-. f-. \!
  d r \times 2/3 {a'8 \< ( gis a} bes4 ) a-. f-. \!
  d r \times 2/3 {a'8 \mf \< ( gis a} bes4 ) a-. f-. \!
  d r \times 2/3 {a'8 \f \< ( gis a} bes4 ) a-. f-. \!

  \mark \default  % Mark A

  d r \times 2/3 {a''8 \ff ( gis a} bes4 ) a-. d,-.
  cis-. r \times 2/3 {a'8 ( gis a} bes4 ) a-. c,-.
  b-. r \times 2/3 {g'?8 ( fis g} a4 ) g-. gis-.
  bes! \fz a-. gis-. bes \fz a-. gis-.
  b \fz a-. gis-. b \fz a-. fis-.
  d' \fz cis b \fz a gis \fz fis
  e \fz dis d \fz cis b \fz a
  <e cis' e> r r <gis cis>8 q r4 q8 q
  <e cis' a'>4 \once \override Hairpin #'rotation = #'(3 -2 0) a8 \< ( b cis d! e fis g! a b cis \! )
  <d, d'>2.:32 \fff q:
  q: <e cis'>:
  <d d'>4 \ff r \times 2/3 {a'8 ( gis a} bes!4 ) a-. f-.
  d-. r \times 2/3 {a'8 ( gis a} bes4 ) a-. f-.
  bes \fz a-. f \fz d-. bes \fz a-.
  f \fz d-. f \fz bes-. d \fz f-.
  <a, f''>4-. r q-. r8 q q4-. q-.
  q r r q r r
  q r r r2 r4

  \bar "|."
}

voiceSgMcViolinoII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 "Violini II"}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = "2.Viol."}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef treble
  \SgMcViolinoII
}

quoteScoreSgMcViolinoII = \SgMcViolinoII
