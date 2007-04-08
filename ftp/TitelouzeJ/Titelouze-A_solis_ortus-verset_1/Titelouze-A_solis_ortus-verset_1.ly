% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.10.15"
\include "italiano.ly" 
%%
%% Version 0 
%%
\header{
  title = \markup {\center-align { \medium " A solis ortus (Crudelis Herodes)"  \medium "1er verset" }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Jean Titelouze (1563-1633)"
  copyright = "Creative Commons Attribution-ShareAlike 2.5"
  source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
  opus = ""
  lastupdated = "2007-02-24 samedi après les cendres."
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "A solis ortus (1er verset)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  style="Baroque"
 footer = "Mutopia-2007/02/25-932"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

%#(set-default-paper-size "a4" 'landscape)
%#(set-global-staff-size 20)

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

soprano = \relative do'' {
  \global \halsup
  %%  1 :
  #(silaa +4 #f) R1 
  R1 
  la4 si8 do8 re4 do4 
  si1 
  %%  5 :
  do2 re4 mi4 
  fad4 sol4 la4 re,4 ~
  re4 do4 si4 mi4 
  re4 mi8 fad8 sol4 mi4 ~
  mi4 re4 do4 re4 
  %% 10 :
  mi4 fa4 sol2 ~
  sol2 r2 
  #(silun 0.0 -1 #t) r4 do,2 re4 
  mi4 fa4 sol4 sol4 ~
  sol4 fa4 mi2 
  %% 15 :
  #(silaa +8 #t) R1 
  r2 re2 
  mi2 re4 do4 
  si4 sol'4. fa8 mi4 ~
  mi8 re8 do4. re8 mi4 
  %% 20 :
  re2 #(silun 0.0 +1 #t) r2 
  #(silun 0.0 -1 #t) r4 re2 mi4 
  fad2 sol2 
  la4 sol8 fa?8 mi4 fa4 
  mi2. la4 ~
  %% 25 :
  la4 sol4 fa?2 
  mi2 la2 
  sol2 r4 do,4 
  re4 re8 do8 si8 do8 re8 mi8 
  fad4 sol4. fad16 mi16 fad4 
  %% 30 :
  sol4. fa?8 mi4 re4 
  do4 la4 r2 
  la4. si8 do4 si8 la8 
  do8 si8 mi8 re8 mi4. do8 
  si4. do8 re4 do8 si8 
  %% 35 :
  do4 la8 si8 do8 re8 mi4 
  re4 mi4 fa2 
  mi4. fa8 sol!4 mi4 ~
  mi4 re4 do4 la4 
  re4. do8 si2 
  %% 40 :
  mi8 re8 do8 si8 dod4 re4 ~
  re8 do8 si2 do4 ~
  do8 si8 la2 re4 ~
  re8 do8 si4 sol'4 mi4 
  mi4 re4 do4 si4 
  %% 45 :
  la4. si8 do4 re4 
  mi4 re4 do8 re8 mi8 fa8 
  sol2. mi4 ~ 
  mi4 re4 do4 si4 ~
  si4 la4 sol4 la4 
  %% 50 :
  si1^\fermata  \bar "|."
}

alto = \relative do' {
  \global \halsdown
  %%  1 :
  re2. mi8 fa8 
  sol4 fa4 mi2 
  #(silaa -4 #t) R1 
  re4 mi8 fa8 sol4 fa4 
  %%  5 :
  mi4. la8 si4 do4 ~
  do4 si4 la2 
  sold4 la2 sol4 
  sol4. la8 si4 do4 
  la2 r2 
  %% 10 :
  sol2. la4 
  si4 do4 re4 re,4 
  fa4 mi4 la2 
  sol2. do8 si8 
  la2 sol4 do8 re8 
  %% 15 :
  mi2 re4 do4 
  re4 do4 si2 
  do4. si8 la4 fad4 
  \dotsDown sol4. la8 \dotsNeutral si4. si8 
  \dotsDown do4. \dotsNeutral si8 la4. sol8 
  %% 20 :
  fad4 sol2 la4 
  si2. si8 do8 
  \dotsDown re4. do8 \dotsNeutral  si4. mi16 re16 
  do4 si4 dod4 re4 ~
  re4 do8 si8 la4 do4 ~
  %% 25 :
  do4 si4 la4 si4 
  do4. si8 la8 si8 do8 re8 
  mi4. re8 do8 si8 la4 
  sol2 #(silun 0.0 +0.5 #t) r4 sol4 
  la4 si4 do4 la4 
  %% 30 :
  si2 #(silun 0.0 +1 #t) r4 sol4 ~
  sol4 fa4 mi2 
  fa4 mi2 re4 
  mi4. fa8 sol2 
  r2 r4 sol4 
  %% 35 :
  mi4 fa4 mi2 
  fa4 sol4 la4. si8
  sold4 la4 si4 la8 sol8 
  la2 #(silun 0.0 +0.5 #t) r4 fa4 
  re4 sol2 fa4 
  %% 40 :
  mi4 la4 sol4 fad4 
  sol4 \dotsDown sol4. fa8 \dotsNeutral mi4 
  fa4 fa4. mi8 re4 
  re4 sol8 la8 si4 do4 ~
  do8 si8 la8 sol8 la4 sol4 
  %% 45 :
  fa2 la2 
  do4 si2 la4 
  sol4 do4 si4 la4 
  sold2 la4 sol4 ~
  sol8 fa8 mi2 fad4 
  %% 50 :
  sold1 
}

tenor = \relative do' {
  \global \halsup
  %%  1 :
  la4 si8 do8 re4 do4 
  si2 do4 do4 ~
  do4 si4 la2 
  r2 re2
  %%  5 :
  do4 fa2 mi4 
  re4. mi8 fa2 
  mi4 la,4 si4 do4 ~
  do4 si8 la8 re4 do8 si8 
  do4 re4 la4 si4 
  %% 10 :
  do4 re4 mi2 
  re4 do4. do8 si4 
  do2 fa2 
  mi2. mi4 ~
  mi4 fa4 sol4 mi4 
  %% 15 :
  r4 sol2 la4 
  si4 la4 sol8 fa8 sol8 fa8 
  la4 sol4 fa8 mi8 re8 do8 
  re2 sol4. fa8 
  mi4. re8 do2 
  %% 20 :
  re2 mi4 fad4 
  sol2 fad4 sol4
  r4 re2 mi4 
  fad4 sol4 la4 re,4 
  mi4. re8 do4 mi4 
  %% 25 :
  fad4 sol4 la4 sol8 fa8 
  la8 mi8 sol4 fa4 mi4 
  #(silun 0.0 -0.5 #t) r4 sol2 fa8 mi8 
  re2 #(silun 0.0 +4 #t) r4 re4 
  do4 re4 mi4 re8 do8 
  %% 30 :
  re8 si8 mi8 re8 do8 re8 si4 
  mi4 re2 do4 ~
  do8 re8 do8 si8 la2 
  sol4 do4. si8 mi4 ~
  mi8 re8 sol4. fa8 mi8 re8 
  %% 35 :
  do4 re4 do4. si8 
  la8 re8 do8 si8 la4 re4 ~
  re4 do4 si4 do4 
  la2. do4 ~
  do4 si4 mi4 re4 
  %% 40 :
  do4 fa4 mi4 re8 do8 
  si4 mi4 re4 do8 si8 
  la4 re4 do4 si8 la8 
  si4 mi4. re8 do8 si8 
  la2. si4 
  %% 45 :
  do4 re4  #(silun 0.0 +4 #t) r8 do8 si8 la8 
  sol2 la4 do4 
  si4 mi4. re8 do4 
  si2 la4 si4 
  sol4 do2 si8 la8 
  %% 50 :
  mi'1 ^\fermata
}

basse = \relative do { 
  \global \halsdown
  %%  1 :
  re1 mi1 fa1 sol1 
  %%  5 :    
  la1 re,1 mi1 sol1 fa1
  %% 10 :
  mi1 sol1 la1 do1 do1 
  %% 15 :
  do1 si1 la1 sol1 la1
  %% 20 :
  si1 si1 si1 la1 la1
  %% 25 :
  re1 do1 do1 si1 la1
  %% 30 :
  sol1 la1 fa1 mi1 sol1
  %% 35 :
  la1 re,1 mi1 fa1 sol1
  %% 40 :
  la1 sol1 fa1 sol1 fa1
  %% 45 :
  ~ fa1 mi1 ~ mi1 ~ mi1 ~ mi1
  %% 50 :
  mi1 
}


cantusfirmus=\lyricmode{

  %%
  %% A solis ortus cardine,
  %% Ad usque terræ limitem,
  %% Christum canamus principem,
  %% Natum Maria Virgine.
  %%
  
  A1
  so1 --
  lis1
  or1 --
  \skip 1
  tus1
  car1 --
  \skip 1
  di1 --
  ne,
  Ad
  us1 --
  \skip 1
  que1
  ter --
  \skip 1
  ræ1
  \skip 1
  li --
  \skip 1
  mi1 --
  tem,
  Chri --
  stum
  \skip 1
  ca1 --
  na1 --
  mus
  \skip 1
  \skip 1
  prin1 --
  ci --
  pem,
  \skip 1
  \skip 1
  Na1 --
  tum
  Ma1 -- 
  ri --
  \skip 1
  a1
  \skip 1
  Vir1 --
  gi --
  \skip 1
  ne.
  \skip 1 
  \skip 1 
  \skip 1 
  \skip 1 
}

sopranomidi = \relative do'' {
  \halsup
  %%  1 :
  #(silaa +4 #f) R1 
  R1 
  la4 si8 do8 re4 do4 
  si1 
  %%  5 :
  do2 re4 mi4 
  fad4 sol4 la4 re,4 ~
  re4 do4 si4 mi4 
  re4 mi8 fad8 sol4 mi4 ~
  mi4 re4 do4 re4 
  %% 10 :
  mi4 fa4 sol2 ~
  sol2 r2 
  #(silun 0.0 -1 #t) r4 do,2 re4 
  %% ================
  %%> ORIGINAL > mi4 fa4 sol4 sol4 ~
  mi4 fa4 sol8 r8 sol4 ~
  sol4 fa4 mi2 
  %% 15 :
  #(silaa +8 #t) R1 
  r2 re2 
  mi2 re4 do4 
  si4 sol'4. fa8 mi4 ~
  mi8 re8 do4. re8 mi4 
  %% 20 :
  re2 #(silun 0.0 +1 #t) r2 
  #(silun 0.0 -1 #t) r4 re2 mi4 
  fad2 sol2 
  la4 sol8 fa8 mi4 fa4 
  mi2. la4 ~
  %% 25 :
  la4 sol4 fa2 
  mi2 la2 
  sol2 r4 do,4 
  re4 re8 do8 si8 do8 re8 mi8 
  fad4 sol4. fad16 mi16 fad4 
  %% 30 :
  sol4. fa8 mi4 re4 
  do4 la4 r2 
  la4. si8 do4 si8 la8 
  do8 si8 mi8 re8 mi4. do8 
  si4. do8 re4 do8 si8 
  %% 35 :
  do4 la8 si8 do8 re8 mi4 
  re4 mi4 fa2 
  mi4. fa8 sol!4 mi4 ~
  mi4 re4 do4 la4 
  re4. do8 si2 
  %% 40 :
  mi8 re8 do8 si8 dod4 re4 ~
  re8 do8 si2 do4 ~
  do8 si8 la2 re4 ~
  %% ================
  %% > ORIGINAL > re8 do8 si4 sol'4 mi4 
  re8 do8 si4 sol'4 mi8 r8 
  mi4 re4 do4 si4 
  %% 45 :
  la4. si8 do4 re4 
  mi4 re4 do8 re8 mi8 fa8 
  sol2. mi4 ~ 
  mi4 re4 do4 si4 ~
  si4 la4 sol4 la4 
  %% 50 :
  si1^\fermata  \bar "|."
}

altomidi = \relative do' {
  \global \halsdown
  %%  1 :
  re2. mi8 fa8 
  sol4 fa4 mi2 
  R1 
  re4 mi8 fa8 sol4 fa4 
  %%  5 :
  mi4. la8 si4 do4 ~
  do4 si4 la2 
  sold4 la2 sol4 
  sol4. la8 si4 do4 
  la2 r2 
  %% 10 :
  sol2. la4 
  si4 do4 re4 re,4 
  fa4 mi4 la2 
  sol2. do8 si8 
  la2 sol4 do8 re8 
  %% 15 :
  mi2 re4 do4 
  re4 do4 si2 
  do4. si8 la4 fad4 
  \dotsDown sol4. la8 \dotsNeutral si4. si8 
  \dotsDown do4. \dotsNeutral si8 la4. sol8 
  %% 20 :
  fad4 sol2 la4 
  si2. si8 do8 
  \dotsDown re4. do8 \dotsNeutral  si4. mi16 re16 
  do4 si4 dod4 re4 ~
  re4 do8 si8 la4 do4 ~
  %% 25 :
  do4 si4 la4 si4 
  do4. si8 la8 si8 do8 re8 
  mi4. re8 do8 si8 la4 
  sol2 #(silun 0.0 +0.5 #t) r4 sol4 
  la4 si4 do4 la4 
  %% 30 :
  si2 #(silun 0.0 +1 #t) r4 sol4 ~
  sol4 fa4 mi2 
  fa4 mi2 re4 
  mi4. fa8 sol2 
  r2 r4 sol4 
  %% 35 :
  mi4 fa4 mi2 
  fa4 sol4 la4. si8
  sold4 la4 si4 la8 sol8 
  la2 #(silun 0.0 +0.5 #t) r4 fa4 
  re4 sol2 fa4 
  %% 40 :
  mi4 la4 sol4 fad4 
  %%>================
  %%> ORIGINAL > sol4 \dotsDown sol4. fa8 \dotsNeutral mi4 
  sol8 r8 \dotsDown sol4. fa8 \dotsNeutral mi4 
  %%>================
  %%> ORIGINAL > fa4 fa4. mi8 re4 
  fa8 r8 fa4. mi8 re4 
  re4 sol8 la8 si4 do4 ~
  do8 si8 la8 sol8 la4 sol4 
  %% 45 :
  fa2 la2 
  do4 si2 la4 
  sol4 do4 si4 la4 
  sold2 la4 sol4 ~
  sol8 fa8 mi2 fad4 
  %% 50 :
  sold1 
}

tenormidi = \relative do' {
  \global
  \halsup
  %%  1 :
  la4 si8 do8 re4 do4 
  %%>================
  %%> ORIGINAL > si2 do4 do4 ~
  si2 do8 r8 do4 ~
  do4 si4 la2 
  r2 re2
  %%  5 :
  do4 fa2 mi4 
  re4. mi8 fa2 
  mi4 la,4 si4 do4 ~
  do4 si8 la8 re4 do8 si8 
  do4 re4 la4 si4 
  %% 10 :
  do4 re4 mi2 
  re4 do4. do8 si4 
  do2 fa2 
  mi2. mi4 ~
  mi4 fa4 sol4 mi4 
  %% 15 :
  r4 sol2 la4 
  si4 la4 sol8 fa8 sol8 fa8 
  la4 sol4 fa8 mi8 re8 do8 
  re2 sol4. fa8 
  mi4. re8 do2 
  %% 20 :
  re2 mi4 fad4 
  sol2 fad4 sol4
  r4 re2 mi4 
  fad4 sol4 la4 re,4 
  mi4. re8 do4 mi4 
  %% 25 :
  fad4 sol4 la4 sol8 fa8 
  la8 mi8 sol4 fa4 mi4 
  #(silun 0.0 -0.5 #t) r4 sol2 fa8 mi8 
  re2 #(silun 0.0 +4 #t) r4 re4 
  do4 re4 mi4 re8 do8 
  %% 30 :
  re8 si8 mi8 re8 do8 re8 si4 
  mi4 re2 do4 ~
  do8 re8 do8 si8 la2 
  sol4 do4. si8 mi4 ~
  mi8 re8 sol4. fa8 mi8 re8 
  %% 35 :
  do4 re4 do4. si8 
  la8 re8 do8 si8 la4 re4 ~
  re4 do4 si4 do4 
  la2. do4 ~
  do4 si4 mi4 re4 
  %% 40 :
  do4 fa4 mi4 re8 do8 
  si4 mi4 re4 do8 si8 
  la4 re4 do4 si8 la8 
  si4 mi4. re8 do8 si8 
  la2. si4 
  %% 45 :
  do4 re4  #(silun 0.0 +4 #t) r8 do8 si8 la8 
  sol2 la4 do4 
  si4 mi4. re8 do4 
  si2 la4 si4 
  sol4 do2 si8 la8 
  %% 50 :
  mi'1 ^\fermata
}

bassemidi = \relative do { 
  \global \halsdown
  %%  1 :
  re1 mi1 fa1 sol1 
  %%  5 :    
  la1 re,1 mi1 sol1 fa1
  %% 10 :
  %%>================
  %%> ORIGINAL > mi1 sol1 la1 do1 do1 
  mi1 sol1 la1 do2.. r8 do1 
  %% 15 :
  do1 si1 la1 sol1 la1
  %% 20 :
  si2.. r8 si2.. r8 si1 la2.. r8 la1
  %% 25 :
  re1 do2.. r8 do1 si1 la1
  %% 30 :
  sol1 la1 fa1 mi1 sol1
  %% 35 :
  la1 re,1 mi1 fa1 sol1
  %% 40 :
  la1 sol1 fa1 sol1 fa1
  %% 45 :
  ~ fa1 mi1 ~ mi1 ~ mi1 ~ mi2. r8
  %% 50 :
  mi1 
}

\paper {
  %betweensystempadding = 1\mm
  %betweensystemspace = 1\mm
  %raggedbottom = ##t
  %raggedlastbottom = ##t
  %headsep = 1\mm
  %aftertitlespace = 1\mm
  indent = 1\cm
  %bottommargin = 4\mm 
  %topmargin = 1\mm
}

\score{
 <<
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
  \context Lyrics \cantusfirmus
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
      \transpose do do, 
      \bassemidi
    }
    \new Staff { % tempo staff
      s1* 48
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
  
