%% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.12.2"
\include "italiano.ly" 
%% version 1

\header{
  title = \markup {\center-column { \medium " Urbs Jerusalem "  \medium "2e verset" }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Jean Titelouze (1563-1633)"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
  opus = ""
  lastupdated = "2009-07-04"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Urbs Jerusalem (2e verset)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  style="Baroque"


 footer = "Mutopia-2009/07/16-1688"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
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

% BogenKurve: -------------------------------------------------------- %
#(define* (TiePosition dy #:optional once)
  (ly:export (mus:override 'Bottom 'Tie 'staff-position dy once)))
%
% Bogen: ------------------------------------------------------------- %
#(define* (Bogen dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'extra-offset (cons dx dy) once)))
% HalteBogenKurve: --------------------------------------------------- %
#(define* (HalteBogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'Tie 'height-limit dy once)))
%
% Tie: --------------------------------------------------------------- %
#(define* (Tie dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Tie 'extra-offset (cons dx dy) once)))
%
#(define* (modifpostexte dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TextScript 'extra-offset (cons dx dy) once)))


\paper {
  print-page-number = ##f
  %%$%%system-count = 3
  between-system-padding = 0\mm
  between-system-space = 23\mm
  indent = 2\cm
  head-separation = 0\mm
  foot-separation = 4\mm
  page-top-space = 10\mm
  bottom-margin = 6\mm
  top-margin = 5\mm
  foot-separation = -8\mm
  tagline = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##t
}

%%$#(set-default-paper-size "letter" 'portrait)
#(set-global-staff-size 19)

global = {
  \key do \major
  \time 4/2
}

soprano =  \relative do'' {
  %%  1 : 
  #(silaa +2 #f) R\breve
  R\breve
  R\breve
  R\breve
  %%  5 : 
  R\breve
  R\breve
  la2 la1 sol2 
  fa2. mi8 re8 la'4 re,4 sib'2 ~
  sib2 la4 sol4 fa4 sol4 la4 si!4 
  %% 10 : 
  do1 si2 sol2 
  la2 fa2 mi2 fa2 
  sol1 do,1 
  si'1\rest si2\rest la2 
  do2 la2 sib2 la2 ~
  %% 15 : 
  la2 sol2 la2 do2 ~
  do4 si?4 la4 sol4 fa4 sol4 la4 si?4 
  do2 sol2 la1 
  #(silun 0 -1 #t) r2 #(silun 0 -1 #t) r4 do4 la2 si2 
  do2 re2 mi2 do2 ~
  %% 20 : 
  do2 sib2 la2 do2 ~
  do4 do4 re2 mi2 la,2 
  do2 si4 la4 sold2 la2 
  si2 mi,2 mi1 
  #(silaa +4 #f) R1
  %% 25 : 
  R1
  R1
  R1
  la2 do2 
  re2 do4 la4 
  %% 30 : 
  sib2 la4 re4 
  do4 la4 sol4 la4
  R1
  #(silun 0 -2 #t) r2 #(silun 0 -1 #t) r4 la4 
  do2 re2 
  %% 35 : 
  do4 la4 sib4 sol4 
  do4 si?8 la8 sol4 la4 ~
  la4 sol4 fa2 
  #(silun 0 -2 #t) r4 la4 sib2 
  la4 re4 mi8 re8 do8 si8 
  %% 40 : 
  la4. si8 do4. re8 
  mi4 si4 do2 
  #(silun 0 -1 #t) r2 #(silun 0 -1 #t) r4 la4 
  do2 re2 
  do4 la4 sib2 
  %% 45 : 
  la8 sol8 fa2 mi4 ~
  mi8 re8 re2 do4 
  fa2 sol4 la4 ~
  la4 fa'4 mi4 re8 do8 
  re4 do4. do8 sib4 
  %% 50 : 
  la4 la2 sol4 ~
  sol4 fa2 mi4 
  fa2 la2 ~
  la4 sol8 fa8 mi4 fa4 
  sol4 fa8 mi8 re4 fa4 ~
  %% 55 : 
  fa8 sol8 la8 si8 do4 si8 la8 
  sol4 la4 re,4 mi4 
  fa4 mi2 re4 
  mi4 fa4 sol4 mi4 
  fa4. re8 fa8 mi8 fa8 sol8 
  %% 60 : 
  la8 si8 do2 re4 
  #(silun 0 -1 #t) r2 re2 ~
  re4 do8 si?8 la4 si4 
  do4 sib8 la8 sol4 do4 
  #(silun 0 -1 #t) r4 do2 si?8 la8 
  %% 65 : 
  sol4 la2 sol4 
  la8 si8 do4 sib8 la8 sol8 fa8 
  mi4 la8 si8 dod8 re4 dod8 
  re8 do8 sib4. la8 sol4 
  fad4 sol4 la4 sib4 
  %% 70 : 
  la4 re4. do8 sib4 
  la\breve^\fermata 
}

alto = \relative do' {
  %%  1 : 
  R\breve
  R\breve
  R\breve
  re2 re1 do2 
  %%  5 : 
  sib2. la8 sol8 re'4 la4 sib2 
  la2. si?4 do4 re4 dod4 re4 
  mi2 fa4 mi4 re1 
  re1 #(silun 0 -1 #t) r2 re2 
  mi2 fa4 mi4 re4 mi4 fa4 re4 
  %% 10 : 
  mi1 re2 mi2 
  #(silun 0 -1 #t) r2 la,2 do2 la2 
  sib1 la1 
  sol2 do2. si4 do4 re4 
  mi2 re1 do2 
  %% 15 : 
  re2 mi2 fa2 mi2 
  do2 re2. mi4 fa2 ~
  fa4 mi8 re8 mi8 fa8 mi4 fa2 do2 
  #(silaa -6 #t) R\breve
  #(silun 0 -1 #t) r1 r2 r4 fa4 
  %% 20 : 
  re2. mi4 fa2 sol2 
  la2 sol4 fa4 mi2 fa2 
  sol2 fa2 mi2 re4 do4 
  si1 do1 
  r2 la2 
  %% 25 : 
  do2 re2 
  do4 la4 sib2 
  la4 re2 do4 
  fa1 
  r4 re4 fa2 
  %% 30 : 
  sol2 fa4 re4 
  mi4 fa4 mi4. mi8 
  fa4. sol8 la4 re,4 ~
  re8 do8 re8 mi8 fa8 do8 fa4 
  mi4 la2 sol4 
  %% 35 : 
  la8 sol8 fa2 mi4 
  fa2 mi2 
  r4 mi4 re2 
  do4 re2 mi4 
  fa2 mi4 fa4 
  %% 40 : 
  r4 fa4 mi8 fa16 sol16 la4 ~
  la8 la8 sold4 la4 fa4 
  mi2 la,4 fa'4 
  mi4 fa2 mi8 re8 
  fa8 mi8 fa8 mi8 re8 do8 re4 
  %% 45 : 
  do4 re4. do8 sib4 
  la2 r2 
  r4 re4 mi4 fa8 mi8 
  fa8 sol8 la8 fa8 sol8 mi8 fa4 ~
  fa8 sol8 la8 do,8 re2 ~
  %% 50 : 
  re4 fa4. mi8 re4 
  do1 
  r4 la2 si8 do8 
  re4 si4 do8 si8 la8 re8 
  do8 sib8 la4 si8 sol8 la8 si8 
  %% 55 : 
  do4 fa4 mi8 do8 re4 
  mi4 re8 do8 si4 la8 sol8 
  la8 si8 do8 si8 la4 si4 
  do4 re2 dod4 
  re1 
  %% 60 : 
  r4 la'2 sol8 fa8 
  mi4 fa4 sol4 fa8 mi8 
  re4 mi4 fa4 mi8 re8 
  do4 re4 mi4 fa4 ~
  fa8 fa8 mi4 re2 
  %% 65 : 
  mi4 do4 re4. mi8 
  fa4 mi8 fad8 sol8 fa8 mi8 re8 
  dod4 re4 mi8 fa8 sol8 la8 
  sib8 la8 sol8 fa16 mi16 re8 do8 sib4 
  la4 re4 r4 re4 
  %% 70 : 
  re4. mi8 fad4 sol4 
  \once \override Staff.TimeSignature #'stencil = ##f
  fad\breve 
}

tenor = \relative do' {
  %%  1 : 
  r1 la2 la2 ~
  la2 sol2 fa2. mi8 re8 
  la'4 re,4 sib'2. la4 fa2 
  sol2 r2 la2 la2 ~
  %%  5 : 
  la2 sol2 fa2 sol2 ~
  sol4 fa8 mi8 fa2 mi2 la2 
  la1 sib1 ~
  sib2 la1 sol4 fa4 
  sol2 fa4 sol4 la4 sol4 fa2 
  %% 10 : 
  r2 mi2 sol2 mi2 
  fa2 re2 la'2 fa2 ~
  fa4 mi8 re8 mi2 fa1 
  mi2. fa8 sol8 la1 
  sol2 fad2 sol2 la2 
  %% 15 : 
  sib1 la1 ~
  la2 la2 sib4 la4 sol4 fa4 
  sol2 do1 la2 ~
  la4 si?4 do2. re2 mi4 ~
  mi8 re8 do8 si8 la8 sol8 la4 sol2 fa2 ~
  %% 20 : 
  fa2 sol2 r2 do2 
  la2 si2 do2 re2 
  mi2 re4 do4 si2 la2 ~
  la4 la4 sold2 la1 
  R1
  %% 25 : 
  r2 r4 re,4 
  fa2 sol2 
  fa4 re4 mi2 
  re8 mi8 fa8 sol8 la8 sol8 la8 fa8 
  sib2 la4 re8 do8 
  %% 30 : 
  sib8 la8 sol4  #(silun 0 -1 #t) r2 
  la2 do2 
  re2 do4 la4 
  sib2 la4 re4 
  do4 fa2 mi8 re8 
  %% 35 : 
  fa4 do4 re4 do8 sib8 
  la4 re2 do4 
  si4 do2 sib4 
  la2 r2 
  r4 la4 do2 
  %% 40 : 
  re2 do4 la4 
  si2 la2 
  sol4 la4 fa2
  sol4 la2 sol4 
  r2 r4 re4 
  %% 45 : 
  fa2 sol2 
  fa4 re4 mi4 fa4 
  r4 la4 do2 
  re2 do4 la4 
  sib4 la4 sol4. re8 
  %% 50 : 
  fa4. sol16 la16 sib2 
  la2 sol2 
  fa1 
  R1
  R1
  %% 55 : 
  la2. sol8 fa8 
  mi4 fad4 sol4 fa8 mi8 
  re4 do4 fa4 mi8 re8 
  la'4 sol8 fa8 mi4 la4 
  re,4 sib'2 la8 sol8 
  %% 60 : 
  fa4 mi8 re8 mi4 sol4 ~
  sol4 la4 sib4 la8 sol8 
  fa4 sol4 la8 fa8 sol4 
  la8 mi8 fa4 sol8 mi8 la4 
  sol4 la8 sol8 fad4 sol8 fa8 
  %% 65 : 
  mi4 fa4. mi8 re4 ~
  re4 do8 re8 mi8 fa8 sol4 ~
  sol4 fa4 mi8 re8 mi4 
  re4. mi8 fa4 sol4 
  la4 r4 re,4. mi8 
  %% 70 : 
  fad4. sol8 la4 sol16 sib16 la16 sol16 
  \once \override Script #'extra-offset = #'(0 . 0.5) re'\breve^\fermata 
}

basse = \relative do {
  %%  1 : 
  re2 re1 do2 
  sib2. la8 sol8 re'4 la4 sib2 
  fa2 sol2 re'2. la4 
  sib4 la8 sol8 sol'2 fa2. mi4 
  %%  5 : 
  re\breve
  do2 re2 la2. si4 
  dod2 re2 sib2 sol2 
  #(silun 0 +1 #t) r2 re'2 fa2 re2 
  do2 re1 re2 
  %% 10 : 
  la1 r1 
  R\breve
  r1 r2 la2 
  do2 la2 fa'1 
  do2 re2 sol,1 ~
  %% 15 : 
  sol1 re'2 mi2 
  fa2. mi4 re1 
  do1 fa2. fa4 
  re2 mi2 fa2 sol2 
  la2 fa2 do2 la2 
  %% 20 : 
  sib2 sol2 re'2 mi2 
  fa2 re2 la'2 fa2 
  mi\breve ~
  mi1 r2 la,2 
  \time 4/4 do2 re2 
  %% 25 : 
  do4 la4 sib2 
  la4 re8 do8 sib8 la8 sol4 
  la1 
  #(silaa -2 #f) R1
  R1
  %% 30 : 
  R1
  R1
  #(silun 0 +2 #t) r4 re4 fa2 
  sol2 fa4 re4 
  la'4 fa4 sib2 
  %% 35 : 
  la2 sol2 
  fa4 re4 mi2 
  #(silun 0 +1 #t) r2 #(silun 0 +1 #t) r4 re4 
  fa2 sol2 
  fa4 re4 la'4. sol8 
  %% 40 : 
  fa8 mi8 re4 mi2 ~
  mi2 r4 la,4 
  do2 re2 
  do4 la4 sib2 
  la4 re4 sol,2 
  %% 45 : 
  la4 sib4 sol2 
  la1 
  re2 #(silun 0 +2 #t) r2 
  #(silaa -4 #f) R1
  r2 r4 sol,4 
  %% 50 : 
  re'2. sol,4 
  do4 fa,4 do'2 
  fa,1 
  R1
  R1
  %% 55 : 
  R1
  R1
  R1
  R1
  r2 re'2 ~
  %% 60 : 
  re4 do8 si8 la4 si4 
  do4 si8 la8 sol4 la4 
  sib4 sol4 re'4 do8 sib8 
  la4 fa4 do'4 la4 
  do2 re4 sol,4 
  %% 65 : 
  do4 fa,4 sib2 
  la2 sol2 
  la1 
  re,2 re'2 ~
  re8 [ do8 ] sib8 la16 sol16 fad4 sol4 
  %% 70 : 
  re'1 
  \once \override Staff.TimeSignature #'stencil = ##f
  \time 4/2 re\breve \bar "|."

}

sopranomidi =  \relative do'' {
  %%  1 : 
  #(silaa +2 #f) R\breve
  R\breve
  R\breve
  R\breve
  %%  5 : 
  R\breve
  R\breve
  %> la2 la1 sol2 
  la4. r8 la1 sol2 
  fa2. mi8 re8 la'4 re,4 sib'2 ~
  sib2 la4 sol4 fa4 sol4 la4 si!4 
  %% 10 : 
  do1 si2 sol2 
  la2 fa2 mi2 fa2 
  sol1 do,1 
  si'1\rest si2\rest la2 
  do2 la2 sib2 la2 ~
  %% 15 : 
  la2 sol2 la2 do2 ~
  do4 si?4 la4 sol4 fa4 sol4 la4 si?4 
  do2 sol2 la1 
  #(silun 0 -1 #t) r2 #(silun 0 -1 #t) r4 do4 la2 si2 
  do2 re2 mi2 do2 ~
  %% 20 : 
  do2 sib2 la2 do2 ~
  %> do4 do4 re2 mi2 la,2 
  do8 r8 do4 re2 mi2 la,2 
  do2 si4 la4 sold2 la2 
  si2 mi,2 mi1 
  #(silaa +4 #f) R1
  %% 25 : 
  R1
  R1
  R1
  la2 do2 
  re2 do4 la4 
  %% 30 : 
  sib2 la4 re4 
  do4 la4 sol4 la4
  R1
  #(silun 0 -2 #t) r2 #(silun 0 -1 #t) r4 la4 
  do2 re2 
  %% 35 : 
  do4 la4 sib4 sol4 
  do4 si?8 la8 sol4 la4 ~
  la4 sol4 fa2 
  #(silun 0 -2 #t) r4 la4 sib2 
  la4 re4 mi8 re8 do8 si8 
  %% 40 : 
  la4. si8 do4. re8 
  mi4 si4 do2 
  #(silun 0 -1 #t) r2 #(silun 0 -1 #t) r4 la4 
  do2 re2 
  do4 la4 sib2 
  %% 45 : 
  la8 sol8 fa2 mi4 ~
  %> mi8 re8 re2 do4
  mi8 re16 r16 re2 do4 
  fa2 sol4 la4 ~
  la4 fa'4 mi4 re8 do8 
  re4 do4 ~ do16 r16 do8 sib4 
  %% 50 : 
  la4 la2 sol4 ~
  sol4 fa2 mi4 
  fa2 la2 ~
  la4 sol8 fa8 mi4 fa4 
  sol4 fa8 mi8 re4 fa4 ~
  %% 55 : 
  fa8 sol8 la8 si8 do4 si8 la8 
  sol4 la4 re,4 mi4 
  fa4 mi2 re4 
  mi4 fa4 sol4 mi4 
  fa4. re8 fa8 mi8 fa8 sol8 
  %% 60 : 
  la8 si8 do2 re4 
  #(silun 0 -1 #t) r2 re2 ~
  re4 do8 si?8 la4 si4 
  do4 sib8 la8 sol4 do4 
  #(silun 0 -1 #t) r4 do2 si?8 la8 
  %% 65 : 
  sol4 la2 sol4 
  la8 si8 do4 sib8 la8 sol8 fa8 
  mi4 la8 si8 dod8 re4 dod8 
  re8 do8 si4. la8 sol4 
  fad4 sol4 la4 sib4 
  %% 70 : 
  la4 re4. do8 sib4 
  la\breve^\fermata 
}

altomidi = \relative do' {
  %%  1 : 
  R\breve
  R\breve
  R\breve
  %> re2 re1 do2 
  re4. r8 re1 do2 
  %%  5 : 
  sib2. la8 sol8 re'4 la4 sib2 
  la2. si?4 do4 re4 dod4 re4 
  %> mi2 fa4 mi4 re1 
  mi2 fa4 mi4 re2 ~ re4. r8
  re1 #(silun 0 -1 #t) r2 re2 
  mi2 fa4 mi4 re4 mi4 fa4 re4 
  %% 10 : 
  mi1 re2 mi2 
  #(silun 0 -1 #t) r2 la,2 do2 la2 
  sib1 la1 
  sol2 do2. si4 do4 re4 
  mi2 re1 do2 
  %% 15 : 
  re2 mi2 fa2 mi2 
  do2 re2. mi4 fa2 ~
  fa4 mi8 re8 mi8 fa8 mi4 fa2 do2 
  #(silaa -6 #t) R\breve
  #(silun 0 -1 #t) r1 r2 r4 fa4 
  %% 20 : 
  re2. mi4 fa2 sol2 
  la2 sol4 fa4 mi2 fa2 
  sol2 fa2 mi2 re4 do4 
  si1 do1 
  r2 la2 
  %% 25 : 
  do2 re2 
  do4 la4 sib2 
  la4 re2 do4 
  fa1 
  r4 re4 fa2 
  %% 30 : 
  sol2 fa4 re4 
  %> mi4 fa4 mi4. mi8 
  mi4 fa4 mi4 ~ mi16 r16 mi8 
  fa4. sol8 la4 re,4 ~
  re8 do8 re8 mi8 fa8 do8 fa4 
  mi4 la2 sol4 
  %% 35 : 
  la8 sol8 fa2 mi4 
  fa2 mi2 
  r4 mi4 re2 
  do4 re2 mi4 
  fa2 mi4 fa4 
  %% 40 : 
  r4 fa4 mi8 fa16 sol16 la4 ~
  %> la8 la8 sold4 la4 fa4 
  la16 r16 la8 sold4 la4 fa4 
  mi2 la,4 fa'4 
  mi4 fa2 mi8 re8 
  fa8 mi8 fa8 mi8 re8 do8 re4 
  %% 45 : 
  do4 re4. do8 sib4 
  la2 r2 
  r4 re4 mi4 fa8 mi8 
  fa8 sol8 la8 fa8 sol8 mi8 fa4 ~
  fa8 sol8 la8 do,8 re2 ~
  %% 50 : 
  re4 fa4. mi8 re4 
  do1 
  r4 la2 si8 do8 
  re4 si4 do8 si8 la8 re8 
  do8 sib8 la4 si8 sol8 la8 si8 
  %% 55 : 
  do4 fa4 mi8 do8 re4 
  mi4 re8 do8 si4 la8 sol8 
  la8 si8 do8 si8 la4 si4 
  do4 re2 dod4 
  re1 
  %% 60 : 
  r4 la'2 sol8 fa8 
  mi4 fa4 sol4 fa8 mi8 
  re4 mi4 fa4 mi8 re8 
  do4 re4 mi4 fa4 ~
  %> fa8 fa8 mi4 re2 
  fa16 r16 fa8 mi4 re2 
  %% 65 : 
  mi4 do4 re4. mi8 
  fa4 mi8 fad8 sol8 fa8 mi8 re8 
  dod4 re4 mi8 fa8 sol8 la8 
  sib8 la8 sol8 fa16 mi16 re8 do8 sib4 
  %> la4 re4 r4 re4 
  la4 re4 r4 re8 r8
  %% 70 : 
  re4. mi8 fad4 sol4 
  \once \override Staff.TimeSignature #'stencil = ##f
  fad\breve 
}

tenormidi = \relative do' {
  %%  1 : 
  %> r1 la2 la2 ~
  r1 la4. r8 la2 ~
  la2 sol2 fa2. mi8 re8 
  la'4 re,4 sib'2. la4 fa2 
  %> sol2 r2 la2 la2 ~
  sol2 r2 la4. r8 la2 ~
  %%  5 : 
  la2 sol2 fa2 sol2 ~
  %> sol4 fa8 mi8 fa2 mi2 la2 
  sol4 fa8 mi8 fa2 mi2 la4. r8 
  la1 sib1 ~
  sib2 la1 sol4 fa4 
  sol2 fa4 sol4 la4 sol4 fa2 
  %% 10 : 
  r2 mi2 sol2 mi2 
  fa2 re2 la'2 fa2 ~
  fa4 mi8 re8 mi2 fa1 
  mi2. fa8 sol8 la1 
  sol2 fad2 sol2 la2 
  %% 15 : 
  sib1 la1 ~
  %> la2 la2 sib4 la4 sol4 fa4 
  la4. r8 la2 sib4 la4 sol4 fa4 
  sol2 do1 la2 ~
  la4 si?4 do2. re2 mi4 ~
  mi8 re8 do8 si8 la8 sol8 la4 sol2 fa2 ~
  %% 20 : 
  fa2 sol2 r2 do2 
  la2 si2 do2 re2 
  mi2 re4 do4 si2 la2 ~
  %> la4 la4 sold2 la1 
  la8 r8 la4 sold2 la1 
  R1
  %% 25 : 
  r2 r4 re,4 
  fa2 sol2 
  fa4 re4 mi2 
  re8 mi8 fa8 sol8 la8 sol8 la8 fa8 
  sib2 la4 re8 do8 
  %% 30 : 
  sib8 la8 sol4  #(silun 0 -1 #t) r2 
  la2 do2 
  re2 do4 la4 
  sib2 la4 re4 
  do4 fa2 mi8 re8 
  %% 35 : 
  fa4 do4 re4 do8 sib8 
  la4 re2 do4 
  si4 do2 sib4 
  la2 r2 
  r4 la4 do2 
  %% 40 : 
  re2 do4 la4 
  si2 la2 
  sol4 la4 fa2
  sol4 la2 sol4 
  r2 r4 re4 
  %% 45 : 
  fa2 sol2 
  fa4 re4 mi4 fa4 
  r4 la4 do2 
  re2 do4 la4 
  sib4 la4 sol4. re8 
  %% 50 : 
  fa4. sol16 la16 sib2 
  la2 sol2 
  fa1 
  R1
  R1
  %% 55 : 
  la2. sol8 fa8 
  mi4 fad4 sol4 fa8 mi8 
  re4 do4 fa4 mi8 re8 
  la'4 sol8 fa8 mi4 la4 
  re,4 sib'2 la8 sol8 
  %% 60 : 
  fa4 mi8 re8 mi4 sol4 ~
  sol4 la4 sib4 la8 sol8 
  fa4 sol4 la8 fa8 sol4 
  la8 mi8 fa4 sol8 mi8 la4 
  sol4 la8 sol8 fad4 sol8 fa8 
  %% 65 : 
  mi4 fa4. mi8 re4 ~
  re4 do8 re8 mi8 fa8 sol4 ~
  sol4 fa4 mi8 re8 mi4 
  re4. mi8 fa4 sol4 
  la4 r4 re,4. mi8 
  %% 70 : 
  fad4. sol8 la4 sol16 sib16 la16 sol16 
  re'\breve^\fermata 
}

bassemidi = \relative do {
  %%  1 : 
  %> re2 re1 do2 
  re4. r8 re1 do2 
  sib2. la8 sol8 re'4 la4 sib2 
  fa2 sol2 re'2. la4 
  sib4 la8 sol8 sol'2 fa2. mi4 
  %%  5 : 
  re\breve
  do2 re2 la2. si4 
  dod2 re2 sib2 sol2 
  #(silun 0 +1 #t) r2 re'2 fa2 re2 
  %> do2 re1 re2 
  do2 re2 ~ re4. r8 re2 
  %% 10 : 
  la1 r1 
  R\breve
  r1 r2 la2 
  do2 la2 fa'1 
  do2 re2 sol,1 ~
  %% 15 : 
  sol1 re'2 mi2 
  fa2. mi4 re1 
  %> do1 fa2. fa4 
  do1 fa2 ~ fa8 r8 fa4 
  re2 mi2 fa2 sol2 
  la2 fa2 do2 la2 
  %% 20 : 
  sib2 sol2 re'2 mi2 
  fa2 re2 la'2 fa2 
  mi\breve ~
  mi1 r2 la,2 
  \time 4/4 do2 re2 
  %% 25 : 
  do4 la4 sib2 
  la4 re8 do8 sib8 la8 sol4 
  la1 
  #(silaa -2 #f) R1
  R1
  %% 30 : 
  R1
  R1
  #(silun 0 +2 #t) r4 re4 fa2 
  sol2 fa4 re4 
  la'4 fa4 sib2 
  %% 35 : 
  la2 sol2 
  fa4 re4 mi2 
  #(silun 0 +1 #t) r2 #(silun 0 +1 #t) r4 re4 
  fa2 sol2 
  fa4 re4 la'4. sol8 
  %% 40 : 
  fa8 mi8 re4 mi2 ~
  mi2 r4 la,4 
  do2 re2 
  do4 la4 sib2 
  la4 re4 sol,2 
  %% 45 : 
  la4 sib4 sol2 
  la1 
  re2 #(silun 0 +2 #t) r2 
  #(silaa -4 #f) R1
  r2 r4 sol,4 
  %% 50 : 
  re'2. sol,4 
  do4 fa,4 do'2 
  fa,1 
  R1
  R1
  %% 55 : 
  R1
  R1
  R1
  R1
  r2 re'2 ~
  %% 60 : 
  re4 do8 si8 la4 si4 
  do4 si8 la8 sol4 la4 
  sib4 sol4 re'4 do8 sib8 
  la4 fa4 do'4 la4 
  do2 re4 sol,4 
  %% 65 : 
  do4 fa,4 sib2 
  la2 sol2 
  la1 
  re,2 re'2 ~
  re8 [ do8 ] sib8 la16 sol16 fad4 sol4 
  %% 70 : 
  re'1 
  \once \override Staff.TimeSignature #'stencil = ##f
  \time 4/2 re\breve \bar "|."
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
      tempoWholesPerMinute = #(ly:make-moment 70 2)
    }
  }
}  


\score {
  <<
    \context PianoStaff <<
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
    %\context Lyrics \cantusfirmus
  >>
  \layout { }
  
}


