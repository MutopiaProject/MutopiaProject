%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            Impromptu in f-moll                              %
%                         Franz Schubert (1797-1827)                          %
%                         D935 (Op. 142 No 4., 1827)                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.12.1"

\paper {
  between-system-padding = #1
  between-system-space = #2
  ragged-last-bottom = ##f
}

\header {
  title = "Impromptu in f-moll"
  composer = \markup \center-column { \larger "Franz Schubert" \small "(1797-1828)" }
  opus = "D935 (Op. 142 No 4., 1827)"
  mutopiatitle = "Impromptu in f-moll"
  mutopiacomposer = "SchubertF"
  mutopiapoet = ""
  mutopiaopus = "D.935 (Op. 142, No. 4)"
  mutopiainstrument = "Piano"
  date = "1827"
  source = "Breitkopf & Härtel, 1888"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Simon Otten"
  maintainerEmail = "simonotten at gmail dot com"
 footer = "Mutopia-2009/07/16-1689"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 right hand                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

upper = \relative c'' { 

\clef treble
\key f \minor
\time 3/8
\set Score.tempoHideNote = ##t

%1-8
\tempo "Allegro scherzando" 8 = 190
\appoggiatura des16  c8-. c16( des c8-.)
\appoggiatura des16 c8-. c16( des c8-.)
\appoggiatura c16  b8-. b16( d c b)
c8-. g4->
c8-. g-. c-.
bes->( as16 g f8)
g16 bes g bes e, g
f16 as c f as bes

%9-16
c8-. c16( des c8-.)
\appoggiatura des16  c8-. c16( des c8-.)
c16( b) f'( b, f' b,)
c8-. g4->
c8-. g-. c-.
bes->( as16 g f8)
g16 bes g bes e, g
f8 

%16-24
\bar "|:" f,16 g as bes
c8-.-> c,-. c'-.->
c,-. c'-.-> c, 
<g' bes>8-. <f as>16( <e g> <f as> <g bes>)
<e g>4.
c'8-. c,-. c'(
des8)-> des,-. des'-.
<as c>16 <g bes> <f as> <g bes> <f as> <e g>
f8

%24-31
f'16[( g as bes])
c8-.-> c,-. c'-.->
c,-. c'-.-> c,
<g' bes>8-. <f as>16( <e g> <f as> <g bes>)
<e g>4.
c'8-. c,-. c'(
des8)-> des,-. des'-.
<bes, des>16( <as ces> <ges bes> <as ces> <ges bes> <f as>)

%32-36
<ges bes>8 <ges bes> <ges bes>
<f as b>8  <f as b> <f as b>
<f' as b>8 <f as b> <f as b>
\ottava #1 <as' c>16( <g bes!> <f as> <g bes> <f as> <e g>)
f8-. \bar ":|" \ottava #0
\pageBreak

%36-44
\ottava #1 g4~\startTrillSpan
g8. fis32\stopTrillSpan g as16[ g]
f!8-. \ottava #0 g,4~\startTrillSpan
g8. fis32\stopTrillSpan g as16[ g]
f!8-. \ottava #1 g'4(\startTrillSpan
fis32)[(\stopTrillSpan g as bes] c[ des! e! f!]) \times 4/6{ e( des c bes as g) }
f8-. \ottava #0 g,4(\startTrillSpan
\times 4/5{ fis32[)(\stopTrillSpan g as bes c] } \times 4/5{ des[^\> e! f! g f]} \times 4/7 {e[ des c\! bes as g f]) }
e32[( des! c bes] as[_\markup{ \italic ritard. } g fis g] \times 4/6{ as a bes b c des) }

%45-52
c8-.^\markup{ a tempo } c16( des c8-.)
\appoggiatura des16 c8-. c16( des c8-.)
c16( b) b( d c b)
c8-. g4->
c8-. g-. c-.
bes8->( as16 g f8)
g16( bes g bes e, g)
f16( as c f as bes)

%53-62
c8-. c16( des c8-.)
\appoggiatura des16  c8-. c16( des c8-.)
c16( b) f'( b, f' b,)
c8-. g4->
c8-. g-. c-.
bes8->( as16 g f8)
bes8-. f-. bes-.
as8->( g16 f es8)
as8-. es-. as-.
a8-. es-. a-.
\noPageBreak

%63-70
bes8-.[ <f d>-.] d'-.[
<f,bes>8-.] f'-.[ <bes, d>-.]
as'16[( ges f ges]) es8-.
c8-. a-. ges-.
bes8-.[ <f d>-.] d'-.[
<f,bes>8-.] f'-.[ <bes, d>-.]
as'16[( ges f ges]) es8-.
c8-. a-. ges-.

%71-77
bes8-.[ <f d>-.] b-.[
<f d>8-.] d'-.[ <b f>-.]
c8-.[ <g e>-.] e'-.[
<des! g,>8-.] g-.[ <e des bes>-.]
f8-.[ <c f,>-.] \ottava #1 bes'-.[
bes,8-.] c'-.[ c,-.]
<f f'>8-|

%77-86
g4~\startTrillSpan
g8. fis32(\stopTrillSpan g as16[ g])
f!8-. \ottava #0 g,4~\startTrillSpan
g8. fis32(\stopTrillSpan g as16[ g])
f!8-. \ottava #1 g'4(\startTrillSpan
fis32)[(\stopTrillSpan g as bes] c[ des! e! f!]) \times 4/6{ e( des c bes as g) }
f8-. \ottava #0 g,4(\startTrillSpan
\times 4/5{ fis32[)(\stopTrillSpan g as bes c] } \times 4/5{ des[ e! f! g f]} \times 8/13 {e64[ des c bes as g f e des c bes as g] }
f8) r r
<g bes des es! g>8 r r^\fermataMarkup \bar "||"

%87-94
\stemDown
as'16^\markup{ \italic legato } bes c des es des
c bes as g f es
des c bes as g as
bes c des es f g
as bes c des f es
des c bes as g f
es f des es c es
bes es as, es' g, es'

%94-102
as16 bes ces des es des
ces bes as ges fes es
des ces bes as g! as 
bes ces des es fes g!
as bes ces des fes es
des ces bes as ges fes
es8 des16[ es ces es]
bes[ es as, es'] \stemNeutral g,8-.

%103-110
\stemDown
as'16 bes c! des es des
c bes as g f es
des c bes as g as
bes c des es f g
as bes c des es f
\ottava #1 g as bes c des es
f es des c bes as
g f es des c bes \ottava #0

%111-122
as16 bes ces des es des
ces bes as ges fes es
des ces bes as g! as
bes ces des es fes g!
as bes ces des es f!
\ottava #1 g! as bes ces des es
fes es des ces bes as
g! fes es des ces bes
\ottava #0 es des ces bes as ges
fes es des ces bes as
\stemNeutral beses[( des beses des] fes8-.)
g,!16[( bes! g bes] es8-.)

%123-130
\ottava #1 es''16 des ces bes as ges
fes es des ces bes as
beses[ des beses des] fes8
g,!16[ bes! g bes] es8
as16[ es des ces \times 2/3{ bes as ges] }
\ottava #0 fes es des ces bes as
beses[( des beses des] fes8~
fes[ es] g,!8)^\fermataMarkup
\pageBreak

%131-138
as16[(^\markup { \italic "con delicatezza" } ces as ces] as'8-|)
bes,16[( des bes des] bes'8-|)
ces,16[( es ces es] ces'8-|)
<bes, des bes'>-. <bes des bes'>-. <as ces as'>-.
g16[ bes g bes] g'8-|
as,16[ ces as ces] as'8-|
bes,16[ des bes des] bes'8-|
<as, ces as'>-. <as ces as'>-. <g bes g'>-.

%139-145
as16[ ces as ces] as'8
bes,16[ des bes des] bes'8
ces,16[ es ces es] ces'8
<des, fes des'>-.( <des fes des'>-. <es ges es'>-.)
ces16[ es ces es] ces'8
<des, fes des'>-.( <des fes des'>-. <es ges es'>-.)

%146-152
bes16[ es bes es] bes'8
ces,16[ es ces es] ces'8
des,16[ fes des fes] des'8
<ces, es as ces>-.( <ces es as ces>-. <bes es g bes>-.)
bes16[ es bes es] bes'8
ces,16[ es ces es] ces'8
des,16[ fes des fes] des'8
<ces, es as ces>-.( <ces es as ces>-. <bes es g bes>-.)

%153-158
des16[ bes' des, bes'] des8
es,16[ ces' es, ces'] es8
fes,16[ des' fes, des'] fes8
<des, bes' des> <des bes' des> <bes g' bes>
fes'16[ des' fes, des'] fes8
<des, bes' des> <des bes' des> <bes g bes'>

%159-164
fes'16[ des' fes, des'] fes8
g,16[ fes' g, fes'] g8
\ottava #1 bes,16[ g' bes, g'] bes8
des,16[ bes' des, bes'] des8
fes,16[ des' fes, des'] fes8-|
\ottava #0 R1*3/8^\fermataMarkup \bar "||"
\pageBreak

%165-176
\key c \major
e,,16[ cis' e, cis'] e8
e,16[ cis' e, cis'] e8
e,16[ cis' e, cis'] e8
<d, b' d>-. <d b' d>-. <cis a' cis>-.
d16[ b' d, b'] d8
d,16[ b' d, b'] d8
d,16[ b' d, b'] d8
<cis, a' cis>-. <cis a' cis>-. <b gis' b>-.
e16[ cis' e, cis'] e8
e,16[ cis' e, cis'] e8
e,16[ cis' e, cis'] e8
<gis, e' gis>-. <gis e' gis>-. <a e' a>-.

%177-184
d,16[ b' d, b'] d8
d,16[ b' d, b'] d8
d,16[ b' d, b'] d8
<a cis a'>-. <a cis a'>-. <b d b'>-.
cis,16[ a' cis, a'] cis8
b,16[ gis' b, gis'] b8
cis,16[ a' cis, a'] cis8
d,16[ b' d, b'] d8 \bar "||"

%185-196
\key f \minor
c!16 es! c es as g
f es des c bes as
g f es des c bes
as g f fes es8
\ottava #1 es''16 as es as c bes
as g f es des c \ottava #0
bes as g f es des
c bes as g f es
\ottava #1 as'' c as c es des
c bes as g f es \ottava #0
des c bes as g f
\times 2/3 { es[ des c] } bes32 as g f es des c bes

%197-204
as8 as16[ c es des]
\change Staff = "lower" \stemUp c bes as g f es
des c bes as g as
bes c des es f g
as bes \change Staff = "upper" c des es f \stemNeutral 
g as bes c des es
f es des c bes as
g f es des c bes

%205-212
as8 as'16[ c es des]
c bes as g f es
des c bes as g as
bes c des es f g
as bes c des es f
g as bes c des es
f es des c bes as
g f es des c bes

%213-222
as8 as16[ ces es des]
ces bes as ges fes es
des ces bes as g! as
bes ces des es f! g!
as bes ces des es f
g as bes ces des es
e d cis b a gis
fis e d cis b a
gis fis e d cis b
\change Staff = "lower" \stemUp a gis fis e \times 2/3 { d cis b }

%223-230
a16[ cis a cis] e8
cis16[ e cis e] a8
e16[ a e a] cis8
a16[ cis a cis] \change Staff = "upper" \stemNeutral e8
cis16[ e cis e] a8
e16[ a e a] cis8
a16[ cis a cis] e8
b16[ d b d] b'8

%231-242
c,16[ es! c es] c'8
es,16[ c' es, c'] es8
des,!16[ bes' des, bes'] des8
bes,16[ g' bes, g'] bes8
c,16[ es c es] c'8
as16[ es' as, es'] as8
g,16[ des' g, des'] g8
des,16[ g des g] des'8
c,16[ as' c, as'] c8
\ottava #1 es16[ c' es, c'] es8
des,16[ bes' des, bes'] des8
bes,16[ g' bes, g'] bes8 \ottava #0

%243-250
c,,16[ g' c, g'] c8
c,16[ g' c, g'] c8
g16[ c g c] g'8
\ottava #1 c,16[ g' c, g'] c8
c,16 es c es as g
f es des c bes as \ottava #0
g f es des c bes
as g f fes es8

%251-258
c'16[ g' c, g'] c8
c,16[ g' c, g'] c8
g16[ c g c] g'8
\ottava #1 c,16[ g' c, g'] c8
es,16 as es as c bes
as g f es des c \ottava #0
bes as g f es des
c[ bes \times 2/3 { as g f] } es8

%259-266
c'16[ g' c, g'] c8
c,16[ g' c, g'] c8
g16[ c g c] g'8
\ottava #1 c,16[ g' c, g'] c8
g16 c g c e d
c b a g f e \ottava #0
d c b a \times 2/3 { g f e }
d[ c b a] g8

%267-270
\ottava #1 as''!16 c as c es! des!
c bes as g f es \ottava #0
des c bes as g f
\times 2/3 { es[ des c } \times 2/3 { bes as g] } \times 4/5 { f32[ es des c bes] }

%271-282
as8 as'16[ c es des]
c bes as g f es
\clef bass des c bes as g f
es f es des c bes
as[ c as c] es8
as,16[ c as c] es8
as,16[ c as c] es8
as,16[ c as c] es8
as,16[ c as c] es8
c16[ es c es] as8
es16[ as es as] c8
\clef treble as16[ c as c] es8

%283-292
\stemUp
as,16 c as c es des
c \change Staff = "lower" bes as g f es
des c bes as g as
bes c des es f g
as bes \change Staff = "upper" c des es fes
<bes, des fes>4.~
<bes des fes>4.~
<bes des fes>4.~
<bes des fes>4.
R1*3/8^\fermataMarkup \stemNeutral

%293-302
as'16 c as c es des
c bes as g f es
des c bes as g as
bes c des es f g
as bes c des es fes
<bes, des fes>4.~
<bes des fes>~
<bes des fes>~
<bes des fes>
R1*3/8^\fermataMarkup
\pageBreak

%303-309
g'16 bes des c bes as
g f e des c des
e f g as bes c
<g bes des>4.~
<g bes des>~
<g bes des>
R1*3/8^\fermataMarkup

%310-316
\ottava #1 e'16 g bes as g f
e des c bes a bes
c des e f g as!
<e g bes>4.~
<e g bes>~
<e g bes> \ottava #0
R1*3/8

%317-323
<f, as! b>4.~
<f as b>~
<f as b>
R1*3/8
<e, g c>4.~
<e g c>~
<e g c>^\fermataMarkup

%324-335
c'8-.^\markup { a tempo } c,-. c'-.
c,-. c'-. c,-.
R1*2*3/8
\appoggiatura des'16 c8-. c16( des c8)
c c c
\appoggiatura des16 c8-. c16( des c8)
c c c
\appoggiatura des16 c8-> c16( des c8)
\appoggiatura des16 c8-> c16( des c8)
c-.( c-. c-.
c-. c-. c-.)

%336-343
\appoggiatura des16 c8-. c16( des c8-.)
\appoggiatura des16 c8-. c16( des c8-.)
c16( b) b( d c b)
c8-. g4->
c8-. g-. c-.
bes->( as16 g f8)
g16 bes g bes e, g
f16 as c f as bes

%344-351
c8-. c16( des c8-.)
\appoggiatura des16  c8-. c16( des c8-.)
c16( b) f'( b, f' b,)
c8-. g4->
c8-. g-. c-.
bes->( as16 g f8)
g16 bes g bes e, g
f8 

%351-359
f,16[ g as bes]
c8-.-> c,-. c'-.->
c,-. c'-.-> c, 
<g' bes>8-. <f as>16( <e g> <f as> <g bes>)
<e g>4.
c'8-. c,-. c'(
des8)-> des,-. des'-.
<as c>16 <g bes> <f as> <g bes> <f as> <e g>
f8

%359-363
f'16[( g as bes])
c8-.-> c,-. c'-.->
c,-. c'-.-> c,
<g' bes>8-. <f as>16( <e g> <f as> <g bes>)
<e g>4.
c'8-. c,-. c'(
des8)-> des,-. des'-.
<bes, des>16( <as ces> <ges bes> <as ces> <ges bes> <f as>)

%364-371 
<ges bes>8 <ges bes> <ges bes>
<f as b>8  <f as b> <f as b>
<f' as b>8 <f as b> <f as b>
\ottava #1 <as' c>16( <g bes!> <f as> <g bes> <f as> <e g>)
f8-. \ottava #0

%371-379
\ottava #1 g4~\startTrillSpan
g8. fis32\stopTrillSpan g as16[ g]
f!8-. \ottava #0 g,4~\startTrillSpan
g8. fis32\stopTrillSpan g as16[ g]
f!8-. \ottava #1 g'4(\startTrillSpan
fis32)[(\stopTrillSpan g as bes] c[ des! e!\! f!]) \times 4/6{ e( des c bes as g) }
f8-. \ottava #0 g,4(\startTrillSpan
\times 4/5{ fis32[)(\stopTrillSpan g as bes c] } \times 4/5{ des[ e! f! g f]} \times 4/7 {e[ des c bes as g f]) }
e32[( des! c bes] as[_\markup{ \italic ritard. } g fis g] \times 4/6{ as a bes b c des) }

%380-387
c8-.^\markup{ a tempo } c16( des c8-.)
\appoggiatura des16 c8-. c16( des c8-.)
c16( b) b( d c b)
c8-. g4->
c8-. g-. c-.
bes8->( as16 g f8)
g16( bes g bes e, g)
f16( as c f as bes)

%388-397
\crescTextCresc
c8-. c16( des c8-.)
\appoggiatura des16  c8-. c16( des c8-.)
c16( b) f'( b, f' b,)
c8-. g4->
c8-. g-. c-.
bes8->( as16 g f8)
bes8-. f-. bes-.
as8->( g16 f es8)
as8-. es-. as-.
a8-. es-. a-.

%398-405
bes8-.[ <f d>-.] d'-.[
<f,bes>8-.] f'-.[ <bes, d>-.]
as'16[( ges f ges]) es8-.
c8-. a-. ges-.
bes8-.[ <f d>-.] d'-.[
<f,bes>8-.] f'-.[ <bes, d>-.]
as'16[( ges f ges]) es8-.
c8-. a-. ges-.

%406-412
bes8-.[ <f d>-.] b-.[
<f d>8-.] d'-.[ <b f>-.]
c8-.[ <g e>-.] e'-.[
<des! g,>8-.] g-.[ <e des bes>-.]
f8-.[ <c f,>-.] \ottava #1 bes'-.[
bes,8-.] c'-.[ c,-.]
<f f'>8-|

%412-419
g4~\startTrillSpan
g8. fis32(\stopTrillSpan g as16[ g])
f!8-. \ottava #0 g,4~\startTrillSpan
g8. fis32(\stopTrillSpan g as16[ g])
f!8-. \ottava #1 g'4(\startTrillSpan
fis32)[(\stopTrillSpan g as bes] c[ des! e! f!]) \times 4/6{ e( des c bes as g) }
f8-. \ottava #0 g,4\startTrillSpan
\times 12/23{ fis32\stopTrillSpan g as bes c des e! f! g f e des c bes as g f e des c bes as g }

%420-427
f8-. c-. f-.
c-. f-. c-. 
f-. c-. f-. 
c-. f-. c-.
<f as>-. <c f>-. <f as>-.
<c f>-. <f as>-. <c f>-.
<f as>-. <c f>-. <f as>-.
<c f>-. <f as>-. <c f>-.

%428-435
<f as>8-. <des f>-. <f as>-.
<des f> <f as> <des f>
<f as> <des f> <f as>
<des f> <f as> <des f>
<ges as> <es ges> <ges as>
<es ges> <ges as> <es ges>
<ges as>-. <as es'>-. <es' ges>-.
<ges as>-. <as es'>-. <es' ges>-.

%436-443
<des f>8 <f, as> <des' f>
<f, as> <des' f> <f, as>
<des' f> <as des> <f as>
<des f> <as des> <f as>
<ges as> <es ges> <ges as>
<ges beses> <es ges> <ges beses>
<ges as> <as es'> <es' ges>
<ges as> <as es'> <es' ges>

%444-451
<des f>8 <f, as> <des' f>
<f, bes> <des' f> <f, bes>
<des' f> <as des> <f as>
<des f> <as des> <f as>
<es' f> <f, a> <es' f>
<ges, a> <es' ges> <ges, a>
<es' f> <f, a> <es' f>
<f a> <a es'> <es' f>

%452-459
<des f> <f, bes> <des' f>
<ges, bes> <des' ges> <ges, bes>
<des' f> <bes des> <f bes>
<des f> <bes des> <f bes>
<f des'> <des f> <f des'>
<des f> <f des'> <des f>
<f c'> <c f> <f c'>
<c f> <f c'> <c f>

%460-467
<as' b> <f as> <as b>
<f as> <as b> <b f'>
<f' as>-. <as b>-. <f as>-.
<f b,>-. <as, b> <f as>
<g bes!> <des g> <g bes>
<des g> <g bes> <des g>
<f a> <c f> <f a>
<c f> <f a> <c f>

%468-475
<f as!> <d f> <f as>
<d f> <f as> <d f>
<d g> <d g,> <d g>
<d f> <d as> <d f>
<c f> <as c> <c f>
<as c> <c f> <as c>
<c f> <g c> <c f>
<g c> <c e> <e as!>

%476-483
<f as> <des f> <f as>
<des f> <f as> <des f>
<f g> <des f> <f g>
<d f> <d g,> <d f>
<c f> <c as> <c f>
<c as> <c f> <c as>
<c f> <c as> <c f>
<c as> <c f> <c as>

%484-489
<c f> <c g> <c f>
<c g> <c f> <c g>
<c e> <g c> <c e>
<c g> <c e> <c g> \compressFullBarRests
R1*2*3/8 \bar "||"
\break

%490-497
\tempo \markup { Più presto } 8 = 350
f'8_\accent f, f'
as as, as'
c c, c'
g g, g'
bes bes, bes'
f f, f'
<f as> as, <f' as>
<e g> g, <e' g>

%498-505
f8 f, f'
<f as> as, <f' as>
<es c'> c <es c'>
<es g> bes <es g>
<des f bes> bes <des f bes>
<as f'> f <as f'>
<f' as> as, <f' as>
<e g> g, <e' g>

%506-513
\ottava #1 f'8 f,16 f' f,8
<f' as>8 as,16 <f' as> as,8
<es' c'>8 c16 <es c'> c8
<es g>8 g,16 <es' g> g,8
<des' f bes>8 bes16 <des f bes> bes8
<as f'>8 f16 <as f'> f8
<f' as>8 as,16 <f' as> as,8
<e' g>8 g,16 <e' g> g,8

%514-517
<f' as>8 as,16 <f' as> as,8
<e' g c>8 c16 <e g c> c8
<f as c>8 c16 <f as c> c8
<g' c e>8 e16 <g c e> e8

%518-525
\appoggiatura { f32[ as c] } f16 es des c bes as
g f es des c bes \ottava #0
as g f es des c
bes as g f es des \stemUp \change Staff = "lower"
c bes as g f es
des c bes as g f
es des c bes as g
f8-| r r \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 left hand                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lower = \relative f {

\clef bass
\key f \minor
\time 3/8

%1-8
\grace s16 f8-. <as c f>-. f-.
\grace s16 <as c f>8-. f-. <as c f>-.
\grace s16 f8-. <as b d>-. f-.
c8-. <e g c>-. c-.
<e g c>8-. c-. <e g c>-.
des8-. <f des'>-. des-.
bes8( <g' bes>) <c, g' bes>-.
<f as>4 r8

%9-16
f8-. <as c f>-. f-.
\grace s16 <as c f>8-. f-. <as c f>-.
f8-. <as b d>-. f-.
c8 <e g c> c
<e g c>8 c <e g c>
des8 <f des'> des
bes8( <g' bes>) <c, g' bes>
<f as>8

%16-24
\bar "|:" r8 r
c,8-.-> c'-. c,-.->
c'8-. c,-.-> c'-.
c,8-. c'-. c,-.
c'8-. c,-. c'-.
c,8-. c'-. c,(
des8->) des'-. des,-.
c8-. c'-. c,-.
f8

%24-31
r8 r
c'8-> c' c,->
c'8 c,-> c'
b,8-. b'-. b,-.
c'8-. c,-. c'-.
c,8-. c'-. c,(
des8->) des'-. des,-.
des8-. des'-. des,-.

%32-36
des'8 des, des'
des,8 des' des,
des'8 des, des'
c,8 c' c,
f8-. \bar ":|"

%36-44
<f bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.~
<f bes des e>4.

%45-52
f8-. <as c f>-. f-.
\grace s16 <as c f>8-. f-. <as c f>-.
f8 <as b d> f
c8-. <e g c>-. c-.
<e g c>8-. c-. <e g c>-.
des8-. <f des'>-. des-.
bes8( <g' bes>) <c, g' bes>-.
<f as>4 r8

%53-62
f8-. <as c f>-. f-.
\grace s16 <as c f>8-. f-. <as c f>-.
f8-. <as b d>-. f-.
c8-. <e g c>-. c-.
<e g c>8-. c-. <e g c>-.
des8 <f des'> des
d8-. <bes' d>-. d,
es8-. <bes' es>-. es,-.
c8-. c'-. c,-.
ces8-. ces'-. ces,-.

%63-70
bes8-.[ <f' bes d>-.] bes,-.[
<f' bes d>8-.] bes,-.[ <f' bes d>-.]
bes,8 <ges' a es'> bes,
<ges' a es'>8 bes, <ges' a es'>
bes,8[ <f' bes d>] bes,[
<f' bes d>8] bes,[ <f' bes d>]
bes,8 <ges' a es'> bes,
<ges' a es'>8 bes, <ges' a es'>

%71-77
bes,8-.[ <f' bes d>-.] as,!-.[
as'8-.] g,-.[ g'-.]
c,8-.[ c'-.] bes,!-.[
bes'!8-.] g,-.[ g'-.]
as,8-.[ as'-.] bes,,-.[
bes'8-.] c,-.[ c'-.]
<f, f,>8-|

%77-86
<f' bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.
<f as c>8 r r
<es! bes' des es!>8 r r^\fermataMarkup \bar "||"

%86-94
<as c es>8-.( <as c es>-. <as~ c es>-.~)
\tieDown <as~ c es>4.(
\tieNeutral <as des f>~)
<as des f>
<< {
    s2.
    des8 bes c
    des c bes
} \\ {
    \tieNeutral
    \slurUp
    <as c es>8 <as c es> <as c es>~
    <as c es>4.~
    <as es'>4.~
    <as es'>4.
} >>

%95-102
<as ces es>8 <as ces es> <as~ ces es>~
\tieDown <as~ ces es>4.(
\tieNeutral <as des fes>~)
<as des fes>
<< {
    s2.
    des8 bes ces
    des ces bes
} \\ {
    \tieNeutral
    \slurUp
    <as ces es>8 <as ces es> <as ces es>~
    <as ces es>4.~
    <as es'>4.~ 
    <as es'>4.
}  >>

%103-110
<as c! es>8 <as c es> <as~ c es>~
\tieDown <as~ c es>4.(
\tieNeutral <as des f>~)
<as des f>
<as c es>8 <as c es> <as~ c es>~
\set doubleSlurs = ##t \tieDown <as~ c es>4.(
\tieNeutral <g bes des es>~)
<g bes des es> \set doubleSlurs = ##f

%111-120
<as ces es>8 <as ces es> <as~ ces es>~
\tieDown <as~ ces es>4.(
\tieNeutral <as des fes>~)
<as des fes>
<as ces es>8 <as ces es> <as~ ces es>~
\tieDown <as~ ces es>4.
<g~ bes des fes>(
<g bes des es>)
<as ces es>
<ces, es as>

%121-130
<< {
    r8 r <beses' des>
    r r <bes! des>
    r r <es, as ces>~
    <es as ces>4.
    r8 r <beses' des>
    r r <bes! des>
    r r <es, as ces>~
    <es as ces>4.
    r8 r <beses' des>
    r r <bes! des>^\fermataMarkup
} \\ {
    des,4.
    es
    ces~
    ces
    des
    es
    ces~
    ces
    des(
    es)
} >>

%131-138
as,8-> r <as' ces>-|
as,8-> r <bes' des>-|
as, r <ces' es>-|
<bes des es>-. <bes des es>-. <as ces es>-.
es4 <g bes>8-|
es4 <as ces>8-|
es4( <bes' des>8-|)
<es, as ces>-. <es as ces>-. <es g bes>-.

%139-144
as,4 <as' ces>8
as,4 <bes' des>8
as,4 <ces' es>8
<ges des' fes> <ges des' fes> <ges bes ges'>
<< {
    r8 r <ces es>
    s4.
} \\ {
    ges4.
    <ges des' fes>8 <ges des' fes> <ges bes fes'>
} >>

%145-152
<< {
    r8 r <bes es>
    r r <ces es>
    s2.
    r8 r <bes es>
    r r <ces es>
    s2.
} \\ {
    g4.
    as
    des,4 <des' fes>8
    <es, ces' es> <es ces' es> <es bes' es>
    g4.
    as
    des,4 <des' fes>8
    <es, ces' es> <es ces' es> <es bes' es>
} >>

%153-158
es4 <bes' des>8
es,4 <ces' es>8
es,4 <des' fes>8
<es, bes' des>8 <es bes' des> <es g bes>
es4 <des' fes>8
<es, bes' des>8 <es bes' des> <es g bes>

%159-164
es4( <des' fes>8)
es,4( <des' fes>8)
es,4( <des' fes>8)
es,4( <des' fes>8)
es,4( <des' fes>8-|)
R1*3/8^\fermataMarkup \bar "||"

%165-176
\key c \major
e,4( <cis' e>8)
e,4( <cis' e>8)
e,4( <cis' e>8)
<e, b' d>-. <e b' d>-. <e a cis>-.
e4( <b' d>8)
e,4( <b' d>8)
e,4( <b' d>8)
<e, a cis>-. <e a cis>-. <e gis b>-.
e4( <cis' e>8)
e,4( <cis' e>8)
e,4( <cis' e>8)
<e, b' d>-. <e b' d>-. <e a cis>-.

%177-184
e4( <b' d>8)
e,4( <b' d>8)
e,4( <b' d>8)
<e, a cis>-. <e a cis>-. <e gis b>-.
<< {
    r8 r <a cis>
    r r <gis b>
    r r <a cis>
    r r <b d>
} \\ {
    e,4. e e e
} >>
\bar "||"

%185-196
\key f \minor \set doubleSlurs = ##t \tieNeutral
<es! as! c! es!>8 <es as c es> <es as c es>8~
<es as c es>4.(
<es bes' des es>~)
<es bes' des es>
<es as c es>8 <es as c es> <es as c es>8~
<es as c es>4.(
<es bes' des es>~)
<es bes' des es>
<es as c es>8 <es as c es> <es as c es>8~
<es as c es>4.(
<es bes' des es>~)
<es bes' des es>8 r r \set doubleSlurs = ##f

%197-204
r as,16 c es des
\stemDown c bes as g f es
des c bes as g as
bes c des es f g
as bes c des es f
g as bes c des es
f es des c bes as
g f es des c bes \stemNeutral

%205-212
as8 as'16[ c es des]
c bes as g f es
des c bes as g as
bes c des es f g
as bes c des es f
\clef treble g as bes c des es
f es des c bes as
g f es des c bes

%213-222
as8 \clef bass as16[ ces es des]
ces bes as ges fes es
des ces bes as g! as
\stemDown bes ces des es f! g!
as bes ces des es f
\clef treble g as bes ces des es
e d cis b a gis
\clef bass fis e d cis b a
gis fis e d cis b
a gis fis e \times 2/3 { d cis b }

%223-230
a4.
<a a'>
<a a'>
<a a'> \stemNeutral
<a a'>
<a' cis e>
<a cis e a>
<e' gis b>

%231-242
<< {
    r8 r <as c>
    r r <c es>
    r r <bes des>
    r r <g bes>
    r r <as c>
    r r <c es>
    r r <bes des>
    r r <g bes>
    r r <as c>
    r r <es ges a c>
    r r <f bes des>
    r r <g bes>
} \\ {
    es!4.
    es
    es
    es
    es
    es
    es
    es
    es
    c
    des
    es
} >>

%243-250
\set doubleSlurs = ##t
e,4 <e' g c>8
e,4 <e' g c>8
e,4 <e' g c>8
e,4 <e' g c>8
es,4 <es' as c>8~
<es as c>4.(
<es bes' des>~)
<es bes' des>

%251-258
e,8 r <e' g c>
e,8 r <e' g c>
e,8 r <e' g c>
e,8 r <e' g c>
es,!8 r <es'! as c>~
<es as c>4.(
<es g des'>~)
<es g des'>

%259-266
e,4 <e' g c>8
e,4 <e' g c>8
e,4 <e' g c>8
e,4 <e' g c>8
g,4 <e' g c>8~
<e g c>4.(
<f g b>~)
<f g b>

%267-270
es,8 r <es' as c>~
<es as c>4.(
<es g bes des>~)
<es g bes des>4 r8

%271-282
as,8 as'16[ c es des]
c bes as g f es
des c bes as g f
es f es des c bes
as[ c as c] es8
as,16[ c as c] es8
as,16[ c as c] es8
as,16[ c as c] es8
as,4 r8
R1*3*3/8

%283-292
R1*3/8
\once \override MultiMeasureRest #'staff-position = #-2 R1*3/8
\once \override MultiMeasureRest #'staff-position = #-6 R1*3/8
\once \override MultiMeasureRest #'staff-position = #-4 R1*3/8
R1*2*3/8
g'16[ bes g bes] des8
g,16[ bes g bes] des8
g,16[ bes g bes] des8
R1*3/8^\fermataMarkup

%293-302
R1*6*3/8
g16[ bes g bes] des8
g,16[ bes g bes] des8
g,16[ bes g bes] des8
R1*3/8^\fermataMarkup

%303-309
R1*4*3/8 \clef treble
e16[ g e g] bes8
e,16[ g e g] bes8
R1*3/8^\fermataMarkup

%310-323
R1*4*3/8
c16[ g' c, g'] bes8
c,16[ g' c, g'] bes8
R1*2*3/8
c,,16[ as' c, as'] b8
c,16[ as' c, as'] b8
R1*2*3/8 \clef bass
c,,16[ g' c, g'] c8
c,16[ g' c, g'] c8^\fermataMarkup

%324-335
\set doubleSlurs = ##f
R1*2*3/8
c,8-. c'-. c,-.
c'-. c,-. c'-.
<c, e> c' <c, e>
c' <c, e> c'
<des, f> c' <des, f>
c' <des, f> c'
<e, g> c' <e, g>
<f as> c' <f, as>
<g bes>-.( <g bes c>-. <g bes des>-.
<g bes d>-. <g bes es>-. <g bes e>-.)

%336-343
\grace s16 f8-. <as c f>-. f-.
\grace s16 <as c f>8-. f-. <as c f>-.
f8-. <as b d>-. f-.
c8-. <e g c>-. c-.
<e g c>8-. c-. <e g c>-.
des8-. <f des'>-. des-.
bes8( <g' bes>) <c, g' bes>-.
<f as>4 r8

%344-351
f8-. <as c f>-. f-.
\grace s16 <as c f>8-. f-. <as c f>-.
f8-. <as b d>-. f-.
c8 <e g c> c
<e g c>8 c <e g c>
des8 <f des'> des
bes8( <g' bes>) <c, g' bes>
<f as>8

%351-359
r8 r
c,8-.-> c'-. c,-.->
c'8-. c,-.-> c'-.
c,8-. c'-. c,-.
c'8-. c,-. c'-.
c,8-. c'-. c,(
des8->) des'-. des,-.
c8-. c'-. c,-.
f8

%359-363
r8 r
c'8-> c' c,->
c'8 c,-> c'
b,8-. b'-. b,-.
c'8-. c,-. c'-.
c,8-. c'-. c,(
des8->) des'-. des,-.
des8-. des'-. des,-.

%364-371 
des'8 des, des'
des,8 des' des,
des'8 des, des'
c,8 c' c,
f8-.

%371-379
<f bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.~
<f bes des e>4.

%380-387
f8-. <as c f>-. f-.
\grace s16 <as c f>8-. f-. <as c f>-.
f8 <as b d> f
c8-. <e g c>-. c-.
<e g c>8-. c-. <e g c>-.
des8-. <f des'>-. des-.
bes8( <g' bes>) <c, g' bes>-.
<f as>4 r8

%388-397
f8-. <as c f>-. f-.
\grace s16 <as c f>8-. f-. <as c f>-.
f8-. <as b d>-. f-.
c8-. <e g c>-. c-.
<e g c>8-. c-. <e g c>-.
des8 <f des'> des
d8-. <bes' d>-. d,
es8-. <bes' es>-. es,-.
c8-. c'-. c,-.
ces8-. ces'-. ces,-.

%398-405
bes8-.[ <f' bes d>-.] bes,-.[
<f' bes d>8-.] bes,-.[ <f' bes d>-.]
bes,8 <ges' a es'> bes,
<ges' a es'>8 bes, <ges' a es'>
bes,8[ <f' bes d>] bes,[
<f' bes d>8] bes,[ <f' bes d>]
bes,8 <ges' a es'> bes,
<ges' a es'>8 bes, <ges' a es'>

%406-412
bes,8-.[ <f' bes d>-.] as,!-.[
as'8-.] g,-.[ g'-.]
c,8-.[ c'-.] bes,!-.[
bes'!8-.] g,-.[ g'-.]
as,8-.[ as'-.] bes,,-.[
bes'8-.] c,-.[ c'-.]
<f, f,>8-|

%412-419
<f' bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.
<f as c f>8-. <f bes des e>4~
<f bes des e>4.

%420-427
<f as c>8-. r r
R1*7*3/8

%428-435
<des, as' des>4.~
<des as' des>~
<des as' des>~
<des as' des>
<c as' c>~
<c as' c>~
<c as' c>~
<c as' c>

%436-443
<des as' des>4.~
<des as' des>~
<des as' des>~
<des as' des>
<c as' c>~
<c beses' c>~
<c as' c>~
<c as' c>

%444-451
<des as' des>4.~
<des bes' des>~
<des as' des>~
<des as' des>
<c f c'>~
<c ges' c>~
<c f c'>~
<c f c'>

%452-459
<bes f' bes>4.~
<bes ges' bes>~
<bes f' bes>~
<bes f' bes>
<bes' bes'>~
<bes bes'>
<as as'>~
<as as'>

%460-467
<d, d'>4.~
<d d'>~
<d d'>~
<d d'>
<e e'>~
<e e'>
<f f'>~
<f f'>

%468-475
<b, b'>4.~
<b b'>~
<b b'>~
<b b'>
<c c'>~
<c c'>~
<c c'>~
<c c'>

%476-483
<bes! bes'!>4.~
<bes bes'>~
<bes bes'>
<b b'>
<c c'>~
<c c'>~
<c c'>~
<c c'>

%484-489
<c c'>4.~
<c c'>~
<c c'>~
<c c'> \compressFullBarRests
R1*2*3/8 \bar "||"

%490-497
f8 f' f,
as as' as,
c c' c,
g g' g,
bes bes' bes,
f f' f,
c c' c,
c c' c,

%498-505
f f' f,
des des' des,
as as' as,
es' es' es,
bes bes' bes,
des des' des,
c c' c,
c c' c,

%506-513
f'8 f'16 f, f'8
des,8 des'16 des, des'8
as,8 as'16 as, as'8
es8 es'16 es, es'8
bes,8 bes'16 bes, bes'8
des,8 des'16 des, des'8
c,8 c'16 c, c'8
c,8 c'16 c, c'8

%514-517
c,8 c'16 c, c'8
c,8 c'16 c, c'8
c,8 c'16 c, c'8
c,8 c'16 c, c'8

%518-525
\grace { s32 s  } <f, as c f>8 <f as c f> <f as c f>~
<f as c f>4.~
<f as c f>4.~
<f as c f>8 r r
\once \override MultiMeasureRest #'staff-position = #-4 R1*3/8
\once \override MultiMeasureRest #'staff-position = #-6 R1*3/8
\once \override MultiMeasureRest #'staff-position = #-12 R1*3/8
\once \override MultiMeasureRest #'staff-position = #-4 R1*3/8 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  dynamics                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynamics = {

\override DynamicTextSpanner #'dash-period = #-1.0
\override DynamicText #'extra-offset = #'(0.5 . 0.0)

s4.\p        %1
s4.*14
s8 s\f s     %16
s4.*2
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4.\p        %19
s
s\f          %21
s
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s\p          %23
s8 s\f s     %24
s4.*2
s4.\p        %27
s
s\f          %29
s
\once \override DynamicText #'extra-offset = #'(0.8 . 0.0)
s\p          %31
s
\crescTextCresc
s8\< s\! s
s4.
s\f          %35
s8 s\fz s    %36
s4.
s8 s\fz s    %38
s4.
s8 s\fz s    %40
s4.
s8 s\fz s    %42
s4.
s\p          %44
s4.*13
s8 s\< s\!   %58
s4.*4        
s4\f s\fz    %63
s\fz         %64
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4.\fz       %65
s4.          %66
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4\fz s\fz   %67
s\fz         %68
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4.\fz       %69
s4.          %70
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4\fz s\fz   %71
s\fz         %72
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s\fz s\fz    %73
s\fz         %74
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s\fz s\fz    %75
s4.\fz       %76
s2.\fz       %77
s\fz         %79
s4.\fz       %81
\crescHairpin
s8\< s8*5/6\> s8*1/6\! %82
s8 s4\fz     %83
s8 s\< s8*6/13\> s8*7/13\! %84     
s4.
s4.\fz       %86
\once \override DynamicText #'extra-offset = #'(1.2 . 0.0)
s4.\pp
s4.*15
\crescTextCresc
s8 s16 s\< s8\! %103
s4.*7
s4.\f        %111
s4.*7
s4\> s16 s\! %119
s4.
\once \override DynamicText #'extra-offset = #'(0.5 . -1.0)
s4.\p        %121
s4.
s8\f\> s s\! %123
s4.
\once \override DynamicText #'extra-offset = #'(0.5 . -1.0)
s4.\p        %125
s4.
s8\f\> s s\! %127
s4.
s8\p s s\!   %129
s\> s\! s    %130
\once \override DynamicText #'extra-offset = #'(1.0 . -1.0)
s4.\pp       %131
s4.*10
s8 s s->     %142
s4.
s8 s s->     %144
s4.*2
s16\> s s s\! s8   %147
s4.*3
s16\> s s s\! s8   %151
s4.*3
\crescHairpin
s16\< s s\> s s8\! %155
s4.
s8\> s s\!         %157
s4.*2
\crescTextCresc
s16 s\< s\! s s8   %160
\crescHairpin
s8 s s\<           %161
s8 s16 s\! s8      %162
s16\f              %163
\once \override DynamicText #'extra-offset = #'(-0.4 . 0.0)
s16\fz s4
s4.
s\pp               %165
s4.*10
s4.->              %176
s4.*3
s4.->              %180
s4.
\crescTextCresc
s8 s16\< s\! s8 %182
s4.*2
s16\fp\> s s s\! s8 %185
s4.*3
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4.\fp             %189
s4.*4
s8 s\< s\!         %194
\crescHairpin
s8 s\< s           %195
s16\! s8. s8       %196
s8 \once \override DynamicText #'extra-offset = #'(0.5 . -2.0) s\f s           %197
s4.*3
s8 s s\<           %201
s s8. s16\!
s4\> s16 s\!       %203
s4.
s8 s\p s           %205
s4.*3
s8 s s\<           %209
s s8. s16\!
s4\> s16 s\!       %211
s4.
s8 s\f s           %213
s4.*3
s4.\<              %217
s4.
s4\ff\> s16 s\!    %219
s4.*16
\crescTextCresc
s8\< s\! s\fz      %236
s4 s8\fz           %237
s4 s8\fz           %238
s4.*4
s4.\p              %243
s4.
s8\< s\! s         %245
s8.\f\> s16\! s8   %246
s4.\p              %247
s4.*3
s4.\p              %251
s
s8\< s\! s         %253
s8.\f\> s16\! s8   %254
s4.\p              %255
s4.*3
s4.\p              %259
s
s8\< s\! s         %261
s8.\f\> s16\! s8   %262
s4.\p              %263
s4.*3
s4.\f              %267
s4.*3
s8 s\ff s          %271
s4.*8
\dimTextDecresc
s8\> s\! s         %280
s4.*2
\once \override DynamicText #'extra-offset = #'(0.8 . -1.0)
s4.\p              %283
s4.*9
\once \override DynamicText #'extra-offset = #'(0.8 . 0.0)
s4.\p              %293
s4.*9
s4.\pp             %303
s4.*6
s4.\pp             %310
s4.*6
\set decrescendoText = \markup { \italic dim. }
s8\> s\! s         %317
s4.*10
s4.->              %328
s
s4.->              %330
s
\crescHairpin
\dimHairpin
s8\< s\! s         %331
s4.
s8\< s s\!         %334
s\> s s\!          %335
s4.\p        %336
s4.*14
s8 s\f s     %351
s4.*2
s4.\p        %354
s
s\f          %356
s
s\p          %358
s8 s\f s     %359
s4.*2
s4.\p        %362
s
s\f          %364
s
s\p          %368
s
\crescTextCresc
s8\< s\! s
s4.
s\f          %370
s8 s\fz s    %371
s4.
s8 s\fz s    %373
s4.
s8 s\fz s    %375
\crescHairpin
s32 s\< s s s s s\> s s s s s\!
s8 s\fz s    %377
s32 s\< s s s s s\> s s s s\! s
s4.\p        %379
s4.*13
\crescTextCresc
s8 s\< s\!   %393
s4.*4        
s4\f s\fz    %398
s\fz         %399
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4.\fz       %400
s4.          %401
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4\fz s\fz   %402
s\fz         %403
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4.\fz       %404
s4.          %405
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4\fz s\fz   %406
s\fz         %407
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s\fz s\fz    %408
s\fz         %409
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s\fz s\fz    %410
s4.\fz       %411
s2.\fz       %412
s\fz         %414
s4.\fz       %416
\crescHairpin
s8\< s8*2/3\> s8*1/3\!     %417
s8 s4\fz                   %418
s4.*2/23 s4.*7/23\< s4.*7/23\> s4.*7/23\! %419
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)    
s4.\fp       %420
s4.*3
\dimTextDecresc
\set decrescendoText = \markup { \italic decresc. }
s4.\>        %424
s4.*2\!
s8 s \once \override DynamicText #'extra-offset = #'(0.5 . -1.0) s\pp    %427
s4.*13
s4.->        %441
s4.*3
s4.->        %445
s4.*3
s4.->        %449
s4.*3
s4.->        %453
s4.*6
\dimHairpin
s8\fp\> s8.\! s16 %460
s4.*7
s4.\fp\>     %468
s4 s8\!      %469
s4.*2
\once \override DynamicText #'extra-offset = #'(1.0 . 0.0)
s4.\pp       %472
s4.*3
s4.\f\>      %476
s4.\!
s4.\p        %478
s4.
s4 s8\pp     %480
s4.*3
\dimTextDecresc
\set decrescendoText = \markup { \italic dim. }
s4.\>        %484
s4.\!
s4.*4
\once \override DynamicText #'extra-offset = #'(-3.0 . 0.0)
s4.\ff       %490
s4.->
s->
s->
s->          %494
s->
s->
s->
s4.*8
s8-> \once \override DynamicText #'extra-offset = #'(-6.5 . -.5) s\ff s   %506
s4.->
s-> 
}

pedal = {}

\score {
 
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "upper" \upper
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "lower" << \lower >>
    \new Dynamics = "pedal" \pedal
  >>

  \layout {
    % define Dynamics context
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice
      \consists "Output_property_engraver"
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "New_dynamic_engraver"
      \consists "Dynamic_align_engraver"
      \consists "Text_engraver"
      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"

      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.4 . 0.4)
    }
    % modify PianoStaff context to accept Dynamics context
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }

  \midi {}
  
}

