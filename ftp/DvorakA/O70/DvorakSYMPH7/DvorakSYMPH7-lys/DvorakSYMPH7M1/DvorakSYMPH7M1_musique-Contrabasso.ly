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
  * Fichier de notes, Contrebasse                                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMaContrabasso =
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

  \transposition c
  d2.:32 \pp
  d:
  d:
  d:
  d:
  <<{d:}{\bracketedHairpin s4 \< s s16 s s \! }>>

  \tag #'conductorScore \tag #'pocketScore {
    \footnote \markup {"(1)"} #'(0.5 . -3) #'BarLine \markup {\italic "1 - According to N. Simrock 1885"} \default
  }

  d2.:
  d8 r r r4 r8

  \tag #'partScore
     \noPageTurn

  r4 r8 c \Pizz r r

  \tag #'partScore
     \noPageTurn

  r4 r8 c r r
  R1 * 6/8 * 2

  \tag #'partScore
     \noPageTurn

  r8 fis,-. \Arco \pp \< a-. r c-. ees-. \!
  c'8-.  ees,16-. \f \< ([c-.])a'8-. c,16-. ([a-.])ees'8-. a16-. ([fis-.]) \!
  d'8-. \ff r r ees, r r

  \tag #'partScore
     \noPageTurn

  r4 r8 r4 g,8 \ff
  R1 * 6/8 * 5

  \tag #'partScore
     \noPageTurn

  r4 r8 b4. \ff
  c4. \fz \< ~ c8 \! r r

  \tag #'partScore
     \noPageTurn

  \override DynamicLineSpanner #'staff-padding = #2
  r4 r8 r4 a16 \f fis

  \mark \default    % Mark A - mesure 25

  c'8 \fz r a16 fis c'8 \fz r a16 \p fis
  c'8 ( ees \< fis ) a ( c ees ) \!
  d \f ( bes g ) d ( bes g )
  cis2. \fz
  \dynamicLineSpannerStandard
  d4-| r8 e4-| r8
  f4-| r8 g4-| r8
  a2.^^ \ff
  a,4. ~ a4 a8-.
  d2.-> \fz ~
  d
  d-> \fz ~

  \tag #'partScore
     \noPageTurn

  <<{d ~}{s8 s \< s4 s8 s8 \!}>>
  d8 d-. \f \< [f-.] bes4-> \! a8-> ~
  a aes-. g-. fis-. g-. f-.
  ees4.-> \fz d-> \fz
  c4.-> \fz bes!-> \fz \> ~
  bes4 \! r8 r4 r8

  \mark \default    % Mark B - mesure 42

  ees8 \Pizz r r g, r r
  f r r aes r r
  g r r g' r r
  f \cresc r r aes, r r\!
  <<{g4. \Arco des'4 bes8}{s8 s4 \< s s16 s \!}>>
  aes4-> \f r8 aes'4-> r8
  aes,4-> r8 ces'16 \fz ces r8 r
  bes,4-> r8 bes'4-> r8
  a,!16 \fz a r8 r a'4 \fz r8
  g4.-> e->
  cis-> a8 r r
  R1 * 6/8

  \tag #'partScore
    \pageTurn  % pour améliorer la mise en page

  \mark \default    % Mark C - mesure 54

  r4 r8 r4 d'16-. \ff a-.
  d,2.:32
  d4.: d32 d d d r16 a-. a8-.
  f4.^^ ~ f8 r16 a-. a8-.
  f4.^^ ~ f8 r r
  f8 ( bes \< des ) f ( bes des ) \!
  f ( des bes ) f ( des bes )
  f8-. r r r4 r8
  R1 * 6/8 * 5

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuring #"scoreSgMaVioloncello" #UP {s4 * 0 ^\markup { \fontsize #-3 "Violoncello"} R1 * 6/8 * 2 r4.}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 2
    r4 r8
  }

  f4. \fz \> ~
  <<{f2. ~}{s4 s \!}>>
  f8 \pp r r r f' \Pizz r8

  \tag #'partScore
    \noBreak
  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #1
  \TempoIRit

  R1 * 6/8
  \tag #'partScore
    \noBreak
  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIinTempo

  \mark \default    % Mark D - mesure 73

  R1 * 6/8 * 3
  \noBreak
  r4 r8 c4. \Arco \fp \> ~
  c8 \! r r r4 r8
  c4. \pp ~ c8 r r
  R1 * 6/8

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #3
    r4 r8 c4. \p ( f,2. \bracketedPP ) ~
    \dynamicLineSpannerStandard
  }
  \elseTag #'partScore {
     r4 r8 c'4. \p ( f,2.
    _\footnote \markup {"(4)"} #'(1 . 0) \markup {\italic "4 - According to N. Simrock 1885"} \bracketedPP
    ) ~
  }

  f8 r r r4 r8
  r bes' \Pizz \pp f r c' bes
  r f' d r c ees
  r \< ees d r ees d
  
  <<{r ees r c,4.\Arco ~}{s4. 

  \tag #'partScore {
    s4 \fp -\tweak #'minimum-length #8 \>
  }
  \elseTag #'partScore {
    s4 \fp \>
  }
  s16 s \!}>>
  c8 \! r r r4 r8
  c \bracketedPP \Pizz r r c r r
  c r r r4 r8
  c r r c r r
  c r r r4 r8
  R1 * 6/8

  \mark \default    % Mark E - mesure 93

  b8 \p r r b' r r
  <<{a, r r a' r r}{s8 \< s s16 s \!}>>
  \tag #'partScore {
    <<{g,8 r r g' r r}{s8 \mf -\tweak #'minimum-length #10 \< s s16 s \!}>>
  }
  \elseTag #'partScore {
    <<{g,8 r r g' r r}{s8 \mf \< s s16 s \!}>>
  }

  ges8 \f \Arco r r r4 r8
  R1 * 6/8 * 5
  r4 r8 ees4. \fz \> ~
  ees \! ~ ees8 r8 r
  R1 * 6/8 * 3

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #2
    <<{a,4. ( d )}{s4 \f s \> s8 s16 s \!}>>
    <<{g,4. ( c )}{s4 -\tweak #'minimum-length #10 \< s16 s \!}>>
    d8 \f r r ees \Pizz r r
    \dynamicLineSpannerStandard
  }
  \elseTag #'partScore {
    <<{a,4. ( d )}{s4 \f s \> s8 s16 s \!}>>
    <<{g,4. ( c )}{s4 \< s16 s \!}>>
    d8 \f r r ees \Pizz r r
  }

  d \dim r r ees r r
  <<{des r r ees r r}{s4. \p \> s8 s8 s16 s16 \!}>>
  des8 \pp r r ees r r

  \mark \default    % Mark F - mesure 113

  R1 * 6/8 * 5
  f8 \Arco \mf r r f'-> f,16 f f8
  f, r r f''-> \< f,16 f f8 \!
  f, \cresc r r f'' r r
  f,, \< r r f'' \! r r
  f,, \f r r f' r r
  bes,4.-> \ff bes'->
  a2.
  bes4.-> f'->
  fis-> ~fis16 cis a fis cis a

  \mark \default    % Mark G - mesure 127

  ges2.:32
  ges:
  f8-. \ff bes-. bes' ~ bes bes, bes' ~
  bes bes, bes' ~ bes bes, bes' ~
  bes bes, bes' ~ bes bes, bes' ~
  bes bes, bes' bes,4-> bes'8
  bes,4. \fz ~ bes4 bes'8
  bes,4. \fz ~ bes4 bes'8
  bes,8 r r bes r r
  bes r r bes r g
  a' \ff ( a, ) r a' ( a, ) r
  a r r a' r r

  \mark \default    % Mark H - mesure 139

  a, r r r a' \ff ( a, )
  r4 r8 r g' ( g, )
  r4 r8 r fis' \dim ( fis, )
  r4 r8 r e'' ( e, )

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #2
    r4 r8 r d' \mp ( d, )
    cis \p r b \dim r a r
    fis2. \pp ~
    \dynamicLineSpannerStandard
  }
  \elseTag #'partScore {
    r4 r8 r d'' \mp ( d, )
    cis \p r b \dim r a r
    fis2. \pp ~
  }

  fis ~
  fis8 r r r4 r8
  R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  b'2. \pp ~
  b
  b, ~
  b  ~
  b4 r8 r r b8 \pp
  b4-. r8 r r b
  b4 ( ais8 ) d4 ( cis8 )
  fis ( \< [d]) b' ([fis]) d' ([b])\!

  \tag #'partScore {
    <<{
      c!8 \f ( c, ) c4 r8 r
      c'8 \ff ( c, ) c4 r8 r
      c'8 ( c, ) c4 r8 r
      c'8 ( c, ) c4 r8 r
      c'8 ( c, ) c4 r8 r
      c'8 ( c, ) c4 r8 r
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeat #'transparent = ##t
        \override PercentRepeatCounter #'staff-padding = #2
        \repeat percent 6 {s2.}
    }>>
  }
  \elseTag #'partScore {
    c'!8 \f ( c, ) c4 r8 r
    c'8 \ff ( c, ) c4 r8 r
    c'8 ( c, ) c4 r8 r
    c'8 ( c, ) c4 r8 r
    c'8 ( c, ) c4 r8 r
    c'8 ( c, ) c4 r8 r
  }

  g''8 ([g,]) g ([g,]) r r
  f'' ([f,]) f ([f,]) r r

  \mark \default    % Mark I forcé - mesure 165e

  e' r r r4 r8
  R1 * 6/8
  e'8 \Pizz \fp e, r r4 r8
  R1 * 6/8
  f'8 \p f, r r4 r8
  R1 * 6/8 * 4
  bes8 \pp r r r4 r8
  R1 * 6/8 * 4
  r4 r8 r r aes16 \ff \Arco bes
  ces8 ( bes ces ) aes ( bes des )
  ces ( bes ces ) aes4 r8
  R1 * 6/8
  r4 r8 r r f16-. \ff ( g!-. )
  aes8 ( g aes ) f ( g bes )
  aes ( g aes ) f ( d aes )

  \mark \default    % Mark J - mesure 186

  f4. \ffz f'->
  f-> ~ f4 f,8
  f'4. \fz ~ f4 f,8
  f'4. \fz ~ f4 f,8
  f'4. \fz ~ f4 f8
  ees4 c16-| d-| ees8 ( d ees )
  c4-> \fz c16-| d-| ees8 ( d ees )
  c4-> \fz c16-| d-| ees8 ( d ees )
  cis4-> \fz cis16-| dis-| e!8 ( dis e )
  cis4-> \fz cis16-| dis-| e8 ( dis e16 a )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  d,!2.:32 \fff
  d4.: d4: a16-> a->
  f4.^^ ~ f8 [r16 a16 a8]
  f4.^^ ~ f8 [r16 f f8]
  f8 \< ( bes des ) f ( bes des )
  f8 ( des bes \! ) f ( des bes )f r r r4 r8
  R1 * 6/8 * 2
  b2.:32 \pp
  b:

  \tag #'partScore {
    <<{b:}{s4. -\tweak #'minimum-length #6 \< s8 s8 s8 \!}>>
    b2.( \fz
    <<{bes2. )}{s4. -\tweak #'minimum-length #6 \< s8 s8 s16 s16 \!}>>
  }
  \elseTag #'partScore {
    <<{b:}{s4. \< s8 s8 s8 \!}>>
    b2.( \fz
    <<{bes2. )}{s4. s8 s8 s16 s16 \!}>>
  }

  a4. \f a4 ( ais8 )
  ais4 \> ( b8 ) b4 ( c!8) \!
  <<{c4. cis ~}{s4. \p \> s4 s16 s \!}>>
  cis2. \pp

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  d8 r r r4 r8
  R1 * 6/8 * 2
  r4 r8 e,4. \fz ~
  <<{e e ~}{s4. \> s8 s8 s16 s16 \!}>>

  \tag #'partScore {
    <<{e2.}{s4 \p -\tweak #'minimum-length #8 \> s4 s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{e2.}{s4 \p \> s4 s8 s \!}>>
  }

  e2. \pp
  <<{e2.}{s4 \< s s8 s16 s \!}>>
  <<{e2. ~}{s4 \< s s8 s16 s \!}>>
  e8 r r r4 r8
  dis' \Pizz \mp r r r4 r8
  cis \dim r r r4 r8
  b \pp r r r4 r8
  bes \Arco \f r r r4 r8
  R1 * 6/8 * 9

  \tag #'partScore
    \pageTurn  % pour améliorer la mise en page

  \mark \default    % Mark M - mesure 237

  R1 * 6/8
  cis4. \f ( fis, )
  b ( e, )
  fis4 \Pizz r8 g4 r8
  fis4 r8 g4 \dim r8
  \tag #'partScore {
    f4 \p r8 g4 -\tweak #'minimum-length #9 \>  r8 \!
  }
  \elseTag #'partScore {
    f4 \p r8 g4 \>  r8 \!
  }

  f4 \pp r8 g4 r8
  R1 * 6/8 * 3
  gis2. \pp \Arco (

  \bar "||"    % mesure 248

  \key d \minor
  a4 ) d8 \p a4. ~

  \tag #'partScore {
    a4 d8 a4. -\tweak #'minimum-length #9 \cresc
  }
  \elseTag #'partScore {
    a4 d8 a4. \cresc
  }

  a4. \< ~ a8 d ( a ~
  a4. ) ~ a8 d ( a ~
  a4. ) ~ a8 d ( a ) \!
  a2.:32 \ff
  a:
  a:
  a4.: \ff
  g:
  g: f:

  \tag #'partScore {
    \leftDynamic f'4.-> \bracketedFzNconForza -\tweak #'minimum-length #11 ~ f8 d-> ees->
  }
  \elseTag #'partScore {
    \leftDynamic f4.-> \bracketedFzNconForza ~ f8 d-> ees->
  }

  f4.-> \fz ~ f8 d-> ees->
  f4.-> \fz ~ f8 d-> ees->
  f4.-> \fz ~ f8 d-> ees->
  f4.-^ \fz ~ f8 d-^ e!-^
  f4.-^ \fz ~ f8 d-^ e-^
  f-> d-. e-. f-> d-. f-.
  bes,!2.:32

  \mark \default    % Mark N - mesure 266

  f: \fff
  f4.: f8 r r

  \tag #'partScore
    \noBreak
  \TempoIPaPAcc

  R1 * 6/8

  \tag #'partScore
    \noBreak

  r4 r8 r4 f'16-. \ff a-.
  d8-> f, a d-> f, a
  d-> f, a d-> f, a
  d^^ \ff d, f16 a c8^^ d, fis16 a
  c8^^ d, fis16 a c8^^ d, fis16 a
  b8^^ d, g16 a b8^^ d, g16 b
  cis8^^ d, g16 bes cis8^^ d, g16 bes

  \mark \default    % Mark O - mesure 276

  d8 d,4 \fz ~ d4.
  d'8 d,4-> d'8 d,4->
  d'8 d,4-> d'8 d,4->
  d'8 d,4-> d'8 d,4->
  d4. \ff ~ d4 cis8 ~
  cis c-^ b-^ bes-^ a-^ aes-^
  g-^ f-^ e-^ f-^ g-^ a!-^
  d-. a'-. d-. a-. \> d-. a-. \!
  d, r r r4 r8
  r a-. \p \> d-. a-. d-. a-. \!
  d-. a-. \pp d-. a-. d-. a-.

  \mark \default    % Mark P - mesure 287

  \tag #'partScore
    \once \override Score.MetronomeMark #'padding = #2 % Pour éviter la confusion avec les répétitions

  \TempoITempoPrimo

  \tag #'partScore {
    <<{
      d2. ~
      d ~
      d ~
      d ~
      d ~
      d ~
      d ~
      d \dim ~
      d ~
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeat #'transparent = ##t
        \override PercentRepeatCounter #'staff-padding = #1
        \repeat percent 9 {s2.}
    }>>
  }
  \elseTag #'partScore {
    d2. ~
    d ~
    d ~
    d ~
    d ~
    d ~
    d ~
    d \dim ~
    d ~
  }

  d4 \! r 8 r4 r8
  r4 r8 r4 d8 \pp
  d4. r4 r8
  R1 * 6/8 * 2

  \mark \default    % Mark Q - mesure 301

  R1 * 6/8 * 2
  d2.:32 \pp
  d:
  d:
  d: \dim
  d: \pp
  d:

  \TempoIPocoRit    % Mesure 309

  d4 r8 r4 r8
  d4 r8 r4 r8
  d'4 \ppp r8 d4 r8
  d4. r4 r8
  d,4 r8 d4 r8
  d2. \fermata

  \bar "|."
}

voiceSgMaContrabasso = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 "Contrabassi"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "Cb."
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef bass
  \SgMaContrabasso
}

quoteScoreSgMaContrabasso = \SgMaContrabasso
