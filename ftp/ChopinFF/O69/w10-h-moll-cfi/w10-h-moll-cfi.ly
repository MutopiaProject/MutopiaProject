\version "2.16.1"

\header{
  filename      =       "w10-h-moll-cfi.ly"
  title         =       "Walzer Nr. 10 h-moll"
  composer      =       "Frédéric Chopin (1810 - 1849)"
  opus          =       "Opus 69 Nr. 2 (posth.)"

 mutopiatitle = "Walzer h-moll"
 mutopiacomposer = "ChopinFF"
 mutopiaopus = "Op. 69, No. 2"
 mutopiainstrument = "Piano"
 date = "1829-1835"
 source = "Peters, Herrmann Scholtz, 1900a"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Roland Goretzki"
 maintainerEmail = "roland@roland-goretzki.de"

 footer = "Mutopia-2013/03/23-511"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\include "deutsch.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %

%%%   Für den Pedalwechsel des normalen Pedals:
PH = \sustainOff
PR = \sustainOn

rf = #(make-dynamic-script "rf")

%%%   Kürzel für Dynamikanweisungen:

mCresc = \markup { \italic cresc. }
dimin = \markup { \italic dimin. }
dim = \markup { \italic dim. }
rit = \markup { \italic rit. }
atempo = \markup { \italic { a tempo } }
conanima = \markup { \italic { con anima } }

%%%%%%%%%   Ende des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global =  {
  \key h \minor
  \time 3/4
  \partial 4
  s4 s2.*32
    \repeat volta 2 { s2.*31 }
     \alternative { { s2. } { s2. } }
  \bar "||"
  \key h \major
  s2.*32
  \key h \minor
  \bar "||"
  s2.*48
  \bar "|."
}

rechts =  \context Staff \relative c'{
  \tempo "Moderato" 4 = 152
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \override Score.TextScript #'font-shape = #'italic
  \set Score.alternativeNumberingStyle = #'numbers
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fis'4->
-4 %FINGER
  ( ~
%_______________________________________________________________ Auftakt __ >
  fis8 \p g fis cis d  h
-1 %FINGER
%_______________________________________________________________ Takt  1 __ >
  ais2
-2 %FINGER
  )
  fis'4->
-4 %FINGER
  ( ~
%_______________________________________________________________ Takt  2 __ >
  fis8 g fis cis e d
%_______________________________________________________________ Takt  3 __ >
  h2 )  
  fis'4->
-2 %FINGER
  ( ~
%_______________________________________________________________ Takt  4 __ >
   fis8 \< g eis fis h d \!
%_______________________________________________________________ Takt  5 __ >
    d4-. ) \rf
   eis, (  d'->) ~
%_______________________________________________________________ Takt  6 __ >
  d e,! (  cis'->
-4 %FINGER
  ~
%_______________________________________________________________ Takt  7 __ >
   cis8 \> h ais  g
-1 %FINGER
   fis
-4 %FINGER
  )  cis
-2 %FINGER
  \!
  (
%_______________________________________________________________ Takt  8 __ >
   d
-1 %FINGER
  \p  g
-5 %FINGER
  fis  cis
-2 %FINGER
  d  h
-1 %FINGER
%_______________________________________________________________ Takt  9 __ >
  ais2
-2 %FINGER
  )
   fis'4
-4 %FINGER
  -> ( ~
%_______________________________________________________________ Takt 10 __ >
  fis8 g fis cis e d
%_______________________________________________________________ Takt 11 __ >
  h2 )
  fis'4
-1 %FINGER
  -> ( ~
%_______________________________________________________________ Takt 12 __ >
   fis8-\mCresc fis' cis
-3 %FINGER
   d
-4 %FINGER
   ais
-2 %FINGER
    h
-1 %FINGER
  )
%_______________________________________________________________ Takt 13 __ >
   a!
-4 %FINGER
  ( g
  \override TextSpanner #'(bound-details left text) = "poco rit."
  \override TextSpanner #'(bound-details right text) = \atempo
  h,
-1 %FINGER
  \startTextSpan cis d  e
-1 %FINGER
  )
%_______________________________________________________________ Takt 14 __ >
   g
-5 %FINGER
  ( fis  h,
-1 %FINGER
  -\dim
  d
-4 %FINGER
  cis fis,
%_______________________________________________________________ Takt 15 __ >
  h
  ) \stopTextSpan
-4 %FINGER
  
  eis,
-1 %FINGER
  ( \>
  fis ais
-4 %FINGER
  h
-1 %FINGER
  cis ) \!
%_______________________________________________________________ Takt 16 __ >
  d \p ( g fis cis
-2 %FINGER
  d  h
-1 %FINGER
%_______________________________________________________________ Takt 17 __ >
  ais2 )
-2 %FINGER
   fis'4
-4 %FINGER
  -> ( ~
%_______________________________________________________________ Takt 18 __ >
  fis8 g fis cis e d
%_______________________________________________________________ Takt 19 __ >
  h2 ) 
  fis'4
-2 %FINGER
  -> ( ~
%_______________________________________________________________ Takt 20 __ >
   fis8 \< g eis fis h d \!
%_______________________________________________________________ Takt 21 __ >
    d4-. \rf )
   eis, (  d'-> ) ~
%_______________________________________________________________ Takt 22 __ >
  d e,! (  cis'
-4 %FINGER
  -> ~
%_______________________________________________________________ Takt 23 __ >
  cis8 \> h
  ais  g
-1 %FINGER
  fis
-4 %FINGER
  ) (  cis
-2 %FINGER
  \! )
%_______________________________________________________________ Takt 24 __ >
  d ( \p
-1 %FINGER
  g
-5 %FINGER
  fis cis
-2 %FINGER
  d h
-1 %FINGER
 
%_______________________________________________________________ Takt 25 __ >
  ais2 )
-2 %FINGER
   fis'4
-4 %FINGER
  -> ( ~
%_______________________________________________________________ Takt 26 __ >
  fis8 g fis cis e d
%_______________________________________________________________ Takt 27 __ >
  h2 )
    
  fis'4-> (
-1 %FINGER
  -\mCresc
%_______________________________________________________________ Takt 28 __ >
   fis'8
-5 %FINGER
  cis
-2 %FINGER
  d  ais
-1 %FINGER
   h
-5 %FINGER
    fis
-2 %FINGER
   )
%_______________________________________________________________ Takt 29 __ >
  a! (
-4 %FINGER
  g  h,\startTextSpan
  cis e  g
-5 %FINGER
   )
%_______________________________________________________________ Takt 30 __ >
  g
-4 %FINGER
  (
  fis  h,
-1 %FINGER
  -\dim
   d
-4 %FINGER
  cis fis,
%_______________________________________________________________ Takt 31 __ >
  h4. )
-3 %FINGER
    fis8\stopTextSpan ( [
   h
_4 %FINGER
   b
_3 %FINGER
   ) ]
%_______________________________________________________________ Takt 32 __ >
   b4._2^\conanima^^ (
   a8 [ \< cis e \! ] )
%_______________________________________________________________ Takt 33 __ > % (65)
    g4.
-5 %FINGER
  \> ( fis8 [  cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%_______________________________________________________________ Takt 34 __ > % (66)
   fis4.
-4 %FINGER
   ( e8 [ h cis ] )
%_______________________________________________________________ Takt 35 __ > % (67)
   e4.
-4 %FINGER
  ( d8 [ cis
  h
-1 %FINGER
  ] )
%_______________________________________________________________ Takt 36 __ > % (68)
  h4.
-2 %FINGER
  (  a8 [ \< cis e ] ) \!
%_______________________________________________________________ Takt 37 __ > % (69)
    g4.
-5 %FINGER
  \> ( fis8 [
   cis
-2 %FINGER
  d
-1 %FINGER
  ] ) \!
%_______________________________________________________________ Takt 38 __ > % (70)
   fis4.
-4 %FINGER
  ( e8 [
   h
-1 %FINGER
  cis
-3 %FINGER
  ] )
%_______________________________________________________________ Takt 39 __ > % (71)
  <<
  {
   ais4.
^2 %FINGER
  ^\rit
  (
  cis8
^4 %FINGER
  [
  g
^1 %FINGER
  cis
^5 %FINGER
  ] )
  } \\ {
  s4 s
  g
  } >>
%_______________________________________________________________ Takt 40 __ > % (72)
   fis4.
-2 %FINGER
  ^\atempo (
    ais8
-3 %FINGER
   \< [  cis
-4 %FINGER
   e
-1 %FINGER
   \! ] )
%_______________________________________________________________ Takt 41 __ > % (73)
    g4.
-5 %FINGER
  \> ( fis8 [  cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%_______________________________________________________________ Takt 42 __ > % (74)
   fis4.
-4 %FINGER
   ( e8 [ h cis ] )
%_______________________________________________________________ Takt 43 __ > % (75)
   e4.
-4 %FINGER
  ( d8 [ cis
  h
-1 %FINGER
  ] )
%_______________________________________________________________ Takt 44 __ > % (76)
  h4.
-2 %FINGER
  (  a8 [ \< cis e \! ] )
%_______________________________________________________________ Takt 45 __ > % (77)
    g4.
-5 %FINGER
  \> ( fis8 [  cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%_______________________________________________________________ Takt 46 __ > % (78)
  fis4.
-3 %FINGER
  -^ ( e8 [  fis'
-5 %FINGER
   \f e ]
%_______________________________________________________________ Takt 47 __ > % (79)
  d cis  c
-1 %FINGER
  h
-3 %FINGER
  ais a ) %TODO
%_______________________________________________________________ Takt 48 __ > % (80)
    gis ( \>
-2 %FINGER
  g fis
-4 %FINGER
  cis
-2 %FINGER
  d h
-1 %FINGER
%_______________________________________________________________ Takt 49 __ > % (81)
  ais4 \!
-2 %FINGER
  ) r   a'!
-5 %FINGER
  \sf (
%_______________________________________________________________ Takt 50 __ > % (82)
   gis8
-4 %FINGER
   g
-5 %FINGER
  fis
-4 %FINGER
  cis
-2 %FINGER
  e d
%_______________________________________________________________ Takt 51 __ > % (83)
  h4 ) r 
   a'
-5 %FINGER
  \sf (
%_______________________________________________________________ Takt 52 __ > % (84)
    gis8
-4 %FINGER
  \<  g
-3 %FINGER
   eis
-1 %FINGER
  fis h  d
-5 %FINGER
%_______________________________________________________________ Takt 53 __ > % (85)
   d4-. \! )
   eis, (  d'-> ) ~
%_______________________________________________________________ Takt 54 __ > % (86)
  d 
  e,! \( (
     cis'->
-4 %FINGER
  ) (
%_______________________________________________________________ Takt 55 __ > % (87)
  c8 )
-5 %FINGER
  h ais
  a
-1 %FINGER
  \> gis
-4 %FINGER
  g
%_______________________________________________________________ Takt 56 __ > % (88)
  fis f e
-4 %FINGER
  d cis h
-1 %FINGER
  \!
%_______________________________________________________________ Takt 57 __ > % (89)
  ais2
-2 %FINGER
  \)  g'4
-5 %FINGER
  -> (
%_______________________________________________________________ Takt 58 __ > % (90)
  fis8 g fis cis
-2 %FINGER
  e d
%_______________________________________________________________ Takt 59 __ > % (91)
  
  h2 )  fis'4 (
-1 %FINGER
  ->
%_______________________________________________________________ Takt 60 __ > % (92)
   fis'8
-5 %FINGER
  \f cis
-2 %FINGER
   d
-3 %FINGER
   ais
-1 %FINGER
   h
-5 %FINGER
   fis
-2 %FINGER
  )
%_______________________________________________________________ Takt 61 __ > % (93)
  \override TextSpanner #'(bound-details right text) = ##f
     a!
-4 %FINGER
  ( g \startTextSpan
   h, cis e  g
-5 %FINGER
   )
%_______________________________________________________________ Takt 62 __ > % (94)
    g (
-4 %FINGER
  -\dim
  fis h,
-1 %FINGER
  d
-4 %FINGER
  cis fis,\stopTextSpan
%_______________________________________________________________ Takt 63 __ > % (95)
  h4.
-3 %FINGER
  )  fis8^\atempo ( [  h
-4 %FINGER
  
  b ) ]
%_______________________________________________________________ Takt 64 __ > % (96)
  h4 \repeatTie
-3 %FINGER
  r 
  fis^\atempo (
%_______________________________________________________________ Takt 64 __ > % (96) % alternativ
   dis'8
-3 %FINGER
  \mf  e-\markup { dolce }
  dis cis dis  e
-1 %FINGER
  )
%_______________________________________________________________ Takt 65 __ > % (97)
     gis2
-3 %FINGER
  ( \> fis4) \!
%_______________________________________________________________ Takt 66 __ > % (98)
  dis8
-1 %FINGER
  (   e
-4 %FINGER
  dis cis dis  e
-1 %FINGER
  )
%_______________________________________________________________ Takt 67 __ > % (99)
    gis2 ( \> fis4
-2 %FINGER
  ) \!
%_______________________________________________________________ Takt 68 __ > % (100)
  
  fis
-1 %FINGER
  ( dis'8.-.
-5 %FINGER
  ) dis16-.
-4 %FINGER
  dis4->
-5 %FINGER
%_______________________________________________________________ Takt 69 __ > % (101)
  
  cis
-4 %FINGER
  ( e,8.-.
-1 %FINGER
  ) e16-.
-2 %FINGER
  e4->
-3 %FINGER
%_______________________________________________________________ Takt 70 __ > % (102)
  
  dis
-2 %FINGER
  ( h'8.-.
-5 %FINGER
  ) h16-.
-4 %FINGER
  h4->
-5 %FINGER
%_______________________________________________________________ Takt 71 __ > % (103)
  
   ais
-4 %FINGER
  ( cis,8.-.
-1 %FINGER
  ) cis16-.
-2 %FINGER
  e4->
-4 %FINGER
%_______________________________________________________________ Takt 72 __ > % (104)
  dis8
-3 %FINGER
  ( e dis cis dis  e
-1 %FINGER
  )
%%_______________________________________________________________ Takt 73 __ > % (105)
     gis2
-3 %FINGER
  ( \> fis4) \!
%%_______________________________________________________________ Takt 74 __ > % (106)
  dis8
-1 %FINGER
  (   e
-4 %FINGER
  dis cis dis  e
-1 %FINGER
  )
%%_______________________________________________________________ Takt 75 __ > % (107)
     gis2
-3 %FINGER
  ( \> fis4) \!
%%_______________________________________________________________ Takt 76 __ > % (108)
  
   dis
-1 %FINGER
  -\markup { poco cresc. }
  ( h'8.-.
-5 %FINGER
  ) h16-.
-4 %FINGER
  h4
-5 %FINGER
  ->
%_______________________________________________________________ Takt 77 __ > % (109)
  
  ais
-4 %FINGER
  ( cis,8.-.
-1 %FINGER
  ) cis16-.
-3 %FINGER
  cis4->
-2 %FINGER
%_______________________________________________________________ Takt 78 __ > % (110)
  
  h
-1 %FINGER
  (
  gis'8.-.
-5 %FINGER
  )
  gis16-.
-4 %FINGER
  gis4
-5 %FINGER
  ->
%_______________________________________________________________ Takt 79 __ > % (111)
  
   fis (
-4 %FINGER
  -\dim
  ais,8.-.
-1 %FINGER
  )
  ais16-.
-2 %FINGER
  e'4
-5 %FINGER
  ->
%_______________________________________________________________ Takt 80 __ > % (112)
   <h dis>8
-2-4 %FINGER
  \mf ( <cis e> <h dis>
  <fis cis'> <h dis> <cis e> )
%_______________________________________________________________ Takt 81 __ > % (113)
   <ais gis'>2
-5 %FINGER
  ( \>  <ais fis'>4
-4 %FINGER
  \! )
%_______________________________________________________________ Takt 82 __ > % (114)
  <h dis >8
-2-4 %FINGER
  ( <cis e> <h dis>
  <fis cis'> <h dis> <cis e> )
%_______________________________________________________________ Takt 83 __ > % (115)
   <ais gis'>2
-5 %FINGER
  ( \>  <ais fis'>4
-4 %FINGER
  \! )
%_______________________________________________________________ Takt 84 __ > % (116)
   
  <dis fis>
-1-3 %FINGER
  (
  <fis dis'>8.-.
-2-5 %FINGER
  )
  <fis dis'>16-.
-1-5 %FINGER
  <fis dis'>4->
-2-5 %FINGER
%_______________________________________________________________ Takt 85 __ > % (117)
  
  <e cis'>
-1-4 %FINGER
  (
   <cis e>8.-.
-2-4 %FINGER
  )
  <cis e>16-.
-1-3 %FINGER
  <cis e>4->
-2-4 %FINGER
%_______________________________________________________________ Takt 86 __ > % (118)
   
  <h dis>
-1-3 %FINGER
  (
  <dis h'>8.-.
-2-5 %FINGER
  )
  <dis h'>16-.
-1-5 %FINGER
  <dis h'>4->
-2-5 %FINGER
%_______________________________________________________________ Takt 87 __ > % (119)
  
  <cis ais'>
-1-4 %FINGER
  (
   <ais cis>8.-.
-2-3 %FINGER
  )
  <ais cis>16-.
-2-4 %FINGER
  <cis e>4->
-3-5 %FINGER
%_______________________________________________________________ Takt 88 __ > % (120)
  <h d>8
-2-4 %FINGER
  \cresc ( <cis e> <h d> <fis cis'> <h d> <cis e> )
%_______________________________________________________________ Takt 89 __ > % (121)
   <ais g'>2->
-5 %FINGER
  ( <ais fis'>4 )
%_______________________________________________________________ Takt 90 __ > % (122)
  <h d>8
-2-4 %FINGER
  ( <cis e> <h d>
  <fis cis'> <h d> <cis e> )
%_______________________________________________________________ Takt 91 __ > % (123)
   <ais g'>2->
-5 %FINGER
  ( <ais fis'>4 )
%_______________________________________________________________ Takt 92 __ > % (124)
  \crescTextCresc
  \once\set crescendoText = "dimin."
  <d fis>
-3-5 %FINGER
  \< ( <fis, e'>8
-1-4 %FINGER
  ) [ r16 <fis e'>
-1-5 %FINGER
  ]( <h d>4
-2-4 %FINGER
  )
%_______________________________________________________________ Takt 93 __ > % (125)
  <h d>
-3-5 %FINGER
  ( <eis, cis'>8
-1-4 %FINGER
  ) [ r16
  \slurUp
  <eis~ cis'>(
-1-5 %FINGER
  ] <eis h'>4)
-1-4 %FINGER
  \!
  \crescHairpin
  \slurNeutral
%_______________________________________________________________ Takt 94 __ > % (126)
  \context Staff <<
    {ais4
-2-3 %FINGER
      \p  
      cis2
-5 %FINGER
      ( \sf ~ cis4 fis,4
-1 %FINGER
      ) }
     \\
    {fis2. ~ fis4 s }
  >>
%_______________________________________________________________ Takt 95 __ > % (127)
  fis'->
-4 %FINGER
  ~ (
%_______________________________________________________________ Takt 96 __ > % (128)
  fis8 \f g fis cis d  h
-1 %FINGER
%_______________________________________________________________ Takt 97 __ > % (129)
   ais2
-2 %FINGER
  )
   fis'4
-4 %FINGER
  -> ( ~
%_______________________________________________________________ Takt 18 __ > !! Takt 98 __ > % (130)
  fis8 g fis cis e d
%_______________________________________________________________ Takt 19 __ > !! Takt 99 __ > % (131)
  
  h2 ) (
  fis'4
-2 %FINGER
  -> ) ~
%_______________________________________________________________ Takt 20 __ > !! Takt 100 __ > % (132)
   fis8 ( \< g  eis
-1 %FINGER
  fis h  d
-5 %FINGER
%_______________________________________________________________ Takt 21 __ > !! Takt 101 __ > % (133)
   d4-. \! )
   eis, (  d'-> ) ~
%_______________________________________________________________ Takt 22 __ > !! Takt 102 __ > % (134)
  d 
  e,! \( (
     cis'->
-4 %FINGER
  ) ~
%_______________________________________________________________ Takt 23 __ > !! Takt 103 __ > % (135)
    cis8 \> h ais g
-1 %FINGER
  fis
-4 %FINGER
  \) cis
-2 %FINGER
  \! (
%_______________________________________________________________ Takt 24 __ > !! Takt 104 __ > % (136)
    d \p
-1 %FINGER
   g
-5 %FINGER
  fis  cis
-2 %FINGER
  d  h
-1 %FINGER
%_______________________________________________________________ Takt 25 __ > !! Takt 105 __ > % (137)
   ais2 ) (
-2 %FINGER
  fis'4 )
-4 %FINGER
  -> ~
%_______________________________________________________________ Takt 26 __ > !! Takt 106 __ > % (138)
  fis8 ( g fis cis e d
%_______________________________________________________________ Takt 27 __ > !! Takt 107 __ > % (139)
  h2 )
   
  fis'4-1-> ( ~
%_______________________________________________________________ Takt 28 __ > !! Takt 108 __ > % (140)
   fis8-\mCresc fis' cis
-3 %FINGER
  d
-4 %FINGER
   ais
-2 %FINGER
    h
-1 %FINGER
  )
%_______________________________________________________________ Takt 29 __ > !! Takt 109 __ > % (141)
  \override TextSpanner #'(bound-details right text) = \atempo
  a!
-4 %FINGER
  ( g
   h, \startTextSpan cis d  e
-4 %FINGER
   )
%_______________________________________________________________ Takt 30 __ > !! Takt 110 __ > % (142)
  g
-5 %FINGER
   (  fis-\dim h,
-1 %FINGER
   d
-4 %FINGER
   cis fis,
%_______________________________________________________________ Takt 31 __ > !! Takt 111 __ > % (143)
  h4. )
-3 %FINGER
    fis8 \stopTextSpan ( [
   h
_4 %FINGER
   b
_3 %FINGER
   ) ]
%%_______________________________________________________________ Takt 32 __ > !! Takt 112 __ > % (144)
   b4._2^\conanima^^ (
   a8 [ \< cis e \! ] )
%%_______________________________________________________________ Takt 33 __ > !! Takt 113 __ > % (145)
    g4.
-5 %FINGER
  \> ( fis8 [  cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%%_______________________________________________________________ Takt 34 __ > !! Takt 114 __ > % (146)
   fis4.
-4 %FINGER
   ( e8 [ h cis ] )
%%_______________________________________________________________ Takt 35 __ > !! Takt 115 __ > % (147)
   e4.
-4 %FINGER
  ( d8 [ cis
  h
-1 %FINGER
  ] )
%%_______________________________________________________________ Takt 36 __ > !! Takt 116 __ > % (148)
  h4.
-2 %FINGER
  (  a8 [ \< cis e ] ) \!
%%_______________________________________________________________ Takt 37 __ > !! Takt 117 __ > % (149)
    g4.
-5 %FINGER
  \> ( fis8 [
   cis
-2 %FINGER
  d
-1 %FINGER
  ] ) \!
%%_______________________________________________________________ Takt 38 __ > !! Takt 118 __ > % (150)
   fis4.
-4 %FINGER
  ( e8 [
   h
-1 %FINGER
  cis
-3 %FINGER
  ] )
%%_______________________________________________________________ Takt 39 __ > !! Takt 119 __ > % (151)
  <<
  {
   ais4.
^2 %FINGER
  ^\rit
  (
  cis8
^4 %FINGER
  [
  g
^1 %FINGER
  cis
^5 %FINGER
  ] )
  } \\ {
  s4 s
  g
  } >>
%%_______________________________________________________________ Takt 40 __ > !! Takt 120 __ > % (152)
   fis4.
-2 %FINGER
  ^\atempo (
    ais8
-3 %FINGER
   \< [  cis
-4 %FINGER
    e
-1 %FINGER
   \! ] )
%%_______________________________________________________________ Takt 41 __ > !! Takt 121 __ > % (153)
    g4.
-5 %FINGER
  \> ( fis8 [  cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%%_______________________________________________________________ Takt 42 __ > !! Takt 122 __ > % (154)
   fis4.
-4 %FINGER
  \> ( e8 [ h cis \! ] )
%_______________________________________________________________ Takt 43 __ > !! Takt 123 __ > % (155)
   e4.
-4 %FINGER
  \> ( d8 [ cis h
-1 %FINGER
  \! ] )
%_______________________________________________________________ Takt 44 __ > !! Takt 124 __ > % (156)
  h4.
-2 %FINGER
  ( a8 [ \< cis e \! ] )
%_______________________________________________________________ Takt 45 __ > !! Takt 125 __ > % (157)
    g4.
-5 %FINGER
  \> ( fis8 [  cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%_______________________________________________________________ Takt 46 __ > !! Takt 126 __ > % (158)
  
  fis4.
-3 %FINGER
  -^ ( e8 [   fis'
-5 %FINGER
   \f e ]
%_______________________________________________________________ Takt 47 __ > !! Takt 127 __ > % (159)
  d cis!  c
-1 %FINGER
  h
-3 %FINGER
   ais \> a
%_______________________________________________________________ Takt 48 __ > !! Takt 128 __ > % (160)
   gis
-2 %FINGER
  g fis
-4 %FINGER
  cis
-2 %FINGER
  d h
-1 %FINGER
  \!
%_______________________________________________________________ Takt 49 __ > !! Takt 129 __ > % (161)
  ais4
-2 %FINGER
  )
  
  r (   a'!
-5 %FINGER
  ) \sf
%%_______________________________________________________________ Takt 50 __ > !! Takt 130 __ > % (162)
  
   gis8 (
-4 %FINGER
   g
-5 %FINGER
  fis
-4 %FINGER
  cis
-2 %FINGER
  e d
%%_______________________________________________________________ Takt 51 __ > !! Takt 131 __ > % (163)
  h4 ) r 
   a'
-5 %FINGER
  \sf (
%%_______________________________________________________________ Takt 52 __ > !! Takt 132 __ > % (164)
    gis8
-4 %FINGER
  \<  g
-3 %FINGER
   eis
-1 %FINGER
  fis h  d
-5 %FINGER
%%_______________________________________________________________ Takt 53 __ > !! Takt 133 __ > % (165)
   d4-. \! )
   eis, (  d'-> ) ~
%%_______________________________________________________________ Takt 54 __ > !! Takt 134 __ > % (166)
  d 
  e,! \( (
     cis'->
-4 %FINGER
  ) (
%_______________________________________________________________ Takt 55 __ > !! Takt 135 __ > % (167)
  c8 )
-5 %FINGER
  h  ais-\rit
  a
-1 %FINGER
   gis
-4 %FINGER
  \> g
%_______________________________________________________________ Takt 56 __ > !! Takt 136 __ > % (168)
  fis f e
-4 %FINGER
  d cis h \! \)
%_______________________________________________________________ Takt 57 __ > !! Takt 137 __ > % (169)
  
  ais2 (
-2 %FINGER
   g'4
-5 %FINGER
  -> ) (
%_______________________________________________________________ Takt 58 __ > !! Takt 138 __ > % (170)
  fis8 g fis  cis
-2 %FINGER
  e d
%_______________________________________________________________ Takt 59 __ > !! Takt 139 __ > % (171)
  h2 )
    
  fis'4
-1 %FINGER
  -> (
%_______________________________________________________________ Takt 60 __ > !! Takt 140 __ > % (172)
    fis'8
-5 %FINGER
  \f cis
-2 %FINGER
   d
-3 %FINGER
   ais
-1 %FINGER
   h
-5 %FINGER
   fis
-2 %FINGER
  )
%_______________________________________________________________ Takt 61 __ > !! Takt 141 __ > % (173)
    a!
-4 %FINGER
  -\markup { calando \hspace #2.5 e \hspace #3 dimin. }
  ( g h, cis e  g
-5 %FINGER
   )
%_______________________________________________________________ Takt 62 __ > !! Takt 142 __ > % (174)
   g
-4 %FINGER
  ( fis h,
-1 %FINGER
  d
-4 %FINGER
  cis fis,
  h4 ) r r
%_______________________________________________________________ Takt 144 __ > % (176)
}

links =  \context Staff \relative c{
  \context Voice = "links"   r4
  %\pp
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  h <fis' h d> <fis h d>                                % Takt  1
  cis <fis cis' e> <fis cis' e>                         % Takt  2
  ais, <fis' cis' e> <fis ais e'>                       % Takt  3
  h, <fis' h d> <fis h d>                               % Takt  4
  h, <fis' h d> <fis h d>                               % Takt  5
  h, <gis' h d> <gis h d>                               % Takt  6
  h, <g'! h e> <g h e>                                  % Takt  7
  h, <fis' cis' e> <fis ais e'>                         % Takt  8
  h, <fis' h d> <fis h d>                               % Takt  9
  cis <fis cis' e> <fis cis' e>                         % Takt 10
  fis, <fis' ais e'> <fis cis' e>                       % Takt 11
  h, <fis' h d> <fis h d>                               % Takt 12
  d <fis h d> <fis h d>                                 % Takt 13
  e <h' cis g'> r                                       % Takt 14
  << { r4 <h d> <ais e'> } \\ { fis2. } >>              % Takt 15
  <h d>4 h, r                                           % Takt 16
  h <fis' h d> <fis h d>                                % Takt 17
  cis <fis cis' e> <fis cis' e>                         % Takt 18
  ais, <fis' cis' e> <fis ais e'>                       % Takt 19
  h, <fis' h d> <fis h d>                               % Takt 20
  h, <fis' h d> <fis h d>                               % Takt 21
  h, <gis' h d> <gis h d>                               % Takt 22
  h, <g'! h e> <g h e>                                  % Takt 23
  h, <fis' cis' e> <fis ais e'>                         % Takt 24
  h, <fis' h d> <fis h d>                               % Takt 25
  cis <fis cis' e> <fis cis' e>                         % Takt 26
  fis, <fis' ais e'> <fis cis' e>                       % Takt 27
  h, <fis' h d> <fis h d>                               % Takt 28
  d <fis h d> <fis h d>                                 % Takt 29
  e <g cis> r                                           % Takt 30
  << { r4 <h d> <ais e'> } \\ { fis2. } >>              % Takt 30
  h,4-. <fis' d'>-. d_4 (                               % Takt 32
  cis-. ) <g' a e'> <g a e'>                            % Takt 33 (65)
  d <fis a d> <fis a d>                                 % Takt 34 (66)
  a, <a' cis g'> <a e' g>                               % Takt 35 (67)
  d, <a' d fis> <a d fis>                               % Takt 36 (68)
  cis, <a' e' g> <a e' g>                               % Takt 37 (69)
  d, <a' d fis> <a d fis>                               % Takt 38 (70)
  g, <g' h e> <g h e>                                   % Takt 39 (71)
  <fis, fis'> <fis' cis' e> <fis h e>                   % Takt 40 (72)
  <fis, fis'> <fis' cis' e> <fis ais e'>                % Takt 41 (73)
  h, <fis' h d> <fis h d>                               % Takt 42 (74)
  a, <a' cis g'> <a e' g>                               % Takt 43 (75)
  d, <a' d fis> <a d fis>                               % Takt 44 (76)
  cis, <a' e' g> <a e' g>                               % Takt 45 (77)
  d, <a' d fis> <a d fis>                               % Takt 46 (78)
  g, <g' e'> r                                          % Takt 47 (79)
  fis, <fis' e'> ais,                                   % Takt 48 (80)
  h <fis' d'> <fis d'>                                  % Takt 49 (81)
  cis <fis cis' e> <fis cis' e>                         % Takt 50 (82)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 51 (83)
  h, <fis' h d> <fis h d>                               % Takt 52 (84)
  h, <fis' h d> <fis h d>                               % Takt 53 (85)
  h, <gis' h d> <gis h d>                               % Takt 54 (86)
  h, <g'! h e> <g h e>                                  % Takt 55 (87)
  h, <fis' ais e'> <fis ais e'>                         % Takt 56 (88)
  h, <fis' h d> <fis h d>                               % Takt 57 (89)
  cis <fis cis' e> <fis cis' e>                         % Takt 58 (90)
  ais, <fis' ais e'> <fis cis' e>                       % Takt 59 (91)
  h, <fis' h d> <fis h d>                               % Takt 60 (92)
  d <fis h d> <fis h d>                                 % Takt 61 (93)
  e <g cis> r                                           % Takt 62 (94)
  << { r4 <h d> <ais e'> } \\ { fis2. } >>              % Takt 63 (95)
  h,4 <fis' d'>
  d_4 (                                                 % Takt 64 (96)
  <h' d>4 ) h, r                                        % Takt 64 (96) % alternativ
  h <fis' h dis> <fis h dis>                            % Takt 65 (97)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 66 (98)
  h, <fis' h dis> <fis h dis>                           % Takt 67 (99)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 68 (100)
  h, <fis' h dis> <fis h dis>                           % Takt 69 (101)
  fis, <fis' ais e'> <fis ais e'>                       % Takt 70 (102)
  h, <fis' h dis> <fis h dis>                           % Takt 71 (103)
  fis, <fis' ais e'> <fis ais e'>                       % Takt 72 (104)
  h, <fis' h dis> <fis h dis>                           % Takt 73 (105)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 74 (106)
  h, <fis' h dis> <fis h dis>                           % Takt 75 (107)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 76 (108)
  h, <fis' h dis> <gis h dis>                           % Takt 77 (109)
  cis, <ais' cis fis> <ais cis fis>                     % Takt 78 (110)
  cis, <gis' cis eis> <gis cis eis>                     % Takt 79 (111)
  fis, <fis' cis' e!> <fis cis' e>                      % Takt 80 (112)
  h, <fis' h dis> <fis h dis>                           % Takt 81 (113)
  fis, <fis' cis' e> <fis cis' e>                       % Takt 82 (114)
  h, <fis' h dis> <fis h dis>                           % Takt 83 (115)
  fis, <fis' cis' e> <fis cis' e>                       % Takt 84 (116)
  h, <fis' h dis> <fis h dis>                           % Takt 85 (117)
  fis, <fis' ais e'> <fis ais e'>                       % Takt 86 (118)
  h, <fis' h dis> <fis h dis>                           % Takt 87 (119)
  fis, <fis' cis' e> <fis cis' e>                       % Takt 88 (120)
  h, <fis' h d> <fis h d>                               % Takt 89 (121)
  fis, <fis' cis' e> <fis cis' e>                       % Takt 90 (122)
  h, <fis' h d> <fis h d>                               % Takt 91 (123)
  fis, <fis' cis' e> <fis cis' e>                       % Takt 92 (124)
  h, <fis' h d> h,                                      % Takt 93 (125)
  g <cis eis h'> <cis eis h'>                           % Takt 94 (126)
  fis, <cis' fis ais> <cis fis ais>                     % Takt 95 (127)
  fis, <fis' ais e'!> <fis ais e'>                      % Takt 96 (128)
  h,, <fis'' h d> <fis h d>                             % Takt 97 (129)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%  Die Einfügung vom Anfang:  %%%%%%%%%%%%%%%%%%%%%%%%
  cis <fis cis' e> <fis cis' e>                         % Takt 18 % Takt 98 (130)
  ais, <fis' cis' e> <fis ais e'>                       % Takt 19 % Takt 99 (131)
  h, <fis' h d> <fis h d>                               % Takt 20 % Takt 100 (132)
  h, <fis' h d> <fis h d>                               % Takt 21 % Takt 101 (133)
  h, <gis' h d> <gis h d>                               % Takt 22 % Takt 102 (134)
  h, <g'! h e> <g h e>                                  % Takt 23 % Takt 103 (135)
  h, <fis' cis' e> <fis ais e'>                         % Takt 24 % Takt 104 (136)
  h, <fis' h d> <fis h d>                               % Takt 25 % Takt 105 (137)
  cis <fis cis' e> <fis cis' e>                         % Takt 26 % Takt 106 (138)
  fis, <fis' ais e'> <fis cis' e>                       % Takt 27 % Takt 107 (139)
  h, <fis' h d> <fis h d>                               % Takt 28 % Takt 108 (140)
  d <fis h d> <fis h d>                                 % Takt 29 % Takt 109 (141)
  e <h' cis g'> r                                       % Takt 30 % Takt 110 (142)
  << { r4 <h d> <ais e'> } \\ { fis2. } >>              % Takt 30 % Takt 111 (143)
  h,4-.  <fis' d'>-. ( d )                              % Takt 32 % Takt 112 (144)
  cis-. ( <g' a e'> ) <g a e'>                          % Takt 33 (65) % Takt 113 (145)
  d <fis a d> <fis a d>                                 % Takt 34 (66) % Takt 114 (146)
  a, <a' cis g'> <a e' g>                               % Takt 35 (67) % Takt 115 (147)
  d, <a' d fis> <a d fis>                               % Takt 36 (68) % Takt 116 (148)
  cis, <a' e' g> <a e' g>                               % Takt 37 (69) % Takt 117 (149)
  d, <a' d fis> <a d fis>                               % Takt 38 (70) % Takt 118 (150)
  g, <g' h e> <g h e>                                   % Takt 39 (71) % Takt 119 (151)
  <fis, fis'> <fis' cis' e> <fis h e>                   % Takt 40 (72) % Takt 120 (152)
  <fis, fis'> <fis' cis' e> <fis ais e'>                % Takt 41 (73) % Takt 121 (153)
  h, <fis' h d> <fis h d>                               % Takt 42 (74) % Takt 122 (154)
  a, <a' cis g'> <a e' g>                               % Takt 43 (75) % Takt 123 (155)
  d, <a' d fis> <a d fis>                               % Takt 44 (76) % Takt 124 (156)
  cis, <a' e' g> <a e' g>                               % Takt 45 (77) % Takt 125 (157)
  d, <a' d fis> <a d fis>                               % Takt 46 (78) % Takt 126 (158)
  g, <g' e'> r                                          % Takt 47 (79) % Takt 127 (159)
  fis, <fis' e'> ais,                                   % Takt 48 (80) % Takt 128 (160)
  h <fis' d'> <fis d'>                                  % Takt 49 (81) % Takt 129 (161)
  cis <fis cis' e> <fis cis' e>                         % Takt 50 (82) % Takt 130 (162)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 51 (83) % Takt 131 (163)
  h, <fis' h d> <fis h d>                               % Takt 52 (84) % Takt 132 (164)
  h, <fis' h d> <fis h d>                               % Takt 53 (85) % Takt 133 (165)
  h, <gis' h d> <gis h d>                               % Takt 54 (86) % Takt 134 (166)
  h, <g'! h e> <g h e>                                  % Takt 55 (87) % Takt 135 (167)
  h, <fis' ais e'> <fis ais e'>                         % Takt 56 (88) % Takt 136 (168)
  h, <fis' h d> <fis h d>                               % Takt 57 (89) % Takt 137 (169)
  cis <fis cis' e> <fis cis' e>                         % Takt 58 (90) % Takt 138 (170)
  ais, <fis' ais e'> <fis cis' e>                       % Takt 59 (91) % Takt 139 (171)
  h, <fis' h d> <fis h d>                               % Takt 60 (92) % Takt 140 (172)
  d <fis h d> <fis h d>                                 % Takt 61 (93) % Takt 141 (173)
  e <g cis> r                                           % Takt 62 (94) % Takt 142 (174)
  << { r4 <h d> <ais e'> } \\ { fis2. } >>              % Takt 63 (95) % Takt 143 (175)
  <h d>4 h, r                                           % Takt 144 (176)
}

pedal =  \context Staff \relative c,{
  \context Voice = "pedal"
  s4                    % Auftakt
  \set Staff.pedalSustainStyle = #'mixed
  s4\PR s s \PH         % Takt  1
  \set Staff.pedalSustainStyle = #'bracket
  \repeat unfold 13 {s \PR s s \PH}         % Takt  2 - 14
  s s s                 % Takt 15
  s s s                 % Takt 16
  \repeat unfold 14 {s \PR s s \PH}         % Takt 17 - 30
  s s s                 % Takt 31
  s s s                 % Takt 32
  \repeat unfold 30 {s \PR s s \PH}         % Takt 33 - 62
  s s s                 % Takt 63
  s s s                 % Takt 64
  s s s                 % Takt 64 % alternativ
  \repeat unfold 46 {s \PR s s \PH}         % Takt 65 - 110
  s s s                 % Takt 111
  s s s                 % Takt 112
  \repeat unfold 30 {s \PR s s \PH}         % Takt 113 - 142
}

\score{
  \context PianoStaff
  <<
    \set GrandStaff.instrumentName = \markup { \large 10. }
    \context Staff = "up" <<
      \global
      \rechts
    >>
    \context Staff = "down" <<
      \global
      \clef bass
      \links
% Für eine passable midi-Ausgabe muß man zu Beginn
% der linken Hand ein pianissimo setzen.
      \pedal
    >>
  >>
  \layout{ }
  
  \midi { }


}
