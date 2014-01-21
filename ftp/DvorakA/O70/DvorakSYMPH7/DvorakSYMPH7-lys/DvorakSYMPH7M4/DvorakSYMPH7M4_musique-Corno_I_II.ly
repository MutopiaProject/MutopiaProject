%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement IV - Finale allegro                       *
  * Fichier de notes, Cors 1 et 2, parties                              *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Cor 1                                                         *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMdCornoI = \relative c' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  \transposition f

  \override DynamicLineSpanner #'staff-padding = #2
  e2 \p ( e' ) \<
  dis2. \fz ( c4 )
  a ( b c \> a8 e \!
  gis2. \dim a4 ) \!
  f ( dis e e-- )
  c2 \pp ( d )
  \dynamicLineSpannerStandard
  b1 ~
  b
  R1 * 13
  <<{dis'1 (}{s4 \fz \bindDynamics s8 s8 \> s4 s8 s16 s \!}>>
  e2. ) \p r4
  R1
  c1 \fp \> ~
  c2. \p r4
  R1 * 13
  r4 c8 \f c fis,4 g8 g
  a4 b8 b c-. \< cis-. d-. dis-. \!
  e4 \ff r r2

  \mark \default

  dis1-^ \ff ~
  dis2 e->
  e2.-> f4-.
  f2-. e-.
  e4 r d r
  b r r2
  a4 r b r
  b r r2
  b4 r d r
  cis r r2
  b4 r e r
  e r r2
  cis4 r d r
  cis r r2
  c!4 r cis r
  e1 \ff
  e2-^ d ~
  d1 ~
  d4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  \once \override Voice.MultiMeasureRest #'minimum-length = #12
  R1

  \once \override Score.MetronomeMark #'X-offset = #2
  \noBreak
  \TempoIVIT

  \mark \default

  R1 * 4
  d!2-> \f dis->
  d!-> r
  r4 e-. \ff c-. e-.
  a,2. b4-.
  c-. d-. c-. d-.
  b-. c-. d2->
  d-> d->
  d4-. d2-> r4
  c2-> \ff c->
  bes2.-> r4
  R1 * 2
  d2-> \ff d->
  c2. r4
  R1 * 2
  b4 \f r r2
  R1

  \mark \default

  r4 d \p r c \dim
  r b r c \!
  b-^ \f r r2
  R1 * 12

  \bar "||"

  \mark \default

  R1 * 13

  % Citation polyphonique, seule la première voix est rapportée.
  % On rajoute manuellement la seconde voix en descendant les silences multi-mesure
  % et en réduisant la taille des éléments : #'font-size = #-4

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuring #"scoreSgMdCornoIII" #UP {s4 * 0  -\tweak #'extra-offset #'(0 . -2)
      ^\markup { \fontsize #-3 "Corni III IV"}
    \poly {\override MultiMeasureRest #'staff-position = #-6 R1 * 3}
      {
        \override NoteHead #'font-size = #-4
        \override Stem #'length = #3
        \override Slur #'thickness = #1
        \override Accidental #'font-size = #-4
        s4 a ( gis2
        a4 ) s s2
        s4 a ( gis2 )
      }
    }
    \oneMMRNumberOn
  }
  \elseTag #'partScore
  {
    \oneMMRNumberOff
    R1 * 3
    \oneMMRNumberOn
  }

  r2 b-^\f ~
  b1 ~
  b2 b-> \fz ~
  b2. r4
  R1 * 2

  \mark \default

  R1 * 7
  b2:8 \ff b:
  b: b:
  cis1-> \fz
  dis-> \fz
  b2:8 \ff b:
  b: b:
  c1-> \fz
  c-> \fz
  b8 \ff b b4.-> b8 b4-> ~
  b8 b b4-> ~ b8 d d4-> ~
  d8 d d4-> ~ d8 c c4-> ~
  c8 b b4.-> b8 b4-> ~
  b8 b b4.-> b8 b4-> ~
  b8 b b4-> ~ b8 \< c8 e4-> \! ~
  e8 d d4.-> c8 c4 ~
  c8 b b4.-> b8 b4

  \bar "||"

  \mark \default

  b4 r r2
  R1 * 17

  \noBreak
  \TempoIVPRit

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdFlautoI" #UP {s4 * 0  -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Flauto I"} R1 * 4}
  \oneMMRNumberOn

  f1 \pp ~
  f ~
  f4 r r2
  R1 * 18

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoIII" #UP {s4 * 0  -\tweak #'extra-offset #'(0 . -1)
    ^\markup { \fontsize #-3 "Corno III"} R1 * 2}
  \oneMMRNumberOn

  
  r8 \dynamicSpannerOff c'-. \p \cresc bes-. a-. bes4 c8-. des-.
  r d!-. \< c!-. b!-. \! b4 ( a )
  r2 fis'8 \f fis, fis r
  r2 fis'8 fis, fis r
  R1 * 4

  \mark \default

  R1 * 4
  b,1 \f ~
  b2 b4. b8
  b'1 \fz
  fis \fz
  b-^ \ff
  R1 * 3
  c!1-\parenthesize-^ \ff
  R1 * 5

  \mark \default

  R1 * 8
  r4 ees8 \ff ees a,4 c8 c
  b4 r r2
  r4 f'8 \f f bes,4 d8 d
  cis4 r r2
  r4 des8 \f des g,4 bes8 bes
  a4 r r2
  R1 * 6
  r4 e'8 \mp e dis2
  e8 \> e dis2 e8 e \!
  dis2 \pp e8 e dis4 ( ~

  \tag #'quoteCornoII {
    dis \> e2 dis4 \!)
  }
  \elseTag #'quoteCornoII {
    dis \> e2 dis4 \!
  }

  \mark \default

  cis ) r r2
  R1 * 4
  <<{cis1 ~}{\rightDynamic s4 \pp \> s s s8 s16 s \!}>>
  cis1 ~
  cis (
  d4 ) r r2
  R1 * 4
  <<{d1 ~}{\rightDynamic s4 \fp \> s s s8 s16 s \!}>>
  d1 \pp ~
  d (
  ees4 ) r r2
  R1 * 13

  \bar "||"

  \mark \default

  e1 \ff (
  c4 ) r c r
  c r c r
  c %{\ff%} d8-. e-. f4 b,8-. c-.
  d4-. b-. gis-. e-.
  c' r d r
  b1-^
  R1 * 13

  \mark \default

  R1 * 2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdClarinettoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Fl. & Clar."} R1}
  \oneMMRNumberOn

  fis'2 ( \mp \> f ~
  <<{f e ~}{s4 s s s8 s16 s \!}>>
  e1 \pp ~
  e )
  R1 * 8

  \bar "||"

  R1 * 8
  \pageTurn

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoIII" #UP {s4 * 0  -\tweak #'extra-offset #'(0 . -1)
    ^\markup { \fontsize #-3 "Corno III"} R1 * 5}
  \oneMMRNumberOn

  <<{r4 \rightDynamic d4 ( cis2}{s4 s \mf \< s8 s \! s4 \>}>>
  d4 ) \! r r2
  \override DynamicLineSpanner #'staff-padding = #2
  <<{r4 \rightDynamic d4 ( cis2}{s4 s \< s8 s \! s4 \>}>>
  d4 ) \! r r2
  R1 * 2
  r2 c! ( \f ~
  <<{c4 b c cis )}{s8 s \<}>>
  <<{d4 ( cis d dis )}{s4 s s s8 s \!}>>

  \mark \default

  e2 \ff gis4 ( fis8 e )
  \dynamicLineSpannerStandard
  e2 fis4 ( e8 d )
  cis2 e4 ( d )
  cis ( e ) gis ( fis8 e )
  e2 fis4 ( e8 d )
  cis4 ( a' ) fis ( d )
  cis ( a ) fis'4. gis,8
  a4 r r2
  <<{R1}{s4 s s s8 s -\tweak #'extra-offset #'(2 . 0.8) \ff}>>
  \noBreak
  e'1-> \fz
  d-> \fz
  cis8 cis cis cis cis2:8
  cis: cis:
  c!1 \fz
  d \fz
  e4 \f r d r
  c r d r
  e r d r
  c r b r
  c r e-. d-.
  c r f! r
  e r d r
  c r b r

  \bar "||"

  \mark \default

  c4 r r2
  R1 * 8
  c1-> \ffz
  cis-> \ffz ~
  cis
  e-^ \ffz ~
  e
  d-^ \ffz ~
  d
  ees-^ \ffz
  ees-^ \ffz

  \mark \default

  e4 r r2
  R1 * 5
  r4 bes8 \ff bes e,4 g8 g
  r4 bes8 bes e,4 g8 g
  r2 r8 d' \p d d
  r8 c4.:8 r8 d4.:
  r8 c4.: \> r8 d4.:
  r8 <<{c4.:}{s8 s \!}>> r8 c4.: \pp
  r8 c4.: r8 b!4.:
  e1 \ff ~
  e
  e -\parenthesize -^ \ffz ~
  e
  e -\parenthesize -^ \ffz ~
  e
  e-^ \ffz (
  d )
  g-^ \ff
  f2 cis
  d cis
  d2. d4
  r d r d
  r f f f
  d r r2

  \mark \default

  f!4-^ e-^ r2
  e4 r dis r
  e e, r2

  \TempoIVPAn

  r2 e' \ff
  r c
  r e
  r c
  e a,
  a1-^ ~
  a4 r r2
  R1 * 2
  <<{
    e'4 \f r e r
    \repeat unfold 5 {e r e r}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #1
      \repeat percent 6 {s1}
  }>>

  \TempoIVMMaes

  a,1-^ \ff
  e'-^
  d2.-> e4->
  f1->
  e-^
  d-^
  e-^ \fz
  e-^ \fz
  e-^ \fz
  e4 \ffz r r2

  \bar "|."
}

%{
  *****************************************************************
  *       Cor II                                                  *
  *****************************************************************
%}

SgMdCornoII = \relative c'' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
\cueEventType  \oneMMRNumberOn

  \TempoIV

  \transposition f
  R1
  <<{a1~}{s4 \fz -\tweak #'minimum-length #7 \> s s s8 s16 s \!}>>
  a4 r r2
  R1 * 18

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -1)
    ^\markup { \fontsize #-3 "Corno I"} R1 * 2}
  \oneMMRNumberOn

  R1
  a1 \fp \> ~
  a2. \p r4
  R1 * 13
  r4 c8 \f c fis,4 g8 g
  a4 b8 b c-. \< cis-. d-. dis-. \!
  e4 \ff r r2

  \mark \default

  dis1-^ \ff ~
  dis2 e->
  e2.-> f4-.
  f2-. e-.
  e4 r d r
  b r r2
  a4 r b r
  e, r r2
  b'4 r d r
  cis r r2
  b4 r b r
  cis r r2
  cis4 r d r
  cis r r2
  c!4 r cis r
  gis1 \ff
  gis2-^ gis ~
  gis1 ~
  gis4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  R1

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  \mark \default

  R1 * 4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Corno I"} R1 * 2}
  \oneMMRNumberOn

  r4 e-. \ff c-. e-.
  a2. b4-.
  c-. b-. a-. a-.
  gis-. a-. b2->
  e,-> f!->
  fis4-. g!2-> r4
  c,2-> \ff c->
  g'2.-> r4
  R1 * 2
  d2-> \ff d->
  a'2. r4
  R1 * 2
  gis4 \f r r2
  R1

  \mark \default

  \override DynamicLineSpanner #'staff-padding = #2
  r4 \dynamicSpannerOff b \p r g! \dim
  r gis r a \!
  gis-^ \f r r2
  \dynamicLineSpannerStandard
  R1 * 12

  \bar "||"

  \mark \default

  R1 * 13

  % Citation polyphonique, seule la première voix est rapportée.
  % On rajoute manuellement la seconde voix en descendant les silences multi-mesure
  % et en réduisant la taille des éléments : #'font-size = #-4

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuring #"scoreSgMdCornoIII" #UP {s4 * 0  -\tweak #'extra-offset #'(0 . -2)^\markup { \fontsize #-3 "Corni III IV"}
    \poly {\override MultiMeasureRest #'staff-position = #-6 R1 * 3}
      {
        \override NoteHead #'font-size = #-4
        \override Stem #'length = #3
        \override Slur #'thickness = #1
        \override Accidental #'font-size = #-4
        s4 a ( gis2
        a4 ) s s2
        s4 a ( gis2 )
      }
    }
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 3
  }

  r2 b,-^\f ~
  b1 ~
  b2 b-> \fz ~
  b2. r4
  R1 * 2

  \mark \default

  R1 * 7
  e2:8 \ff e: e: e:
  \override DynamicLineSpanner #'staff-padding = #2
  e1-> \fz
  fis-> \fz
  e2:8 \ff e:
  e: e:
  ees1-> \fz
  d-> \fz
  b'8 \ff b b4.-> b8 b4-> ~
  \dynamicLineSpannerStandard
  b8 b b4-> ~ b8 d d4-> ~
  d8 d d4-> ~ d8 c c4-> ~
  c8 b b4.-> b8 b4-> ~
  b8 b b4.-> b8 b4-> ~
  b8 b b4-> ~ b8 \< c8 e4-> \! ~
  e8 d d4.-> c8 c4 ~
  c8 b b4.-> b8 b4

  \bar "||"

  \mark \default

  b4 r r2
  R1 * 17

  \noBreak
  \TempoIVPRit

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \mark \default

%  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdFlautoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Flauto I"} R1 * 4}
  \oneMMRNumberOn

  f,1 \pp ~
  f ~
  f4 r r2
  R1 * 18

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoIII" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2) 
    ^\markup { \fontsize #-3 "Corno III"} R1 * 2}
  \cueDuring #"scoreSgMdCornoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Corno I"} R1 * 4}
  \oneMMRNumberOn

  R1 * 4

  \mark \default

  R1 * 4
  b1 \f ~
  b2 b4. b8
  b'1 \fz
  fis \fz
  b-^ \ff
  R1 * 3
  c!1-\parenthesize-^ \ff
  R1 * 5

  \mark \default

  R1 * 8
  r4 ees8 \ff ees a,4 c8 c
  b4 r r2
  r4 f'8 \f f bes,4 d8 d
  cis4 r r2
  r4 des8 \f des g,4 bes8 bes
  a4 r r2
  R1 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 * 4}
  \oneMMRNumberOn

  \mark \default

  R1 * 13

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 * 4}
  \oneMMRNumberOn

  R1 * 13

  \bar "||"

  \mark \default

  c1 \ff (
  a4 ) r a r
  a r a r
  c \ff d8-. e-. f4 b,8-. c-.
  d4-. b-. gis-. e-.
  a r bes r
  gis1-^
  R1 * 13

  \mark \default

  R1 * 15

  \bar "||"

  R1 * 22

  \mark \default

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Corno I"} R1 * 8}
  \oneMMRNumberOn

  <<{R1}{s4 s s s8 s -\tweak #'extra-offset #'(2 . 0) \ff}>>
  \noBreak
  e1-> \fz
  b'-> \fz
  \repeat unfold 16 a8	% 2 mesures
  aes1 \fz
  g \fz
  g4 \f r gis r
  a r b r
  c r b r
  a r gis r
  a r g!-. gis-.
  a r b r
  c r bes r
  a r gis r

  \bar "||"

  \mark \default

  a4 r r2
  R1 * 8
  c1-> \ffz
  cis-> \ffz ~
  cis
  cis-^ \ffz ~
  cis
  d,-^ \ffz ~
  d
  ees-^ \ffz
  ees-^ \ffz

  \mark \default

  e4 r r2
  R1 * 5
  r4 bes'8 \ff bes e,4 g8 g
  r4 bes8 bes e,4 g8 g
  r2 r8 bes \p bes bes
  r f f f r bes bes bes
  r f \> f f r bes bes bes
  r f f \! f r a \pp a a
  r a a \! a r e e e
  c'1 \ff ~
  c
  cis -\parenthesize -^ \ffz ~
  cis
  cis -\parenthesize -^ \ffz ~
  cis
  a-^ \ffz ~
  a
  a-^ \ff
  a2 g
  f g
  bes2. bes4
  r bes r bes
  r d d d
  b! r r2

  \mark \default

  b!4-^ g!-^ r2
  g4 r a r
  gis e r2

  \TempoIVPAn

  r2 e \ff
  r c
  r e
  r c
  e a
  a1-^ ~
  a4 r r2
  R1 * 2
  <<{
    e4 \f r e r
    \repeat unfold 5 {e r e r}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #1
      \repeat percent 6 {s1}
  }>>

  \TempoIVMMaes

  a1-^ \ff
  e'-^
  d2.-> e4->
  d1->
  cis-^
  a-^
  cis-^ \fz
  cis-^ \fz
  cis-^ \fz
  cis4 \ffz r r2

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdCornoI = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup \fontsize #3 \center-column {"Corno I" "in F"}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMdCornoI
}

voiceSgMdCornoII = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno II" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMdCornoII
}

quoteScoreSgMdCornoI = \SgMdCornoI
quoteScoreSgMdCornoI = \SgMdCornoI
