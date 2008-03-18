%% -*- mode: LilyPond ; coding: utf-8 -*-
%% VERSION 0 - Création.
\version "2.10.33"
\include "italiano.ly" 

\header{
  title = \markup {\center-align { \medium " Annue Christe "  \medium "AMEN" }}
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
  mutopiatitle = "Annue Christe (AMEN)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  style="Baroque"

 footer = "Mutopia-2008/03/18-1371"
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

soprano =  \relative do'' {
  %%  1 : 
  \override Tie #'staff-position = #+5 mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %%  5 : 
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %% 10 : 
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %% 15 : 
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %% 20 : 
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %% 25 : 
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %% 30 : 
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %% 35 : 
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %% 40 : 
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %% 45 : 
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %% 50 :
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  mi1 ~
  %% 55 :
  \once\override Script #'extra-offset = #'(0 . 1.3) mi1^\fermata

}

alto = \relative do'' {
  %%  1 : 
  r4 do2 si4 
  la2 sol2 
  r4 mi8 fa8 sol8 la8 si8 sol8 
  do4 do2 si4 ~
  %%  5 : 
  si4 la4 sol2 
  r4 la4 sol4. la16 si16 
  do2. si4 
  la4 sol4 r4 la4 
  sol4. la8 si4 sol4 
  %% 10 : 
  do8 la4 sol8 la8 si8 do4 
  si4 mi,4 r4 si'4 
  do4. si16 la16 sol2 
  mi4. fa8 sol8 la8 si4 
  mi,4 la4 sol4. do8 
  %% 15 : 
  si4 la4 sold8 [ la8 ] sold8 fad16 sold16 
  la2 mi4 fa4 
  sol4 la8 si8 do4 si4 
  la8 mi8 sol4 la8 si8 do4 ~
  do8 do8 si4 do4. si16 la16 
  %% 20 : 
  sol2 #(silun 0.0 +1.0 #t) r4 do8 si8 
  la4 sol4 la4 sol8 fa8 
  mi2 do'4 si8 la8 
  si4 la4 mi4 la4 
  sold2 la4 si4 ~
  %% 25 : 
  si8 si8 la4 si2 
  r4 mi,8 fad8 sold4 la4 
  si4 do2 si4 
  la4 sold4 la8 si8 do8 la8 
  si4 ~ si16 do16 re16 si16 do8 re16 do16 si8 la8 
  %% 30 : 
  sol?4 mi4 r2 
  la8 la8 sold4 la4 si4 
  do4 sol?4 la2 
  #(silun 0.0 +1.0 #t) r4 si4 do4 si4 ~
  si8 la8 la2 sol4 ~
  %% 35 : 
  sol8 mi8 la4. sol8 do4 ~
  do8 si8 sol4. mi8 la4 
  sol4. la8 si4. sol8 
  do4. la8 si4 mi,4 
  la2 sold8 la8 si4 
  %% 40 : 
  r4 r8 mi,8 sol?8 la8 si8 sol8 
  do4. si16 la16 sol8 la8 si4 
  do8. si16 la8 sol8 do4. si8 
  r4 sol4 do4 si4 
  mi,2 do'4 sol4 
  %% 45 : 
  #(silun 0.0 +1.0 #t) r8 la8 si8 re8 do4. si16 la16 
  sol16 la16 si16 sol16 do16 la16 sol16 fa16 mi2 
  r8 mi4 la8 sold2 
  r4 r8 mi4 la8 sold4 
  la4 do8 si8 mi,4. si'8 
  %% 50 : 
  mi,8 fad8 sold8 la8 si4 la4 
  #(silun 0.0 +1.0 #t) r8 la8 mi8 [ fa8 ] sold4. fa8 
  mi2 r8 mi8 si'8 [ la16 si16 ] 
  do4. si8 la2 
  #(silun 0.0 +1.0 #t) r8 do8 si8 la8 sol8 mi8 la4 
  %% 55 : 
  sold1
 
}

tenor = \relative do' {
  %%  1 : 
  R1 
  #(silaa +10.0 #t) R1 
  r2 r4 si4 
  la2 sol2 
  %%  5 : 
  #(silun 0.0 -1.0 #t) r4 la8 si8 do8 re8 mi8 re8 
  do4 do2 si4 
  la4 sol2 r4 
  r4 mi'4 do4. re8 
  mi4 do4 sol'8 mi4 re8 
  %% 10 : 
  do4 si4 #(silun 0.0 -1.0 #t) r4 la4 
  sol4. la8 si4 sol4 ~
  sol4 la4 mi4 mi'8 re8 
  do8 si8 la4 si4 sol4 ~
  sol4 do4 si4. la8 
  %% 15 : 
  sol4 la4 si2 
  la8 si8 do8 re8 do4 si8 la8 
  si4 la4 sol4 la8 si8 
  do4. si8 la4 sol8 fa8 
  sol4. fa8 mi4 do'4 ~
  %% 20 : 
  do8 si16 la16 sol2. 
  r4 do8 si8 la2 
  sol2 la4 sol8 fa8 
  mi4 do'2 do4 
  si4 mi8 re8 do4 si4 
  %% 25 : 
  do2 si4 mi4 ~
  mi8 re8 do4 si4 la4 ~
  la4 sol?4 la4 si4 
  do4 si4 la2 
  mi2 #(silun 0.0 -2.0 #t) r2 
  %% 30 : 
  r4 la4. la8 sold4 
  la4 si4 do4 re4 
  mi4. re8 do2 
  si4 mi,4. fa8 sol!4 
  la4. si8 do4 si4 
  %% 35 : 
  do4. la8 mi'4. do8 
  sol'4 mi8 re8 do4. la8 
  si8 sol8 do4 r8 si8 mi4 ~
  mi8 re8 do4 si4 dod8 re8 
  mi4 re8 do!8 si2 
  %% 40 : 
  mi,4 do'4 si4 sol!4 
  r8 la8 do8 re8 mi8 do8 sol'8 mi8 
  la8 [ la,8 ] do8 si8 la16 si16 do16 re16 mi16 do16 sol'16 sol,16 
  do4. si16 la16 sol8 la8 si4 
  do4 sol4 la4 do8 si8 
  %% 45 : 
  do4 si4 la16 si16 do16 re16 mi16 sol,!16 la16 si16 
  do8 si8 sol4 ~ sol16 fa16 mi16 fa16 sol8 la8 
  si4 do4 r8 si4 mi8 
  do4 si4 do8 la8 mi'8 re8 
  do4 la8 si8 ~ si8 la4 sol8 
  %% 50 : 
  do4 si4 r8 mi8 do8 re8 
  mi4 do4 r8 si8 mi,8 fa8 
  sol4 la4 si4 mi,4 
  #(silun 0.0 -1.0 #t) r8 mi8 la8 si8 do4 si8 la8 
  r8 sol8 la8 si8 do4 si8 la8 
  %% 55 : 
  \once\override Script #'extra-offset = #'(0 . 1.3) si1^\fermata
}

basse = \relative do' {
  %%  1 : 
  #(silaa -2.0 #f) R1
  #(silun 0.0 +2.0 #t) r4 do2 si4
  la2 mi2 
  r4 la,8 si8 do8 re8 mi8 re8 
  %%  5 : 
  do2. do'8 si8 
  la2 mi2 
  r4 do8 re8 mi8 fa8 sol8 mi8 
  do'8 la8 do8 si8 la2 
  R1 
  %% 10 : 
  #(silun 0.0 +2.0 #t) r4 mi4 do4. re8 
  mi4 do4 sol'8 mi4 re8 
  do2 r2 
  r2 mi4. re8 
  do8 si8 la4 mi'4 mi4 ~
  %% 15 : 
  mi8 re8 do4 si4 mi4 
  la,4 la'2 sol8 fa8 
  mi2. re4 
  do1 
  r4 sol4 la4. si8 
  %% 20 : 
  do4. re8 mi4 do4 
  R1 
  r4 do8 si8 la2 
  sold4 la2 do8 re8 
  mi2 #(silun 0.0 +2.0 #t) r4 mi4 ~
  %% 25 : 
  mi4. fad8 sold2 
  la2 mi4 la,4 
  mi'4 mi2 re4 
  do8 la8 mi'4 r4 la,4 ~
  la8 la8 sold4 la4 si4 
  %% 30 : 
  do4. re8 mi4. re8 
  do4 si4 la2 
  r2 r4 la4 ~
  la8 la8 sold4 la4 si4 
  do4 re4 mi2 
  %% 35 : 
  do2 r2 
  R1 
  mi4. do8 sol'4. mi8 
  la2 sold4 la4 
  dod,4 re4 mi4 sold,4 ~
  %% 40 : 
  sold4 la4 mi'2 
  R1 
  R1 
  r8 la,8 do8 re8 mi8 do8 sol'8 mi8
  la8 la,8 do8 si8 la16 si16 do16 re16 mi16 do16 sol'16 mi16 
  %% 45 : 
  la4 sold4 #(silun 0.0 +2.0 #t) r2 
  #(silun 0.0 +2.0 #t) r8 mi4 re8 do4 si8 la8 
  sold4 la4 mi'4. mi8 ~
  mi8 la8 sold4 la4 #(silun 0.0 +2.0 #t) r4 
  #(silun 0.0 +2.0 #t) r8 la,4 mi'8 dod4 mi4
  %% 50 : 
  #(silun 0.0 +2.0 #t) r8 la8 mi8 [ fad8 ] sold4 la4 ~
  la4. sol16 fa16 mi4 do4 ~
  do8 do8 si8 la8 sold2 
  la2 #(silun 0.0 +2.0 #t) r8 la'8 sol8 fa8 
  mi1 ~
  %% 55 : 
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
      \transpose do do' 
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


