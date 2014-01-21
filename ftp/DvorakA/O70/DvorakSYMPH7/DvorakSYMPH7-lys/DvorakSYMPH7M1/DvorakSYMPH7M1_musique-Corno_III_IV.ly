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
  * Fichier de notes, Cors III et IV                                    *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  * Cor III                                                      *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMaCornoIII = \relative c {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \cueEventType
  \oneMMRNumberOn

  \transposition d	% Ligne à modifier pour obtenir une transposition vers une autre tonalité

  \TempoI

  <<{
    c'2. \pp ~
    \repeat unfold 6 {c2. ~}
    c8 r r r4 r8
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 7 {s2.}
  }>>
  R1 * 6/8 * 2

  \tag #'quoteCornoIV {
    r8. e'16 \p e,8 bes' r r
  }
  \elseTag #'quoteCornoIV {
    r8. e16 \p \Solo e,8 bes' r r
  }
  
  r8. e16 e,8 bes'8 r r
  R1 * 6/8 * 4
  r4 r8 des4. \f
  <<{c2.}{s4 \< s s8 s8 \!}>>
  c4. \> ~ c8 \! r r
  R1 * 6/8
  r4 r8 aes4. \ff
  ees'-> ees4 ees8
  bes4.-> ~bes8 r r
  R1 * 6/8

  \mark \default    % Mark A - mesure 25

  R1 * 6/8 * 2
  c4.-> \f aes!->
  b!-> ~ b8 r r
  c4 r8 c4 r8
  c4 r8 c4 r8
  g2.->
  g4. ~ g4 g8
  c r r r4 r8
  r c \f c c c f
  e r r r4 r8
  R1 * 6/8 * 2
  r4 r8 c \f c c
  f4.-> f->
  f8 r r r4 r8
  R1 * 6/8

  \mark \default    % Mark B - mesure 42

  R1 * 6/8 * 5
  r4 r8 r8. ges,16-. \f ges8-.
  ges4 r8 r4 r8
  r8. aes16 aes8 aes4 r8
  r8. g!16 g8 g4 r8
  g4 \f r8 g4 r8
  g4 r8 g r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  g'4-> \f g,-> g,8 g''16 \ff [g]
  g,2. ~ g4. ~ g8. g16-. g8-.
  g4.-^ ~ g8 [r16 g-. g8-.]
  g4.-^ ~ g8 r r
  R1 * 6/8 * 13

  \noBreak
  \TempoIRit

  R1 * 6/8

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIinTempo

  \mark \default    % Mark D - mesure 73

  R1 * 6/8 * 20

  \mark \default    % Mark E - mesure 93

  R1 * 6/8 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I & II"} R1 * 6/8 * 3}
  \oneMMRNumberOn

  R1 * 6/8 * 3

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaCornoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corni I & II"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  \override DynamicLineSpanner #'staff-padding = #2
  <<{g2.}{s4 \f -\tweak #'minimum-length #6 \> s4 s8 s16 s16 \!}>>
  c4. \< aes-> \!
  r8 r aes \f ~ aes4. ~
  <<{aes2.}{s4 \> s4 s8 s16 s16 \!}>>
  <<{aes2. -\tweak #'minimum-length #11 ~}{\rightDynamic s8 \p s8 \bracketedHairpin s -\tweak #'X-offset #-1.8 \> s
    s s16 s16}>>
  aes2. \pp
  \dynamicLineSpannerStandard

  \mark \default    % Mark F - mesure 113

  \once \override Voice.MultiMeasureRest #'minimum-length = #20
  <<{R1 * 6/8 * 10}{s1 * 0 ^\markup {"[Muta in B basso]"}}>>

  \transposition bes,
  c2. \ff ^\markup {"in B basso"}
  b!->
  c4.-> g'->
  aes ( ~ aes16 [ees ces aes ) ees'8]

  \mark \default    % Mark G - mesure 127

  c!2.-> ~
  c4. ~ c4 c8
  c \ff c, [c'] ~ c c, c' ~
  c c, c' ~ c c, c' ~
  c c, c' ~ c c, c' ~
  c c, c' c,4 c8
  c4. \fz ~ c4 c8
  c4. \fz ~ c4 c8
  g' r r c r r
  c r r e [r a,]
  b r ^\markup {"Muta in D"} r r4 r8

  \transposition d
  R1 * 6/8

  \mark \default    % Mark H - mesure 139

  r4 r8 r8 g4 \f ^\markup {"in D"}
  r4 r8 r g4
  r4 r8 r e'4 \dim
  <<{R1 * 6/8 * 3}{s1 * 6/8 * 0 \!}>>
  e2. \pp ~
  e
  d \ppp ~
  d

  \bar "||"    % mesure 149

  R1 * 6/8 * 8
  cis4. \ff e8-^ d-^ cis-^
  cis4. e4 cis16-. e-.
  \override DynamicLineSpanner #'staff-padding = #1.8
  d4. \fz ~ d4 cis16-. e-.
  d4. \fz ~ d4 d16-. d-.
  bes4. \fz ~ bes4 bes16-. bes-.
  bes4. \fz ~ bes4 bes16-. bes-.
  c4. \fz ~ c4 c16-. c-.
  cis4. \fz ~ cis4 cis16-. cis-.
  \dynamicLineSpannerStandard

  \mark \default    % Mark I forcé - mesure 165

  d8 r r r4 r8
  R1 * 6/8 * 12
  \tag #'partScore {
    <<{b4.:16 b:}{s4 \p \< s s8 s16 s16 \!}>>
    <<{b4.: b:}{s4 \< s s8 s16 s16 \!}>>
  }
  \elseTag #'partScore {
    <<{<b a>4.:16 <b a>:}{s4 \p \< s s8 s16 s16 \!}>>
    <<{<b a>4.: <b a>:}{s4 \< s s8 s16 s16 \!}>>
  }

  dis2. \ff ~
  dis4. ~ dis4 c!16 \f c
  c2.:
  c:
  c2.-> \ff ~
  c

  \mark \default    % Mark J - mesure 186

  c8-> bes-> c-> a-> bes-> des->
  c-> bes-> c-> a4 des16 bes
  c4.-^ ~ c4 des16 bes
  c4.-^ ~ c4 des16 bes
  c8-. bes-. c-. a-. bes-. c-.
  des4 r8 bes8 r r
  r4 r8 bes r r
  r4 r8 bes r r
  r4 r8 b! r r
  r4 r8 b r g16 g

  \bar "||"

  \mark \default    % Mark K - mesure 196

  c2.-> \ff ~
  c4. ~ c4 g8
  g4.-^ ~ g8 [r16 g g8]
  g4.-^ ~ g8 [r16 c c8]
  ces2. \ff ~
  ces
  des8 r r r4 r8
  R1 * 6/8 * 7
  r4 r8 <<{d4. ~}{\rightDynamic s4 \fz -\tweak #'minimum-length #6 \> s8 \!}>>
  d2. \dim ~
  <<{d2. ~}{s4 \p -\tweak #'minimum-length #6 \> s s8 s16 s \!}>>
  d2. \pp (

  \bar "||"

  \mark \default    % Mark L - mesure 214

  c8 ) r r r4 r8
  R1 * 6/8 * 13
  <<{g'2.}{s4 \p -\tweak #'minimum-length #4 \< s s8 s8 \!}>>
  <<{f2.}{s4 \fz -\tweak #'minimum-length #6 \> s s8 s16 s \!}>>
  e4. \p c4. -\tweak #'minimum-length #6 \dim ~
  <<{c2.}{s4 \> s s8 s16 s \!}>>
  c2. \pp ~
  c8 r r r4 r8
  R1 * 6/8 * 3

  \mark \default    % Mark M - mesure 237

  R1 * 6/8
  \override DynamicLineSpanner #'staff-padding = #2
  b2. \f
  e,4.-> \< a8-> b-| c-| \!
  c2.-^ ~
  <<{c}{s4 s8 s8 -\tweak #'minimum-length #6 \dim}>>
  <<{c2. ~}{s4 \p \> s s8 s16 s \!}>>
  c2. \pp
  \dynamicLineSpannerStandard
  R1 * 6/8 * 4

  \bar "||"    % mesure 248

  % citation par les trompettes : on relève d'une octave
  \tag #'quoteTrombaI \tag #'quoteTrombaII {
    g2. \p ~
    <<{g ~}{s4 s8 s8 \cresc}>>
    g2. ~
    g2. \mf ~
    <<{g2.}{s4 \< s s8 s8 \!}>>
  }
  \elseTag #'quoteTrombaI \elseTag #'quoteTrombaII {
    g,2. \p ~
    <<{g ~}{s4 s8 s8 \cresc}>>
    g2. ~
    g2. \mf ~
    <<{g2.}{s4 -\tweak #'minimum-length #7 \< s s8 s8 \!}>>
  }

  R1 * 6/8 * 3
  c4.-> \ff f->
  c'-> ~ c8 r r
  des4.-> \fz ~ des8 r r
  des4.-> \fz ~ des8 r r
  ees,4.-^ ~ ees8 r r
  ees4.-^ ~ ees8 r r
  f4.-^ ~ f8 r r
  f4.-^ ~ f8 r r
  c'2.-^
  ees8-^ c-^ d-^ ees-^ c-^ ees-^

  \mark \default    % Mark N - mesure 266

  ees2.-^
  g4.-^ ~ g4 ees16-. f-.

  \TempoIPaPAcc

  g8-> ees f g-> ees f
  \noBreak
  g-> ees f g-> ees c16 \bracketedFF [d]
  ees8-^ c-^ d-^ ees-^ c-^ d-^
  ees-^ c-^ d-^ ees-^ c-^ d-^
  ees4. e-> ~
  e2.
  f \fz
  f \fz

  \mark \default    % Mark O - mesure 276

  ees8 r r c,4.-^ ~
  c2. ~
  c ~
  c
  c'4. \ff ( ees4-^ ) d8 ~
  d g, c c c c
  c c g g c g
  c d [ees] d \> ees d \!
  ees-. g,-. [g-.] \dim g-. g-. g-.
  g g4 \p ~ g4. ~
  g8 g \pp [g] g g g

  \once \override Score.MetronomeMark #'X-offset = #11
  \TempoITempoPrimo

  \mark \default    % Mark P - mesure 287

  <<{
    \repeat unfold 9 {c,2. ~}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 9 {s2.}
  }>>
  c4 r8 r4 r8
  R1 * 6/8 * 4

  \mark \default    % Mark Q - mesure 301

  c'2. \pp ~
  c ~
  c8 r r r4 r8
  R1 * 6/8 * 5

  \TempoIPocoRit    % Mesure 309

  R1 * 6/8 * 2
  c4 \pp r8 c4 \dim r8
  c4. r4 r8 \!
  c4 r8 c4 r8
  c2. \fermata

  \bar "|."
}

%{
  ****************************************************************
  * Cor IV                                                       *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMaCornoIV = \relative c, {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
\cueEventType  \oneMMRNumberOn

  \transposition d'	% Ligne à modifier pour obtenir une transposition vers une autre tonalité

  \TempoI

  <<{
    c2. \pp ~|
    \repeat unfold 6 {c2. ~}|
    c8 r r r4 r8|
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 7 {s2.}
  }>>
  R1 * 6/8 * 2
  \clef treble

  \transposition d

  \oneMMRNumberOff
  
  \cueDuring #"scoreSgMaCornoIII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno III"}
    \override MultiMeasureRest #'staff-position = #6 R1 * 6/8 * 2}
  \revert MultiMeasureRest #'staff-position
  \oneMMRNumberOn

  R1 * 6/8 * 4
  \override DynamicLineSpanner #'#'staff-padding = #2.6
  r4 r8 des''4. \f
  <<{c2.}{s4 \< s s8 s8 \!}>>
  c4. \> ~ c8 \! r r
  \dynamicLineSpannerStandard
  R1 * 6/8
  r4 r8 f4. \ff
  ees-> ees4 ees8
  g4.-> ~ g8 r r
  R1 * 6/8

  \mark \default    % Mark A - mesure 25

  R1 * 6/8 * 2
  aes4.-> \f f->
  b,!-> ~ b8 r r
  c4 r8 c4 r8
  c4 r8 c4 r8
  g2.->
  g4. ~ g4 g8
  c r r r4 r8
  R1 * 6/8 * 4
  r4 r8 c \f c c
  f4.-> f->
  f8 r r r4 r8
  R1 * 6/8

  \mark \default    % Mark B - mesure 42

  R1 * 6/8 * 5
  r4 r8 r8. ges16-. \f ges8-.
  ges4 r8 r4 r8
  r8. aes16 aes8 aes4 r8
  r8. g!16 g8 g4 r8
  g,4 \f r8 g4 r8
  g4 r8 g r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  g''4-> \f g,-> g,8 g'16 \ff [g]
  g,2. ~ g4. ~ g8. g16-. g8-.
  g4.-^ ~ g8 [r16 g-. g8-.]
  g4.-^ ~g8 r r
  R1 * 6/8 * 13

  \noBreak
  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIinTempo

  R1 * 6/8 * 20

  \mark \default    % Mark E - mesure 93

  R1 * 6/8 * 4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I & II"}
     \override MultiMeasureRest #'staff-position = #6 R1 * 6/8 * 2
     \override MultiMeasureRest #'staff-position = #4 R1 * 6/8 * 3}
  \oneMMRNumberOn

  R1 * 6/8 * 3
  \pageTurn

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I & II"}
    \override MultiMeasureRest #'staff-position = #6 R1 * 6/8 * 2}
  \oneMMRNumberOn

  <<{g'2.}{s4 \f -\tweak #'minimum-length #5 \> s s8 s16 s16 \!}>>
  c4. \< f,-> \!
  r8 r aes, \f ~ aes4. ~
  <<{aes2.}{s4 \> s s8 s16 s16 \!}>>
  aes2. \p
  <<{R1 * 6/8}{\once \override Voice.TextScript #'X-offset = #-9 s1 * 0 ^\markup {"[Muta in B basso]"}}>>

  \mark \default    % Mark F - mesure 113

  R1 * 6/8 * 10

  \transposition bes,
  c2. \ff ^\markup {"in B basso"}
  b
  c4.-> g'->
  aes -\tweak #'positions #'(2.7 . 0.5 ) ( ~ aes16 [ees' ces aes ) ees'8]

  \mark \default    % Mark G - mesure 127

  c,!2.-> ~
  c4. ~ c4 c8
  g' \ff c, [c'] ~ c c, c' ~
  c c, c' ~ c c, c' ~
  c c, c' ~ c c, c' ~
  c c, c' c,4 c8
  c4. \fz ~ c4 c8
  c4. \fz ~ c4 c8
  c r r c' r r
  c r r e [r a,]
  b r ^\markup {"Muta in D"} r r4 r8

  \transposition d
  R1 * 6/8

  \mark \default    % Mark H - mesure 139

  r4 r8 r8 g,4 \f ^\markup {"in D"}
  r4 r8 r g4
  r4 r8 r e'4 \dim
  <<{R1 * 6/8 * 7}{s1 * 6/8 * 0 \!}>>

  \bar "||"    % mesure 149

  R1 * 6/8 * 8
  cis'4. \ff e8-^ d-^ cis-^
  cis4. e4 cis16-. e-.
  d4. \fz ~ d4 cis16-. e-.
  d4. \fz ~ d4 d16-. d-.
  bes4. \fz ~ bes4 bes16-. bes-.
  bes4. \fz ~ bes4 bes16-. bes-.
  f4. \fz ~ f4 f16-. f-.
  ees4. \fz ~ ees4 ees16-. ees-.

  \mark \default    % Mark I forcé - mesure 165

  <<{
    d2. ~
    d
    }
    {
      s4 \fp \> s s
      s s s8 s16 s \!
  }>>
  d2. \fp \> ~
  <<{d}{s4 s s8 s16 s \!}>>
  R1 * 6/8 * 9
  <<{a'4.:16 a:}{s4 \p \< s s8 s16 s16 \!}>>
  <<{a2.:}{s4 \< s s8 s16 s16 \!}>>
  b2. \ff ~
  b4. ~ b4 aes16 \f aes
  aes2.:
  aes:
  aes2.-> \ff ~
  aes

  \mark \default    % Mark J - mesure 186

  a!8-> g-> a-> f-> g-> bes->
  a-> g-> a-> f4 bes16 g
  a4.-^ ~ a4 bes16 g
  a4.-^ ~ a4 bes16 ges
  a!8-. g!-. a-. f-. g-. a-.
  bes4 r8 bes8 r r
  r4 r8 bes r r
  r4 r8 bes r r
  r4 r8 b! r r
  r4 r8 b r g16 g

  \bar "||"

  \mark \default    % Mark K - mesure 196

  c2.-> \ff ~
  c4. ~ c4 g,8
  g4.-^ ~ g8 [r16 g g8]
  g4.-^ ~ g8 [r16 c' c8]
  aes2. \ff ~
  aes
  bes8 r r r4 r8
  R1 * 6/8 * 7
  r4 r8 <<{d,4. ~}{\rightDynamic s4 \fz -\tweak #'minimum-length #6 \> s8 \!}>>
  d2. \dim ~
  <<{d4. ( g, )}{s4 \p \> s s8 s16 s \!}>>
  g2. ~ \pp

  \bar "||"

  \mark \default    % Mark L - mesure 214

  g8 r r r4 r8
  R1 * 6/8 * 2
  r4 r8 d'4. \fz \> ~
  <<{d2. ~}{s4 s4 s8 s16 s \!}>>
  <<{d2. ~}{s4 \p -\tweak #'minimum-length #5 \> s4 s8 s \!}>>
  d2. \pp ~
  <<{d2. ~}{s4 \< s s8 s16 s \!}>>
  <<{d2. ~}{s4 \< s s8 s16 s \!}>>
  d8 r r r4 r8
  R1 * 6/8 * 4
  <<{g2.}{s4 \p -\tweak #'minimum-length #5 \< s s8 s8 \!}>>
  <<{f'2.}{s4 \fz -\tweak #'minimum-length #6 \> s s8 s16 s \!}>>
  e4. \p c,4. -\tweak #'minimum-length #6 \dim ~
  <<{c2.}{s4 \> s s8 s16 s \!}>>
  c2. \pp ~
  c8 r r r4 r8
  R1 * 6/8 * 3

  \mark \default    % Mark M - mesure 237

  R1 * 6/8
  b'2. \f
  e,4.-> \< a8-> b-| c-| \!
  c,2.-^ ~
  <<{c}{s4 s8 s8 -\tweak #'minimum-length #6 \dim}>>
  <<{c2.}{s4 \p -\tweak #'minimum-length #6 \> s s8 s16 s \!}>>
  R1 * 6/8 * 5

  \bar "||"    % mesure 248

  g2. ^\p ~
  <<{g ~}{s4 s8 s8 ^\cresc}>>
  g2. ~
  g2. ^\mf ~
  <<{g2.}{s4 -\tweak #'minimum-length #5 ^\< s s8 s8 \!}>>
  R1 * 6/8 * 3
  c4.-> \ff f->
  c'-> ~ c8 r r
  des4.-> \fz ~ des8 r r
  des4.-> \fz ~ des8 r r
  ees,4.-^ ~ ees8 r r
  ees4.-^ ~ ees8 r r
  f4.-^ ~ f8 r r
  f4.-^ ~ f8 r r
  a2.-^
  ees8-^ c-^ d-^ ees-^ c-^ ees-^

  \mark \default    % Mark N - mesure 266

  ees2.-^
  ees'4.-^ ~ ees4 g,16-. bes-.

  \TempoIPaPAcc

  ees8-> g, bes ees-> g, bes
  \noBreak
  ees-> g, bes ees-> g, c16 \bracketedFF [d]
  ees8-^ c-^ d-^ ees-^ c-^ d-^
  ees-^ c-^ d-^ ees-^ c-^ d-^
  c4. des-> ~
  des2.
  c \fz
  b! \fz

  \mark \default    % Mark O - mesure 276

  c8 r r c,4.-^ ~
  c2. ~
  c ~
  c
  c'4. \ff ( ees4-^ ) d8 ~
  d g, c, c c c
  c c g' g c, g'
  c, g' [g] g \> g g \!
  g-. g,-. [c-.] \dim g-. c-. g-.
  c g4 \p ~ g4. ~
  g8 g \pp [g] g g g

  \TempoITempoPrimo

  \mark \default    % Mark P - mesure 287

  <<{
    \repeat unfold 9 {c,2. ~}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 9 {s2.}
  }>>
  c4 r8 r4 r8
  R1 * 6/8 * 3
  r4 r8 r4 c'8 \pp

  \mark \default    % Mark Q - mesure 301

% Si appelé par le cor II, on ajoute le cor III et IV sur ce cor IV

  \tag #'quoteCornoII
  {
    <c c'>2. ~
    <c c'>2.
    s1. * 6
  }
  \elseTag #'quoteCornoII {
    <<{
      c2. ~
      c ~
      c ~
      c ~
      c ~
      c ~
      c \dim ~
      c
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeat #'transparent = ##t
        \override PercentRepeatCounter #'staff-padding = #2
        \repeat percent 8 {s2.}
    }>>
}    

  \TempoIPocoRit    % Mesure 309

  c4. \pp ~ c8 r r
  c4. ~ c8 r r
  c4 r8 c4 \dim r8
  c4. r4 r8 \!
  c,2. ~
  c2. \fermata

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMaCornoIII = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno III" "in D"}}
  \tag #'conductorScore \tag #'pocketScore {
    \set Staff.shortInstrumentName =
    \markup {\center-column {"Cor. III" "in D"}}
  }
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMaCornoIII
}

voiceSgMaCornoIV = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno IV" "in D"}}
  \tag #'conductorScore \tag #'pocketScore {
    \set Staff.shortInstrumentName =
    \markup {\center-column {"Cor. IV" "in D"}}
  }
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "french horn"
  \trebleToBass
  \SgMaCornoIV
}

quoteScoreSgMaCornoIII = \SgMaCornoIII
quoteScoreSgMaCornoIV = \SgMaCornoIV
