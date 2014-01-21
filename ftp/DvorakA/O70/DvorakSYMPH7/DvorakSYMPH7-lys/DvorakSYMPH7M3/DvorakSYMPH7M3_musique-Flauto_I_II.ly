%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7  : mouvement III - Scherzo Vivace                     *
  * Fichier de notes, flûtes I et II, parties                           *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  *     Flûte I                                                 *
  ***************************************************************
%}

\include "Common/Version.ly"

% Fichier cité par les timbales :
% le \tag #'partscore devient \tag #'partScore \tag #'quoteTimpani {

SgMcFlautoI = \relative c''' {

  \include "Common/Properties.ly"
  \oneMMRNumberOn
  \cueEventType

  \TempoIII

  r2 r4
  R1 * 6/4 * 16

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcOboeI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Oboe & Clar."} R1 * 6/4}
  \oneMMRNumberOn

  a4 \mf r a r8 a a4-. g-.
  f r f r8 f \< g4-. a-. \!
  bes r bes r8 bes \> bes4-. a-. \!
  g r g r8 g \< a4-. bes-. \!
  c2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.
  \mark \default  % Mark A
  f4 \f r d' r8 d d4-. cis-.
  d4 r d \cresc r8 d d4-. e-. \!
  f2. \trill \ff r8 f8 f4-. e-.
  f2. \trill r8 f8 f4-. e-.
  d4 r r r2 r4
  R1 * 6/4 * 5
  e,8 \f  ([fis \<]) fis ([g]) g ([a]) a ([bes]) bes ([b]) b ([c]) \!
  d2 \ff d4-. d2 d4-.
  d2 d4-. d2 d4-.
  d-. r ees-. r bes-. r
  a-. r b-. r cis-. r
  f-. r e-. r2 r4
  R1 * 6/4 * 2
  a,4-. \mp r a-. r8 a a4-. g-.
  f-. r f-. r8 f \< g4-. a-. \!
  bes-. \fz r bes-. r8 bes \> bes4-. a-. \!
  g-. \p r g-. r8 g \< a4-. bes-. \!
  c2-> \fz f,4.-> \fz f8 g4-. a-.
  bes2-> \fz e,4.-> \fz e8 f4-. g-.
  a2-> \fz d,4.-> \fz d8 e4-. f-.
  \acciaccatura e8

  \once \override Score.RehearsalMark #'X-offset = #-3
  \mark \default  % Mark B

  e'4. \mf ( f8 d f ) e4. \p ( f8 d f )
  e4 \< ( a g \dim f e \> d ) \!
  c!4. \p ( d8 b d ) c4. ( d8 b d )
  c4 ( f \> e d c bes! ) \!
  a4. \pp ( bes8 a bes ) a4. ( bes8 a bes )
  a4 r r r2 r4
  R1 * 6/4 * 3
  \override DynamicLineSpanner #'staff-padding = #2
  r8 a,-. -\tweak #'X-offset #-3.5 \f \< a-. cis-. cis-. f-. f-. a-. a-. cis-. cis-. a'-. \!

  \mark \default  % Mark C

  a,2 \ff a ( b4 cis )
  \dynamicLineSpannerStandard
  d2 ( a4 f2 d4 )
  d ( g a bes!2 b4 )
  c2 ( g4 e2 c4 )
  f'2. \trill d4 ( e f )
  f4 e2 \trill c4 ( d e )
  <<{e4 d2 d2 cis4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  d4-. r r r2 a'4-.
  d,-. r r r2 a'4-.
  f2. \trill r8 f8 f4-. e-.
  f2. \trill r8 f8 f4-. e-.
  d-. r r r2 r4
  a-. \p \< b-. c!-. d-. e-. fis-. \!
  g \f r r r2 r4
  R1 * 6/4

  \once \override Score.RehearsalMark #'X-offset = #-2
  \mark \default  % Mark D

  d2-> \ff d-> d->
  e-> e4 fis-. g-. a-.
  d,-. c!-. d-. ees-. d-. d-.
  cis2-> d4 cis2-> d4
  ees2-> d4 ees2-> ees4
  a4 r fis r bis, r
  cis r a r b a
  cis cis,8 \< ( dis e fis gis ais bis cis dis e ) \!
  eis2.-> fis4-. g!-. a-.
  a2.-^ \ff gis-^
  g-^ e-^
  f!4-. r f-. f-. f-. f-.
  f-. r f-. f-. f-. f-.
  f \fz f f \fz d bes \fz a
  f \fz d f \fz bes d \fz f
  a r r d, r r
  R1 * 6/4

  \bar "||"

  \noBreak
  \TempoIIIMM

  \key g \major
  R1 * 6/4
  \noBreak
  d,4 \p ( a'4. d8 d4 a d )
  d2. \< \startTrillSpan ~ <<{d2}{s4 s8 s \stopTrillSpan}>> g,4 \!
  g ( d'4. \< g8 g4 g, d' ) \!
  d2. \> ( \trill ~ d8 c b a g a ) \!
  fis \pp ( g a4-. a8 b c4-. c8 cis d4-. )
  r4 cis8 \p ( d ) r4 cis8 ( d ) r4 cis8 ( d )
  r4 cis8 \< ( d ) r4 cis8 ( d ) r4 cisis8 ( dis ) \!
  r4 dis8 ( e ) r4 dis8 \f ( e ) r4 fis8 ( g )
  r4 eis8 \> ( fis ) r4 eis8 ( fis ) r4 dis8 ( e ) \!
  r4 dis8 ( \p \> e ) r4 dis8 ( e ) r4 cis8 ( d ) \!
  r4 ais8 \pp ( b ) r4 dis8 ( e ) r4 fis8 ( g )

  \mark \default  % Mark E

  d!4 r r r2 r4
  R1 * 6/4
  d,4 ( \bracketedP \< g4. b8 b4 d4. g8 ) \!
  <<{g1.}{s4 \fz -\tweak #'minimum-length #7 \> s s s s s8 s \!}>>
  gis2 \fz ( e4 b gis4. cis8 )
  cis2 ( \> b4 gis2 e4 ) \!
  gis,1. \p \dim ( ~
  gis2. \! cis ~
  cis \dim b ) \! ~
  b4 ( a gis b2 a4 )
  gis2 \pp ( fisis4 a2 gis4
  e ) r r r2 r4
  R1 * 6/4
  \tag #'quoteTimpani {	% appel pour citation
      e'4-. \mp b'8 ( f ) e4-. b'8 ( f ) e2 -> ~
      e4 c'8 ( b a gis a b d c a g! )
  }
  \elseTag #'quoteTimpani {
    e4-. \mp b'8 ( f ) e4-. b'8 ( f ) e2 -> ~
    e4 c'8 ( b a gis a b d c a g!
  }
  fis4 ) r r r2 r4
  R1 * 6/4 * 3
  ees'1. \p (
  d )
  e! (
  f )
  <<{f1.}{s4 \p -\tweak #'minimum-length #7 \< s s s s s8 s \!}>>
  \mark \default  % Mark F
  fis!4 (\< b4. a8 \! a4 \> fis d ) \!
  <<{eis1.}{s4 \p -\tweak #'minimum-length #7 \< s s s s s8 s \!}>>
  fis4 ( \< b4. a8 \! a4 \> fis d ) \!
  cis r r r2 r4

  \tag #'quoteFlautoII {
    a2. -\tweak #'stencil ##f \p \< \startTrillSpan \times 6/8 {a8 ( \stopTrillSpan b cis d e fis gis a ) \!}
  }
  \elseTag  #'quoteFlautoII {
    a,2. \< \startTrillSpan \times 6/8 {a8 ( \stopTrillSpan b cis d e fis gis a ) \!}
  }

  <<{e1. ~}{s4 s s -\tweak #'minimum-length #7 \< s s s8 s \!}>>
  <<{e1.}{s4 s s -\tweak #'minimum-length #7 \> s s s8 s \!}>>
  e1. ( \pp ~
  e1.
  c4 ) r r r2 r4
  c,4 \p ( g'4. c8 c4 g c )
  <<{c2. ~ c4.}{s4 \startTrillSpan s s s \stopTrillSpan}>> f,8 ( a c )
  f ( e f g a f c a g a g f )
  e ( f g4-. g8 a bes4-. bes8 b c4-. )
  r4 b8 ( \p c ) r4 b8 ( c ) r4 b8 ( c )
  r4 b8 ( c ) r4 b8 \cresc ( c ) r4 c8 ( cis \! )
  r4 cis8 \f ( d ) r4 cis8 ( d ) r4 e8 ( f )
  r4 dis8 ( e ) r4 dis8 \dim ( e ) r4 cis8 ( d )
  r4 cis8 \p ( d ) r4 cis8 \dim ( d ) r4 b8 ( c )
  r4 gis8 \pp ( a ) r4 cis8 ( d ) r4 e8 ( f )

  \mark \default  % Mark G

  c!4 r r r2 r4
  R1 * 6/4
  \allowPageTurn
  \override DynamicLineSpanner #'staff-padding = #2
  c,4 \bracketedP ( \< f4. a8 ) a4 ( c4. f8 ) \!
  <<{f1.}{s4 \fz -\tweak #'minimum-length #9 \> s s s s s8 s \!}>>
  fis2 \p ( d4 a fis?4. \> b8 )
  \dynamicLineSpannerStandard
  b2 ( a4 fis2 d4 ) \!
  R1 * 6/4 * 4

  \noBreak
  \TempoIIIAcc

  R1 * 6/4 * 2
  r4 f'8 \mf f r4 f8 \cresc f r4 f8 f \!
  r4 f8 f r4 f8 f r4 f8 f

  \once \override Score.MetronomeMark #'X-offset = #0.6
  \TempoIIIViv

  f4 \ff r r2 r
  R1 * 6/4
  d,4-. \ff r e-. r8 f g4-. a-.
  bes-. c8 ( cis d4 ) e8 ( f g a bes gis )

  \once \override Score.RehearsalMark #'X-offset = #-2
  \mark \default  % Mark H

  <<
    {a1.}{
      \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -2.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      s4 ^\markup {\lower #1.6 \tiny \flat} \startTrillSpan
    }
  >>
  <<
    {a1.}{
      s4 s s s s s8 s \stopTrillSpan
    }
  >>
  a4-. a,-. r a'-. a,-. r
  a'-. a,-. r a'-. a,-. r
  a'4 r r r2 r4
  R1 * 6/4 * 2

  \bar "||"

  \key d \minor
  R1 * 6/4 * 16

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcOboeI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Oboe & Clar."} R1 * 6/4}
  \oneMMRNumberOn

  \mark \default  % Mark J

  a,4 \mf r a r8 a a4-. g-.
  f r f r8 f \< g4-. a-. \!
  bes r bes r8 bes \> bes4-. a-. \!
  g r g r8 g \< a4-. bes-. \!
  c2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.
  f \f r d' r8 d d4-. cis-.
  d r d \cresc r8 d d4-. \! e-.
  f2. \trill \ff r8 f8 f4-. e-.
  f2. \trill r8 f8 f4-. e-.
  f-. e-. f-. e-. f-. e-.
  f-. e-. f-. \dim e-. f-. e-.
  f \mp ( e d \dim c bes a )
  \override DynamicLineSpanner #'staff-padding = #2
  g \p ( f \> e d c bes \!
  \dynamicLineSpannerStandard
  a ) r r r2 r4
  R1 * 6/4 * 3

  \once \override Score.RehearsalMark #'X-offset = #-3
  \mark \default  % Mark K

  f''4 \p \< ( e f e f e )
  f ( e f e f e ) \!
  f \f ( e d \dim c bes a )
  g2 ( \p f4 e2 d4 )
  c r r r2 r4
  r2 \times 2/3 {a8 ( \p gis a} c4 bes g! )
  r2 \times 2/3 {g8 ( fis g} bes4 a d, )
  r2 \times 2/3 {d8 \dim ( cis d} a'4 gis d ) \!
  r2 d4 \pp ( f2 e4 )
  d r r r2 e4 \p (
  g f ) r r2 r4
  R1 * 6/4 * 7

  \noBreak
  \TempoIIIPPrB

  \once \override MultiMeasureRest #'minimum-length = #20
  R1 * 6/4 * 6
  \noBreak

  \once \override Score.MetronomeMark #'X-offset = #5
  \TempoIIIiT

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMcVioloncello" #DOWN "bass" {s4 * 0 ^\markup { \fontsize #-3 "Vlc."} R1 * 6/4 * 2}
  \oneMMRNumberOn

  <<{d''1. ~}{s4 \mp -\tweak #'minimum-length #8 \< s s s s s \!}>>
  <<{d1.}{s4 \< s s s s s \!}>>

  \mark \default  % Mark L

  d2-> \ff d-> d->
  e2-> e4 fis-. g-. a-.
  d,-. c-. d-. ees-. d-. d-.
  cis2-> d4-. cis2-> d4-.
  dis2-> d4-. dis2-> dis4-.
  a' r fis r bis, r
  cis r a r b-. a-.
  cis cis,8 ( \< dis e fis gis ais bis cis dis e ) \!
  eis2. fis4-. g!-. a!-.
  a2.-^ \ff gis-^
  g!-^ e-^
  f!4-. r f-. f-. f-. f-.
  f-. r f-. f-. f-. f-.
  f \fz f f \fz d bes \fz a
  f \fz d f \fz bes d \fz f
  a r a r8 a a4 a
  a r r a r r
  a r r r2 r4
  \bar "|."
}

%{
  ***************************************************************
  *     Flûte II                                                *
  ***************************************************************
%}

SgMcFlautoII = \relative c''{

  \include "Common/Properties.ly"

  \oneMMRNumberOn
  \cueEventType

  \TempoIII

  r2 r4
  R1 * 6/4 * 16

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcOboeI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Oboe & Clar."} R1 * 6/4}
  \oneMMRNumberOn

  f4 \mf r f r8 f f4-. e-.
  d r d r8 d \< e4-. f-. \!
  g r g r8 g \> g4-. f-. \!
  e r e r8 e \< f4-. g-. \!
  c2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.

  \mark \default  % Mark A

  f4 \f r d' r8 d d4-. cis-.
  d4 r d \cresc r8 d d4-. cis-. \!
  d2. \ff \trill r8 d8 d4-. cis-.
  d2. \trill r8 d8 d4-. cis-.
  d4 r r r2 r4
  R1 * 6/4 * 5
  e,8 \f ([fis \<]) fis ([g]) g ([a]) a ([bes]) bes ([b]) b ([c]) \!
  d2 \ff d4-. d2 d4-.
  d2 d4-. d2 d4-.
  d-. r ees-. r bes-. r
  a-. r b-. r cis-. r
  b-. r cis-. r2 r4
  R1 * 6/4 * 2
  f,4-. \mp r f-. r8 f f4-. e-.
  d-. r d-. r8 d \< e4-. f-. \!
  d-. \fz r d-. r8 d \> d4-. dis-. \!
  e-. \p r e-. r8 e \< f4-. g-. \!
  c2-> \fz f,4.-> \fz f8 g4-. a-.
  bes2-> \fz e,4.-> \fz e8 f4-. g-.
  a2-> \fz d,4.-> \fz d8 e4-. f-.
  \acciaccatura e8

  \mark \default  % Mark B

  cis'4. \mf ( d8 b d ) cis4. \p ( d8 b d )
  cis4 \< ( f e \dim d c! \> b ) \!
  e,4. \p ( f8 d f ) e4. ( f8 d f )
  e4 ( a \> c f, e g ) \!
  cis,2. \pp ( c
  cis4  )r r r2 r4
  R1 * 6/4 * 3
  r8 a-. -\tweak #'X-offset #-3.5 \f \< a-. cis-. cis-. f-. f-. a-. a-. cis-. cis-. a'-. \!

  \once \override Score.RehearsalMark #'X-offset = #1.6
  \mark \default  % Mark C

  a,2 \ff a ( b4 cis )
  d2 ( a4 f2 d4 )
  d ( g a bes!2 b4 )
  c2 ( g4 e2 c4 )
  f'2. \trill d4 ( e f )
  f4 e2 \trill c4 ( d e )
  <<{e4 d2 d2 cis4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  d4-. r r r2 a'4-.
  d,-. r r r2 a'4-.
  d,2. \trill r8 d8 d4-. cis-.
  d2. \trill r8 d8 d4-. cis-.
  d r ^\markup {"Muta in Piccolo"}  r r2 r4
  R1 * 6/4

  \transposition c''
  \set Staff.midiInstrument = "piccolo"
  g,4-. ^\markup {Piccolo} \mp a-. \< b-. c-. b-. bes-. \!
  a8 \f ( bes a4 ) g8 \dim ( a g4 ) f8 ( a ) a4-. \!

  \mark \default  % Mark D

  d,4 r ^\markup {"Muta in gr. fl."}  r r2 r4
  \transposition c'
  \set Staff.midiInstrument = "flute"
  R1 * 6/4 * 4
  fis'4 ^\markup {"Gr. Fl."} \bracketedFF r b, r bis r
  cis r a r b a
  cis cis,8 \< ( dis e fis gis ais bis cis dis e ) \!
  cis2.-> ~ cis2 e4-.
  d!2.-^ \ff d-^
  d-^ cis-^
  d4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d \fz d d \fz d bes \fz a
  f \fz d f \fz bes d \fz f
  f r r d r r
  R1 * 6/4

  \bar "||"

  \TempoIIIMM

  \key g \major
  fis,,1. \p ~
  \noBreak
  fis
  \noBreak
  \override DynamicLineSpanner #'staff-padding = #2
  <<{g ~}{s4 -\tweak #'minimum-length #7 \< s s s s s \!}>>
  \noBreak
  <<{g1.  ~}{s4 s2 -\tweak #'minimum-length #7 \< s s4 \!}>>
  <<{g2. ( d )}{s4 s \> s s s s8 s \!}>>
  \dynamicLineSpannerStandard
  R1 * 6/4 * 7

  \mark \default  % Mark E

  R1 * 6/4 * 2
  \override DynamicLineSpanner #'staff-padding = #2
  b'4 ( \bracketedP \< b4. g'8 g4 b4. b8 ) \!
  <<{bes1.}{s4 \fz -\tweak #'minimum-length #7 \> s s s s s8 s \!}>>
  e2 \fz ( b!4 ~ b gis2 )
  gis2. ( \> e2 gis,4 ) \!
  e1. \p \dim ( ~
  \dynamicLineSpannerStandard
  e \!
  fis2. \dim eis ) \!
  fis1.
  dis1. \pp
  \times 6/9 {e8 \p ( f e f e f e f e} \times 6/9 {f e f e f e f e f )}
  \times 6/9 {e8 ( f e f e f e f e} \times 6/9 {f e f e f e f e f )}
  e4 r r r2 r4
  R1 * 6/4 * 10

  \mark \default  % Mark F

  R1 * 6/4 * 4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcFlautoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Flauto I"} R1 * 6/4}
  \oneMMRNumberOn

  <<{e'4 ( a4. cis8 cis4 e,4. cis'8 )}{s4 s s \< s s s8 s \!}>>
  <<{c!2. b}{s4 s s \> s s s8 s \!}>>
  e,4 ( \pp a4. c8 c4 e,4. c'8 )
  c2. ( b )
  bes4 r r r2 r4
  R1 * 6/4 * 10
  \mark \default  % Mark G
  R1 * 6/4 * 2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcFlautoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Flauto I"} R1 * 6/4}
  \cueDuring #"scoreSgMcTrombaI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Tromba I"} R1 * 6/4}
  \oneMMRNumberOn

  d2 \p ( a4 fis d2 ~ )
  d4 r r r2 r4
  R1 * 6/4 * 4

  \noBreak
  \TempoIIIAcc

  R1 * 6/4 * 2
  r4 d'8 \mf d r4 d8 \cresc d r4 d8 d \!
  r4 d8 d r4 d8 d r4 d8 d

  \once \override Score.MetronomeMark #'X-offset = #1
  \TempoIIIViv

  d4 \ff r r2 r
  R1 * 6/4
  d,4-. \ff r e-. r8 f g4-. a-.
  bes-. c8 ( cis d4 ) e8 ( f g a bes gis )

  \mark \default  % Mark H

  <<
    {a1.}{
      \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      s4 ^\markup {\lower #1 \tiny \flat} \startTrillSpan
    }
  >>
  <<
    {a1.}{
      s4 s s s s s8 s \stopTrillSpan
    }
  >>
  a4-. a,-. r a'-. a,-. r
  a'-. a,-. r a'-. a,-. r
  a'4 r r r2 r4
  R1 * 6/4 * 2

  \bar "||"

  \key d \minor
  R1 * 6/4 * 16

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcOboeI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Oboe & Clar."} R1 * 6/4}
  \oneMMRNumberOn

  \mark \default  % Mark J

  f,4 \mf r f r8 f f4-. e-.
  d r d r8 d \< e4-. f-. \!
  g r g r8 g \> g4-. f-. \!
  e r e r8 e \< f4-. g-. \!
  c2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.
  f \f r d' r8 d d4-. cis-.
  d r d \cresc r8 d d4-. \! cis-.
  d2. \trill \ff r8 d8 d4-. cis-.
  d2. \trill r8 d8 d4-. cis-.
  d-. cis-. d-. cis-. d-. cis-.
  d-. cis-. d-. \dim cis-. d-. cis-.
  \override DynamicLineSpanner #'staff-padding = #2
  d \mp ( c bes \dim a g f )
  e \p ( d \> c bes a g \!
  \dynamicLineSpannerStandard
  f ) r r r2 r4
  R1 * 6/4 * 3

  \once \override Score.RehearsalMark #'X-offset = #-2
  \mark \default  % Mark K

  d''4 \p \< ( cis d cis d cis )
  d ( cis d cis d cis ) \!
  d \f ( c bes \dim a g f )
  e2 ( \p d4 c2 bes4 )
  a r r r2 r4
  R1 * 6/4 * 13

  \noBreak
  \TempoIIIPPrB

  \once \override MultiMeasureRest #'minimum-length = #18
  R1 * 6/4 * 6
  \noBreak

  \once \override Score.MetronomeMark #'X-offset = #5
  \TempoIIIiT

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMcVioloncello" #DOWN "bass" {s4 * 0 -\tweak #'extra-offset #'(0 . -1)
    ^\markup { \fontsize #-3 "Vlc."} R1 * 6/4 * 2}
  \oneMMRNumberOn

  <<{d'1. ~}{s4 \mp -\tweak #'minimum-length #8 \< s s s s s \!}>>
  <<{d1.}{s4 \< s s s s s \!}>>

  \mark \default  % Mark L

  d,4 \ff r r2 r2
  R1 * 6/4 * 4
  fis'4 \bracketedFF r b, r bis r
  cis r a r b-. a-.
  cis cis,8 ( \< dis e fis gis ais bis cis dis e ) \!
  cis2. ~ cis2 e4-.
  d!2.-^ \ff d-^
  d-^ cis-^
  d!4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d \fz d d \fz d bes \fz a
  f \fz d f \fz bes d \fz f
  f r f r8 f f4 f
  f r r f r r
  f r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcFlautoI = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Flauto" I}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "flute"
  \clef treble
  \SgMcFlautoI
}

voiceSgMcFlautoII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Flauto" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "flute"
  \clef treble
  \SgMcFlautoII
}

quoteScoreSgMcFlautoI = \SgMcFlautoI
quoteScoreSgMcFlautoII = \SgMcFlautoII
