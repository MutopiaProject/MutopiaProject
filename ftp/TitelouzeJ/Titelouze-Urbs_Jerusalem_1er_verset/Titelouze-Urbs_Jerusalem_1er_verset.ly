% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.10.15"
\include "italiano.ly" 

%%
%% Version 0 du 14 mai 2007
%% Version 1 du 17 mai 2007 : correction du mutopiatitle, 
%% mise en page sur deux
%% pages, correction d'alignement de quelques points.
%%

\header{
  title = \markup {\center-align { \medium " Urbs Jerusalem "  \medium "1er verset" }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Jean Titelouze (1563-1633)"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
  opus = ""
  lastupdated = "2007-05-17"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Urbs Jerusalem (1er verset)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  style="Baroque"
 footer = "Mutopia-2007/05/17-977"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

% macros von Urs Metzger
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

% macros von Roland Goretzki.
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

global = {
  \key do \major
  \time 4/4
}

soprano = \relative do''' {
  \global \halsup
  %%  1 :
  #(silaa +7 #t) R1
  la4 la2 sol4 
  fa2 mi4 la4 
  re,4 mi8 fa8 sol8 fa4 mi8 
  %%  5 :
  fa4 do2 fa4 ~
  fa4 mi4 re2 
  do4. si8 la8 si8 do8 re8 
  mi4 r4 la4 la4 ~
  la4 sol4 fa2 
  %% 10 :
  mi2 #(silun 0 +1 #t) r8 si8 do4 ~
  do4 si8 la8 sol2 
  #(silun 0 +1 #t) r2 si4 do4 ~
  do4 re8 mi8 fa2 
  sol4 mi4. fa8 sol8 mi8 
  %% 15 :
  fa4. mi8 re4 fa4 ~
  fa4 mi8 re8 mi2 
  fa2 r2 
  r4 fa4 re8 mi8 fa8 sol8 
  la4 la,4 r4 la8 sol8 
  %% 20 :
  fa8 sol8 la4 r2 
  r8 do8 mi4. re8 do8 si8 
  la4 do4 re4 r4 
  #(silaa +4 #t) R1 
  #(silun 0 +1 #t) r8 mi8 re4 do8 re8 mi8 fad8 
  %% 25 :
  sol4 re4 mi8 do8 re8 mi8 
  fa8 mi8 re8 do8 re8 do8 si8 la8 
  sol4 do8 si8 mi8 re8 dod4 
  re4 si4 la8 si8 re4 
  sol,4 la4 si4 mi4 ~
  %% 30 :
  mi4 re4 do4 fa4 
  sol4. fa8 mi2 
  r2 r4 la,8 si8 
  do8 si4 la8 sol4 sol'4 
  fa8 mi8 fa8 mi8 re2 
  %% 35 :
  r4 la8 si8 do2 ~
  do4 re4 do4 fa4 
  mi8 re8 do8 si8 do2 ~
  do8 si8 la4 sol2 
  fa4 re8 mi8 fa4 sol4 
  %% 40 :
  la4 sib4 la2 
  r8 la8 sol8 fa8 mi4 r8 do'8 ~
  do8 sib8 la8 sol8 do4 la4 
  si?4 do4 sol'2 
  r8 mi8 re8 do8 si4 do4 ~
  %% 45 :
  do2 #(silun 0 +1 #t) r2 
  r8 la'8 sol8 fa8 mi4 fa4 
  mi2 #(silun 0 +2 #t) r2 
  #(silaa +4 #t) R1 
  r8 fa8 mi8 re8 do4. re8 
  %% 50 :
  mi2 r8 do8 si8 do8 
  la2 r2
  #(silun 0 +1 #t) r2 #(silun 0 -1 #t) r8 re8 do8 sib8 
  la2 #(silun 0 +2 #t) r8 la'8 sol8 fa8 
  sol4 fa4 mi2 
  %% 55 :
  r8 la,8 si8 do8 re2 
  #(silun 0 -1 #t) r8 sol,8 la8 si8 do2 
  #(silun 0 +1 #t) r2 r8 la8 re8 do8 
  sib4 la2 sol4 
  la1^\fermata  \bar "|."
}

alto = \relative do'' {
  \global \halsdown
  %%  1 :
  r2 mi4 mi4 ~
  mi4 re4 do8 re8 mi4 
  la,4. si8 do2 
  \dotsDown sib4. \dotsNeutral la8 sol8 la8 sib4 
  %%  5 :
  la4. sol8 fa4 do'4 
  si4 do2 sib4 
  la2 r2 
  la4 re2 do4 
  sib2 la2 
  %% 10 :
  #(silun 0 -1 #t) r8 mi8 sol2 fa8 mi8 
  re4 sol8 fa8 mi4 re4 
  #(silun 0 -2 #t) r8 mi8 sol2 fa8 mi8 
  la2 ~ la8 do8 si8 la8 
  sol2 #(silun 0 -1 #t) r2
  %% 15 :
  la4 sib2 la8 sol8 
  la4 sol2 la4 
  #(silun 0 -1 #t) r4 #(silun 0 -2 #t) r8 fa8 re8 mi8 fa8 sol8 
  la2 sib4 la4
  #(silun 0 -2 #t) r2 do,4 re4 ~
  %% 20 :
  re8 mi8 fa8 sol8 la4 sol8 fa8 
  sol2 #(silun 0 -1 #t) r2 
  r8 fa8 la4. si8 do8 re8 
  si4 #(silun 0 -1 #t) r8 sol8 fa8 mi8 re8 sol8 
  mi4 fa8 sol8 la8 si8 do8 la8 
  %% 25 :
  re8 do8 si8 la8 sol8 la8 si8 do8 
  la8 sol8 la2 re,4 
  \dotsDown mi4. sol8 ~ sol8 sol8 la8 sol8 
  fad4 sol4. sol8 fa4 
  mi4. fad8 sol2 
  %% 30 :
  do8 si8 la8 sol8 la2 
  r4 mi8 fa8 sol4 la4 ~
  la4 sol4 fa2 
  sol2 r2 
  r4 re8 mi8 fa4 sol4 ~
  %% 35 :
  sol4 fa4 mi2 
  la8 sol8 fa4. sol8 la4 ~
  la4 la8 sol8 fa8 mi8 la4 
  sol4 fa4 r4 do4 ~
  do4 sib4 la4 re8 mi8 
  %% 40 :
  fa4 sol4 r8 fa8 mi8 re8 
  \dotsDown mi4. \dotsNeutral re8 do8 re8 mi4 
  re4 mi4 fa4 r4 
  r4 sol8 la8 si8 do8 si8 la8 
  sol2 sol4. \dotsNeutral sol8 
  %% 45 :
  la2 #(silun 0 -1 #t) r8 la8 si8 do8 
  la2 r8 la8 la8 si8 
  do2 r8 mi8 re8 do8 
  si2 r8 re8 do8 si8 
  la1 
  %% 50 :
  r8 la8 sol8 fa8 mi8 fa8 sol4 
  fa4 la4. sol8 fa8 mi8 
  re4 mi8 fa8 sol4 mi4 
  fa2 #(silun 0 -2 #t) r2 
  #(silun 0 -1 #t) r8 sol8 la8 si8 do8 si8 la8 sol8 
  %% 55 :
  fad4 sol2 fa4 
  mi4 fa4 mi4 fa4 ~
  fa8 [ re8 ] sol8 la16 sol16 fad2
  #(silun 0 +1 #t) r8 sol8 fa!8 mi8 re4. mi8 
  fad1 
}

tenor = \relative do'' {
  \global \halsup
  %%  1 :
  la4 la2 sol4 
  fa2 mi4 mi4 ~
  mi4 re4 do8 re8 mi8 fa8 
  sol8 re8 sol8 fa8 mi8 fa8 sol4 
  %%  5 :
  do,4. si?8 la2 
  re4 do4 sol'4 sol4 ~
  sol4 fa2 mi8 re8 
  do8 mi8 fa8 re8 mi2 
  re2 #(silun 0 +3 #t) r4 la4 
  %% 10 :
  do4 si8 la8 sol2 
  r2 #(silun 0 +3 #t) r4 si4 
  do4 si8 la8 sol2 
  do4 #(silun 0 +3 #t) r4 la4 do4 ~
  do4 si8 la8 sol8 la8 si8 do8 
  %% 15 :
  re4. do8 sib8 sol8 la8 sib8 
  do4 #(silun 0 +3 #t) r4 do4 la4 ~
  la8 si8 do8 re8 sib4 la4 
  fa'8 mi8 re8 do8 sib8 sol8 re'4 
  \dotsDown do4. \dotsNeutral si?8 la2 
  %% 20 :
  sib4 la4. si8 do8 re8 
  do4 si8 sol8 do4 mi4 ~
  mi8 re8 do8 si8 la2 
  re8 sol8 fa8 mi8 re8 do4 si8 
  do4 re8 mi8 fa8 mi8 re8 do8 
  %% 25 :
  si4 sol'8 fa8 mi4 re8 do8 
  re8 mi8 fa4 la,4. si8 
  do8 si8 la8 sol8 do8 si16 la16 sol4 
  la8 si8 sol8 si8 re4 la8 si8 
  do2 si4 do4 
  %% 30 :
  r4 la8 si8 do4 re4 ~
  re4 do2 si8 la8 
  si4 sib4 la2 
  r8 mi'8 re8 do8 si8 la8 sol8 la8 
  sib2. la8 sol8 
  %% 35 :
  la2 sol4 la8 sol8 
  fa4 sib4 la4. si8 
  do8 si8 la2 sol8 fa8 
  mi4 fa2 mi4 
  fa4 sol4 la4 sib4 
  %% 40 :
  la4 #(silun 0 +3 #t) r4 #(silun 0 +3 #t) r8 re8 do8 sib8 
  la2 sol2 
  r8 re'8 do8 sib8 la4 fa'4 ~
  fa4 mi4. mi8 re8 do8 
  si4 do4 re4 mi4 
  %% 45 :
  r8 la,8 si8 do8 re4. mi8 
  fa4 mi8 re8 dod4 re4 
  r8 la'8 sol8 fa8 mi2 
  r8 sol8 mi8 fa8 sol4 mi4 
  fa2 #(silun 0 +4 #t) r8 fa8 mi8 re8 
  %% 50 :
  do4 si8 la8 sol2
  r8 re'8 do8 si8 la4 do4 ~
  do8 do8 si8 la8 sib4 sol4 
  r8 la8 si?8 do8 re8 do4 re8 
  mi4 re2 do4 ~
  %% 55 :
  do4 si4 la8 sol8 la8 si8 
  do4 fa,4 sol4 la4 
  sib2 la2 
  #(silun 0 -1 #t) r8 sol8 re'8 do8 sib2 
  \once \override Script #'padding = # 1 la1 ^\fermata
}

cantusfirmus=\lyricmode{

  %%
  %% Urbs beata Jerusalem, 
  %% dicta pacis visio,
  %% Quæ construitur in coelis vivis ex lapidibus,
  %% Et angelis coronata ut sponsata comite.
  %% 

  Urbs1
  Je1 --
  ru1 --
  sa1 --
  \skip 1
  lem1
  be1 --
  a1 --
  ta1
  Dic1 --
  ta1
  pa1 --
  cis1 
  \skip 1
  vi1 --
  si1 --
  o,1
  %%\skip 1
  Quæ1
  cons1 --
  tru1 --
  i1 --
  tur1
  in1
  coe1--
  \skip 1
  lis1
  \skip 1
  Vi1 --
  vis1
  ex1
  la1 --
  pi1 --
  di1 --
  bus1
  %%\skip 1
  Et1 
  an1 --
  \skip 1
  ge1 --
  lis1
  co1 --
  ro1 --
  na1 --
  ta,
  %%\skip 1
  Ut1
  spon1 --
  sa1 --
  ta1
  \skip 1
  \skip 1
  \skip 1
  \skip 1
  co1 --
  mi1 --
  te1
  \skip 1
  \skip 1
 
}

basse = \relative do' { 
  \global \halsdown
  %%  1 :
  la1 la1 la1 sol1 
  %%  5 :
  fa1 sol1 la1 la1 re,1
  %% 10 :
  mi1 sol1 mi1 fa1 mi1
  %% 15 :
  re1 do1 re1 #(silaa -2 #f) R1 fa1
  %% 20 : 
  re1 mi1 fa1 sol1 la1
  %% 25 : 
  sol1 fa1 mi1 re1 mi1
  %% 30 :
  fa1 mi1 re1 mi1 re1
  %% 35 :
  do1 #(silaa -4 #t) R1 la1 do1 re1
  %% 40 :
  re1 do1 fa1 sol1 sol1
  %% 45 :
  fa1 R1 la1 sol1 fa1 mi1
  %% 50 :
  fa1 sol1 fa1 mi1 re1
  %% 55 :
  do1 re1 re1 ~ re1 
}

sopranomidi = \relative do''' {
  \global \halsup
  %%  1 :
  #(silaa +7 #t) R1
  la8 r8 la2 sol4 
  fa2 mi4 la4 
  re,4 mi8 fa8 sol8 fa4 mi8 
  %%  5 :
  fa4 do2 fa4 ~
  fa4 mi4 re2 
  do4. si8 la8 si8 do8 re8 
  mi4 r4 la8 r8 la4 ~
  la4 sol4 fa2 
  %% 10 :
  mi2 #(silun 0 +1 #t) r8 si8 do4 ~
  do4 si8 la8 sol2 
  #(silun 0 +1 #t) r2 si4 do4 ~
  do4 re8 mi8 fa2 
  sol4 mi4. fa8 sol8 mi8 
  %% 15 :
  fa4. mi8 re4 fa4 ~
  fa4 mi8 re8 mi2 
  fa2 r2 
  r4 fa4 re8 mi8 fa8 sol8 
  la4 la,4 r4 la8 sol8 
  %% 20 :
  fa8 sol8 la4 r2 
  r8 do8 mi4. re8 do8 si8 
  la4 do4 re4 r4 
  #(silaa +4 #t) R1 
  #(silun 0 +1 #t) r8 mi8 re4 do8 re8 mi8 fad8 
  %% 25 :
  sol4 re4 mi8 do8 re8 mi8 
  fa8 mi8 re8 do8 re8 do8 si8 la8 
  sol4 do8 si8 mi8 re8 dod4 
  re4 si4 la8 si8 re4 
  sol,4 la4 si4 mi4 ~
  %% 30 :
  mi4 re4 do4 fa4 
  sol4. fa8 mi2 
  r2 r4 la,8 si8 
  do8 si4 la8 sol4 sol'4 
  fa8 mi8 fa8 mi8 re2 
  %% 35 :
  r4 la8 si8 do2 ~
  do4 re4 do4 fa4 
  mi8 re8 do8 si8 do2 ~
  do8 si8 la4 sol2 
  fa4 re8 mi8 fa4 sol4 
  %% 40 :
  la4 sib4 la2 
  r8 la8 sol8 fa8 mi4 r8 do'8 ~
  do8 sib8 la8 sol8 do4 la4 
  si?4 do4 sol'2 
  r8 mi8 re8 do8 si4 do4 ~
  %% 45 :
  do2 #(silun 0 +1 #t) r2 
  r8 la'8 sol8 fa8 mi4 fa4 
  mi2 #(silun 0 +2 #t) r2 
  #(silaa +4 #t) R1 
  r8 fa8 mi8 re8 do4. re8 
  %% 50 :
  mi2 r8 do8 si8 do8 
  la2 r2
  #(silun 0 +1 #t) r2 #(silun 0 -1 #t) r8 re8 do8 sib8 
  la2 #(silun 0 +2 #t) r8 la'8 sol8 fa8 
  sol4 fa4 mi2 
  %% 55 :
  r8 la,8 si8 do8 re2 
  #(silun 0 -1 #t) r8 sol,8 la8 si8 do2 
  #(silun 0 +1 #t) r2 r8 la8 re8 do8 
  sib4 la2 sol4 
  la1^\fermata  \bar "|."
}

altomidi = \relative do'' {
  \global \halsdown
  %%  1 :
  r2 mi8 r8 mi4 ~
  mi4 re4 do8 re8 mi4 
  la,4. si8 do2 
  sib4. la8 sol8 la8 sib4 
  %%  5 :
  la4. sol8 fa4 do'4 
  si4 do2 sib4 
  la2 r2 
  la4 re2 do4 
  sib2 la2 
  %% 10 :
  #(silun 0 -1 #t) r8 mi8 sol2 fa8 mi8 
  re4 sol8 fa8 mi4 re4 
  #(silun 0 -2 #t) r8 mi8 sol2 fa8 mi8 
  la2 ~ la8 do8 si8 la8 
  sol2 #(silun 0 -1 #t) r2
  %% 15 :
  la4 sib2 la8 sol8 
  la4 sol2 la4 
  #(silun 0 -1 #t) r4 #(silun 0 -2 #t) r8 fa8 re8 mi8 fa8 sol8 
  la2 sib4 la4
  #(silun 0 -2 #t) r2 do,4 re4 ~
  %% 20 :
  re8 mi8 fa8 sol8 la4 sol8 fa8 
  sol2 #(silun 0 -1 #t) r2 
  r8 fa8 la4. si8 do8 re8 
  si4 #(silun 0 -1 #t) r8 sol8 fa8 mi8 re8 sol8 
  mi4 fa8 sol8 la8 si8 do8 la8 
  %% 25 :
  re8 do8 si8 la8 sol8 la8 si8 do8 
  la8 sol8 la2 re,4 
  mi4. sol8 ~ sol16 r16 sol8 la8 sol8 
  fad4 sol4 ~ sol16 r16 sol8 fa4 
  mi4. fad8 sol2 
  %% 30 :
  do8 si8 la8 sol8 la2 
  r4 mi8 fa8 sol4 la4 ~
  la4 sol4 fa2 
  sol2 r2 
  r4 re8 mi8 fa4 sol4 ~
  %% 35 :
  sol4 fa4 mi2 
  la8 sol8 fa4. sol8 la4 ~
  la4 la8 sol8 fa8 mi8 la4 
  sol4 fa4 r4 do4 ~
  do4 sib4 la4 re8 mi8 
  %% 40 :
  fa4 sol4 r8 fa8 mi8 re8 
  mi4. re8 do8 re8 mi4 
  re4 mi4 fa4 r4 
  r4 sol8 la8 si8 do8 si8 la8 
  sol4. r8 sol4 ~ sol16 r16 sol8 
  %% 45 :
  la2 #(silun 0 -1 #t) r8 la8 si8 do8 
  la2 r8 la8 la8 si8 
  do2 r8 mi8 re8 do8 
  si2 r8 re8 do8 si8 
  la1 
  %% 50 :
  r8 la8 sol8 fa8 mi8 fa8 sol4 
  fa4 la4. sol8 fa8 mi8 
  re4 mi8 fa8 sol4 mi4 
  fa2 #(silun 0 -2 #t) r2 
  #(silun 0 -1 #t) r8 sol8 la8 si8 do8 si8 la8 sol8 
  %% 55 :
  fad4 sol2 fa4 
  mi4 fa4 mi4 fa4 ~
  fa8 [ re8 ] sol8 la16 sol16 fad2
  #(silun 0 +1 #t) r8 sol8 fa!8 mi8 re4. mi8 
  fad1 
}

tenormidi = \relative do'' {
  \global \halsup
  %%  1 :
  la8 r8 la2 sol4 
  fa2 mi8 r8 mi4 ~
  mi4 re4 do8 re8 mi8 fa8 
  sol8 re8 sol8 fa8 mi8 fa8 sol4 
  %%  5 :
  do,4. si?8 la2 
  re4 do4 sol'8 r8 sol4 ~
  sol4 fa2 mi8 re8 
  do8 mi8 fa8 re8 mi2 
  re2 #(silun 0 +3 #t) r4 la4 
  %% 10 :
  do4 si8 la8 sol2 
  r2 #(silun 0 +3 #t) r4 si4 
  do4 si8 la8 sol2 
  do4 #(silun 0 +3 #t) r4 la4 do4 ~
  do4 si8 la8 sol8 la8 si8 do8 
  %% 15 :
  re4. do8 sib8 sol8 la8 sib8 
  do4 #(silun 0 +3 #t) r4 do4 la4 ~
  la8 si8 do8 re8 sib4 la4 
  fa'8 mi8 re8 do8 sib8 sol8 re'4 
  do4. si?8 la2 
  %% 20 :
  sib4 la4. si8 do8 re8 
  do4 si8 sol8 do4 mi4 ~
  mi8 re8 do8 si8 la2 
  re8 sol8 fa8 mi8 re8 do4 si8 
  do4 re8 mi8 fa8 mi8 re8 do8 
  %% 25 :
  si4 sol'8 fa8 mi4 re8 do8 
  re8 mi8 fa4 la,4. si8 
  do8 si8 la8 sol8 do8 si16 la16 sol4 
  la8 si8 sol8 si8 re4 la8 si8 
  do2 si4 do4 
  %% 30 :
  r4 la8 si8 do4 re4 ~
  re4 do2 si8 la8 
  si4 sib4 la2 
  r8 mi'8 re8 do8 si8 la8 sol8 la8 
  sib2. la8 sol8 
  %% 35 :
  la2 sol4 la8 sol8 
  fa4 sib4 la4. si8 
  do8 si8 la2 sol8 fa8 
  mi4 fa2 mi4 
  fa4 sol4 la4 sib4 
  %% 40 :
  la4 #(silun 0 +3 #t) r4 #(silun 0 +3 #t) r8 re8 do8 sib8 
  la2 sol2 
  r8 re'8 do8 sib8 la4 fa'4 ~
  fa4 mi4. mi8 re8 do8 
  si4 do4 re4 mi4 
  %% 45 :
  r8 la,8 si8 do8 re4. mi8 
  fa4 mi8 re8 dod4 re4 
  r8 la'8 sol8 fa8 mi2 
  r8 sol8 mi8 fa8 sol4 mi4 
  fa2 #(silun 0 +4 #t) r8 fa8 mi8 re8 
  %% 50 :
  do4 si8 la8 sol2
  r8 re'8 do8 si8 la4 do4 ~
  do16 r16 do8 si8 la8 sib4 sol4 
  r8 la8 si?8 do8 re8 do4 re8 
  mi4 re2 do4 ~
  %% 55 :
  do4 si4 la8 sol8 la8 si8 
  do4 fa,4 sol4 la4 
  sib2 la2 
  #(silun 0 -1 #t) r8 sol8 re'8 do8 sib2 
  la1 ^\fermata
}

bassemidi = \relative do' { 
  \global \halsdown
  %%  1 :
  la2.. r8 la2.. r8 la1 sol1 
  %%  5 :
  fa1 sol1 la2.. r8  la1 re,1
  %% 10 :
  mi1 sol1 mi1 fa1 mi1
  %% 15 :
  re1 do1 re1 #(silaa -2 #f) R1 fa1
  %% 20 : 
  re1 mi1 fa1 sol1 la1
  %% 25 : 
  sol1 fa1 mi1 re1 mi1
  %% 30 :
  fa1 mi1 re1 mi1 re1
  %% 35 :
  do1 #(silaa -4 #t) R1 la1 do1 re1
  %% 40 :
  re1 do1 fa1 sol2.. r8 sol1
  %% 45 :
  fa1 R1 la1 sol1 fa1 mi1
  %% 50 :
  fa1 sol1 fa1 mi1 re1
  %% 55 :
  do1 re2.. r8 re1 ~ re1 
}

\paper {
  %%#(set-paper-size "a4")
  before-title-space=0\mm
  after-title-space=15\mm
  head-separation = 0\mm
  between-system-padding=6\mm
  %%between-system-space=25\mm
  indent = 3\cm
  bottom-margin = 5\mm 
  top-margin = 5\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
}

\score{
  \new PianoStaff <<
    \override PianoStaff.VerticalAlignment #'forced-distance = #14
    \new Staff = "dessus" << 
      \clef "violin"
      \set Staff.midiInstrument = "pan flute"
      \soprano
      \alto
    >>

    \new Staff = "basse" << 
      \clef "bass" 
      \set Staff.midiInstrument = "pan flute"
      \tenor
      << 
	\new Voice = "bidon" {\basse}
	\new Lyrics \lyricsto "bidon" {\cantusfirmus} 
      >>
    >>
  >>

  \layout{
    \context { \PianoStaff
	       %\override VerticalAxisGroup #'minimum-Y-extent = #'(-20 . 20)
	     }
  }
}


\score { 
  <<
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \sopranomidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \sopranomidi
      }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \altomidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \altomidi
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
      \bassemidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \transpose do do, 
      \bassemidi
    }
%%$    \new Staff { % tempo staff
%%$      s1* 56
%%$      \tempo 2 = 45 s4 \tempo 2 = 40 s4 \tempo 2 = 30 s4 \tempo 2 = 25 s4
%%$      \tempo 2 = 20 s1
%%$    }

  >>
  \midi{ 
    \context {
       \Score
       tempoWholesPerMinute = #(ly:make-moment 100 4)
     }
  }

}  
