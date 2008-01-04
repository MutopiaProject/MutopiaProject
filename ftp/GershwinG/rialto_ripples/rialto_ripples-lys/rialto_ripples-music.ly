#(ly:set-option 'old-relative)
% rialto_ripples-music.ly
\version "2.10.10"

\header {
   title             = "Rialto Ripples"
   subtitle          = "Rag"
   composer          = "George Gershwin and Will Donaldson"
   arranger          = "arranged for 3 guitars by jeff covey"
   
   mutopiatitle      = "Rialto Ripples"
   mutopiacomposer   = "GershwinG"
   mutopiainstrument = "Guitar"
   date              = "1916"
   source            = "Manuscript"
   style             = "Jazz"
   copyright         = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer        = "jeff covey"
   maintainerEmail   = "jeff.covey@pobox.com"
   maintainerWeb     = "http://pobox.com/~jeff.covey/"
   lastupdated       = "2007/07/11"
 footer = "Mutopia-2008/01/04-1200"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global = {
   \set Staff.midiInstrument = "acoustic guitar (nylon)"
   \transposition c
   \clef "violin"
   {
      \time 2/2
      \skip 1*4  \bar "||"
      \skip 1*32 \bar "||" \key f \major
      \skip 1*16 \bar "||" \key a \minor
      \skip 1*16 \bar "||" \key f \major \mark "Trio"
      \skip 1*4  \bar "||"
      \skip 1*20 \bar "||" \key a \minor
      \skip 1*16 \bar "|."
   }
}

% {{{ guitar one music

guitaronemelody =  \relative c''' {
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4.
   r1
   \grace {
      \override Stem   #'stroke-style = #"grace"
      eis,,8(
      \revert Stem #'stroke-style
   }
   fis4) fis2 f4
   e2 <gis d e,>
   % 5
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> d8
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> d8
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> c8
   a8 r r4 r2
   % 9
   a,4 b c cis
   a   b c cis
   a   b c cis
   <d a'> <<d \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>> <<d4 \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>> <<d4 \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>>
   % 13
   <gis  b, e,>\arpeggio <e gis d'> b <e gis d'>
   <e e,> <e e,> <fis fis,> <gis gis,>
   <a c> <a c> <a c>8 <a c>4 <a c>8 ~
   <a c>2 ~ <a c>8 dis e fis
   % 17
   g4 g g8 fis4 b8 ~
   b4 b,,8 ais b c b a
   gis4 e e2
   \grace {
      \override Stem   #'stroke-style = #"grace"
      c'16[ ( d dis]
      \revert Stem #'stroke-style
   }
   e8)-. f-. e-. d!-. c4-. b-.
   % 21
   e4 fis g gis
   e   fis g gis
   e   fis g gis
   <a g cis,>8 r <cis g e a,>4 <cis g e a,>2->
   % 25
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <f a d>2 ~ <f a d>8 cis' <d f,> e
   % 29
   f4 f f8 e4 b'8 ~ b2 ~ b8 r r4
   <a,,  e' cis'>\arpeggio <a g' cis> <e e'> <a g' cis>
   <a a'> <a g' cis> <g g'> <a g' cis>
   % 33
   <d, d'>-> <e e'>-> r8 cis''' d dis
   <e c> <d b>4 <c a>8 ~ <c a> gis, a b
   <c fis>4 <c fis> <c gis'>8 <b gis'>4.
   <a e'>4 a,-> bes-> b->
   % 37
   <c f,> <f a,> <d f,> <f gis,>
   <e f,> <e c>  <f f,> <f a,>
   <g,  d' b'>\arpeggio <g d' b'> <c c'> <c e>
   <f f,> <f a,> r8 g' a bes
   % 41
   c4. d8 ~ d4 d
   d2 ~ d8 r r4
   bes8 d,4 <gis d'>8 ~ <gis d'> e <gis d'>4
   <a cis>2 <g, g,>4 <bes e, c>
   % 45
   <f f,> <f a,> <g g,> <e c>
   <a a,> <f c> <bes bes,> <d, bes>
   <a' a,> <fis d> <d d,> <fis d>
   <g g,> <g d bes> r8 cis d f
   % 49
   \grace {
      \override Stem   #'stroke-style = #"grace"
      b8(
      \revert Stem #'stroke-style
   }
   a4)-> g \grace {
      \override Stem   #'stroke-style = #"grace"
      b8(
      \revert Stem #'stroke-style
   }
   a4)-> g
   <a f>-> <a f> <a fis>-> <a fis>
   <d,, d,> <f b, g> <e e,> <bes'? e, c>
   <f f,> <dis dis,> <e e,>2->
   % 53
   <c' a e>2 ~ <c a e>8 <e b e,>4.->
   <c a e>2 ~ <c a e>8 <e b e,>4.->
   <c a e>2 ~ <c a e>8 <e b e,>4.->
   a,,8 r bes''4 bes-> a
   % 57
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> g8
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> g8
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> f8
   d2 ~ d8 r r4
   % 61
   <d gis,>4 <d gis,> <d gis,>8 <d gis,>4 <d gis>8 ~
   <d gis>2 ~ <d gis>8 g gis a
   bes4 bes bes8 a4 e'8 ~ e2 ~ e8 e, dis e
   % 65
   <f a> <e g>4 <d f>8 <f, f,>4-> <g g,>->
   <a a,>-> <b b,>-> r8 gis' a b
   c4 c c8 b4. a4 r r2
   % 69 (trio)
   g4 a bes8 d4. bes,,4 c d2 f4 f2-> f4 <f c>2 <c e c'>4-> r
   % 73
   <d' bes>8 fis, g a bes <c e>4 <bes d>8
   <a c>2. <ees a, fis>4 <g g,> <e c> c <e c> <f f,> <a a,> <b b,> <c c,>
   % 77
   <e g>8 cis d dis e a4 g8 f2 ~ f8 r <f, a,>4
   <a f b,>-> <g f b,> <a f b,>-> <g f b,>
   <a' f>-> <a f> <a ees>-> <a ees>
   % 81
   <d, bes>8 fis, g a bes <c e>4 <bes d>8
   <a c>2. <f a,>4 <f f,> <ees a, f> <f f,> <ees a, f>
   <f bes,> f, bes c
   % 85
   r8 bes' b c des g4 fis8 g f? des c bes2
   c, <c g> <c fis,>2. d,4
   % 89
   s1 s4 s s r8 a''
   d a d a d c4 f8 ~ f2 c4-> b
   % 93
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> d8
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> d8
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> c8
   a8 r r4 r2
   % 97
   a,4 b c cis
   a   b c cis
   a   b c cis
   <d a'> <<d \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>> <<d4 \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>> <<d4 \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>>
   % 101
   <gis  b, e,>\arpeggio <e gis d'> b <e gis d'>
   <e e,> <e e'> <dis dis'> <d d'>
   <cis' g'> <cis g'> <cis g'>8 <cis g'>4 <e g cis>8 ~
   <e g cis>2 ~ <e g cis>8 e' dis e
   % 105
   f e4 d8 ~ d cis, d dis
   e d4 c8 <c c,>4-> <d d,>->
   <dis dis,> <dis dis,> <e e,> <d e,>
   <c a> r
   \override NoteHead   #'style = #'diamond
   a'' r
}
guitaronebass =  \relative c {
   \stemDown
   s1 s s s s s s s
   % 9
   d1 d d d4 d d d
   % 13
   \skip 1*8
   % 21
   a'1 a a s
   % 25
   s s s d,
   % 29
   \skip 1*60
   % 89
   \stemNeutral
   <g g'>4 <c e> c <c e> <g g'> <c e> c \stemDown <c e>
   s1 s
   % 93
   s s s s
   d,1 d d d4 d d d
}

% }}}
% {{{ guitar two music

guitartwomelody =  \relative c'' {
   <a c e>2 <gis d' e>
   \stemUp
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4.
   \stemNeutral
   r1 r2 <gis, d e,>
   % 5
   <c a e>2 ~ <c a e>8 <e b e,>4.->
   <c a e>2 ~ <c a e>8 <e b e,>4.->
   <c a e>2 ~ <c a e>8 <e b e,>4.->
   a,,8 r bes''4 bes-> a
   % 9
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> g8
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> g8
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> f8
   d2 ~ d8 r r4
   % 13
   <d gis,>4 <d gis,> <d gis,>8 <d gis,>4 <d gis>8 ~
   <d gis>2 ~ <d gis>8 cis d e
   f4 f f8 e4 a8 ~ a2 ~ a8 r r4
   % 17
   <b, b,> <b dis, a> <b b,> <b dis, a>
   <fis fis,>4 b8 ais b c b a
   gis4 e e2
   \grace {
      \override Stem   #'stroke-style = #"grace"
      c'16[ ( d dis]
      \revert Stem #'stroke-style
   }
   e8)-. f-. e-. d!-. c4-. b-.
   % 21
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> d8
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> d8
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> c8
   a8 r r4 r2
   % 25
   a,4 b c cis
   a   b c cis
   a   b c cis
   <d a'> <<d \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>> <<d4 \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>> <<d4 \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>>
   % 29
   <e,  b' gis'>\arpeggio <e' gis> b <e gis d'>
   <e e,> <e e'> <dis dis'> <d d'>
   <cis' g'> <cis g'> <cis g'>8 <cis g'>4 <e g cis>8 ~
   <e g cis>2 ~ <e g cis>8 e' dis e
   % 33
   f e4 d8 ~ d cis, d dis
   e d4 c8 <c c,>4 <d d,>
   <dis dis,> <dis dis,> <e e,> <d e,>
   <c e, a,> \stemDown a-> \stemNeutral bes-> b->
   % 37
   a'8 c,4 gis'8 ~ gis b, gis'4
   g?8 bes,4 f'8 ~ f a, f'4
   g8 cis, d dis e c4 bes8
   a2 <c c,>4 <f, a,>
   % 41
   <f f,> <f a,> <aes aes,> <f aes,>
   <g g,> <e c> r8 a' bes c
   d4. e8 ~ e4 e
   <e e,>2 ~ <e e,>8 c, d e
   % 45
   <c' a> f,4 bes8 ~ bes e, bes'4
   a8 ees4 f8 ~ f d f4
   a8 d, e eis fis bes4 a8
   g2
   <d, d,>4 <g d bes>
   % 49
   <d' f>-> <d f> <d f>-> <d f>
   \grace {
      \override Stem   #'stroke-style = #"grace"
      e'8(
      \revert Stem #'stroke-style
   }
   d4)-> c \grace {
      \override Stem   #'stroke-style = #"grace"
      e8(
      \revert Stem #'stroke-style
   }
   d4)-> c
   r8 cis, d f a g e c
   <c a>2 <gis d>->
   % 53
   e4 fis g gis
   e   fis g gis
   e   fis g gis
   <a g cis,>8 r <cis g e a,>4 <cis g e a,>2->
   % 57
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <f a d>2 ~ <f a d>8 cis' <d f,> e
   % 61
   f4 f f8 e4 b'8 ~ b2 ~ b8 r r4
   <cis,  e, a,>\arpeggio <cis g e a,> <e, e,> <cis' g e a,>
   <a a,> <cis g a,> <g g,> <cis g a,>
   % 65
   <d, d,>-> <e e,>-> r8 cis'' d dis
   <e c> <d b>4 <c a>8 ~ <c a> gis, a b
   <c fis a>4 <c fis a> <c gis'>8 <b gis'>4. <a c e>4 r r2
   % 69 (trio)
   f'4 f <f bes>2 g,4 a bes8 d4. <d, b>4 <d b>2-> <d b>4 <c bes'>2 <c bes'>4-> r
   % 73
   r1 r4 <d'' c g>8 gis, a <d c>4 r8
   r1 r4 <d   c g>8 gis, a <d c>4 r8
   % 77
   r2 r8 f,4 e8 d2 ~ d8 cis d f
   \grace {
      \override Stem   #'stroke-style = #"grace"
      b8
      \revert Stem #'stroke-style
   }
   a4-> g \grace {
      \override Stem   #'stroke-style = #"grace"
      b8
      \revert Stem #'stroke-style
   }
   a4-> g
   <a, f c>-> <a f c> <a fis c>-> <a fis c>->
   % 81
   <g g,> <e c> c <e c>
   <f f,> <f a,> c r8 f'
   g8. f16 g8. f16 g8 f4 d8 ~ d2. r4
   % 85
   <des, g,>1 ~ <des g,>2. <des g,>4
   r8 f g gis a e'4 d8 e d c a fis4. r8
   % 89
   r2 r4 r8 a <bes d> fis g a bes <c e>4 r8
   <g g,>4 <e c> c <e c> <f f,> <dis dis,> <e e,>2->
   % 93
   <c' a e>2 ~ <c a e>8 <e b e,>4.->
   <c a e>2 ~ <c a e>8 <e b e,>4.->
   <c a e>2 ~ <c a e>8 <e b e,>4.->
   a,,8 r bes''4 bes-> a
   % 97
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> g8
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> g8
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> f8
   d2 ~ d8 r r4
   % 101
   <d gis,>4 <d gis,> <d gis,>8 <d gis,>4 <d gis>8 ~
   <d gis>2 ~ <d gis>8 g gis a
   bes4 bes bes8 a4 e'8 ~ e2 ~ e8 e, dis e
   % 105
   <f a> <e g>4 <d f>8 <f, f,>4-> <g g,>->
   <a a,>-> <b b,>-> r8 gis' a b
   c4 c c8 b4.
   a2\glissando a'4 r
}
guitartwobass =  \relative c' {
   \stemDown
   s1 e2 r
   \skip 1*22
   % 25
   d,1 d d d4 d d d
   \skip 1*24
   % 53
   a'1 a a s
   s s s d,
   \skip 1*44
   % 105
   s s s r2 a'4 s
}

% }}}
% {{{ guitar three music

guitarthreemelody =  \relative c' {
   r1 <a cis>2 <gis d' e>
   <dis' a' c>4 <dis a' c>2 <dis a' b>4
   \shiftOn
   e'1
   \shiftOff
   % 5
   e,4 fis g gis
   e   fis g gis
   e   fis g gis
   <a g cis,>8 r <cis g e a,>4 <cis g e a,>2->
   % 9
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <f a d>2 ~ <f a d>8 cis' <d f,> e
   % 13
   f4 f f8 e4 b'8 ~ b2 ~ b8 r r4
   <a, a,> <c a e> <e, e,> <c' a e>
   <a a,> <gis gis,> <a a,> <ais ais,>
   % 17
   <dis a> <dis a> <dis a>8 <dis a>4 <fis dis b>8 ~
   <fis dis b>4 b8 ais b c b a
   gis4 e e2 r1
   % 21
   <c a e>2 ~ <c a e>8 <e b e,>4.->
   <c a e>2 ~ <c a e>8 <e b e,>4.->
   <c a e>2 ~ <c a e>8 <e b e,>4.->
   a,,8 r bes''4 bes-> a
   % 25
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> g8
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> g8
   \times 2/3 {  f8[ g f] }  d8[ dis] e a4-> f8
   d2 ~ d8 r r4
   % 29
   <d gis,>4 <d gis,> <d gis,>8 <d gis,>4 <d gis>8 ~
   <d gis>2 ~ <d gis>8 g gis a
   bes4 bes bes8 a4 e'8 ~ e2 ~ e8 e, dis e
   % 33
   <a f> <g e>4 <f d>8 <f, f,>4-> <g g,>->
   <a a,>-> <b b,>-> r8 gis' a b
   <c a>4 <c a> c8 b4.
   a4 a-> bes-> b->
   % 37
   c4.   b8 ~ b4 b
   bes?4. a8 ~ a4 a
   g8 cis, d dis e a4 g8 f2 ~
   f8 g, a bes
   % 41
   a' c,4 b'8 ~ b d, b'4
   <bes e,>2 <c, c,>4 <e, c>
   <g g,> <e c> <e e,> <e b>
   <a, e' cis'> <a' cis e> <bes' c>8 c d e
   % 45
   f4. <e c>8 ~ <e c>4 <e c>
   <ees c>4. <d bes>8 ~ <d bes>4 <d bes>
   c8 d, e eis fis d'4 c8 bes2 ~ bes8 r r4
   % 49
   <b,, f' a>-> <b f' g> <b f' a>-> <b f' g>
   <c f a>-> <c f a> <c fis a>-> <c fis a>
   r8 cis' d f a g e c
   f2 c4 b
   % 53
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> d8
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> d8
   \times 2/3 {  c8[ d c] }  a8[ ais] b e4-> c8
   a8 r r4 r2
   % 57
   a,4 b c cis
   a   b c cis
   a   b c cis
   <d a'> <<d \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>> <<d4 \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>> <<d4 \grace {
      \override Stem   #'stroke-style = #"grace"
      gis8(
      \revert Stem #'stroke-style
   }
   a4)>>
   % 61
   <gis  b, e,>\arpeggio <e gis d'> b <e gis d'>
   <e e,> <e e'> <dis dis'> <d d'>
   <cis' g'> <cis g'> <cis g'>8 <cis g'>4 <e g cis>8 ~
   <e g cis>2 ~ <e g cis>8 e' dis e
   % 65
   f e4 d8 ~ d cis, d dis
   e d4 c8 <c c,>4-> <d d,>->
   <dis dis,> <dis dis,> <e e,> <d e,>
   <c  a e a,>\arpeggio r r2
   % 69 (trio)
   bes4 c d2
   f,4 f <f bes>2
   \grace {
      \override Stem   #'stroke-style = #"grace"
      a16[ d]
      \revert Stem #'stroke-style
   }
   a4 a2-> f4
   g2 c4-> r
   % 73
   <g g,> <e c> c <e c> <f f,> <f a,> <fis fis,> r8 a
   <bes d> fis g a bes <c e>4 <bes d>8 <a c>1
   % 77
   <cis cis,>4 <cis g a,> <a a,> <cis g a,>
   <d, d,> <f a,> a, r
   <f'' d>-> <f d> <f d>-> <f d>
   \grace {
      \override Stem   #'stroke-style = #"grace"
      e'8
      \revert Stem #'stroke-style
   }
   d4-> c \grace {
      \override Stem   #'stroke-style = #"grace"
      e8
      \revert Stem #'stroke-style
   }
   d4-> c
   % 81
   r1 r4 <d c g>8 gis, a <d c>4 r8
   <ees, a,>8. f16 <ees a,>8. f16 <ees a,>8 <ees a,>4 <d a>8 ~
   <d a>2. r4
   % 85
   <bes, f>1 ~ <bes f>2. <bes f>4 <a f>2 <a e> <a d,>2. r8 a'
   % 89
   <bes d> fis g a bes <c e>4 r8 r2 r4 r8 a
   bes a bes a a gis4 a8 ~ a2 <gis d>->
   % 93
   e4 fis g gis
   e   fis g gis
   e   fis g gis
   <a g cis,>8 r <cis g e a,>4 <cis g e a,>2->
   % 97
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <a d f>2 ~ <a d f>8 <a e' a>4.->
   <f a d>2 ~ <f a d>8 cis' <d f,> e
   % 101
   f4 f f8 e4 b'8 ~ b2 ~ b8 r r4
   <cis,  e, a,>\arpeggio <cis g e a,> <e, e,> <cis' g e a,>
   <a a,> <cis g a,> <g g,> <cis g a,>
   % 105
   <d, d,>-> <e e,>-> r8 cis'' d dis
   <e c> <d b>4 <c a>8 ~ <c a> gis, a b
   <c fis a>4 <c fis a> <c gis'>8 <b gis'>4.
   <a c e>4 r <a,  a' c e a>\arpeggio r
}
guitarthreebass =  \relative c' {
   \stemDown
   s1 s1 s1 <e a d>2 r
   % 5
   a,1 a a s
   s s s d,1
   \skip 1*40
   % 53
   s s s s
   d d d d4 d d d
   \skip 1*32
   % 93
   a'1 a a s
   s s s d,
}

% }}}

% {{{ staff settings

guitaroneStaff = \context Staff = "guitarone" <<
   \global
   \set Staff.instrumentName = "Guitar 1, 6=D"
   \context Voice = "guitaronemelody" \guitaronemelody
   \context Voice = "guitaronebass"   \guitaronebass
>>
guitartwoStaff = \context Staff = "guitartwo" <<
   \global
   \set Staff.instrumentName = "Guitar 2, 6=D"
   \context Voice = "guitartwomelody" \guitartwomelody
   \context Voice = "guitartwobass"   \guitartwobass
>>
guitarthreeStaff = \context Staff = "guitarthree" <<
   \global
   \set Staff.instrumentName = "Guitar 3, 6=D"
   \context Voice = "guitarthreemelody" \guitarthreemelody
   \context Voice = "guitarthreebass"   \guitarthreebass
>>

% }}}

