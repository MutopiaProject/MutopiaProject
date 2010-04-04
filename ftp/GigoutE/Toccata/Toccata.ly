%% -*- mode: LilyPond-mode ; coding: utf-8 -*-
%% VERSION 0 - Création.

\version "2.12.3"
\include "italiano.ly" 

\header{
  title = \markup {\center-align {\abs-fontsize #17 {\line {Dix pièces pour orgue : Toccata}} }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Eugène Gigout (1844 - 1925)"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "http://imslp.org"
  opus = ""
  lastupdated = "2010-03-13"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Dix Pièces pour orgue : Toccata"
  mutopiacomposer = "GigoutE"
  mutopiainstrument = "Organ"
  style="Symphonic"
  mutopiastyle = "Baroque"

 footer = "Mutopia-2010/04/04-1755"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

slurps= #"
0 setgray
0.8 setlinewidth
0 setlinecap
0 setlinejoin
[] 0.0 setdash
0.06 0.1 scale
-45 -40 translate
4 setmiterlimit
1 0 0 -1 0 106.251991 6 array astore concat
49.387 0.406 moveto
8.512 0.996 -7.484 83.34 10.289 105.852 curveto
-18.148 58.461 20.953 -0.188 49.387 0.406 curveto
closepath
fill
stroke"

slurpsa= #"
0 setgray
0.8 setlinewidth
0 setlinecap
0 setlinejoin
[] 0.0 setdash
0.06 0.13 scale
-58 -35 translate
4 setmiterlimit
1 0 0 -1 0 106.251991 6 array astore concat
49.387 0.406 moveto
8.512 0.996 -7.484 83.34 10.289 105.852 curveto
-18.148 58.461 20.953 -0.188 49.387 0.406 curveto
closepath
fill
stroke"

slurplus = \markup {
  \with-dimensions #'(0 . 0) #'(0 . 0)
  \postscript #slurps 
}

slurplusa = \markup {
  \with-dimensions #'(0 . 0) #'(0 . 0)
  \postscript #slurpsa 
}

  %% macros inspirées d'Urs Metzger
adjustSlash = { \once \override TextScript #'extra-offset = #'( -2 . 5 ) }
halsdown = { \stemDown \tieDown \slurDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral }
halsup = { \stemUp \tieUp \slurUp}
hideBrackets = { \override TupletBracket #'bracket-visibility = ##f }
hideTripletNumber = { \set tupletNumberFormatFunction = #'() }
mmrestdown = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp = { \once \override MultiMeasureRest #'staff-position = #6 }
mmrestuppp = { \once \override MultiMeasureRest #'staff-position = #8 }
mmrestupppp = { \once \override MultiMeasureRest #'staff-position = #10 }
noflag = { \once \override Stem #'flag-style = #'no-flag }
restdownnn = { \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -3.0 ) }
restright = { \once \override Rest #'extra-offset = #'( 4.0 . 0.0 ) }
scriptdown = { \once \override Script #'extra-offset = #'(0 . -1.3) }
scriptdownn = { \once \override Script #'extra-offset = #'(0 . -2.3) }
scriptdownnn = { \once \override Script #'extra-offset = #'(0 . -3.3) }
scriptup = { \once \override Script #'extra-offset = #'(0 . 1.3) }
showBrackets = { \override TupletBracket #'bracket-visibility = ##t }
staffdown = { \change Staff = "basse" \halsup }
staffup = { \change Staff = "dessus" \halsdown }
std = { \change Staff = "basse" }
stu = { \change Staff = "dessus" }

  %% macros inspirées de Roland Goretzki
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations '()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
			     'property-operations operations
			     'context-type context
			     'element element)
		     (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional once)
  (mus:make-context context (make-music 'OverrideProperty
			     'once once
			     'grob-property property
			     'grob-value val
			     'symbol layout)))
#(define* (silun dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Rest 'extra-offset (cons dx dy) once)))

#(define* (silaa dx #:optional once)
  (ly:export (mus:override 'Bottom 'MultiMeasureRest 'staff-position dx once)))


\paper {
  print-page-number = ##t
  %%$%%system-count = 3
  between-system-padding = 4\mm
  between-system-space = 20\mm
  indent = 2\cm
  head-separation = 0\mm
  %%$foot-separation = 4\mm
  page-top-space = 10\mm
  %%$bottom-margin = 6\mm
  top-margin = 10\mm
  foot-separation = 0\mm
  tagline = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

%%$#(set-default-paper-size "letter" 'portrait)
%%$#(set-global-staff-size 19)

global = {
  \key si \minor
  \time 2/4
}

soprano = \relative do'' {
  %%  1 : 
  \global 
  s2^\markup { 
    \translate #'(-24 . 0) \left-column{
      \line{Au \hspace #0.1 \magnify #1.4 {G\super{d} Orgue} \hspace #0.1 et au\hspace #0.3 \magnify #1.4 {Positif} \hspace #0.3 les Fonds de 8 et 4 p. (puis les anches de 8 et 4 p.)}
      \line{Au \hspace #0.1 \magnify #1.4 {Récit,}\hspace #0.1 les Fonds et les Anches de 8 et 4 p.}
      \line{À la\hspace #0.1 \magnify #1.4 {Pédale,}\hspace #0.1 les Fonds de 16, 8, 4 p. (puis les Anches de 16, 8, 4 p.)}
      \hspace # 0.5 \line{\hspace #20 \magnify #1.2 {Allegro}}
      \line{\hspace #21 \super{(*)}\magnify #1.4 {Récit} et \magnify #1.4 {Pos.}}
    }
  }
  re16 s16*3 s4
  sol16 s16*3 s4
  sol16 s16*3 s4
  %%  5 : 
  fad16 s16*3 s4
  fad16 s16*3 s4
  mi16 s16*3 s4
  mi16 s16*3 s4
  fad16 s16*3 s4
  %% 10 : 
  fad16 s16*3 s4
  sol16 s16*3 s4
  sol16 s16*3 s4
  fad16 s16*3 s4
  fad16 s16*3 s4
  %% 15 : 
  dod16 s16*3 s4
  dod16 s16*3 s4
  fad,16 s16*3 s4
  re'16 s16*3 s4
  sol16 s16*3 s4
  %% 20 : 
  sol16 s16*3 s4
  fad16 s16*3 s4
  fad16 s16*3 s4
  mi16 s16*3 s4
  mi16 s16*3 s4
  %% 25 : 
  fad16 s16*3 s4
  fad16 s16*3 s4
  sol16 s16*3 s4
  sol16 s16*3 s4
  fad16 s16*3 s4
  %% 30 : 
  fad16 s16*3 s4
  dod16 s16*3 s4
  dod16 s16*3 s4
  fad,16 s16*3 s4
  la16 s16*3 s4
  %% 35 : 
  red16 s16*3 s4
  mi16  s16*3 s4
  si16  s16*3 s4
  sol'16  s16*3 s4
  re16  s16*3 s4
  %% 40 : 
  la16  s16*3 s4
  si16  s16*3 s4
  si16  s16*3 s4
  re16  s16*3 s4
  lad16  s16*3 s4
  %% 45 : 
  re16  s16*3 s4
  si16  s16*3 s4
  re16  s16*3 s4
  lad16  s16*3 s4
  re16  s16*3 s4
  %% 50 : 
  si16  s16*3 s4
  re16  s16*3 s4
  lad16  s16*3 s4
  sid16  s16*3 s4
  mid16  s16*3 s4
  %% 55 : 
  fadd,16  s16*3 s4
  re'16  s16*3 s4
  sid16 s16*3 s4
  mid16  s16*3 s4
  fadd,16  s16*3 s4
  %% 60 : 
  re'16  s16*3 s4
  sid16  s16*3 \set crescendoText = \markup {   \italic { Cre{ } } }
  \set crescendoSpanner = #'text 
  \override DynamicTextSpanner #'dash-fraction  = #0.3
  \override DynamicLineSpanner #'staff-padding = #2 s4^\<
  soldd16  s16*3 s4
  mid16  s16*3 s4
  soldd16  s16*3 s4
  %% 65 : 
  sid16\! \set crescendoText = \markup {\italic {scen}}
  \set crescendoSpanner = #'text s16^\< s16*2 s4
  soldd16  
  s16*3 s4
  mid16  s16*3 s4
  soldd16  s16*2 s16\!  \once \override TextScript #'extra-offset = #'( 0 . 2 ) s4^\markup{\italic{do}}
  sid16^\markup{Ajoutez les Anches du Positif}  s16*3 s4
  %% 70 : 
  mid16  s16*3 s4
  mid16  s16*3 s4
  mid16  s16*3 s4
  \once \override Script #'extra-offset = #'(0 . 10) 
  s2^\markup {\left-column{
    \line{Ajoutez les Fonds du Gd Orgue}
    \line{  }
  }}
  s2
  %% 75 : 
  s2
  s2
  s2
  s2
  s2
  %% 80 : 
  s2
  s2
  s2
  s2
  s2
  %% 85 : 
  s2
  s2
  s2
  s2
  #(silun 0 -2 #f) r4 dod4 (
  %% 90 : 
  la4 dod4
  re2 ) ~
  re2
  r4 re4 (
  si4 re4
  %% 95 : 
  mib2) ~
  mib2
  r4 mib4 (
  do!4 mib4
  solb2 ) ~
  %% 100 : 
  solb2
  \key sib \minor r4 fa4 (
  solb2 )
  r4 fa4 (
  solb2 )
  %% 105 : 
  r4 fa4 (
  mib4 reb4
  do4 reb4 
  mib4 fa4 
  reb4 ) reb4 (
  %% 110 : 
  mib2 )
  r4 reb4 (
  mib2 )
  r4 reb4 (
  dob4 sib4 
  %% 115 : 
  lab4 sib4 
  dob4 reb4 
  sib4 ) reb4 (
  sib4 reb4 
  mi2 ~
  %% 120 : 
  mi2 
  fa4 ) reb4 (
  sib4 reb4
  mi2 ~
  mi2
  %% 125 : 
  fa4 ) reb4 (
  sib4 reb4
  \bar "||" \key si \minor mi2 ) ~
  mi2 ~
  mi2 ~
  %% 130 : 
  mi2
  %% 131 :
  s2*40
  %% 171 :
  \stemDown \slurUp r8 <lad, lad'>8 ([ <dod dod'>8 <si si'>8 ])
  r8 <dod dod'>8 ([ <mi mi'>8 <re re'>8 ])
  r8 <red red'>8 ([ <fa fa'!>8 <mi mi'>8 ])
  r8 <mid mid'>8 ([ <sol sol'>8 <fad fad'>8 ])
  %% 175 :
  r8 <mid mid'>8 ([ <sol sol'>8 <fad fad'>8 ])
  r8 <mid mid'>8 ([ <sol sol'>8 <fad fad'>8 ])
  r8 <mid mid'>8 ([ <sol sol'>8 <fad fad'>8 ])
  r8 <mid mid'>8 ([ <sol sol'>8 <fad fad'>8 ]
  <mid mid'>8 [ <sol sol'>8 <fad fad'>8 <mid mid'>8 ]
  %% 180 :
  <sol sol'>8 [ <fad fad'>8 <mid mid'>8 <fad fad'>16 ]) r16 
  \tieNeutral <mi sol si>2^\markup{\italic Allargando}_\slurplus ~
  <mi sol si>4. r8
  <sol si dod mi sol>2_\slurplusa ~ 
  <sol si dod mi sol>4. r16 <fad fad'>
  %% 185 :
  \once \override Script #'extra-offset = #'(0 . 0.8) <fad si red fad>2^\fermata \bar ".|."
 
}

alto = \relative do' {
  %%  1 : 
  \global \std\halsdown si16_\markup{\override #'(thickness . -1)
				     \override #'(box-padding . 0.5)
    \left-column{
      \line{\dynamic{p}}
      \line{\rounded-box{ \line{Les Fonds de 8 et 4 p. avec les Anches 8 et 4 p. du récit (boîte fermée)}}}
    }
  }
  \stu si'16 fad16 si16 \halsup fad'16 si,16 lad16 si16 
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup fad'16 si,16 lad16 si16 
  \std\halsdown si,16 \stu si'16 sol16 si16 \halsup mi16 si16 lad16 si16 
  \std\halsdown si,16 \stu si'16 sol16 si16 \halsup mi16 si16 lad16 si16
  %%  5 : 
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 mi,16 si'16 \halsup dod16 si16 lad16 si16 
  \std\halsdown si,16 \stu si'16 mi,16 si'16 \halsup dod16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  %% 10 : 
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 sol16 si16 \halsup mi16 si16 lad16 si16 
  \std\halsdown si,16 \stu si'16 sol16 si16 \halsup mi16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  %% 15 : 
  \halsdown dod,16 \stu fad16 mid16 fad16 \halsup la16 fad16 mid16 fad16 
  \halsdown dod16 \stu mid16 redd16 mid16 \halsup sold16 mid16 redd16 mid16 
  \std\halsdown fad,16 \stu fad'16 dod16 fad16 \halsup fad'16 lad,16 soldd16 lad16 
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup fad'16 si,16 lad16 si16 
  \std\halsdown si,16 \stu si'16 sol16 si16 \halsup mi16 si16 lad16 si16
  %% 20 : 
  \std\halsdown si,16 \stu si'16 sol16 si16 \halsup mi16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 mi,16 si'16 \halsup dod16 si16 lad16 si16 
  \std\halsdown si,16 \stu si'16 mi,16 si'16 \halsup dod16 si16 lad16 si16
  %% 25 : 
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 sol16 si16 \halsup mi16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 sol16 si16 \halsup mi16 si16 lad16 si16
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  %% 30 : 
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup re16 si16 lad16 si16
  \halsdown dod,16 \stu fad16 mid16 fad16 \halsup la16 fad16 mid16 fad16 
  \halsdown dod,16 dod'16 sold16 dod16 \stu\halsup sold'!16 mid16 redd16 mid16 
  \std\halsdown fad,16 \stu fad'16 dod16 fad16 \halsup dod'16 fad,16 mid16 fad16
  \std\halsdown fad,16 \stu fad'16 dod16 fad16 \halsup dod'16 fad,16 mid16 fad16
  %% 35 : 
  \std\halsdown si,16 \stu si'16 fad16 si16 \halsup red16 si16 lad16 si16
  \std\halsdown la,16 \stu red16 si16 red16 \halsup fad'16 fad,16 mid16 fad16 
  \std\halsdown sol,16 \stu mi'16 si16 mi16 \halsup mi'16 sol,16 fad16 sol16 
  \halsdown do,16 \stu sol'16 mi16 sol16 \halsup mi'16 do16 si16 do16 
  \halsdown re,16 \stu sol16 fad16 sol16 \halsup si16 sol16 fad16 sol16 
  %% 40 : 
  \std\halsdown re,16 \stu re'16 \std la16 \stu re16 \halsup do'16 fad,16 mid16 fad16 
  \std\halsdown sol,16 \stu sol'16 re16 sol16 \halsup lad16 sol16 fad16 sol16 
  \std\halsdown sol,16 \stu sol'16 re16 sol16 \halsup dod16 sol16 fad16 sol16 
  \std\halsdown si,16 \stu re16 dod16 re16 \halsup si'16 mid,16 redd16 mid16 
  \std\halsdown si16 \stu re16 dod16 re16 \halsup si'16 mid,16 redd16 mid16 
  %% 45 : 
  \std\halsdown si16 \stu re16 dod16 re16 \halsup lad'16 fad16 mid16 fad16
  \std\halsdown si,16 \stu re16 dod16 re16 \halsup dod'16 fad,16 mid16 fad16
  \std\halsdown si,16 \stu re16 dod16 re16 \halsup si'16 sold16 fadd16 sold16
  \std\halsdown si,16 \stu re16 dod16 re16 \halsup si'16 sold16 fadd16 sold16  
  \std\halsdown si,16 \stu re16 dod16 re16 \halsup lad'16 fad16 mid16 fad16 
  %% 50 : 
  \std\halsdown si,16 \stu re16 dod16 re16 \halsup dod'16 fad,16 mid16 fad16
  \std\halsdown si,16 \stu re16 dod16 re16 \halsup si'16 mid,16 redd16 mid16 
  \std\halsdown si16 \stu re16 dod16 re16 \halsup si'16 mid,16 redd16 mid16 
  \std\halsdown lad,16 \stu fad'16 dod16 fad16 \halsup dod'16 lad16 soldd16 lad16  
  \halsdown dod,16 \stu lad'16 fad16 lad16 \halsup fad'16 dod16 sid16 dod16
  %% 55 : 
  \std\halsdown si,16 \stu mid16 dod16 mid16 \halsup sold16 mid16 redd16 mid16
  \std\halsdown sold,16 \stu mid'16 \std si16 \stu mid16 \halsup dod'16 sold16 fadd16 sold16 
  \std\halsdown lad,16 \stu fad'16 dod16 fad16 \halsup dod'16 lad16 soldd16 lad16 
  \halsdown dod,16 lad'16 fad16 lad16 \stu fad'16 dod16 sid16 dod16 
  \std\halsdown si,16 \stu mid16 dod16 mid16 \halsup sold16 mid16 redd16 mid16 
  %% 60 : 
  \std\halsdown sold,16 \stu mid'16 \std si16 \stu mid16 \halsup dod'16 sold16 fadd16 sold16 
  \std\halsdown lad,16 \stu fad'16 dod16 fad16 \halsup dod'16 lad16 soldd16 lad16 
  \std\halsdown fad,16 dod'16 lad16 dod16 \stu\halsup lad'16 fad16 mid16 fad16 
  \std\halsdown dod,16 lad'16 fad16 lad16 \stu\halsup fad'16 dod16 sid16 dod16 
  \std\halsdown fad,16 dod'16 lad16 dod16 \stu\halsup lad'16 fad16 mid16 fad16 
  %% 65 : 
  \std\halsdown lad,16 \stu fad'16 dod16 fad16 \halsup dod'16 lad16 soldd16 lad16 
  \std\halsdown fad,16 dod'16 lad16 dod16 \stu\halsup lad'16 fad16 mid16 fad16 
  \std\halsdown dod,16 lad'16 fad16 lad16 \stu\halsup fad'16 dod16 sid16 dod16 
  \std\halsdown fad,16 dod'16 lad16 dod16 \stu\halsup lad'16 fad16 mid16 fad16 
  \std\halsdown lad,16 \stu fad'16 dod16 fad16 \halsup dod'16 lad16 soldd16 lad16 
  %% 70 : 
  \halsdown dod,16 lad'16 fad16 lad16 \stu\halsup fad'16 dod16 sid16 dod16 
  \halsdown dod,16 lad'16 fad16 lad16 \stu\halsup fad'16 dod16 sid16 dod16
  \halsdown dod,16 lad'16 fad16 lad16 \halsup fad'16 dod16 sid16 dod16 
  \std\halsdown si,16^\markup{\translate #'(0 . 1) \dynamic{f}} \stu re16 fad16 si16 \halsup si'16 fad16 re16 si16 
  \std\halsdown si,16 \stu re16 fad16 si16 \halsup si'16 fad16 re16 si16 
  %% 75 : 
  \std\halsdown si,16 \stu mi16 sol16 si16 \halsup si'16 sol16 mi16 si16 
  \std\halsdown si,16 \stu mi16 sol16 si16 \halsup si'16 sol16 mi16 si16 
  \std\halsdown si,16 \stu re16 fad16 si16 \halsup si'16 fad16 re16 si16
  \std\halsdown si,16 \stu re16 fad16 si16 \halsup si'16 fad16 re16 si16
  \std\halsdown si,16 \stu dod16 mi16 sol16 \halsup si'16 sol16 mi16 si16 
  %% 80 : 
  \std\halsdown si,16 \stu dod16 mi16 sol16 \halsup si'16 sol16 mi16 si16 
  \std\halsdown si,16 \stu re16 fad16 si16 \halsup si'16 fad16 re16 si16
  \std\halsdown si,16 \stu re16 fad16 si16 \halsup si'16 fad16 re16 si16
  \std\halsdown si,16 \stu mi16 sol16 si16 \halsup si'16 sol16 mi16 si16 
  \std\halsdown si,16 \stu mi16 sol16 si16 \halsup si'16 sol16 mi16 si16 
  %% 85 : 
  \std\halsdown si,16 \stu re16 fad16 si16 \halsup si'16 fad16 re16 si16
  \std\halsdown si,16 \stu re16 fad16 si16 \halsup si'16 fad16 re16 si16
  \std\halsdown dod,16 \stu fad16 la16 dod16 \halsup dod'16 la16 fad16 dod16
  \std\halsdown dod,16 \stu mid16 sold16 dod16 \halsup dod'16 sold16 mid16 dod16
  \std\halsdown fad,,16 la16 dod16 fad16 \stu dod'16 la16 fad16 dod16 
  %% 90 : 
  \std\halsdown fad,16 la16 dod16 fad16 \stu dod'16 la16 fad16 dod16
  \std\halsdown fad,16 la16 re16 fad16 \stu do'16 la16 re,16 la'16 
  \std \clef treble \halsup la,16 re16 fad16 la16 \stu\halsdown do16 la16 re,16 la'16 
  \std\halsup sol,16 si16 re16 sol16 \stu\halsdown re'16 si16 sol16 re16 
  \std\halsup sol,16 si16 re16 sol16 \stu\halsdown re'16 si16 sol16 re16 
  %% 95 : 
  \std\halsup sol,16 sib16 mib16 sol16 \stu\halsdown reb'16 sib!16 mib,!16 sib'16 
  \std\halsup sib,16 mib16 sol16 sib!16 \stu\halsdown reb16 sib!16 mib,!16 sib'16 
  \std\halsup lab,16 do!16 mib16 lab16 \stu\halsdown mib'16 do!16 lab!16 mib!16 
  \std\halsup lab,16 do!16 mib16 lab16 \stu\halsdown mib'16 do16 lab!16 mib!16
  \std\halsup lab,16 do!16 mib16 lab16 \stu\halsdown mib'16 do!16 lab!16 solb16
  %% 100 : 
  \std\halsup mib16 solb16 lab16 do16 \stu\halsdown mib16 do!16 la16 solb16 
  \std\halsup \key sib \minor reb16 fa16 lab16 reb16 \stu\halsdown fa16 reb16 lab16 reb16 
  \std\halsup mib,16 solb16 sibb16 do16 \stu\halsdown mib16 do16 sibb16 solb16
  \std\halsup reb16 fa16 lab16 reb16 \stu\halsdown fa16 reb16 lab16 reb16 
  \std\halsup mib,16 solb16 sibb16 do16 \stu\halsdown mib16 do16 sibb16 solb16 
  %% 105 : 
  \std\halsup reb16 fa16 lab16 reb16 \stu\halsdown fa16 reb16 lab16 reb16 
  \std\halsup sib,16 reb16 solb16 sib16 \stu\halsdown reb16 sib16 solb16 sib16 
  \std\halsup sib,16 reb16 solb16 sib16 \stu\halsdown reb16 sib16 fa16 sib16 
  \std\clef bass fa,16 la16 do16 fa16 \stu fa'16 do16 la16 do16 
  \std fa,,16 sib16 reb16 fa16 \stu reb'16 sib16 fa16 sib16 
  %% 110 : 
  \std\clef treble \halsup do,16 mib16 solb16 la16 \stu\halsdown do16 la!16 solb16 mib16 
  \std\halsup sib16 reb16 solb16 sib16 \stu\halsdown reb16 sib16 fa16 sib16
  \std\halsup do,16 mib16 solb16 la16 \stu\halsdown do16 la!16 solb16 mib16 
  \std\halsup sib16 reb16 solb16 sib16 \stu\halsdown reb16 sib16 fa16 sib16
  \std\clef "bass"  solb,16 sib16 reb16 solb16 \stu sib16 solb16 reb16 solb16 
  %% 115 : 
  \std solb,16 lab16 mib'16 solb16 \stu sib16 solb16 mib16 solb16 
  \std fa,16 lab16 reb16 fa16 \stu reb'16 lab16 fa16 lab16 
  \std solb,16 sib16 reb16 solb16 \stu reb'16 sib16 solb16 reb16 
  \std solb,16 sib16 reb16 solb16 \stu reb'16 sib16 solb16 sib16 
  \std solb,16 sib16 reb16 solb16 \stu reb'16 sib16 solb16 sib16 
  %% 120 : 
  \std solb,16 sib16 reb16 solb16 \stu reb'16 sib16 solb16 sib16 
  \std fa,16 sib16 reb16 fa16 \stu reb'16 sib16 fa16 reb16 
  \std fa,16 sib16 reb16 fa16 \stu reb'16 sib16 fa16 sib16 
  \std solb,16 sib16 reb16 solb16 \stu reb'16 sib16 solb16 sib16 
  \std solb,16 sib16 reb16 solb16 \stu reb'16 sib16 solb16 sib16 
  %% 125 :
  \std fa,16 sib16 reb16 fa16 \stu reb'16 sib16 fa16 reb16 
  \std fa,16 sib16 reb16 fa16 \stu reb'16 sib16 fa16 sib16 
  \std \key si \minor fad,16 lad16 dod16 fad16 \stu dod'16 lad16 fad16 lad16 
  \std fad,16 lad16 dod16 fad16 \stu dod'16 lad16 fad16 lad16
  \std fad,16 lad16 dod16 fad16 \stu dod'16 lad16 fad16 lad16
  %% 130 :
  \std fad,16 lad16 dod16 fad16 \stu dod'16 lad16 fad16 lad16 
  \std fad,16 lad16 dod16 fad16 \stu lad16 dod16 fad16 lad16
  dod16 lad16 fad16 dod16 \std\halsup \clef treble lad16 fad16 dod16 lad16 
  \stu dod'16 lad16 fad16 dod16 \std\halsdown  \clef bass fad,16 lad16 dod16 fad16 
  \stu\halsdown lad16^\markup{Ajoutez les Anches du G\super{d} Orgue}_\markup{\translate #'(-2 . 0) \dynamic{ff}}  si16 do16 re16 mi16 fad16 sold16 lad16 
  %% 135 :
  si16 fad16 re16 si16 lad16 si16 re16 fad16 
  si16 fad16 re16 si16 lad16 si16 re16 fad16 
  si16 sol16 mi16 si16 lad16 si16 mi16 sol16 
  si16 sol16 mi16 si16 lad16 si16 mi16 sol16 
  si16 fad16 re16 si16 lad16 si16 re16 fad16 
  %% 140 :
  si16 fad16 re16 si16 lad16 si16 re16 fad16 
  si16 sol16 mi16 si16 lad16 si16 mi16 sol16
  si16 sol16 mi16 si16 lad16 si16 mi16 sol16 
  si16 fad16 re16 si16 lad16 si16 re16 fad16 
  si16 fad16 re16 si16 lad16 si16 re16 fad16
  %% 145 :
  si16 sol16 mi16 si16 lad16 si16 mi16 sol16
  si16 sol16 mi16 si16 lad16 si16 mi16 sol16 
  si16 fad16 re16 si16 lad16 si16 re16 fad16 
  si16 fad16 re16 si16 lad16 si16 re16 fad16
  dod'16 lad?16 fad16 dod16 sid16 dod16 fad16 lad?16 
  %% 150 :
  dod16 sold16 mid16 dod16 sid16 dod16 mid16 sold16 
  dod16 lad16 fad16 dod16 lad16 si16 dod16 re16 
  mi16 dod16 mi16 dod16 fad16 red16 sol16 mi16
  la16 si16 sol16 si16 fad16 si16 mi,16 si'16
  la16 si16 sol16 si16 fad16 si16 mi,16 si'16
  %% 155 :
  sol16 si16 fad16 si16 mi,16 si'16 re,16 si'16
  sol16 si16 fad16 si16 mi,16 si'16 re,16 si'16
  fad16 si16 mi,16 si'16 re,16 si'16 dod,16 si'16 
  fad16 si16 mi,16 si'16 re,16 si'16 dod,16 si'16 
  sol16 si16 fad16 si16 mi,16 si'16 re,16 si'16
  %% 160 :
  sol16 si16 fad16 si16 mi,16 si'16 re,16 si'16
  la16 si16 sol16 si16 fad16 si16 mi,16 si'16
  la16 si16 sol16 si16 fad16 si16 mi,16 si'16 
  sol16 si16 fad16 si16 mi,16 si'16 re,16 si'16
  sol16 si16 fad16 si16 mi,16 si'16 re,16 si'16
  %% 165 :
  fad16 si16 mi,16 si'16 re,16 si'16 dod,16 si'16 
  fad16 si16 mi,16 si'16 re,16 si'16 dod,16 si'16
  \std\halsup re,,16 ( fad16 mid16 fad16 \stu\halsdown la16 fad16 si16 fad16 ) 
  \std\halsup re16 ( fad16  mid16 fad16 \stu\halsdown do'16 fad,16 dod'16 fad,16 )
  \std\halsup re16 ( fa16 mi16 fa16 \stu\halsdown re'16 sol,16 red'16 sol,16 )
  %% 170 :
  \std\halsup dod,16 ( fad16 mi16 fad16 \stu\halsdown mi'16 dod16 fad16 dod16 )
  \std\halsup #(silun 0 -2 #t) r16 fad,16 mid16 fad16 mid16 fad16 mid16 fad16 
  #(silun 0 -1 #f) r16 sol16 fa16 sol16 fa16 sol16 fa16 sol16 
  r16 sol16 fad!16 sol16 fad16 sol16 fad16 sol16 
  r16 lad16 soldd16 lad16 soldd16 lad16 soldd16 lad16 
  %% 175 :
  r16 si16 lad16 si16 lad16 si16 lad16 si16 
  r16 lad16 soldd16 lad16 soldd16 lad16 soldd16 lad16 
  r16 si16 lad16 si16 lad16 si16 lad16 si16 
  r16 lad16 soldd16 lad16 soldd16 lad16 soldd16 lad16 
  soldd16 lad16 soldd16 lad16 soldd16 lad16 soldd16 lad16 
  %% 180 :
  soldd16 [ lad16 soldd16 lad16 ] soldd16 [ lad16 ] r16 <mi soldd si>16^\markup{\translate #'(-3 . 0) \dynamic{fff}}
  #(silaa 0 #f) R2
  <si mi sol si>4.  #(silun 0 -2 #f) r16 \stemDown <si' dod mi sol>16
  R2
  \stemUp <si, dod mi sol si>4. r8
  %% 185 :
  <red fad si red>2^\fermata
}

tenor = \relative do' {
  %%   1 :
  \global s2*133
   #(silaa 0 #f) R2
  %% 135 :
  R2
  \clef treble\stemUp #(silun 0 +2 #f)   <si re fad>8-. <si re fad>8-. r4
  <si mi sol>8-. <si mi sol>8-. r4
  <si mi sol>8-. <si mi sol>8-. r4
  <si re fad>8-. <si re fad>8-. r4
  %% 140 :
  <si re fad>8-. <si re fad>8-. r4
  <si dod mi>8-. <si dod mi>8-. r4
  <si dod mi>8-. <si dod mi>8-. r4
  <si re fad>8-. <si re fad>8-. r4
  <si re fad>8-. <si re fad>8-. r4
  %% 145 :
  <si mi sol>8-.  <si mi sol>8-.  r4
  <si mi sol>8-.  <si mi sol>8-.  r4
  <si re fad>8-.  <si re fad>8-.  r4
  <si re fad>8-.  <si re fad>8-.  r4
  <la dod fad>8-. <la dod fad>8-. r4
  %% 150 :
  <si dod mid>8-. <si dod mid>8-. r4
  \clef bass \halsdown \slurUp <fad lad>8 ([ <sold si>8 <lad dod>8 <si re>8 ])
  <dod mi>8 ([ <lad dod>8 <si red>8 <dod mi>8 ])
  \clef treble \halsup \slurDown <red fad>8 [( <mi sol>8 ) <fad la>8-. <sol si>8-. ]
  <red fad>8 [( <mi sol>8 ) <fad la>8-. <sol si>8-. ]
  %% 155 :
  <dod, mi>8 [( <re fad>8 ) <mi sol>8-. <fad si>8-. ]
  <dod mi>8 [( <re fad>8 ) <mi sol>8-. <fad si>8-. ]
  <si, re>8 [( <dod mi>8 ) <re fad>8-. <mi sol>8-. ]
  <si re>8 [( <dod mi>8 ) <re fad>8-. <mi sol>8-. ]
  <dod mi>8 [( <re fad>8 ) <mi sol>8-. <fad si>8-. ]
  %% 160 :
  <dod mi>8 [( <re fad>8 ) <mi sol>8-. <fad si>8-. ]
  <red fad>8 [( <mi sol>8 ) <fad la>8-. <sol si>8-. ]
  <red fad>8 [( <mi sol>8 ) <fad la>8-. <sol si>8-. ]
  <dod, mi>8 [( <re fad>8 ) <mi sol>8-. <fad si>8-. ]
  <dod mi>8 [( <re fad>8 ) <mi sol>8-. <fad si>8-. ]
  %% 165 :
  <lad, dod>8 [( <si re>8 ) <dod mi>8-. <mi sol>8-. ]
  <lad, dod>8 [( <si re>8 ) <dod mi>8-. <mi sol>8-. ]
  \halsdown si2 ~
  si2 ~
  si2
  %% 170 :
  lad2
  <si re>2
  <si re>2
  <do mi>2
  <dod! mi>2
  %% 175 :
  <re fad>2
  <dod mi>2
  <re fad>2
  <dod mi>2 ~
  <dod mi>2 ~
  %% 180 :
  <dod mi>4 ~ <dod mi>8 #(silun 0 -2 #f) r16 s16
  s2^\markup{\override #'(thickness . -1) \override #'(box-padding . 0.2)
	     \rounded-box{
	       \line{Ajoutez les 16 p.}
	     }
	   }
  s2
  s2
  s2
  %% 185 :
  s2
}

pedale = \relative do {
  %%  1 : 
  \global #(silaa 0 #f) R2 
  R2
  R2
  R2
  %%  5 : 
  R2
  R2
  R2
  R2
  R2
  %% 10 : 
  R2
  R2
  R2
  R2
  R2
  %% 15 : 
  R2
  R2
  R2
  #(silun 0 +2 #f) r4 r8 \stemUp si8_\markup{
    \translate #'(-2 . 0) \dynamic{p} Les Fonds
  }
  \stemDown \tieUp si'2 ~
  %% 20 : 
  si2
  R2
  r4 r8 \stemUp si,8 
  \stemDown si'2 ~
  si2
  %% 25 : 
  R2
  r4 r8 \stemUp si,8
  \stemDown si'2 ~
  si2
  R2
  %% 30 : 
  r4 r8 \stemUp \tieDown si,8
  dod2 ~
  dod4. dod8
  fad,2 ~
  fad2
  %% 35 : 
  R2
  R2
  R2
  R2
  R2
  %% 40 : 
  R2
  R2
  r4 r8 \stemDown \tieUp si'8
  sol2 ~
  sol4. si8
  %% 45 : 
  fad2 ~
  fad4. si8
  mid,2 ~
  mid4. si'8
  fad2 ~
  %% 50 : 
  fad4. si8
  sold2 ~
  sold4. si8
  \stemUp \tieDown dod,2 ~
  dod2 ~
  %% 55 : 
  dod2 ~
  dod2
  dod,2 ~
  dod2 ~
  dod2 ~
  %% 60 : 
  dod2
  fad2 ~
  fad2 ~
  fad2 ~
  fad2 ~
  %% 65 : 
  fad2 ~
  fad2 ~
  fad2 ~
  fad2 ~
  fad2
  %% 70 : 
  R2
  R2
  R2
  r4 \stemDown \slurUp fad'4_\markup {\translate #'(-2.2 . 0) \dynamic{f} Ajoutez les Anches} (
  re4 fad4 
  %% 75 : 
  sol4 mi4 
  sol4 mi4 
  fad4 re4 
  fad4 re4 
  mi4 dod4 
  %% 80 : 
  mi4 dod4 
  fad4 re4 
  fad4 re4 
  sol4 mi4 
  sol4 mi4 
  %% 85 : 
  fad4 re4 
  fad4 re4 
  \stemUp dod4 la4 
  dod4 sold4 
   \tieDown fad2 ) ~
  %% 90 : 
  fad2
  r4 \stemDown \slurUp \tieUp fad'4 (
  re4 fad4
  sol2 ) ~
  sol2
  %% 95 : 
  r4 sol4 (
  mib4 sol
  lab2 ) ~
  lab2
  r4 do!4 (
  %% 100 : 
  lab4 do!4 
  \bar "||" \key sib \minor reb2 )
  r4 do4 (
  reb2 )
  r4 do4 (
  %% 105 : 
  reb2 )
  reb,2
  mib2
  fa2
  \stemUp sib,2
  %% 110 : 
  r4 \stemDown la'!4 (
  sib2 )
  r4 la!4 (
  sib2 )
  \stemUp sib,2
  %% 115 : 
  dob2
  reb2
  \tieDown solb,2 ~
  solb2
  r4 \stemDown \slurUp sib'4 (
  %% 120 : 
  solb4 sib4
  \stemUp \tieDown sib,2 ) ~
  sib2
  r4 \stemDown \slurUp sib'4 (
  solb4 sib4
  %% 125 : 
  \stemUp \tieDown sib,2 ) ~
  sib2
  \key si \minor r4 \stemDown \slurUp lad'4 (
  fad4 lad4
  \stemUp dod,4 \stemDown fad4
  %% 130 : 
  \stemUp lad,4 dod4
  \tieDown fad,2 ) ~
  fad2 ~
  fad2
  R2
  %% 135 : 
  r4 \stemDown \slurUp fad'8_\markup{\translate #'(-4 . 0) \dynamic{ff} Tirasse} ( mi8
  re4 mi8 fad8
  sol4 fad8 [ mi8 ]
  sol4 fad8 mi8
  fad4 mi8 re8
  %% 140 : 
  fad4 mi8 re8
  mi4 re8 dod8
  mi4 re8 dod8
  fad4 mi8 re8
  fad4 mi8 re8
  %% 145 : 
  sol4 fad8 mi8
  sol4 fad8 mi8
  fad4 mi8 re8
  fad4 mi8 re8
  \stemUp dod4 si8 la8
  %% 150 : 
  si4 la8 sold8
  fad2 )
  \stemDown \slurUp fad'8 ([ mi8 red8 dod8])
  \stemUp si4. \stemDown si'8
  \stemUp si,4. \stemDown si'8
  %% 155 : 
  \stemUp si,4. \stemDown si'8
  \stemUp si,4. \stemDown si'8
  \stemUp si,4. \stemDown si'8
  \stemUp si,4. \stemDown si'8
  \stemUp si,4. \stemDown si'8
  %% 160 : 
  \stemUp si,4. \stemDown si'8
  \stemUp si,4. \stemDown si'8
  \stemUp si,4. \stemDown si'8
  \stemUp si,4. \stemDown si'8
  \stemUp si,4. \stemDown si'8
  %% 165 : 
  \stemUp si,4. \stemDown si'8
  \stemUp si,4. \stemDown si'8
  \stemUp \tieDown \slurDown si,2
  la2
  sol2
  %% 170 : 
  fad2
  si2
  sol2
  do2
  fad,2 ~
  %% 175 : 
  fad2 ~
  fad2 ~
  fad2 ~
  fad2 ~
  fad2 ~
  %% 180 : 
  fad4 ~ fad8 r8
  r4 r8. si16 (
  mi,4.) r8
  r4 r8. si'16 (
  mi,4.) r8
  %% 185 : 
  \stemDown \once \override Script #'extra-offset = #'(0 . 0.8) <si' si'>2^\fermata

}

tenormidi = \relative do' {
  %%   1 :
  \global s2*133
   #(silaa 0 #f) R2
  %% 135 :
  R2
  \clef treble\stemUp #(silun 0 +2 #f)   <si re fad>16 r16 <si re fad>16 r16 r4
  <si mi sol>16 r16 <si mi sol>16 r16 r4
  <si mi sol>16 r16 <si mi sol>16 r16 r4
  <si re fad>16 r16 <si re fad>16 r16 r4
  %% 140 :
  <si re fad>16 r16 <si re fad>16 r16 r4
  <si dod mi>16 r16 <si dod mi>16 r16 r4
  <si dod mi>16 r16 <si dod mi>16 r16 r4
  <si re fad>16 r16 <si re fad>16 r16 r4
  <si re fad>16 r16 <si re fad>16 r16 r4
  %% 145 :
  <si mi sol>16 r16  <si mi sol>16 r16  r4
  <si mi sol>16 r16  <si mi sol>16 r16  r4
  <si re fad>16 r16  <si re fad>16 r16  r4
  <si re fad>16 r16  <si re fad>16 r16  r4
  <la dod fad>16 r16 <la dod fad>16 r16 r4
  %% 150 :
  <si dod mid>16 r16 <si dod mid>16 r16 r4
  \clef bass \halsdown \slurUp <fad lad>8 ([ <sold si>8 <lad dod>8 <si re>8 ])
  <dod mi>8 ([ <lad dod>8 <si red>8 <dod mi>8 ])
  \clef treble \halsup \slurDown <red fad>8 ( <mi sol>8 ) <fad la>16 r16 <sol si>16 r16 
  <red fad>8 ( <mi sol>8 ) <fad la>16 r16 <sol si>16 r16 
  %% 155 :
  <dod, mi>8 ( <re fad>8 ) <mi sol>16 r16 <fad si>16 r16 
  <dod mi>8 ( <re fad>8 ) <mi sol>16 r16 <fad si>16 r16 
  <si, re>8 ( <dod mi>8 ) <re fad>16 r16 <mi sol>16 r16 
  <si re>8 ( <dod mi>8 ) <re fad>16 r16 <mi sol>16 r16 
  <dod mi>8 ( <re fad>8 ) <mi sol>16 r16 <fad si>16 r16 
  %% 160 :
  <dod mi>8 ( <re fad>8 ) <mi sol>16 r16 <fad si>16 r16 
  <red fad>8 ( <mi sol>8 ) <fad la>16 r16 <sol si>16 r16 
  <red fad>8 ( <mi sol>8 ) <fad la>16 r16 <sol si>16 r16 
  <dod, mi>8 ( <re fad>8 ) <mi sol>16 r16 <fad si>16 r16 
  <dod mi>8 ( <re fad>8 ) <mi sol>16 r16 <fad si>16 r16 
  %% 165 :
  <lad, dod>8 ( <si re>8 ) <dod mi>16 r16 <mi sol>16 r16 
  <lad, dod>8 ( <si re>8 ) <dod mi>16 r16 <mi sol>16 r16 
  \halsdown si2 ~
  si2 ~
  si2
  %% 170 :
  lad2
  <si re>2
  <si re>2
  <do mi>2
  <dod! mi>2
  %% 175 :
  <re fad>2
  <dod mi>2
  <re fad>2
  <dod mi>2 ~
  <dod mi>2 ~
  %% 180 :
  <dod mi>4 ~ <dod mi>8 #(silun 0 -2 #f) r16 s16
  s2^\markup{\override #'(thickness . -1) \override #'(box-padding . 0.2)
	     \rounded-box{
	       \line{Ajoutez les 16 p.}
	     }
	   }
  s2
  s2
  s2
  %% 185 :
  s2
}


\score { 
  <<
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \soprano
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \soprano
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \alto
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \alto
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \tenormidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \tenormidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \pedale
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \transpose do do, 
      \pedale
    }
    \new Staff { % tempo staff
      \override Score.MetronomeMark #'transparent = ##t 
      \tempo 4=125 s2*179
      s8*3 s16 \tempo 4=80 s16
      \tempo 4=60  s2*4
      \tempo 4=30  s2
    }

  >>
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 125 4)
    }
  }
}  

\score {
    \new StaffGroup \with{systemStartDelimiter = #'SystemStartBar } <<
      
      \new PianoStaff <<
	
	\new Staff = "dessus" << 
	  \clef "violin"
	  \context Voice = "soprano" {\voiceOne \soprano}
	  
	>>
	\new Staff = "basse" { 
	  \clef "bass" << \alto \\
			  \tenor >>
	}
      >>

      \new Staff = "pedale" {
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 7.0)
	\clef bass
	\context Voice = "pedale" {\voiceTwo \pedale}
      }
    >>
    
    \layout{}
    \midi{ 
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 125 4)
      }
    }
  }
