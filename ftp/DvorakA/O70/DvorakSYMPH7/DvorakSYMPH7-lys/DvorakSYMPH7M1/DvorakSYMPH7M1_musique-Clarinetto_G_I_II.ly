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
  * Fichier de notes, Clarinettes I et II pour directrice               *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  **************************************************************
  * Clarinette I                                               *
  **************************************************************
%}

\include "Common/Version.ly"

SgMaClarinettoI = \relative c'' {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \transposition bes

  \TempoI

  \repeat unfold 4 R1 * 6/8
  \repeat unfold 2 R1 * 6/8
  R1 * 6/8
  r4 r8 r4 b16-. \p ( c-. )
  d8 ( c d b c e )
  d \< (c d b4 ) g'16-. ( e-. \!
  f4.-> ) \> ~ <<{f4}{s8 \bindDynamics s \<}>> g16-. ( e-.  \!
  f4.-> ) \> ~ f4 \! r8
  \repeat unfold 3 R1 * 6/8
  r4 r8 r4 \partcombineApartOnce c,16-> %{\f%} \partcombineApartOnce a
  \partcombineApartOnce e'-> %{\<%} \partcombineApartOnce c \! c'4-> \ff ( ~ c8 b a )
  gis4. ( \< a4 ais8 \! ) ~
  ais c! ( b16 \dim g! e4 ) \! r8
  R1 * 6/8
  r4 r8 c'4.-> \ff
  c-> b8 ( ais b )
  eis4-> ( fis8 ) ~ fis r r
  b, \f \< d16-. b-. fis'8 \! r4 r8

  \mark \default    % Mark A - mesure 25

  \repeat unfold 2 R1 * 6/8
  e4.-> \f c-> c-> ~ c8 r r
  \partcombineApart
  r4 r8 r16 e \f ( dis c b a )
  r4 r8 r16 g' ( fis c b a )
  \partcombineAutomatic
  b'8 r r r4 r16 b,16 (
  e dis d cis c b a g fis a c b )
  e,8 r r r4 r8
  R1 * 6/8
  r4 r8 a4-> \f gis8-> ~
  gis g-. f-. e-. dis-. dis-.
  e r r r4 r8
  r4 r8 b'-. \f c-. cis-.
  d4.-> cis->
  d-> \partcombineApart f-> %{\>%} (
  e8 ) \! \partcombineAutomatic r r r4 r8

  \mark \default    % Mark B - mesure 42

  R1 * 6/8
  \partcombineApart
  c2. \p ~
  c8 r r r4 r8
  c2. ~
  c8 r r r4 r8
  \partcombineAutomatic
  r4 r8 r8. ees16-. \f cis8-.
  d4 r8 r4 r8
  r8. f16-. d8-. ees4 r8
  r8. bes'16-. g8-. aes4 r8
  R1 * 6/8
  r4 r8 r8 b,4-> \fz
  % partcombine ne peut fonctionner - 3 voix nécessaires. On triche en regroupant les deux voix sur la première
  % en faisant taire la seconde voix
  \set Staff.soloText = #""
  \polyNeutral {dis4-> \fz fis-> \fz b8 r}{s4 -\tweak #'stencil ##f \f -\tweak #'rotation #'(5 0 0) \< s s \!}
  \set Staff.soloText = #"1."

  \mark \default    % Mark C - mesure 54

  % 2 trilles à placer au dessus et en dessous de la portée
  % report sur la première voix, la seconde voix possède un silence invisible
  %	b4 \trill b, \trill \partcombineApartOnce b,8-.e'16-. ([fis-.])	% parties
  %	<b, -\tweak #'direction #DOWN -\trill b' \trill>4 \ff <b, -\tweak #'direction #DOWN -\trill b' \trill>4
  %     \partcombineApartOnce b8-.e'16-. ([fis-.])	% directrice
  % 2 trilles à placer au dessus et en dessous de la portée
  % report sur la première voix, la seconde voix possède un silence invisible
  % directrice
  \set Staff.soloText = #""
  \ignoreNoteCollision
  \poly {
    \stemDown b4 \ff \trill \stemUp
  }
  {
    b,4 \trill
  }
  \poly {
    b4 \trill
  }
  {
    \stemUp b,4 \trill
  }
  \voiceOne
  \notifyNoteCollision
  \partcombineAutomatic
  \partcombineApartOnce b8-. e'16-. \ff ([fis-.])
  \set Staff.soloText = #"1."
  g8 ( fis g e fis a )
  g ( fis g e8. ) fis16-. d8-.
  e4.-^ ~ e8 [r16 fis-. d8-.]
  e4.-^ ~ e8 [r16 g-. e8-.]
  c'2.-> \fz
  g-> \fz
  aes8-. r r r4 r8
  \partcombineApart
  b,4. \p ( cis4 d8 )
  d4 ( e8 \> ~ e4 f8 \! )
  f4 \pp r8 r4 r8
  \partcombineAutomatic
  \repeat unfold 7 R1 * 6/8

  \TempoIRit

  \partcombineApart
  b,4. \pp ~ b4 r8
  \partcombineAutomatic

  \TempoIinTempo

  \mark \default    % Mark D - mesure 73

  <<{e4 (}{s8 s \<}>> d8 f4 e8 ) \!
  d4 ( c8 \> b4 a8 ) \!
  g4 ( a8 g4 \< a8 )
  \hairpinToBarLineFalse
  g8. \! ( a16 g a ) f4.-> \> ~
  f8. \! g16 ( e g f8 d' b )
  f8. %{\bracketedPP%} ( g16 e g f4. ) ~
  f8 f' ( \< c a f c'16 b \! )
  f8. ( \> g16 e g f4. ) \p
  f16 \< ( a g a b c b c d e d e \! )
  f \mf ( e g f d b ) \once \override Hairpin #'rotation = #'(-4 -1 0) b' \> ( a f d c d ) \!

  % La séquence qui suit est intermédiaire entre la notation accordique (notes) et la notation polyphonique (liaisons)
  % On modifie donc la direction des hampes.
  \stemDown
  \override NoteColumn #'force-hshift = #-0.5
  \override Flag #'transparent = ##t
  e4 %{\p%} \( d8 f4 e8 \)
  d4 \( c8 b4 a8 \)
  \stemUp
  \revert NoteColumn #'force-hshift
  \revert Flag #'transparent
  g16 ( b d b c e ) d ( g, b d e c )
  \partcombineApart
  d ( \< b d b d b \! c4. )
  \partcombineAutomatic
  b2.
  c4. ( b )
  \partcombineChords
  <<{f'2.}{s4 \< s16 \! s16 s8 \> s8 s16 s \!}>>
  \partcombineApart
  b,2. %{\p%} ~
  b16 \partcombineChords gis,[-. ( \< b-. e-. gis-. b]-. ) e8 \! r r
  \partcombineAutomatic
  R1 * 6/8

  \mark \default    % Mark E - mesure 93

  e16 \p ( fis! e fis e fis e8 ) r r
  d!16 ( \< e d e d e d8 ) \! r r
  c16 \mf ( \< d c d c d c8 \! ) r r
  c8 \ff r c r c, r
  R1 * 6/8
  \partcombineApart
  r16 aes \f ( \< b! d f aes b!8 ) \! r r
  \partcombineAutomatic
  \repeat unfold 3 R1 * 6/8
  \partcombineApart
  r4 r8 ees16-> \mf ( c a c ees c
  a c ees c a c ees8 ) r r
  r4 r8 c4 \p \> ( ~ c16 d ) \!
  \dynamicSpannerOff
  <<{ees2.}{s4 \dim s4 \!}>>
  \partcombineAutomatic
  \rightDynamic d8 \bracketedPP ( \< c b ) \! d \mf \< ( c b ) \!
  \partcombineApart
  f'4. %{\f \>%} ( e!4 ) d8 \! ~
  d ( %{\<%} cis e ~ e \! d c )
  c2. %{\f%} ~
  <<{c}{s4 s %{\>%} s8 s \!}>>
  \bracketedHairpin \rightDynamic aes'8 \mp ( -\tweak #'X-offset #4 \> g c, ees4 d8 ) \!
  aes' %{\pp%} ( g c, ees4 d8 )
  \partcombineAutomatic

  \mark \default    % Mark F - mesure 113

  \repeat unfold 2 R1 * 6/8
  \repeat unfold 2 R1 * 6/8
  r4 r8 r4 \partcombineApartOnce c16-. %{\mf%} \partcombineApartOnce d-.
  e!8 ( d e c d f )
  e ( d e c4 ) \< f16-. d-. \!
  e4.-> \fz \cresc ~ e4 f16-. d-.
  e4. \fz \< ~ e4 d16-. c-. \!
  aes'8 \ff r r \times 2/3 {g16 ([f! d]} \times 2/3 {b [g f]} \times 2/3 {d [b g'])}
  e'4 \ff ( d8 f4 e8 )
  \partcombineApart
  dis4 ( cisis8 eis4 dis8 )
  e? r c!16-. d-. \partcombineAutomatic e8 ( dis e )
  \partcombineApart
  e ( dis e ) gis4.
  \partcombineAutomatic

  \mark \default    % Mark G - mesure 127

  aes4-> ees-> c->
  ees4. ~ ees4 \partcombineApartOnce c16-. \partcombineApartOnce d-.
  e!4 \ff ( d8 f4 e8 )
  a!4 ( g8 f!4 e8 )
  d4 ( e8 c4 e8 )
  d8.
    \footnote \markup {"(5)"} #'(1.5 . 0) \markup { \italic "5 - According to N. Simrock 1885"}
    ^\markup {\italic "[con forza]"}
  e16 d e c4. \fz ~
  c8. d16 c d b4. \fz ~
  b8. c16 b c a4. \fz ~
  a8 r16 b ( a b ) g8 r16 a ( g a )
  f8 r16 g ( f g ) e8 r16 f ( e f )
  dis8 b'4 \fz ~ b8 e4 \fz ~
  e8 b4 \fz ~ b8 d?4 \fz (

  \mark \default    % Mark H - mesure 139

  dis,8 ) r16 c'!-. \ff b-. c-. b8 r r
  r8. c16-. \ff b-. c-.  b8 r ^\markup {"Muta in A"} r
  \repeat unfold 2 R1 * 6/8

  \transposition a
  <<{R1 * 6/8}{s4 s4 s4 ^\markup {"in A"}}>>
  \partcombineApart
  e8 \p ([e,]) f' \> ([f,]) g' ([g,]) \!
  a' \pp ([a,]) a' ([a,]) a' ([a,])
  a' ([a,]) a' ([a,]) a' ([a,])
  \partcombineAutomatic
  bes' \pp ([e,]) r r4 r8
  e ( bes ) r des ( g, ) r

  \bar "||"    % mesure 149

  \key d \minor
  f8 r r r4 r8
  R1 * 6/8
  bes16 \p bes a bes r8 d16 d d d r8
  d \< r g r g \! r
  \partcombineApart
  e r16 e \p ( dis e cis8 ) r r
  \partcombineAutomatic
  R1 * 6/8
  a2. \p
  <<{f'}{s4 \< s s8 s16 s \!}>>
  a8 \ff ( gis a fis g bes! )
  a ( gis a fis4 ) a16-. fis-.
  g4. \fz ~ g4 a16-. fis-.
  g4. \fz ~ g4 \partcombineApartOnce c16-. \partcombineApartOnce g-.
  aes4. \fz ~ aes4 c16-. aes-.
  g4. \fz ~ g4 g16-. g-.
  bes4. \fz ~ bes4 f16-. f-.
  fis4. \fz ~ fis4 fis16-. fis-.

  \mark \default    % Mark I forcé - mesure 165

  g8 r \partcombineApart e16 ( \< f g8 cis, d ) \!
  \partcombineAutomatic
  R1 * 6/8
  <<{r4 ees16 ( f g8 d ees )}{s4 \rightDynamic s8 \p \< s16 \! s16 \> s8 s16 s \!}>>
  r4 r8 \rightDynamic g \mf \> ( d ees! ) \!
  ges \p d! ees! \partcombineApart r r ees16 ( f
  \dynamicSpannerOff
  ges8 \dim ees ) r ges ( ees ) r
  ges ([ees]) ees16 \pp ( f ges8 d ees16 f
  ges8 ) r r r d ( ees16 f
  ges8 ) r r r4 \partcombineAutomatic \leftDynamic fes16 \PPtranq ( ges
  aes8 ges aes fes! ges beses
  aes ges aes fes!4 ) a!16-. ( fis!-. )
  gis4. ~ gis4 a16-. ( fis!-. )
  gis4. ~ gis4 r8
  \repeat unfold 2 R1 * 6/8
  b!2. \ff ~
  b4. ~ b4 aes8 \fz
  \repeat unfold 2 R1 * 6/8
  aes2.-> \ff ~
  aes4. ~ aes8 aes,16 ([des f aes])

  \mark \default    % Mark J - mesure 186

  % 2 trilles à placer au dessus et en dessous de la portée
  % report sur la première voix, la seconde voix possède un silence invisible
  % directrice
  \set Staff.soloText = #""
  \poly {
    <<
      {\stemDown bes2. \stemNeutral}{
        \once \override TrillSpanner #'outside-staff-priority = #500
        s4 \startTrillSpan ^\markup {\tiny \natural} s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  {
    <<
      {bes,2.}{
        s4 \startTrillSpan _\markup {\tiny \natural} s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  \set Staff.soloText = #"1."
  r8 bes' ([bes,]) bes ([bes,]) r

  % Parties
  %	r8 bes \ff ([bes,]) bes ([bes,]) r
  %	<<{bes!2.}{s4 \startTrillSpan ^\markup {\tiny \natural} s s8 s16 s32 s64 \stopTrillSpan}>>
  r bes'' ([bes,]) bes ([bes,]) r
  r b'' ([b,]) b ([b,]) r
  r bes''! ([bes,]) bes ([bes,]) r
  \repeat unfold 5 R1 * 6/8

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key f \minor
  aes''8 \fff ( g aes ) f ( g bes )
  aes ( g aes ) f4 g16-. ees-.
  c'4.-^ ~ c8 [r16 c c8]
  c4.-^ ~ c8 [r16 c c8]
  des2. \ff ~
  des
  des8 r r r4 r8
  \partcombineApart
  c,4. \p -\tweak #'positions #'( 4 . 0 ) ( d4 ees!8
  ees!4 -\tweak #'rotation #'(-3 0 0 ) \> f8 ~ f4 fis8 \! )
  fis4 r8 r4 r8
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  r8. f16 \p bes,8-. bes'-. r r
  \partcombineAutomatic
  R1 * 6/8
  r4 r8 r g \f ( bes, )
  r g' \dim ( bes, ) r g' (bes, ) \!
  <<{r g' (des! ) r g ( c, )}{s8 \rightDynamic s \p \> s s s s16 s \!}>>
  r8 g' \pp ( e! ) r d! ( c )

  \bar "||"

  \key d \minor

  \mark \default    % Mark L - mesure 214

  \rightDynamic a'4 %{\Pdolce \<%} ( g8 bes4 a8 \! )
  g4 %{\>%} ( f8 e4 d8 \! )
  <<{c4 ( d8 c4 d8 )}{s8 s s s s %{\<%}}>>
  c8. ( d16 c \! d ) bes4. \fz ~
  \partcombineApart
  <<{bes8. ( c16 a c bes8 f' d )}{s4 \> s s8 s16 s \!}>>
  <<{bes8. ( c16 a c bes4. ) ~}{s4 \p \> s s8 s16 s \!}>>
  bes8 bes' \pp ( f d bes f'16 e )
  bes8. ( \< c16 a c bes8. d16 c bes ) \!
  a8. \< ( b16 gis a ) a8. ( b16 gis a ) \!
  a8 r r r4 r8
  \once \override MultiMeasureRest #'staff-position = #6
  \repeat unfold 3 R1 * 6/8
  \partcombineAutomatic
  f'8 \f r r r4 r8
  R1 * 6/8
  \partcombineApart
  \rightDynamic r16 des, \f \< ( e! g bes des e!8 ) \! r r
  \partcombineAutomatic
  \repeat unfold 5 R1 * 6/8
  \partcombineApart
  r4 r8 f16 \p \dim ( d b d f d ) \!
  b ( d f d b d f8 d b )
  \partcombineAutomatic

  \mark \default    % Mark M - mesure 237

  e8 \p ( \< d c ) g'( f e ) \!
  bes'4. %{\f%} ( a4 g8 ~
  g ) ( fis a ~ a g f! )
  f2. ~
  <<{f}{s4. s %{\dim%}}>>
  \partcombineApart
  r8 c'8 \p ( f, aes4 g8
  f ) r r r4 r8
  \partcombineAutomatic
  \repeat unfold 3 R1 * 6/8
  <<{\partcombineApartOnce aes,,2. ~}{s64 s8 \p \< s s s s s16 s32 s64 \!}>>

  \bar "||"    % mesure 248

  \key f \minor
  \partcombineApartOnce aes8 r r r4 r8
  \repeat unfold 4 R1 * 6/8
  c'4.-> \ff f->
  c'-> ~ c4 aes8-> ~
  aes f4 -> c-> aes16 bes
  c8 ( aes bes ) r r bes16 ( c
  des8 bes c ) r r c16 ( des
  ees8 c ) c16 ( des ees8 aes ees )
  ees ( c ) c16 ( des ees8 aes ees )
  f ( des ) des16 ( ees f8 aes f )
  f ( des ) des16 ( ees f8 aes f )
  f[ ( d! ) d16 ( ees] f8 bes f )
  f[ ( d! ) d16 ( ees] f8 bes f )
  b2. ~ b

  \mark \default    % Mark N - mesure 266

  c2. ~
  c8 r r r4 r8

  \TempoIPaPAcc

  R1 * 6/8
  r4 r8 r r f,16-. \ff g-.
  aes8-> f-. g-. aes-> f-. g-.
  aes-> f-. g-. aes-> f-. g-.
  aes4. a-> \fz ~
  a2.
  bes-> \fz
  bes \fz

  \mark \default    % Mark O - mesure 276

  r16 des, \f ( c4 ) r16 f ( e4 )
  r16 g ( f8. ) aes16 ( g8. ) bes16 ( a8 ) ~
  a16 c ( bes8. ) c16 ( bes8. ) bes16 ( aes8 ) ~
  aes16 aes ( ges8.)  ges16 ( f8.) f16 ( e8 )
  f4.-> \ff ( aes4-> ) g8 ~
  g ges-. f-. f-. f-. f-.
  ges ( f e ) f-. aes-. g!-.
  aes-. g-. aes-. g-. \> aes-. g-. \!
  aes-. g,-. [aes-.] \dim g-. aes-. g-.
  aes \p r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 3 R1 * 6/8
  ees4. \pp ~ ees4 r8
  des!4. ~ des4 r8
  b4. ~ b4 r8
  bes!4. ~ bes4 r8
  \partcombineChords
  c4. ^( b
  c b4 ^) r8
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  \override DynamicLineSpanner #'staff-padding = #3.8
  r8 r \rightDynamic aes'16-. \bracketedP \< f-.des'-. aes-. \! aes'4 \fz \> ~
  aes4. ( a4. ) \pp \dim ~
  a \! -\tweak #'positions #'(5 . 5 ) ( ~ a8 bes8. e,16
  \revert DynamicLineSpanner #'staff-padding

  \mark \default    % Mark Q - mesure 301

  f8 ) r r r4 r8
  \partcombineAutomatic
  R1 * 6/8
  c2. \pp ~
  c4 r8 r4 r8
  \repeat unfold 4 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  c4. \pp ~ c8 r r
  c4. ~ c8 r r
  \repeat unfold 2 R1 * 6/8
  c,2. ~
  c \fermata

  \bar "|."
}
%{
  ***************************************************************
  * Clarinette II                                               *
  ***************************************************************
%}

SgMaClarinettoII = \relative c {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \transposition bes

  \TempoI

  \repeat unfold 4 R1 * 6/8
  \partcombineApart
  e4. \pp ~ e4 r8
  e4. ~ e4 r8
  \partcombineAutomatic
  R1 * 6/8
  r4 r8 r4 gis'16-. \p ( a-. )
  b8 ( a b gis a c )
  b \< (a b gis4 ) e'16-. ( cis-. \!
  d4.-> ) \> ~ <<{d4}{s8 \bindDynamics s \<}>> e16-. ( cis-.  \!
  d4.-> ) \> ~ d4 \! r8
  \repeat unfold 3 R1 * 6/8
  r4 r8 r4 c,16-> \f a
  e'-> \< c \! c4-> \ff ( ~ c8 b a )
  gis4. ( \< a4 ais8 \! ) ~
  ais c! ( b16 \dim g! e4 ) \! r8
  \partcombineApart
  e'8 \mp ( g16 e b'8 ) r4 r8
  \partcombineAutomatic
  r4 r8 c4.-> \ff
  c-> b8 ( ais b )
  eis4-> ( \aII \aIIP fis8 ) ~ fis r r
  b, \f \< d16-. b-. fis'8 \! r4 r8

  \mark \default    % Mark A - mesure 25

  \repeat unfold 2 R1 * 6/8
  c4.-> \f a-> a-> ~ a8 r r
  r16 c \f ( b g fis e ) r4 r8
  r16 fis' ( e b a g ) r4 r8
  b8 r r r4 r16 b16 \f (
  e \aII  dis d cis c b a g fis a c b )
  e,8 r r r4 r8
  R1 * 6/8
  r4 r8 a4-> \f gis8-> ~
  gis g-. f-. e-. dis-. dis-.
  e \aII r r r4 r8
  r4 r8 e-. \f e-. a-.
  a4.-> g->
  \hairpinToBarLineFalse
  f?-> bes-> \> ~
  bes8 \! r r r4 r8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 5 R1 * 6/8
  r4 r8 r8. ees16-. \f cis8-.
  d4 r8 r4 r8
  r8. f16-. d8-. ees4 r8
  r8. bes'16-.  g8-. aes4 r8
  R1 * 6/8
  r4 r8 r8 b,4-> \aII \aIIP \fz
  % partcombine ne peut fonctionner - 3 voix nécessaires. On triche en regroupant les deux voix sur la première
  % en faisant taire la seconde voix
  %	\set Staff.soloText = #""
  %	\polyNeutral {dis4-> \fz fis-> \fz b8 r}{s4 \< s s \!}
  %	\set Staff.soloText = #"1."
  s2.

  \mark \default    % Mark C - mesure 54

  %	Le trille inférieur ne fonctionne qu'en notation accordique. On remplace donc la seconde voix
  %     par des silences invisibles
  %	b,4 \trill \ff b, \trill b8-.g'16-. ([b-.])	% parties
  s4 s4 b,8-. g'16-. \ff ([b-.])	% directrice
  e8 ( b e g, b fis' )
  e ( b e g,8. ) d'16-. b8-.
  b4.-^ ~ b8 [r16 d-. b8-.]
  b4.-^ ~ b8 [r16 g'-. e8-.]
  c2.-> \fz
  g-> \fz
  f'8-. r r r4 r8
  \repeat unfold 10 R1 * 6/8

  \TempoIRit

  R1 * 6/8

  \TempoIinTempo

  \mark \default    % Mark D - mesure 73

  \leftDynamic c4 \Pdolce ( b8 ) b4 ( c8 )
  b4 ( g8 ) \> g4 ( f8 ) \!
  r d ( c ) r d ( c )
  r d ( c ) c4.\fp (
  b2. )
  <<{c4. ( b )}{s4. \bracketedPP s8 \< s s16 s \!}>>
  c2. \fz
  b4. ( \> c ) \p
  r8 r g'16 \< ( a g a b c b c \! )
  b %{\mf%} r b ( a f d ) <<{g,4}{s8 s \>}>> a'16 ( b ) \!
  c4 \p ( b8 ) b4 ( c8 )
  b4 ( g8 ) g4 ( f8 )
  g16 g ( b g a e b' g ) g ( b c a )
  <<{b ( g b g b g  a4. )}{s4. \<s4 \fz -\tweak #'minimum-length #9 \> s16 s \!}>>
  f2.  \pp
  a4. ( f )
  <<{a2.}{s4 \< s16 \! s16 s8 \> s8 s16 s \!}>>
  f2. \p (
  e16 ) \once \override Hairpin #'rotation = #'(8 -2 0) e,[-. ( \< gis-. b-. e-. gis!]-. ) b8 \! r r
  R1 * 6/8

  \mark \default    % Mark E - mesure 93

  cis16 \p ( a cis a cis a cis8 ) r r
  b16 ( \< g b g b g b8 ) \! r r
  a16 \mf ( \< f a f a f a8 \! ) r r
  f8 \ff r aes r aes, r
  R1 * 6/8
  \once \override MultiMeasureRest #'staff-position = #-8
  \repeat unfold 6 R1 * 6/8
  \repeat unfold 2 R1 * 6/8
  \rightDynamic d8 \bracketedPP ( \< c b ) \! b' \mf \< ( a g ) \!
  <<{d'4. ( gis, )}{s4. \f \> s4 s8 \!}>>
  <<{g!4. ( fis! )}{s8 \< s s s \!}>>
  g4 \f ( fis!16 g aes8 g aes
  <<{g4 ) fis!16 ( g aes8 g aes )}{s4 s \> s8 s \!}>>
  \rightDynamic g4 \mp ( \> fis!16 g aes8 g aes ) \!
  g4 \pp ( fis!16 g aes8 g aes )

  \mark \default    % Mark F - mesure 113

  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  r4 r8 r4 c,16 \p ( d
  ees8 d ees c d f
  ees8 ) r8 r r4 \partcombineAutomatic c'16-. \mf d-.
  c8 ( g c e,? g d' )
  c ( g c e,4 ) \< d'16-. g,-. \!
  c4.-> \fz \cresc ~ c4 d16-. g,-.
  c4. \fz \< ~ c4 g16-. e-. \!
  f'8 \ff r r \times 2/3 {g16 ([f! d]} \times 2/3 {b [g f]} \times 2/3 {d [b g'])}
  c4 \ff ( g8 d'4 c8 )
  dis4 ( cisis8 eis4 dis8 )
  e? r c!16-. d-. c8 ( b c )
  b4. gis'

  \mark \default    % Mark G - mesure 127

  c,!4-> aes-> aes->
  c4. ~ c4 c16-. d-.
  c4 \ff ( b8 d4 c8 )
  f4 ( e8 d4 c8 )
  b4 ( c8 a4 c8 )
  b8. %{^\markup {\italic "[con forza]"}%} c16 b c a4. \fz ~
  a8. b16 a b g4. \fz ~
  g8. a16 g a f4. \fz ~
  f8 r16 d ( f d ) e8 r16 c ( e c )
  d8 r16 b ( d b ) c8 r16 a ( c a )
  b8 b'4 \fz ~ b8 e4 \fz ~
  e8 \aII  b4 \fz ~ b8 d?4 \fz (

  \mark \default    % Mark H - mesure 139

  dis,8 ) r16 c'!-. \ff b-. c-. b8 r r
  r8. c16-. \ff b-. c-. b8 r ^\markup {"Muta in A"} r
  \set Staff.shortInstrumentName = \markup {\center-column {"Clar. in A" I+II}}
  \repeat unfold 3 R1 * 6/8
  \once \override MultiMeasureRest #'staff-position = #-8
  \repeat unfold 2 R1 * 6/8

  \transposition a
  <<{R1 * 6/8}{s4 s4 s4 %{^\markup {"in A"}%}}>>
  g'8 \pp ([cis,]) r r4 r8
  cis ( g ) r bes! ( e, ) r

  \bar "||"    % mesure 149

  \key d \minor
  d8 r r r4 r8
  R1 * 6/8
  g16 \p g g g r8 bes16 bes a bes r8
  bes \< r g r g \! r
  g r r r4 r8
  R1 * 6/8
  f2. \p
  <<{d'}{s4 \< s s8 s16 s \!}>>
  a'8 \ff ( gis a fis g bes! )
  a ( gis a fis4 ) a16-. fis-.
  g4. \aII \fz ~ g4 a16-. fis-.
  g4.  \fz ~ g4 g16-. g-.
  c,4. \fz ~ c4 aes'!16-. c,-.
  ees4. \fz ~ ees4 ees16-. ees-.
  d4. \fz ~ d4 d16-. d-.
  c4. \fz ~ c4 c16-. c-.

  \mark \default    % Mark I forcé - mesure 165

  b8 r r g \f ( ais b )
  R1 * 6/8
  <<{r4 c16 ( d ees!8 b c )}{s4 \rightDynamic s8 \p \< s16 \! s16 \> s8 s16 s \!}>>
  r4 r8 \rightDynamic ees \mf \> ( b c ) \!
  ees \p b c r4 r8
  \repeat unfold 3 R1 * 6/8
  r4 r8 r4 \leftDynamic des16 \PPtranq ( ees
  fes8 ees fes des ees ges!
  fes ees fes des4 ) fis16-. ( d-. )
  e4. ~ e4 fis16-. ( d-. )
  e4. ~ e4 r8
  \repeat unfold 2 R1 * 6/8
  gis2. \ff ~
  gis4. ~ gis4 f!8 \fz
  \repeat unfold 2 R1 * 6/8
  f2.-> \ff ~
  f4. ~ f8 aes,16 ([des f aes])

  \mark \default    % Mark J - mesure 186

  % 2 trilles à placer au dessus et en dessous de la portée
  % on utilise la notation accordique et la seconde voix possède un silence invisible
  % Directrice *****
  s2.
  r8 bes \ff ([bes,]) bes ([bes,]) r
  % Parties
  %	<<{bes,!2.}{s4 \startTrillSpan ^\markup {\tiny \natural} s s8 s16 s32 s64 \stopTrillSpan}>>
  %	r8 bes' \ff ([bes,]) bes ([bes,]) r
  r bes'' ([bes,]) bes ([bes,]) r
  r b'' \aII  ([b,]) b ([b,]) r
  r bes''! ([bes,]) bes ([bes,]) r
  \repeat unfold 5 R1 * 6/8

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key f \minor
  f''8 \fff ( c f ) aes, ( c g' )
  f ( c f ) aes,4 ees'16-. c-.
  c4.-^ ~ c8 [r16 c c8]
  c4.-^ ~ c8 [\tweak #'extra-offset #'(0 . 2) r16 c c8]
  des2. \ff ~
  des
  des8 r r r4 r8
  \repeat unfold 5 R1 * 6/8
  R1 * 6/8
  R1 * 6/8
  r4 r8 r e! \f ( g, )
  r bes ( \dim g ) r bes ( g ) \!
  <<{r des'! (bes ) r c ( bes )}{s8 \rightDynamic s \p \> s s s s16 s \!}>>
  r8 bes \pp ( g ) r bes ( g )

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \minor
  \leftDynamic f'4 \Pdolce \< ( e8 ) e4 ( f8 \! )
  e4 \> ( c8 )  c4 ( bes8 \! )
  <<{r g ( f ) r g ( f )}{s8 s s s s \<}>>
  r g ( f ) \! f r r
  \repeat unfold 6 R1 * 6/8
  \set Staff.soloIIText = #""
  r8 d-. -\tweak #'extra-offset #'(-2.3 . 2) \mp a'-. d-. r r
  \dynamicSpannerOff
  r c,-. \dim g'-. c-. r r
  r bes,-. \pp f'-. bes r r
  bes8 \f r r r4 r8
  \set Staff.soloIIText = #"2."
  \repeat unfold 8 R1 * 6/8
  R1 * 6/8

  \mark \default    % Mark M - mesure 237

  c8 \p ( \< g e ) e'( d c ) \!
  g'4. \f ( cis, )
  c ( b )
  c4 ( b16 c des8 c des )
  \dynamicSpannerOff
  c4 ( b16 c des8 \dim c des )
  c8 \p r r r4 r8
  \repeat unfold 4 R1 * 6/8
  <<{aes,2. ~}{s64 s8 \p \< s s s s s16 s32 s64 \!}>>

  \bar "||"    % mesure 248

  \key f \minor
  aes8 r r r4 r8
  \repeat unfold 4 R1 * 6/8
  c'4.-> \ff f->
  c'-> ~ c4 aes8-> ~
  aes f4 -> c-> f,16 g
  aes8 ( f g ) r r g16 ( aes
  bes8 g aes ) r r aes16 ( bes
  c8 aes ) aes16 ( bes c8 aes bes )
  c ( aes ) aes16 ( bes c8 aes bes )
  des ( bes ) bes16 ( c des8 f des )
  des ( bes ) bes16 ( c des8 f des )
  d[ ( bes ) bes16 ( c] d4 d8 )
  d[ ( bes ) bes16 ( c] d4 d8 )
  f2. ~
  f

  \mark \default    % Mark N - mesure 266

  ees2. ~
  ees8 r r r4 r8

  \TempoIPaPAcc

  R1 * 6/8
  r4 r8 r r f16-. \ff g-.
  aes8-> \aII \aIIP  f-. g-. aes-> f-. g-.
  aes-> f-. g-. aes-> f-. g-.
  f4. ges-> \fz ~
  ges2.
  f-> \fz
  des \fz

  \mark \default    % Mark O - mesure 276

  r16 des \f ( c4 ) r16 f ( e4 )
  r16 g ( f8. ) aes16 ( g8. ) bes16 ( a8 ) ~
  a16 \aII c ( bes8. ) c16 ( bes8. ) bes16 ( aes8 ) ~
  aes16 aes ( ges8.)  ges16 ( f8.)   f16 ( e8 )
  f4.->  \ff ( aes4-> ) g8 ~
  g ges-. f-. f-. f-. f-.
  ges \aII \aIIP ( f e ) f-. f-. e!-.
  f-. e-. f-. e-. \> f-. e-. \!
  f-. e,-. [f-.] \dim e-. f-. e-.
  f \p r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 3 R1 * 6/8
  a,4. \pp ~ a4 r8
  g4. ~ g4 r8
  f4. ~ f4 r8
  f4. ~ f4 r8
  aes!4. ~ aes
  aes ~ aes4 r8
  \repeat unfold 2 R1 * 6/8
  \override MultiMeasureRest #'staff-position = #-6
  R1 * 6/8
  \repeat unfold 2 R1 * 6/8

  \mark \default    % Mark Q - mesure 301

  \repeat unfold 2 R1 * 6/8
  aes'2. \pp ~
  aes4 r8 r4 r8
  \repeat unfold 4 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  c,4. \pp ~ c8 r r
  c4. ~ c8 r r
  \partcombineApart
  c2. ~
  c4. ~ c4 r8
  \partcombineAutomatic
  aes2. ~
  aes \fermata

  \bar "|."
}
%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}
voiceSgMaClarinettoIAII = \new Voice {
  \time 6/8
  \key e \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Clarinetti (B)" "I+II"}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Cl. (B)" I+II}}
  \set Staff.midiInstrument = "clarinet"
  \clef treble
  \partcombine \SgMaClarinettoI \SgMaClarinettoII
}

