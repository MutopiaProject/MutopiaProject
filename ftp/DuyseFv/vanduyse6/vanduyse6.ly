% Willen wy 't haesken jagen door de hei?
% Sixth & last song from:
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
\version "2.12.1"
\header 
{
  mutopiatitle = "Willen wy 't haesken jagen door de hei?"
  mutopiacomposer = "DuyseFv"
  mutopiainstrument = "Men's choir and Harmonium"
  date = "1891-08-25" % first performance
  copyright = \markup {\italic "(I) De begeleiding voor 2 Hoornen en 2 Blaaspijpen geschreven, kan desnoods door die van het Harmonium vervangen worden." }
%              \roman "Creative Commons Attribution-ShareAlike 3.0"} 
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "krvbr@yahoo.co.uk"
  lastupdated = "2009-10-29"
  title =   "6 Oude Nederlandsche Liederen"
  subtitle = "VI. Willen wy 't haesken jagen door de hei?"
  poet = "18de eeuw"
  composer = "Florimond Van Duyse (1843-1910)"
  source = "A. Vanderghinste & K. Vanderauwera, Brussel, 1891. (V&V.161)"
%  meter = "Allegro non troppo"
  style = "Classical"

 mutopiacopyright = "Creative Commons Attribution-ShareAlike 3.0"
 footer = "Mutopia-2009/11/02-1724"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global = {
   \time 6/8
   \key f \major
   \partial 8*3 
}

ten = \relative c {
\clef "treble_8"
r4.^\markup {\bold {Allegro non troppo}} |
% 1
R2.*7 |
% 8
r4\fermata r8 f4\p a8 |
% 9
c4. c4 c8 |
% 10
c4. \breathe c4 c8 |
% 11
d4\> c8\! c4 bes8 |
% 12
a4. \breathe a4 c8 |
% 13
bes4-> a8 g4 bes8 |
% 14
a4-> f8 \breathe a4 c8 |
% 15
bes4-> a8 g4 bes8 |
% 16
\time 9/8
a4-> f8 \breathe c'4\mf^\markup {\italic {rall:}} c8 d c bes |
% 17
\time 6/8
a4.-- g4.-- |
% 18
\time 9/8
c4 r8 c4\mf c8 d-- c-- bes-- |
% 19
\time 6/8
a4.-- g-- | 
% 20
f4 r8^\markup{tempo} f'4.\sfz^\markup {\italic {cresc:}} | 
% 21
f,4\p f8 f g a |
% 22
g4 g8 \breathe f'4.\sfz |
% 23
f,4 f8 g[ a] g |
% 24
f4\f r8 f'4.\sfz^\markup{\italic {cresc:}}
% 25
f,4\p f8 f g a |
% 26
g4 g8 \breathe f'4.\sfz |
% 27
f,4 f8 g[ a] g |
% 28
f4\f r8 f4\p a8 |
% 29
c2.~ |
% 30
c4 r8 f,4 a8
% 31
c2. ~
% 32
c4 r8^\markup{ \italic {cresc: e rall:}} c4 c8 |
% 33
d4. <c f> \breathe |
% 34
<d f> <c e>\fermata |
% 35
<c f>4\f r8 r4 r8 |
% 36 .. 39
R2.*4 |
% 40
r4 r8\fermata a4\p a8 |
% 41
c4.-> \breathe d4 d8 |
% 42
e4.-> \breathe d4 a8
% 43
c4-> d8 c4 b8 |
% 44
a4 r8 a4\p a8 |
% 45
d4 d8 e4\> d8\! |
% 46
c4 a8 \breathe a4 a8 |
% 47
d4 d8 e4\> d8\! |
% 48
\time 9/8
c4 a8 \breathe a4\mf\< a8 b[( c]) d\! |
% 49
\time 6/8
c4.--\> b4.--\! |
% 50
a4 r8 r4 r8 |
% 51
c4\f c8^\markup{\italic{rall.}} << {d8[-- e--] f--} {c4 c8} >> |
% 52
<c e>4.-> <b d> |
% 53
<c g>4 r8 r4^\markup{tempo.} r8 |
% 54
r2. |
% 55
r4 r8 c4\p c8 |
% 56
c2.~ |
% 57
c4 r8 r4 r8 |
% 58
r2. |
% 59
r4 r8 c4\f c8 |
% 60
c2.~^\markup{\italic{rall:}}
% 61
c4 r8 f,4\p^\markup{Tempo.} a8 |
% 62
c4. \breathe c4 c8 |
% 63
c4.-> \breathe c4 c8 |
% 64
d4\> c8\! c4 bes8 |
% 65
a4 r8 a4\p c8 |
% 66
bes4-> a8 g4 bes8 |
% 67
a4-> f8 \breathe a4 c8 |
% 68
bes4-> a8 g4 bes8 |
% 69
\time 9/8
a4-> f8 \breathe c'4\mf c8 d c bes |
% 70
\time 6/8
a4.-- g4.-- |
% 71
\time 9/8
% "rall:" below is not 
% followed by a "tempo" later on, so could be an error.
c4 r8 c4\mf c8^\markup {\italic {rall:}} d c bes |
% 72
\time 6/8
a4.-- g-- | 
% 73
% "tempo"?
% combination of "fz" and "p" not digested by LP -- p delayed one beat to 74
f4 r8 f'4.\fz^\markup {\italic {cresc:}} | 
% 74
f,4\p f8 f g a |
% 75
g4 g8 \breathe f'4.\fz |
% 76
f,4 f8 g[ a] g |
% 77
% combination of "fz" and "p" not digested by LP -- p delayed one beat to 78
f4\f r8 f'4.\fz^\markup{\italic {cresc:}}
% 78
f,4\p f8 f g a |
% 79
g4 g8 \breathe f'4.\fz |
% 80
f,4 f8 g[ a] g |
% 81
f4 r8 f4\p a8 |
% 82
c2.~ |
% 83
c4 r8 f,4 a8
% 84
c2. ~
% 85
c4 r8^\markup{ \italic {cresc: e rall:}} c4 c8 |
% 86
d4.-> <c f>-> \breathe |
% 87
<d f>-> <c e>->\fermata |
% 88
<c f>2.\f~ 
% 89
<c f>2.~ 
% 90
<c f>4 r8 r4 r8 \bar"|."
}

bas = \relative c {
\clef bass
r4.
R2.*8 |
% 9
<f a,>4.\p <g c,>
% 10
<a f> \breathe <a f>4 <a f>8 |
% 11
<bes bes,>4\> <a c,>8\! <a d,>4 <g e>8 |
% 
f4. \breathe f4 a8 |
% 
g4-> f8 e4 g8
% 
f4-> f8 \breathe f4 a8 |
% 
g4-> f8 e4 g8 |
% 
\time 9/8
f4-> f8 \breathe <f a>4\mf^\markup {\italic {rall:}} <f a>8 <bes bes,> <a bes,> <g bes,> |
% 17
\time 6/8
<f c>4.-- <e bes>-- |
% 18
\time 9/8
<f a,>4 r8 <f a>4\mf <f a>8 <bes bes,> <a bes,> <g bes,> |
% 19
\time 6/8
<f c>4.-- <e c>-- |
% 20
f4 r8^\markup{tempo} <f, a>4.\sfz^\markup {\italic {cresc:}} |
% 21
<g bes>4\p <g bes>8 <a c> <a c> <a c> |
% 22
<bes d>4 <bes d>8 \breathe <c e>4.\sfz |
% 23
<d f>4 <d f>8 <c e>4 <c e>8 |
% 24
f4 r8 <f, a>4.\sfz^\markup {\italic {cresc:}} |
% 25 "p" below coincides in original score with sfz above, corrected
<g bes>4\p <g bes>8 <c a>  <c a>  <c a> |
% 26
<d bes>4 <d bes>8 \breathe <e c>4.\sfz |
% 27
<d f>4 <d f>8 <c e>4 <c e>8 |
% 28
f4\f r8 r4 r8
% 29
r4 r8 <g c,>4\p <g c,>8 |
% 30
<f a>4 r8 r4 r8 |
% 31
r4 r8 <g c,>4 <g c,>8 |
% 32
<f a>4 r8^\markup{ \italic {cresc: e rall:}} <f a>4 <f a>8 |
% 33
bes4. a \breathe |
% 34
<g bes> <bes c,>\fermata |
% 35
<a f>4 r8 r4 r8 |
% 36 .. 39
R2.*4 |
% 40
r4 r8\fermata a4\p a8 |
% 41
a4.-> \breathe <a b>4 <a b>8 |
% 42
<a c>4.-> \breathe <a f>4 <a f>8 |
% 43
<a e>4-> <a f>8 <gis e>4 <gis e>8 |
% 44
a4 r8 a4\p g8 |
% 45
<a f>4 <a f>8 <gis e>4\> <gis e>8\! |
% 46
a4 a8 \breathe a4 <a g>8 |
% 47
<a f>4 <a f>8 <gis e>4\> <gis e>8\! |
% 48
\time 9/8
a4 a8 \breathe a4\< g8 << {a4 a8} {f8[( e]) d} >> |
% 49
\time 6/8
<e a>4.--\> <gis e>--\! |
% 50
a4 r8 r4 r8 |
% 51
a4\f g8^\markup{\italic{rall:}} f[( e]) d |
% 52
g4.-> <f g,>-> |
% 53
<c e>4 r8 r4 r8 |
% 54
r2. |
% 55
r4 r8 c'4\p c8 |
% 56
c2.~ |
% 57
c4 r8 r4 r8 |
% 58
r2. |
% 59
r4 r8 c4\f c8 |
% 60
c2.~^\markup{\italic{rall:}}
% 61
c4 r8 r4 r8 |
% 62
<f, a,>4.\p \breathe <g c,>
% 63
<a f>-> \breathe <a f>4 <a f>8 |
% 64
<bes bes,>4\> <a c,>8\! <a d,>4 <g e>8 |
% 65
f4 r8 f4\p a8 |
% 66
g4-> f8 e4 g8
% 67
f4-> f8 \breathe f4 a8 |
% 68
g4-> f8 e4 g8 |
% 69
\time 9/8
f4-> f8 \breathe <f a>4\mf <f a>8 <bes-- bes,> <a-- bes,> <g bes,> |
% 70
\time 6/8
<f c>4.-- <e bes>-- |
% 71
\time 9/8
% see comment in tenor voice
<f a,>4 r8 <f a>4\mf <f a>8^\markup {\italic {rall:}} <bes bes,> <a bes,> <g bes,> |
% 72
\time 6/8
<f c>4.-- <e c>-- |
% 73
% see comment in tenor voice
f4 r8 <f, a>4.\fz^\markup {\italic {cresc:}} |
% 74
<g bes>4\p <g bes>8 <a c> <a c> <a c> |
% 75
<bes d>4 <bes d>8 \breathe <c e>4.\fz |
% 76
<d f>4 <d f>8 <c e>4 <c e>8 |
% 77 see remark in tenor voice
f4 r8 <f, a>4.\fz^\markup {\italic {cresc:}} |
% 78
<g bes>4\p <g bes>8 <c a>  <c a>  <c a> |
% 79
<d bes>4 <d bes>8 \breathe <e c>4.\fz |
% 80
<d f>4 <d f>8 <c e>4 <c e>8 |
% 81
f4\f r8 r4 r8
% 82
r4 r8 <g c,>4\p <g c,>8 |
% 83
<f a>4 r8 r4 r8 |
% 84
r4 r8 <g c,>4 <g c,>8 |
% 85
<f a>4 r8^\markup{ \italic {cresc: e rall:}} <f a>4 <f a>8 |
% 86
bes4. a \breathe |
% 87
<g bes> <bes c,>\fermata |
% 88
<a f>2.\f~ |
% 89
<a f>2.~
% 90
<a f>4 r8 r4 r8 |
\bar"|."
}

toptekst = \lyricmode {
Wil -- len wy, wil -- len wy 
't_haes -- ken ja -- gen door de heî?"
Ja, wy wil -- len door de hei -- de 
't_haes -- ken ja -- gen al -- le bei -- de,
't_haes -- ken wil -- len wy ja -- gen gaen 
't_haes -- ken wil -- len wy ja -- gen gaen."
Deur, haes -- ken, doo -- de -- lik haes -- ken,
deur, haes -- ken, door de heî, 
Deur, haes -- ken, doo -- de -- lik haes -- ken,
deur, haes -- ken, door de heî.
Wil -- len wy, __ wil -- len wy __
't_haes -- ken ja -- gen door de heî?"

't_Haes -- ken bly, 't_haes -- ken bly
kwam ge -- loo -- pen door de heî;
on -- der 't_groen ge -- boomt ge -- ze -- ten,
wa -- ren zy ge -- heel ver -- ge -- ten
wat ze moes -- ten ja -- gen gaen,
wat ze moes -- ten ja -- gen gaen.
Haes -- ken vry, haes -- ken bly!
Haes -- ken bly, haes -- ken vry,
wil maar spe -- len door de heî;
't_ja -- ger -- ken dat is ge -- van -- gen 
deur heur schoo -- ne roo -- de wan -- gen,
't_meis -- ken wil -- de hem ja -- gen gaen,
't_meis -- ken wil -- de hem ja -- gen gaen,
Deur, haes -- ken, doo -- de -- lik haes -- ken,
deur, haes -- ken, door de heî, 
Deur, haes -- ken, doo -- de -- lik haes -- ken,
deur, haes -- ken, door de heî. 
% Original print has here "blij / vrij", not "bly / vry" as before:
Haes -- ken blij, haes -- ken vrij,
wil maar spe -- len door de heî. __
}

ondertekst = \lyricmode {
% Original starts as "Wy len" (sic)
Wil -- len wy
't_haes -- ken ja -- gen door de heî?"
Ja, wy wil -- len door de hei -- de 
't_haes -- ken ja -- gen al -- le bei -- de,
't_haes -- ken wil -- len wy ja -- gen gaen 
't_haes -- ken wil -- len wy ja -- gen gaen."
Deur, haes -- ken, doo -- de -- lik haes -- ken,
deur, haes -- ken, door de heî, 
Deur, haes -- ken, doo -- de -- lik haes -- ken,
deur, haes -- ken, door de heî.
Wil -- len wy, wil -- len wy 
't_haes -- ken ja -- gen door de heî?"

't_Haes -- ken bly, 't_haes -- ken bly
kwam ge -- loo -- pen door de heî;
on -- der 't_groen ge -- boomt ge -- ze -- ten,
wa -- ren zy ge -- heel ver -- ge -- ten
wat ze moes -- ten ja -- gen gaen,
wat ze moes -- ten ja -- gen gaen.
Haes -- ken vry, haes -- ken bly!
Haes -- ken vry,
wil maar spe -- len door de heî;
't_ja -- ger -- ken dat is ge -- van -- gen 
deur heur schoo -- ne roo -- de wan -- gen,
't_meis -- ken wil -- de hem ja -- gen gaen,
't_meis -- ken wil -- de hem ja -- gen gaen,
Deur, haes -- ken, doo -- de -- lik haes -- ken,
deur, haes -- ken, door de heî, 
Deur, haes -- ken, doo -- de -- lik haes -- ken,
deur, haes -- ken, door de heî. 
% Original print has here "blij / vrij", not "bly / vry":
Haes -- ken blij, haes -- ken vrij,
wil maar spe -- len door de heî. __
}

organUp = \relative c' {
c8\f[ c c] |
% 1
<c g'>4.-> c8[ c c] |
<c g'>4.-> c8[ c c] |
<c g'>4-> <f a>8 <a, f'>4 <f' a>8 |
<c g'>4\fermata r8 c8\pp[ c c] |
<c g'>4.-> c8[ c c] |
<c g'>4.-> c8[ c c] |
% 7
<c g'>4-> <f a>8 <a, f'>4 <f' a>8 |
% 8
<c g'>4\fermata r8 r4 r8 |
% 9
<a f'>4.\p <c g'> |
% 10
<f a>4. r |
% 11
r2. |
% 12
r4 r8 <a f>4( <a c>8 |
% 13
<bes g>4-> <a f>8 <g c,>4 <g bes>8 |
% 14
<a f>4-> f8) <a f>4( <a c>8 |
% 15
<bes g>4-> <a f>8 <g c,>4 <g bes>8 |
% 16
\time 9/8
<a f>4-> f8) <f c>4 <f c>8 <f d>8[-- <f c>-- <f bes,>]-- |
% 17
\time 6/8
<f a,>4.-- <g c,>-- |
% 18
\time 9/8
<c c,>4 r8 <f, c>4\mf <f c>8 <f d>8[-- <f c>-- <f bes,>]-- |
% 19
\time 6/8
<f a,>4.-- <g e bes>4.-- |
% 20
<f c a>4 r8^\markup{tempo} f4.\sfz^\markup {\italic {cresc:}} |
% 21
f,\p << {f'8[ g a]} \\ f4. >>
% 22
<g f>4.-> f\sfz |
% 23
f, << {g'8[ a g]} \\ c,4. >> |
% 24
<f a,>4\f r8 f4.\sfz |
% 25
f, << {f'8[ g a]} \\ f4. >>
% 26 original score has "\sf" below:
<f g>4. f4.\sfz 
% 27
f, << {g'8[ a g]} \\ c,4. >> |
% 28
<a f'>4\f r8 r4.
% 29
r4 r8 <c g'>4\p <c g'>8 |
% 30
<c a'>4 r8 r4 r8 |
% 31
r4 r8 <c g'>4 <c g'>8 |
% 32
<c a'>4 r8 <c f>4. |
% 33
<d f> <c f> |
% 34
<bes f'> <bes e>\fermata |
% 35
<a f'>4\f r8 <c g'>4\mf <c g'>8 |
% 36
<f a>4 <g bes>8 <a c>4 <g bes>8 |
% 37
<f a>4. <a c>8[ <g bes> <f a>] |
% 38
<f a>4. <g c,> |
% 39
<f a,>4 r8 <f a,>8[-.\p <f a,>-. <f a,>-.] |
% 40
<f a,>4-. r8\fermata r4 r8 |
% 41..43
R2.*3 |
% 44
r8 <a a,>8[-.\p <a a,>]-. <a a,>[-.  <a a,>-.  <a a,>]-. |
% 45
<a a,>4-. r8 r4 r8 |
% 46
r8 <a a,>8[-.\p <a a,>]-. <a a,>[-.  <a a,>-.  <a a,>]-. |
% 47
<a a,>4-. r8 r4 r8 |
% 48
\time 9/8
r4 r8 a4\< <a a,>8 <a d, b>8[-. <a e c>-. <a f d>-.]\! |
% 49
<a e c>4.--\> <b gis d>--\! |
% 50
<a e c>8 <a a,>8[-.\< <a a,>]-. <a a,>[-.  <a a,>-.  <a a,>]-.\! |
% 51
<c e, c>4\f c,8 <c d>8[-. <c e>-. <c f>-.] |
% 52
<c e>4.-- <b f' g>4.-- |
% 53
<c e g>4 r8 c[\f^\markup{tempo.} c c] |
% 54
<c g'>4.-> c8[ c c] |
% 55
<c g'>4.-> c8[\p c c] |
% 56
<c g'>4-> <f a>8 <a, f'>4-> <f' a>8 |
% 57
<c g'>4-. r8 c8\mf[ c c] |
% 58
<c g'>4.-> c8[ c c] |
% 59
<c g'>4.-> c8[ c c] |
% 60
<c g'>8[-- <f a>-- <g bes>--] <a c>--[ <g bes>-- <f a>--] |
% 61
<g c,>4 r8 r4 r8 |
% 62
<a, f'>4.\p <c g'> |
% 63
<f a>4. r |
% 64
r2. |
% 65
r4 r8 <a f>4( <a c>8 |
% 66
<bes g>4-> <a f>8 <g c,>4 <g bes>8 |
% 67
<a f>4-> f8) <a f>4( <a c>8 |
% 68
<bes g>4-> <a f>8 <g c,>4 <g bes>8 |
% 69
\time 9/8
<a f>4-> f8) <f c>4 <f c>8 <f d>8[-- <f c>-- <f bes,>]-- |
% 70
\time 6/8
<f a,>4.-- <g c,>-- |
% 71
\time 9/8
<c c,>4 r8 <f, c>4\mf <f c>8 <f d>8[-- <f c>-- <f bes,>]-- |
% 72
\time 6/8
<f a,>4.-- <g e bes>4.-- |
% 73
<f c a>4 r8 f4.\fz^\markup {\italic {cresc:}} |
% 74
f,\p << {f'8[ g a]} \\ f4. >>
% 75
<g f>4.-> f\fz |
% 76
f, << {g'8[ a g]} \\ c,4. >> |
% 77
<f a,>4\f r8 f4.\fz |
% 78
f, << {f'8[ g a]} \\ f4. >>
% 79
<f g>4. f4.\fz 
% 80
f, << {g'8[ a g]} \\ c,4. >> |
% 81
<a f'>4\f r8 r4.
% 82
r4 r8 <c g'>4\p <c g'>8 |
% 83
<c a'>4 r8 r4 r8 |
% 84
r4 r8 <c g'>4 <c g'>8 |
% 85
<c a'>4 r8 <c f>4.^\markup{\italic{cresc: e rall:}} |
% 86
<d f> <c f> |
% 87
<bes f'> <bes e>\fermata |
% 88
<a f'>4 r8 <c a'>8[-.\f^\markup{tempo.} <c a'>-. <c a'>-.]
% 89
<c a'>4-. r8 <c a'>4-. r8 |
% 90
<c a'>4-.\f r8 r4 r8
\bar"|."
}

organDown = \relative c {
\clef bass
r4. |
R2.*6 |
% 7
r2.^\markup {\italic {rit.}} |
% 8
r4\fermata r8^\markup {tempo}  r4 r8 |
% 9
r2.
% 10
r4 r8 f4\p( f,8 |
% 11
bes4\< c8 d4 e8\! |
% 12
f4) r8 d4.\p(
% 13
g,4. c |
% 14
f,) d'( |
% 15
g, c |
% 16
\time 9/8
f,4.) << {a'4\mf^\markup {\italic {rall.}} a8 bes[-- a-- g]--} \\ {f4. bes,} >> |
% 17
\time 6/8
<f' c>4.--\< <e bes>-- |
% 18
\time 9/8
<f a,>4\! r8 << {a4\mf a8 bes[-- a-- g]--} \\ {f4. bes,} >> |
% 19
\time 6/8
<c f>4.-- c-- |
% 20
f,4 r8^\markup {tempo} <f a>4.\sfz^\markup {\italic {cresc:}} |
% 21
<g bes>4.\p <a c> |
% 22
<bes d> <c e> |
% 23
d4. <c e> |
% 24
<c f,>4 r8 <a f>4.^\markup{\italic {cresc:}} |
% 25 "p" in original score coincides with sfz above
<g bes>\p <a c> |
% 26
<bes d> <c e> |
% 27
d4. <c e> |
% 28
<c f,>4 r8 r4.
% 29
r4 r8 <c e>4 <c e>8 |
% 30
<f f,>4 r8 r4 r8 |
% 31
r4 r8 <e c>4 <e c>8 |
% 32
<f f,>4 r8^\markup{ \italic {cresc: e rall:}} <f a>4. |
% 33
bes4. a |
% 34
g <g c,>\fermata
% 35
<f f,>4\f r8 r4 r8 |
% 36 .. 39
R2.*4 |
% 40
r4 r8\fermata r4 r8 |
% 41..47
R2.*7 |
% 48
\time 9/8
r4 r8 a4\< g8 f[-. e-. d-.]\! |
% 49
e4.\> e,\! |
% 50
a8 r8 r8 r4 r8 |
% 51
a'4\f <a g>8^\markup{\italic{rall:}} <a f>[-. <a e>-. <a d,>-.] |
% 52
g4. g, |
% 53
c4 r8 r4 r8 |
% 54 .. 55
R2.*2 |
% 56
\acciaccatura b8 c4-. r8 \acciaccatura b8 c4-. r8 |
% 57
\acciaccatura b8 c4-. r8 r4 r8 |
% 58 .. 59
r2.*2 |
% 60
\acciaccatura b8 c4-.^\markup{\italic{rall:}} r8 \acciaccatura b8 c4-. r8 |
% 61
\acciaccatura b8 c4-. r8 r4 r8 |
% 62
r2.
% 63
r4 r8 f4\p( f,8 |
% 64
bes4\< c8 d4 e8\! |
% 65
f4) r8 d4.\p(
% 66
g,4. c |
% 67
f,) d'( |
% 68
g, c |
% 69
\time 9/8
f,4.) << {a'4\mf a8 bes[-- a-- g]--} \\ {f4. bes,} >> |
% 70
\time 6/8
<f' c>4.--\< <e bes>-- |
% 71
\time 9/8
<f a,>4\! r8 << {a4\mf a8 bes[-- a-- g]--} \\ {f4. bes,} >> |
% 72
\time 6/8
<c f>4.-- c-- |
% 73
f,4 r8 <f a>4.\fz^\markup {\italic {cresc:}} |
% 74
<g bes>4.\p <a c> |
% 75
<bes d> <c e> |
% 76
d4. <c e> |
% 77
<c f,>4 r8 <a f>4.^\markup{\italic {cresc:}} |
% 78
<g bes>\p <a c> |
% 79
<bes d> <c e> |
% 80
d4. <c e> |
% 81
<c f,>4 r8 r4.
% 82
r4 r8 <c e>4 <c e>8 |
% 83
<f f,>4 r8 r4 r8 |
% 84
r4 r8 <e c>4 <e c>8 |
% 85
<f f,>4 r8^\markup{ \italic {cresc: e rall:}} <f a>4. |
% 86
bes4. a |
% 87
g <g c,>\fermata
% 88
<f f,>4 r8 <f f,>8-.[ <f f,>-. <f f,>-.] |
% 89
<f f,>4-. r8 <f f,>4-. r8 |
% 90
<f f,>4-.\f r8 r4 r8 |
\bar"|."
}

\score {
	<<
		\new ChoirStaff {
			<<
			\new Staff = tenorStaff { 
			    \set Staff.instrumentName = "Tenor 1-2"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = tenorVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\ten
			    } 
			}
			\new Lyrics \lyricsto tenorVoice \toptekst
		
			\new Staff = bassStaff { 
			    \set Staff.instrumentName = "Bas 1-2"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = basVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\bas
			    } 
			}
			\new Lyrics \lyricsto basVoice \ondertekst
		
			>>
		}
			\new PianoStaff <<
		        \set PianoStaff.midiInstrument = "reed organ"
		        \set PianoStaff.instrumentName = "Harmonium (I)"
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
          tempoWholesPerMinute = #(ly:make-moment 132 4)
    }
  }
}
% EOF
