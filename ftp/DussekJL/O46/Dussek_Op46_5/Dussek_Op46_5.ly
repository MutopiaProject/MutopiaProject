\header {
  filename=  "Dussek_Op46_5"
  title =    \markup \center-align {"Six sonates faciles pour le Piano Forte" "avec accompagnement de Violon Ad Libitum" " "}
  opus =     "Opus 46 no. 5 (Craw 21)"
  subtitle=  "Sonate V"
  composer="J. L. Dussek (1760-1812)"
  source="Six SONATES Faciles Pour le Piano Forte AVEC ACCOMPAGNEMENT de Violon Ad Libitum; à Paris Chez RICHAULT, Editeur de Musique, Boulevard Poissonnière N° 26 au Ier 663.R. (undated, apparently first half 19th Century)"
  copyright="Creative Commons Attribution-ShareAlike 3.0"
  style = "Classical"
  mutopiatitle = "Six sonates faciles pour le Piano Forte (V)"
  mutopiacomposer = "DussekJL"
  mutopiainstrument = "Piano"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "kris.vanbruwaene@gmail.com"
  lastupdated = "2008-12-23"
 footer = "Mutopia-2009/01/05-1610"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
\version "2.10.33"

globalAllegro = {
   \time 3/4
   \key d \major
}

TopVoiceAllegro = \relative g' {
\partial 8*1 a8
%1
<fis d>8[ a, <fis' d> a, <fis' d> a,] |
%2
<a' fis>8[ a, <a' fis> a, <gis' eis> a,] |
%3
<a' fis>8[ a, <a' fis> a, <gis' eis> a,] |
%4
<a' fis>4 r8 a a' fis |
%5
d4 d fis16 e d e |
%6
d4 r8 d'8 a fis |
%7
d4 d fis16 e d e |
%8
d4 r8 d fis  a |
%9
<e g>4 <d fis> <fis a>8. <fis a>16 |
%10
<e g>4 <d fis> a'8 fis |
%11
<cis e>4 <cis e> <d fis> |
%12
<cis e>2 e8. e16 |
%13
e4 a, e'8. e16 |
%14
e4 gis,4 e'8. e16 |
%15
e4 << {\stemDown cis cis} \\ {\stemUp a' a} >>
%16
<< {\stemDown cis, b} \\ {\stemUp a' gis} >> e8. e16 |
%17
e4 a, e'8. e16 |
%18
e4 gis, e'8. e16 |
%19
e4 <<{\stemDown c c} \\ {\stemUp a' a} >> |
%20
<< {\stemDown cis, b} \\ {\stemUp a' gis} >> e4 |
%21
r16 a,[ gis a] dis[ a dis a] dis[ a dis a] |
%22
gis4 e'16[ fis gis fis] e4 |
%23
r16 a,[ gis a] dis[ a dis a] dis[ a dis a] |
%24
gis4 <e e'> e'8 cis |
%25
a4 r8 a'16 gis a8 a |
%26
a4 r8 b,16 cis e d cis b |
%27
cis4 r8 a'16 gis a8 a |
%28
a4 r8 d,16 e g fis e d |
%29
e4. fis8 gis a |
%30
g[ fis e d cis b] |
%31
e4. cis16 a b4\trill |
%32
a4 cis16 g' cis, g' cis, g' cis, g' |
%33
<< {\stemDown d4 b b} \\ {\stemUp fis'4 gis gis} >> |
%34
<a cis,>4 cis,16 g' cis, g' cis, g' cis, g' |
%35
<< {\stemDown d4 b b} \\ {\stemUp fis'4 gis gis} >> |
%36
<< {\stemDown cis, cis cis} \\ {\stemUp a'4 a a} >> |
%37
<a cis,>2 \bar ":|:" e4 |
%38
<cis a>8[ e, <cis' a> e, <b' d> e,] |
%39
<e' cis>8[ e, <e' cis> e, <bis' dis> e,] |
%40
<e' cis>8[ e, <e' cis> e, <bis' dis> e,] |
%41
<e' cis>4 r8 e e' cis |
%42
a4 a cis16 b a b |
%43
cis4 r8 a8 e' a, |
%44
a4 a cis16 b a b |
%45
a4 r8 gis a fis |
%46
d4 d fis16 e d e |
%47
d4 r8 d'8 a fis | 
%48
d4 d fis16 e d e |
%49
d4 r8 d fis a |
%50
d4( d,8) d' d d |
%51
d[ b a g fis g] |
%52
fis4 \grace g16 fis8 e fis4 |
%53
b4 r8 ais b ais |
%54
b4( b,8) b' b b |
%55
b[ g fis e dis e] |
%56
dis4 dis8 cis dis4 |
%57
e4 r8 dis e fis |
%58
<e g>4 <d fis> <fis a>8. <fis a>16 |
%59
<e g>4 <d fis> a'8 fis |
%60
<cis e>4 <cis e>4 <d fis> |
%61
<cis e>2 a8 fis |
%62
<cis e>8 r <cis e>8 r <d fis> r |
%63
<cis e>4 a' a |
%64
a e g |
%65
<fis d>8[ a, <fis' d> a, <e' g> a,] |
%66
<a' fis>8[ a, <a' fis> a, <gis' eis> a,] |
%67
<a' fis>8[ a, <a' fis> a, <gis' eis> a,] |
%68
<a' fis>4 r8 a a' fis |
%69
d4 d fis16 e d e |
%70
d4 r8 d'8 a fis |
%71
d4 d fis16 e d e |
%72
d4 r a'8. a16 |
%73
a4( d,) a'8. a16 |
%74
a4( cis,) a'8. a16 |
%75
a4 <fis d'> <fis d'> |
%76
<fis d'> <e cis'> a8. a16 |
%77
a4 d, a'8. a16 |
%78
a4 cis, a'8. a16 |
%79
a4 <d f,> <d f,> |
%80
<cis e,>4 r r |
%81
d,4 r8 d'16 cis d8 d |
%82
d4 r8 e,16 fis a g fis e |
%83
fis4 r8 d'16 cis d8 d |
%84
d4 r8 g,16 a c b a g |
%85
a4. b8 cis d |
%86
cis[ b a g fis e] |
%87
a4. fis16 d e4\trill |
%88
d4 fis16 c' fis, c' fis, c' fis, c' |
%89
<b g>4 <cis e,> <cis e,> |
%90
<d fis,> fis,16 c' fis, c' fis, c' fis, c' |
%91
<g b>4 <e cis'> <e cis'> |
%92
<fis d'> <fis d'> <fis d'> |
%93
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
<fis d'>2 \bar ":|"\mark \markup { \musicglyph #"scripts.ufermata" }
}

BottomVoiceAllegro = \relative g { \clef bass
\partial 8*1 r8
%1
d2. | d2. | d2. d2 r4 | \clef treble
%5
fis'8[ a fis a g a] |
%6
fis8[ a fis a fis a] |
%7
fis8[ a fis a g a] |
%8
fis a fis4 r | \clef bass
%9
cis d r | cis d r | a a gis |
%12
a4 a, r | <e' a cis>2. |
%14
<e b' d>2. 
%15
a4 a8 b cis d | e2 r4 |
%17
<c a e>2. |
%18
<d b e,>2. |
%19
<c a>4 a8 b c d |
%20
e2 r4 |
%21
f,,8[ f' f f f f] |
%22
e,[ e' e e e e] |
%23
f,[ f' f f f f] |
%24
e2 r4 |
%25
cis16 a' gis a cis,4 r |
%26
d16 a' gis a d,4 r |
%27
e16 a gis a e4 r |
%28
fis16 a gis a fis4 r |
%29
cis8[ a' cis, a' cis, a'] |
%30
d,[ a' d, a' d, a'] |
%31
<a e> <a e> <a e> <a e> <gis e> <gis e> |
%32
a[ a a a a a] |
%33
a,[ a' a a a a] |
%34
a,[ a' a a a a] |
%35
a,[ a' a a a a] |
%36
a,[ a' e a cis, e] |
%37
a,4 a' \bar ":|:" r |
%38
a2. | a2. | a2. | a4 a, r | \clef treble
%42
cis''8[ e cis e d e] |
%43
cis[ e cis e cis e] |
%44
cis8[ e cis e d e] |
%45
cis e cis4 r |
%46
fis,8[ a fis a g a] |
%47
fis8[ a fis a fis a] |
%48
fis8[ a fis a g a] |
%49
fis a fis4 r |\clef bass
%50
fis,8[ d' fis, d' fis, d'] |
%51
g,[ d' b d g, d'] |
%52
a[ d c d a d] |
%53
b d b4 r |
%54
dis,8[ b' dis, b' dis, b'] |
%55
e,[ b' e, b' e, b'] |
%56
fis[ b fis b fis b] |
%57
g b g4 r |
%58
cis d r | cis d r | a a gis |
%61
a a, r |
%62
a'8 r a r d, r |
%63
a'2 r4 | cis2 r4 |
%65
d,2 r4 |
%66
d2. | d2. | d4 r r | \clef treble
%69
fis'8[ a fis a g a] |
%70
fis8[ a fis a fis a] |
%71
fis8[ a fis a g a] |
%72
fis a fis4 r | 
%73
<fis d a>2. | <g e a,>2. | 
%75
d4 d8 e fis g |
%76
a2. | <f d a>2. | <g e a,>2. | 
%79
d4 d8 e f g |
%80
a4 \clef bass a,8 b a g |
%81
fis16 d' cis d fis,4 r |
%82
g16 d' cis d g,4 r |
%83
a16 d cis d a4 r |
%84
b16 d cis d b4 r |
%85
fis8[ d' a d fis, d'] |
%86
g,[ d' g, d' g, d'] |
%87
<d a>[ <d a> <d a> <d a> <d a> <d a>] |
%88
d[ d d d d d] |
%89
d[ d d d d d] |
%90
d[ d, d d d d] |
%91
d[ d d d d d] |
%92
d[ d' a d fis, a] |
%93
d,4 d' \bar ":|"
}

globalRondo = {
   \time 2/4
   \key d \major
}

TopVoiceRondo = \relative g' {
\partial 4*1 a8 a |
%1
fis'8. g32 fis e8 r |
%2
g8. a32 g fis8 r |
%3
<b d,>8 r <a d,> r |
%4
<g e>4( <fis d>8) r |
%5
r e d16 cis b a |
%6
a'8. fis16 d4 |
%7
r8 cis16 e d cis b a |
%8
a' fis a fis d4 |
%9
<e g>8 r <d fis> r |
%10
<cis e>4 a8 a |
%11
fis'8. g32 fis e8 r |
%12
g8. a32 g fis8 r |
%13
<d b'> r <d a'> r |
%14
<cis g'> r <d fis> r |
%15
r8 e d16 cis b a |
%16
a'8. fis16 d4 |
%17
r8 dis16 e d cis b a |
%18
a' fis a fis d4 |
%19
<e b>8 r <cis g> r |
%20
<d fis,>4 \bar ":|:" a8 a |
%21
fis'4 \grace a16 gis8 fis16 gis |
%22
a8 e e' e |
%23
e4 e16 d cis d |
%24
cis4 a8 a |
%25
fis4 \grace a16 gis8 fis16 gis |
%26
a8 e cis' e, |
%27
e4 \grace e16 d8 cis16 d |
%28
cis4 e8 e |
%29
e8 cis b a |
%30
a gis e' e |
%31
e cis b a |
%
cis b e e |
%
d16 cis b a a'8 a |
%
a16 gis fis e d8 fis16 d |
%35
<cis a>4 cis16 b a b |
%36
a4 e''8 e |
%37
e[ cis b a] |
%38
a[ gis e' e] |
%39
e[ cis b a] |
%40
cis[ b e e] |
%41
e4 d16 cis b a |
%42
r8 a gis16 fis e d |
%43
<cis a>4 cis16 b a b |
%44
a4\fermata \grace {a'8[_"ad libit." gis e] g[ fis d] fis[ e cis]} r4  \bar"|"
%45
d8[ dis e f] |
%46
fis8. g32 fis e8 r |
%47
g8. a32 g fis8 r |
%48
<d b'> r <d a'> r |
%49
<e g>4 <d fis>8 r |
%50
r e d16 cis b a |
%51
a'8. fis16 d4 |
%52
r8 dis16 e d cis b a |
%53
a' fis a fis d4 |
%54
<e g>8 r <d fis> r |
%55
<cis e>4 a8 a |
%56
fis'8. g32 fis e8 r |
%57
g8. a32 g fis8 r |
%58
<d b'>8 r <d a'> r |
%59
<cis g'> r <d fis> r |
%60
r e d16 cis b a |
%61
a'8. fis16 d4 |
%62
r8 dis16 e d cis b a |
%63
a' fis a fis d4 |
%
<e b>8 r <cis g> r |
%
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
<d fis,>4 \bar":|"\mark \markup { \musicglyph #"scripts.ufermata" }
}

BottomVoiceRondo = \relative a { \clef treble
\partial 4*1 r4
%1
d8 a' cis, a' |
%2
e a d, a' |
%3
g d fis d |
%4
cis a d4 |
%5
<a e' g>2 |
%6
r8 <d fis> <d fis> <d fis>|
%7
<a e' g>2 |
%8
r8 <d fis> <d fis> <d fis>|
%9
cis r d r | \clef bass
%10
a4 r | d,8 a' cis, a' |
%12
e a d, a' |
%13
g, g' fis, fis' |
%14
e, e' d, d' |
%15
a4 g' |
%16
r8 <d fis> <d fis> <d fis>|
%17
<a e' g>2 | r8 <fis' d> <fis d> <fis d> |
%19
g r a r | d,4 \bar":|:" r4 |
%21
d'8 a d a |
%22
cis a cis a |
%23
gis16 e' b e gis, e' b e |
%
a,4 r |
%25
d8 a d a |
%26
cis a cis a | 
%27
gis16 e' b e gis, e' b e |
%28
a,4 r |
%29
<a cis>8[ e' <a, cis> e'] |
%30
<b d>[ e <b d> e] |
%31
<a, cis>[ e' <a, cis> e'] |
%32
<gis, d'>[ e' <gis, d'> e'] |
%33
<cis a>4 r | \clef treble
%34
<d fis>4 r | \clef bass
%35
e4 e, |
%36
<a cis> r |
%37
<fis a>8[ e' <fis, a> e'] |
%38
<b d>[ e <b d> e] |
%39
<a, cis>[ e' <a, cis> e'] |
%40
<gis, d'>[ e' <gis, d'> e'] |
%41
<cis a>4 r | \clef treble
%42
<d fis> r | \clef bass
%43
e e, |
%44
<a cis>4\fermata  r \bar"|"
%45
r2 | \clef treble
%46
d8 a' cis, a' |
%47
e a d, a' |
%48
g[ d fis d] |
%49
cis a d4 |
%50
<a e' g>2 |
%51
r8 <d fis>8[ <d fis> <d fis>] |
%52
<a e' g>2 |
%53
r8 <d fis>8[ <d fis> <d fis>] |
%54
cis r d r | \clef bass
%55
a4 r |
%56
d,8 a' cis, a' |
%57
e a d, a' |
%58
g, g' fis, fis' |
%59
e, e' d, d' |
%60
a4 g' |
%61
r8 <fis d>[ <fis d> <fis d>] |
%62
<g e a,>2 |
%63
r8 <fis d>[ <fis d> <fis d>] |
%64
g r a r |
%65
d,4 \bar":|"
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
  \header {piece = \markup{ \bold {Allegro Moderato}} }
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 110 4)
    }
  }
}
\score {
  \new PianoStaff <<
%    #(set-accidental-style 'default)
%   \set PianoStaff.instrumentName = "Piano"
    \new Staff = "up" {
      \globalRondo
      % The following makes the beaming group on every quarter note,
      % instead of on each whole measure or eigth note or something:
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
      \Score tempoWholesPerMinute = #(ly:make-moment 105 4)
    }
  }
}

