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
  * Fichier de notes, Contrebasse                                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMbContrabasso =
\relative c, {

  \include "Common/Properties.ly"

  \tag #'partScore
    \oneMMRNumberOn
  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \tag #'partScore
    \cueEventType

  \TempoII

  \transposition c

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #25
  \tag #'partScore {
    R1 * 8
    r4

    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMbCornoII" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Corno II"} r4 r2 r4}
    \oneMMRNumberOn

    \override DynamicLineSpanner #'staff-padding = #2
    <<{f2.}{s4 \f -\tweak #'minimum-length #8 \> s4 s8 s16 s16 \!}>>
    \dynamicLineSpannerStandard
  }
  \elseTag #'partScore {
    R1 * 9
    <<{r4 f2.}{s4 s4 \f \> s4 s8 s16 s16 \!}>>
  }

  \mark \default    % Mark A - mesure 11

  f2 \pp ( g4 a )
  bes2 ~bes4 r
  <<{bes \Pizz r bes r8 bes}{s2 \cresc s16 s \dim}>>
  bes4 \p r bes r8 bes
  bes4 \pp r bes r8 bes
  <<{a8 r d r d r des r}{s4 s16 \< s4 s16 s32 s \!}>>
  
  \tag #'partScore {
    <<{c8 r g4-> \Arco ( e'8. c16 ) c8 r}{s4 s8 \f -\tweak #'minimum-length #8 \< s16 s \! s8. \> s16 \! s8 \p}>>
  }
  \elseTag #'partScore {
    <<{c8 r g4-> \Arco ( e'8. c16 ) c8 r}{s4 s8 \f \< s16 s \! s8. \> s16 \! s8 \p}>>
  }

  R1
  r4 des8 \Pizz \pp r des r r4
  R1
  r4 des8 \pp r des r r4
  R1
  r4 ees-- \pp \Arco ( ees-- ) r8 e8 \Pizz

  \tag #'partScore {
    r <<{f8}{s16 s -\tweak #'minimum-length #8 \cresc}>> r8 g \< r a r bes \!
  }
  \elseTag #'partScore {
    r <<{f8}{s16 s \cresc}>> r8 g \< r a r bes \!
  }

  r b c4 \fz r2
  R1
  r2 c,8-- \Arco \f r r4
  c16-> \ff c-> r8 r4 c8 r r4
  r2 r4 r16 bes \p ( c des )
  a16 ( bes des a bes \dim des a bes ) \times 2/3 {des8 ( c a} bes4 )
  g2 \pp ( ges )

  \mark \default    % Mark B - mesure 32

  \tag #'partScore {
    <<{f2. f4 ~}{s2.\< s8 \fz -\tweak #'minimum-length #8 \> s16 s16 \!}>>
    f8 \p \bindDynamics r f'\Pizz \pp r r4 f8 r
    <<{f,2. \Arco f4 ~}{s4 s -\tweak #'minimum-length #10 \< s s8 \fz \dim s16 s \!}>>
  }
  \elseTag #'partScore {
    <<{f2. f4 ~}{s2.\< s8 \fz \> s16 s16 \!}>>
    f8 \p \bindDynamics r f'\Pizz \pp r r4 f8 r
    <<{f,2. \Arco f4 ~}{s4 s\< s s8 \fz \dim s16 s \!}>>
  }

  f8 r f'\Pizz \pp r r4 f8 r
  f,1 \pp \Arco ~
  f ~
  f4 r r2
  r2 g'4-> \ff c,->
  f,8-> \leftDynamic f \Marcato aes16-> aes-> r8 r des-> bes16-> bes-> r8
  r ees aes,16-> aes-> r8 r des ges,16-> ges-> r8
  r bes! aes16-> \> aes-> r8 r des ges,16 ges \! r8
  r g! \p aes16 \> aes r8 r aes aes16 aes \! r8

  \mark \default    % Mark C - mesure 44

  des8 \pp r r4 r2
  R1 * 2

  \tag #'partScore {
    cis8 \Pizz \bracketedP \bindDynamics r a \bracketedDim r b \! r b r
  }
  \elseTag #'partScore {
    cis8 \Pizz \bracketedP r a \bracketedDim r b \! r b r
  }

  e \bracketedPP r r4 r2
  R1 * 2
  e8 \p r c \dim r d r d r
  g,[\pp b] d[g,] g'[b,] d[g,]
  g'[b] g[dis] \cresc b[g'] dis [b] \!
  g \mf \< b dis g, e'-^ b eis eis, \!
  fis \ff \Arco ( b ) d? ( fis ) e? ( e' ) cis ( e, )
  dis ( fis ) a ( c! ) bis, ( a' ) fis ( bis, )
  <<{cis4. r8 fis,4. r8}{s4 s \dim s \!}>>
  gis4. \p \dim r8 fis2 (
  e1 ) \pp ~
  e ~
  e ~

  \tag #'partScore {
    <<{e1}{s4 s s -\tweak #'minimum-length #9 \cresc}>>
  }
  \elseTag #'partScore {
    <<{e1}{s4 s s \cresc}>>
  }

  \mark \default    % Mark D - mesure 63

  e'16 \ff r8. r e16-. e-. r8. r e16 \p
  e16 r8. r4 r2
  R1 * 2

  \tag #'partScore
    \pageTurn  % pour améliorer la mise en page

  \tag #'partScore {
    r8. e16-. ( \p -\tweak #'minimum-length #8 \< [e16-.]) r r e-. ( \f [e-.]) r8. r4
    r2 r4 e,4 \fz ~
    <<{e1}{s8 s -\tweak #'minimum-length #8 \> s4 s8 s8. s16 \bindDynamics s16 \p \bindDynamics}>>
    f2 \pp ( bes! )
    <<{c1}{s4 -\tweak #'minimum-length #8 \> s4 s4 s8 s8 \!}>>
  }
  \elseTag #'partScore {
    r8. e16-. ( \p \< [e16-.]) r r e-. ( \f [e-.]) r8. r4
    r2 r4 e,4 \fz ~
    <<{e1}{s8 s \> s4 s8 s8. s16 \! s16 \p}>>
    f2 \pp ( bes! )
    <<{c1}{s4 \> s4 s4 s8 s8 \!}>>
  }

  f,8 \p r f \Pizz f' g, r a a'
  bes, r bes bes' bes, r bes bes'
  bes, \fz r bes bes' bes, \dim r bes bes'
  bes, \p \bindDynamics r bes \> bes' bes, r bes bes' \!
  bes, r bes \pp bes' bes, r bes bes'
  a, r \cresc d d' d, r des des'
  c, \bracketedF r g \Arco \< g' e ( g ) bes8.. \dim ( des32 )
  des8 \pp r8 r4 r2

  \tag #'partScore
  {
    r4 des,-- \pp -\tweak #'minimum-length #6 ( ^\markup {\italic "ten."} des-- ) ^\markup {\italic "ten."} r
  }
  \elseTag #'partScore
  {
    r4 des-- \pp ^\markup {\italic "ten."} ( des-- ) ^\markup {\italic "ten."} r
  }

  r bes-- ^\markup {\italic "[sim.]"} ( bes-- ) r
  r des-- ( des-- ) r
  r <<{f-- (}{s8 s \cresc}>> f4-- ) r
  r aes-- ( aes-- ) r
  ges16-> \ff f-> _\markup {\italic "  pesante"} ees8-> e-> g-> aes16-> g-> f8-> fis-> a->
  bes16-> a-> g8-> gis-> b-> cis4-> cis,->
  d-> c!8-> f,-> bes4-> a8-> d->
  g,4-> bes-> c8 r r4
  c16^^ \ff c^^ r8 r4 c16^^ c^^ r8 r4
  <<{c2-> c8-> bes-> g-> c->}{s2 s4 \< s8 s16 s32 s \!}>>

  \tag #'partScore
  {
    <<{f,1:32}{s4 \ffz -\tweak #'minimum-length #15 \dim}>>
    <<{f1}{s4 \p -\tweak #'minimum-length #15 \dim}>>
    <<{f1 ~}{s4 \pp -\tweak #'minimum-length #15 \dim}>>
  }
  \elseTag #'partScore
  {
    <<{f1:32}{s4 \ffz s4 s4 s4 \dim}>>
    <<{f1}{s4 \p s4 \dim}>>
    <<{f1 ~}{s4 \pp s s \dim}>>
  }

  f1 ~
  f4 r r2
  R1 * 2
  r2 f2 \ppp
  r f
  r f \ppp ~
  <<{f1 ~}{s4 s \dim s \!}>>
  f2 ~f4 r
  R1
  \time 2/4
  R2
  \time 4/4
  R1
  f \ppp ~
  f ~
  f2 ~ f8 r r4
  r2 f \ppp
  f1 \fermata

  \bar "|."
}

voiceSgMbContrabasso = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 "Contrabassi"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "Cb."
  \set Staff.midiInstrument = "string ensemble 1"
  \key f \major
  \clef bass
  \SgMbContrabasso
}

quoteScoreSgMbContrabasso = \SgMbContrabasso
