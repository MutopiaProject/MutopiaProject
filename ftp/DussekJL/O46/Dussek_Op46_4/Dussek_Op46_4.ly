\header {
  filename=  "Dussek_Op46_4"
  title =    \markup \center-align {"Six sonates faciles pour le Piano Forte" "avec accompagnement de Violon Ad Libitum" " "}
  opus =     "Opus 46 no. 4 (Craw 20)"
  subtitle=  "Sonate IV"
  composer="J. L. Dussek (1760-1812)"
  source="Six SONATES Faciles Pour le Piano Forte AVEC ACCOMPAGNEMENT de Violon Ad Libitum; à Paris Chez RICHAULT, Editeur de Musique, Boulevard Poissonnière N° 26 au Ier 663.R. (undated, apparently first half 19th Century)"
  copyright="Creative Commons Attribution-ShareAlike 3.0"
  style = "Classical"
  mutopiatitle = "Six sonates faciles pour le Piano Forte (IV)"
  mutopiacomposer = "DussekJL"
  mutopiainstrument = "Piano"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "kris.vanbruwaene@gmail.com"
  lastupdated = "2009-01-03"
 footer = "Mutopia-2009/01/05-1609"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
\version "2.10.33"

globalAllegro = {
   \time 3/4
   \key c \major
}

TopVoiceAllegro = \relative g' {
\partial 4*1 g,4 |
%1
<e g c>2 e'16 d c d |
%2
c8 r <c e> r <e g> r |
%3
<f a>2 <d b'>4 |
%4
<e c'>4 r <e g>8. <e g>16 |
%5
<f a>2 <d b'>4 |
%6
<e c'> <c' e> <e g> |
%7
<e g>2( <d f>4) |
%8
<c e> r8 fis( g) e |
%9
c4 c cis |
%10
cis8 d e d d4 |
%11
d4 g f |
%12
f2 e4 |
%13
g2 c4 |
%14
b8 a g f e d |
%15
c2 d8 e |
%16
<c e,>2 g4 |
%17
c8[ e16 d] c8[ d e fis] |
%18
g4 g16[ fis g a] g4 |
%19
c f, f8( g) |
%20
f2( e4) |
%21
a a, a |
%22
g4. f8 e4 |
%23
d4 <f d'> <e c'> |
%24
<d b'>2 d'4 |
%25
d4. e8 d4 |
%26
d4. e8 d4 |
%27
d4 <b b'> <g g'> |
%28
<g g'>2 <fis fis'>4 |
%29
d'4. es8 d4 |
%30
d4. es8 d4 |
%31
d4 <bes bes'> <g g'> |
%32
<g g'>2 <fis fis'>4 |
%33
r16 g' fis g b[ g b g] b g b g |
%34
r e dis e g[ e g e] g e g e |
%35
d4 a8[ b c d] |
%36
<a c>2 <g b>4 |
%37
r16 g'[ fis g] b[ g b g] b[ g b g] |
%38
e8[ g fis e d c] |
%39
b2 b16[ a g a] |
%40 Original mark below was "rF"
g4 << {\stemDown d'2\rfz} \\ {\stemUp f2} >>|
%41
<< {\stemDown{ c4 <c a> <c a>}} \\ {\stemUp{e4 fis fis}} >>|
%42 Original mark below was "rF"
<< \stemDown {b,4 d2\rfz} \\ \stemUp {g4 f2} >>|
%43
<< \stemDown {c4 <c a> <c a>} \\ \stemUp {e4 fis fis} >>|
%44
<< \stemUp {g g g} \\ \stemDown { b, b b} >>|
%45 r8 below missing in printed score (could also be d4-.)
<< {\stemDown b2} \\ {\stemUp g'2} >> \bar":|:" r8 d,8-. |
%46
<b d g>2 b'16 a g a |
%47
g8 r <g b> r <b d> r |
%48
<c e>2 <c fis>4 |
%49
<b g'> r <b d>8. <b d>16 |
%50
<c e>2 <a fis'>4 |
%51
<b g'>4 <g' b>8 r <b d> r |
%52
<b d>2 <c a>4 |
%53
<g b> r d8 b |
%54
g4 g gis |
%55
gis8[ a b a] a4 |
%56
a d c |
%57
c2( b4) |
%58
r4 d g |
%59
f8[ e dis e] e4 |
%60
r <b b'> <e e'> |
%61
<d d'>2 <c c'>4 |
%62
<b d f>4 r8 b[ d f]
%63
f[( e d c b a]) |
%64
<gis b d>4 r8 gis[ b d] |
%65
d[( c b a gis a]) |
%66
c( b) b4( cis) |
%67
e8( d) d4 r |
%68
g8( f) f4 f |
%69
f4.( g16 a) g8 f |
%70
f8( e) e4 e |
%71
e4.( f16 g) f8 e |
%72
d16[ e f g] a[ f g e] f[ d e cis] |
%73
d16[ e f g] a[ f g e] f[ d e cis] |
%74
d16[ e f g] a[ f g e] f[ e d c] |
%75
<b d g>2 g8 f |
%76
f[ e d c e fis] |
%77
g4 <d b>8[ g <c, e> g'] |
%78
<d b>[ g <d b> g <c, es> g'] |
%79
<d b>4 <d b> <d b> |
%80
<d b>2 g,4 |
%81
<e g c>2 e'16 d c d |
%82
c8 r <c e> r <e g> r |
%83
<f a>2 <d b'>4 |
%84
<e c'>4 r <e g>8. <e g>16 |
%85
<f a>2 <d b'>4 |
%86
<e c'> <c' e>8 r <e g>8 r |
%87
<e g>2 <d f>4 |
%88
<c e> r g' |
%89
g4. a8 g4 |
%90
g4. a8 g4 |
%91
g4 <e e'> <c c'> |
%92
<c c'>2 <b b'>4 |
%93
g'4. as8 g4 |
%94
g4. as8 g4 |
%95
g4 <es es'> <c c'> |
%96
<c c'>2 <b b'>4 |
%97
r16 c'[ b c] e[ c e c] e[ c e c] |
%98
r a[ gis a] c[ a c a] c a c a |
%99
g4 d8( e f g) |
%100
<f d>2( <c e>4) |
%101
r16 c[ e c] e[ c e c] e c e c |
%102
a8[ a' g f e d] |
%103
c2 e16[ d c d] |
%104 Original mark below was "rF"
c4 <g bes>2\rfz |
%105
<<\stemDown {f4 <f d> <f d>} \\ \stemUp {a4 b b} >>
%106 Original mark below was "rF"
<<\stemDown {e,4 g'2} \\ \stemUp {c,4 bes'2\rfz} >> |
%107
<<\stemDown {f4 <f d> <f d>} \\ \stemUp {a4 b b} >> |
%108
<<\stemDown {<e, g> <e g> <e g>} \\ \stemUp {c' c c} >> |
%109
<<\stemDown {<g e>2} \\ \stemUp {c2} >> 
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
\bar ":|"\mark \markup { \musicglyph #"scripts.ufermata" }
}

BottomVoiceAllegro = \relative g, { \clef bass
\partial 4*1 r4 |
%1
c,8[ c' c, c' c, c'] |
%2
c,[ c' c, c' c, c'] |
%3
c,[ c' c, c' c, c'] |
%4
c,[ c' c, c' c, c'] |
%5
c,[ c' c, c' c, c'] |
%6
c,4 r r | \clef G
%7
g'' a b |
%8
c r r |
%9
e8 g e g e g |
%10
f a f a f a |
%11
g b g b g b |
%12
a c a c a c |
%13
e, c' e, c' e, c' |
%14
f,2 r4 |
%15
r <e g,> <f b, g> |
%16
c2 r4 | \clef F
%17
c8[ e c e c e] |
%18
b[ d b d b d]
%19
a[ c a c a c] |
%20
g[ b g b g b] |
%21
f[ a f a f a] |
%22
g[ b g b a c] |
%23
f,2 fis4 |
%24
g4 g, r |
%25
<g' b>8[ d' b d b d] |
%26
<a fis>[ c a c a c] |
%27
<b g>[ d b d b d] |
%28
<c a>[ d c d c d] |
%29
<bes g>[ d bes d bes d]
%30
<a fis>[ c a c a c] |
%31
<bes g>[ d bes d bes d] |
%32
<c a>[ d c d c d] |
%33
b4 r r |
%34
c r r |
%35
d,8[ fis d fis d fis] |
%36
e[ g e g e g]
%37
b,4 r r |
%38
c4 r r |
%39
d d' <c d,> |
%40
<b g> b8 d b g |
%41
c4 d d |
%42
g, b8 d b g |
%43
c4 d d |
%44
g, d8 g b, d |
%45
g,4 g' \bar":|:" r |
%46
g,8[ g' g, g' g, g'] |
%47
g,8[ g' g, g' g, g'] |
%48
g,8[ g' g, g' g, g'] |
%49
g,8[ g' g, g' g, g'] |
%50
g,8[ g' g, g' g, g'] |
%51
g,4 r r |
%52
d' e fis |
%53
g4 g, r | \clef G
%54
b'8[ d b d b d] |
%55
c[ e c e c e]
%56
d[ fis d fis d fis]
%57
e[ g e g e g]
%58
b,[ g' b, g' b, g']
%59
c,[ g' c, g' c, g'] \clef F
%60
gis,[ e' gis, e' gis, e']
%61
a,[ e' a, e' a, e']
%62
gis,16[ b gis b] gis4 r |
%63
<a c>2 r4 |
%64
e16[ b' gis b] e,4 r |
%65
<e a,>2 c8 e |
%66
d[ f d f e g] |
%67
f[ a f a cis, a'] |
%68
d,[ a' d, a' d, a'] |
%69
g[ b g b g b] |
%70
g[ c g c g c] |
%71
g[ c g c g c] |
%72
<a f>4 r8 <a e> <a f> <a g> |
%73
<a f>4 r8 <a e> <a f> <a g> |
%74
<a f>4  <a d,>8 <a e> <a f> <a fis> |
%75
g4 g, g'8 f |
%76
f[ e d c e fis] |
%77
g2.|
%78
g,2 g'4 |
%79
g, g g |
%80
g2 r4 |
%81
c,8[ c' c, c' c, c'] |
%82
c,[ c' c, c' c, c'] |
%83
c,[ c' c, c' c, c'] |
%84
c,[ c' c, c' c, c'] |
%85
c,[ c' c, c' c, c'] |
%86
c,4 r r |
%87
g'' a b |
%88
c c, r \clef G |
%89
<c' e>8[ g' e g e g] |
%90
<d b>[ f d f d f] |
%91
<c e>[ g' e g e g] |
%92
<d f>[ g f g f g] |
%93
<es c>[ g es g es g] |
%94
<d b>[ f d f d f]
%95
<es c>[ g es g es g] |
%96
<f d>[ g f g f g] |
%97
e4 r r |
%98
f r r | \clef F
%99
g,8[ b g b g b] |
%100
a[ c a c a c] |
%101
e,4 r r |
%102
f r r |
%103
r <e g,> <f g,> |
%104
<e c> e8[ g e c] |
%105
f4 g g |
%106
c,4 e8[ g e c] |
%107
f4 g g |
%108
c,8[ c' g c e, g] |
%109
c,4 c' \bar":|"
}

globalRondo = {
   \time 6/8
   \key c \major
}

TopVoiceRondo = \relative g' {
\partial 8*1 c8 |
%1
e4. \grace g16 f8[ e f] |
%2
g4 e8 c4 e8 |
%3
d8[ f e] d[ e c] |
%4
<c e>4. <b d>4 g8 |
%5
<c e>4. <d f>8[ e f] |
%6
g[ e c] <c c'>4 bes'8 |
%7
a[ f e] d[ c b] |
%8
c[ c c] c4 \bar":|:" g8 |
%9
<< \stemDown { e'4. e8[ d c]} \\ \stemUp {g'4. g8[ fis e]} >>
%10
<< \stemDown {c8[ b b] b4} \\ \stemUp {e8[ d d] d4 } >> dis8 |
%11
<< \stemDown {c4. c8[ b a]} \\ \stemUp {e'4. e8[ d c]} >> |
%12
<< \stemDown {a8[ g g] g4} \\ \stemUp {c8[ b b] b4} >> g'8 |
%13
d8[ d16 e d8] r8 d16[ e d8] |
%14
d'8[ b g] a[ g16 fis e d] |
%15
r8 d16[ e d8] r d16[ e d8] |
%16
d'8[ b g] a[ g16 fis e d] |
%17
g8[ g g] g[ a b] |
%18
b[ e, e] e[ fis g] |
%19
<< \stemDown {e[ d c] c[ b a]} \\ \stemUp {g'[ fis e] e[ d c]} >>
%20
<< \stemDown {a4.( g4)} \\ \stemUp {c4.( b4)} >> d8 |
%21
g[ g g] g[ a b] |
%22
b[ e, e] e( fis g]) |
%23
fis[( e d]) c[( b a]) |
%24
g[ g' g] fis e d |
%25
r g g fis[( e d]) |
%26
g[( a fis]) g[( a fis]) |
%27
g[( a f]) e[( f d]) |
%28
e4. \grace g16 f8 e f |
%29
g4 e8 c4 e8 |
%30
d8[ f e] d[ e c] |
%31
<c e>4. <b d>4 g8 |
%32
<c e>4. <d f>8[ e f] |
%33
g[ e c] <c c'>4 bes'8 |
%34
a[ f e] d[ c b] |
%35
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
c[ c c] c4 \bar":|:"\mark \markup { \musicglyph #"scripts.ufermata" }
}

BottomVoiceRondo = \relative a { \clef G
\partial 8*1 r8
%1
c[ e g] b,[ d g] |
%2
c,[ e g] c,[ e g] 
%3
<f a>4. <fis a>4. |
%4
g8[ g16 fis g fis] g4 r8 | \clef F
%5
c,,[ e g] b,[ d g] |
%6
c,[ e g] e[ g c] |
%7
f,[ a d] g,[ d' f] |
%8
<c e>8[ <c e> <c e>] <c e>4 \bar":|:" r8 |
%9
g,[ g' g] g[ g g] |
%10
g,[ g' g] g[ g g] |
%11
g,[ g' g] g[ g g] |
%12
g,[ g' g] g[ g g] | \clef G
%13
<g' b>4. <fis a>4. |
%14
<g b>4. <c a d,>4. | \clef F
%15
<b, g>4. <c a fis>4. |
%16
<g b>4. <c a d,>4. |
%17
b,8[ d g] b,8[ d g] |
%18
c,[ e g] b,[ d g] |
%19
c,4. d4 dis8 
%20
e8[ e16 dis e dis] e4 r8 |
%21
b8[ d g] b,8[ d g] |
%22
c,[ e g] b,[ d g] |
%23
d[ a' c] d,[ a' c] |
%24
<g b>4. <g c>4. |
%25
<g b>4. <g c>4. |
%26
<g b>4. r4 r8 |
%27
r2. | \clef G
%28
c8[ e g] b,[ d g] |
%29
c,[ e g] c,[ e g] 
%30
<f a>4. <fis a>4. |
%31
g8[ g16 fis g fis] g4 r8 | \clef F
%32
c,,[ e g] b,[ d g] |
%33
c,[ e g] e[ g c] |
%34
f,[ a d] g,[ d' f] |
%35
<c e>8[ <c e> <c e>] <c e>4 \bar":|"
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
  \header {piece = \markup{ \bold Allegro} }
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
  \header {piece = \markup{ \bold {Rondo Allegro}}}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
