\header {
  filename=  "Dussek_Op46_1"
  title =    \markup \center-align {"Six sonates faciles pour le Piano Forte" "avec accompagnement de Violon Ad Libitum" " "}
  opus =     "Opus 46 no. 1 (Craw 17)"
  subtitle=  "Sonate I"
  composer="J. L. Dussek (1760-1812)"
  source="Six SONATES Faciles Pour le Piano Forte AVEC ACCOMPAGNEMENT de Violon Ad Libitum; à Paris Chez RICHAULT, Editeur de Musique, Boulevard Poissonnière N° 26 au Ier 663.R. (undated, apparently first half 19th Century)"
  copyright="Creative Commons Attribution-ShareAlike 3.0"
  style = "Classical"
  mutopiatitle = "Six sonates faciles pour le Piano Forte (I)"
  mutopiacomposer = "DussekJL"
  mutopiainstrument = "Piano"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "kris.vanbruwaene@gmail.com"
  lastupdated = "2008-12-23"
 footer = "Mutopia-2009/01/05-1605"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
\version "2.10.33"

globalAllegro = {
   \time 4/4
   \key c \major
}

TopVoiceAllegro = \relative g' {
g'4. e8 c[ c d e] | d4 d8[ e] c4 r | c'4. g8 e[ e f g] |
% m4
f4 f8[ g] e4 r8 g | a8.[ f16] c4 a'16[ c b c] d[ c b c] |
% m6
g8.[ e16] c4 g'16[ c b c] d[ c b c] |
% m7
r f,[ d' f,] d'[ f, d' f,] r e[ c' e,] c'[ e, c' e,] |
% m8
d4 f16[ d c b] c8-|[ e-|] g r |
% m9
r16 f[ d' f,] d'[ f, d' f,] r e[ c' e,] c'[ e, c' e,] |
% m10
d4 <b g'> <b g'> r |
% m11
d'4 d16[ b a g] d'[ b a g] d'[b a g] |
% m12
fis8[ a] d,4 r8 d[ e fis] |
% m13
g4 d'16[ b a g] d'[ b a g] d'[b a g] |
% m14
fis8[ a] d,4 r8 d[ e fis] |
% m15
<< {g8[ b] b[( a-|)] a[( g-|) g( fis-|)]} \\ {g8[ g] g[ fis] fis[ e e d]} >> |  
% m16
<< {fis( g-|) g( fis-|)] fis[( e-|)] e[( d-|)]} \\ {d[ e] e[ d] d[ c] c[ b]} >> |
% m17
<d b>4 a16[ c a c] g[ b g b] fis[ a fis a] |
% m18
g8[ b] << { b([ a-|)] a[( g-|) g( fis-|)] } \\ { g[ fis] fis[ e e d] } >> |
% m19
<< {fis[( g-|) g( fis-|)] fis[( e-|) e( d-|)] } {d[ e e d] d[ c c b]} >> |
% m20
<b d>4 e16[ c' e, c'] d,[ b' d, b'] c,[ a' c, a'] |
% m22
g4 <b g'>  <b g'> r \bar":|:"
% m23
d4. b8 g[ g a b] |
% m24
a4 a8[ b] a4 r |
% m25
d4. b8 g[ g a b] |
% m26
c4 c8[ e] c4 r |
% m27
r16 a'[ gis a] b[ a gis a] r g[ fis g] a[ g fis g] |
% m28
r f[ e f] g[ f e f] r e[ dis e] f[ e dis e] |
% m29
r d[ cis d] e[ d cis d] r c[ b c] d[ c b c] |
% m30
b[ c d e] f8 r r f[ f d] |
% m31
b16[ c d e] f8 r r f[ f d] |
% m32
b16[ c d c] b8 r a16[ b c b] a8 r |
gis4 <gis e'> <gis e'> r |
% m33
<c e>4.( <d b>8 <c a>4) r |
% m34
<d f>4.( <c e>8 <b d>4) r |
% m35
<b d>4.( <a c>8 <gis b>4) <c e> |
% m36
<b d>2( <c a>4) r |
% m37
<c a'>4\f r c16[ a' f a] c,[ a' f a] |
% m38
g2 c,16[ g' e g] c,[ g' e g] |
% m39
<d f>8[ <d f>] <d f>4 a'16[ f e d] a'[ f e d] |
% m40
<e c>8[ <e c>] <c e>4 g'16[ e d c] g'[ e d c] |
% 41
g'4 <<{ d8[ d] e[ e fis fis]} \\ { b,8[ b] c[ c a a] }>> |
% 42
<< {g'4 d8[ d] e[ e fis fis] } \\ { b,4 b8[ b] c[ c a a] }>> | 
% 43
<g b g'>4 g'16[ b g b] g4 g16[ b g b] |
% 44
g4. fis8 \grace a16 g8[ fis \grace a16 g8 fis] |
% 45-47
g4. e8 c[ c d e] | d4 d8[ e] c4 r | c'4. g8 e[ e f g] |
% 48-49
f4 \turn f8[ g] e4. g8 | a8.[ f16] c4 a'16[ c b c] d[ c b c] |
% 50
g8.[ e16] c4 g'16[ c b c] d[ c b c] |
% 51
r16 f,[ d' f,] d'[ f, d' f,] r e[ c' e,] c'[ e, c' e,] |
% 52
d4 <b g'> <b g'> r |
% 53
g'4 g16[ e d c] g'16[ e d c] g'16[ e d c] |
% 54
b8[ d] g,4 r8 g[ a b] |
% 55
c4 g'16[ e d c] g'16[ e d c] g'16[ e d c] |
% 56
b8[ d] g,4 r8 g'[ a b] |
% 57
<< {c8[ e] e[( d]) d[( c) c( b])} \\ {c8[ c] c[ b] b[ a a g]}>> |
% 58
<< {b[( c) c( b]) b[( a) a( g])} \\ {g[ a a g] g[ f f e]} >> |
% 59
<e g>4 d16[ f d f] c[ e c e] b[ d b d] |
% 60
<< {c8[ e e d] d[ c c b]} \\ {c8[ c c b] b[ a a g]} >> |
% 61
<< {b[ c c b] b[ a a g]} \\ {g[ a a g] g[ f f e]} >> |
% 62
<e g>4 f16[ f' f, f'] e,[ e' e, e'] d,[ d' d, d'] |
% 63
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
c,4 <e c'> <e c'> r \bar ":|"\mark \markup { \musicglyph #"scripts.ufermata" }
}

BottomVoiceAllegro = \relative a { \clef treble
c16[ g' e g] c,[ g' e g] c,[ g' e g] c,[ g' e g] | 
% m2
g,[ f' d f] g,[ f' d f] c[ g' e g] c,[ g' e g] | 
% m3
c,[ g' e g] c,[ g' e g] c,[ g' e g] c,[ g' e g] |
% m4
b,[ g' d g] b,[ g' d g] c,[ g' e g] c,[ g' e g] | 
% m5
<f c>8[ <f c> <f c> <f c>] <f c>[ <f c> <f c> <f c>] |
% m6
<e c>[ <e c> <e c> <e c>] <e c>[ <e c> <e c> <e c>] |
% m7
<b g'>4 r <c g'> r | 
% m8
b16[ g' f g] d[ g f g] c,[ g' e g] c,[ g' e g] |
% m9
<b, g'>4 r <c g'> r | \clef bass
% m10
g8 g, b d g4 r | \clef treble
% m11
d'16[ b' g b] d,[ b' g b] d,[ b' g b] d,[ b' g b] |
% m12
d,16[ c' a c] d,[ c' a c] d,[ c' a c] d,[ c' a c] |
% m13
d,16[ b' g b] d,[ b' g b] d,[ b' g b] d,[ b' g b] |
% m14
d,16[ c' a c] d,[ c' a c] d,[ c' a c] d,[ c' a c] |
% m15
g4 r r2 | r1 | \clef bass
% m17
g,8[ g c c] d[ d] d,[ d] |
% m18
g4 r r2 | r1 |
% m20
g4 c,8[ c] d[ d] d,[ d] | d[ g' d b] g4 r \bar":|:"
% m22
g'16[ d' b d] g,[ d' b d] g,[ d' b d] g,[ d' b d] |
% m23
fis,[ d' c d] fis,[ d' c d] fis,[ d' c d] fis,[ d' c d] |
% m24
f,[ d' b d] f,[ d' b d] f,[ d' b d] f,[ d' b d] |
% m25
e,[ c' g c] e,[ c' g c] e,[ c' g c] e,[ c' g c] |
% m26
<c f>4 r <c e> r | \clef treble
% m27
<g' d> r <g c,> r | \clef bass
% m28
<gis, e'> r <a e'> r | \clef treble
% m29-30
d8[ f d f] d8[ f d f] | d8[ f d f] d8[ f d f] | 
% m31
d8[ f d f] dis8[ fis dis fis] | \clef bass
% m32
e4 <e e,> <e e,> r |
% m33
a,,8[ a' a a] a[ a a a] |
% m34
d,,[ d' d d] d[ d d d] |
% m35
e,[ e' e e] e[ e e e] |
% m36
f,[ f' f f] f,4 r |
% m37
f'16[\f c' a c] f,[ c' a c] f,4 r |
% m38
e16[ c' g c] e,[ c' g c] e,4 r | \clef treble
% m39
<b' g'>8[ <b g'>] <b g'>4 r2 |
% 40
<c g'>8[ <c g'>] <c g'>4 r2 | \clef bass
% 41 42
g4 r4 r2 | <g g,>4 r4 r2 |
% 43
<g b>4 r <g b> r |
% 44
<g b> r r2 | \clef treble
% 45
c16[ g' e g] c,[ g' e g] c,[ g' e g] c,[ g' e g] | 
% 46
g,[ f' d f] g,[ f' d f] c[ g' e g] c,[ g' e g] | 
% 47
c,[ g' e g] c,[ g' e g] c,[ g' e g] c,[ g' e g] |
% 48
b,[ g' d g] b,[ g' d g] c,[ g' e g] c,[ g' e g] | 
% 49
<f c>8[ <f c> <f c> <f c>] <f c>[ <f c> <f c> <f c>] |
% 50
<e c>[ <e c> <e c> <e c>] <e c>[ <e c> <e c> <e c>] |
% 51
<b g'>4 r <c g'> r | \clef bass
% 52
g8 g, b d g4 r |
% 53
g16[ e' c e] g,16[ e' c e] g,16[ e' c e] g,16[ e' c e] |
% 54
g,[f' d f] g,[f' d f] g,[f' d f] g,[f' d f] |
% 55
g,16[ e' c e] g,16[ e' c e] g,16[ e' c e] g,16[ e' c e] |
% 56
g,[f' d f] g,[f' d f] g,[f' d f] g,[f' d f] |
% 57 58
c4 r r2 | r1 |
% 59-61
c8[ c f, f] g[ g g, g] | c4 r r2 | r1 |
% 62-63
c4 f8[ f] g[ g g, g] | c,[ c' g e] c4 r \bar ":|"
}

globalAndante = {
   \time 2/4
   \key c \major
}

TopVoiceThema = \relative g' {
%1
\partial 8*1 
g8 |
%2
c c\turn r16 c e c |
%3
g'8 g\turn r16 g b g |
%4
c g e g f d e c |
%5
<b d>8 <c e>16. <b d>32 <b d>8 g |
%6
c c\turn r16 c e c |
%7
g'8 g\turn r16 g b g |
%8
c g e g g f e d |
%9
c16. e32 c16. e32 c8 \bar ":|:" e
%10
d16 e f g f e dis e |
%11
g b, b b d c b c | 
%12
d e f g f e d c |
%13
<b d>8 <c e>16. <b d>32 <b d>8 g8 |
%14
c c\turn r16 c e c |
%15
g'8 g\turn r16 g b g |
%16
c g e g g f e d |
%17
c16. e32 c16. e32 c8 \bar "|."
}

TopVoiceVarOne = \relative g' {
% 1er var.
\partial 8*1 g|
%2
c16-| c b c \times 2/3 {e[ d c]} \times 2/3 { e[ d c]} |
%3
g'16-| g fis g \times 2/3 {b[ a g]} \times 2/3 { b[ a g]} |
%4
\times 2/3 { r16 c[ g]} \times 2/3 { e[ g e]} \times 2/3 { r f[ d]} \times 2/3 { r e[ c] } |
%5
\times 2/3 { r d b } \times 2/3 { r e c } <b d>8 g |
%6
c16-| c b c \times 2/3 {e[ d c]} \times 2/3 { e[ d c]} |
%7
g'16-| g fis g \times 2/3 {b[ a g]} \times 2/3 { b[ a g]} |
%8
\times 2/3 { r16 c[ g]} \times 2/3 { e[ g e]} \times 2/3 { r g[ e]} \times 2/3 { r f[ d] } |
%9
\times 2/3 { r c e} \times 2/3 { r c e} c8 \bar ":|:" e |
%10
\times 2/3 {r16 d e } \times 2/3 {f[ g f] } \times 2/3 {r e f } \times 2/3 {g[ a g] } | 
%11
\times 2/3 {r b, c } \times 2/3 {d[ e d] } \times 2/3 {r c d } \times 2/3 {e[ f e] } |
%12
\times 2/3 {r d e } \times 2/3 {f[ g f] } \times 2/3 {e[ g f] } \times 2/3 {e[ d c] } |
%13
\times 2/3 {r d b } \times 2/3 {r e c } <b d>8 g |
%14
c16 c b c \times 2/3 {e[ d c] }  \times 2/3 {e[ d c] } |
%15
g' g fis g \times 2/3 {b[ a g] }  \times 2/3 {b[ a g] } |
%16
\times 2/3 {r c g } \times 2/3 {e[ g e] } \times 2/3 {r g e } \times 2/3 {r f d } 
%17
\times 2/3 {r c e } \times 2/3 {r c e } c8 \bar ":|"
}

TopVoiceVarTwo =  \relative g' {
% 2e var.
\partial 8*1 g|
%2
\times 4/6 {r16 e g c g e} \times 4/6 {r g c e c g} | 
%3
\times 4/6 {r g b d b g} \times 4/6 {r b d g d b} |
%4
\times 4/6 {r c e g e c} \times 4/6 {g' f d g e c} |
%5
\times 2/3 {b[ d g]} \times 2/3 {c,[ e g]} <b, d>8 g |
%6
\times 4/6 {r16 e g c g e} \times 4/6 {r g c e c g} | 
%7
\times 4/6 {r g b d b g} \times 4/6 {r b d g d b} |
%8
\times 4/6 {r c e g e c} \times 2/3 {r f[ d]} \times 2/3 {r d b} |
%9
\times 2/3 {r c g} \times 2/3 {r e' g,} c8 \bar ":|:" e
%10
\times 2/3 {g16[ f d]} \times 2/3 {g[ f d]} \times 2/3 {g[ e c]} \times 2/3 {g'[ e c]} |
%11
\times 2/3 {g'[ d b]} \times 2/3 {g'[ d b]} \times 2/3 {g'[ e c]} \times 2/3 {g'[ e c]} |
%12
\times 2/3 {g'[ f d]} \times 2/3 {g[ f d]} \times 2/3 {g[ e c]} \times 2/3 {g'[ e c]} |
%13
\times 2/3 {r d g} \times 2/3 {c,[ e g]} <d b>8 g, |
%14
\times 4/6 {r16 e g c g e} \times 4/6 {r g c e c g} | 
%15
\times 4/6 {r g b d b g} \times 4/6 {r b d g d b} |
%16
\times 4/6 {r c e g e c} \times 2/3 {r f d} \times 2/3 {r d b} |
%17
\times 2/3 {r c g} \times 2/3 {r e' g,} c8 \bar ":|"
}

TopVoiceVarThree = \relative g' {
% 3e var
\partial 8*1 g|
%2
c c r16 c\turn e c |
%3
g'8 g r16 g\turn b g |
%4
c g e g f d e c |
%5
\times 2/3 {d[ b g]} \times 2/3 {e' c g} <b d>8 g |
%6
c c r16 c\turn e c |
%7
g'8 g r16 g\turn b g |
%8
c g e g g f e d |
%9
c e c e c8 \bar":|:" e |
%10
d8 \times 2/3{ d16 e f} e8 \times 2/3 {g16 e c} |
%11
b8 \times 2/3 {b16 c d} c8 \times 2/3 {c16 d e} |
%12
d8 \times 2/3 {d16 e f} \times 2/3 {e16[ g f]} \times 2/3 {e[ d c]} |
%13
\times 2/3 {d[ b g]} \times 2/3 {e'[ c g]} <b d>8 g |
%14
c c r16 c\turn e c |
%15
g'8 g r16 g\turn b g |
%16
c g e g g f e d |
%17
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
c e c e c8 \bar":|"\mark \markup { \musicglyph #"scripts.ufermata" }
}


BottomVoiceThema = \relative a { \clef treble
\partial 8*1 r8 |
%2
<c e>8 <c e> <c e> <c e> |
%3
<b d g> <b d g> <b d g> <b d g> |
%4
<c e>4 b8 c | \clef bass
%5
g fis g r |\clef treble
%6
<c e>8 <c e> <c e> <c e> |
%7
<b d g> <b d g> <b d g> <b d g> |
%8
<c e>4 r16 g16 g' f |
%9
<e c>16. g32 <e c>16. g32 <e c>8 \bar ":|:" r
%10
b8 g' c, g' |
%11
d g e g |
% 12
b, g' c,4 | \clef bass
%13
g8 fis g r | \clef treble
%14
<c e>8 <c e> <c e> <c e> |
%15
<b d g> <b d g> <b d g> <b d g> |
%16
<c e>4 r16 g g' f |
%17
<c e>8 <c e> <c e> \bar "|."
}

BottomVoiceVarOne = \relative a {\clef treble
% 1er Var.
\partial 8*1 r8 |
c16 e c e c e c e |
%3
b d f d b d f d |
%4
<c e>4 b8 c | \clef bass
%5
g fis g r | \clef treble
%6
c16 e c e c e c e |
%7
b d f d b d f d |
%8
<c e>4 g8 f' |
%9
<c e> <c e> <c e> \bar ":|:" r
%10
b g' c, e |
%11
d g e g |
%12
b, g' c,4 | \clef bass
%13
g8 fis g r | \clef treble
%14
c16 e c e c e c e |
%15
b d f d b d f d |
%16
<c e>4 g8 f' |
%17
<c e> <c e> <c e> \bar ":|"
}

BottomVoiceVarTwo = \relative a { \clef bass
\partial 8*1 r8 |
%2
c,8 r c' r | \clef treble
%3
<b f'>8 r <d f> r |
%4
<c e> r b c | \clef bass
%5
g4 g8 r |
%6
c,8 r c' r | \clef treble
%7
<b f'>8 r <d f> r |
%8
<e g> r f g |
%9
<e c> <e c> <e c> \bar ":|:" r |
%10
b g' c, g' | d g e g |
%12
b, g' c, g' |\clef bass g,4 g8 r |
%14
c, r c' r | \clef treble
%15
<b f'> r <d f> r |
%16
<e g> r f g |
%17
<e c> <e c> <e c> \bar ":|"
}

BottomVoiceVarThree = \relative a { \clef treble
\partial 8*1 r8 |
%2
\times 2/3 {c16[ e g]} \times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} |
%3
\times 2/3 {b,[ d f]} \times 2/3 {b,[ d f]} \times 2/3 {b,[ d f]} \times 2/3 {b,[ d f]} |
%4
\times 2/3 {c[ e g]} \times 2/3 {c,[ e g]} \times 2/3 {b,[ d g]} \times 2/3 {c,[ e g]} | \clef bass
%5
g,8 g g r | \clef treble
%6
\times 2/3 {c16[ e g]} \times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} |
%7
\times 2/3 {b,[ d f]} \times 2/3 {b,[ d f]} \times 2/3 {b,[ d f]} \times 2/3 {b,[ d f]} |
%8
\times 2/3 {c[ e g]} \times 2/3 {c,[ e g]} \times 2/3 {d[ f g]} \times 2/3 {d[ f g]} |
%9
\times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} c,8  \bar ":|:" r |
%10
\times 2/3 {b16[ d g]} \times 2/3 {b,[ d g]} \times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} |
%11
\times 2/3 {d[ f g]} \times 2/3 {d[ f g]} \times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} |
%12
\times 2/3 {b,[ d g]} \times 2/3 {b,[ d g]} \times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} | \clef bass
%13
g,8 g g r | \clef treble
%14
\times 2/3 {c16[ e g]} \times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} |
%15
\times 2/3 {b,[ d f]} \times 2/3 {b,[ d f]} \times 2/3 {b,[ d f]} \times 2/3 {b,[ d f]} |
%16
\times 2/3 {c[ e g]} \times 2/3 {c,[ e g]} \times 2/3 {d[ f g]} \times 2/3 {d[ f g]} |
%17
\times 2/3 {c,[ e g]} \times 2/3 {c,[ e g]} <c, e>8  \bar ":|" 
}


#(set-global-staff-size 19)

%\paper {
% linewidth = 17.8\cm
% topmargin = 0.5\cm
% bottommargin = 0.9\cm
% leftmargin = 1.7\cm
% firstpagenumber = 1
%}
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
  \layout {}
  \header { piece = \markup{\bold Allegro} }
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
      \globalAndante
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \TopVoiceThema
    }
    \new Staff = "down" {
     \globalAndante
     #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
     \clef bass
     \BottomVoiceThema
   }
  >>
  \header {piece = \markup{\bold {Andante moderato Con variat.}} }
  \layout {}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}
\score {
  \new PianoStaff <<
%    #(set-accidental-style 'default)
%   \set PianoStaff.instrumentName = "Piano"
    \new Staff = "up" {
      \globalAndante
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \TopVoiceVarOne
    }
    \new Staff = "down" {
     \globalAndante
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
     \BottomVoiceVarOne
   }
  >>
  \header {piece = \markup {\bold "1re Var."}}
  \layout {}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}
\score {
  \new PianoStaff <<
%    #(set-accidental-style 'default)
%   \set PianoStaff.instrumentName = "Piano"
    \new Staff = "up" {
      \globalAndante
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \TopVoiceVarTwo
    }
    \new Staff = "down" {
     \globalAndante
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
     \BottomVoiceVarTwo
   }
  >>
  \header {piece = \markup {\bold "2e Var." }}
  \layout {}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}
\score {
  \new PianoStaff <<
%    #(set-accidental-style 'default)
%   \set PianoStaff.instrumentName = "Piano"
    \new Staff = "up" {
      \globalAndante
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \TopVoiceVarThree
    }
    \new Staff = "down" {
     \globalAndante
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
     \BottomVoiceVarThree
   }
  >>
  \header {piece = \markup {\bold "3e Var."}}
  \layout {}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}
