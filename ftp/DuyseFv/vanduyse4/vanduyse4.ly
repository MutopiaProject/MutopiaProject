% Er was een maegdetje zuiver en net
% Fourth song from:
% (Front page)

%      XXIe Nederlandsch
% Taal- en Letterkundig Congres
%           -----
%             6 
%  Oude Nederlandsche Liederen
%        bewerkt door
%       Fl. van Duyse
%         voor koor
% met begeleiding van harmonium
%           =====
%               Uitgevoerd op het Concert ingericht door de
% Regelingscommissie ter gelegenheid van het avondsfeest door haren Voorsitter
%                      Jhr. A. de MAERE-LIMNANDER
%         aan de Congresleden aangeboden op Dinsdag 25 Augusti 1891
%
% A. Vanderghinste & K. Vanderauwera, Grav:Drukk:Brussel. (V&V.161)

% (Dedication, p.3)
% Deze liederen worden den Heere Voorzitter van het
% XXIe Nederlandsch Taal- en Letterkundig Congres,
% Jhr.A. de MAERE-LIMNANDER, hartelijk opgedragen
% door zijn medelid der Regelingscommissie.
%                               FL. VAN DUYSE.

%#(set-default-paper-size "a4")
#(set-global-staff-size 16)
\version "2.12.2"
\header 
{
  mutopiatitle = "Er was een maegdetje zuiver en net"
  mutopiacomposer = "DuyseFv"
  mutopiainstrument = "Women's choir and Harmonium"
  date = "1891-08-25" % first performance
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"
  lastupdated = "2009-11-29"
  title =   "6 Oude Nederlandsche Liederen"
  subtitle = "IV. Er was een maegdetje zuiver en net"
  poet = "17de eeuw"
  composer = "Florimond Van Duyse (1843-1910)"
  source = "A. Vanderghinste & K. Vanderauwera, Brussel, 1891. (V&V.161)"
%  meter = "Allegretto grazioso"
  style = "Classical"

 footer = "Mutopia-2009/12/08-1728"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global = {
   \time 4/4
   \key bes \major
   \partial 4*1 
}

sop = \relative c' {
\clef "treble"
r4^\markup {\bold {Allegretto grazioso}} |
% 1-2
R1*2 |
% 3
r2 r4 f4\p\( \mark \default |
% 4
f2( bes4) bes |
% 5
bes2\< c4 d\! |
% 6
es( d)\> c bes\! |
% 7
a2\) \breathe f2\( |
% 8
f\< g |
% 9
d es\! |
% 10
f1\> |
% 11
bes2\)\! r4 f\p\( | \mark \default
% 12
f2( bes4) bes |
% 13
bes2\< c4\! \breathe d |
% 14
es(\> d) c(\! bes) |
% 15
a2\) \breathe f2\( |
% 16
f\< g |
% 17
d es\! |
% 18
f1\> |
% 19
bes2\)\! r4 f\p\( | \mark \default
% 20
f2( bes4) bes |
% 21
c2\< d\! |
% 22
es\> d\)\! \breathe |
% 23
f2->\( es4 d |
% 24
c2( d4) bes |
% 25
a2( g2) |
% 26
f2\) r4 bes\( | \mark \default
% 27
bes->( a) a->( g) |
% 28
f2.\) es4\( |
% 29
d2\< es\! |
% 30
f1\) ~ |
% 31
f4 f\p bes^\markup{\italic{rall:}} \breathe c |
% 32
d1->\( |
% 33
c2. bes4 | \mark \default
% 34
bes1\) |
% 35..37
R1*3 |
% 38
r2 r4 c4\p |
% 39
c2( d4) a |
% 40
bes2 \breathe c4( d) |
% 41
c2 bes |
% 42
a \breathe a |
% 43
bes \breathe a |
% 44
g a |
% 45 
c1\( |
% 46
c2\) r4 c | \mark \default
% 47
f--( e--) d--( e--) |
% 48
c2 d4( a) |
% 49
bes\(( c8[ d] c4) bes\) |
% 50
a2. r4 |
% 51
c2\> a\! \breathe |
% 52
c\< d4 e\! |
% 53
d1\> |
% 54
c2 r4\! c\( | \mark \default
% 55
g2 a |
% 56
bes4( c8[ bes] a4) g |
% 57
a2 bes |
% 58
c\) \breathe a\(\p |
% 59
d cis |
% 60
d e |
% 61
cis1\> |
% 62
d2\)\! \breathe c2 | \mark \default
% 63
f4--( e--) d--( e--) |
% 64
c2 \breathe d4( a) |
% 65
bes4( c8[ d] c4) bes |
% 66
a2 r4 a4 |
% 67
c2^\markup{\italic{rall:}} bes |
% 68
a4( bes8[ a] g4) \breathe f |
% 69
g1\(-> |
% 70
f1\) |
% 71
% original has rehearsal mark "I"
\set Score.markFormatter = #format-mark-alphabet
R1*4 \mark \default
% 75
R1 | 
% 76
r2 r4 f\( \mark "A'" |
% 77
f2( bes4) bes |
% 78
bes2 c4\< d\! |
% 79
es( d) c\> bes\! |
% 80
a2\) \breathe f2\( |
% 81
f\< g |
% 82
d es\! |
% 83
f1\> |
% 84
bes2\)\! r4 f\( | \mark "B'"
% 85
f2( bes4) bes |
% 86
bes2\< c4\! \breathe d |
% 87
es(\> d) c(\! bes) |
% 88
a2\) \breathe f2\( |
% 89
f\< g |
% 90
d es\! |
% 91
f1\> |
% 92
bes2\)\! r4 f\p\( | \mark "C'"
% 93
f2( bes4) bes |
% 94
c2\< d\! |
% 95
es\> d\)\! \breathe |
% 96
f2->\( es4 d |
% 97
c2( d4) bes |
% 98
a2( g2) |
% 99
f2\) r4 bes | \mark "D'"
% 100
bes->( a) a->( g) |
% 101
f2. es4\( |
% 102
d2\< es\! |
% 103
f1\) ~ |
% 104
f4 f\p bes^\markup{\italic{rall:}} \breathe c |
% 105
d1->\( |
% 106
c2. bes4\) | \mark "E'"
% 107
bes1 ~ |
% 108
bes2 r \bar"|."
}

alt = \relative c' {
\clef "treble"
r4 |
% 1-3
R1*3 |
% 4
r2 r4 d\p |
% 5
g2.\< f4\! |
% 6
es2\> f4 g\!
% 7
f2 f4 es |
% 8
es \breathe d\< f es |
% 9
bes2 c\! |
% 10 Decrescendo below probably forgotten in original print, added (comp. bar 18)
f2(\> es)\! |
% 11
d r |
% 12
r2 r4 d\p |
% 13
g2.\< f4\! |
% 14
es2\> f4 \breathe g\!
% 15
f2. es4 |
% 16
es-> \breathe d\< f-> es |
% 17
bes2 c\! |
% 18
f2(\> es)\! |
% 19
d r |
% 20
r2 r4 d\( |
% 21
f2( bes4) bes |
% 22
g4\< a\! bes\> f\!\) \breathe |
% 23
d'2->\( c4 bes |
% 24
a2( bes4) g |
% 25
f2( e) |
% 26 
f2\) r |
% 27
r2 r4 es |
% 28
es->( d) \breathe d->( c) |
% 29
bes2. c4\< |
% 30
d2 es\! |
% 31
f2 r |
% 32
r4 f\p g^\markup{\italic{rall:}} \breathe bes |
% 33
bes2\> a4\! bes |
% 34
bes1 |
% 35..38
R1*4 |
% 39
r2 r4 d,4 |
% 40
g2. f4 |
% 41
e2 \breathe d4( e) |
% 42
f2 e2 |
% 43
d \breathe c |
% 44
e f |
% 45
f4( e d f) |
% 46
e2 r2 |
% 47
r2 f2 |
% 48
f f |
% 49
g4 \breathe f e g |
% 50
f2. r4 |
% 51
e2\> a\! \breathe |
% 52
a\< c4 c\! |
% 53
c2\>\(( b) |
% 54
c\) r2\! |
% 55
r2 r4 c,4 |
% 56
d2 e |
% 57
f g |
% 58
a2. \breathe g4\p |
% 59
f2 e |
% 60
f g |
% 61
e1\> |
% 62
d2\! \breathe e\p |
% 63
a f4--( g--) |
% 64
a2 \breathe f |
% 65
g4( f e) g |
% 66
f2 r4 f |
% 67
d2^\markup{\italic{rall:}} d |
% 68
c2. f4 |
% 69
f4\>(\( d e2\!) |
% 70
f1\) |
% 71
R1*6
% 77
r2 r4 d\p |
% 78
g2.\< f4\! |
% 79
es2 f4\> g\!
% 80
f2 f4 es |
% 81
es \breathe d\< f es |
% 82
bes2 c\! |
% 83
f2(\> es)\! |
% 84
d r |
% 85
r2 r4 d\p |
% 86
g2.\< f4\! |
% 87
es2\> f4 \breathe g\!
% 88
f2. es4 |
% 89
es-> \breathe d\< f-> es |
% 90
bes2 c\! |
% 91
f2(\> es)\! |
% 92
d r |
% 93
r2 r4 d\( |
% 94
f2( bes4) bes |
% 95
g4\< a\! bes\> f\!\) \breathe |
% 96
d'2->\( c4 bes |
% 97
a2( bes4) g |
% 98
f2( e) |
% 99 
f2\) r |
% 100
r2 r4 es |
% 101
es->( d) \breathe d->( c) |
% 102
bes2. c4\< |
% 103
d2 es\! |
% 104
f2 r |
% 105
r4 f\p g^\markup{\italic{rall:}} \breathe bes |
% 106
bes2\> a4\! bes |
% 107
bes1 ~ |
% 108
bes2 r \bar"|."
}

toptekst = \lyricmode {
Er was een maeg -- det -- je zui -- ver en net
in Da -- vids stad ge -- bo -- ren;
het staet __ ge -- schre-- ven al in __ de __ wet,
van God was zy ver -- ko  -ren;
zy bleef __ ten al -- len ston -- de
zui -- ver van al -- le zon -- de;
zy is, voor -- waer,
een spie -- gel klaer __
voor u, o maeg -- den eer -- baer.
Een en -- gel kwam met groot eer -- waerd 
tot haer, naer Gods be -- ha -- gen,
en sprak haer toe ``O __ rei -- ne maegd, __
A -- ve gra -- ti -- a ple -- na;´´ 
Zy was ver -- won -- derd al -- zoo zeer,
dees tee -- dre cre -- a -- tu -- re,
als zy __ daer zag in __ blank __ ge -- waed
Gods en -- gel glan -- zend pu -- re.
Er was __ een maeg -- det -- je zui -- ver en net
in Da -- vids stad ge -- bo -- ren;
het staet __ ge -- schre-- ven al in __ de __ wet,
van God was zy ver -- ko  -- ren;
zy bleef __ ten al -- len ston -- de
zui -- ver van al -- le zon -- de;
zy is, __ voor -- waer,
een spie -- gel klaer __
voor u, o maeg -- den eer -- baer __.
}

alttekst = \lyricmode {
Er was een maeg -- det -- je zui -- ver en net
in Da -- vids stad ge -- bo -- ren;
het staet __ ge -- schre-- ven al in __ de wet,
van God was zy ver -- ko  -ren;
zy bleef __ ten al -- len ston -- de
zui -- ver van al -- le zon -- de;
zy is, voor waer,
een spie -- gel klaer __
voor u, o maeg -- den eer -- baer.
Een en -- gel kwam met groot eer -- waerd 
naer Gods be -- ha -- gen,
en sprak haer toe ``O __ rei -- ne maegd, __
A -- ve gra -- ti -- a ple -- na;´´ 
Zy was ver -- won -- derd zeer,
dees tee -- dre cre -- a -- tu -- re,
als zy daer __ zag in blank __ ge -- waed
Gods en -- gel glan -- zend pu -- re.
Er was een maeg -- det -- je zui -- ver en net
in Da -- vids stad ge -- bo -- ren;
het staet __ ge -- schre-- ven al in __ de wet,
van God was zy ver -- ko  -- ren;
zy bleef __ ten al -- len ston -- de
zui -- ver van al -- le zon -- de;
zy is, voor -- waer,
een spie -- gel klaer __
voor u, o maeg -- den eer -- baer __.
}

organUp = \relative c'' {
% 1-3
<< {f4( bes a g a f g es d bes g a f)} \\
{r4 bes1\p ~ bes1\( c1\)\>} >> |
% 4 .. 7-
<< {f,2(\! bes bes c4 d | es d c bes | a2)} \\
{r2\p r4 d, | g2.\< f4\! es2\> f4 g\! c,2} >> 
% 7+ .. 11-
<< {f2\( | f g | d es | f1 f2\) } \\
{f4 es | es-> d f-> es | d2 c | c\> es\! | d\p } >>
% 11+
<< {f2( } \\ {bes,4 c } >>
% 12-15
<< 
{f2(\! bes | bes c4 d   | es   d c bes | a2)} \\
{r2 d,2    | g2.\< f4\! | es2\> f4 g\! | c,2} >> 
% 15+ .. 19-
<< {f2( | f g d es | f1 f2)} \\
{f4 es | es\p d f es | d2 c | c\> es\! | d } \\ 
{ s2 |  s4\cresc s4 s\! s } >>
% 19+..22
<< {f2( f bes4 bes | c2 d | es d) } \\
{s2 | r2\p r4 d, | f1\< | g4\!\> a bes\! f } >>
% 23..26-
<< {<f' d>2( <es c>4 <d bes> <c a>2 <bes d>4 <bes d,> | a2 g | f)} \\
{f1-> | f | f4 d e c | c2} >> 
% 26+ .. 38-
<< 
{ r4 bes'4(   | bes-> a a-> g | f2.) es4(     | d2 es        | f1 ~         | f4) f( bes c |  d1        | \voiceThree c1     | bes2.) \voiceOne bes4( | 
bes-> a a-> g | f g es' d  | c1         | bes2.) } \\
{ r4 es,4     | bes1          | es4-> d d-> c | bes2.\< c4\! | d2\> es\!    | bes4\p c d g |  f2 g4 bes | \voiceOne bes g a2 | es4->  d  d->   c      |
d2 es2        | s1         | s1         | s2. } \\
{   s2        | s1            | s1            | s1           | bes4 g bes a | s1           |  f'1 ~     | \voiceTwo f2 es    | bes1 ~                 |
bes1 ~        | bes2 es2 ~ | es4 g f es | f2. } 
>>
% 38+ .. 42-
<<
{c'4( |c2 d4 a | bes2 c4 d | c2 bes   | a)  } \\
{e4   | f1     | g4 d2.    | e4 c d e | f g }
>>
% 42+ .. 46-
<<
{a2(   | bes a   | g a    | c1 ~     | c2. } \\
{e,4 f | d e c d | e2 f ~ | f4 e d f | e2 d4} \\
{s2    | s1      | s1     | s1       | s4 c f4 }
>>
% 46+ .. 48-
<< 
{c'4( | f-- e-- d-- e-- | c2) } \\
{<g e>4 | f1 ~ | f4 g}
>>
% 48+..50
<<
{d'4( a | bes2 c4 bes | a2.)\< b4\! | } \\
{f2 | g4 f e2 | f4 e f2 |}
>>
% 51..54
<<
{c'2( a | c( d4 e | d1 | c2) ~ c4 r4 } \\
{e,1 | a4 g a f | f1 ~ | f4 d e c\cresc |}
>>
% 55 .. 62-
<< 
{g'4( e a f | bes c8[ bes] a4 g | a2 bes   | c) a(     | d2 cis  | d e    | cis1-> | d2) } \\
{c,1        | f2\! e            | r4 f2 f4 | f2 a4\p g | f a g e | a f g2 | e1\>   | d2\!}
>>
% 62+ .. 70-
<< 
{c'2( | f4 e d e | c2) d4( a | bes2 c4 bes | a2. )        a4( | c2 bes | a4 bes8[ a] g4 f | g1          | f2.) } \\
{e2\p | f1 ~     | f4 g f2   | g4 f e2     | f4-- e-- d-- c-- | d1     | c1               | f4\> d e2\! | c2.  }
>>
% 70+ .. 76
<<
{<f' c>4( | es f g bes | a g f a | c, d es g |f es d f | g, a bes es | c1) |} \\
{a4 | g2 es | f d | es c | s1 | r4 f2 es4 ~ | es g f es |} \\
{s4 | bes'1 ~ | bes ~ | bes ~ | bes2 ~ bes4 r4 | s1 | s |} 
>>
% 77 .. 80-
<< {f2( bes | bes c4 d | es d c bes | a2)} \\
{r2\p r4 d, | g2.\< f4\! es2\> f4 g\! c,2} >> 
% 80+ .. 84-
<< {f2( | f g | d es | f1 | f2)} \\
{f4 es | es-> d f-> es | d2 c | c\> es\! | d\p } >>
% 84+
<< {f2( } \\ {bes,4 c } >>
% 85 .. 88-
<< {f2(\! bes | bes c4 d | es d c bes | a2)} \\
{r2 d,2 | g2.\< f4\! es2\> f4 g\! c,2} >> 
% 88+ .. 92-
<< {f2( | f g         | d es | f1       | f2)} \\
 {f4 es | es\p d f es | d2 c | c\> es\! | d } >>
% 92+ .. 95
<< {f2( | f bes4 bes | c2 d | es d) } \\
{s2 | r2\p r4 d, | f1\< | g4\!\> a bes\! f } >>
% 96 .. 99-
<< {<f' d>2( <es c>4 <d bes> | <c a>2 <bes d>4 <bes d,> | a2 g | f)} \\
{f1-> | f | f4 d e c | c2} >> 
% 99+ .. 108
<< 
{ r4 bes'4(   | bes-> a a-> g | f2.) es4(     | d2 es        | f1 ~         | f4) f( bes c |  d1        | c1                 | bes1) ~ | bes1 | } \\
{ r4 es,4     | bes1          | es4-> d d-> c | bes2.\< c4\! | d2   es      | bes4\p c d g |  f2 g4 bes | \voiceOne bes g a2 | \voiceTwo es4\> d c es\! | d1\fermata |} \\
{   s2        | s1            | s1            | s1           | bes4\> g bes a\! | s1       |  \tieDown f'1 ~     | \voiceTwo f2 es    | s1\fz | s | } 
>>
\bar"|."
}

organDown = \relative c' {
\clef bass
r4 |
% 1
<bes d>2( <c es> |
% 2
<d f> <c g'> |
% 3
f^\markup {\italic {rall:}} <es f,>)\! |
% 4-5-6-7
<< {d4 c bes a g1 g2 d4 es f g a2 } \\ {bes4( a g f es4 f es d c2 ~ c2 f1)} >>
% 8 .. 11-
<< {bes1^\markup{\italic{cresc:}} ~ bes ~ bes4 a g a c bes } \\
{bes,2( es | g4 f es c | f1 | bes,2)} >>
% 11+
g'4 a |
% 12..15
<< {d4 c bes a g1 g2 d4 es f g a2 } \\ {bes4( a g f es4 f es d c2 ~ c2 f1)} >>
% 16..19-
<< {bes1 ~ bes ~ bes4 a g a c bes } \\ 
{bes,2 es | g4 f es c | f1 | bes,2} >>
% 19+..
<< {bes'4 d | c a bes2 ~ | bes4 a bes2 ~ | bes4 c d2} \\ 
{g,4( bes | a f g2 | f bes4 bes, | es2 bes'2)} >> 
% 23..26-
<< {s1 | s1 | c2 bes | bes4-> a} \\
{bes,4( c d es | f f, bes g | c1 | f2)} >>
% 26+..28-
<< {a4-> g | f2 es | bes'} \\ {es,2( | d s2 | bes) } >>
% 28+ .. 33
<< 
{a'2 | bes4 a g2 | f1 ~   | f4 s^\markup{\italic{rall:}} bes2 | bes1 | c2. f,4 |} \\ 
{f2( | g4 f es2  | bes2 c | d4) a'4 g es                      | f1 ~ | f2. f,4 |} 
>>
% 34 .. 37
<< 
{f'1 ~   | f1 ~ | f2 g2 | bes a | } \\ 
{bes,1 ~ | bes2 c | d c | f1    | } 
>>
% 38 .. 47
<<
{d'4 c bes2   | a1      | g2 a4 bes | g1  | f1 ~ | f4 g a bes | c1 ~        | c1 ~    | c1 ~       | c1             |} \\
{bes4( a g c, | f4 e d2 | g1        | c,1 | d2 c | bes) f'2   | c'4 bes a f | <g c,>1 | c4 bes a g | f1             |} \\
{s1           | s1      | s1        | s1  | s1   | s1         | s1          | s1      | s1         | <f a>2 <g bes> |}
>>
% 48..50
<<
{c2 r2 | g1 | f1 |} \\
{a1 } \\
{f4 e d2 | \voiceTwo g2 c, | d1 |}
>>
% 51..54
<<
{a'4 b c2 ~ | c1 ~ | c4 a b g | s1 |} \\
{a2. g4 | f e f d | g1( | <g c,>2 ~ <g c,>4) r4 |}
>>
% 55 .. 62-
<<
{bes2( a | d\! s2      | c2 bes | a1) ~     | a4 f e g | f a bes e, | a bes a g | f-- g-- } \\
{s1            | g2 c4 bes   | a2 g   | f4 g( f e | d1 ~     | d2 g,2     | a1        | bes2) }
>>
% 62+ .. 76
<<
{a'4-- bes-- | a2 f4 g    | a1        | g    | f            | f^\markup{\italic{rall:}} ~ | 
f4 g a2 | bes c4 bes ~ | bes^\markup{tempo.} g a s\p | 
s1    | s   | s    | d2 bes4 a | bes^\markup{\italic{rall:}} c bes2 | bes( a) |} \\
{c,2(        |  d4 c bes2 | f'4 e) d2( | g, c | d4 c bes) a( | g a bes g                   | 
c1) ~   | c(               | f1) ~                       | 
f ~   | f ~ | f ~  | f         | es2( d4 c | f1) |}
>>
% 77 .. 80
<< {d'4^\markup{a tempo} c bes a | g1 | g2 d4 es | f g a2 | } \\ {bes4( a g f | es4 f es d | c2 ~ c2 | f1) |} >>
% 81 .. 84-
<< {bes1 ~ | bes ~ | bes4 a g a | c bes } \\
{ s2.\cresc s4\! | s1 | s | s2 } \\
{bes,2( es | g4 f es c | f1 | bes,2) } >>
% 84+
g'4 a |
% 85 .. 88
<< {d4 c bes a | g1 | g2 d4 es | f g a2 |} \\ {bes4( a g f | es4 f es d | c2 ~ c2 | f1)} >>
% 89 .. 92-
<< {bes1 ~ | bes ~ | bes4 a g a | c bes } \\ {s4 s2.\cresc | s1\! | s | s2 } \\
{bes,2 es | g4 f es c | f1 | bes,2 } >>
% 92+ .. 95
<< 
{bes'4 d   | c a bes2 ~ | bes4 a bes2 ~ | bes4 c d2  |} \\ 
{g,4(  bes | a f g2     | f2 bes4 bes,  | es2 bes'2) |} >> 
% 96 .. 99-
<< {s1 | s1 | c2 bes | bes4-> a} \\
{bes,4( c d es | f f, bes g | c1 | f2)} >>
% 99+ .. 101-
<< {a4-> g | f2 es | bes'} \\ {es,2( | d s2 | bes) } >>
% 101+ .. 
<< 
{a'2 | bes4 a g2 | f1 ~   | f4 s^\markup{\italic{rall:}} bes2 | bes1 | c2. f,4 |} \\ 
{f2( | g4 f es2  | bes2 c | d4) a'4 g es                      | f1 ~ | f2. f,4 |} 
>>
% 107 .. 108
<< {g'4 f es g | f1\fermata} \\ {bes,1 ~ | bes1\fermata} >>
\bar"|." 
}

\score {
	<<
		\new ChoirStaff {
			<<
			\new Staff = sopStaff { 
			    \set Staff.instrumentName = "Sopraan."
			    \set Staff.midiInstrument = "lead 6 (voice)"
			    \new Voice = sopVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\sop
			    } 
			}
			\new Lyrics \lyricsto sopVoice \toptekst
		
			\new Staff = altStaff { 
			    \set Staff.instrumentName = "Alt."
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = altVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\alt
			    } 
			}
			\new Lyrics \lyricsto altVoice \alttekst
			>>
		}
			\new PianoStaff <<
		        \set PianoStaff.midiInstrument = "reed organ"
		        \set PianoStaff.instrumentName = "Harmonium"
		        \new Staff = "up" {
		          #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
			  \global
		          \organUp
		        }
		        \new Staff = "down" {
		          #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
			  \global
		          \organDown
		        }
			>>
	>>
    
  \layout {
    \context {
      \RemoveEmptyStaffContext
      \override RemoveEmptyVerticalGroup #'remove-first = ##f
    }
  }
  \midi {
    \context {
      \Score
          tempoWholesPerMinute = #(ly:make-moment 160 4)
    }
  }
}
% EOF
