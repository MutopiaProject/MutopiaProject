				% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.10.10"
\include "italiano.ly" 
%%
%% Version 1.0 du 20 juillet 2005.
%% Version 2.0 su 17 mai 2007.
%% ajouts de macros, mises à jour dues à l'évolution de Lilypond,
%% séparation complète des voix Midi.
%%
\header{
  title = \markup {\center-align { \medium " Conditor alme siderum "  \medium "3e verset" }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Jean Titelouze (1563-1633)"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
  opus = ""
  lastupdated = "2007-05-17"
  %%lastlastupdated = "2005-07-20"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Conditor alme siderum (3e verset)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  style="Baroque"
  %% footer = "Mutopia-2007/05/???"
 footer = "Mutopia-2007/05/17-572"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
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

global = {
  \key do \major
  \time 4/4
}

soprano =  \relative do' {
  %%  1 : 
  #(silaa +2 #f) R1 
  R1 
  mi2. re4 
  do4. re8 mi8 [ fa8 sol8 mi8 ]
  %%  5 : 
  fa2 mi4. fad8 
  sol8 [ la8 ] si4. la8 [ sol8 fa8 ]
  mi1 
  si'8\rest do,8 re4 mi8 [ fa8 ] sol4 
  fa2 sol2\rest 
  %% 10 : 
  si8\rest la8 [ re8 do8 ] la8 [ si8 do8 la8 ]
  si4. la8 sol4 fad4 
  sol4. la8 si4 mi,4 ~
  mi4 re4 sol2\rest 
  si4\rest sol2 fa4 
  %% 15 : 
  mi4. fa8 sol4. la8 
  si8 [ do8 ] re2 re8 [ do8 ]
  si4 mi4 re2 
  do4. si8 la2 
  sol4 si4 sold2 
  %% 20 : 
  la2 si2\rest 
  R1 
  si4\rest si2 la4 
  sol4. la8 si8 [ do8 re8 si8 ]
  do4. re8 mi2 
  %% 25 : 
  la,4. sol8 si4. dod8 
  re4. do8 si2 
  R1 
  si2\rest si4\rest sol4 
  la4. la8 sol4 mi4 
  %% 30 : 
  fad4 sol4 do4 sol8 [ la8 ]
  si8 [ do8 ] re4 do4 si4 ~
  si8 [ si8 ] la4 si4 re4 
  do4 la4 si2\rest 
  fa'4\rest re4 mi4. mi8 
  %% 35 : 
  re4 la4 do4 si4 ~
  si4 la4 si8 [ do!8 re8 si8 ]
  mi8 [ re8 do8 si8 ] la4 sol4 ~
  sol8 [ sol8 ] fa4 sol4 la4 ~
  la4 sol4 la2 
  %% 40 : 
  si2\rest si4\rest sol4 
  fa4 re4 mi4 fa4 ~
  fa4 mi4. mi8 re4 
  re'2\rest re2 
  do4 la4 si4 do4 ~
  %% 45 : 
  do4 si4 la2 
  si2\rest re4\rest sol,4 
  fa4 re4 mi4 fa4 ~
  fa4 mi4 re4 sol8 [ fa8 ]
  mi2 re2 
  %% 50 : 
  si'2\rest la8 [ sol8 ] fa4 
  mi4 do'4 si2 
  do4 re4 do4 si4 
  si8\rest sol8 [ si8 do8 ] re8 [ do16 si16 ] la16 [ si16 do16 re16 ]
  mi16 [ re16 do16 si16 ] do4 si2 
  %% 55 : 
  la8 [ si8 ] do4 si4 la4 
  si2 la4 do4 
  re2\rest si8\rest sol8 [ si8 do8 ]
  re8 [ do16 si16 ] la16 [ si16 do16 re16 ] mi16 [ re16 do16 si16 ] do4
  si4 la4 sold4 la4 
  %% 60 : 
  si2 mi,2 ~
  mi2 la2 ~
  la2 sold4 fad4
  sold1^\fermata
}

alto = \relative do' {
  %%  1 : 
  \change Staff=basse \stemUp si2. la4 
  sol4. la8 si8 [ do8 re8 si8 ]
  do8 [ la8 do8 si8 ] la8 [ sol8 ] fa4 ~
  fa8 [ sol8 la8 fa8 ] do'2 
  %%  5 : 
  la4 re2 do4 
  si4 sol4 do4 si4
  \change Staff=dessus \stemDown do4 sol4. la8 si8 [ do8 ]
  la4. si8 do8 [ si8 la8 sol8 ]
  la8\rest la8 [ re8 do8 ] la8 [ si8 do8 re8 ]
  %% 10 : 
  mi4 fa4. mi8 do4 
  mi8\rest re8 [ sol8 fa8 ] re8 [ mi8 re8 do8 ]
  si8\rest si8 mi4. re8 do4 
  sol4\rest si4. do8 re8 [ do8 ]
  si4. do8 re2 
  %% 15 : 
  sol,4 do4. re8 mi4 ~
  mi4 re8 [ mi8 ] fa8 [ sol8 ] fad4 
  sol2. fa4 
  mi2 r2 
  si4\rest mi2 mi4 
  %% 20 : 
  do4. re8 mi8 [ fa8 sol8 mi8 ]
  fa4 mi4. re8 [ do8 re8 ]
  si8 [ do8 ] re4 do2 
  si4 mi4 re2 
  mi4 la8 [ si8 ] do8 [ si16 la16 ] sol4 
  %% 25 : 
  fa4 mi4 re4 sol4 ~
  sol8 [ fa16 mi16 ] fad4 sol8 [ fa8 mi8 sol8 ]
  fa8 [ mi8 do8 re8 ] mi8 [ fa8 ] sol16 [ fa16 mi16 re16 ]
  do4 si8 [ la8 ] si4 do4 
  la2 la2\rest 
  %% 30 : 
  re2 mi4. mi8 
  re4 si4 sol'2 ~ 
  sol4 fad4 sol4. fa8
  mi2 r4 sol4 
  la4. la8 sol4 mi4 
  %% 35 : 
  fa2 mi4. re8 
  dod4 re2 sol4 ~
  sol4 la8 [ sol8 ] fa8 [ mi8 ] re4 
  do4 re4 mi4 re8 [ do8 ]
  re4 mi4 do4\rest re4 
  %% 40 : 
  do4 la4 si4 do4 ~
  do4 si4 do2 
  #(silaa -7 #t) R1 
  r4 sol'4 fa4 re4 
  mi4 fa2 mi4 
  %% 45 : 
  re4 re4. mi8 fa?4 
  mi4 r4 re4 do4 
  la4 si4 do2 
  si4 do2 si4 
  do2 sol2\rest 
  %% 50 : 
  r4 la8 [ si8 ] do2 
  la8\rest do8 [ mi8 fa8 ] sol8 [ fa16 mi16 ] re16 [ mi16 fa16 sol16 ]
  la16 [ sol16 fa16 mi16 ] fa4 mi16 [ fa16 sol16 fa16 ] sol16 [ fa16 mi16 re16 ]
  mi4 re8 [ do8 ] si4 re4 
  do8 [ re8 ] mi4 re4. mi8 
  %% 55 : 
  fa2 sol4 mi4 
  sol2 fa4 la4 
  sol4 fa8 [ mi8 ] re4 sol4 
  fa2 sol4 mi4 ~
  mi16 [ re16 do16 si16 ] do8 [ re8 ] mi2 ~
  %% 60 : 
  mi4 re4 do4 si4 
  do4 la2 do4 ~
  do4 do4 si4 la4 
  si1 
}

tenor = \relative do' {
  %%  1 : 
  #(silaa +0 #f) R1
  R1 
  R1 
  #(silaa +0.1 #t) R1 
  %%  5 : 
  R1 
  \stemDown mi,2. re4
  \stemUp do4. re8 mi8 [ fa8 sol8 mi8 ]
  fa2 mi2 
  re4. mi8 fa8 [ sol8 la8 si8 ]
  %% 10 : 
  la1 
  sol4. la8 si8 [ do8 ] la4 
  mi4. fa8 sol4 la8 [ mi8 ]
  sol4 fad8 [ sol8 ] re8 [ mi8 ] fad4 
  sol4 re4 fa2\rest
  %% 15 : 
  #(silaa +7 #t) R1
  si2. la4 
  sol4. la8 si8 [ do8 re8 si8 ]
  do4 do4. la8 re4 ~
  re4 do4 si8 [ la8 ] si4 
  %% 20 : 
  la2. mi4 
  la4. sol8 fa4 mi4 ~
  mi4 re4 mi2 
  la2\rest mi'4\rest si4 ~
  si4 la4 sol8 [ la8 si8 do8 ]
  %% 25 : 
  re8 [ la8 ] do4 si8 [ sol8 ] si4 
  la2 do4\rest sol4 
  la4. la8 sol4 re4 
  mi4 fa2 mi4 ~
  mi4 re4 mi4 do'4 ~
  %% 30 : 
  do4 si4 la8 [ si8 ] do4 
  sol4. fa8 mi4 mi'4 
  re2. si4 
  do2 re8 [ si8 ] do4 ~
  do4 si8 [ la8 ] do4. si8 
  %% 35 : 
  la2. mi4 ~
  mi4 fad4 sol8 [ la8 si8 sol8 ]
  do4 la4 re8 [ do8 ] si4 
  la2 la2\rest 
  la4\rest sol4 fa4 re4
  %% 40 : 
  mi4 fa2 mi4 
  re4 sol2 la4 
  si4 do4 la4. si8 
  do8 [ sol8 ] do2  si8 [ la8 ]
  sol4 fa4 sol4 la4 
  %% 45 : 
  fad4 sol4 r2 
  sol4 fa4 re4 mi4 
  fa4 sol4 fa4\rest do4 
  re4 mi8 [ fa8 ] sol2 
  fa8\rest do8 [ mi8 fa8 ] sol8 [ fa16 mi16 ] re16 [ mi16 fa16 sol16 ]
  %% 50 : 
  la16 [ sol16 fa16 mi16 ] fa4 mi4 la4 
  sol4 la4 re,4 sol4 
  fa4 re16 [ mi16 fa16 sol16 ] la4 si4 
  do4 si8 [ la8 ] sol4 fa4 
  mi4. fa8 sol2 
  %% 55 : 
  #(silaa +7 #t) R1 
  r8 sol8 [ si8 do8 ] re8 [ do16 si16 ] la16 [ si16 do16 re16 ]
  mi16 [ re16 do16 si16 ] do4 si4 sol4
  la2 sol4 la4 
  sold4 la4 si4 la4 
  %% 60 : 
  sol!2 la4 sol8 [ fa8 ]
  mi1 ~
  mi1 ~
  mi1^\fermata
}

basse = \relative do {
  %%  1 : 
  R1 
  R1 
  R1 
  R1 
  %%  5 : 
  R1 
  R1
  R1 
  R1 
  R1 
  %% 10 : 
  R1 
  R1 
  R1
  si2. la4 
  sol4. la8 si8 [ do8 re8 si8 ]
  %% 15 : 
  do4. re8 mi4. fad8 
  sol2 re2 
  mi4 do4 sol'2 
  la4 sol4 fa4. re8 
  mi1 
  %% 20 : 
  r4 la,4 do2 
  re4 do8 [ si8 ] la2 
  sol4. fa8 mi4 la4 
  mi'4 re8 [ do8 ] sol'2 
  mi1 
  %% 25 : 
  #(silaa -2 #t) R1 
  re2 mi4. mi8 
  re4 la4 do4 si4 
  la2 sol2 
  fa2 r2 
  %% 30 : 
  #(silaa -2 #f) R1 
  R1 
  re'2\rest sol2 
  la4. la8 sol4 mi4 
  fa2 mi4 la4 
  %% 35 : 
  re,2 la4 sold4 
  la2 sol2\rest 
  R1 
  r4 re'4 do4 la4 
  si4 do8 [ si8 ] la2 ~
  %% 40 : 
  la2 sol2 
  r2 do2 
  sol'4 la4 fa2 
  mi2 re4 sol4 
  do,2 r2 
  %% 45 : 
  sol2\rest si4\rest re4 
  do4 la4 si4 do4 ~
  do4 si4 la2 
  sol1 
  la2 si2 
  %% 50 : 
  do4 re4 la4. si8 
  do4 la4 sol2 
  #(silaa -4 #f) R1 
  R1 
  r2 r8 sol8 [ si8 do8 ]
  %% 55 : 
  re8 [ do16 si16 ] la16 [ si16 do16 re16 ] mi16 [ re16 do16 si16 ] do16 [ re16 do16 la16 ]
  mi'2 fa2 
  sol2. mi4 
  re4 fa4 do4. re8 
  mi2 mi16 [ re16 do16 si16 ] do8 [ la8 ]
  %% 60 : 
  mi'1 
  la,1 
  mi1 ~
  mi1 
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
      \basse
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \transpose do do, 
      \basse
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


