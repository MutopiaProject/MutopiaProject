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
  * Fichier de notes, Violoncelle                                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMbVioloncello =
\relative c' {

  \include "Common/Properties.ly"

  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoII

  bes4 \Pizz \p r g f
  e a8 g f4 r
  d\pp f g d
  bes c f, r
  d' \p \< f8 g a4 \! r
  g \> r8 g g4 \! r
  f \p \dim f bes, r8 b
  c4 \pp c f, r

  \tag #'partScore {
    b8 \Arco \p ( c a'4 ) -\tweak #'minimum-length #8 \cresc e8 \< ( f c'4 )
  }
  \elseTag #'partScore {
    b,8 \Arco \p ( c a'4 ) \cresc e8 \< ( f c'4 )
  }

  e,8 ( f ) \! f,16 ( \f \> a c f a8 ) \! r r4


  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-2.5

  \mark \default    % Mark A - mesure 11

  f,16 \Pizz \pp c' a' r f, c' a' r g, e' c' r a, e' c' r
  bes, f' bes r bes, f' bes r bes, f' d' r bes, \< f' d' r
  bes, fis' ees' \! r bes, fis' ees' r bes, g' \dim d' r bes, f' des' \! r
  bes, \p g' c r bes, f' c' r bes, fis' c' r bes, fis' c' r
  bes, \pp g' bes r bes, ees des' r bes, e des' r bes, e des' r
  <<{a, f' a r d,,! a' f' r d, g d' r des, g des' r}{s4 s16 \< s4 s16 s \!}>>
  c,16 \< g' c \! r g \f des' f r \Arco e, ( g \dim c e <<{g4 ) (}{s8. \p -\tweak #'minimum-length #8 \> s16 \!}>>
  bes8 ) \! r <<{c4 ^\markup {\italic {[espressivo]}} ( des4. e,8 )}{\rightDynamic s4 \pp \< s8 s8 \> s8 s8 \!}>>
  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.5
  <<{e2 ~}{s4 \> s8 s16 s \!}>> e8 [\clef alto g' \< ( aes bes]) \!
  <<{des,2 \> ~ des8 [c \pp ( \stemDown \acciaccatura ees8 \stemNeutral des8. e,!16])}{s4 \> s8 s16 s \!}>>
  \tag #'partScore
    \dynamicLineSpannerStandard
  e2 ~ e8 \< g' ( a!16 c bes \! des, )
  <<{des2  ~}{s4 \> s8 s16 s \!}>> des8 g ( a16 \pp c bes des, )
  des1 ~

  \tag #'partScore {
    des8 <<{c4 (}{s16 s -\tweak #'minimum-length #8 \cresc}>> e4 ) \< f4 g8 \! ~
  }
  \elseTag #'partScore {
    des8 <<{c4 (}{s16 s \cresc}>> e4 ) \< f4 g8 \! ~ 
  }

  \tag #'partScore {
    g8 gis -\tweak #'minimum-length #8 \< ( <<{a2.-> ) ~}{s2 \f s8 -\tweak #'minimum-length #6 \> s16 s \!}>>
  }
  \elseTag #'partScore {
    g8 gis \< ( <<{a2.-> ) ~}{s2 \f s8 \> s16 s \!}>>
  }

  a8 \! r r4 r
  \clef bass
  c,16 \p ( a f c
  c,8 ) r r4 c'8-- \f r r4
  c16-> \ff c-> r8 r4 c8 r r4
  r2 r4 r16 bes16 \p ( c des )
  a ( bes des a bes \dim des \! a bes ) \times 2/3 {des8 ([c a]} bes8 des ~

  \tag #'quoteOboeII \tag #'quoteTimpani {
    des4 ) c2 \pp ( bes4 )
  }
  \elseTag #'quoteOboeII \elseTag #'quoteTimpani {
    des4 ) c2 \pp ( bes4
  }

  \mark \default    % Mark B - mesure 32

  f4 ) r8 \Pizz c''8 \pp a f \cresc c f,
  c' \p r f \pp r r4 f8 r
  f, c' f \cresc c' a \! f c f,
  f \p r f' \pp r r4 f8 r
  f,16 \pp c' f a c8 r f,,16 c' f a c8 r
  a8. \Arco ( f16 c4 ) a'8. ( f16 c4 ) ~
  c r r2
  r <g e' c'>4-> \ff \arpeggio <c, c' g' e'>-> \arpeggio
  f8-> \leftDynamic f \Marcato aes16-> aes-> r8 r des-> bes16-> bes-> r8
  r ees, aes16-> aes-> r8 r des ges,16-> ges-> r8
  r bes! aes16-> \> aes-> r8 r des ges,16 ges \! r8
  r g! \p \times 2/3 {aes8 \> ( des f )} aes8 ( c4 bes8 \!

  \mark \default    % Mark C - mesure 44

  aes ) \pp r8 r4 r16 ^\markup {\italic \fontsize #1 "Leggio I."} \leftDynamic des,,8
  _\markup {\normal-text \italic semplice} ( ees32 f ) r16 f-- ( ges-- aes-- )
  r16 aes8 \< ( bes32 c des16 ) des-- ( ees-- f-- ) \! r8 ees16-- ( des-- ) r8 aes!8--
  r16 \rightDynamic des,-. \mf \< des'-. f, ~ f aes-. f'-. \! aes, ~ aes des-. \> aes'-. des, ~ des aes-. f'-. f,-. \!
  r16 \bracketedP cis8 \< ( dis32 e ) ~ \bindDynamics e16 \! cis' \bracketedDim ( b a? ) r \pp
  b8 ( fis'32 e ) r16 fis, ( c'! b )
  b8 r r4 r2
  R1 * 2
  e,4 ( \p ^\markup {\italic \fontsize #1 "Tutti"} c! \dim d2 ) \!
  r16 g8 \pp ( ais32 b ) r16 d,8 ( fis32 g ) r16 g8 ( ais32 b ) r16 d8 ( fis,32 g )
  r16 g'8 ( ais32 \cresc b ) r16 g8 ( d!32 ees ) r16 b8 ( fis32 g ) r16 dis'8 ( ais32 b )
  r16 g8 \mf \< ( ais32 b ) r16 dis,8 ( fis32 g ) r16 e'?8 ( ais,32 b ) r16 eis8 ( e,!32 eis \! )
  fis8 \ff ( b ) d ( fis ) e? ( e' ) cis ( e, )
  dis ( fis ) a ( c! ) bis, ( a' ) fis ( bis, )
  cis16 \Pizz e gis cis e \dim cis gis r fis, cis' fis a cis a fis r
  gis, \p \dim cis gis' cis e cis gis r fis, bis dis gis bis gis dis r
  e,8 \pp \Arco ( gis cis e ) e, ( a cis e )
  fis \< ( ais cis fis )
  \clef alto
  g! ( b \! g d )
  \clef bass
  cis ( ais \> g! e ~ e ) b4 ( e,8 ) \!
  e \p ( g c! e ) a? \cresc ( e cis a )

  \mark \default    % Mark D - mesure 63

  <ais fis' cis'>16 \ff r8. r <e' cis'>16-. q-. r8. r q16 \p
  \override Beam #'breakable = ##t
  q r r e-. ([e-.]) r r \dim e-. ([e-.]) r r e-. ([e-.]) r r e-. ([
  e-.]) \pp r r e-. ([e-.]) r r e-. ([ees-.]) r r ees-. ([ees-.]) r r ees-. ([
  e!-.]) r r e-. ([e-.]) r r \cresc e-. ([e-.]) r r e-. ([e-.]) r r e-. ([
  e-.]) r r ais-. ([b-.]) r r cis-. \f ([d-.]) r8. r4
  r e,8 \p \< ( dis d4 \! ) e, \fz ~
  e16 \< e ( b' e ) gis ( b e \bindDynamics dis d \> b gis e d b e, \p e' )
  f, \Pizz \pp c' f a c8 f, bes,!16 f' g bes? d8 f,
  c,16 \dim c' f a c8 r c,2 \Arco
  \clef tenor
  \leftDynamic f'4. \MFespress -\tweak #'minimum-length #13 \bindDynamics f8 \< e4 ( c ) \!
  e2 \> ( d4 ) \! d8. \< ( bes'16 ) \!
  bes4. \f a8 ~ a \dim g f16 ( e f g
  e8 ) \p r ees4. \> ees8 \acciaccatura f8 ees16 ( d ees f ) \!
  d8 r des4. \pp des8 ( ~des16 c des ees )
  c8 r \cresc c4 b8 ( g ) f ( f' )
  e \f \< ( c ) bes! ( bes' ) ~ \times 2/3 {bes8 ( g e ) \!}
  \clef bass
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(2 2 2 2)
  c16 \dim ( des \times 2/3 {bes16 g f}
  \unset subdivideBeams
  \unset baseMoment
  \unset Timing.beatStructure
  e8 ) \pp r r4 r2
  r4 <des, aes' des>4-- \pp ^\markup {\italic "[ten."} ( q-- )^\markup {\italic "ten.]"} r
  r <f bes>-- ^\markup {\italic "[sim.]"} (q--) r
  r <des aes' des>-- ( q-- ) r
  r <<{<des' f>-- (}{s8 s \cresc}>> q4-- ) r
  r <ges ces>-- ( <f ces'>-- ) r
  ges16-> \ff f-> _\markup {\italic "  pesante"} ees8-> e-> g-> aes16-> g-> f8-> fis-> a->
  bes16-> a-> g8-> gis-> b-> cis4-> cis,->
  d-> c!8-> f,-> bes4-> a8-> d->
  g,4-> bes-> c,8 r r4
  c'16^^ \ff c^^ r8 r4 c16^^ c^^ r8 r4

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.5

  <<{<c, g'>2:32 <c c'>8: [<c bes'>: <c g'>: <c c'>:]}{s2 s4 \< s8 s16 s32 s \!}>>
  \tag #'partScore {
    <<{<f c'>2: q:}{s4 \ffz s4 s4 s8 -\tweak #'minimum-length #8 \dim s \!}>>
  }
  \elseTag #'partScore {
    <<{<f c'>2: q:}{s4 \ffz s4 s4 s8 \dim s \!}>>
  }
  <<{q2: a'8 ( f16 e32 f a,8 d )}{s4 \p s \dim s \!}>>

  \tag #'partScore
    \dynamicLineSpannerStandard

  c4 \pp ( b c \dim b )
  c ( b c b
  c ) \! r4 r2
  R1 * 2

  \tag #'partScore
    \pageTurn  % pour améliorer la mise en page

  r2 <f, f'>2 \ppp
  r2 q
  r \repeat tremolo 8 {f32 \ppp ( c')}
  <<{\repeat tremolo 8 {f,32( c'} \repeat tremolo 8 {f,32 c')}}{s4 s \dim s \!}>>
  \repeat tremolo 8 {f,32( c'} f,4 ) r
  R1
  \time 2/4
  R2
  \time 4/4
  R1
  f1 \ppp ~
  f~
  f4 \times 2/3 {f8 ( c' f } a8 ) r r4
  r2 <f, c'> \ppp
  q1 \fermata

  \bar "|."
}

voiceSgMbVioloncello = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 "Violoncelli"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "Vlc."
  \set Staff.midiInstrument = "string ensemble 1"
  \key f \major
  \clef bass
  \SgMbVioloncello
}

quoteScoreSgMbVioloncello = \SgMbVioloncello
