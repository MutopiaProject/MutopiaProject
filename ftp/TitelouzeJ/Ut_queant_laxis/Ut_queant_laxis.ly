%% -*- mode: LilyPond ; coding: utf-8 -*-
%% VERSION 0 - Création.
\version "2.10.33"
\include "italiano.ly" 

\header{
  title = \markup {\center-align { \medium " Ut queant laxis "  \medium "3e verset" }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Jean Titelouze (1563-1633)"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
  opus = ""
  lastupdated = "2008-03-08"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Ut queant laxis (3e verset)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  style="Baroque"
  %% footer = "Mutopia-2008/??/??"
 footer = "Mutopia-2008/03/11-1370"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

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


\paper {
  print-page-number = ##f
  %%$%%system-count = 3
  between-system-padding = 4\mm
  between-system-space = 20\mm
  indent = 2\cm
  head-separation = 0\mm
  %%$foot-separation = 4\mm
  page-top-space = 10\mm
  %%$bottom-margin = 6\mm
  top-margin = 10\mm
  foot-separation = -8\mm
  tagline = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

%%$#(set-default-paper-size "letter" 'portrait)
%%$#(set-global-staff-size 19)

global = {
  \key do \major
  \time 4/2
}

soprano =  \relative do'' {
  %%  1 : 
  #(silaa +2.0 #f) R\breve
  R\breve
  R\breve
  R\breve
  %%  5 : 
  R\breve
  R\breve
  R\breve
  #(silun 0.0 -1.0 #t) r2 la1 sol2 
  la2 sib1 la4 sol4 
  %% 10 : 
  la1 #(silun 0.0 -2.0 #t) r2 la4 sol4 
  la4 sib4 do2 do2 la2 
  do2 sib2 la2 sol4 fa8 mi8 
  re8 fa8 sol8 la8 sib2 la2. la8 sol8 
  fa4 re4 re'4 do8 si?8 la4 si4 do4 re4 
  %% 15 : 
  do2. si8 la8 sol2 fa2 ~
  fa2 sol2 la2 do2 
  sib2 la4 re4 do4 si4 do2 
  do2. si4 la4 sol4 fa4 mi4 
  fa4 sol4 la2 re,2 sol2 
  %% 20 : 
  #(silun 0.0 -2.0 #t) r2 la1 sol2 
  la2 sib1 la4 sol4 
  la1 si1\rest 
  #(silun 0.0 -2.0 #t) r2 la4 sol4 la4 sib4 do2 ~
  do2 re2. re4 mi2 ~
  %% 25 : 
  mi2 do2 re1 
  do2 si1 la2 ~
  la4 la4 sol2 do2. si4 
  la4 sol4 fa1  #(silun 0.0 -2.0 #t) r2 
  #(silun 0.0 -2.0 #t) r2 sol2 la2 sol4 fa4 
  %% 30 : 
  mi4 fa4 sol4 mi4 fa2 mi2 
  re1  #(silun 0.0 -3.0 #t) r2 fa2 
  re2 fa1 mi2 ~
  mi2 re2  #(silun 0.0 -2.0 #f) r2 la'2 ~
  la4 sol4 fa4 mi4 re2. mi4 
  %% 35 : 
  fa2 mi4 re4 fa2 mi2 \break
  \time 4/4 \bar "||" fa2 r2 
  R1 
  R1 
  r2 r4 do'4 ~
  %% 40 : 
  do4 si8 la8 sol4 do8 re8 
  mi4 re4 do4 sib4 ~
  sib4 la8 si8 do2 ~
  do4 sol4 la4. si8 
  do4 re2 do4 
  %% 45 : 
  re2 r2 
  r2 r4 do4 ~
  do4 si8 la8 sol4 do8 re8 
  mi4. re8 do4. si8 
  la2 sol2 
  %% 50 : 
  r4 fa2 mi8 re8 
  dod4 fa8 sol8 la4. sol8 
  fa4 re8 mi8 fa8 sol8 la4 
  sib4 la4 re,4 mi4 
  fa2 r2 
  %% 55 : 
  r2 r4 sib4 ~
  sib4 la4 sol4 fad4 
  sol4 la2 sol4 
  \once\override Script #'extra-offset = #'(0 . 1.3) fad1^\fermata
}

alto = \relative do' {
  %%  1 : 
  R\breve
  R\breve
  R\breve
  r2 re1 do2 
  %%  5 : 
  re2 fa1 mi4 re4
  mi1 r2 re4 do4 
  re4 mi4 fa2. fa4 mi4. re16 mi16 
  fa2 re2 do1 
  do2 re2 mi2 fa4 mi4 
  %% 10 : 
  re4 la4 dod4 re4 mi2 fa2 ~
  fa2 mi2. re8 do8 re2
  mi4 fa4 sol2 do,2 re2 
  r2 re1 dod2 
  re2 fa1 mi4 re4 
  %% 15 : 
  mi1. re4 do4 
  re2. mi4 fa4 mi8 re8 mi4 fad4 
  sol4 re4. mi8 fa8 sol8 la1 
  sol2 do,1 re2 ~
  re2 do2 sib1 
  %% 20 : 
  la4 si?4 do4 la4 sib1 
  r4 re2 sol4 fa2. mi8 re8 
  dod2 re4 mi4 fad4. mi16 fa16 sol2 
  mi2 r2 re4 re4 mi2 ~
  mi4 do4 sol'2 sol2. sol4 
  %% 25 : 
  mi2. fa8 sol8 la4 sol4 fa2 
  mi2. re4 do4 re4 mi4 fa4 
  mi\breve
  r2 do2 re2 do2
  si?2 do2 r1 
  %% 30 : 
  r2 do2 la2 do2 ~
  do2 si2 la1 
  r2 do2 si2 do2 ~
  do4 si4 la2 mi'1 
  la,1 sib1 
  %% 35 : 
  r1 r2 do2 ~
  do4 si?8 la8 sol4 do8 re8 
  mi4 re4 do4 si4 
  la2 sol4 do4 
  si8 do8 la8 si8 do2 
  %% 40 : 
  r4 fa2 mi8 re8 
  do4 fa8 sol8 la4 sol8 fa8 
  mi4 fa4 r4 fa4 ~
  fa4 mi8 re8 do4 fa8 sol8 
  la2 sol4 la8 sol8 
  %% 45 : 
  fa8 mi8 re4 mi4. fa8 
  sol4 mi4 fa8 mi8 mi4 ~
  mi4 re4 mi4 la4 ~
  la8 la8 sold4 la4 mi4 
  fa4 do4. re8 do8 si8 
  %% 50 : 
  la4. si8 do4 sib4 
  la4 re4. re8 dod!4 
  re2 r2 
  re4. do8 sib2
  la4 re2 do4
  %% 55 :
  sib4 la4 sib8 sol8 re'4 ~
  re8 mi8 fa8 mi8 re4. do8 
  si?4 la4 si4 dod4 
  re1 
}

tenor = \relative do' {
  %%  1 : 
  #(silaa +2.0 #t) R\breve
  fa,1\rest la1 ~
  la2 sol2 la2 sib2 ~
  sib2 la4 sol4 la1 
  %%  5 : 
  r2 la4 sol4 la4 si!4 do2 ~
  do2 sol2. la4 sib2 
  la4 sol4 la4 fa4 sol1 
  la2 fa2 mi2. re8 mi8 
  fa1 sol2 fa2 ~
  %% 10 : 
  fa2 mi4 re4 dod2 re4 mi4 
  fa4 re4 la'4 mi4 fa2. fa4 
  mi1 fa2 re4 mi4 
  fa4 re4 sol2 fa2 mi2 
  re2. mi4 fa4 sol4 la2 ~
  %% 15 : 
  la2 mi2 fa1\rest 
  fa2\rest re1 do2 
  re2 fa1 mi4 re4 
  mi1 re2\rest re4 do4 
  re4 mi4 fa1 mi2 
  %% 20 : 
  fa1 re2. mi4 
  fa2 sol2 re4 re'2 sib4 
  la4 sol4 fad4 sol4 la2 sol2 
  sol4 la4 fa1 sol2 
  la2 si1 si2 
  %% 25 : 
  \dotsDown do2. \dotsNeutral si4 la2 la2 ~
  la2 sol2 la4 si4 do4 re4 
  si1 la2 do2 ~
  do2 la2 sib2 la2 
  sol1 fa1 
  %% 30 : 
  sol2 mi2 fa1\rest 
  #(silun 0.0 +1.0 #t) r1 r2 fa!2 
  sol2 la2 re,2 mi2 
  fa2. fa4 sol4 fa4 mi2 
  fa2 fa2. re4 sol2 
  %% 35 : 
  la2 sib2 la2 sol2 
  \time 4/4 #(silun 0.0 -1.0 #t) r4 fa?2 mi8 re8 
  do4 fa8 sol8 la4 sol4 ~
  sol4 fa4 mi4 re8 do8 
  re8 mi8 fa4. mi8 la4 
  %% 40 : 
  sol4 fa4 do'4. si8 
  la2. re4 
  do4. si8 la4 sol8 fa8 
  sol2 #(silun 0.0 +0.5 #t) r2 
  #(silun 0.0 +0.0 #t) r2 r4 do4 ~
  %% 45 : 
  do4 si8 la8 sol4 do8 re8 
  mi8 re8 do8 si8 la2 ~
  la4 si4 do4 la4 
  si2 la2 
  #(silun 0.0 -1.0 #t) r4 fa2 mi8 re8 
  %% 50 : 
  do4 fa8 sol8 la4 sol8 fa8 
  mi4 re4 mi2 
  re4 sib'2 la4 
  sol4 fad4 sol2 
  re4. mi8 [ fa8 sol8 ] la4 
  %% 55 : 
  re,2. sol4 ~
  sol4 fa4 r8 sib8 la4 
  sol4 fad4 sol2 
  \once\override Script #'extra-offset = #'(0 . 1.3) la1^\fermata
}

basse = \relative do {
  %%  1 : 
  re1. do2 
  re2 fa1 mi4 re4 
  mi1 r2 re4 do4 
  re4 mi4 fa4 mi4 re4 mi4 fa2 
  %%  5 : 
  sib,2 re1 do4 si!4 
  la4 si4 do4 re4 mi4 fa4 sol2 
  fa4 mi4 re2 do1 
  fa,2. sol4 la4 si4 do2 
  fa,1 do'2 re2 ~
  %% 10 : 
  re2 la2 r1 
  r1 la1 ~
  la2 sol2 la2 sib2 ~
  sib2 la4 sol4 la1 
  R\breve
  %% 15 : 
  la4 sol4 la4 si4 do2 la2 
  sib1 la1 
  sol2 re'2 la2. si4 
  do4 si4 la4 sol4 fa2 sib2 ~
  sib2 la2 sol1 
  %% 20 : 
  fa1 r1 
  R\breve
  #(silun 0.0 +1.0 #t) r2 re'2. re4 mi2 
  do2 re1 do4 si4 
  la2 sol2 sol'2 mi2 
  %% 25 : 
  la2. sol4 fa4 mi4 re2 
  mi\breve ~
  mi1 #(silun 0.0 +1.0 #t) r1
  fa1 re2 fa2 ~
  fa2 mi2 re1 
  %% 30 : 
  do1 re2 mi2 
  fad2 sol2 re2. do4 
  sib2 la2 sol1 
  la2 re1 dod2 
  re2. do4 sib2. sol4 
  %% 35 : 
  re'1 do1 
  \time 4/4 fa,2 r2 
  R1 
  do'2. si8 sol8 
  sol4 fa8 sol8 la4. si8 
  %% 40 : 
  do1 
  #(silaa -2.0 #t) R1 
  #(silun 0.0 +2.0 #t) r4 fa2 mi8 re8 
  do2 fa8 sol8 la4 ~
  la8 sol8 fa4 mi4 fa4 
  %% 45 : 
  re4 sol4 mi2 ~
  mi4 la4 re,4 la4 
  fa'2 mi2 ~
  mi2 la,2 
  r2 do2 
  %% 50 : 
  fa,2. sol4
  la1 
  re1 
  #(silaa -2.0 #t) R1 
  r4 sib2 la4 
  %% 55 : 
  sol4 fad4 sol2 
  re'1 ~
  re1 ~
  re1
}

sopranomidi =  \relative do'' {
  %%  1 : 
  #(silaa +2.0 #f) R\breve
  R\breve
  R\breve
  R\breve
  %%  5 : 
  R\breve
  R\breve
  R\breve
  r2 la1 sol2 
  la2 sib1 la4 sol4 
  %% 10 : 
  la1 r2 la4 sol4
  %> la4 sib4 do2 do2 la2 
  la4 sib4 do4. r8 do2 la2 
  do2 sib2 la2 sol4 fa8 mi8 
  %> re8 fa8 sol8 la8 sib2 la2. la8 sol8 
  re8 fa8 sol8 la8 sib2 la2 ~ la8 r8 la8 sol8 
  fa4 re4 re'4 do8 si!8 la4 si4 do4 re4 
  %% 15 : 
  do2. si8 la8 sol2 fa2 ~
  fa2 sol2 la2 do2 
  sib2 la4 re4 do4 si4 do2 
  do2. si4 la4 sol4 fa4 mi4 
  fa4 sol4 la2 re,2 sol2 
  %% 20 : 
  r2 la1 sol2 
  la2 sib1 la4 sol4 
  la1 r1 
  r2 la4 sol4 la4 sib4 do2 ~
  do2 re2. re4 mi2 ~
  %% 25 : 
  mi2 do2 re1 
  do2 si1 la2 ~
  %> la4 la4 sol2 do2. si4 
  la8 r8 la4 sol2 do2. si4 
  la4 sol4 fa1 r2 
  r2 sol2 la2 sol4 fa4 
  %% 30 : 
  mi4 fa4 sol4 mi4 fa2 mi2 
  re1 r2 fa2 
  re2 fa1 mi2 ~
  mi2 re2 r2 la'2 ~
  la4 sol4 fa4 mi4 re2. mi4 
  %% 35 : 
  fa2 mi4 re4 fa2 mi2 \break
  \time 4/4 \bar "||" fa2 r2 
  R1 
  R1 
  r2 r4 do'4 ~
  %% 40 : 
  do4 si8 la8 sol4 do8 re8 
  mi4 re4 do4 sib4 ~
  sib4 la8 si8 do2 ~
  do4 sol4 la4. si8 
  do4 re2 do4 
  %% 45 : 
  re2 r2 
  r2 r4 do4 ~
  do4 si8 la8 sol4 do8 re8 
  mi4. re8 do4. si8 
  la2 sol2 
  %% 50 : 
  r4 fa2 mi8 re8 
  dod4 fa8 sol8 la4. sol8 
  fa4 re8 mi8 fa8 sol8 la4 
  sib4 la4 re,4 mi4 
  fa2 r2 
  %% 55 : 
  r2 r4 sib4 ~
  sib4 la4 sol4 fad4 
  sol4 la2 sol4 
  \once\override Script #'extra-offset = #'(0 . 1.3) fad1^\fermata
}

altomidi = \relative do' {
  %%  1 : 
  R\breve
  R\breve
  R\breve
  r2 re1 do2 
  %%  5 : 
  re2 fa1 mi4 re4
  mi1 r2 re4 do4 
  %> re4 mi4 fa2. fa4 mi4. re16 mi16 
  re4 mi4 fa2 ~ fa8 r8 fa4 mi4. re16 mi16
  fa2 re2 do1 
  do2 re2 mi2 fa4 mi4 
  %% 10 : 
  re4 la4 dod4 re4 mi2 fa2 ~
  fa2 mi2. re8 do8 re2
  mi4 fa4 sol2 do,2 re2 
  r2 re1 dod2 
  re2 fa1 mi4 re4 
  %% 15 : 
  mi1. re4 do4 
  re2. mi4 fa4 mi8 re8 mi4 fad4 
  sol4 re4. mi8 fa8 sol8 la1 
  sol2 do,1 re2 ~
  re2 do2 sib1 
  %% 20 : 
  la4 si?4 do4 la4 sib1 
  r4 re2 sol4 fa2. mi8 re8 
  dod2 re4 mi4 fad4. mi16 fa16 sol2 
  mi2 r2 re4 re4 mi2 ~
  mi4 do4 sol'2 sol2. sol4 
  %% 25 : 
  mi2. fa8 sol8 la4 sol4 fa2 
  mi2. re4 do4 re4 mi4 fa4 
  mi\breve
  r2 do2 re2 do2
  si?2 do2 r1 
  %% 30 : 
  r2 do2 la2 do2 ~
  do2 si2 la1 
  r2 do2 si2 do2 ~
  do4 si4 la2 mi'1 
  la,1 sib1 
  %% 35 : 
  r1 r2 do2 ~
  do4 si?8 la8 sol4 do8 re8 
  mi4 re4 do4 si4 
  la2 sol4 do4 
  si8 do8 la8 si8 do2 
  %% 40 : 
  r4 fa2 mi8 re8 
  do4 fa8 sol8 la4 sol8 fa8 
  mi4 fa4 r4 fa4 ~
  fa4 mi8 re8 do4 fa8 sol8 
  la2 sol4 la8 sol8 
  %% 45 : 
  fa8 mi8 re4 mi4. fa8 
  sol4 mi4 fa8 mi8 mi4 ~
  mi4 re4 mi4 la4 ~
  %> la8 la8 sold4 la4 mi4 
  la16 r16 la8 sold4 la4 mi4 
  fa4 do4. re8 do8 si8 
  %% 50 : 
  la4. si8 do4 sib4 
  la4 re4. re8 dod!4 
  re2 r2 
  re4. do8 sib2
  la4 re2 do4
  %% 55 :
  sib4 la4 sib8 sol8 re'4 ~
  re8 mi8 fa8 mi8 re4. do8 
  si?4 la4 si4 dod4 
  re1 
}

tenormidi = \relative do' {
  %%  1 : 
  #(silaa +2.0 #t) R\breve
  fa,1\rest la1 ~
  la2 sol2 la2 sib2 ~
  sib2 la4 sol4 la1 
  %%  5 : 
  r2 la4 sol4 la4 si!4 do2 ~
  do2 sol2. la4 sib2 
  la4 sol4 la4 fa4 sol1 
  la2 fa2 mi2. re8 mi8 
  fa1 sol2 fa2 ~
  %% 10 : 
  fa2 mi4 re4 dod2 re4 mi4 
  fa4 re4 la'4 mi4 fa2. fa4 
  mi1 fa2 re4 mi4 
  fa4 re4 sol2 fa2 mi2 
  re2. mi4 fa4 sol4 la2 ~
  %% 15 : 
  la2 mi2 fa1\rest 
  fa2\rest re1 do2 
  re2 fa1 mi4 re4 
  mi1 re2\rest re4 do4 
  re4 mi4 fa1 mi2 
  %% 20 : 
  fa1 re2. mi4 
  fa2 sol2 re4 re'2 sib4 
  la4 sol4 fad4 sol4 la2 sol2 
  sol4 la4 fa1 sol2 
  %> la2 si1 si2 
  la2 si2. ~ si8 r8 si2 
  %% 25 : 
  %> \dotsDown do2. \dotsNeutral si4 la2 la2 ~
  \dotsDown do2. \dotsNeutral si4 la4. r8 la2 ~
  la2 sol2 la4 si4 do4 re4 
  si1 la2 do2 ~
  do2 la2 sib2 la2 
  sol1 fa1 
  %% 30 : 
  sol2 mi2 fa1\rest 
  #(silun 0.0 +1.0 #t) r1 r2 fa!2 
  sol2 la2 re,2 mi2 
  %> fa2. fa4 sol4 fa4 mi2 
  fa2 ~ fa8 r8 fa4 sol4 fa4 mi2 
  %> fa2 fa2. re4 sol2 
  fa4. r8 fa2. re4 sol2 
  %% 35 : 
  la2 sib2 la2 sol2 
  \time 4/4 #(silun 0.0 -1.0 #t) r4 fa?2 mi8 re8 
  do4 fa8 sol8 la4 sol4 ~
  sol4 fa4 mi4 re8 do8 
  re8 mi8 fa4. mi8 la4 
  %% 40 : 
  sol4 fa4 do'4. si8 
  la2. re4 
  do4. si8 la4 sol8 fa8 
  sol2 #(silun 0.0 +0.5 #t) r2 
  #(silun 0.0 +0.0 #t) r2 r4 do4 ~
  %% 45 : 
  do4 si8 la8 sol4 do8 re8 
  mi8 re8 do8 si8 la2 ~
  la4 si4 do4 la4 
  si2 la2 
  #(silun 0.0 -1.0 #t) r4 fa2 mi8 re8 
  %% 50 : 
  do4 fa8 sol8 la4 sol8 fa8 
  mi4 re4 mi2 
  re4 sib'2 la4 
  sol4 fad4 sol2 
  re4. mi8 [ fa8 sol8 ] la4 
  %% 55 : 
  re,2. sol4 ~
  sol4 fa4 r8 sib8 la4 
  sol4 fad4 sol2 
  \once\override Script #'extra-offset = #'(0 . 1.3) la1^\fermata
}

bassemidi = \relative do {
  %%  1 : 
  re1. do2 
  re2 fa1 mi4 re4 
  mi1 r2 re4 do4 
  re4 mi4 fa4 mi4 re4 mi4 fa2 
  %%  5 : 
  sib,2 re1 do4 si!4 
  la4 si4 do4 re4 mi4 fa4 sol2 
  fa4 mi4 re2 do1 
  fa,2. sol4 la4 si4 do2 
  fa,1 do'2 re2 ~
  %% 10 : 
  re2 la2 r1 
  r1 la1 ~
  la2 sol2 la2 sib2 ~
  sib2 la4 sol4 la1 
  R\breve
  %% 15 : 
  la4 sol4 la4 si4 do2 la2 
  sib1 la1 
  sol2 re'2 la2. si4 
  do4 si4 la4 sol4 fa2 sib2 ~
  sib2 la2 sol1 
  %% 20 : 
  fa1 r1 
  R\breve
  %> #(silun 0.0 +1.0 #t) r2 re'2. re4 mi2 
  #(silun 0.0 +1.0 #t) r2 re'2 ~ re8 r8 re4 mi2 
  do2 re1 do4 si4 
  la2 sol2 sol'2 mi2 
  %% 25 : 
  la2. sol4 fa4 mi4 re2 
  mi\breve ~
  mi1 #(silun 0.0 +1.0 #t) r1
  fa1 re2 fa2 ~
  fa2 mi2 re1 
  %% 30 : 
  do1 re2 mi2 
  fad2 sol2 re2. do4 
  sib2 la2 sol1 
  la2 re1 dod2 
  re2. do4 sib2. sol4 
  %% 35 : 
  re'1 do1 
  \time 4/4 fa,2 r2 
  R1 
  do'2. si8 sol8 
  sol4 fa8 sol8 la4. si8 
  %% 40 : 
  do1 
  #(silaa -2.0 #t) R1 
  #(silun 0.0 +2.0 #t) r4 fa2 mi8 re8 
  do2 fa8 sol8 la4 ~
  la8 sol8 fa4 mi4 fa4 
  %% 45 : 
  re4 sol4 mi2 ~
  mi4 la4 re,4 la4 
  fa'2 mi2 ~
  mi2 la,2 
  r2 do2 
  %% 50 : 
  fa,2. sol4
  la1 
  re1 
  #(silaa -2.0 #t) R1 
  r4 sib2 la4 
  %% 55 : 
  sol4 fad4 sol2 
  re'1 ~
  re1 ~
  re1
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
      \transpose do do' 
      \bassemidi
    }
%%$    \new Staff { % tempo staff
%%$      \tempo 4 = 72 s1* 54
%%$      \tempo 4 = 47 s1 
%%$      \tempo 4 = 45 s1 
%%$      \tempo 4 = 35 s1 
%%$      \tempo 4 = 30 s1
%%$    }

  >>
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 2)
    }
  }
}  


\score {
  {
    \context PianoStaff <<
      \override PianoStaff.VerticalAlignment #'forced-distance = #14
      \context Staff = "dessus" <<
        \global
        \clef violin 
	\context Voice = "soprano" {\voiceOne \soprano}
	\context Voice = "alto" {\voiceTwo \alto}
      >>
      \context Staff = "basse" <<
        \global    
        \clef bass
	\context Voice = "tenor" {\voiceOne \tenor} 
	\context Voice = "basse" {\voiceTwo \basse}
      >>
    >>
    \bar "|."
  }
  \layout { }
  
}


