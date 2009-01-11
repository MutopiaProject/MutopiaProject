\version "2.10.20"
\include "definitions.ly"

%Include line and page breaks as per original score for the score only.
%The tags will remove the breaks from the instrumental parts.
mBreak = { \tag #'score \break }
nBreak = { \tag #'score \noBreak }
turnPage = { \tag #'score \pageBreak }
noTurnPage = { \tag #'score \noPageBreak }

global = {}

\header {
  title = \markup \center-align { "Brandenburg Concerto No. 1" }
  subtitle = \markup \center-align { "I - Allegro"}
  composer = \markup { "Johann Sebastian Bach" }
  mutopiatitle = "Brandenburg Concerto No. 1 (First Movement - Allegro)"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1046"
  mutopiainstrument = "Ensemble: Corno, Oboe, Fagotto, Violino piccolo, Violino, Viola, Violoncello, Violone grosso, Continuo"
  date = "1717-1723?"
  source = "Rust, 1871. Bach Gesellschaft Volume 19"
  style = "Baroque"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Ben Stewart"
  maintainerEmail = "benjamin.james.stewart@gmail.com"
 footer = "Mutopia-2008/10/09-1136"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
  }

%Formatting parameters.
\paper {
	between-system-space = 0.5\cm
	between-system-padding = #0.5
	%annotate-spacing = ##t
	page-top-space = #1.5
	head-separation = #1.5
	foot-separation = #1.5
	bottom-margin = #2
	top-margin = #2
	%#( set-paper-size "a4" )
	}

CornoOneNotes = \new Voice { \relative c'' {
  \clef treble
  \key c \major  
  \time 4/4
  \transposition f
  
  %Bars 1-4
  %{ Bar 1 %} R1 | \nBreak
  %{ Bar 2 %} r8 g c e g d d16 (g,) d'8 | \nBreak
  %{ Bar 3 %} \times 2/3 {d8 (d d)} d8. (g16) r2 | \nBreak
  %{ Bar 4 %} R1 |  
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} R1 | \nBreak
  %{ Bar 6 %} R1 | \nBreak
  %{ Bar 7 %} R1 | \nBreak
  %{ Bar 8 %} r2 r8 g,8 \times 2/3 { g8 (g g) } | \nBreak
  %{ Bar 9 %} \times 2/3 { g (c, g') } \times 2/3 { g (g g) } g8. (c16) r4 |
  \mBreak

  %Bars 10 -13
  %{ Bar 10 %} R1 | \nBreak
  %{ Bar 11 %} R1 | \nBreak
  %{ Bar 12 %} r8 g8 \times 2/3 { c (c c) } \times 2/3 { c (g c) } \times 2/3 { g (e g=') } | \nBreak
  %{ Bar 13 %}  e8 g'16 f g f g f e f g a f e f d='' | 
  \mBreak 

  %Bars 14-17
  %{ Bar 14 %}  e8 g, c d\trill e16 f e f g f e f='' | \nBreak
  %{ Bar 15 %} d=''4 r4 r2 | \nBreak
  %{ Bar 16 %} r8 d16 c d e f d e d e d e fis g e='' | \nBreak
  %{ Bar 17 %} fis e fis e fis g a fis g8. a16 fis8. g=''16 | 
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} g=''4 r4 r2 | \nBreak
  %{ Bar 19 %} R1 | \nBreak
  %{ Bar 20 %} r8 c,8 d e f g16 a g f e d='' | \nBreak
  %{ Bar 21 %} e=''4 r4 r2 | 
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} R1 | \nBreak
  %{ Bar 23 %} R1 | \nBreak
  %{ Bar 24 %} r8 a16 g a bes a g f8 g16 f g a g f='' | \nBreak
  %{ Bar 25 %} e=''4 r4 r2 | \nBreak
  %{ Bar 26 %} R1 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r8 e,16 (e) e (e e e) c='4 r4 | \nBreak
  %{ Bar 28 %} R1 | \nBreak
  %{ Bar 29 %} r8 e16 (e) e (e e e) e='4 r4 | \nBreak
  %{ Bar 30 %} r8 e'16 (e) e (e e e) e8. (a=''16) r4 |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} r2 r8 e,16 (e) e (e e e=') | \nBreak
  %{ Bar 32 %} e4 r4 r8 e'16 d e d e d='' | \nBreak
  %{ Bar 33 %} c8 e16 d e d e f g fis g a g a g a='' | \nBreak
  %{ Bar 34 %} fis=''8 r8 r4 r2 |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} R1 | \nBreak
  %{ Bar 36 %} g2 f=''2 | \nBreak
  %{ Bar 37 %} e2 d16 e d e f g f g='' | \nBreak
  %{ Bar 38 %} e2~e16 f e fis g a g a='' |
  \mBreak

  %Bars 39-42
  %{ Bar 39 %} fis2~fis16 g fis g a b a b='' | \nBreak
  %{ Bar 40 %} g2~g16 fis g fis g=''4~ | \nBreak
  %{ Bar 41 %} g16 fis g fis g4~g16 fis g fis g fis g a='' | \nBreak
  %{ Bar 42 %} fis e fis e fis g e fis d8 g16 a fis8. g=''16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} g=''4 r4 r2 | \nBreak
  %{ Bar 44 %} R1 | \nBreak
  %{ Bar 45 %} R1 | \nBreak
  %{ Bar 46 %} R1 |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} R1 | \nBreak
  %{ Bar 48 %} r8 g16 f g a g f e8 f16 e f g f e='' | \nBreak
  %{ Bar 49 %} d=''8 r8 r4 r2 | \nBreak
  %{ Bar 50 %} R1|
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} R1 | \nBreak
  %{ Bar 52 %} R1 | \nBreak
  %{ Bar 53 %} r8 f16 e f g f e d8 e16 d e f e d='' | \nBreak
  %{ Bar 54 %} c8 r8 r4 r8 a'16 g a b a g='' |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} fis16 e d e fis g a fis g f g f g a g f='' | \nBreak
  %{ Bar 56 %} e16 d e f e d c b c f e d d8. c=''16 | \nBreak
  %{ Bar 57 %} c=''4 r4 r2 | \nBreak
  %{ Bar 58 %} r8 g'16 f g f g f e f g a f e f d='' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} e8 g, c d e16 f e f g f e f='' | \nBreak
  %{ Bar 60 %} d=''4 r4 r2 | \nBreak
  %{ Bar 61 %} r8 d16 c d e f d e f e f e fis g e='' | \nBreak
  %{ Bar 62 %} fis16 e fis e fis g a fis g8. a16 fis8. g=''16 |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} g=''4 r4 r2 | \nBreak
  %{ Bar 64 %} R1 | \nBreak
  %{ Bar 65 %} c2 bes='' | \nBreak
  %{ Bar 66 %} a2 g16 f g f g a bes g='' |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} a2~ a16 g a g a g f e='' | \nBreak
  %{ Bar 68 %} d16 c d e d f e f g f g f g f g f='' | \nBreak
  %{ Bar 69 %} e16 d e f e g f g a g a g a=''4~ | \nBreak
  %{ Bar 70 %} a16 g a g a4~ a16 g a g a b g a='' | 
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} b16 a b a b c a b c f, e d d8. c=''16 | \nBreak
  %{ Bar 72 %} c=''4 r4 r2 | \nBreak
  %{ Bar 73 %} r8 g8 c e g d d16 (g,) d'=''8 | \nBreak
  %{ Bar 74 %} \times 2/3 {d8 (d d)} d8. (g=''16) r2 |
  \mBreak 

  %Bars 75-79
  %{ Bar 75 %} R1 | \nBreak
  %{ Bar 76 %} R1 | \nBreak
  %{ Bar 77 %} R1 | \nBreak
  %{ Bar 78 %} R1 | \nBreak
  %{ Bar 79 %} r2 r8 g,8 \times 2/3 {g8 (g g=')} |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} \times 2/3 {g8 (c, g')} \times 2/3 {g (g g)} g8. (c=''16) r4 | \nBreak
  %{ Bar 81 %} R1 | \nBreak
  %{ Bar 82 %} R1 | \nBreak
  %{ Bar 83 %} r8 g8 \times 2/3 {c (c c)} \times 2/3 {c (g c)} \times 2/3 {g (e g=')} | \nBreak
  %{ Bar 84 %} \times 2/3 {e (e e)} \times 2/3 {e (e e)} e2\fermata |
  \mBreak
  
  \bar "|."

  }
 }



CornoTwoNotes = \new Voice { \relative c'' {
  \clef treble
  \key c \major  
  \time 4/4
  \transposition f  

  %Bars 1-4
  %{ Bar 1 %} r8 c,8 e g c g e16 c g'='8 | \nBreak
  %{ Bar 2 %} \times 2/3 { g8 (g g) } \times 2/3 { g8 (g g) } g8. (d'=''16) r4 | \nBreak
  %{ Bar 3 %} R1 | \nBreak
  %{ Bar 4 %} R1 |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} R1 | \nBreak
  %{ Bar 6 %} R1 | \nBreak
  %{ Bar 7 %} R1 | \nBreak
  %{ Bar 8 %} R1 | \nBreak
  %{ Bar 9 %} r2 r8 c,8 \times 2/3 { c8 (c c=') } |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} \times 2/3 { c8 (g c) } \times 2/3 { c (c c) } c8. (g'='16) r4 | \nBreak
  %{ Bar 11 %} r2 r4 r8 g='8 | \nBreak
  %{ Bar 12 %} \times 2/3 { c8 (c c) } \times 2/3 { c (g c) } \times 2/3 { g (e g) } \times 2/3 { e (c e=') } | \nBreak
  %{ Bar 13 %} c8 e'16 d e d e d c d e f d8 g,=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} c8 e, g g16 g g8 c16 d e d c d='' | \nBreak
  %{ Bar 15 %} g,='4 r4 r2 | \nBreak
  %{ Bar 16 %} r8 g16 g g8 g g g c16 d e c='' | \nBreak
  %{ Bar 17 %} d16 c d c d e fis d e8. fis16 d8. d=''16 |
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} d=''4 r4 r2 | \nBreak
  %{ Bar 19 %} R1 | \nBreak
  %{ Bar 20 %} r8 e,8 g c d e16 f e d c g=' |  \nBreak
  %{ Bar 21 %} c=''4 r4 r2 |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} R1 | \nBreak
  %{ Bar 23 %} R1 | \nBreak
  %{ Bar 24 %} r8 f16 e f g f e d8 e16 d e f e d='' | \nBreak
  %{ Bar 25 %} c=''4 r4 r2 | \nBreak
  %{ Bar 26 %} R1 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r2 r8 e,16 (e) e (e e e=') | \nBreak
  %{ Bar 28 %} e8 c=' r4 r2 | \nBreak
  %{ Bar 29 %} r2 r8 e16 (e) e (e e e=') | \nBreak
  %{ Bar 30 %} e4 r4 r8 e'16 (e) e (e e e='') |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} d8. (g=''16) r4 r2 | \nBreak
  %{ Bar 32 %} r8 e,16 e e (e e e) e8 e16 e e (e e e=') | \nBreak
  %{ Bar 33 %} e8 c'16 b c b c d e d e fis e fis e fis='' | \nBreak
  %{ Bar 34 %} d=''8 r8 r4 r2 |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} R1 | \nBreak
  %{ Bar 36 %} r4 e2 d=''4~ | \nBreak
  %{ Bar 37 %} d4 c~ c8 g16 c d e d e='' | \nBreak
  %{ Bar 38 %} c2~ c16 d c d e fis e fis='' |
  \mBreak 

  %Bars 39-42
  %{ Bar 39 %} d2~ d16 e d e fis g fis g='' | \nBreak
  %{ Bar 40 %} e2~ e16 d e d e=''4~ | \nBreak
  %{ Bar 41 %} e16 d e d e4~ e16 d e d e d e fis='' | \nBreak
  %{ Bar 42 %} d16 c d c d e c d g,8 e' d d='' |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} d=''4 r4 r2 | \nBreak
  %{ Bar 44 %} R1 | \nBreak
  %{ Bar 45 %} R1 | \nBreak
  %{ Bar 46 %} R1 |
  \mBreak

  %Bars 47-50 
  %{ Bar 47 %} R1 | \nBreak 
  %{ Bar 48 %} r8 e16 d e f e d c8 d16 c d e d c='' | \nBreak
  %{ Bar 49 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 50 %} R1
  \mBreak

  %Bars 51-54 
  %{ Bar 51 %} R1 | \nBreak
  %{ Bar 52 %} R1 | \nBreak
  %{ Bar 53 %} r8 d'16 c d e d c g='8 r8 r4 | \nBreak
  %{ Bar 54 %} R1 | \nBreak
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} r8 d'16 c d e d c d8 g,16 g g g g g=' | \nBreak
  %{ Bar 56 %} g8 c, e g e c g' g16 g=' | \nBreak
  %{ Bar 57 %} e='4 r4 r2 | \nBreak
  %{ Bar 58 %} r8 e'16 d e d e d c d e f d8 g,=' |
 \mBreak

  %Bars 59-62 
  %{ Bar 59 %} c8 e, g g16 g g8 c16 d e d c d='' | \nBreak
  %{ Bar 60 %}  g,='4 r4 r2 | \nBreak
  %{ Bar 61 %}  r8 g16 g g8 g g g c16 d e c='' | \nBreak
  %{ Bar 62 %}  d16 c d c d e fis d e8. fis16 d8. d=''16 |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %}  d=''4 r4 r2 | \nBreak
  %{ Bar 64 %}  R1 | \nBreak
  %{ Bar 65 %}  r4 a'2 g=''4~ | \nBreak
  %{ Bar 66 %}  g4 f4~ f8 e16 d e f g e='' |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %}  f2~ f16 e f e d8 c='' | \nBreak
  %{ Bar 68 %}  g8 g16 g g8 c16 d e d e d e d e d='' | \nBreak
  %{ Bar 69 %}  c8 c16 c c e d e c d c d c=''4~ | \nBreak
  %{ Bar 70 %}  c16 d c d c4~ c16 d c d c e d c='' |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %}  d16 c d c d e c d e8 c, e g=' | \nBreak
  %{ Bar 72 %}  e8 c e g c g e16 c g'='8 | \nBreak
  %{ Bar 73 %}  \times 2/3 { g8 (g g) } \times 2/3 { g (g g) } g8. (d'=''16) r4 | \nBreak
  %{ Bar 74 %}  R1 |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} R1 | \nBreak
  %{ Bar 76 %} R1 | \nBreak
  %{ Bar 77 %} R1 | \nBreak
  %{ Bar 78 %} R1 | \nBreak
  %{ Bar 79 %} R1 |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} r2 r8 c,8 \times 2/3 { c8 (c c) } | \nBreak
  %{ Bar 81 %} \times 2/3 { c (g c) } \times 2/3 { c (c c) } c8. g'='16 r4 | \nBreak
  %{ Bar 82 %} r2 r4 r8 g='8 | \nBreak
  %{ Bar 83 %} \times 2/3 { c (c c) } \times 2/3 { c (g c) } \times 2/3 { g (e g) } \times 2/3 { e (c e=') } | \nBreak
  %{ Bar 84 %} \times 2/3 { c (c c) } \times 2/3 { c (c c) } c2\fermata |
  \mBreak

  \bar "|."  
    }
  }

OboeOneNotes = \new Voice { \relative c'' {
  \clef treble
  \key f \major  
  \time 4/4
  
  %Bars 1-4
  %{ Bar 1 %} r8 f16 e f e f e f8 c d c16 bes | \nBreak
  %{ Bar 2 %} a g f g a b a b c d e c f e f g | \nBreak
  %{ Bar 3 %} e f g f g f g f g c, f e f e f e | \nBreak
  %{ Bar 4 %} f16 b, e d e d e d e a, a' g f e d c |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} b a g a b c d e f8. g16 d8. c16 | \nBreak
  %{ Bar 6 %} c8 g a bes c d16 ees d c bes a | \nBreak
  %{ Bar 7 %} bes8 r8 r4 r8 a'16 bes a g f e | \nBreak
  %{ Bar 8 %} f16 d bes' c bes a g f e8 g16 f g f g f | \nBreak
  %{ Bar 9 %} g8 c,16 d c bes a g a8 c'16 bes c bes c bes |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} c8 f,16 g f ees d c d8 g16 a g f e d | \nBreak
  %{ Bar 11 %} c8. d16 e f g a bes c32 bes a bes c16 g8. f16 | \nBreak
  %{ Bar 12 %} f16 e f e d c d c bes c32 bes a bes c16 g8. f='16 | \nBreak
  %{ Bar 13 %} f8 f a c f c d c16 bes=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} a8 f'16 e f e f e f=''8 r8 r4 | \nBreak
  %{ Bar 15 %} r8 c8 e g c g a g16 f='' | \nBreak
  %{ Bar 16 %} e4 r8 e8 c4 r8 f=''8 | \nBreak
  %{ Bar 17 %} d4 r8 g8 e8. f16 d8. c=''16 |
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} c=''4 r4 r2 | \nBreak
  %{ Bar 19 %} r8 d8 e f g a16 bes a g f e='' | \nBreak
  %{ Bar 20 %} f=''4 r4 r2 | \nBreak
  %{ Bar 21 %} r16 c16 f ees f ees f ees f bes, ees d ees d ees d='' |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} ees16 a, d c d c d c d g, g' f ees d c bes=' | \nBreak
  %{ Bar 23 %} a16 g f g a bes c d ees8. f16 c8. bes='16 | \nBreak
  %{ Bar 24 %} bes='4 r4 r2 | \nBreak
  %{ Bar 25 %} r8 g'16 f g a g f e8 f16 e f g f e='' | \nBreak
  %{ Bar 26 %} d=''4 r4 r2 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r8 d16 cis d cis d cis d8 a bes a16 g=' | \nBreak
  %{ Bar 28 %} f16 e d e f g f g a bes c a d f e d='' | \nBreak
  %{ Bar 29 %} cis8 e16 d e d e d e8 a,16 bes a g f e=' | \nBreak
  %{ Bar 30 %} f8 a'16 g a g a g a8 d,16 ees d c bes a=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} bes16 d g a g f e d cis b a b cis d e f='' | \nBreak
  %{ Bar 32 %} g16 f g f g f g f g a32 g f g a16 e8. d=''16 | \nBreak
  %{ Bar 33 %} d8 d c bes a g fis d=' | \nBreak
  %{ Bar 34 %} g8 d'16 c d c d e f e f g f g f g='' |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} e=''8 r8 r4 r2 | \nBreak
  %{ Bar 36 %} r8 c8 ees a='' r8 bes,8 d g | \nBreak
  %{ Bar 37 %} r8 a,8 c f r4 g=''4~ | \nBreak
  %{ Bar 38 %} g8 a, c f a=''2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} a8 b, d g b=''2~ | \nBreak
  %{ Bar 40 %} b8 c, e a c4~ c16 b c b='' | \nBreak
  %{ Bar 41 %} c4~ c16 b c b c4 r8 a,='8 | \nBreak
  %{ Bar 42 %} b8 d g, b c16 f e d d8. c=''16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} c8 c16 (b) c (b) c (b) c8 g a g16 f=' | \nBreak
  %{ Bar 44 %} e16 d c d e fis e fis g a b g c b c d='' | \nBreak
  %{ Bar 45 %} b8 d16 c d c d c d8 e16 f e d c b=' | \nBreak
  %{ Bar 46 %} c8 e16 d e d e d e8 f16 g f e d cis='' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} d8 e16 f e d c b c8. d16 b8. a='16 | \nBreak
  %{ Bar 48 %} a='4 r4 r2 | \nBreak
  %{ Bar 49 %} r8 f'16 e f g f e d8 e16 d e f e d='' | \nBreak
  %{ Bar 50 %} cis=''8 r8 r4 r2 |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} R1 | \nBreak
  %{ Bar 52 %} r8 g'16 fis g fis g fis g8 d ees d16 c='' | \nBreak
  %{ Bar 53 %} bes8 r8 r4 r8 f'16 e f g f e='' | \nBreak
  %{ Bar 54 %} d8 e16 d e f e d c=''8 r8 r4 |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} r2 r8 e16 d e f g e='' | \nBreak
  %{ Bar 56 %} f8 a f c f, d' g, a16 bes=' | \nBreak
  %{ Bar 57 %} a8 f'16 e f e f e f8 c d c16 bes=' | \nBreak
  %{ Bar 58 %} a8 f a c f c d c16 bes=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} a8 f'16 e f e f e f=''4 r4 | \nBreak
  %{ Bar 60 %} r8 c8 e g c g a g16 f='' | \nBreak
  %{ Bar 61 %} e4 r8 e8 c4 r8 f=''8 | \nBreak
  %{ Bar 62 %} d4 r8 g8 e8. f16 d8.  c=''16 |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} c8 g'16 f g f g a bes a bes c bes c bes c=''' | \nBreak
  %{ Bar 64 %} a=''8 r8 r4 r2 | \nBreak
  %{ Bar 65 %} r4 r8 aes8 ees g r8 g='' | \nBreak
  %{ Bar 66 %} d8 f r8 f c ees='' r4 |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} f2 g=''~ | \nBreak
  %{ Bar 68 %} g2 a=''~ | \nBreak
  %{ Bar 69 %} a2 r8 b, d f='' | \nBreak
  %{ Bar 70 %} aes d, f aes b d g, b='' | 
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} c4 r8 g8 a16 g f g e8. f=''16 | \nBreak
  %{ Bar 72 %} f8 f16 e f e f e f8 c d c16 bes=' | \nBreak
  %{ Bar 73 %} a16 g f g a b a b c d e c f e f g='' | \nBreak
  %{ Bar 74 %} e16 f g f g f g f g c, f e f e f e='' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} f16 b, e d e d e d e a, a' g f e d c='' | \nBreak
  %{ Bar 76 %} b16 a g a b c d e f8. g16 d8. c=''16 | \nBreak
  %{ Bar 77 %} c8 g8 a bes c d16 ees d c bes a=' | \nBreak
  %{ Bar 78 %} bes8 r8 r4 r8 a'16 bes a g f e='' | \nBreak
  %{ Bar 79 %} f16 d bes' c bes a g f e8 g16 f g f g f='' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} g8 c,16 d c bes a g a8 c'16 bes c bes c bes='' | \nBreak
  %{ Bar 81 %} c8 f,16 g f ees d c d8 g16 a g f e d='' | \nBreak
  %{ Bar 82 %} c8. d16 e f g a bes c32 bes a bes c16 g8. f=''16 | \nBreak
  %{ Bar 83 %} f16 e f e d c d c bes c32 bes a bes c16 g8. f='16 | \nBreak
  %{ Bar 84 %} f8 f'16 e f e f e f=''2 \fermata |
  \mBreak

  \bar "|." 
      }
  }

OboeTwoNotes = \new Voice { \relative c'' {
  \clef treble
  \key f \major  
  \time 4/4
  
  %Bars 1-4
  %{ Bar 1 %} r8 c16 bes c bes c bes a g a g a g a g=' | \nBreak
  %{ Bar 2 %} f8 a16 g f g a f g8 c c b=' | \nBreak
  %{ Bar 3 %} c16 d c d e4 ~ e8 d16 c d=''4 ~ | \nBreak
  %{ Bar 4 %} d8 c16 b c4 ~ c16 d c bes a g f e=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} d4 r8 f'8 b, c16 d b8. c=''16 | \nBreak
  %{ Bar 6 %} c8 e, fis g a fis g a=' | \nBreak
  %{ Bar 7 %} d,8 r8 r4 r8 c'8 d e='' | \nBreak
  %{ Bar 8 %} a,8 d16 ees d c bes a g8 e'16 d e d e d='' | \nBreak
  %{ Bar 9 %} e8 e, f g c, a''16 g a g a g='' |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} a8 a, bes c f,  d'16 ees d8 bes=' | \nBreak
  %{ Bar 11 %} g8. a16 bes a g f e8 f16 g e8. f='16 | \nBreak
  %{ Bar 12 %} f8 a bes d, d16 e f g e8. f='16 | \nBreak
  %{ Bar 13 %} f8 c f a d c bes g=' | \nBreak
 \mBreak

  %Bars 14-17
  %{ Bar 14 %} f c'16 bes c bes c bes c=''4 r4 | \nBreak
  %{ Bar 15 %} r8 g c d c e16 d e d e d='' | \nBreak
  %{ Bar 16 %} c4 r8 c8 a4 r8 d=''8 | \nBreak
  %{ Bar 17 %} b4 r8 e8 c16 b c d g,8 g=' | 
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} g='4 r4 r2 | \nBreak
  %{ Bar 19 %} r8 d'8 cis d e cis d e='' | \nBreak
  %{ Bar 20 %} a,4 r4 r2 | \nBreak
  %{ Bar 21 %} r16 a16 bes c d4~ d8 c16 bes c=''4~ |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} c8 bes16 a bes4~ bes16 c bes aes g f ees d=' | \nBreak
  %{ Bar 23 %} c4 r8 ees'8 a,8 bes16 c a8. bes='16 | \nBreak
  %{ Bar 24 %} bes='4 r4 r2 | \nBreak
  %{ Bar 25 %} r8 bes16 a bes c bes a g8 a16 g a bes a g=' | \nBreak
  %{ Bar 26 %} f='4 r4 r2 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r8 a16 g a g f g f e f e f e f e=' | \nBreak
  %{ Bar 28 %} d8 f16 e d e f d e8 a f bes=' | \nBreak
  %{ Bar 29 %} a8 cis16 b cis b cis b cis8 cis d e='' | \nBreak
  %{ Bar 30 %} a,8 fis'16 e fis e fis e fis8 fis g a='' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} d,8 c d bes a e a16 b cis d='' | \nBreak
  %{ Bar 32 %} e16 d cis d e d cis d e a, d e cis8. d=''16 | \nBreak
  %{ Bar 33 %} d8 d c bes a g fis d=' | \nBreak
  %{ Bar 34 %} g8 b16 a b a b c d c d e d e d e='' |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c=''8 r8 r4 r2 | \nBreak
  %{ Bar 36 %} r8 a8 c ees r8 f, bes d='' | \nBreak
  %{ Bar 37 %} r8 e,8 a c r4 e=''4~ | \nBreak
  %{ Bar 38 %} e8 f, a c f=''2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} f8 g, b d g=''2~ | \nBreak
  %{ Bar 40 %} g8 a, c e a4~ a16 g a g='' | \nBreak
  %{ Bar 41 %} a4~ a16 g a g fis4 r8 fis,='8 | \nBreak
  %{ Bar 42 %} g8 b d, g g a16 b b8. \trill g='16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} g8 g16 f g f g f e d e d e d e d=' | \nBreak
  %{ Bar 44 %} c8 e16 d c d e c d8 g g fis=' | \nBreak
  %{ Bar 45 %} g8 b16 a b a b a b8 e16 d c8 b=' | \nBreak
  %{ Bar 46 %} a8 cis16 b cis b cis b cis8 cis d g,=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} a4 r8 e a8. b16 gis8. e='16 | \nBreak
  %{ Bar 48 %} e='4 r4 r2 | \nBreak
  %{ Bar 49 %} r8 a16 g a bes a g f8 g16 f g a g f=' | \nBreak
  %{ Bar 50 %} e='8 r8 r4 r2
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} R1 | \nBreak
  %{ Bar 52 %} r8 d'16 c d c d c bes a bes a bes a bes a=' | \nBreak
  %{ Bar 53 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} R1 |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} R1 | \nBreak
  %{ Bar 56 %} R1 | \nBreak
  %{ Bar 57 %} r8 c16 bes c bes c bes a g a g a g a g=' | \nBreak
  %{ Bar 58 %} f8 c f a d c bes g=' | \nBreak
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} f8 c'16 bes c bes c bes c=''4 r4 | \nBreak
  %{ Bar 60 %} r8 g8 c d c e16 d e d e d='' | \nBreak
  %{ Bar 61 %} c4 r8 c8 a4 r8 d=''8 | \nBreak
  %{ Bar 62 %} b4 r8 e8 c16 b c d g,8 g=' | 
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} g8 e'16 d e d e f g f g a g a g a='' | \nBreak
  %{ Bar 64 %} f=''8 r8 r4 r2 | \nBreak
  %{ Bar 65 %} r4 r8 d8 d ees r8 c='' | \nBreak
  %{ Bar 66 %} c8 d r8 bes bes c='' r4 |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} d=''1 | \nBreak
  %{ Bar 68 %} e=''1 | \nBreak
  %{ Bar 69 %} f2 r8 f,8 b d='' | \nBreak
  %{ Bar 70 %} f b, d f f aes d, g='' |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} g4 r8 e8 f16 e d e c8. c=''16 | \nBreak
  %{ Bar 72 %} c8 c16 bes c bes c bes a g a g a g a g=' | \nBreak
  %{ Bar 73 %} f8 a16 g f g a f g8 c c b=' | \nBreak
  %{ Bar 74 %} c16 d c d e4~ e8 d16 c d=''4~ |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} d8 c16 b c4~ c16 d c bes a g f e=' | \nBreak
  %{ Bar 76 %} d4 r8 f'8 b, c16 d b8. c=''16 | \nBreak
  %{ Bar 77 %} c8 e, fis g a fis g a=' | \nBreak
  %{ Bar 78 %} d,8 r8 r4 r8 c' d e='' | \nBreak
  %{ Bar 79 %} a,8 d16 ees d c bes a g8 e'16 d e d e d='' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} e8 e, f g c, a''16 g a g a g='' | \nBreak
  %{ Bar 81 %} a8 a, bes c f, d'16 ees d8 bes=' | \nBreak
  %{ Bar 82 %} g8. a16 bes a g f e8 f16 g e8. f='16 | \nBreak
  %{ Bar 83 %} f8 a bes d, d16 e f g e8. f='16 | \nBreak
  %{ Bar 84 %} f8 c'16 bes c bes c bes c2 \fermata |
  \mBreak

  \bar "|." 

    }
  }

OboeThreeNotes = \new Voice { \relative c'' {
  \clef treble
  \key f \major  
  \time 4/4

 
  
  %Bars 1-4
  %{ Bar 1 %} r8 a16 g a g a g f e f e d8 e=' | \nBreak
  %{ Bar 2 %} c8 c c f e16 f g a f8 g=' | \nBreak
  %{ Bar 3 %} g8 g c4. a8 g a=' | \nBreak
  %{ Bar 4 %} b8 e, a4. f8 c a'=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} g4 r8 g8 d e16 f g8 d=' | \nBreak
  %{ Bar 6 %} e r8 r4 r8 d'16 c bes8 a=' | \nBreak
  %{ Bar 7 %} g r8 r4 r8 a16 g f8 e=' | \nBreak
  %{ Bar 8 %} d8 d c d e bes'16 a bes a bes a=' | \nBreak
  %{ Bar 9 %} bes8  c16 bes a8 g f ees'16 d ees d ees d='' |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} ees8 f16 ees d8 c bes bes16 c bes8 g=' | \nBreak
  %{ Bar 11 %} e8. f16 g a bes g c4 ~ c16 bes c bes=' | \nBreak
  %{ Bar 12 %} a8 f f f g c, c8. c='16 | \nBreak
  %{ Bar 13 %} c8 c c e a f f e=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} c a'16 g a g a g a='4 r4 | \nBreak
  %{ Bar 15 %} r8 e8 g b e, c'16 b a8 b=' | \nBreak
  %{ Bar 16 %} g4 r8 g8 f4 r8 a='8 | \nBreak
  %{ Bar 17 %} g4 r8 b8 a16 b a g f e f d=' |
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} e='4 r4 r2 | \nBreak
  %{ Bar 19 %} r2 r8 a16 g f8 e=' | \nBreak
  %{ Bar 20 %} d='4 r4 r2 | \nBreak
  %{ Bar 21 %} r8 f8 bes4. g8 f g=' |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} a8 d, g4. ees8 bes' g=' | \nBreak
  %{ Bar 23 %} f4 r8 f8 c d16 ees f8 c=' | \nBreak
  %{ Bar 24 %} d='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} R1 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r8 f16 e f e f e d8 d' d cis='' | \nBreak
  %{ Bar 28 %} d8 a f d a' e d g=' | \nBreak
  %{ Bar 29 %} e8 g16 f g f g f g8 a16 g f8 e=' | \nBreak
  %{ Bar 30 %} d8 c'16 bes c bes c bes c8 d16 c d8 d,=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} g8 fis d g e a e a=' | \nBreak
  %{ Bar 32 %} a8 g16 a bes8 e, a a a e=' | \nBreak
  %{ Bar 33 %} f8 d' c bes a g fis d=' | \nBreak
  %{ Bar 34 %} g='8 r8 r4 r2 |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} R1 | \nBreak
  %{ Bar 36 %} r8 ees8 a c r8 d, g bes=' | \nBreak
  %{ Bar 37 %} r8 c,8 f a r4 c=''4~ | \nBreak
  %{ Bar 38 %} c8 c, f a d=''2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} d8 d, g b e=''2~ | \nBreak
  %{ Bar 40 %} e8 e, a c ees4~ ees16 d ees d='' | \nBreak
  %{ Bar 41 %} ees4~ ees16 d ees c d4 r8 d,='8 | \nBreak
  %{ Bar 42 %} d8 g b d, e a d, g=' |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} e8 e16 d e d e d c8 c' c b=' | \nBreak
  %{ Bar 44 %} c8 g e c g' g e d=' | \nBreak
  %{ Bar 45 %} d8 f16 (e) f e f e e8 gis a b=' | \nBreak
  %{ Bar 46 %} e,8 g16 f g f g f g8 a16 bes a g f e=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} d4 r8 e8 e f e e=' | \nBreak
  %{ Bar 48 %} c='4 r4 r2 | \nBreak
  %{ Bar 49 %} R1 | \nBreak
  %{ Bar 50 %} R1 |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} R1 | \nBreak
  %{ Bar 52 %} r8 bes'16 a bes a bes a g fis g fis g fis g fis=' | \nBreak
  %{ Bar 53 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} R1
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} R1 | \nBreak
  %{ Bar 56 %} R1 | \nBreak
  %{ Bar 57 %} r8 a16 g a g a g f e f e d8 e=' | \nBreak
  %{ Bar 58 %} c8 c c e a f f e=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} c8 a'16 g a g a g a='4 r4 | \nBreak
  %{ Bar 60 %} r8 e8 g b e, c'16 b a8 b=' | \nBreak
  %{ Bar 61 %} g4 r8 g8 f4 r8 a='8 | \nBreak
  %{ Bar 62 %} g4 r8 b8 a16 b a g f e f d=' |
  \mBreak

  %Bars 63-66 
  %{ Bar 63 %} e8 c' bes a g f e c=' | \nBreak
  %{ Bar 64 %} f='8 r8 r4 r2 | \nBreak
  %{ Bar 65 %} r4 r8 aes8 aes g r8 g=' | \nBreak
  %{ Bar 66 %} g8 f r8 f f a=' r4 |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} bes='1 | \nBreak
  %{ Bar 68 %} c=''1 | \nBreak
  %{ Bar 69 %} d2 r8 d,8 f b=' | \nBreak
  %{ Bar 70 %} d8 f, aes d d f b, d='' |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} e4 r8 c8 c d16 c bes a bes g=' | \nBreak
  %{ Bar 72 %} a8 a16 g a g a g f e f e d8 e=' | \nBreak
  %{ Bar 73 %} c8 c' a f e16 f g a f8 g=' | \nBreak
  %{ Bar 74 %} g8 g c4. a8 g a=' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} b8 e, a4. f8 c a'=' | \nBreak
  %{ Bar 76 %} g4 r8 g d e16 f g8 d=' | \nBreak
  %{ Bar 77 %} e8 r8 r4 r8 d'16 c bes8 a=' | \nBreak
  %{ Bar 78 %} g8 r8 r4 r8 a16 g f8 e=' | \nBreak
  %{ Bar 79 %} d8 d c d e bes'16 a bes a bes a=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} bes8 c16 bes a8 g f ees'16 d ees d ees d='' | \nBreak
  %{ Bar 81 %} ees8 f16 ees d8 c bes bes16 c bes8 g=' | \nBreak
  %{ Bar 82 %} e8. f16 g a bes g c4~ c16 bes c bes =' | \nBreak
  %{ Bar 83 %} a8 f f f g c, c8. c='16 | \nBreak
  %{ Bar 84 %} c8 a'16 g a g a g a2 \fermata |
  \mBreak

  \bar "|." 

  }
}

FagottoNotes =  \new Voice { \relative c {
  \clef bass
  \key f \major  
  \time 4/4
  
  %Bars 1-4
  %{ Bar 1 %} f4 r8 c d a bes c | \nBreak
  %{ Bar 2 %} f, f'16 e f e f d e8 c d g, | \nBreak
  %{ Bar 3 %} c e c b a d b a | \nBreak
  %{ Bar 4 %} g c a g f4 r8 f'8 ~ |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} f16 g f e d c b a g8 c g' g, | \nBreak
  %{ Bar 6 %} c c'16 d c bes a g fis8 d e fis | \nBreak
  %{ Bar 7 %} g r8 r4 r8 a, bes c | \nBreak
  %{ Bar 8 %} d8 g, a bes c c,= ,  r4 | \nBreak
  %{ Bar 9 %} r8 c' d e f f, = , r4 |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} r8 f' g a bes16 f bes a bes a bes a =  | \nBreak
  %{ Bar 11 %} bes c bes a g f e d c8 f c' c, =  | \nBreak
  %{ Bar 12 %} d16 c d c bes a bes a g8 f c' c,=, | \nBreak
  %{ Bar 13 %} f=, 4 r4 r2 |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} r8 f8 a c f d a bes=, | \nBreak
  %{ Bar 15 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 16 %} c,8 g' c c, f a d d,=, | \nBreak
  %{ Bar 17 %} g8 b e e, a f' g g,=, |
  \mBreak

  %Bars 18-21
  %{ Bar 18 %} c= 4 r4 r2 | \nBreak
  %{ Bar 19 %} r8 g'16 a g f e d cis8 a b cis= | \nBreak
  %{ Bar 20 %} d16 e d c bes a g f e8 c' d e= | \nBreak
  %{ Bar 21 %} f8 d bes a g c a g=, |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} f8 bes g f ees4 r8 ees'= 8~ | \nBreak
  %{ Bar 23 %} ees16 f ees d c bes a g f8 bes f' f, =, | \nBreak
  %{ Bar 24 %} bes8 bes' c d ees a, bes c =' | \nBreak
  %{ Bar 25 %} d8 g, a bes c f, g a= | \nBreak
  %{ Bar 26 %} bes8 e, f g a e cis a=, |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} d4 r8 a8 bes f g a=, | \nBreak
  %{ Bar 28 %} d,8 d'16 cis d cis d bes c8 a bes g=, | \nBreak
  %{ Bar 29 %} a8 a' r4 r8 a,8 b cis= | \nBreak
  %{ Bar 30 %} d,8 d' r4 r8 d8 e fis= |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} g8 a bes g a bes16 a g f e d= | \nBreak
  %{ Bar 32 %} cis16 d e d cis b a g f8 d' a' a,=, | \nBreak
  %{ Bar 33 %} d= 4 r4 r2 | \nBreak
  %{ Bar 34 %} g,=,4 r4 r2 |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c8 c' bes a g f e c= | \nBreak
  %{ Bar 36 %} f8 c16 bes c bes c d ees f bes, a bes a bes c= | \nBreak
  %{ Bar 37 %} d16 e a, g a g a bes c8 g e c=, | \nBreak
  %{ Bar 38 %} f16 c' f e f e f e d8 a f d=, |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} g16 d' g f g f g f e8 b g e=, | \nBreak
  %{ Bar 40 %} a16 e' a g a g a g fis8 ees' c a= | \nBreak
  %{ Bar 41 %} fis8 c' a fis d a fis d=, | \nBreak
  %{ Bar 42 %} f'4 r8 f8 e f g g,=, |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 44 %} c,8 c'16 b c b c a b8 g a d,=, | \nBreak
  %{ Bar 45 %} g8 g' r4 r8 e8 fis gis= | \nBreak
  %{ Bar 46 %} a8 a, r4 r8 a8 d e= |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} f8 e16 d c b a gis a8 d e e,=, | \nBreak
  %{ Bar 48 %} a8 a' bes c d g, a bes= | \nBreak
  %{ Bar 49 %} c8 f, g a bes e, f g= | \nBreak
  %{ Bar 50 %} a8 g f e d c bes a=, | 
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} g8 bes c d ees c d d,=, | \nBreak
  %{ Bar 52 %} g4 r8 d'8 ees bes c d= | \nBreak
  %{ Bar 53 %} g,8 g' a bes c f, g a= | \nBreak
  %{ Bar 54 %} bes8 e, f g a d, e f= |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} g8 f e d c bes a g=, | \nBreak
  %{ Bar 56 %} f8 a bes c d bes c c,=, | \nBreak
  %{ Bar 57 %} f4 r8 c'8 d a bes c= | \nBreak
  %{ Bar 58 %} f,=,4 r4 r2 |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} r8 f8 a c f d  a bes=, | \nBreak
  %{ Bar 60 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 61 %} c,8 g' c c, f a d d,=, | \nBreak
  %{ Bar 62 %} g8 b e e, a f' g g,=, |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} c= 4 r4 r2 | \nBreak
  %{ Bar 64 %} f,=,4 r4 r2 | \nBreak
  %{ Bar 65 %} bes8 f'16 ees f ees f g aes bes ees, d ees d ees f= | \nBreak
  %{ Bar 66 %} g16 a d, c d c d ees f8 c a f=, |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} bes16 f' bes a bes a bes a g8 d bes g=, | \nBreak
  %{ Bar 68 %} c16 g' c bes c bes c bes a8 e c a=, | \nBreak
  %{ Bar 69 %} d16 a' d c d c d c b8 aes f d= | \nBreak
  %{ Bar 70 %} b8 f' d b g d' b g=, |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} bes'4 r8 bes,8 a bes c c,=, | \nBreak
  %{ Bar 72 %} f4 r8 c'8 d a bes c= | \nBreak
  %{ Bar 73 %} f,8 f'16 e f e f d e8 c d g,=, | \nBreak
  %{ Bar 74 %} c8 e c b a d b a=, |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} g8 c a g f4 r8 f'= 8~ | \nBreak
  %{ Bar 76 %} f16 g f e d c b a g8 c g' g,=, | \nBreak
  %{ Bar 77 %} c8 c'16 d c bes a g fis8 d e fis= | \nBreak
  %{ Bar 78 %} g8 r8 r4 r8 a, bes c= | \nBreak
  %{ Bar 79 %} d8 g, a bes c c,=, r4 |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} r8 c'8 d e f f,=, r4 | \nBreak
  %{ Bar 81 %} r8 f'8 g a bes16 bes, bes' a bes a bes a= | \nBreak
  %{ Bar 82 %} bes16 c bes a g f e d c8 f c' c,= | \nBreak
  %{ Bar 83 %} d16 c d c bes a bes a g8 f c' c,=, | \nBreak
  %{ Bar 84 %} f8 f16 (f) f (f f f) f2 \fermata |
  \mBreak

  \bar "|." 

  }
}

%Violino Piccolo part is transposed so that it can be played on a violin.

ViolinoPiccoloNotes = \new Voice { \transpose c ees { \relative c'' { 
  \clef treble
  \key d \major  
  \time 4/4
  \transposition ees'
    
  %Bars 1-4
  %{ Bar 1 %} r8 d,8 fis a d a b a16 g=' | \nBreak
  %{ Bar 2 %} fis16 e d e fis gis fis gis a b cis a d cis d e='' | \nBreak
  %{ Bar 3 %} cis16 d e d e d e d e a, d cis d cis d cis='' | \nBreak
  %{ Bar 4 %} d16 gis, cis b cis b cis b cis fis, fis' e d cis b a=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} gis16 fis e fis gis a b cis d8. e16 b8. a='16 | \nBreak
  %{ Bar 6 %} a8 r8 r4 r8 b16 c b a g fis=' | \nBreak
  %{ Bar 7 %} g8 b cis d\trill e fis16 g fis e d cis='' | \nBreak
  %{ Bar 8 %} d16 b g' a g fis e d cis8 a, cis e=' | \nBreak
  %{ Bar 9 %} g8 a16 b a g fis e fis8 d fis a=' | 
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} c8 d16 e d c b a b8 e16 fis e d cis b=' | \nBreak
  %{ Bar 11 %} a8. b16 cis d e fis g a32 g fis g a16 e8. d=''16 | \nBreak
  %{ Bar 12 %} d16 cis d cis b a b a g a32 g fis g a16 e8. d='16 | \nBreak
  %{ Bar 13 %} d4 r8 a'8 b fis g a=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} d,8 d'16 e d e d e d=''4 r4 | \nBreak
  %{ Bar 15 %} r8 a'16 gis a gis a gis a8 e fis e16 d='' | \nBreak
  %{ Bar 16 %} cis16 b a b cis d e8~ e d16 cis d=''4~ | \nBreak
  %{ Bar 17 %} d8 cis16 b cis4~ cis16 b cis d b8. a='16 |
  \mBreak  

  %Bars 18-21
  %{ Bar 18 %} a8 e fis g a b16 c b a g fis=' | \nBreak
  %{ Bar 19 %} g='4 r4 r2 | \nBreak
  %{ Bar 20 %} R1 | \nBreak
  %{ Bar 21 %} r16 a16 d c d c d c d g, c b c b c b=' |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} c16 fis, b a b a b a b e, e' d c b a g=' | \nBreak
  %{ Bar 23 %} fis16 e d e fis g a b c8. d16 a8. g='16 | \nBreak
  %{ Bar 24 %} g='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} r8 cis16 b cis d cis b ais b cis d e d e cis='' |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} d8 b, d fis b fis g fis16 e=' | \nBreak
  %{ Bar 28 %} d16 cis b cis d e d e fis g a fis b d cis b=' | \nBreak
  %{ Bar 29 %} ais8 fis ais cis fis fis,16 g fis e d cis=' | \nBreak
  %{ Bar 30 %} d8 b dis fis a b16 c b a g fis=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} g16 b e fis e d cis b ais gis fis gis ais b cis d='' | \nBreak
  %{ Bar 32 %} e4 r8 e8~ e16 fis32 e d e fis16 cis8. b='16 | \nBreak
  %{ Bar 33 %} b='4 r4 r2 | \nBreak
  %{ Bar 34 %} R1
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} r8 e16 d e d e fis g fis g a g a g a='' | \nBreak
  %{ Bar 36 %} fis4 r8 c8 g b r8 b=' | \nBreak
  %{ Bar 37 %} fis8 a r8 a e g=' r4 | \nBreak
  %{ Bar 38 %} a2 b='2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} b2 cis=''2~ | \nBreak
  %{ Bar 40 %} cis2 r8 dis,8 fis a=' | \nBreak
  %{ Bar 41 %} c8 fis, a c dis fis b, dis='' | \nBreak
  %{ Bar 42 %} e4 r8 b8 cis16 d cis b b8. a='16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} a8 a, cis e a e fis e16 d=' | \nBreak
  %{ Bar 44 %} cis16 b a b cis dis cis dis e fis gis e a gis a b=' | \nBreak
  %{ Bar 45 %} gis8 b, e gis b cis16 d cis b a gis=' | \nBreak
  %{ Bar 46 %} a8 cis, fis ais cis d16 e d cis b ais=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} b8 cis16 d cis b a gis a8. b16 gis8. fis='16 | \nBreak
  %{ Bar 48 %} fis='4 r4 r2 | \nBreak
  %{ Bar 49 %} R1 | \nBreak
  %{ Bar 50 %} r8 fis'16 e fis g fis e dis e fis g a g a fis='' |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} g16 fis g a g fis e dis e8. fis16 dis8. e=''16 | \nBreak
  %{ Bar 52 %} e8 e, g b e b c b16 a=' | \nBreak
  %{ Bar 53 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} r8 e'16 d e fis e d cis8 d16 cis d e d cis='' |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} b='8 r8 r4 r2 | \nBreak
  %{ Bar 56 %} r8 a'16 b a g fis e d8. e16 cis8. d=''16 | \nBreak
  %{ Bar 57 %} d8 d, fis a d a b a16 g=' | \nBreak
  %{ Bar 58 %} fis4 r8 a8 b fis g a=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} d,8 d'16 e d e d e d=''4 r4 | \nBreak
  %{ Bar 60 %} r8 a'16 gis a gis a gis a8 e fis e16 d='' | \nBreak
  %{ Bar 61 %} cis16 b a b cis d e8~ e d16 cis d=''4~ | \nBreak
  %{ Bar 62 %} d8 cis b cis~ cis16 b cis d b8. a='16 |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} a='4 r4 r2 | \nBreak
  %{ Bar 64 %} r8 fis'16 e fis e fis g a g a b a b a b='' | \nBreak
  %{ Bar 65 %} g8 d f b r8 c,8 e a='' | \nBreak
  %{ Bar 66 %} r8 b,8 d g r4 a,='4~ |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} a8 b, d g b='2~ | \nBreak
  %{ Bar 68 %} b8 cis, e a cis=''2~ | \nBreak
  %{ Bar 69 %} cis8 d, fis b d4~ d16 cis d cis='' | \nBreak
  %{ Bar 70 %} d4~ d16 cis d cis d4 r8 b='8 |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} cis8 e a, cis fis16 e d e cis8. d=''16 | \nBreak
  %{ Bar 72 %} d8 d, fis a d a b a16 g=' | \nBreak
  %{ Bar 73 %} fis16 e d e fis gis fis gis a b cis a d cis d e='' | \nBreak
  %{ Bar 74 %} cis d e d e d e d e a, d cis d cis d cis='' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} d16 gis, cis b cis b cis b cis fis, fis' e d cis b a=' | \nBreak
  %{ Bar 76 %} gis16 fis e fis gis a b cis d8. e16 b8. a='16 | \nBreak
  %{ Bar 77 %} a8 r8 r4 r8 b16 c b a g fis=' | \nBreak
  %{ Bar 78 %} g8 b cis d e fis16 g fis e d cis='' | \nBreak
  %{ Bar 79 %} d16 b g' a g fis e d cis8 a, cis e=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} g8 a16 b a g fis e fis8 d fis a=' | \nBreak
  %{ Bar 81 %} c8 d16 e d c b a b8  e16 fis e d cis b=' | \nBreak
  %{ Bar 82 %} a8. b16 cis d e fis g (a32 g fis g a16) e8. d=''16 | \nBreak
  %{ Bar 83 %} d16 cis d cis b a b a g (a32 g fis g a16) e8. d='16 | \nBreak
  %{ Bar 84 %} d8 d fis a d=''2 \fermata |
  \mBreak  

  \bar "|." 
	}
  }
}

%Violino Piccolo Original part is at the original transpostion.
%This version doesn't appear on the score.

ViolinoPiccoloOriginalNotes = \new Voice { \relative c'' { 
  \clef treble
  \key d \major  
  \time 4/4
  \transposition ees'
    
  %Bars 1-4
  %{ Bar 1 %} r8 d,8 fis a d a b a16 g=' | \nBreak
  %{ Bar 2 %} fis16 e d e fis gis fis gis a b cis a d cis d e='' | \nBreak
  %{ Bar 3 %} cis16 d e d e d e d e a, d cis d cis d cis='' | \nBreak
  %{ Bar 4 %} d16 gis, cis b cis b cis b cis fis, fis' e d cis b a=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} gis16 fis e fis gis a b cis d8. e16 b8. a='16 | \nBreak
  %{ Bar 6 %} a8 r8 r4 r8 b16 c b a g fis=' | \nBreak
  %{ Bar 7 %} g8 b cis d\trill e fis16 g fis e d cis='' | \nBreak
  %{ Bar 8 %} d16 b g' a g fis e d cis8 a, cis e=' | \nBreak
  %{ Bar 9 %} g8 a16 b a g fis e fis8 d fis a=' | 
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} c8 d16 e d c b a b8 e16 fis e d cis b=' | \nBreak
  %{ Bar 11 %} a8. b16 cis d e fis g a32 g fis g a16 e8. d=''16 | \nBreak
  %{ Bar 12 %} d16 cis d cis b a b a g a32 g fis g a16 e8. d='16 | \nBreak
  %{ Bar 13 %} d4 r8 a'8 b fis g a=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} d,8 d'16 e d e d e d=''4 r4 | \nBreak
  %{ Bar 15 %} r8 a'16 gis a gis a gis a8 e fis e16 d='' | \nBreak
  %{ Bar 16 %} cis16 b a b cis d e8~ e d16 cis d=''4~ | \nBreak
  %{ Bar 17 %} d8 cis16 b cis4~ cis16 b cis d b8. a='16 |
  \mBreak  

  %Bars 18-21
  %{ Bar 18 %} a8 e fis g a b16 c b a g fis=' | \nBreak
  %{ Bar 19 %} g='4 r4 r2 | \nBreak
  %{ Bar 20 %} R1 | \nBreak
  %{ Bar 21 %} r16 a16 d c d c d c d g, c b c b c b=' |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} c16 fis, b a b a b a b e, e' d c b a g=' | \nBreak
  %{ Bar 23 %} fis16 e d e fis g a b c8. d16 a8. g='16 | \nBreak
  %{ Bar 24 %} g='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} r8 cis16 b cis d cis b ais b cis d e d e cis='' |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} d8 b, d fis b fis g fis16 e=' | \nBreak
  %{ Bar 28 %} d16 cis b cis d e d e fis g a fis b d cis b=' | \nBreak
  %{ Bar 29 %} ais8 fis ais cis fis fis,16 g fis e d cis=' | \nBreak
  %{ Bar 30 %} d8 b dis fis a b16 c b a g fis=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} g16 b e fis e d cis b ais gis fis gis ais b cis d='' | \nBreak
  %{ Bar 32 %} e4 r8 e8~ e16 fis32 e d e fis16 cis8. b='16 | \nBreak
  %{ Bar 33 %} b='4 r4 r2 | \nBreak
  %{ Bar 34 %} R1
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} r8 e16 d e d e fis g fis g a g a g a='' | \nBreak
  %{ Bar 36 %} fis4 r8 c8 g b r8 b=' | \nBreak
  %{ Bar 37 %} fis8 a r8 a e g=' r4 | \nBreak
  %{ Bar 38 %} a2 b='2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} b2 cis=''2~ | \nBreak
  %{ Bar 40 %} cis2 r8 dis,8 fis a=' | \nBreak
  %{ Bar 41 %} c8 fis, a c dis fis b, dis='' | \nBreak
  %{ Bar 42 %} e4 r8 b8 cis16 d cis b b8. a='16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} a8 a, cis e a e fis e16 d=' | \nBreak
  %{ Bar 44 %} cis16 b a b cis dis cis dis e fis gis e a gis a b=' | \nBreak
  %{ Bar 45 %} gis8 b, e gis b cis16 d cis b a gis=' | \nBreak
  %{ Bar 46 %} a8 cis, fis ais cis d16 e d cis b ais=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} b8 cis16 d cis b a gis a8. b16 gis8. fis='16 | \nBreak
  %{ Bar 48 %} fis='4 r4 r2 | \nBreak
  %{ Bar 49 %} R1 | \nBreak
  %{ Bar 50 %} r8 fis'16 e fis g fis e dis e fis g a g a fis='' |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} g16 fis g a g fis e dis e8. fis16 dis8. e=''16 | \nBreak
  %{ Bar 52 %} e8 e, g b e b c b16 a=' | \nBreak
  %{ Bar 53 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} r8 e'16 d e fis e d cis8 d16 cis d e d cis='' |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} b='8 r8 r4 r2 | \nBreak
  %{ Bar 56 %} r8 a'16 b a g fis e d8. e16 cis8. d=''16 | \nBreak
  %{ Bar 57 %} d8 d, fis a d a b a16 g=' | \nBreak
  %{ Bar 58 %} fis4 r8 a8 b fis g a=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} d,8 d'16 e d e d e d=''4 r4 | \nBreak
  %{ Bar 60 %} r8 a'16 gis a gis a gis a8 e fis e16 d='' | \nBreak
  %{ Bar 61 %} cis16 b a b cis d e8~ e d16 cis d=''4~ | \nBreak
  %{ Bar 62 %} d8 cis b cis~ cis16 b cis d b8. a='16 |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} a='4 r4 r2 | \nBreak
  %{ Bar 64 %} r8 fis'16 e fis e fis g a g a b a b a b='' | \nBreak
  %{ Bar 65 %} g8 d f b r8 c,8 e a='' | \nBreak
  %{ Bar 66 %} r8 b,8 d g r4 a,='4~ |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} a8 b, d g b='2~ | \nBreak
  %{ Bar 68 %} b8 cis, e a cis=''2~ | \nBreak
  %{ Bar 69 %} cis8 d, fis b d4~ d16 cis d cis='' | \nBreak
  %{ Bar 70 %} d4~ d16 cis d cis d4 r8 b='8 |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} cis8 e a, cis fis16 e d e cis8. d=''16 | \nBreak
  %{ Bar 72 %} d8 d, fis a d a b a16 g=' | \nBreak
  %{ Bar 73 %} fis16 e d e fis gis fis gis a b cis a d cis d e='' | \nBreak
  %{ Bar 74 %} cis d e d e d e d e a, d cis d cis d cis='' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} d16 gis, cis b cis b cis b cis fis, fis' e d cis b a=' | \nBreak
  %{ Bar 76 %} gis16 fis e fis gis a b cis d8. e16 b8. a='16 | \nBreak
  %{ Bar 77 %} a8 r8 r4 r8 b16 c b a g fis=' | \nBreak
  %{ Bar 78 %} g8 b cis d e fis16 g fis e d cis='' | \nBreak
  %{ Bar 79 %} d16 b g' a g fis e d cis8 a, cis e=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} g8 a16 b a g fis e fis8 d fis a=' | \nBreak
  %{ Bar 81 %} c8 d16 e d c b a b8  e16 fis e d cis b=' | \nBreak
  %{ Bar 82 %} a8. b16 cis d e fis g (a32 g fis g a16) e8. d=''16 | \nBreak
  %{ Bar 83 %} d16 cis d cis b a b a g (a32 g fis g a16) e8. d='16 | \nBreak
  %{ Bar 84 %} d8 d fis a d=''2 \fermata |
  \mBreak  

  \bar "|." 
	}
  }


ViolinoOneNotes = \new Voice { \relative c' {
  \clef treble
  \key f \major  
  \time 4/4
   
  %Bars 1-4
  %{ Bar 1 %} r8 f a c f c d c16 bes=' | \nBreak
  %{ Bar 2 %} a g f g a b a b c d e c f e f g='' | \nBreak
  %{ Bar 3 %} e f g f g f g f g c, f e f e f e='' | \nBreak
  %{ Bar 4 %} f b, e d e d e d e a, a' g f e d c='' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} b a g a b c d e f8. g16 d8. c=''16 | \nBreak
  %{ Bar 6 %} c8 r8 r4 r8 d16 ees d c bes a=' | \nBreak
  %{ Bar 7 %}  bes8 d e f\trill g a16 bes a g f e='' | \nBreak
  %{ Bar 8 %} f16 d bes' c bes a g f e8 c, e g='  | \nBreak
  %{ Bar 9 %} bes8 c16 d c bes a g a8 f a c='' |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} ees8 f16 g f ees d c d8 g16 a g f e d='' | \nBreak
  %{ Bar 11 %} c8. d16 e f g a bes c32 bes a bes c16 g8. f='' 16 | \nBreak
  %{ Bar 12 %} f16 e f e d c d c bes c32 bes a bes c16 g8. f='16 | \nBreak
  %{ Bar 13 %} f4 r8 c8 d a bes c=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} f8 f'16 g f g f g f=''4 r4 | \nBreak
  %{ Bar 15 %} r8 c'16 b c b c b c8 g  a g16 f='' | \nBreak
  %{ Bar 16 %} e16 d c d e f g8~ g f16 e f=''4~ | \nBreak
  %{ Bar 17 %} f8 e16 d e4~ e16 d e f d8. c=''16 |
  \mBreak  

  %Bars 18-21
  %{ Bar 18 %} c8 g a bes c d16 ees d c bes a=' | \nBreak
  %{ Bar 19 %} bes='4 r4 r2 | \nBreak
  %{ Bar 20 %} R1 | \nBreak
  %{ Bar 21 %} r16 c16 f ees f ees f ees f bes, ees d ees d ees d='' |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} ees16 a, d c d c d c d g, g' f ees d c bes=' | \nBreak
  %{ Bar 23 %} a16 g f g a bes c d ees8. f16 c8. bes='16 | \nBreak
  %{ Bar 24 %} bes='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} r8 e16 d e f e d cis d e f g f g e='' |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} f8 d, f a d a bes a16 g=' | \nBreak
  %{ Bar 28 %} f16 e d e f g f g a bes c a d f e d='' | \nBreak
  %{ Bar 29 %} cis8 a cis e a a,16 bes a g f e=' | \nBreak
  %{ Bar 30 %} f8 d fis a c d16 ees d c bes a=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} bes16 d g a g f e d cis b a b cis d e f='' | \nBreak
  %{ Bar 32 %} g4 r8 g8~ g16 a32 g f g a16 e8. d=''16 | \nBreak
  %{ Bar 33 %} d=''4 r4 r2 | \nBreak
  %{ Bar 34 %} r8 g,8 f e d c b g= |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c8 g''16 f g f g a bes a bes c bes c bes c=''' | \nBreak
  %{ Bar 36 %} a4 r8 ees8 bes d r8 d=''8 | \nBreak
  %{ Bar 37 %} a c r8 c8 g bes=' r4 | \nBreak
  %{ Bar 38 %} c2 d=''2~ |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} d2 e=''2~ | \nBreak
  %{ Bar 40 %} e2 r8 fis,8 a c='' | \nBreak
  %{ Bar 41 %} ees8 a, c ees fis a d, fis='' | \nBreak
  %{ Bar 42 %} g4 r8 d8 e16 f e d d8. c=''16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} c8 c, e g c g a g16 f=' | \nBreak
  %{ Bar 44 %} e16 d c d e fis e fis g a b g c b c d='' | \nBreak
  %{ Bar 45 %} b8 d, g b d e16 f e d c b=' | \nBreak
  %{ Bar 46 %} c8 e, a cis e f16 g f e d cis='' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} d8 e16 f e d c b c8. d16 b8. a='16 | \nBreak
  %{ Bar 48 %} a='4 r4 r2 | \nBreak
  %{ Bar 49 %} R1 | \nBreak
  %{ Bar 50 %} r8 a'16 g a bes a g fis g a bes c bes c a='' |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} bes16 a bes c bes a g fis g8. a16 fis8. g=''16 | \nBreak
  %{ Bar 52 %} g8 g, bes d g d ees d16 c='' | \nBreak
  %{ Bar 53 %} bes='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} R1 |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} R1 | \nBreak
  %{ Bar 56 %} R1 | \nBreak
  %{ Bar 57 %} r8 f8 a c f c d c16 bes=' | \nBreak
  %{ Bar 58 %} a4 r8 c,8 d a bes c=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} f8 f'16 g f g f g f=''4 r4 | \nBreak
  %{ Bar 60 %} r8 c'16 b c b c b c8 g a g16 f='' | \nBreak
  %{ Bar 61 %} e16 d c d e f g8~ g f16 e f=''4~ | \nBreak
  %{ Bar 62 %} f8 e16 d e4~ e16 d e f d8. c=''16 | 
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} c=''4 r4 r2 | \nBreak
  %{ Bar 64 %} r8 a'16 g a g a bes c bes c d c d c d=''' | \nBreak
  %{ Bar 65 %} bes8 f aes d r8 ees, g c=''' | \nBreak
  %{ Bar 66 %} r8 d,8 f bes r4 c,=''4~ |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} c8 d, f bes d=''2~ | \nBreak
  %{ Bar 68 %} d8 e, g c e=''2~ | \nBreak
  %{ Bar 69 %} e8 f, a d f4~ f16 e f e='' | \nBreak
  %{ Bar 70 %} f4~ f16 e f e f4 r8 d=''8 |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} e8 g c, e a16 g f g e8. f=''16 | \nBreak
  %{ Bar 72 %} f8 f, a c f c d c16 bes=' | \nBreak
  %{ Bar 73 %} a g f g a b a b c d e c f e f g='' | \nBreak
  %{ Bar 74 %} e16 f g f g f g f g c, f e f e f e='' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} f16 b, e d e d e d e a, a' g f e d c='' | \nBreak
  %{ Bar 76 %} b16 a g a b c d e f8. g16 d8. c=''16 | \nBreak
  %{ Bar 77 %} c8 r8 r4 r8 d16 ees d c bes a=' | \nBreak
  %{ Bar 78 %} bes8 d e f g a16 bes a g f e='' | \nBreak
  %{ Bar 79 %} f16 d bes' c bes a g f e8 c,8 e g=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} bes8 c16 d c bes a g a8 f a c='' | \nBreak
  %{ Bar 81 %} ees8 f16 g f ees d c d8 g16 a g f e d='' | \nBreak
  %{ Bar 82 %} c8. d16 e f g a bes (c32 bes a bes c16) g8. f=''16 | \nBreak
  %{ Bar 83 %} f16 e f e d c d c bes (c32 bes a bes c16) g8. f='16 | \nBreak
  %{ Bar 84 %} f8 f a c f=''2 \fermata | 
  \mBreak

  \bar "|." 

  }
}



ViolinoTwoNotes = \new Voice { \relative c' {
  \clef treble
  \key f \major  
  \time 4/4
  
  %Bars 1-4
  %{ Bar 1 %} r8 c8 f g f a16 g a g a g=' | \nBreak
  %{ Bar 2 %} f8 c f16 g a f g8 c c b=' | \nBreak
  %{ Bar 3 %} c16 d c d e4 ~ e8 d16 c d=''4 ~ | \nBreak
  %{ Bar 4 %} d8 c16 b c4 ~ c16 d c bes a g f e=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} d4 r8 f'8 b, c16 d b8. c=''16  | \nBreak
  %{ Bar 6 %} g8 r8 r4 r8 fis8 g a=' | \nBreak
  %{ Bar 7 %} g8 bes g a bes c d e='' | \nBreak
  %{ Bar 8 %} a,8 d16 ees d c bes a g8 g, c e!=' | \nBreak
  %{ Bar 9 %} g8 a16 bes a8 g f c f a=' |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} c8 d16 ees d8 c bes d16 ees d8 bes=' | \nBreak
  %{ Bar 11 %} g8. a16 bes a g f e8 f16 g e8. f=' 16 | \nBreak
  %{ Bar 12 %} f8 a bes d, d16 e f g e8. f='16 |  \nBreak
  %{ Bar 13 %} f4 r8 c8 d a bes c=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} f8 c'16 d c d c d c=''4 r4 | \nBreak
  %{ Bar 15 %} r8 g'16 f g f g f e d e d e d e d='' | \nBreak
  %{ Bar 16 %} c16 b c b c d e8~ e d16 c d=''4~ | \nBreak
  %{ Bar 17 %} d2 c16 b c d g,8 g=' |
  \mBreak    

  %Bars 18-21
  %{ Bar 18 %} g8 e fis g a fis g a=' | \nBreak
  %{ Bar 19 %} d,='4 r4 r2 | \nBreak
  %{ Bar 20 %} R1 | \nBreak
  %{ Bar 21 %} r16 a'16 bes c d4~ d8 c16 bes c=''4~ |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} c8 bes16 a bes4~ bes16 c bes aes g f ees d=' | \nBreak
  %{ Bar 23 %} c4 r8 ees'8 a, bes16 c a8. \trill f='16 | \nBreak
  %{ Bar 24 %} f='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} r8 g16 f g a g f e d cis d e d e cis=' | 
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} d8 a d f d f16 e f e f e=' | \nBreak
  %{ Bar 28 %} d8 f16 e d e f d e8 a f bes=' | \nBreak
  %{ Bar 29 %} a8 e a cis e cis d e='' | \nBreak
  %{ Bar 30 %} a,8 a, d fis a fis' g a='' | 
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} d,8 c d bes a e a16 b cis d='' | \nBreak
  %{ Bar 32 %} e4 r8 e8~ e16 a, d e cis8. d=''16 | \nBreak
  %{ Bar 33 %} d=''4 r4 r2 | \nBreak
  %{ Bar 34 %} r8 g,8 f e d c b g= | 
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c8 e'16 d e d e f g f g a g a g a='' | \nBreak
  %{ Bar 36 %} f4 r8 a,8 a bes r8 g=' | \nBreak
  %{ Bar 37 %} g8 a r8 f8 f g=' r4 | \nBreak
  %{ Bar 38 %} a='1 |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} b='1 | \nBreak
  %{ Bar 40 %} c2 r8 c,8 fis a=' | \nBreak
  %{ Bar 41 %} c8 fis, a c c ees a, d='' | \nBreak
  %{ Bar 42 %} d4 r8 b8 g a16 b b8. g='16 |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} g8 g, c d c e16 d e d e d=' | \nBreak
  %{ Bar 44 %} c8 e16 d c d e c d8 g g fis=' | \nBreak
  %{ Bar 45 %} g b, d g b e16 d c8 b=' | \nBreak
  %{ Bar 46 %} a8 cis, e a cis cis d g,=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} a4 r8 e8 a8. b16 gis8. a='16 | \nBreak
  %{ Bar 48 %} a4 r4 r2 | \nBreak
  %{ Bar 49 %} R1 | \nBreak
  %{ Bar 50 %} r8 cis16 b cis d e cis d e fis g a g fis a='' |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} d,16 c d ees d c bes a g ees' d c bes8 \trill a16 g=' | \nBreak
  %{ Bar 52 %} g8 d g a g bes16 a bes a bes a=' | \nBreak
  %{ Bar 53 %} g='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} R1|
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} R1 | \nBreak
  %{ Bar 56 %} R1 | \nBreak
  %{ Bar 57 %} r8 c,8 f g f a16 g a g a g=' | \nBreak
  %{ Bar 58 %} f4 r8 c8 d a bes c=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} f8 c'16 d c d c d c=''4 r4 | \nBreak
  %{ Bar 60 %} r8 g'16 f g f g f e d e d e d e d='' | \nBreak
  %{ Bar 61 %} c16 b c b c d e8~ e d16 c d=''4~ | \nBreak
  %{ Bar 62 %} d2 c16 b c d g,8 g=' |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} g='4 r4 r2 | \nBreak
  %{ Bar 64 %} r8 c16 bes c bes c d ees d ees f ees f ees f='' | \nBreak
  %{ Bar 65 %} d8 d f aes r8 bes, ees g='' | \nBreak
  %{ Bar 66 %} r8 a, d f r4 a,='4~ |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} a8 bes, d f bes='2~ | \nBreak
  %{ Bar 68 %} bes8 c, e g c=''2~ | \nBreak
  %{ Bar 69 %} c8 d, f a d4~ d16 c d c='' | \nBreak
  %{ Bar 70 %} d4~ d16 c d c b4 r8 b='8 |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} g8 e' g, c f16 e d e c8. c=''16 | \nBreak
  %{ Bar 72 %} c8 c, f g f a16 g a g a g=' | \nBreak
  %{ Bar 73 %} f8 c f16 g a f g8 c c bes=' | \nBreak
  %{ Bar 74 %} c16 d c d e4~ e8 d16 c d4~ |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} d8 c16 b c4~ c16 d c bes a g f e=' | \nBreak
  %{ Bar 76 %} d4 r8 f'8 b, c16 d b8. g='16 | \nBreak
  %{ Bar 77 %} g8 r8 r4 r8 fis g a=' | \nBreak
  %{ Bar 78 %} d,8 bes' g a bes c d e='' | \nBreak
  %{ Bar 79 %} a,8 d16 ees d c bes a g8 g, c e!=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} g8 a16 bes a8 g f c f a=' | \nBreak
  %{ Bar 81 %} c8 d16 ees d8 c bes d16 ees d8 bes=' | \nBreak
  %{ Bar 82 %} g8. a16 bes a g f e8 f16 g e8. f='16 | \nBreak
  %{ Bar 83 %} f8 a bes d, d16 e f g e8. f='16 | \nBreak
  %{ Bar 84 %} f8 c f a c=''2 \fermata |
  \mBreak

  \bar "|." 

  }
}

ViolaNotes = \new Voice { \relative c' {
  \clef alto
  \key f \major  
  \time 4/4
  
  %Bars 1-4
  %{ Bar 1 %} r8 a8 c e a, f'16 e d8 e=' | \nBreak
  %{ Bar 2 %} c8 a c f e16 f g a f8 g=' | \nBreak
  %{ Bar 3 %} g g e d c a' d, c=' | \nBreak
  %{ Bar 4 %} b8 g' c, bes a c f a=' |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} g4 r8 g8 d e16 f g8 d=' | \nBreak
  %{ Bar 6 %} e r8 r4 r8 d8 g, d'=' | \nBreak
  %{ Bar 7 %} d r8 r4 r8 e d a'=' | \nBreak
  %{ Bar 8 %} a,8 bes c d g, e g c=' | \nBreak
  %{ Bar 9 %} c,8 e' f g c, a c f=' |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} f,8 a' bes c f, bes16 c bes8 g=' | \nBreak
  %{ Bar 11 %} e8. f16 g a bes g c4 ~ c16 bes c bes=' | \nBreak
  %{ Bar 12 %} a8 f f f g c, c8. c='16 | \nBreak
  %{ Bar 13 %} a4 r8 c8 d a bes c=' |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} f,8 a'16 bes a bes a bes a='4 r4 | \nBreak
  %{ Bar 15 %} r8 e'16 d e d e d c b c b a8 b=' | \nBreak
  %{ Bar 16 %} g16 f e d c8 c' c=''2 | \nBreak
  %{ Bar 17 %} b4 g4~ g16 e a g f e f d=' |
  \mBreak  

  %Bars 18-21
  %{ Bar 18 %} e4 r4 r8 d16 c bes8 a= | \nBreak
  %{ Bar 19 %} g= 4 r4 r2 | \nBreak
  %{ Bar 20 %} R1 | \nBreak
  %{ Bar 21 %} r8 f'8 d c bes g' c, bes= |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} a8 f' bes, a g bes ees g=' | \nBreak
  %{ Bar 23 %} f4 r8 f8 c8 d16 ees f8 c=' | \nBreak
  %{ Bar 24 %} d='4 r4 r2 | \nBreak
  %{ Bar 25 %} R1 | \nBreak
  %{ Bar 26 %} R1 |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} r8 f,8 a cis f d d a= | \nBreak
  %{ Bar 28 %} a8 f a d a e' d g=' | \nBreak
  %{ Bar 29 %} e cis e a a, a'16 g f8 e=' | \nBreak
  %{ Bar 30 %} d8 d, a' d d, d''16 c d8 d,=' |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} g8 fis d g e cis e a=' | \nBreak
  %{ Bar 32 %} a4 r8 a8~ a a a e=' | \nBreak
  %{ Bar 33 %} f='4 r4 r2 | \nBreak
  %{ Bar 34 %} r8 g8 f e d c b g= |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c='4 r4 r2 | \nBreak
  %{ Bar 36 %} r4 r8 ees8 ees d r8 d='8 | \nBreak
  %{ Bar 37 %} d8 c r8 c c e=' r4 | \nBreak
  %{ Bar 38 %} f='1 |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} g='1 | \nBreak
  %{ Bar 40 %} a2 r8 a,8 c fis=' | \nBreak
  %{ Bar 41 %} a8 c, fis a a c fis, a=' | \nBreak
  %{ Bar 42 %} b4 r8 g8 c, c g' d=' |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} e8 e, g b e, c'16 b a8 b= | \nBreak
  %{ Bar 44 %} g8 e g c g' d c d=' | \nBreak
  %{ Bar 45 %} d8 g, b d gis gis a b=' | \nBreak
  %{ Bar 46 %} e,8 a, cis e g a16 bes a g f e=' |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} d4 r8 e8 e f b, e=' | \nBreak
  %{ Bar 48 %} c='4 r4 r2 | \nBreak
  %{ Bar 49 %} R1| \nBreak
  %{ Bar 50 %} R1|
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} R1| \nBreak
  %{ Bar 52 %} r8 bes8 d fis bes g g d=' | \nBreak
  %{ Bar 53 %} d='8 r8 r4 r2 | \nBreak
  %{ Bar 54 %} R1|
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} R1 | \nBreak
  %{ Bar 56 %} R1 | \nBreak
  %{ Bar 57 %} r8 a8 c e a, f'16 e d8 e=' | \nBreak
  %{ Bar 58 %} c4 r8 c8 d a bes c=' |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} f,8 a'16 bes a bes a bes a='4 r4 | \nBreak
  %{ Bar 60 %} r8 e'16 d e d e d c b c b a8 b=' | \nBreak
  %{ Bar 61 %} g16 f e d c8 c' c=''2 | \nBreak
  %{ Bar 62 %} b4 g4~ g16 e a g f e f d=' |
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} e='4 r4 r2 | \nBreak
  %{ Bar 64 %} r8 f8 ees d c bes a f= | \nBreak
  %{ Bar 65 %} bes8 aes' d f r8 g,8 c ees='' | \nBreak
  %{ Bar 66 %} r8 f,8 bes d r4 f,='4~ |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} f8 f, bes d g='2~ | \nBreak
  %{ Bar 68 %} g8 g, c e a='2~ | \nBreak
  %{ Bar 69 %} a8 a, d f aes4~ aes16 g aes g=' | \nBreak
  %{ Bar 70 %} aes4~ aes16 g aes f g4 r8 g='8 |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} c,8 c' e, g c d16 c bes a bes g=' | \nBreak
  %{ Bar 72 %} a8 a, c e a, f'16 e d8 e=' | \nBreak
  %{ Bar 73 %} c8 a c f e16 f g a f8 g=' | \nBreak
  %{ Bar 74 %} g8 g e d c a' d, c=' |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} b8 g' c, bes a c f a=' | \nBreak
  %{ Bar 76 %} g4 r8 g8 d e16 f g8 d=' | \nBreak
  %{ Bar 77 %} e8 r8 r4 r8 d8 g, d'=' | \nBreak
  %{ Bar 78 %} g8 r8 r4 r8 e8 d a'=' | \nBreak
  %{ Bar 79 %} a,8 bes c d g,8 e g c=' |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} c,8 e' f g c, a c f=' | \nBreak
  %{ Bar 81 %} f,8 a' bes c f, bes16 c bes8 g=' | \nBreak
  %{ Bar 82 %} e8. f16 g a bes g c4~ c16 bes c bes=' | \nBreak
  %{ Bar 83 %} a8 f f f g c, c8. c='16 | \nBreak
  %{ Bar 84 %} c8 a c f a='2 \fermata |
  \mBreak

  \bar "|." 

  }
}

VioloncelloNotes = \new Voice { \relative c {
  \clef bass
  \key f \major  
  \time 4/4

  %Bars 1-4
  %{ Bar 1 %} f4 r8 c d a bes c= | \nBreak
  %{ Bar 2 %} f,8 f'16 e f e f d e8 c d g,=, | \nBreak
  %{ Bar 3 %} c8 e c b a d b a=, | \nBreak
  %{ Bar 4 %} g8 c a g f4 r8 f'= 8~ |
  \mBreak

  %Bars 5-9
  %{ Bar 5 %} f16 g f e d c b a g8 c g' g,=, | \nBreak
  %{ Bar 6 %} c8 r8 r4 r8 d e fis= | \nBreak
  %{ Bar 7 %} g16 d g a g f e d c8 a bes c= | \nBreak
  %{ Bar 8 %} d8 g, a bes c c,= , r4 | \nBreak
  %{ Bar 9 %} r8 c'8 d e f f,=, r4 |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} r8 f' g a bes16 f bes a bes a bes a=  | \nBreak
  %{ Bar 11 %} bes16 c bes a g f e d c8 f c' c,= | \nBreak
  %{ Bar 12 %} d16 c d c bes a bes a g8 f c' c,=, | \nBreak
  %{ Bar 13 %} f=,4 r4 r2 |
  \mBreak

  %Bars 14-17
  %{ Bar 14 %} r8 f8 a c f d a bes=, | \nBreak
  %{ Bar 15 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 16 %} c,8 g' c c, f a d d,=, | \nBreak
  %{ Bar 17 %} g b e e, a f' g g,=, |
  \mBreak  

  %Bars 18-21
  %{ Bar 18 %} c8 c'16 d c bes a g fis8 d e fis= | \nBreak
  %{ Bar 19 %} g4 r4 r8 a,8 b cis= | \nBreak
  %{ Bar 20 %} d16 e d c bes a g f e8 c' d e= | \nBreak
  %{ Bar 21 %} f8 d bes a g c a g=, |
  \mBreak

  %Bars 22-26
  %{ Bar 22 %} f8 bes g f ees4 r8 ees'= 8~ | \nBreak 
  %{ Bar 23 %} ees16 f ees d c bes a g f8 bes f' f, =, | \nBreak
  %{ Bar 24 %} bes8 bes' c d ees a, bes c =' | \nBreak
  %{ Bar 25 %} d8 g, a bes c f, g a= | \nBreak
  %{ Bar 26 %} bes8 e, f g a e cis a=, |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} d4 r8 a8 bes f g a=, | \nBreak
  %{ Bar 28 %} d,8 d'16 cis d cis d bes c8 a bes g=, | \nBreak
  %{ Bar 29 %} a8 a' r4 r8 a,8 b cis= | \nBreak
  %{ Bar 30 %} d,8 d' r4 r8 d8 e fis= |
  \mBreak

  %Bars 31-34
  %{ Bar 31 %} g8 a bes g a bes16 a g f e d= | \nBreak
  %{ Bar 32 %} cis16 d e d cis b a g f8 d' a' a,=, | \nBreak
  %{ Bar 33 %} d= 4 r4 r2 | \nBreak
  %{ Bar 34 %} g,=,4 r4 r2 |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c8 c' bes a g f e c= | \nBreak
  %{ Bar 36 %} f8 c16 bes c bes c d ees f bes, a bes a bes c= | \nBreak
  %{ Bar 37 %} d16 e a, g a g a bes c8 g e c=, | \nBreak
  %{ Bar 38 %} f16 c' f e f e f e d8 a f d=, |
  \mBreak

  %Bars 39-42  
  %{ Bar 39 %} g16 d' g f g f g f e8 b g e=, | \nBreak
  %{ Bar 40 %} a16 e' a g a g a g fis8 ees' c a= | \nBreak
  %{ Bar 41 %} fis8 c' a fis d a fis d=, | \nBreak
  %{ Bar 42 %} f'4 r8 f8 e f g g,=, | 
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 44 %} c,8 c'16 b c b c a b8 g a d,=, | \nBreak
  %{ Bar 45 %} g8 g' r4 r8 e,8 fis gis=, | \nBreak
  %{ Bar 46 %} a8 a' r4 r8 a,8 d e= |
  \mBreak

  %Bars 47-50
  %{ Bar 47 %} f8 e16 d c b a gis a8 d e e,=, | \nBreak
  %{ Bar 48 %} a8 a' bes c d g, a bes= | \nBreak
  %{ Bar 49 %} c8 f, g a bes e, f g= | \nBreak
  %{ Bar 50 %} a8 g f e d c bes a=, |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} g8 bes c d ees c d d,=, | \nBreak
  %{ Bar 52 %} g4 r8 d'8 ees bes c d= | \nBreak
  %{ Bar 53 %} g,8 g' a bes c f, g a= | \nBreak
  %{ Bar 54 %} bes8 e, f g a d, e f= |
  \mBreak

  %Bars 55-58
  %{ Bar 55 %} g8 f e d c bes a g=, | \nBreak
  %{ Bar 56 %} f8 a bes c d bes c c,=, | \nBreak
  %{ Bar 57 %} f4 r8 c'8 d a bes c= | \nBreak
  %{ Bar 58 %} f,=,4 r4 r2 | 
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} r8 f8 a c f d  a bes=, | \nBreak
  %{ Bar 60 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 61 %} c,8 g' c c, f a d d,=, | \nBreak
  %{ Bar 62 %} g8 b e e, a f' g g,=, | 
  \mBreak

  %Bars 63-66
  %{ Bar 63 %} c= 4 r4 r2 | \nBreak
  %{ Bar 64 %} f,=,4 r4 r2 | \nBreak 
  %{ Bar 65 %} bes8 f'16 ees f ees f g aes bes ees, d ees d ees f= | \nBreak
  %{ Bar 66 %} g16 a d, c d c d ees f8 c a f=, |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} bes16 f' bes a bes a bes a g8 d bes g=, | \nBreak
  %{ Bar 68 %} c16 g' c bes c bes c bes a8 e c a=, | \nBreak
  %{ Bar 69 %} d16 a' d c d c d c b8 aes f d= | \nBreak
  %{ Bar 70 %} b8 f' d b g d' b g=, |
  \mBreak

  %Bars 71-74
  %{ Bar 71 %} bes'4 r8 bes,8 a bes c c,=, | \nBreak
  %{ Bar 72 %} f4 r8 c'8 d a bes c= | \nBreak
  %{ Bar 73 %} f,8 f'16 e f e f d e8 c d g,=, | \nBreak
  %{ Bar 74 %} c8 e c b a d b a=, | 
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} g8 c a g f4 r8 f'= 8~ | \nBreak
  %{ Bar 76 %} f16 g f e d c b a g8 c g' g,=, | \nBreak
  %{ Bar 77 %} c8 r8 r4 r8 d8 e fis= | \nBreak
  %{ Bar 78 %} g16 d g a g f e d c8 a bes c= | \nBreak
  %{ Bar 79 %} d8 g, a bes c c,=, r4 |
  \mBreak

  %Bars 80-84
  %{ Bar 80 %} r8 c'8 d e f f,=, r4 | \nBreak
  %{ Bar 81 %} r8 f'8 g a bes16 bes, bes' a bes a bes a= | \nBreak
  %{ Bar 82 %} bes16 c bes a g f e d c8 f c' c,= | \nBreak
  %{ Bar 83 %} d16 c d c bes a bes a g8 f c' c,=, | \nBreak
  %{ Bar 84 %} f8 f16 (f) f (f f f) f2 \fermata |
  \mBreak

  \bar "|." 

  }
}

ContinuoNotes = \new Voice { \relative c {
  \clef bass
  \key f \major  
  \time 4/4
 
  %Bars 1-4
  %{ Bar 1 %} f4 r8 c d a bes c= | \nBreak
  %{ Bar 2 %} f,8 f'16 e f e f d e8 c d g,=, | \nBreak
  %{ Bar 3 %} c8 e c b a d b a=, | \nBreak
  %{ Bar 4 %} g8 c a g f4 r8 f'= 8~ | 
  \mBreak
  \noTurnPage

  %Bars 5-9
  %{ Bar 5 %} f16 g f e d c b a g8 c g' g,=, | \nBreak
  %{ Bar 6 %} c8 r8 r4 r8 d e fis= | \nBreak
  %{ Bar 7 %} g8 r8 r4 r8 a, bes c= | \nBreak
  %{ Bar 8 %} d8 g, a bes c c,= , r4 | \nBreak
  %{ Bar 9 %} r8 c'8 d e f f,=, r4 |
  \mBreak

  %Bars 10-13
  %{ Bar 10 %} r8 f' g a bes16 f bes a bes a bes a=  | \nBreak
  %{ Bar 11 %} bes16 c bes a g f e d c8 f c' c,= | \nBreak
  %{ Bar 12 %} d16 c d c bes a bes a g8 f c' c,=, | \nBreak
  %{ Bar 13 %} f=,4 r4 r2 |
  \mBreak
  \noTurnPage

  %Bars 14-17
  %{ Bar 14 %} r8 f8 a c f d a bes=, | \nBreak
  %{ Bar 15 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 16 %} c,8 g' c c, f a d d,=, | \nBreak
  %{ Bar 17 %} g b e e, a f' g g,=, |
  \mBreak  

  %Bars 18-21
  %{ Bar 18 %} c4 r4 r8 d8 e fis= | \nBreak
  %{ Bar 19 %} g4 r4 r8 a,8 b cis= | \nBreak
  %{ Bar 20 %} d16 e d c bes a g f e8 c' d e= | \nBreak
  %{ Bar 21 %} f8 d bes a g c a g=, |
  \mBreak
  \noTurnPage

  %Bars 22-26
  %{ Bar 22 %} f8 bes g f ees4 r8 ees'= 8~ | \nBreak
  %{ Bar 23 %} ees16 f ees d c bes a g f8 bes f' f, =, | \nBreak
  %{ Bar 24 %} bes8 bes' c d ees a, bes c =' | \nBreak
  %{ Bar 25 %} d8 g, a bes c f, g a= | \nBreak
  %{ Bar 26 %} bes8 e, f g a e cis a=, |
  \mBreak

  %Bars 27-30
  %{ Bar 27 %} d4 r8 a8 bes f g a=, | \nBreak
  %{ Bar 28 %} d,8 d'16 cis d cis d bes c8 a bes g=, | \nBreak
  %{ Bar 29 %} a8 a' r4 r8 a,8 b cis= | \nBreak
  %{ Bar 30 %} d,8 d' r4 r8 d8 e fis= |
  \mBreak
  \noTurnPage

  %Bars 31-34
  %{ Bar 31 %} g8 a bes g a bes16 a g f e d= | \nBreak
  %{ Bar 32 %} cis16 d e d cis b a g f8 d' a' a,=, | \nBreak
  %{ Bar 33 %} d= 4 r4 r2 | \nBreak
  %{ Bar 34 %} g,=,4 r4 r2 |
  \mBreak

  %Bars 35-38
  %{ Bar 35 %} c8 c' bes a g f e c= | \nBreak
  %{ Bar 36 %} f8 c16 bes c bes c d ees f bes, a bes a bes c= | \nBreak
  %{ Bar 37 %} d16 e a, g a g a bes c8 g e c=, | \nBreak
  %{ Bar 38 %} f16 c' f e f e f e d8 a f d=, |
  \mBreak
  \noTurnPage

  %Bars 39-42  
  %{ Bar 39 %} g16 d' g f g f g f e8 b g e=, | \nBreak
  %{ Bar 40 %} a16 e' a g a g a g fis8 ees' c a= | \nBreak
  %{ Bar 41 %} fis8 c' a fis d a fis d=, | \nBreak
  %{ Bar 42 %} f'4 r8 f8 e f g g,=, |
  \mBreak

  %Bars 43-46
  %{ Bar 43 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 44 %} c,8 c'16 b c b c a b8 g a d,=, | \nBreak
  %{ Bar 45 %} g8 g' r4 r8 e,8 fis gis=, | \nBreak
  %{ Bar 46 %} a8 a' r4 r8 a,8 d e= |
  \mBreak
  \noTurnPage

  %Bars 47-50
  %{ Bar 47 %} f8 e16 d c b a gis a8 d e e,=, | \nBreak
  %{ Bar 48 %} a8 a' bes c d g, a bes= | \nBreak
  %{ Bar 49 %} c8 f, g a bes e, f g= | \nBreak
  %{ Bar 50 %} a8 g f e d c bes a=, |
  \mBreak

  %Bars 51-54
  %{ Bar 51 %} g8 bes c d ees c d d,=, | \nBreak
  %{ Bar 52 %} g4 r8 d'8 ees bes c d= | \nBreak
  %{ Bar 53 %} g,8 g' a bes c f, g a= | \nBreak
  %{ Bar 54 %} bes8 e, f g a d, e f= |
  \mBreak
  \noTurnPage

  %Bars 55-58
  %{ Bar 55 %} g8 f e d c bes a g=, | \nBreak
  %{ Bar 56 %} f8 a bes c d bes c c,=, | \nBreak
  %{ Bar 57 %} f4 r8 c'8 d a bes c= | \nBreak
  %{ Bar 58 %} f,=,4 r4 r2 |
  \mBreak

  %Bars 59-62
  %{ Bar 59 %} r8 f8 a c f d  a bes=, | \nBreak
  %{ Bar 60 %} c4 r8 g8 a e f g=, | \nBreak
  %{ Bar 61 %} c,8 g' c c, f a d d,=, | \nBreak
  %{ Bar 62 %} g8 b e e, a f' g g,=, |
  \mBreak
  \noTurnPage

  %Bars 63-66
  %{ Bar 63 %} c= 4 r4 r2 | \nBreak
  %{ Bar 64 %} f,=,4 r4 r2 | \nBreak
  %{ Bar 65 %} bes8 f'16 ees f ees f g aes bes ees, d ees d ees f= | \nBreak
  %{ Bar 66 %} g16 a d, c d c d ees f8 c a f=, |
  \mBreak

  %Bars 67-70
  %{ Bar 67 %} bes16 f' bes a bes a bes a g8 d bes g=, | \nBreak
  %{ Bar 68 %} c16 g' c bes c bes c bes a8 e c a=, | \nBreak
  %{ Bar 69 %} d16 a' d c d c d c b8 aes f d= | \nBreak
  %{ Bar 70 %} b8 f' d b g d' b g=, |
  \mBreak
  \noTurnPage

  %Bars 71-74
  %{ Bar 71 %} bes'4 r8 bes,8 a bes c c,=, | \nBreak
  %{ Bar 72 %} f4 r8 c'8 d a bes c= | \nBreak
  %{ Bar 73 %} f,8 f'16 e f e f d e8 c d g,=, | \nBreak
  %{ Bar 74 %} c8 e c b a d b a=, |
  \mBreak

  %Bars 75-79
  %{ Bar 75 %} g8 c a g f4 r8 f'= 8~ | \nBreak
  %{ Bar 76 %} f16 g f e d c b a g8 c g' g,=, | \nBreak
  %{ Bar 77 %} c8 r8 r4 r8 d8 e fis= | \nBreak
  %{ Bar 78 %} g8 r8 r4 r8 a,8 bes c= | \nBreak
  %{ Bar 79 %} d8 g, a bes c c,=, r4 |
  \mBreak
  \noTurnPage

  %Bars 80-84
  %{ Bar 80 %} r8 c'8 d e f f,=, r4 | \nBreak
  %{ Bar 81 %} r8 f'8 g a bes16 bes, bes' a bes a bes a= | \nBreak
  %{ Bar 82 %} bes16 c bes a g f e d c8 f c' c,= | \nBreak
  %{ Bar 83 %} d16 c d c bes a bes a g8 f c' c,=, | \nBreak
  %{ Bar 84 %} f8 f16 (f) f (f f f) f2 \fermata |
  \mBreak

  \bar "|."   

  }
}


music =  {
	<<
		\tag #'score \tag #'CornoOnePart \new Staff { << 
			\set Staff.midiInstrument = "french horn"  
			\global \set Staff.instrumentName = \markup { 
				\center-align {
					 \hcenter-in # centerIndent  "Corno I." 
				}
		 	 } \CornoOneNotes >> 
		} 
		
		\tag #'score \tag #'CornoTwoPart \new Staff { << 
			\set Staff.midiInstrument = "french horn"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent  "Corno II." 
				}
		  	}\CornoTwoNotes >> 
		} 
		
		\tag #'score \tag #'OboeOnePart \new Staff { << 
			\set Staff.midiInstrument = "oboe"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent  "Oboe I." 
				}
			}\OboeOneNotes >> 
		} 

		\tag #'score \tag #'OboeTwoPart \new Staff { << 
			\set Staff.midiInstrument = "oboe"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Oboe II."
				}
			}\OboeTwoNotes >>
		 } 
	
		 \tag #'score \tag #'OboeThreePart \new Staff { << 
			\set Staff.midiInstrument = "oboe"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Oboe III."
				}
			}\OboeThreeNotes >>
		 } 

		\tag #'score \tag #'FagottoPart \new Staff { << 
			\set Staff.midiInstrument = "bassoon"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Fagotto."
				}
			}\FagottoNotes >>
		 } 

		\tag #'score \tag #'ViolinoPiccoloPart \new Staff { << 
			\set Staff.midiInstrument = "violin"  
			\global \set Staff.instrumentName = \markup {
				\column { 
					\center-align { \hcenter-in # centerIndent  "Violino" 
						\line { \hcenter-in # centerIndent "piccolo." }
					}
				} 
			}\ViolinoPiccoloNotes >>
		 } 

		\tag #'ViolinoPiccoloOriginalPart \new Staff { << 
			\set Staff.midiInstrument = "violin"  
			\global \set Staff.instrumentName = \markup {
				\column { 
					\center-align { \hcenter-in # centerIndent  "Violino" 
						\line { \hcenter-in # centerIndent "piccolo." }
						\line { \hcenter-in # centerIndent "(in Eb)" }
					}
				} 
			}\ViolinoPiccoloOriginalNotes >>
		 } 


		\tag #'score \tag #'ViolinoOnePart \new Staff { << 
			\set Staff.midiInstrument = "violin"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Violino I."
				}
			}\ViolinoOneNotes >>
		 } 

		\tag #'score \tag #'ViolinoTwoPart \new Staff { << 
			\set Staff.midiInstrument = "violin"  
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Violino II."
				}
			}\ViolinoTwoNotes >>
		 } 

		\tag #'score \tag #'ViolaPart \new Staff { << 
			\set Staff.midiInstrument = "viola"
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Viola."
				}
			}\ViolaNotes >>
		 } 

		\tag #'score \tag #'VioloncelloPart \new Staff { << 
			\set Staff.midiInstrument = "cello"
			\global \set Staff.instrumentName = \markup {
				\center-align {
					\hcenter-in # centerIndent "Violoncello."
				}
			}\VioloncelloNotes >>
		 } 

		\tag #'score \tag #'ContinuoPart \new Staff { << 
			\set Staff.midiInstrument = "contrabass"
			\global  \set Staff.instrumentName = \markup { 
				\column { 
					\center-align { \hcenter-in # centerIndent  "Continuo" 
						\line { \hcenter-in # centerIndent "e Violone" }
						\line { \hcenter-in # centerIndent "grosso." }

					}
				} 
			} \ContinuoNotes >>
		}
	
	>>
	}

