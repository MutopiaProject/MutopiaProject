%% -*- mode: LilyPond-mode ; coding: utf-8 -*-
%% VERSION 0 - Création.
\version "2.10.33"
\include "italiano.ly" 

\header{
  title = \markup {\center-align { \medium " Annue Christe "  \medium "2e verset" }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Jean Titelouze (1563-1633)"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
  opus = ""
  lastupdated = "2008-03-05"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Annue Christe (2e verset)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  style="Baroque"
  %% footer = "Mutopia-2008/??/??"
 footer = "Mutopia-2008/03/05-1364"
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
  \time 4/4
}

soprano =  \relative do' {
  %%  1 : 
  R1
  R1
  R1
  R1
  %%  5 : 
  R1
  R1
  #(silun 0 -2 #t) r2 #(silun 0 -2 #t) r4 fa4 ~
  fa4 mi4 re2 
  do4. fa8 mi8 re8 mi8 fa8 
  %% 10 : 
  sol2 #(silun 0 -2 #t) r2 
  sol4 la4 si4 do4 ~
  do4 si2 la4 ~
  la8 sol8 sol4 fad2 
  sol2 la4 re,4 
  %% 15 : 
  #(silun 0 -2 #t) r4 sol2 la4 
  si4 do8 si16 la16 sol4. la8 
  si4. do8 re8 si8 mi4 ~
  mi4 re4 do4 sold8 la8 
  si4 do4 si8 mi8 do8 re8 
  %% 20 : 
  si8 do8 la2 sol4 ~
  sol8 fa8 mi4 re4 si4 
  mi4. re8 do8 re16 mi16 fa16 sol16 la16 si16 
  do2 re4 si4 
  do2 #(silun 0 -1 #t) r4 mi4 
  %% 25 : 
  re4 do4 si8 do16 re16 mi4 ~
  mi8 re8 do2 si4 
  do8 si8 la2 sol4 
  sol2. fad4 ~
  fad4 sol2 la4 ~
  %% 30 : 
  la8 si8 do4 si2 
  la4 si4 do4 re4 
  sol,2 #(silun 0 -2 #t) r2 
  #(silun 0 -2 #t) r2 #(silun 0 -2 #t) r4 sol4 
  la4 si4 do4. si16 la16 
  %% 35 : 
  sol4 la4 fa2 
  mi2 fa8 mi8 la8 sol8 
  fa4 sol4. fa8 mi4 ~
  mi8 mi8 re4 mi8 fa8 sol4 ~
  sol4 fa8 sol8 la8 sol8 fa8 mi8 
  %% 40 : 
  fa4 mi4 sol2 
  la2 sol2 
  #(silun 0 -2 #t) r4 fa4 sol4 la4 ~
  la8 sol8 fa8 mi8 re8 do8 fa8 re8 
  mi2 #(silun 0 -1 #t) r4 la4 
  %% 45 : 
  si4 do2 si4 
  do4. si8 la2 
  R1 
  R1 
  #(silun 0 -1 #t) r4 do4 re4 mi4 ~
  %% 50 : 
  mi8 re8 do8 si8 la8 si8 do8 re8 
  si4 mi8 re8 do8 si8 la4 ~
  la8 si8 do4. si8 la4 ~
  la4. sol8 fad4 sol4 ~
  sol4 fad8 sol8 la4 sol4 ~
  %% 55 : 
  sol4 la4 si4 do4 ~
  do4 si4 la4 si4 
  do4 si2 mi4 
  \once \override Script #'extra-offset = #'(0 . 1.3) mi1^\fermata
}

alto = \relative do' {
  %%  1 :
  R1
  R1
  R1
  r2 r4 do4 ~
  %%  5 :
  do4 si4 la2 
  sol4 do4 si8 la8 si8 do8 
  re4 do8 si8 la2 
  r4 do2 si4 
  la2 sol4 do4 
  %% 10 :
  si8 la8 si8 do8 re2 
  mi4 fa4 re4 mi4 
  fad4 sol4 mi2 
  re4 dod4 re4. do8 
  si4. do8 la2 
  %% 15 : 
  si2 #(silun 0 -1 #t) r4 mi4 
  re4 do4 si8 do16 re16 mi4 ~
  mi8 re8 sol2 fa8 mi8
  fa2 mi2 
  mi4. fa8 sol?2 
  %% 20 : 
  R1 
  #(silaa -9 #t) R1 
  #(silaa -9 #t) R1 
  r4 la2 sol4 ~
  sol4 fa4 mi8 fa8 sol8 la8 
  %% 25 : 
  si4 la4 sol4. la8 
  si4 mi,4 fad4 sol4 
  mi2 r4 mi8 re8 
  do4 re4 mi4 re4 ~
  re4 re4 mi4. re8 
  %% 30 : 
  do8 re8 mi8 fad8 sol8 fa16 mi16 re8 mi8 
  fad4 sol2 fa4 
  mi2 r4 mi4 
  re4 do4 si8 do16 re16 mi4 
  fad4 sol8 fa8 mi4 mi4 ~
  %% 35 : 
  mi8 re8 do4 re8 la4 si8 
  do2 r4 do4 
  re4 mi4. re8 do8 si8 
  la4. si8 do8 si8 sol8 la8 
  si8 do8 re4 do2 
  %% 40 : 
  si4 do4 si4 mi4 ~
  mi4 re4 mi4 re4 
  #(silaa -7 #t) R1 
  #(silaa -8 #t) R1 
  r4 mi4 fa4 re4 ~
  %% 45 : 
  re4 mi4 fad4 sol4 ~
  sol4 fa2 fa8 sol16 fa16 
  mi4. mi8 fa8 sol8 la8 sol8 
  fa4 mi4. re16 do16 re4 
  mi2 r4 si'4 
  %% 50 : 
  do4 mi,4 fa4 sol4 
  sol2 #(silun 0 +1 #t) r4 do,4 
  re4 mi4. re8 do8 [ si8 ]
  la8 si8 dod4 re8 do8 si4 
  la4 re2 re4 
  %% 55 : 
  mi4. fad8 sold4 la4 ~
  la4 sol?8 fa8 mi8 fa8 sol4 
  mi4. fad8 sol4 la8 si16 la16 
  sold1 
}

tenor = \relative do {
  %%  1 :
  fa2. mi4
  re2 do4 fa4 ~
  fa4 mi8 re8 mi8 fa8 sol4 ~
  sol8 la8 fa4. mi8 la8 [ sol8 ] 
  %%  5 : 
  fad4 sol2 fa4 
  mi4 la4 sol4 sol4 ~
  sol8 [ fa8 ] mi8 sol8 fa2 
  sol4 la4 fad4 sol4 
  mi4 fa4 do4. re8 
  %% 10 : 
  mi8 fa8 sol4. la8 si8 [ la16 si16 ]
  do2 #(silun 0 +1.2 #t) r4 sol4 
  la4 si4 do4 la4 
  si4 la8 sol8 si8 fad8 la4 ~
  la8 sol8 sol4. fad16 mi16 fad16 sol16 fad8 
  %% 15 : 
  sol4. fa?8 mi4 re8 do8 
  sol'2  #(silun 0 -1 #t) r2 
  #(silun 0 -1 #t) r2 sol2 
  la4 si4 do4 si8 la8
  sold4 la4 r4 mi'4 
  %% 20 : 
  re4 do4 si4 do4 
  si8 la8 la2 sol4 ~
  sol8 la16 si16 do8 si8 la4 re8 do8 
  la8 si8 do8 la8 si2 
  la2 sol4 r4 
  %% 25 : 
  sol4 la4 si4 do8 si16 la16 
  sold4 la4 re4 sol,!4 
  la8 si8 do8 la8 si4 do4 
  la2. la4 
  si4. la8 sol8 fa8 mi4 
  %% 30 : 
  mi8 re8 do8 re8 mi8 fa8 sol4 
  r4 sol4 la4 si4 
  do8 si16 la16 sol8 la8 si8 do8 la4 
  si4 sol4. la16 si16 do4 ~
  do4 si2 la8 si8 
  %% 35 : 
  do2 r4 fa,4 
  sol4 la4. sol8 fa8 [ mi8 ] 
  re4 do4 sol'4 la4 
  fa2 mi2 
  re4. mi8 fa8 sol8 la4 ~
  %% 40 : 
  la4 sol2 mi4 
  fa8 sol8 la8 si8 do4 si4 
  do4 re2 do4 
  la2 r4 fa4 
  sol4 la4. sol8 fa8 mi8 
  %% 45 : 
  re4 sol4 la4 sol4 
  la4. si8 do8 la8 re4 ~
  re4 do2 do4 
  re8 la8 do8 si8 la4. la8 
  do2 si2 
  %% 50 : 
  r4 do4 re4 mi4 ~
  mi8 re8 do8 si8 la2 
  fa4 sol4 la4 mi4 
  fa4 mi4 re4. mi8 
  fad8 sol8 la2 si4 
  %% 55 : 
  do2 si4 la4 
  mi'4. re8 do4 si8 la8 
  sol4. la8 si4 do4 
  \once \override Script #'extra-offset = #'(0 . 1.3) si1^\fermata
}

basse = \relative do {
  %%  1 : 
  r2  #(silun 0 +1 #t) r4 do4 ~
  do4 si4 la2 
  sol4 do2 si8 la8 
  si8 do8 re4 la2 
  %%  5 : 
  re4 sol,4 re'4 la4 
  do4. re8 mi4 re8 do8 
  si4 do4 re2 
  do4 la2 sol4 
  la2 r2 
  %% 10 : 
  R1 
  #(silun 0 +1.5 #t) r4 fa'2 mi4 
  re2 do2 
  re4 mi4 re2 ~
  re1 
  %% 15 : 
  sol,2 r2 
  R1 
  R1 
  R1 
  R1 
  %% 20 : 
  #(silun 0 +2 #t) r2 mi'2 
  re4 do4 si8 do16 re16 mi4 
  do2 fa2 ~
  fa2 re4 mi4 
  la,4. si8 do2 
  %% 25 : 
  #(silaa -2 #t) R1 
  #(silaa -2 #t) R1 
  #(silun 0 +1 #t) r4 do4 re4 mi4 
  fa4. mi16 re16 dod4 re4 ~
  re4 sol,4 do4. si8 
  %% 30 : 
  la2 sol2 
  re'2 #(silun 0 +2 #t) r2
  mi2 re4 do4 
  si8 do16 re16 mi2. 
  re2 do4 la4 
  %% 35 : 
  mi'4 fa4 re2 
  do2 r2 
  R1 
  R1 
  r2 r4 do4 
  %% 40 : 
  re4 mi4. re8 do8 si8 
  la4 fa'4 do4 sol'4 
  la2 mi4 fa4 ~
  fa4 do4 fa8 mi8 re4 ~
  re4 dod4 re2 
  %% 45 : 
  sol,2 re'2 
  #(silun 0 +2 #t) r2 fa2 
  sol4 la4. sol8 fa8 mi8 
  re4 mi4 fa2 
  mi4 la2 sold4 
  %% 50 : 
  la4. sol8 fa4 mi4 
  sol4 do,4 fa4. mi8 
  re4 do8 si8 la2 
  re4 la4 si4 sol4 
  re'4. mi8 fad!4 sol4 
  %% 55 : 
  mi1 ~
  mi1 ~
  mi1 ~
  mi1
}
sopranomidi =  \relative do' {
  %%  1 : 
  R1
  R1
  R1
  R1
  %%  5 : 
  R1
  R1
  #(silun 0 -2 #t) r2 #(silun 0 -2 #t) r4 fa4 ~
  fa4 mi4 re2 
  do4. fa8 mi8 re8 mi8 fa8 
  %% 10 : 
  sol2 #(silun 0 -2 #t) r2 
  sol4 la4 si4 do4 ~
  do4 si2 la4 ~
  %> la8 sol8 sol4 fad2
  la8 sol16 r16 sol4 fad2  
  sol2 la4 re,4 
  %% 15 : 
  #(silun 0 -2 #t) r4 sol2 la4 
  si4 do8 si16 la16 sol4. la8 
  si4. do8 re8 si8 mi4 ~
  mi4 re4 do4 sold8 la8 
  si4 do4 si8 mi8 do8 re8 
  %% 20 : 
  si8 do8 la2 sol4 ~
  sol8 fa8 mi4 re4 si4 
  mi4. re8 do8 re16 mi16 fa16 sol16 la16 si16 
  do2 re4 si4 
  do2 #(silun 0 -1 #t) r4 mi4 
  %% 25 : 
  re4 do4 si8 do16 re16 mi4 ~
  mi8 re8 do2 si4 
  do8 si8 la2 sol4 
  sol2. fad4 ~
  fad4 sol2 la4 ~
  %% 30 : 
  la8 si8 do4 si2 
  la4 si4 do4 re4 
  sol,2 #(silun 0 -2 #t) r2 
  #(silun 0 -2 #t) r2 #(silun 0 -2 #t) r4 sol4 
  la4 si4 do4. si16 la16 
  %% 35 : 
  sol4 la4 fa2 
  mi2 fa8 mi8 la8 sol8 
  fa4 sol4. fa8 mi4 ~
  %> mi8 mi8 re4 mi8 fa8 sol4 ~
  mi16 r16 mi8 re4 mi8 fa8 sol4 ~
  sol4 fa8 sol8 la8 sol8 fa8 mi8 
  %% 40 : 
  fa4 mi4 sol2 
  la2 sol2 
  #(silun 0 -2 #t) r4 fa4 sol4 la4 ~
  la8 sol8 fa8 mi8 re8 do8 fa8 re8 
  mi2 #(silun 0 -1 #t) r4 la4 
  %% 45 : 
  si4 do2 si4 
  do4. si8 la2 
  R1 
  R1 
  #(silun 0 -1 #t) r4 do4 re4 mi4 ~
  %% 50 : 
  mi8 re8 do8 si8 la8 si8 do8 re8 
  si4 mi8 re8 do8 si8 la4 ~
  la8 si8 do4. si8 la4 ~
  la4. sol8 fad4 sol4 ~
  sol4 fad8 sol8 la4 sol4 ~
  %% 55 : 
  sol4 la4 si4 do4 ~
  do4 si4 la4 si4 
  %> do4 si2 mi4 
  do4 si2 mi8 ~ mi16 r16 
  \once \override Script #'extra-offset = #'(0 . 1.3) mi1^\fermata
}

altomidi = \relative do' {
  %%  1 :
  R1
  R1
  R1
  r2 r4 do4 ~
  %%  5 :
  do4 si4 la2 
  sol4 do4 si8 la8 si8 do8 
  re4 do8 si8 la2 
  r4 do2 si4 
  la2 sol4 do4 
  %% 10 :
  si8 la8 si8 do8 re2 
  mi4 fa4 re4 mi4 
  fad4 sol4 mi2 
  re4 dod4 re4. do8 
  si4. do8 la2 
  %% 15 : 
  si2 #(silun 0 -1 #t) r4 mi4 
  re4 do4 si8 do16 re16 mi4 ~
  mi8 re8 sol2 fa8 mi8
  fa2 mi2 
  mi4. fa8 sol?2 
  %% 20 : 
  R1 
  #(silaa -9 #t) R1 
  #(silaa -9 #t) R1 
  r4 la2 sol4 ~
  sol4 fa4 mi8 fa8 sol8 la8 
  %% 25 : 
  si4 la4 sol4. la8 
  si4 mi,4 fad4 sol4 
  mi2 r4 mi8 re8 
  do4 re4 mi4 re4 ~
  %> re4 re4 mi4. re8 
  re8 ~ re16 r16 re4 mi4. re8 
  %% 30 : 
  do8 re8 mi8 fad8 sol8 fa16 mi16 re8 mi8 
  fad4 sol2 fa4 
  mi2 r4 mi4 
  re4 do4 si8 do16 re16 mi4 
  %> fad4 sol8 fa8 mi4 mi4 ~
  fad4 sol8 fa8 mi8 ~ mi16 r16 mi4 ~
  %% 35 : 
  mi8 re8 do4 re8 la4 si8 
  do2 r4 do4 
  re4 mi4. re8 do8 si8 
  la4. si8 do8 si8 sol8 la8 
  si8 do8 re4 do2 
  %% 40 : 
  si4 do4 si4 mi4 ~
  mi4 re4 mi4 re4 
  #(silaa -7 #t) R1 
  #(silaa -8 #t) R1 
  r4 mi4 fa4 re4 ~
  %% 45 : 
  re4 mi4 fad4 sol4 ~
  sol4 fa2 fa8 sol16 fa16 
  %> mi4. mi8 fa8 sol8 la8 sol8 
  mi4 r8 mi8 fa8 sol8 la8 sol8 
  fa4 mi4. re16 do16 re4 
  mi2 r4 si'4 
  %% 50 : 
  do4 mi,4 fa4 sol4 
  sol2 #(silun 0 +1 #t) r4 do,4 
  re4 mi4. re8 do8 [ si8 ]
  la8 si8 dod4 re8 do8 si4 
  %> la4 re2 re4 
  la4 re4. r8 re4 
  %% 55 : 
  mi4. fad8 sold4 la4 ~
  la4 sol?8 fa8 mi8 fa8 sol4 
  mi4. fad8 sol4 la8 si16 la16 
  sold1 
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
      \tenor
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \tenor
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \basse
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \transpose do do, 
      \basse
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
      tempoWholesPerMinute = #(ly:make-moment 112 4)
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


