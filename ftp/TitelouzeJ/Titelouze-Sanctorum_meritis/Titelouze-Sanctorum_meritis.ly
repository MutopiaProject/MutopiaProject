% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.10.15"
\include "italiano.ly" 
%%
%% Version 1 
%%
\header{
  title = \markup {\center-align { \medium " Sanctorum meritis "  \medium "2e verset" }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Jean Titelouze (1563-1633)"
  copyright = "Creative Commons Attribution-ShareAlike 2.5"
  source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
  opus = ""
  lastupdated = "2007-02-11 Fête de Notre Dame de Lourdes"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Sanctorum meritis (2e verset)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  style="Baroque"
 footer = "Mutopia-2007/02/17-928"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

%#(set-default-paper-size "a4" 'landscape)
%#(set-global-staff-size 18)

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
  \key la \minor
  \time 4/4
}

soprano = \relative do' {
  \halsup
  %%  1 :
  re2 la'2 
  sib4 la4. sol8 la8 si8 
  do8 si8 la8 sol8 la4 sol4 
  si4 do4 si4 re4 ~
  %%  5 :
  re4 do8 si8 la8 sol8 fa4 ~
  fa8 re8 sol4 fa2 
  mi4 fa4. sol8 la8 si8
  do4. si16 la16 sol2 
  la8 si8 do4 si8 do8 la8. si16 
  %% 10 :
  do8 re8 mi2 re8 do8 
  si2 mi,8 fad8 sol4 ~
  sol4 la4 re,4 mi4 
  #(silun 0.0 +1 #t) r4 do'4 si4 do4 ~
  do8 re8 mi2 mi4 
  %% 15 :
  re8 do8 si8 la8 sol8 fad8 sol4 ~
  sol4 la4 si2 
  r2 r4 la4 
  fad4 sol2 fa4 
  mi4 do'4 si4. do8 
  %% 20 :
  re4 do2 si4 
  do4 re2 dod4 
  re4 si4 do4 si8 la8 
  sold4 la4 mi2 ~
  mi4 fad4 sol4 mi4 
  %% 25 :
  r4 si'2 sold4 
  la2 si4 do4 
  re4. mi8 dod4 re4 ~
  re4 do2 si4 
  re2 mi4. re16 do16 
  %% 30 :
  si2 la2 
  sol4 la4 r4 re4 
  do4 la4 do8 si8 si4 ~
  si8 la8 la4 sold4 la4 ~
  la8 [ la8 ] sol8 la16 si16 do2 
  %% 35 :
  #(silaa +4 #f) R1 
  R1 
  la2 la4 do4 
  si4 sol4 la2 
  sol4 si4 do4 re4 ~
  %% 40 :
  re8 do8 do2 si8 la8 
  sol4. la8 si4. dod8 
  re8 do8 si4. la8 la4 ~
  la8 la8 sold4 la2 
  do8 la4 do4 si16 la16 si4 
  %% 45 :
  mi,4 la2 sol8 la8
  si2 #(silun 0 +1 #t) r2 
  r2 la4. si8 
  do8 si8 la8 sol8 fa8 do'16 si16 la4 ~
  la8 fa8 mi4 la8 si8 do8 si8 
  %% 50 :
  la2 sol4 la4 ~
  la4 fa4 sol4. la8 
  fad8 [ sol8 ] la8 si4 do16 [ re16 mi8 mi8 ] ~
  mi8 re8 do8 la4 do4 si16 la16 
  sol4 sold2 la4 
  %% 55 :
  si2 mi,2 
  fa4 mi4 la2 ~ 
  la4 la4 sold4 fad4 
  sold1^\fermata  \bar "|."
}

alto = \relative do' {
  \global \halsdown
  %%  1 :
  #(silaa -7 #t) R1
  si2\rest la2 
  mi'2 fa4 mi4 ~
  mi8 re8 mi8 fa8 sol8 fa8 mi8 re8 
  %%  5 :
  mi4 la,4 re4. do8 
  sib4. sol8 la8 si16 do16 re4 ~
  re4 do4 re8 mi8 fa4 
  mi2 r4 mi4 ~
  mi4 re8 do8 re8 mi4 re8 
  %% 10 :
  \dotsDown sol4. \dotsNeutral mi8 la4 la4 
  sol8 fa8 mi8 re8 do4 re4 
  do8 si8 la8 do8 si4 do8 si8 
  do8 re8 mi8 fad8 sol2 
  la4 sol8 fa8 sol2 
  %% 15 :
  #(silaa -4 #t) R1 
  r2 r4 mi4 
  dod4 re2 dod4 
  re8 do8 si4 do4 la8 si8 
  do8 re8 mi4. fad8 sol4 ~
  %% 20 :
  sol8 re8 fa8 mi8 re2 
  mi4 fa4 sol4 la4 
  re,2 mi4 re4 ~
  re4 do4 si2 
  la2 si4 do4 
  %% 25 :
  re4. mi16 fa16 sol8 fa8 mi8 re8 
  mi4 fad4 sol4 la4 ~
  la8 la8 sold4 la2 
  r4 la4 fad4 sol4 ~
  sol4 fa4 mi4 la4 ~
  %% 30 :
  la4 sol2 fa4
  mi2 re2 
  mi4 fa4 sol4 sol4 
  mi4 fa4 mi2 
  r4 mi4 mi4 fa4 
  %% 35 :
  \dotsDown mi4. do8 re2 
  do4 mi4. re8 sol4 ~
  sol4 fa8 mi8 fa8 mi16 re16 mi8 fa8 
  sol8 fa8 mi8 re8 do4. re8 
  mi4. sol4 mi8 la4 
  %% 40 :
  sol4 fa8 mi8 re2 
  mi2 re8 sol4 fad16 mi16 
  fad4 sol4 do,2 
  r4 mi4 mi4 fa4 
  mi4 do4 re2 
  %% 45 :
  do2. mi4 
  re4 mi8 re8 do4 re8 do8 
  si2 r4 la4 ~
  la8 si8 do8 si8 la8 [ sol8 ] fa8 do'16 re16 
  mi8 re8 do4 r4 #(silun 0 -1 #t) r8 mi8 ~
  %% 50 :
  mi8 re8 do8 re8 mi8 re8 do8 si8 
  la8 si8 do8 re8 mi8 re8 mi4 
  re8 mi8 fad4 sol8 [ la8 ] si8 do8 
  do8 si8 la16 sol16 fad16 mi16 re8 do8 re4 
  mi2 re4 dod4 
  %% 55 :
  re4 si4 do2 
  do2. si8 la8 
  do4 re8 do8 si4 la4 
  si1
}

tenor = \relative do {
  \global
  \halsup
  %%  1 :
  #(silaa +4 #f) R1*5
  %%  6 :
  r2 re2 
  la'2 sib4 la4 ~
  la8 sol8 la8 si8 do4. si8 
  la8 sol8 la4 sol4 fad4 
  %% 10 :
  mi4 do'2 si8 la8 
  mi'4 sold,4 la4 si4 
  mi,4 fad4 sol2 
  fa8 mi8 la4 r4 sol4 
  do4. do8 si4. la8 
  %% 15 :
  si8 do8 re2 do4 
  si4 la4 sold2 
  la4 fad4 sold4 la4 
  si8 la8 sol8 fa8 mi4 re4 
  mi4. fad8 sol8 la8 si4 
  %% 20 :
  #(silun 0 +3 #t) r4 la4 fad4 sol4 ~
  sol4 fa4 mi2 
  la4 sol4 do,4 re4 
  mi2 #(silun 0 +1 #t) r4 mi4 
  dod4 re2 do4 
  %% 25 :
  si4 sol'4. la8 si4 ~
  si4 la4 sol4 fa8 mi8 
  re2 mi4 fad4 
  sol4 la2 sol4 
  la4. si8 do2 
  %% 30 :
  #(silun 0 +3.5 #t) r4 mi4 dod4 re4 ~
  re4 do2 si4 
  do4 re4 r4 mi4 
  dod4 re2 dod4 
  si2  #(silun 0 +3 #t) r4 la4 
  %% 35 :
  la4 do4 si4 sol4 
  la2 sol4 si4 
  do8 la8 re4. do16 si16 la4 
  mi2 fa8 sol8 la8 si8 
  do4 sol4 r2 
  %% 40 :
  r2  #(silun 0 -0.7 #t) r4 si4 
  si4 do4 si4 sol4 
  la4 sol8 fa8 mi4. la16 si16 
  do8 re8 si4 la2 
  la4. mi8 fa4 sol4 ~
  %% 45 :
  sol4 fa4 mi4. fad8 
  sol4. fa8 mi4 fad4 
  sol8 re8 sol2 fa4 
  mi2 #(silun 0 +1 #t) r2 
  la4. si8 do8 si8 la8 sol8 
  %% 50 :
  fa4 mi4 #(silun 0 -1) r4 mi4 
  fa8 sol8 la4 sol8 fa8 mi8 do'8 ~
  do8 [ si8 ] la8 re4 do8 si8 [ sol8 ] 
  la8 si8 do8 re8 la4. si8 
  do4 si2 la4 ~
  %% 55 :
  la4 sol2 la4 ~
  la4 sol8 fa8 mi2 
  mi1 ~
  mi1^\fermata
}

basse = \relative do { 
  \global \halsdown
  %%  1 :
   #(silaa -4 #f) R1*12
  %% 13 : 
  la2 mi'2 
  fa4 mi4. re8 mi8 fa8 
  %% 15 :
  sol4. fa8 mi8 re8 mi4 ~
  mi8 re8 do4 si2 
  la2 mi'2 
  re4 sol,4 la2 
  la2 mi'2 
  %% 20 :
  R1 
  #(silun 0 -1 #t) r2  #(silun 0 +0.7 #t) r4 la,4 
  fad4 sol2 fa4 
  mi4 la2 sold4 
  la2 #(silun 0 -2 #t) r2 
  %% 25 :
  #(silun 0 -0.7 #t) r2  #(silun 0 -1 #t) r4 mi'4 
  dod4 re2 do4 
  si2 la2 
  mi'4 fa4 re2 ~
  re2 la'2 
  %% 30 :
  R1 
  #(silun 0 -1 #t) r4 la4 fad4 sol4 ~
  sol4 fa4 mi2 
  la4 re,4 mi2 ~
  mi2  #(silun 0 -1 #t) r2 
  %% 35 :
  #(silaa -2 #t) R1 
  R1 
  R1 
  R1 
  mi2 mi4 fa4 
  %% 40 :
  mi4 do4 sol'2 
  mi4. fad8 sol4 mi4 
  re4 sol,4 la2 
  mi'4. re8 dod4 re4
  R1 
  %% 45 :
  la2 la4 do4 
  si4 sol4 la2
  sol4 si4 do4 re4 
  la2 #(silun 0 -2 #t) r2 
  R1 
  %% 50 :
  la4. si8 do8 si8 la8 sol8 
  fa2 do'2 
  re2 mi2 
  fa1 
  mi1 
  %% 55 :
  re4 mi4. re8 do8 si8 
  la2. sol8 fa8 
  mi1 ~
  mi
}

sopranomidi = \relative do' {
  \halsup
  %%  1 :
  re2 la'2 
  sib4 la4. sol8 la8 si8 
  do8 si8 la8 sol8 la4 sol4 
  si4 do4 si4 re4 ~
  %%  5 :
  re4 do8 si8 la8 sol8 fa4 ~
  fa8 re8 sol4 fa2 
  mi4 fa4. sol8 la8 si8
  do4. si16 la16 sol2 
  la8 si8 do4 si8 do8 la8. si16 
  %% 10 :
  do8 re8 mi2 re8 do8 
  si2 mi,8 fad8 sol4 ~
  sol4 la4 re,4 mi4 
  #(silun 0.0 +1 #t) r4 do'4 si4 do4 ~
  do8 re8 mi2 mi4 
  %% 15 :
  re8 do8 si8 la8 sol8 fad8 sol4 ~
  sol4 la4 si2 
  r2 r4 la4 
  fad4 sol2 fa4 
  mi4 do'4 si4. do8 
  %% 20 :
  re4 do2 si4 
  do4 re2 dod4 
  re4 si4 do4 si8 la8 
  sold4 la4 mi2 ~
  mi4 fad4 sol4 mi4 
  %% 25 :
  r4 si'2 sold4 
  la2 si4 do4 
  re4. mi8 dod4 re4 ~
  re4 do2 si4 
  re2 mi4. re16 do16 
  %% 30 :
  si2 la2 
  sol4 la4 r4 re4 
  %%> ORIGINAL>do4 la4 do8 si8 si4 ~
  do4 la4 do8 si16 r16 si4 ~
  %%>================
  %%> ORIGINAL >si8 la8 la4 sold4 la4 ~
  si8 la16 r16 la4 sold4 la4 ~
  %%>================
  %%> ORIGINAL >la8 [ la8 ] sol8 la16 si16 do2 
  la16 r16 [ la8 ] sol8 la16 si16 do2 
  %%>================
  %% 35 :
  #(silaa +4 #f) R1 
  R1 
  la2 la4 do4 
  si4 sol4 la2 
  sol4 si4 do4 re4 ~
  %% 40 :
  %%> ORIGINAL >re8 do8 do2 si8 la8 
  re8 do16 r16 do2 si8 la8 
  %%>================
  sol4. la8 si4. dod8 
  %%> ORIGINAL > re8 do8 si4. la8 la4 ~
  re8 do8 si4. la16 r16 la4 ~
  %%>================
  %%> ORIGINAL > la8 la8 sold4 la2 
  la16 r16 la8 sold4 la2
  %%>================ 
  do8 la4 do4 si16 la16 si4 
  %% 45 :
  mi,4 la2 sol8 la8
  si2 #(silun 0 +1 #t) r2 
  r2 la4. si8 
  do8 si8 la8 sol8 fa8 do'16 si16 la4 ~
  la8 fa8 mi4 la8 si8 do8 si8 
  %% 50 :
  la2 sol4 la4 ~
  la4 fa4 sol4. la8 
  %%> ORIGINAL >fad8 [ sol8 ] la8 si4 do16 [ re16 mi8 mi8 ] ~
  fad8 [ sol8 ] la8 si4 do16 [ re16 mi16 r16 mi8 ] ~
  %%>================
  mi8 re8 do8 la4 do4 si16 la16 
  sol4 sold2 la4 
  %% 55 :
  si2 mi,2 
  fa4 mi4 la2 ~ 
  %%> ORIGINAL >la4 la4 sold4 fad4 
  la8 r8 la4 sold4 fad4 
  %%>================
  sold1^\fermata  \bar "|."
}

altomidi = \relative do' {
  \global \halsdown
  %%  1 :
  #(silaa -7 #t) R1
  si2\rest la2 
  mi'2 fa4 mi4 ~
  mi8 re8 mi8 fa8 sol8 fa8 mi8 re8 
  %%  5 :
  mi4 la,4 re4. do8 
  sib4. sol8 la8 si16 do16 re4 ~
  re4 do4 re8 mi8 fa4 
  mi2 r4 mi4 ~
  mi4 re8 do8 re8 mi4 re8 
  %% 10 :
  %%> ORIGINAL > \dotsDown sol4. \dotsNeutral mi8 la4 la4 
  \dotsDown sol4. \dotsNeutral mi8 la8 r8 la4 
  %%>================
  sol8 fa8 mi8 re8 do4 re4 
  do8 si8 la8 do8 si4 do8 si8 
  do8 re8 mi8 fad8 sol2 
  la4 sol8 fa8 sol2 
  %% 15 :
  #(silaa -4 #t) R1 
  r2 r4 mi4 
  dod4 re2 dod4 
  re8 do8 si4 do4 la8 si8 
  do8 re8 mi4. fad8 sol4 ~
  %% 20 :
  sol8 re8 fa8 mi8 re2 
  mi4 fa4 sol4 la4 
  re,2 mi4 re4 ~
  re4 do4 si2 
  la2 si4 do4 
  %% 25 :
  re4. mi16 fa16 sol8 fa8 mi8 re8 
  mi4 fad4 sol4 la4 ~
  %%> ORIGINAL >la8 la8 sold4 la2 
  la16 r16 la8 sold4 la2 
  %%>================
  r4 la4 fad4 sol4 ~
  sol4 fa4 mi4 la4 ~
  %% 30 :
  la4 sol2 fa4
  mi2 re2 
  %%> ORIGINAL >mi4 fa4 sol4 sol4 
  mi4 fa4 sol8 r8 sol4 
  %%>================
  mi4 fa4 mi2 
  %%> ORIGINAL > r4 mi4 mi4 fa4 
  r4 mi8 r8 mi4 fa4
  %%>================ 
  %% 35 :
  \dotsDown mi4. do8 re2 
  do4 mi4. re8 sol4 ~
  sol4 fa8 mi8 fa8 mi16 re16 mi8 fa8 
  sol8 fa8 mi8 re8 do4. re8 
  mi4. sol4 mi8 la4 
  %% 40 :
  sol4 fa8 mi8 re2 
  mi2 re8 sol4 fad16 mi16 
  fad4 sol4 do,2 
  %%> ORIGINAL > r4 mi4 mi4 fa4 
  r4 mi8 r8 mi4 fa4
  %%>================ 
  mi4 do4 re2 
  %% 45 :
  do2. mi4 
  re4 mi8 re8 do4 re8 do8 
  si2 r4 la4 ~
  la8 si8 do8 si8 la8 [ sol8 ] fa8 do'16 re16 
  mi8 re8 do4 r4 #(silun 0 -1 #t) r8 mi8 ~
  %% 50 :
  mi8 re8 do8 re8 mi8 re8 do8 si8 
  la8 si8 do8 re8 mi8 re8 mi4 
  re8 mi8 fad4 sol8 [ la8 ] si8 do8 
  do8 si8 la16 sol16 fad16 mi16 re8 do8 re4 
  mi2 re4 dod4 
  %% 55 :
  re4 si4 do2 
  do2. si8 la8 
  do4 re8 do8 si4 la4 
  si1
}

tenormidi = \relative do {
  \global
  \halsup
  %%  1 :
  #(silaa +4 #f) R1*5
  %%  6 :
  r2 re2 
  la'2 sib4 la4 ~
  la8 sol8 la8 si8 do4. si8 
  la8 sol8 la4 sol4 fad4 
  %% 10 :
  mi4 do'2 si8 la8 
  mi'4 sold,4 la4 si4 
  mi,4 fad4 sol2 
  fa8 mi8 la4 r4 sol4 
  do4. do8 si4. la8 
  %% 15 :
  si8 do8 re2 do4 
  si4 la4 sold2 
  la4 fad4 sold4 la4 
  si8 la8 sol8 fa8 mi4 re4 
  mi4. fad8 sol8 la8 si4 
  %% 20 :
  #(silun 0 +3 #t) r4 la4 fad4 sol4 ~
  sol4 fa4 mi2 
  la4 sol4 do,4 re4 
  mi2 #(silun 0 +1 #t) r4 mi4 
  dod4 re2 do4 
  %% 25 :
  si4 sol'4. la8 si4 ~
  si4 la4 sol4 fa8 mi8 
  re2 mi4 fad4 
  sol4 la2 sol4 
  la4. si8 do2 
  %% 30 :
  #(silun 0 +3.5 #t) r4 mi4 dod4 re4 ~
  re4 do2 si4 
  do4 re4 r4 mi4 
  dod4 re2 dod4 
  si2  #(silun 0 +3 #t) r4 la4 
  %% 35 :
  la4 do4 si4 sol4 
  la2 sol4 si4 
  do8 la8 re4. do16 si16 la4 
  mi2 fa8 sol8 la8 si8 
  do4 sol4 r2 
  %% 40 :
  r2  #(silun 0 -0.7 #t) r4 si4 
  si4 do4 si4 sol4 
  la4 sol8 fa8 mi4. la16 si16 
  do8 re8 si4 la2 
  la4. mi8 fa4 sol4 ~
  %% 45 :
  sol4 fa4 mi4. fad8 
  sol4. fa8 mi4 fad4 
  sol8 re8 sol2 fa4 
  mi2 #(silun 0 +1 #t) r2 
  la4. si8 do8 si8 la8 sol8 
  %% 50 :
  fa4 mi4 #(silun 0 -1) r4 mi4 
  fa8 sol8 la4 sol8 fa8 mi8 do'8 ~
  do8 [ si8 ] la8 re4 do8 si8 [ sol8 ] 
  la8 si8 do8 re8 la4. si8 
  do4 si2 la4 ~
  %% 55 :
  la4 sol2 la4 ~
  la4 sol8 fa8 mi2 
  mi1 ~
  mi1^\fermata
}

bassemidi = \relative do { 
  \global \halsdown
  %%  1 :
   #(silaa -4 #f) R1*12
  %% 13 : 
  la2 mi'2 
  fa4 mi4. re8 mi8 fa8 
  %% 15 :
  sol4. fa8 mi8 re8 mi4 ~
  mi8 re8 do4 si2 
  la2 mi'2 
  re4 sol,4 la2 
  la2 mi'2 
  %% 20 :
  R1 
  #(silun 0 -1 #t) r2  #(silun 0 +0.7 #t) r4 la,4 
  fad4 sol2 fa4 
  mi4 la2 sold4 
  la2 #(silun 0 -2 #t) r2 
  %% 25 :
  #(silun 0 -0.7 #t) r2  #(silun 0 -1 #t) r4 mi'4 
  dod4 re2 do4 
  si2 la2 
  mi'4 fa4 re2 ~
  re2 la'2 
  %% 30 :
  R1 
  #(silun 0 -1 #t) r4 la4 fad4 sol4 ~
  sol4 fa4 mi2 
  la4 re,4 mi2 ~
  mi2  #(silun 0 -1 #t) r2 
  %% 35 :
  #(silaa -2 #t) R1 
  R1 
  R1 
  R1 
  %%> ORIGINAL >mi2 mi4 fa4 
  mi4. r8 mi4 fa4 
  %%>================
  %% 40 :
  mi4 do4 sol'2 
  mi4. fad8 sol4 mi4 
  re4 sol,4 la2 
  mi'4. re8 dod4 re4
  R1 
  %% 45 :
  la2 la4 do4 
  si4 sol4 la2
  sol4 si4 do4 re4 
  la2 #(silun 0 -2 #t) r2 
  R1 
  %% 50 :
  la4. si8 do8 si8 la8 sol8 
  fa2 do'2 
  re2 mi2 
  fa1 
  mi1 
  %% 55 :
  re4 mi4. re8 do8 si8 
  la2. sol8 fa8 
  mi1 ~
  mi
}

\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  headsep = 1\mm
  %aftertitlespace = 1\mm
  indent = 1\cm
  bottommargin = 4\mm 
  topmargin = 1\mm
}

\score{
  \new PianoStaff 
  <<
    \new Staff = "dessus" << 
      \clef "violin"
      \soprano
      \alto
    >>
    \new Staff = "basse" << 
      \clef "bass" 
      \tenor
      \basse
    >>
  >>

  \layout{
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
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \bassemidi
    }
    \new Staff { % tempo staff
      s1* 56
      \tempo 2 = 45 s4 \tempo 2 = 40 s4 \tempo 2 = 30 s4 \tempo 2 = 25 s4
      \tempo 2 = 20 s1
    }

  >>
  \midi{ 
    \context {
       \Score
       tempoWholesPerMinute = #(ly:make-moment 50 2)
     }
  }

}
  
