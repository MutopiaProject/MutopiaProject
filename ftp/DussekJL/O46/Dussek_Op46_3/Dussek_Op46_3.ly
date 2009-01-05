\header {
  filename=  "Dussek_Op46_3"
  title =    \markup \center-align {"Six sonates faciles pour le Piano Forte" "avec accompagnement de Violon Ad Libitum" " "}
  opus =     "Opus 46 no. 3 (Craw 19)"
  subtitle=  "Sonate III"
  composer="J. L. Dussek (1760-1812)"
  source="Six SONATES Faciles Pour le Piano Forte AVEC ACCOMPAGNEMENT de Violon Ad Libitum; à Paris Chez RICHAULT, Editeur de Musique, Boulevard Poissonnière N° 26 au Ier 663.R. (undated, apparently first half 19th Century)"
  copyright="Creative Commons Attribution-ShareAlike 3.0"
  style = "Classical"
  mutopiatitle = "Six sonates faciles pour le Piano Forte (III)"
  mutopiacomposer = "DussekJL"
  mutopiainstrument = "Piano"
  maintainer = "Kris Van Bruwaene"
  maintainerEmail = "kris.vanbruwaene@gmail.com"
  lastupdated = "2008-12-27"
 footer = "Mutopia-2009/01/05-1608"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
\version "2.10.33"

globalAllegro = {
   \time 4/4
   \key bes \major
}

TopVoiceAllegro = \relative g' {
%1
f'2 f8 g a bes |
%2
a g fis g g4 r |
%3
g,8 r bes r es r g r |
%4
g f e f f4 r8 f |
%5
f2( a,8) f'-| f-| f-| |
%6
f2( bes,8) bes'-| bes-| bes-| |
%7
<bes g>4 <a f>8 <es g> <d f>4 <c es> |
%8
<es c>2 <d bes>4 r8 f, |
%9
f2( a,8) f' f f |
%10
f2( bes,8) bes' bes bes |
%11
<bes g>4 <a f>8 <g es> <d f>4 <c es> |
%12
<bes d> r16 d'' f d r bes d bes r f bes f |
%13
r d f d r bes d bes r f bes f r d f d |
%14
r c f c r d f d r c f c r des f des |
%15
c4 <a f'> <a f'> r |
%16
c'8 c'16 b c8-| c-| c-| c-| c-| c-| |
%17
c c c c c-| c( c e) |
%18
f4 <a, f>4 <g e>( <f d>) |
%19
<e c>( <d bes> <c a> <bes g>) |
%20 printing error: last four notes below are 16ths/semiquavers in original
<a f>4 g'16 f e f a8 f a f |
%21
r16 f( e f) g( f e f) a8 f a f |
%
r8 f16 g f8 f d'16 as g f d' as g f |
%23
e4 <e c'> <e c'> r8 c' |
%24
<c c,>2 <bes bes,>4 <a a,>4 |
%25
<a a,>2 <g g,>4 <f f,>4 |
%26
<g g,>4. <a a,>8 <f f,>4 <f f,> |
%27
<g g,>4. <a a,>8 <f f,>4 <f f,> |
%28
<e g,>4. c8 e c e c |
%29
f4 <c a>8. <bes d>16 <c a>4 <c a> |
%30
<e g,>4. c8 e c e c |
%31
f4 f f r \bar ":|:" |
%32
c2 c8 d e f |
%33 error corrected: original has no accidental natural E here but E flat
e d cis d d4 r |
%34
d,8 r f r bes r d r |
%35
d([ c b c] c4) r8 c |
%36
c2( e,8) c' c c |
%37
c2( f,8) f' f f |
%38
<f d>4( <c e>8 <bes d> <a c>4) <g bes> |
%39
<g bes>2 <f a>4 r |
%40
c''2( e,8) c' c c |
%41
c2( f,8) f' f f |
%42
<f d>4 <e c>8 <d bes> <c a>4 <bes g> |
%43
<a f>2 r8 c bes16( a g f) |
%44
f8 e e4 r8 e8( f g) |
%45
f( e) es4 c'8 a f es |
%46
es4.( f16 es) d4 r |
%47
d2 r8 a' g16 fis e d |
%48
d4.( e16 d) cis4 r |
%49
d8( cis) c4 a'8( fis d c) |
%50
c4.( d16 c) bes4 d |
%51
es16( d es f) g8 es cis( d) r d |
%52
c16( b c d) es8 c a( bes) r f' |
%53
<f d>4. g16 f <c es>4 <bes d> |
%54
<a c> f'8 f f( e d c) |
%55
r f[ f f] f( e d c) |
%56
<a c f>4 r8 e f( fis g gis) |
%57
a[( bes b c]) cis( d es e) |
%58
f2 f8( g a bes) |
%59
a[( g fis g]) g4 r |
%60
g,8 r bes r es r g r |
%61
g[( f e f]) f4 r8 f |
%62
f2( a,8) f' f f |
%63
f2( bes,8) bes' bes bes |
%64
<bes g>4 <a f>8( <es g>) <d f>4 <c es> |
%65
<d bes> r16 d' f d r d f d  r bes d bes |
%66
r f bes f r bes d bes r f bes f r d f d |
%67
r g bes g r es g es r g bes g r es g es |
%68
r d f d r bes d bes r c es c r a c a |
%69
r8 bes d f bes c d es |
%70
<f f,>2 <es es,>4 <d d,> |
%71
<d d,>2( <c c,>4) <bes bes,> |
%72
<c c,>4. <d d,>8 <bes bes,>4 <bes bes,> |
%73
<c c,>4. <d d,>8 <bes bes,>4 <bes bes,> |
%74
<a a,>4. f8 a f a f |
%75
bes4 <f d>8. <es g>16 <f d>4 <f d> |
%76
<a a,>4. f8 a f a f |
%77
\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
bes 4 <bes d,> <bes d,> r \bar ":|"\mark \markup { \musicglyph #"scripts.ufermata" }
}

BottomVoiceAllegro = \relative g { \clef bass
%1
bes8[ d bes d] bes d bes d |
%2
bes[ es bes es] bes es bes es |
%3
bes[ es bes es] bes es bes es |
%4
bes8[ d bes d] bes d bes d | \clef treble
%5
r8 <c es> <c es> <c es> <c es>2 |
%6
r8 <d f> <d f> <d f> <d f>2 |
%7
es2 f4 fis |
%8
fis2 g4 r | \clef bass
%9
r8 <c,, es> <c es> <c es> <c es>2 |
%10
r8 <d f> <d f> <d f> <d f>2 |
%11
es2 f4 f, | 
%12
bes \clef treble bes''' f d |
%13
bes f d bes | \clef bass
%14
a bes a bes |
%15
a f f r | \clef treble
%16
r4 <f' a> <e g> <f d> |
%17
<c e> <bes d> <a c> <g bes> | \clef bass
%18
<a f>8 c16 b c8-| c-| c-| c-| c-| c-| |
%19
c c c, c d d e e |
%20
f4 r r2 |
%21
d'4 r r2 | \clef treble
%22
b8[ f' as f] b,4 r | \clef bass
%23
c8[ c, e g] c4 r |
%24
f,8[ a c a] f a c a |
%25
f8[ a c a] f a c a |
%26
f8[ bes c bes] f a c a |
%27
f8[ bes c bes] f a c a |
%28
<g bes>4 c <g bes> c |
%29
<a f> r r2 |
%30
<g bes>4 c <g bes> c |
%31
<c a> <c a> <c a> r \bar ":|:" |
%32
f,8[ a f a] f a f a |
%33
f[ bes f bes] f bes f bes |
%34
f[ bes f bes] f bes f bes |
%35
f[ a f a] f a f a |
%36
r <g bes> <g bes> <g bes> <g bes>4 r 
%37
r8 <a c> <a c> <a c> <a c>2 |
%38
bes2 c4 cis |
%39
cis2 d4 r | \clef treble
%40
r8 <g bes> <g bes> <g bes> <g bes>4 r |
%41
r8 <a c> <a c> <a c> <a c>4 r |
%42
bes2 c4 c, | \clef bass
%43
f,8 a f a f a f a |
%44
g bes g bes g bes g bes |
%45
a c a c a c a c |
%46
bes[ d bes d] bes d bes d |
%
d,[ fis d fis] d fis d fis |
%
e[ g e g] e g e g |
%
fis[ a fis a] fis a fis a |
%
g[ bes g bes] g bes g bes |
%51
<g bes>4 r f8 a f a |
%52
<g es>4 r d8 f d f |
%53
r4 f a bes |
%54
f r <g bes>2 
%55
<f a> <g bes> |
%56
<f a>4 r r2 | r1 |
%58
bes8[ d bes d] bes d bes d |
%59
bes[ es bes es] bes es bes es |
%60
bes[ es bes es] bes es bes es |
%61
bes8[ d bes d] bes d bes d | \clef treble
%62
r8 <c es>[ <c es> <c es>] <c es>2 |
%63
r8 <d f>[ <d f> <d f>] <d f>2 |
%64
es2 f4 f, |
%65
bes \clef treble bes'' bes f |
%66
d f d bes|
%67
es, bes' g es |
%68
f d es f |
%69
bes, r r2 | \clef treble
%70
bes8[ d f d] bes[ d f d] |
%
bes[ d f d] bes[ d f d] |
%72
bes[ es f es] bes[ d f d] |
%73
bes[ es f es] bes[ d f d] |
%74
<c es>4 f <c es>4 f |
%75
<d bes>4 r r2 |
%76
<c es>4 f <c es>4 f | \clef bass
%77
bes,4 bes, bes' r \bar ":|"
}

globalRondo = {
   \time 6/8
   \key bes \major
}

TopVoiceRondo = \relative g' {
\partial 8*1 f8 |
%1
<d bes>4 <d bes>8 <es c> <d b> <es c> |
%2
<d f>4 bes'8 <d, f>4 d'16 bes |
%3
a g a f bes8 a16 g a f bes8 |
%4
<c es>4 <bes d>8 <c a>4 f8 |
%5
<d bes>8[ <cis a> <d bes>] <c es> <b d> <c es> |
%6
<f d>4 bes8 <f d>4 d'16 bes |
%7
a[ g a f g a] bes f d' f, f' f, |
%8
a[ g a f g a] bes4 \bar":|:" f8 |
%9
d4 f16 d c8 c16 f a c |
%10
bes8[ bes bes] a4 f8 |
%11
d4 f16 d c8 c16 f a c |
%12 error corrected: last C below is quarter/crotchet in original print
bes8[ bes bes] a r c, |
%13
c4 d16 c f c f c a' c, |
%14
c'8[ c a16 f] c'8 c a16 f |
%15
c4 d16 c e c e c g' e |
%16
c'8[ c g16 e] c'8 c g16 e 
%17
c4 des16 c f c f c as' f |
%18
c'8[ c as16 f] c'8 c as16 f |
%19
c4 des16 c e c e c g' e |
%20
c'8[ c g16 e] c'8 c g16 e |
%21
f8[ a16 bes c bes] <a f>4 r8 |
%22
<a f>8[ a16 bes c bes] <a f>4 r8 |
%23
g8[ bes16 g bes g] e8 g16 e g e |
%24
f8[ f16 a g e] f4 c16 a |
%25
g8[ bes16 g bes g] e8 g16 e g e |
%26
f8[ f16 a g e] f4 f8 |
%27
<d bes>4 <d bes>8 <c es> <d b> <c es> |
%28
<d f>4 bes'8 <d, f>4 d'16 bes |
%29
a g a f bes8 a16 g a f bes8 |
%30
<c es>4 <d bes>8 <c a>4 f8 |
%
<d bes>8 <cis a> <d bes> <c es> <b d> <c es> |
%
<d f>4 bes'8 <d, f>4 d'16 bes |
%
a[ g a f g a] bes f d' f, f' f, |
%
a[ g a f g a] bes4 \bar ":|"
}

BottomVoiceRondo = \relative a { \clef F
\partial 8*1 r8
%1
bes,8[ d f] a,4. |
%2
bes8[ bes' bes] bes4 r8 | \clef G
%3
<c es>4 <bes d>8 <c es>4 <bes d>8 | \clef F
%4
a[ f bes] f4 r8 |
%5
bes,8[ bes' bes] bes bes bes |
%6
bes,8[ bes' bes] bes bes bes |
%7
f[ c' es] <bes d>4 r8 |
%8
f[ c' es] <bes d>4 \bar":|:" r8 | \clef G
%9
bes16[ f' bes, f' bes, f'] a,16 f' a, f' a, f' |
%10
g,[ e' g, e' g, e'] f, f' e f e f |
%11
bes,16[ f' bes, f' bes, f'] a,16 f' a, f' a, f' | \clef F
%12
g,[ e' g, e' g, e'] f,8 f' r8 | \clef G
%13
c8[ f a] c, f a |
%
c,8[ f a] c, f a |
%15
c,[ g' bes] c, g' bes |
%16
c,[ g' bes] c, g' bes |
%17
c,[ f as] c, f as |
%18
c,[ f as] c, f as |
%19
c,[ g' bes] c, g' bes |
%20
c,[ g' bes] c, g' bes |
%21
<a f>4 r8 f f e |
%22
d4 r8 d d c | \clef F
%23
bes4. <bes g c,>4. |
%24
<a f>4 <bes g>8 <a f>4  r8 |
%25
bes4. <bes g c,>4. |
%26 Original has bass B flat in second chord, corrected to C
<a f>4 <bes g c,>8 <a f>4  r8 |
%27
bes,8[ d f] a,4. |
%28
bes8[ bes' bes] bes4 r8 | \clef G
%29
<c es>4 <d bes>8 <c es>4 <bes d>8 | \clef F
%30
a8[ f bes] f4 r8 |
%
bes,8[ bes' bes] bes[ bes bes] |
%
bes,8[ bes' bes] bes[ bes bes] |
%
f[ c' es] <d bes>4 r8 |
%
f,[ c' es] <d bes>4 \bar ":|"
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
  \header {piece = \markup{ \bold {Andantino}} }
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 100 4)
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
  \header {piece = \markup{ \bold {Rondo Allegretto}}}
  \midi { 
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 90 4)
    }
  }
}
