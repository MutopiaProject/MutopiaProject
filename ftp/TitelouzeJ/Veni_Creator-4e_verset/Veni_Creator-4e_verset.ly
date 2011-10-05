%-*-coding:utf-8-dos-*-
\version "2.14.2"
\include "italiano.ly" 

%% Version 2.0 Les pauses sont centrées et positionnées sur la portée comme
%%             dans l'édition originale.
%% Version 3.0 Mise à jour pour la version 2.14.0. Quelques ajustements 
%%             de silences. Modification de la mise en page.

\header{
    title = "Veni Creator"
    subtitle = \markup{\center-align{\line{4\super{e} verset}}}
    piece = \markup{\line{\hspace #8.0 Choral}} 
    instrument = \markup{\center-align{\line{Orgue — Organ}}}
    composer = "Jean Titelouze (1563-1633)"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
    opus = ""
    %lastupdated = "2004-09-04 Sainte Rosalie "
    %lastupdated = "2005-05-16 lundi de Pentecôte "
    lastupdated =  "2011-09-13 Saint Jean Chrysostome"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"

  mutopiatitle = "Veni Creator (4e verset)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  mutopiastyle = "Baroque"

 footer = "Mutopia-2011/09/18-476"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\paper {
  print-page-number = ##f
  indent = 15\mm
  left-margin = 15\mm
  line-width = 18\cm
  bottom-margin = 15\mm
  top-margin = 15\mm 
}

global = {
  \key do \major
  \time 4/4
}

soprano =  \relative do'' {
  \stemUp
  %%1 :
  \once \override MultiMeasureRest  #'staff-position = #+4 R1 
  \once \override MultiMeasureRest  #'staff-position = #+4 R1 
  sol2 la4. sol8 |
  fa8 sol la sol do4 re |
  %%5:
  do4 si la8 sol la4 ~ |
  la8 sol do2 si4 ~ |
  si8[ do16 re] mi4. do8 la8[ si] |
  do4. si8 sol[ la] si4 ~ |
  si8 la sol4 la2 |
  %%10:
  re4 \rest re8[ do] si[ do16 re] mi4 ~ |
  mi8 re do4 re do4 ~ |
  do si dod re ~ |
  re8 do si2 mi4 |
  re4 re2 dod4 |
  %%15:
  re4 do8[ si] la[ si] do4 |
  \once\override MultiMeasureRest  #'staff-position = #+2 R1 %re1\rest |
  re2 mi4. re8 |
  do8[ re mi re] sol4 fad |
  sol8 fa mi re mi4 fa ~ |
  %%20:
  fa4 mi re mi |
  fad4 sol2 fad4 |
  sol4. fa8 mi[ re] do4 ~ |
  do4 fa mi8 do re4 ~ |
  re4 mi fa4. mi16 re |
  %%25:
  dod4 re mi2 |
  la,4 re4. do8 si4 ~ |
  si4 do re2\rest |
  fa2\rest \once\override Rest #'extra-offset = #'(0.0 . -1.0) r4 sol4 |
  mi2 re8 do fa4 |
  %%30:
  mi2 r4 re4 |
  \once\override Dots #'staff-position = #2.0 do4. re8 mi[ fa sol fa] |
  mi4 re2 do4 ~ |
  do si4 la2 |
  re4\rest do4 la2 |
  %%35:
  sol4. la8 fad sol4 fa8 |
  sib4 la sol do ~ |
  do sib la4. si8 |
  do4 re2 dod4 |
  re2 mi4 fa!4 ~ |
  %%40:
  fa4 mi2 re4 |
  mi4 re8 do si4 do |
  si2 mi |
  re4 mi2 mi4 |
  fad4 sol mi2 |
  %%45:
  R1 %re1\rest |
  do2 re4 mi |
  do4 si8[ la] do[ si] la4 ~ |
  la8[ si16 do] re4. do8 do4 ~ |
  do4 si do2 |
  %%50:
  re2 re2\rest |
  \override MultiMeasureRest  #'staff-position = #+2 R1 %re1\rest |
  si2 do4 la |
  sol4 sol2 fa4 |
  sol2 la |
  %%55:
  si8 do re4 sol, do ~ |
  do4 sib la2 ~ |
  la4 si? dod re8 do |
  si2 la4 si |
  mi2 re4. si8 |
  %%60:
  mi4 re8 do si4. la8 |
  sol2 si2\rest |
  re4\rest mi4 fa re |
  do4 re8[ mi] fa[ sol] la4 |
  sol4. fa8 mi4 fa |
  %%65:
  mi2 la,4 re |
  do8 re4 mi8 fad4 sol |
  fad4 sol la re, ~ |
  re8 si mi4. fa8[ sol fa16 mi] |
  re8 do si4 do re |
  %%70:
  mi4 re2 do4 |
  si1^\fermata |
}

alto = \relative do' {
  \stemDown
  %%1 :
  \once\override MultiMeasureRest  #'staff-position = #-2 R1
  \once\override MultiMeasureRest  #'staff-position = #-2 R1
  R1
  R1 %si1 \rest
  %%5:
  r2 re2 |
  mi4. re8 do[ re mi re] |
  sol4. la8 sol4 fa ~ |
  fa8[ mi do re] mi4. re8 |
  si[ do re mi] fa[ mi re mi] |
  %%10:
  fa8[ sol] fad4 sol4. fa8 |
  mi8[ fa sol la] si16[ la sol fa] mi4 |
  fad4 sol la2 |
  re,2 sol2 |
  fad4 sol8[ fa] mi[ fa] sol4 |
  %%15:
  fa4 mi r4 mi4 ~ |
  mi4 fa2 mi4 |
  re4. sol8 ~ sol[ mi] la4 ~ |
  la4 sol4. sol8 la4 |
  sol4 la8[ si] do[ si] la4 |
  %%20:
  sol4. la8 si4 do8 si |
  la4 sol la2 |
  si4 sol do4. si8 |
  la2 sol8[ la sib sol] |
  la8 si do4. si8 la4 ~ |
  %%25:
  la8 sol fad4 sol mi |
  fad4. sol8 la4 sol4 ~ |
  sol sol la sol8 sib |
  la8 si? do2 si4 | 
  r4 do4 la2 |
  %%30:
  sol4 la si sib ~ |
  \once \override NoteColumn  #'force-hshift = #1.2 sib4 la sol mi8 fa |
  sol8[ la si la] sol4 mi |
  fad4 sol2 fa4 |
  mi4 mi2 re4 |
  %%35:
  mi2 sol,4\rest re'4 ~ |
  re8 mi fa4 mi la ~ |
  la4 re, fa2 |
  mi8[ fa16 sol] la4 sib la8 sol |
  fad4 sol2 la4 |
  %%40:
  si4 do8 si la4. la8 |
  sol4 fad sol8 mi la4 ~ |
  la4 sol2 la4 |
  si8 sol do4. si8 la4 ~ |
  la4 sol2 ~ sol8[ fa16 mi] |
  %%45:
  re4 mi fad sol ~ |
  sol4 fa2 mi4 ~ |
  mi fa mi2 |
  r4 fa4 sol la |
  fa2 mi4 fa |
  %%50:
  re4 sol do,4. do8 |
  re4 mi la,4. re8 ~ |
  re8[ si] mi2 fa4 ~ |
  fa4 mi8 re do4 re |
  mi4. re8 do[ si ] la4 |
  %%55:
  re2 r4 mi4 |
  fa4 re do re8 mi |
  fad4 sol la2 |
  re,8[ do re mi] fad4 sol ~ |
  sol8 mi la4. sol8 sol4 ~ |
  %%60:
  sol4 fad sol re |
  mi4. re8 do4 fa | 
  mi4 la4. fa8 sol4 |
  la4 si?8 do la2 |
  la4\rest si4 do la |
  %%65:
  sol2 fa4. sol8 |
  la4 sib la re ~ |
  re8 do si4 la2 |
  sol1 ~ |
  sol1 ~ |
  %%70:
  sol1 |
  sol1 |
  
}

tenor = \relative do' {
  \stemUp
  %%1 :
  sol2 la4. sol8 |
  fa8 sol la fa do'4 re |
  do4 si do8 la re4 ~ |
  re4 do8[ si] la[ sol fa sol] |
  %%5 :
  la8 mi sol2 fa4 |
  do'4 la2 sol4 ~ |
  sol4 do2 re4 |
  la4. sol8 mi[ fa] sol4 ~ |
  sol8[ la si do] fa,4. sol8 |
  %%10:
  la2 sol4 si |
  do2 re4\rest do4 |
  re4. do16 si la2 |
  si2 r2 |
  r2 sol2 |
  %%15:
  la4. sol8 fa8[ sol la sol] |
  do2 re4 do4 ~ |
  do4 si do4. si8 | 
  la8 si do si mi4 re |
  si do8 si la4 re8 do |
  %%20:
  si4 do sol2 |
  re'2 dod4 re ~ |
  re8[ si] mi[ re] do4 fa ~ |
  fa8[ mi do  re] mi4 re8 mi |
  fa4 sol do,4. re8 |
  %%25:
  mi4 la, sol la |
  r2 re2 |
  mi4. re8 do[ re mi re] |
  fa[ mi] re[ do] re2 |
  do2 fa4 re ~ |
  %%30:
  re do sol'4. fa8 |
  mi4 fa mi4\rest do ~ |
  do4 si2 la8 sol |
  la4 si do la |
  do2 r2 |
  %%35:
  re4\rest do4 la2 |
  sol4 la do2 |
  re do4 re |
  mi fa mi2 |
  la,4 si do2 |
  %%40:
  sol4 la fa2 |
  r2 do'4\rest do4 |
  re4 mi do2 |
  si4 la sol do |
  si2 do8[ si16 la] sol4 ~ |
  %%45:
  sol8[ la16 si] do2 si4 |
  mi,4 la sol2 |
  la2 r4 do4 |
  la2 sol4 do |
  r4 fa,4 sol la |
  %%50:
  fa4 mi8[ re] fa[ mi] la4 ~ |
  la4 sol2 fad4 |
  sol4. mi8 la4 fa |
  do'4. si8 la8[ sol] la4 ~ |
  la8 sol sol2 fad4 |
  %%55:
  r4 si4 do la |
  re4 sol,2 fa8 mi |
  re4 sol2 fad4 |
  sol8[ la si do] re4 do8[ si] |
  do4. la8 si2 |
  %%60:
  sol8 mi la4 re, sol ~ |
  sol4 do la8[ sol la si] |
  do2 re4. mi8 |
  fa8[mi re do] re[ do si la] |
  si4 mi \once\override Rest #'extra-offset = #'(0.0 . -1.0) r4 r8 la,8 |
  %%65:
  do8[ sol] do2 sib4 |
  la4 re4. do8 si?4 |
  la4 sol4. fad16[ mi] fad4 |
  sol2 do4 sol8 la |
  si8 do re4 sol,8 la si4 |
  %%70:
  do4 si8[ do16 re] mi2 |
  re1 | 
}

basse = \relative do {
  \stemDown
  %%1 :
  \override MultiMeasureRest  #'staff-position = #-2 R1 |
  R1 |
  R1 |
  \once\override MultiMeasureRest  #'staff-position = #-4 R1 |
  R1 |
  \override MultiMeasureRest  #'staff-position = #-4 R1 |
  R1 |
  R1 |
  R1 |
  re2 mi4. re8 |
  do8[ re mi do] sol'4 la ~ |
  la sol4. sol8 fad4 |
  sol4. fa8 mi[ re] do4 ~ |
  do4 si do mi |
  re4 la re do ~ |
  do8 mi la4 sol2 |
  fad4 sol do,2 |
  \override MultiMeasureRest  #'staff-position = #-2 R1
  R1
  R1
  R1
  sol'2 la4. sol8 |
  fa8[ sol la fa] do'4 sol |
  re'4 do8[ si?] la[ sol] fa4 |
  mi4 re2 dod4 |
  re4. mi8 fad4 sol |
  \once\override Rest #'extra-offset = #'(0.0 . 2.0) r4 mi4 fa sol |
  la2 sol |
  R1
  R1
  R1
  \once\override Rest #'extra-offset = #'(0.0 . +2.0) r4 sol4 mi2 |
  re4 sol la re, |
  la'4 la, fa'2 |
  mi4 do re2 |
  sol,4 re' mi fa ~ |
  fa sol la2 |
  la2 sol8 fa mi4 |
  re2 re2\rest |
  \override MultiMeasureRest  #'staff-position = #-4 R1 |
  \override MultiMeasureRest  #'staff-position = #-2 R1 |
  R1 |
  si2\rest do2 |
  re4 mi do2 |
  si4 la re sol, |
  la2 si4 do4 ~ |
  do4 re la'4. sol8 |
  fa8 mi re4 mi fa8 mi |
  re2 do4 fa, |
  sib2 la |
  si4 do2 re4 |
  sol,2 r2 |
  r4 mi'4 fa re |
  do4 si la2 |
  sol2 r2 |
  \override MultiMeasureRest  #'staff-position = #-4 R1 |
  R1 |
  R1 |
  r2 r4 si4 |
  do4 la sol2 |
  do4 mi fa re |
  la'4. sol8 fa[ re] sib'4 |
  la2 fa |
  mi2 la4 re, |
  mi4 do re4. mi8 |
  fa4 sol re2 ~ |
  re1 |
  si4 do4. re8[ mi fa] |
  sol4. fa8 mi4 re |
  do4 sol'2 do,4 |
 \override Script #'padding = # 3 <<sol'1^\fermata sol,>> |
}

\score {
  {
    \context PianoStaff <<
      \context Staff = "dessus" <<
        \global
        \clef violin 
	\set Staff.midiInstrument = "pan flute"
	%\set Staff.midiInstrument = "Church organ"
	\context Voice = "soprano" {\voiceOne \soprano}
	\context Voice = "alto" {\voiceTwo \alto}
      >>
      \context Staff = "basse" <<
        \global    
        \clef bass
	\set Staff.midiInstrument = "pan flute"
	%\set Staff.midiInstrument = "Church organ"
	\context Voice = "tenor" {\voiceOne \tenor} 
	\context Voice = "basse" {\voiceTwo \basse}
      >>
    >>
    \bar "|."
  }
  \layout { }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 92 4)
      }
    }
}


