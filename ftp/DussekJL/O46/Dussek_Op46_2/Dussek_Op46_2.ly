\header {
  filename=  "Dussek_Op46_2"
  title =    \markup \center-align {"Six sonates faciles pour le Piano Forte" "avec accompagnement de Violon Ad Libitum" " "}
  opus =     "Opus 46 no. 2 (Craw 18)"
  subtitle=  "Sonate II"
  composer="J. L. Dussek (1760-1812)"
  source="Six SONATES Faciles Pour le Piano Forte AVEC ACCOMPAGNEMENT de Violon Ad Libitum; à Paris Chez RICHAULT, Editeur de Musique, Boulevard Poissonnière N° 26 au Ier 663.R. (undated, apparently first half 19th Century)"
  copyright="Creative Commons Attribution-ShareAlike 3.0"
  style = "Classical"
  mutopiatitle = "Six sonates faciles pour le Piano Forte (II)"
  mutopiacomposer = "DussekJL"
  mutopiainstrument = "Piano"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "kris.vanbruwaene@gmail.com"
  lastupdated = "2008-12-31"
 footer = "Mutopia-2009/01/05-1607"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
\version "2.10.33"

globalAllegro = {
   \time 4/4
   \key f \major
}

TopVoiceAllegro = \relative g' {
%1
<f c a>4 f16 e f g f4 r |
%2
<a f c> a16 g a bes a4 r |
%3
<c a>4 bes16 a g f <bes d>8 <bes d> <e g,> <e g,> |
%4
<f f,>4 <f f,> <f f,> r |
%5
c4.( a8) f-. f( g a) |
%6
c8[( bes a g]) g2 |
%7
c4. a8 f-. f( g a) |
%8
a4.( g8) f( e d c) |
%9
r8 c''-|[ c( a]) f-. f( g a) |
%10
c[( bes a g]) g2 |
%11
a4 f8 g f e d c |
%12
f4 r16 f, f' f, r e e' e, r d d' d, |
%13
c'4 c'16[ a g f] bes a g f e d c bes |
%14
a4 r16 f f' f, r e e' e, r d d' d, |
%15
c'4 c'16[ a g f] bes a g f e d c bes |
%16
a f' a, f' a, f' a, f' a, f' a, f' a, f' a, f'|
%17
a, f' a, f' a, f' a, f' a, f' a, f' a, f' a, f' |
%18
a, f' a, f' a, f' a, f' a, f' a, f' a, f' a, f' |
%19
e4 <e c'> <e c'> r |
%20
c'4 d16 c b a g8 e g e |
%21
g4. f8 d2 |
%22 original has B flat below, changed to b because of natural B in left hand
c8 c \grace d16 c8 b16 c d8[ d] \grace e16 d8 c16 d |
%23
e8 c g' e e d g,4 |
%24
c' d16 c bes as g8 es g es |
%25
g4. f8 d2 |
%26
c8 c \grace d16 c8 b16 c g'8 es g es |
%27
d4 <b d g> <b d g> r |
%28
r16 g a b c d e f g8 g,16 g' g, g' g, g' |
%29
g, g' g, g' g, g' g, g' g, g' g, g' g, g' g, g' |
%30
r16 g, a b c d e f g8 g,16 g' g, g' g, g' |
%31
g, g' g, g' g, g' g, g' g, g' g, g' g, g' g, g' |
%32
g4 f16 e d c c' c, c' c, bes' c, bes' c, |
%33
a' c, a' c, gis' c, gis' c, a'4 r |
%34
g8[ e c c] d4 d8 e |
%35
c4 <e c'> <e c'> r \bar":|:"
%36
<c g e>4 c16 b c d c4 r |
%37
<g c e>4 e'16 d e f e4 r |
%38
<e g>4 f16 e d c <f a>8 <f a> <d b'> <d b'> |
%39
<e c'>4 <e c'> <e c'> r | 
%40
g4.( e8) c-| c( d e) |
%41
g[( f e d]) d2 |
%42
g4.( e8) c-| c( d e) |
%43
e4. d8 c( b a g) |
%44
r8 g'[ g e] c c d e |
%45
g[ f e d] d2 |
%46
r8 g[ g f] f e e d |
%47
d4 cis r8 cis[ e d] |
%48
d4 cis r8 cis[ e d] |
%49
\times 2/3 {cis[ e d]} \times 2/3 {cis[ e d]} \times 2/3 {cis[ e d]} \times 2/3 {cis[ e d]} |
%50 Printing error: third notes are crotchet (Bes, stem up) and quaver (G, stem down) (corrected)
cis[ <g' bes>] <g bes>4 r8 <g bes>[ <f a> <e g>] |
%51
f16 d' f, d' f, d' f, d' f, d' f, d' f, d' f, d' |
%52
f,16 d' f, d' f, d' f, d' f, d' f, d' f, d' f, d' |
%53
d8 d,16 e d8 d g16 f e d g f e d |
%54
d'8 d,16 e d8 d g16 f e d g f e d |
%55
d'8 d,16 e d8 d g16 f e d g f e d |
%56
a'4 g16 f e d e2\trill |
%57
d2 d8 d e f |
%58
f[( e) d c] c( bes) a g |
%59
<f c a>4 f16 e f g f4 r |
%60
<a f c>4 a16 g a bes a4 r |
%61
<c a>4 bes16 a g f <bes d>8 <bes d> <e g,> <e g,> |
%62
<f f,>4 <f f,> <f f,> r |
%63
c4. a8 f-. f( g a) |
%64
c8[( bes a g]) g2 |
%65
c4.( a8) f-. f( g a) |
%66
a4.( g8) f e d c |
%67
r8 c''-.[ c( a]) f-. f( g a) |
%68
c[( bes a g]) g2 |
%69
a4 f8 g f( e d c) |
%70
f4 r16 f, f' f, r e e' e, r d d' d, |
%71
c'4 c'16[ a g f] bes[ a g f] e d c bes |
%72
a4 r16 f f' f, r e e' e, r d d' d, |
%73
c'4 c'16[ a g f] bes[ a g f] e d c bes |
%74
a4 f16[ g a bes] c8 a g f |
%75
e4 <e c'> <e c'> r |
%76
r16 c' d e f g a bes c8 c,16 c' c, c' c, c' |
%77
c, c' c, c' c, c' c, c' c, c' c, c' c, c' c, c' |
%78
r c,[ d e] f[ g a bes] c8 c,16 c' c, c' c, c' |
%79
c,[ c' c, c'] c,[ c' c, c'] c,[ c' c, c'] c, c' c, c' |
%80
c4 bes16[ a g f] f'[ f, f' f,] es' f, es' f, |
%81
d'[ f, d' f,] cis'[ f, cis' f,] d'4 r |
%82
c8[ a f f] g4 g8 a |
%83
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
f4 <f a,> <f a,> r \bar ":|"\mark \markup { \musicglyph #"scripts.ufermata" }
}

BottomVoiceAllegro = \relative g { \clef bass
%1
f,8[ f' f f] f f f f |
%2
f,8[ f' f f] f f f f |
%3
f,8[ f' f f] f f f f |
%4
f,4 f' f, r |
%5
f'8[ c' a c] f, c' a c |
%6
e,8[ g bes c] e, g bes c |
%7
f,8[ c' a c] f, c' a c |
%8
<bes g c,>2 r |
%9
f8[ c' a c] f, c' a c |
%10
e,8[ g bes c] e, g bes c |
%11
<a f>2 <bes g c,> |
%12
<a f>4 <d d,> <c c,> <bes bes,> |
%13
<a a,> r g c, |
%14
f <d d'> <c c'> <bes bes'> |
%15
<a a'> r g' c, |
%16
f <d d'> <c c'> <bes bes'> |
%17
<a a'> <d d'> <c c'> <bes bes'> |
%18
<a a'> <g g'> <a a'> <b b'> |
%19
c8[ c' g e] c4 r | \clef G
%20
c'8[ g' e g] c, g' e g |
%21
b,[ d f g] b, d f g |
%22
<e c> <e c> <e c>4 <g b,>8 <g b,> <g b,>4 |
%23
<g c,>2 <f d g,> |
%24
c8[ g' es g] c,8[ g' es g] |
%25
b,[ d f g] b, d f g |
%26
<es c> <es c> <es c>4 es8 c es c |
%27
g g' d b g4 r |
%28
<c e>4 r r <c e>8 g |
%29
<b d>[ g] <c e>[ g] <d' f>[ g,] <b d> g |
%30
<c e>4 r r <c e>8 g |
%31
<b d>[ g] <c e>[ g] <d' f>[ g,] <b d> g |
%32
<c e>4 r \clef F <c e,>8 <c e,> <c e,> <c e,> |
%33
<f, c'>[ <f c'> <e c'> <e c'>] <f c'>4 r |
%34
<g c e>2 <g d' f>2 |
%35
c4 c, c' r \bar":|:"
%36
c,8[ c' c c] c c c c |
%37
c,8[ c' c c] c c c c |
%38
c,8[ c' c c] c c c c |
%39
c,4 c' c, r | \clef G
%40
c'8[ g' e g] c, g' e g |
%41
b,[ d f g] b, d f g |
%42
c,[ e g e] c e g e |
%43
<f d g,>2 r |
%44
c8[ g' e g] c, g' e g |
%45
b,[( d f g]) b,[( d f g]) |
%46
r2 <bes, e g>2 |
%47
a8[ g' e g] bes, g' e g |
%48
a,8[ g' e g] bes, g' e g |
%49
<a, e' g>2 r | \clef F
%50
r4 a b cis |
%51
<d d,>2 <d d,>4 <c c,>4 |
%52 
<bes bes,>2 <bes bes,>4 <a a,>4 |
%53
<gis d' f>8[ <gis d' f> <gis d' f><gis d' f>] <gis d' f>2 |
%54
<a d f>8[ <a d f> <a d f> <a d f>] <a d f>2 |
%55
<bes d f>8[ <bes d f> <bes d f><bes d f>] <bes d f>2 |
%56
a16[ f' d f] a,[ f' d f] a,[ e' cis e] a,[ e' cis e] |
%57
d2 r |
%58
r <bes g c,>2 |
%59
f8[ f f f] f[ f f f] |
%60
f[ f f f] f[ f f f]
%61
f8[ f f f] f f f f |
%62
f4 f, f' r |
%63
f8[ c' a c] f, c' a c |
%64
e,8[ g bes c] e, g bes c |
%65
f,8[ c' a c] f, c' a c |
%66
<bes g c,>2 r |
%67
f8[ c' a c] f, c' a c |
%68
e,8[ g bes c] e, g bes c |
%69
<a f>2 <bes g c,> |
%70
<a f>4 <d d,> <c c,> <bes bes,> |
%71
<a a,> r g c, |
%72
f <d d'> <c c'> <bes bes'> |
%73
<a a'>2 g'4 c, |
%74
f f16 g a bes c8 a g f |
%75
c[ c' g e] c4 r |
%76
<f a>2 r4 <f a>8 c |
%77
<e g>8 c <f a> c <g' bes> c, <e g> c |
%78
<f a>4 r r <f a>8 c |
%79
<e g> c <f a> c <g' bes>[ c,] <e g> c |
%80
<f a>4 r \clef G <a f'>8[ <a f'> <a f'> <a f'>] |
%81
<bes f'>[ <bes f'> <a f'> <a f'>] <bes f'>4 r |
%82
<c f a>2 <c g' bes> |
%83
<f a>4 \clef F f, f r \bar":|"
}

globalRondo = {
   \time 2/4
   \key f \major
}

TopVoiceRondo = \relative g' {
\partial 4*1 c'16^\markup{\large \bold {Allegro moderato}}  a c a |
%1
f4 g16 f bes a |
%2 First E below was F, probably typo (compare with bars 10, 40 and 48)
g4 c16 e, g e |
%3
f8 f a16 g f g |
%4
<a f>8 <g e> bes16 a bes c |
%5
bes8 a g16 f g a |
%6
g8 f c'16 a g f |
%7
e16[ c f c] g' c, a' c, |
%8
<a' f>8 <g e> c16 a c a |
%9 
f4 g16 f bes a |
%10
<g e>4 c16 e, g e |
%11
f8 f a16 g f g |
%12
<a f>8 <g e> bes16 a bes c |
%13
bes8( a-|) g16( f g a) |
%14
g8( f) c'16( a g f) |
%15
e8-|[ d16( e]) c8-|[ d16( e]) |
%16
f8[ a16( f]) a( f) a( f) |
%17
e8 d16 e c8 d16 e |
%18
f4 \bar ":|:" a16 gis a gis |
%19
a8 a, a' a |
%20
a f d16 f a d |
%21
d8[ cis b a] |
%
d4 a8 as |
%23
g g, g' g |
%24
g e c16 e g c |
%25
c8[ b a g] |
%26
c4 g8 g |
%27
b,4 g'16 f e d |
%28
c8[ e g c] |
%
b16[ c d e] f d c b |
%
c8[ g-.] g-. g-. |
%31
b,4 g'16[ f e d] |
%32
c8 e g c |
%33
b16[ c d e] f d c b] |
%34
c4 <e, g>8 <e g> |
%35
<f a>4 <d f b> |
%36
<e g c> g16 e d c |
%37
<f a>8 <f a> <d f b> <d f b> |
%38
<e g c>4 c'16 a c a |
%39
f4 g16 f bes a |
%40
g4 c16 e, g e |
%41
f8 f a16 g f g
%42
<a f>8 <g e> bes16 a bes c |
%43
bes8 a g16 f g a |
%44
g8 f c'16 a g f |
%45
e16[ c f c] g' c, a' c, |
%46
<a' f>8 <g e> c16 a c a |
%47
f4 g16 f bes a |
%48
<g e>4 c16 e, g e |
%49
f8 f a16 g f g |
%50
<a f>8 <g e> bes16 a bes c |
%51
bes8 a g16 f g a |
%52
g8 f c'16 a g f |
%53
e8[ d16 e] c8[ d16 e] |
%54
f8[ a16 f] a f a f |
%55
e8 d16 e c8 d16 e |
%56
f4 \bar":|" c16^\markup{\large \bold {Coda}} a c a |
%57
f4 g16 f g a 
%58
f8 c c'16 a c a |
%59
f8 f g16 f g a |
%60
f4 c''16 a c a |
%61
f8 f g16 f g a |
%62
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
f4 \bar ".|"\mark \markup { \musicglyph #"scripts.ufermata" }
}

BottomVoiceRondo = \relative a' { \clef treble
\partial 4*1 r4 |
%1
a16 c a c a c a c |
%2
bes c bes c bes c bes c |
%3
a c a c e, c' e, c' |
%4
f,8 c d f |
%5
c f bes, d | \clef F
%6
a c r4 |
%7
bes8 a g f |
%8
c' c, r4 |
%9
a'16 c a c a c a c |
%10
bes c bes c bes c bes c |
%11
a c a c e, c' e, c' |
%12
f,8 c d d' |
%13
c, c' bes, bes' |
%14
a, a' r4 |
%15
<bes g c,>8[ <bes g c,> <bes g c,> <bes g c,>] |
%16
<a f>4 r |
%17
<bes g c,>8[ <bes g c,> <bes g c,> <bes g c,>] |
%18
<a f>4 \bar":|:" r4 | \clef G
%19
<cis e>8[ a <cis e>8 a] |
%20
<d f>[ a <d f> a] |
%21
<e' g>[ a, <e' g> a,] |
%22
<d f>4 r |
%23 printing error: final G was A in printed score
<d b>8[ g, <b d> g] |
%24
<c e>[ g <c e> g] |
%25
<d' f>[ g, <d' f> g,] |
%26
<c e>4 r |
%27
<d f>8[ g <d f> g] |
%28
<c, e>[ g' <c, e> g'] |
%29
<f d g,>[ <f d g,> <f d g,> <f d g,>] |
%30
<e c>4 r |
%31
<d f>8 g <d f> g |
%32
<c, e>[ g' <c, e> g'] |
%33
<f d g,>[ <f d g,> <f d g,> <f d g,>] |
%34
<e c>4 r | \clef F
%35
f,,16 f' e f g, g' f g |
%36
c,4 r |
%37
f,16[ f' e f] g, g' f g |
%38
c,4 r | \clef G
%39
a''16[ c a c] a c a c
%40
bes[ c bes c] bes c bes c |
%41
a[ c a c] e, c' e, c' |
%42
f,8 c d f |
%43
c f bes, d | \clef F
%44
a c r4 |
%45
bes8 a g f |
%46
c' c, r4 |
%47
a'16 c a c a c a c |
%48
bes c bes c bes c bes c |
%49
a c a c e, c' e, c' |
%50
f,8 c d d' |
%51
c, c' bes, bes' |
%52
a, a' r4 |
%53
<bes g c,>8[ <bes g c,> <bes g c,> <bes g c,>] |
%54
<a f>4 r |
%55
<bes g c,>8[ <bes g c,> <bes g c,> <bes g c,>] |
%56
<a f>4 \bar":|" r |
%57
<a f>8[ c, <g' bes> c,] |
%58
<f a>4 r |
%59
<f a>8[ c <g' bes> c,] |
%60
<f a>4 r | \clef G
%61
<f' a>8 <f a> <bes g c,> <bes g c,> |
%62
<a f>4 \bar".|"
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
  \layout {}
  \header {piece = \markup{ \bold {Allegro moderato}} }
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
      \globalRondo
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \TopVoiceRondo 
    }
    \new Staff = "down" {
     \globalRondo
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
     \clef bass
     \BottomVoiceRondo
   }
  >>
  \layout {}
  \header {piece = \markup{ \bold {Rondo}}}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}
