 % -*- coding: utf-8 -*-
% mai 2007. parti de fichier Urs Metzger existant dans Mutopia. Passé en italiano et version 2 10 16.Ajouté doigté . Notes reparties selon doigté, main droite première portée, gauche seconde portée.
%juillet 2007 ajouté un dièse au sol de pédale mesure 2

\version "2.10.16"
\include "italiano.ly"


\header {
 mutopiatitle = "Nun komm' der Heiden Heiland"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 599"
 mutopiainstrument = "Organ"
 date = ""
 %source = "fichier Mutopia de Urs Metzger"
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Pierre Pouillon"
 maintainerEmail = "pierre(at)ssji.net"
 lastupdated = "2007 juillet"

 title = "Nun komm' der Heiden Heiland"
 composer = "Johann Sebastian Bach"
 opus="BWV 599"

 footer = "Mutopia-2007/07/02-713"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
ot = {\once \override TextScript #'extra-offset = #'( 0 . 1 )}
ott = {\once \override TextScript #'extra-offset = #'( 0 . 2 )}
otm = {\once \override TextScript #'extra-offset = #'( 0 . -1 )}
ottm = {\once \override TextScript #'extra-offset = #'( 0 . -2 )}
of = {\once \override Fingering #'extra-offset = #'( 0 . 1 )}
off = {\once \override Fingering #'extra-offset = #'( 0 . 2 )}
ofm = {\once \override Fingering #'extra-offset = #'( 0 . -1 )}
offm = {\once \override Fingering #'extra-offset = #'( 0 . -2 )}

\paper {
between-system-space = 2.5\cm
system-count = 3
top-margin = 0.5\cm
bottom-margin =0.5 \cm
tagline= ##t
}

global = { \override TextScript #'font-name = #"Emmentaler"
\override Script #'script-priority = #1
   \key la \minor
   \time 4/4
}
#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18.7)
halsup = {
  \stemUp
  \tieUp }
halsdown = {
  \stemDown
  \tieDown }
staffup = {
   \change Staff = "right" \halsdown }
staffdown = {
   \change Staff = "left" \halsup }
rshiftI = {
   \once \override NoteColumn #'force-hshift = #1 }

sopran = {
   \new Voice \relative la' {
      \global
      \halsup
%1
\of la2-5 re16\rest la-4 si-5 fad-3 \ot sol!4^"4-"
%2
do4-5 si8-1-4 la si2-5
%3
la2-4 \fermata la8.-1-4 si16^"1"^"5-4" do4^"1"^"5--4"
%4
re4-2-5 \of do-4 re^"5--" mi-5
%5
do2 \fermata do4 \ot re^"5--"
%6
mi4-5 do^"1--2"^"4" \of re8-5 \of do-3 si4
%7
la2-4\fermata la-4
%8
r16 la-4 si fad-3 \ot sol4^"4--3" do-5 si8-1-4 la-3
%9
\of si2-4 \once \override Tie #'staff-position = #'4.5 \of la-5 \fermata~
%10
la1-3-5 \bar "|."
   }
}

alt = {
   \new Voice \relative re' {
 \global
\override Fingering #'direction = #UP
      \halsdown
%1
re16\rest re-1 mi8-2~ mi red-1~ red4 do16\rest red-2-3 mi8-1 ~
%2
mi16 sold-3 la-3 \of red,-1 mi4~ mi16 mi-1 fa!8~ fa16 re-1 mi-2 \override Fingering #'direction = #DOWN \staffdown si-2
%3
do4-1 \staffup \override Fingering #'direction = #UP mi16\rest re!-1 mi si do8. re16 mi4
%4
la16 re,-1 sol8-2 ~   sol8 fa-1 ~   fa16 la-2-4 \staffdown re,8 \staffup sol16\rest sol-1 do-4 sib~
%5
sib16 sol \tieUp la8-2-4 ~ \halsup \shiftOn la4~la~ la16 do-4 si!8-1-4 ~
%6
\stemDown
si16 si-3 do sold-2 la4~ \halsdown la16 sold la8~ la16 fad-1-5 sold8-3
%7
mi16\rest re-1 mi8~ mi4~ mi16 mi-1 fa8~ fa16 mi fa8
%8
la,4\rest do16\rest red-2 mi8-1 ~   mi16 sold-3 la-3 red,-1   mi8 la~
%9
\halsup \shiftOn la16 sold la8-3 ~    la16 fad-1 \tieDown sol8~ sol16 \override Fingering #'extra-offset = #'( 0 . 0.5 ) {fa!-2 \tieUp sol8-3 ~ sol16 mi-1-4} \tieDown fa8~
%10
\rshiftI fa16 mi-2 \tieUp fa8-1-3 ~ fa16 sol fa8~ fa16 re-2 mi8-3 ~ mi4 \fermata
   }
}

tenor = {
   \new Voice \relative si {
      \global
      \halsup
      \shiftOn
\override Fingering #'direction = #DOWN
 si8\rest si16\rest si-2 do4-1 ~ do s
      s1
      s1
      s1
%5
\staffdown  mi8\rest mi16\rest mi-2 fa4-1 ~ fa s
%6
s1
%7
do8.-3 si16-4 do4-1 ~ do16 dod re8~ re16 dod re8
%8
fa,4\rest fa8\rest la16\rest si16-2  la4-3 do16\rest si-2 do8-1
%9
\rshiftI re!8. \staffup fa16 \staffdown si,8  mi-1 ~ \rshiftI mi16 re-2 mi8~ mi16 dod-2 re8-1 ~
%10
\rshiftI re16 dod \staffup re8~ re16 mi re8~ re8. si16-1 dod!4-2
   }
}

bass = {
   \new Voice \relative sold {
      \global
      \halsdown
\override Fingering #'direction = #DOWN
si,4\rest re16\rest sold-4 la8-3 ~ la4 si8.-2 si16
|%2
\tieUp la4-3 r16 si-2 do fad,-5 sold8 la~ la [ sold]
%3
r16 sold-3 la red, mi-2 si-5 do-2 sold-5 la-5 sold'-2 la8-1 ~ la16 si-3 do8-2 ~
%4
do8-2 si-3 do16 sol la8~ la16 do si8-1-3 do16-2 mi-1 sol,8-5
%5
r4 r16 sib-3 do-2 sol-5 la-4 [do-2 ] \clef treble \stemUp fa8_"1--2" ~  fa16 la-1 re,-5 fa-3
%6
mi4-4 ~ mi16 mi-2 fa do-3   si8 la    mi'8.-1  [ re16-2] \clef bass \stemNeutral
%7
\halsdown re,4\rest re16\rest sold-4 la8-3 ~ la16 sol-2-4 fa8-1-5 ~ fa16 la-2-3 re,8-1-5
%8
s2. si8\rest re16\rest mi-5
%9
fa!4_"1"_"4--5" sol!_"2"_"4--5" \tieDown la2-4 ~
%10
\rshiftI la16 sol-2-5 la-1 mi fa dod-5 re-1 sold, <<

         \new Voice \relative fa  {
\override Fingering #'direction = #DOWN
\override Script #'script-priority = #1
            \stemUp s4 la16\rest sold-1 \override Script #'extra-offset = #'(0 . 2) la8-1^\fermata
         }
         \new Voice \relative la, {\override Fingering #'direction = #DOWN
\override Script #'script-priority = #1
            \stemDown la2-5^\fermata
         }
      >>
   }
}

right = {
   \clef treble
   <<
   \alt
   \sopran
   >>
}

left = {
   \clef bass
   <<
   \tenor
   \bass
   >>
}

a = \rtoe
q = \lheel

pedal = {
\override Script #'script-priority = #1
   \key la \minor
   \time 4/4
   \clef "bass"
   \relative la, {
r4 r8 r16 la_\a mi'8.^\a red16_\a mi4_\q
%2
fad4_\a sold8^\a la^\q mi8._\q re!16_\a mi8^\a mi,_\a
%3
la2_\markup{\transparent{es} "_" \musicglyph #"scripts.dpedaltoe" }
^\markup{ \musicglyph #"scripts.dpedaltoe" "_"} r8 r16 la_\a la'8.^\a sol!16^\q
%4
fa8._\a sol16^\a mi8._\a fa16^\a re8._\a sol16^\a do,8._\a mi16^\a
%5
fa,2_\a fa'8.^\q la16^\a re,8._\a sol16^\a
%6
do,8._\a mi16^\a fa,8._\a la16^\a re,8._\a re'16^\q mi8^\a mi,_\a
%7
la4_\markup{\transparent{es} "_" \musicglyph #"scripts.dpedaltoe" }
^\markup{ \musicglyph #"scripts.dpedaltoe" "_" " " }  la'8.^\q do16^\a fa,8._\a la16^\a re,8._\a fa16^\a
 %8
si,8._\a red16^\a mi,4_\q fad_\a sold8^\a la^\q
%9
re,8_\a re'^\a mi8.^\q[ sol!16^\a ] dod,8._\a mi16^\a re8._\a fa16^\a
%10
 la,1^\fermata_\a
   }
}

\score {\new StaffGroup
\with{ \remove System_start_delimiter_engraver }
   <<
      \new PianoStaff {
         <<
            \context Staff = right {
               \context Voice = right \right
            }
            \context Staff = left {
                     \context Voice = left \left
            }
         >>
      }
      \context Staff = pedal {
         \context Voice = pedal \pedal
      }
   >>
   \layout{}
}


\score {
   <<
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \right
      }
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \left
      }
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "contrabass"
         \transpose do do, \pedal
      }
   >>
   \midi{ tempoWholesPerMinute = #(ly:make-moment 40 4) }
}
