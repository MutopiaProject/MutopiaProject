\header {
 title =    "Andante Largo"
 opus =     "Op. 5 No. 5"
 composer = "Fernando Sor (1778-1839)"

 mutopiatitle =      "Andante Largo"
 mutopiaopus =       "Op. 5 No. 5"
 mutopiacomposer =   "SorF"
 mutopiainstrument = "Guitar"
 date =              "19th C."
 style =             "Classical"
 source =            "First edition facsimile"
 copyright =	     "Creative Commons Attribution-ShareAlike 2.5"
 maintainer =        "Jeff Covey"
 maintainerEmail =   "jeff.covey@pobox.com"
 maintainerWeb =     "http://pobox.com/~jeff.covey/"
 lastupdated =       "2005/12/30"
 
 footer = "Mutopia-2006/01/01-646"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

\version "2.6.0"

%{

this file is based on a facsimile of the original edition.  i've also
compared it to the simrock edition from the danish royal library, which,
as of this writing, can be found here:

http://www.kb.dk/elib/noder/rischel/RiBS0793.pdf

i've updated the beaming to modern usage, and lilypond uses modern
notation, such as the contemporary quarter rest instead of the
backwards-drawn eighth rest.  the only other non-cosmetic changes are:

1. in measure 22, the original has a natural sign next to the d instead
   of the f in the second beat.  i consider this a typo, as there is no
   d# coming before it which needs to be cancelled, and a sharp is
   placed before the f in the next measure as a reminder.  i've made the
   f natural, as does the simrock edition.

2. i agree with the simrock edition that a g natural instead of the g
   sharp in the facsimile is clearly indicated by the harmony at the end
   of the penultimate measure.

3. neither edition offers a matching repeat sign for the sign in measure
   32, and i don't have any recording in which a performer has repeated
   this section.  i've assumed that the repeat should come at the end of
   the minor section.

4. both sources write out the repeat of the major section, but i don't
   see any reason to stretch this onto three pages.

%}

global =  {
 \time 2/4
 \transposition c
 \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.instrument = "Guitar"
 \key d \major
 \skip 2*24 \skip 4*1
 \bar "||"
 \key d \minor
 \skip 4*1 \skip 2*19 \skip 4*1
}

melody =  \relative c''' {
 \repeat volta 2 {
  \partial 4
  <a fis>8^\markup {La 6 \super "e" corde en ré} <a fis>]      | %
  <a fis>8.[ <g e>16 <fis d>8 <e a,>]                           | % 1
  <d fis,>4 <g d b>8[ <b d, g,>]                                | % 2
  <a d, fis,> \times 4/6 {d32 cis b a g fis}
  <g e>16.[ <a a,>32 <fis d>16. <a a,>32]                       | % 3
  <e cis>8 r <a fis>8.[ <g e>16]                                | % 4
  \stemUp
  <fis d>8[ <fis d>]  e16.[ dis32 e16. \appoggiatura g64 fis32] | % 5
  d8 r d' d                                                     | % 6
  d cis b[ a32 gis fis gis]                                     | % 7
 }
 \alternative { {a8 r} {a 4} }

 \partial 4
 a8..[ d32]                                                     | % 8
 d16.[ cis32 \appoggiatura cis64 b16. a32]  a8[ a]              | % 9
 b[ a] a8..[ d32]                                               | % 10
 d16.[ cis32 \appoggiatura cis64 b16. a32]  a8[ a]              | % 11
 b[ a a a]                                                      | % 12
 a16.[ gis32 g8]  fis16.[ g64 ( a)]  g16.[ fis32]               | % 13
 dis8[ ( e16)] r fis32([ e dis) e( g fis a g)]                  | % 14
 fis([ e dis e)( fis g gis a]  ais[ b)( fis a g) b,( fis' e)]   | % 15

 <d fis,>8 <cis e,> <a' fis> <a fis>                            | % 16
 <a fis>8.. <g e>32 <fis d>8 <e cis>                            | % 17
 <d fis,>8 r g b                                                | % 18
 <a d, fis,> \times 4/6 {d32 cis b a g fis}
 <g e>16[ r32 <a a,> <fis d>16  r32 <a a,>]                     | % 19
 <e cis>8 r <a, fis' a> <a fis' a>                              | % 20

 <a fis' a>8.. <g e' g>32
 <<
    { <d' fis>8 <cis e> } \\
    { \stemUp \shiftOn fis,16 a g\rest g }
 >>                                                             | % 21
 <b d>8 d'4 cis16 b                                             | % 22
 a8[ a16\rest fis] fis32([ e) g( fis) a( g e cis)]              | % 23

 \grace { <e g,>16 } <d fis,>8^\markup {Fine} r
 \once \override TextScript #'padding = #2.0
 a4^\markup {\bold Mineur}                                      | % 24
 f'8. e32 d cis16. d32 e16. cis32                               | % 25
 d8 r d f                                                       | % 26
 a8.. a32 bes8 d                                                | % 27
 <a a, f>4 a,8 d                                                | % 28

 f8. e32 d c8 <c bes>                                           | % 29
 c16 c( d e)
 \once \override Beam  #'positions = #'(6 . 6)
 f8[ d'16\rest fis,]                                            | % 30
 g8 f? f e16 d32 e                                              | % 31
 <f a,>8 r

 \repeat volta 2 {
  <f a> <f a>                                                   | % 32
  <g f> <g e> <f e> <f d>                                       | % 33
  <e d> <a cis,> a g                                            | % 34
  <g cis,> <f d> <e d> <e d>                                    | % 35
  <e cis> r

  a, d                                                          | % 36
  f8. e32 d cis16. d32 e16. cis32                               | % 37
  d8 r d32([^\trill cis d e )f fis g gis ]                      | % 38
  a8.. a32 bes8 d                                               | % 39
  a f\rest

  a, d                                                          | % 40
  f8 g32( f e d )cis8 cis                                       | % 41
  <c! a ees>4 <bes d,>8 <a d,>                                  | % 42
  << { gis4 } \\
     { \shiftOn \stemUp d8 e }
  >>
  <a f>8 <cis g e>                                              | % 43
  <d f, d>8^\markup {D.C. al fine} r
 }

}

bass =  \relative c' {
 \stemDown

 \repeat volta 2 {
  \partial 4
  \skip 4*9
  d4 <ais g' cis>                                               | % 5
  <b fis' b>8 \skip 8*1 b'8\rest <f a'>                         | % 6
  <e gis'>[ <a e'> <d, d' fis> <e b' d>]                        | % 7
 }
 \alternative { {<a, a' cis>8 \skip 8*1} {<a a' cis>16[ a' a a]} }
 \partial 4
 <fis' d>16[ a, <fis' d> a,]                                    | % 8
 <g' e>[ a, <g' e> a,] <e' cis>[ a, <g' cis,> a,]               | % 9
 <fis' d>[ a, <fis' d> a,] <fis' d>[ a, <fis' dis> a,]          | % 10
 <g' e>[ a, <g' e> a,] <e' cis>[ a, <g' cis,> a,]               | % 11
 <fis' d>[ a, <fis' d> a,] <fis' d>[ <fis d> <e cis> <e cis>]   | % 12
 <d b>[ <d b> <d b> <d b>] <cis a>[ <cis a> <c a> <c a>]        | % 13
 <b g>8. \skip 16*1 <b g>8 e,\rest                              | % 14
 <b' g>8 e,\rest e4\rest                                        | % 15

 a,4 r                                                          | % 16
 b16\rest d,-. fis-. a-. d-. fis-. a-. a,-.                     | % 17
 d8 d, <b'' d> <g d'>                                           | % 18
 \skip 4*4

 b,16\rest d, fis a d8 ais                                      | % 21
 <b fis'> b'\rest <gis d' f>4                                   | % 22
 <a d fis?>8 g\rest <a, g'>4                                    | % 23
 d,8 \skip 8*1

 a''8 d                                                         | % 24
 d,,16 <f' a> <f a> <f a> d, <g' bes> d, <g' bes>               | % 25
 d, <f' a> <eis gis> <f a> d,8 r                                | % 26
 << { \stemDown d4 } \\
    { a''16\rest <f a> d' <f, a> }
 >>
 << { \stemDown d,4 } \\
    { a''16\rest <g bes>[ a\rest <g bes>] }
 >>                                                             | % 27
 g,16\rest d( f a )d8 r                                         | % 28

 << { \stemDown d,4 e } \\
    { a'16\rest a bes8 f16\rest fis g8 }
 >>                                                             | % 29
 <f, a'> c'\rest
 << { \stemDown a4  } \\
    { b'16\rest <a c> <c ees>8 }
 >>                                                             | % 30
 << { \stemDown bes,8 b c <c g' bes> } \\
    { \stemUp bes16[ \stemDown <bes' d>]
      \stemUp b,[    \stemDown <aes' d>]
      \stemUp c,[    \stemDown <a' c>] }
 >>                                                             | % 31

 f8 f,

 \repeat volta 2 {
  f'16 g a bes                                                  | % 32
  c c, r cis d e f g                                            | % 33
  << { \stemDown a a, e'\rest a bes4 } \\
     { \shiftOn \stemUp s4
       \once \override Rest #'extra-offset = #'(1.5 . 0)
       f'16\rest
       d e[ d] }
  >>                                                            | % 34
  f,16\rest a bes a g8 gis                                      | % 35

  a a, \skip 4*1                                                | % 36
  d,16 <f' a> <f a> <f a> d, <g' bes> d, <g' bes>               | % 37
  d,16 <f' a> <f a> <f a> <f a> e\rest e8\rest                  | % 38
  << { \stemDown d,4 d } \\
     { b''16\rest <f a> d' <f, a> b\rest <g bes>[ b\rest <g bes>] }
  >>                                                            | % 39

  << { \stemDown d,16[ <f' a>] } \\
     { \stemUp d,8 }
  >>
  e'8\rest b4\rest                                              | % 40
  d,16 <f' a> <f a> <f a> a, <e' g> a, <e' g>                   | % 41
  fis,4 g8 a                                                    | % 42
  bes4  a8 a                                                    | % 43
  d,8 s
 }

}


\score {
 \context Staff = "guitar" <<
  \context Voice = "melody" { << \global \melody >> }
  \context Voice = "bass"   { << \global \bass   >> }
 >>
 \layout { }
 \midi { \tempo 4=30 }
}
