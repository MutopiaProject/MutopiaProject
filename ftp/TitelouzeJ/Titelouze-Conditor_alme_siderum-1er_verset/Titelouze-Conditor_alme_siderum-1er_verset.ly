%% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.10.33"
\include "italiano.ly" 
%% version 1

\header{
  title = \markup {\center-align { \medium " Conditor alme siderum (Creator alme siderum) "  \medium "1er verset" }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Jean Titelouze (1563-1633)"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
  opus = ""
  lastupdated = "2008-04-04"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Conditor alme siderum (1er verset)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  style="Baroque"

 footer = "Mutopia-2008/04/16-1378"
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
  between-system-padding = 4\mm
  between-system-space = 20\mm
  indent = 2\cm
  head-separation = 0\mm
  %%$foot-separation = 4\mm
  page-top-space = 10\mm
  %%$bottom-margin = 6\mm
  top-margin = 5\mm
  foot-separation = -8\mm
  tagline = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

%%$#(set-default-paper-size "letter" 'portrait)
#(set-global-staff-size 19)

global = {
  \key do \major
  \time 3/1
}

cantusfirmus=\lyricmode{
  %%  1 : 
  \skip \breve.
  \skip \breve.
  \skip \breve.
  Con \breve.--
  %%  5 : 
  di \breve -- tor1
  al \breve -- me1
  si \breve -- de1 --
  rum, \breve AE1 --
  ter \breve -- na1
  %% 10 : 
  lux \breve cre1 --
  den \breve -- ti1 --
  um, \breve Chris1 --
  te \breve Re1 --
  demp \breve -- tor1 
  %% 15 : 
  om \breve -- ni1 --
  um \breve Ex1 --
  au \breve -- di1
  pre \breve -- ces1
  sup \breve -- pli1 --
  %% 20 : 
  cum.1
}

soprano =  \relative do'' {
  %%  1 : 
  re1\rest si\breve
  la1 sol\breve
  si1 re1 do1 
  si2 la2 sol1 la2 sol4 fa4 
  %%  5 : 
  mi1 si'1\rest si1\rest 
  #(silaa +2 #t) R\breve.
  do2 re2 mi2 fa2 do1 
  re1. mi2 sol1 
  do,1 re2 mi1 fad2 
  %% 10 : 
  sol1 re1 mi2 re2 
  do2 si2 do1 re1 
  mi1 re2 do2 si2 do2 
  la2 si2 do1 fa1 
  mi1 sol1 do,2 re2 
  %% 15 : 
  mi2 re1 do1 si2 
  do1 si2\rest do2 mi2 fa2 
  sol\breve fa2 mi2 
  re1 sol1 re1\rest 
  la'1 sol1 fa1 
  %% 20 : 
  mi1. re2 do1 
  #(silun 0 -1 #t) r2 do2 mi2 fa2 sol1 ~ 
  sol2 fa2 mi1 re2 do2 
  si1 do2 sold2 la1 
  si\breve.^\fermata
  %% 25 : 
 
}

alto = \relative do' {
  %%  1 : 
  mi\breve re1
  do\breve mi1
  sol1. re2 mi2 fad2
  sol1 r1 r1
  %%  5 : 
  do,2 re2 mi2 fa2 sol2 mi2 
  re1 sol2 sol1 fa2 
  mi1 r1 r1 
  sol2 la2 si2 do1 sib2 
  la2 sol2 fa2 mi2 do'1 
  %% 10 : 
  si1 r1 sol1 
  la\breve la1 
  sol\breve.
  r1 la1. la2 
  sol2 la2 si2 fa2 la1 
  %% 15 : 
  sol1. mi2 fa2 re2 
  mi2 do2 mi2 fa2 sol1 
  sol2\rest sol2 si2 do2 re2 do2 
  si1. la2 si2 do2 
  la1 si2 do2 re2 re2 ~
  %% 20 : 
  re2 do1 si2 la1 
  sol1. la2 si2 do2 
  si1 do2 sol2 la1 
  sol2 fa2 mi2. re4 do1 
  si\breve. \bar "|."
}

tenor = \relative do' {
  %%  1 : 
  #(silaa +2 #f) R\breve.
  R\breve.
  si\breve la1
  sol2 la2 si2 do2 fa,2 sol2 
  %%  5 : 
  la2 si2 do\breve
  si2 do2 re2 mi2 si2 re2 
  do1. re2 mi2 do2 
  si2 do2 re2 do2 re2 mi2 
  fa2 mi2 re2 do1. 
  %% 10 : 
  re1 si1 do1 
  #(silun 0 +1 #t) r1 la1. si2 
  do2 re2 mi1 re2 mi2 ~
  mi2 re2 do2 la1 re2 ~
  re2 do2 si2 do2 la2 si2 
  %% 15 : 
  do2 si4 la4 sol1 la2 fa2 
  sol1 do\breve
  si1 mi1 #(silun 0 +1 #t) r1 
  #(silun 0 +1 #t) r2 re2 si2 do2 re2 mi2 ~
  mi2 re1 do1 si4 la4 
  %% 20 : 
  sol1 la2 si2 do2 re2 
  mi\breve mi2\rest mi2 ~
  mi2 re2 do1 si2 la2 
  mi'2 re2 do2 si2 la2. si8 la8 
  \once \override Script #'extra-offset = #'(0 . 1.3) sold\breve.^\fermata
}

basse = \relative do {
  %%  1 : 
  R\breve.
  R\breve.
  R\breve.
  mi\breve re1
  %%  5 : 
  do\breve mi1
  sol\breve sol1
  la\breve la1
  sol\breve sol1
  la\breve la1
  %% 10 : 
  sol\breve mi1
  fa\breve fa1
  mi\breve sol1
  fa\breve re1
  mi\breve fa1
  %% 15 : 
  mi\breve re1
  do\breve do1
  mi\breve fa1
  sol\breve sol1
  fa1 mi re
  %% 20 : 
  #(BogenKurve -1.2 #f) mi\breve. ~
  mi\breve. ~
  mi\breve. ~
  mi\breve. ~
  mi\breve.
}

bassemidi = \relative do {
  %%  1 : 
  R\breve.
  R\breve.
  R\breve.
  mi\breve re1
  %%  5 : 
  do\breve mi1
  sol1 ~ sol2. r4 sol1
  la1 ~ la2. r4 la1
  sol1 ~ sol2 r2 sol1
  la1 ~ la2. r4 la1
  %% 10 : 
  sol\breve mi1
  fa1 ~ fa2. r4 fa1
  mi1 ~ mi2 r2 sol1
  fa\breve re1
  mi\breve fa1
  %% 15 : 
  mi\breve re1
  do1 ~ do2 r2 do1
  mi\breve fa1
  sol1 ~ sol2. r4 sol1
  fa1 mi re
  %% 20 : 
  #(TiePosition -1.2 #f) mi\breve. ~
  mi\breve. ~
  mi\breve. ~
  mi\breve. ~
  mi\breve.
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
      \tenor
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \tenor
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
      tempoWholesPerMinute = #(ly:make-moment 150 2)
    }
  }
}  


\score {
  <<
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
    \context Lyrics \cantusfirmus
  >>
  \layout { }
  
}


