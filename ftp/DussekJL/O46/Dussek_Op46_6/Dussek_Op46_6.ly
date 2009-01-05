\header {
  filename=  "Dussek_Op46_6"
  title =    \markup \center-align {"Six sonates faciles pour le Piano Forte" "avec accompagnement de Violon Ad Libitum" " "}
  opus =     "Opus 46 no. 6 (Craw 22)"
  subtitle=  "Sonate VI"
  composer="J. L. Dussek (1760-1812)"
  source="Six SONATES Faciles Pour le Piano Forte AVEC ACCOMPAGNEMENT de Violon Ad Libitum; à Paris Chez RICHAULT, Editeur de Musique, Boulevard Poissonnière N° 26 au Ier 663.R. (undated, apparently first half 19th Century)"
  copyright="Creative Commons Attribution-ShareAlike 3.0"
  style = "Classical"
  mutopiatitle = "Six sonates faciles pour le Piano Forte (VI)"
  mutopiacomposer = "DussekJL"
  mutopiainstrument = "Piano"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "kris.vanbruwaene@gmail.com"
  lastupdated = "2008-12-23"
 footer = "Mutopia-2009/01/05-1611"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
\version "2.10.33"

globalAllegro = {
   \time 4/4
   \key g \major
}

TopVoiceAllegro = \relative g' {
<b d g>2 <b d g> |
%2
<b d g>4 <b g> <a c> <b d> |
%3
<b d>2. <a c>4 |
%4
<g b> g'8 fis a g fis e |
%5
<d b>2. <a c>4 |
%6
<g b> r r8 d'16 e d8 d |
%7
d'4 b a g |
%8
<a d,>4 r r8 d,16 e d8 d |
%9
d'4 c b a |
%10
\times 2/3 {b8[ d c]} \times 2/3 {b[ a g]} \times 2/3 {fis[ a g]} \times 2/3 {fis[ e d]} |
%11
\times 2/3 {r d' c} \times 2/3 {b[ a g]} \times 2/3 {r a g} \times 2/3 {fis[ e d]} |
%12
g4 g,16 a b c d8 b a g |
%13
fis4 <fis d'> <fis d'> r |
%14
a'2 g8 fis e d |
%15
cis16 d e d cis4 r8 e' cis a |
%16
d4. a8 g fis e d |
%17
cis16[ d e d] cis4 r8 e' cis a |
%18
d4. a8 b b16 a b8 cis |
%19
d a r a a16 g fis g a8 g |
%20
fis4 r8 a b b16 a b8 cis |
%21
d a \grace cis16 b8 a16 g fis4 e \trill |
%22
fis16 d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' |
%23
fis,16 d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' |
%24
<g, b>8 r <b d> r <g b> r <e g> r |
%25
fis16 d' fis, d' fis, d' fis, d' e, cis' e, cis' e, cis' e, cis' |
%26
fis,16 d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' |
%27
fis,16 d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' |
%28
<g, b>8 r <b d> r <g b> r <e g> r |
%29
fis16 d' fis, d' fis, d' fis, d' e, cis' e, cis' e, cis' e, cis' |
%30
<d fis,>4 a8 fis a8 fis g e |
%31
d4 a'8 fis a fis g e |
%32
d4 <fis d'> <fis d'> r \bar ":|:" |
%33
<fis, d'>2 <fis d'> |
%34
<fis d'>4 <d' fis> <e g> <fis a> |
%35
<fis a>2. <e g>4 |
%36
<d fis>4 d'8 cis e d cis b |
%37
<fis a>2. <e g>4 |
%38
<d fis>2 r8 a16 b a8 a |
%39
a'4 fis e d | e r r8 a,16 b a8 a |
%41
a'4 g fis e |
%42
d2 r8 a16 b a8 a |
%43
a'4 g fis e |
%44
dis2 r8 b16 c b8 b |
%45
b'4 a g fis |
%46
\times 2/3 {g8 b a} \times 2/3 {g fis e} \times 2/3 {dis fis e} \times 2/3 {dis cis b} |
%47
\times 2/3 {r b' a} \times 2/3 {g fis e} \times 2/3 {r fis e} \times 2/3 {dis c b} |
%48
e4 e,16( fis g a) b8 g fis e |
%49
dis4 <dis b'> <dis b'>  r |
%50
gis'16 e' gis, e' gis, e' gis, e' gis, e' gis, e' gis, e' gis, e' |
%51
gis, e' gis, e' gis, e' gis, e' gis, e' gis, e' gis, e' gis, e' |
%52
<c a>2 <c e>8 r <b d> r |
%53
<a c>8 r <g b> r <a fis> r <g e> r |
%54
fis16 d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' |
%55
fis,16 d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' fis, d' |
%56
<b g>2 <d b>8 r <a c> r |
%57
<g b> r <fis a> r <e g> r <d fis> r |
%58
<c e>4 e16 dis e fis <d fis>4 fis16 e fis a |
%59
g4 g16 fis g b a4 a16 gis16 a c |
%60
<< {b4 d c b} \\ {g4 b8 d, a' d, g d} >>
%61
<fis a>4\p d' d d |
%62
cis8( d e d) d( c b a) |
%63 (Rekapitulatie)
<g b,>2\f <g b,> |
%64
<g b,>4 <g, b> <a c> <b d> |
%65
<b d>2. <a c>4 |
%66
<g b>4 g'8 fis a g fis e |
%67
<d b>2. <c a>4 |
%68
<g b>2 r8 d'16 e d8 d |
%69
d'4 b a g | <a d,> r r8 d,16 e d8 d |
%71
d'4 c b a |
%72
g4 g,16 a b c d8 b a g |
%73
fis4 <fis d'> <fis d'> r |
%74
d'2 c8[ b a g] |
%75
fis16[ g a g] fis4 r8 a' fis d |
%76
g4. d8 c[ b a g] |
%77
fis16 g a g fis4 r8 a' fis d |
%78
g4 r8 d e e16 d e8 fis |
%79
g8 d r d d16 c b c d8 c |
%80
b4 r8 d e e16 d e8 fis |
%81
g-| d \grace fis16 e8 d16 c b4 a \trill |
%8
b16 g' b, g' b, g' b, g' b, g' b, g' b, g' b, g' |
%83
b, g' b, g' b, g' b, g' b, g' b, g' b, g' b, g' |
%84
<e c>8 r <e g> r <c e> r <a c> r |
%85
b16 g' b, g' b, g' b, g' a, fis' a, fis' a, fis' a, fis' |
%86
b, g' b, g' b, g' b, g' b, g' b, g' b, g' b, g' |
%87
b, g' b, g' b, g' b, g' b, g' b, g' b, g' b, g' |
%88
<e c>8 r <e g> r <c e> r <a c> r |
%89
b16 g' b, g' b, g' b, g' a, fis' a, fis' a, fis' a, fis' |
%90
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
<g b,>4 <g b,> <g b,> r \bar ":|"\mark \markup { \musicglyph #"scripts.ufermata" }
}

globalMinuetto = {
   \time 3/4
   \key g \major
}

TopVoiceThema = \relative g' {
\partial 4*1 g
%1
<b d>2 <c a>4 |
%2
<< {\stemDown g4} \\ {\stemUp b8 a} >> b8 c d4 |
%3
<c e>4 <c e> <c e> |
%4
<c e>2 <b d>4 |
%5
<< {\stemDown a a a} \\ {\stemUp c c8 d c4} >> |
%6
<< {\stemDown g g g} \\ {\stemUp b b8 c b4} >> |
%7
a4 a8 g a b |
%8
g2 \bar ":|:" d'8 b |
%9
a4 a b | c c8 d c4 |
%11
b4 b c | cis2 d4 |
%13
e4 fis8( g) fis( g) |
%14
d4 fis8( g) fis( g) |
%15
d4 <a' c> <g b> |
%16
<fis a>2 r4 | <b, d>2 <a c>4 |
%18
<b g>8 a b c d4 |
%19
<c e> <c e> <c e> |
%20
<c e>2 <b d>4 |
%21
<a c>4 <a c>8 d <c a>4 |
%22
<g b> <g b>8 c <g b>4 |
%23
a4 a8 g a b |
%24
g2 \bar ":|" 
}

TopVoiceVarOne = \relative g' {
\partial 4*1 d4
%1
<d' b>8[ d, <d' b>8 d, <c' a> d,] |
%2
b'[ g c a d b] |
%
<< {\stemDown c4 c c} \\ {\stemUp e4 e e} >> |
%
<< {\stemDown c2 b4} \\ {\stemUp e2 d4} >> |
%
r8 c[ a' c, a' c,] |
%
r b[ g' b, g' b,] |
%
r a-|[ a( g a b)] |
%
g2 \bar ":|:" d'8 b |
%
a[ d, a' d, d' d,] |
%
c'[ b c d] c4 |
%
b8[ d, b' d, c' d,] |
% (Original print has cis4 here)
cis'2 d4 |
%
r8 e[ dis e c' e,] |
%
r d[ cis d b' d,] |
%
<b' d>[ d, <a' c> d, <g b> d] |
%
<fis a>4 r r |
%
<d b>8[ d, <d' b> d, <a' c> d,] |
%
b'[ g c a d b] |
%
<< {\stemDown c4 c c} \\ {\stemUp e4 e e} >> |
%
<< {\stemDown c2 b4} \\ {\stemUp e2 d4} >> |
%
r8 c[ a' c, a' c,] |
%
r b[ g' b, g' b,] |
%
r a[( a g a b)] |
%
g2 \bar ":|:" 
}

TopVoiceVarTwo = \relative g' {
\partial 4*1 d'4
%1
r8 b'[ d, b' c, a'] |
%2
b,[ g' c, a' d, b'] |
%3
<< {c4 c c} \\ {e,4 e e} >> |
%4
<< {c'2 b4} \\ {e,2 d4} >> |
%5
r8 c[ d fis a c,] |
%6
r b[ d fis g b,] |
%7
r a[ d c b a] |
%8
g2 \bar ":|:" b'8 g |
%9
fis[ d fis d g d] |
%
a'4 a8 b a4 |
%
g8[ d g d a' d,] |
%
ais'[ d, ais' d, b' d,] |
%
r e[ dis e g e] |
%
r d[ cis d g b] |
%
<b d>[ d, <a' c> d, <g b> d] |
%
<fis a>4 r r |
%
r8 b[ d, b' c, a'] |
%
b,[ g' c, a' d, b'] |
%
<< {\stemUp c4 c c} \\ {\stemDown e,4 e e} >> |
%
<< {c'2 b4} \\ {e,2 d4} >> |
%
r8 c[ d fis a c,] |
%
r b[ d fis g b,] |
%
r a[ d c b a] |
%
g2 \bar ":|"
}

TopVoiceVarThree = \relative g' {
\partial 4*1 d'4
%1
<d' b>2 <c a>4 |
%2
<b g>4 a8 b c d |
%3
<c e>4 <c e> <c e> |
%4
<c e>2 <b d>4 |
%5
<a c> c8 d c4 |
%6
<b g>4 b8 c b4 |
%7
a4 a8 g a b |
%8
g2 \bar ":|:" \times 2/3 {d8 b' g} |
%9
\times 2/3 {a fis d} \times 2/3 {a'[ fis d]} \times 2/3 {b'[ g d]} |
%10
<a' c>4 c8 d c4 |
%11
\times 2/3 {b8 g d} \times 2/3 {b'[ g d]} \times 2/3 {c'[ a d,]} | 
%12
<ais' cis>2 <b d>4 |
%13
\times 2/3 {r8 dis, e} \times 2/3 {c'[ g e]} \times 2/3 {c'[ g e]} |
%14
\times 2/3 {r cis d} \times 2/3 {b'[ g d]} \times 2/3 {b'[ g d]} |
%15
\times 2/3 {d' b d,} \times 2/3 {c'[ a d,]} \times 2/3 {b'[ g d]} |
%16
<fis a>2 d4 |
%17
<b' d>2 <c a>4 |
%18
<g b>8[ a b c] d4 |
%19
<c e>4 <c e> <c e> |
%20
<c e>2 <b d>4 |
%21
<a c> c8 d c4 |
%22
<g b>4 b8 c b4 |
%23
a4 a8 g a b |
%24 final repeat sign missing in original
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
g2\fermata \bar ":|"\mark \markup { \musicglyph #"scripts.ufermata" }
}


BottomVoiceAllegro = \relative a { 
g,8[ g' d b] g g' d b |
%
g4 r r2 | r4 d' e fis |
%
g4 r r2 | r4 d e fis |
%6
g16 d' b d g, d' b d g, d' b d g, d' b d |
%7
g, d' b d g, d' b d g, d' b d g, d' b d |
%8
fis, d' a d fis, d' a d fis, d' a d fis, d' a d |
%9
fis, d' a d fis, d' a d fis, d' a d fis, d' a d |
%10
<g, b>4 r <a c> r |
%11
<g b> r <d a' c> r |
%12
<g b>4 g16 a b c d8 b a g |
%13
d[ d' a fis] d4 r | \clef treble
%14
d'8[ a' fis a] d, a' fis a |
%15
e[ a g a] a,[ g' e g] |
%16
d[ a' fis a] d,[ a' fis a] |
%17
e[ a g a] a,[ g' e g] |
%18
d[ a' fis a] d,[ b' g b] |
%19
d,[ a' fis a] cis,[ a' e a] |
%20
d, a' fis a d, b' g b |
%21
<fis d>4 g, <a d> <a cis> |
%22
d2 d4 cis |\clef bass b2 b4 a |
%24
g8[ g g g] g g g g |
%25
a[ a a a] a, a a a |
%26
d2 d4 cis | b2 b4 a |
%28
g8[ g g g] g g g g |
%29
a[ a a a] a' a a a |
%30
d,4 r r \clef treble <g' a> |
%31
<fis a> r r <g a> |
%32
<fis a> \clef bass <d, d'> <d d'> r \bar ":|:" |
%33
d8[ d' a fis] d d' a fis |
%34
d4 r r2 | r4 a' b cis | d r r2 |
%37
r4 a, b cis |
%38
d16 a' fis a d, a' fis a d, a' fis a d, a' fis a |
%39
d,16 a' fis a d, a' fis a d, a' fis a d, a' fis a |
%40
cis, a' e a cis, a' e a cis, a' e a cis, a' e a  |
%41
cis, a' e a cis, a' e a cis, a' e a cis, a' e a |
%42
c, a' fis a c, a' fis a c, a' fis a c, a' fis a |
%43
c, a' fis a c, a' fis a c, a' fis a c, a' fis a |
%44
b, a' fis a b, a' fis a b, a' fis a b, a' fis a |
%45
b, a' fis a b, a' fis a b, a' fis a b, a' fis a |
%46
<g e>4 r <a fis b,>4 r |
%47
<g e>4 r <a fis b,>4 r |
%48
<g e>4 e16[( fis g a]) b8 g fis e |
%49
b b' fis dis b4 r | e2 gis4 b |
%51
e d c b | a8[ a a a] a a a a |
%53
a[ a a a] a a a a |
%54
d,2 fis4 a | d c b a |
%56
g8[ g g g] g g g g |
%57
g8[ g g g] g g g g | \clef treble
%58
c16 g' e g r4 c,16 a' fis a r4 |
%59
b,16 g' d g r4 \clef bass fis,16 d' a d r4 |
%60
g,4 g fis g |
%61
d r r2 | r1 | g,8[ g' d b] g g' d b |
%64
g4 r r2 | r4 d' e fis | g r r2 | r4 d e fis |
%68
g16 d' b d g, d' b d g, d' b d g, d' b d |
%69
g,16 d' b d g, d' b d g, d' b d g, d' b d |
%70
fis, d' a d fis, d' a d fis, d' a d fis, d' a d |
%71
fis, d' a d fis, d' a d fis, d' a d fis, d' a d |
%72
g,4 g16 a b c d8 b a g |
%73
d[ d' a fis] d4 r |
%74
g8[ d' b d] g, d' b d |
%75
a[ d c d] a d c d |
%76
g,8[ d' b d] g, d' b d |
%77
a[ d c d] a[ d c d] |
%78
g,[ d' b d] g, c g c |
%79
g[ d' b d] fis, d' a d |
%80
g,[ d' b d] g, c g c |
%81
<g b>4 c, <d g> <d fis> |
%82
g2 g4 fis |
%83
e2 e4 d |
%84
c8[ c c c] c c c c |
%85
d[ d d d] d,[ d d d] |
%86
g2 g4 fis | e2 e4 d |
%88
c8[ c' c c] c c c c |
%89
d[ d d d] d, d d d |
%90
g[ g' d b] g4 r \bar ":|" 
}


BottomVoiceThema = \relative a {
\partial 4*1 r4
%1
g,4 b d |
%2
g2.
%3
c,4 c8 d e fis |
%4
g fis g fis g4 |
%5
fis4 d' d | g, d' d |
%7
<d, a' c>2. | g4 g, \bar ":|:" r4 |
%9
d'8 d' fis, d' g, d' |
%10
a d a d a d | g, d' g, d' a d |
%12
a d a d b d | c4 r r |
%14
<g b>4 r r | r fis g |
%16
d4 d8[ c b a] | g4 b d | g2. |
%19
c,4 c8 d e fis |
%20
g[ fis g fis] g4 |
%21
fis4 d' d | g, d' d |
%23
<c a d,>2. | g4 g, \bar ":|"
}

BottomVoiceVarOne = \relative a {
\clef bass
\partial 4*1 r4
%1
g,4 b d | g2 r4 |
%3
e8[ d c d e fis] |
%4
g[ fis g fis] g4 |
%5
fis d' d | g, d' d |
%7
d, << {c' c} \\ {a a} >> |
%8
g g, \bar ":|:" r |
%
fis' d g |
%
<d a'> a'8 b a4 |
g4 d a' |
%
ais8[ d, ais' d, b' d,] |
%
c'4 r r | <g b> r r |
%
g fis g |
%
d d8[ c b a] |
%
g4 b d | g2 r4 |
%3
e8[ d c d e fis] |
%4
g[ fis g fis] g4 |
%5
fis d' d | g, d' d |
%7
d, << {c' c} \\ {a a} >> |
%8
g g, \bar ":|"
}

BottomVoiceVarTwo = \relative a {
\clef bass
\partial 4*1 r4
%1
g, b d | g r r |
%3
c,8[ e g c b c] |
%4
g,[  b d g fis g] |
%5
fis4 r r |
% e (original) should probably read g (compare bar 22)
e r r | 
%7
<d a' c>2. |
%8
g4 g, \bar ":|:" r |
%9
<d' a'>4 a' b |
%10
c8[ d c d c d] |
%11
b4 b c |
%12
cis2 d4 |
%13
c r r |
%14
<g b> r r |
%15
g fis g |
%16
d d8[ c b a] |
%17
g4 b d | g r r |
%19
c,8[ e g c b c] |
%20
g,[  b d g fis g] |
%21
fis4 r r | g r r | 
%23
<d a' c>2. |
%24
g4 g, \bar ":|" 
}

BottomVoiceVarThree = \relative a {
\clef bass
\partial 4*1 r4
%1
\times 2/3 {g8 b d} \times 2/3 {g,[ b d]} \times 2/3 {fis,[ a d]} |
%2
\times 2/3 {g, b d} \times 2/3 {g,[ b d]} \times 2/3 {g,[ b d]} |
%3
\times 2/3 {g, c e} \times 2/3 {g,[ c e]} \times 2/3 {g,[ c e]} |
%4
\times 2/3 {g, c e} \times 2/3 {g,[ c e]} \times 2/3 {g,[ b d]} |
%5
\times 2/3 {fis, a d} \times 2/3 {fis,[ a d]} \times 2/3 {fis,[ a d]} |
%6
\times 2/3 {g, b d} \times 2/3 {g,[ b d]} \times 2/3 {g,[ b d]} |
%7
\times 2/3 {d, c' d} \times 2/3 {d,[ c' d]} \times 2/3 {d,[ c' d]} |
%8
\times 2/3 {g, b d} g,4 \bar ":|:" r4 |
%9
d2 r4 
%10
\times 2/3 {fis8 a d} \times 2/3 {fis,[ a d]} \times 2/3 {fis,[ a d]} |
%11
g,2 r4 |
%12
\times 2/3 {g8 b d} \times 2/3 {g,[ b d]} \times 2/3 {g,[ b d]} |
%13
c4 r r |
%14
<g b> r r |
%15
g fis g |
%16
d \times 2/3 {d'8[ e d]} \times 2/3 {c[ b a]} |
%17
\times 2/3 {g b d} \times 2/3 {g,[ b d]} \times 2/3 {fis,[ a d]} |
%18
\times 2/3 {g, b d} \times 2/3 {g,[ b d]} \times 2/3 {g,[ b d]} |
%19
\times 2/3 {g, c e} \times 2/3 {g,[ c e]} \times 2/3 {g,[ c e]} |
%20
\times 2/3 {g, c e} \times 2/3 {g,[ c e]} \times 2/3 {g,[ b d]} |
%21
\times 2/3 {fis, a d} \times 2/3 {fis,[ a d]} \times 2/3 {fis,[ a d]} |
%22
\times 2/3 {g, b d} \times 2/3 {g,[ b d]} \times 2/3 {g,[ b d]} |
%23
\times 2/3 {d, c' d} \times 2/3 {d,[ c' d]} \times 2/3 {d,[ c' d]} |
%24 Original terminates with e 
\times 2/3 {g, b d} g,4\fermata \bar ":|"
}

#(set-global-staff-size 19)
\score {
  \new PianoStaff <<
%    #(set-accidental-style 'default)
%   \set PianoStaff.instrumentName = "Piano"
    \new Staff = "up" {
      \globalAllegro
      % The following makes the beaming group on every quarter note,
      % instead of on each whole measure or eigth note or something:
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \TopVoiceAllegro 
    }
    \new Staff = "down" {
     \globalAllegro
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
     \clef bass
     \BottomVoiceAllegro
   }
  >>
  \header {piece = \markup {\bold Allegro} }
  \layout {}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
\score {
  \new PianoStaff <<
%    #(set-accidental-style 'default)
%   \set PianoStaff.instrumentName = "Piano"
    \new Staff = "up" {
      \globalMinuetto
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \TopVoiceThema
    }
    \new Staff = "down" {
     \globalMinuetto
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
     \clef bass
     \BottomVoiceThema
   }
  >>
  \header {piece = \markup {\bold {Tempo di Minuetto Con Varia.}} }
  \layout {}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
\score {
  \new PianoStaff <<
%    #(set-accidental-style 'default)
%   \set PianoStaff.instrumentName = "Piano"
    \new Staff = "up" {
      \globalMinuetto
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \TopVoiceVarOne
    }
    \new Staff = "down" {
     \globalMinuetto
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
     \BottomVoiceVarOne
   }
  >>
  \header {piece = \markup{\bold {1 \small \raise #1.0 "re." Var.}}}
  \layout {}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
\score {
  \new PianoStaff <<
%    #(set-accidental-style 'default)
%   \set PianoStaff.instrumentName = "Piano"
    \new Staff = "up" {
      \globalMinuetto
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \TopVoiceVarTwo
    }
    \new Staff = "down" {
     \globalMinuetto
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
     \BottomVoiceVarTwo
   }
  >>
  \header {piece = \markup{\bold {2 \small \raise #1.0 "e." Var.}}}
  \layout {}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
\score {
  \new PianoStaff <<
%    #(set-accidental-style 'default)
%   \set PianoStaff.instrumentName = "Piano"
    \new Staff = "up" {
      \globalMinuetto
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \TopVoiceVarThree
    }
    \new Staff = "down" {
     \globalMinuetto
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
     \BottomVoiceVarThree
   }
  >>
  \header {piece = \markup{\bold {3 \small \raise #1.0 "e." Var.}}}
  \layout {}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
