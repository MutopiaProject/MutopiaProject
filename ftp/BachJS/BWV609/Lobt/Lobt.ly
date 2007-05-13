% -*- coding: utf-8 -*-
% mai 2007
%mis doigtés et reporté les notes en conséquence main droite première portée, main gauche seconde portée par \change Staff.
% simplification score-layout avec utilisation pianoStaff
% créés midialto et miditenor, le traitement midi n'acceptant pas les changements de portées
\include "italiano.ly"
\header {
  title = \markup\center-align { \fontsize #-1 \normal-text "Orgelbüchlein" "Lobt Gott, ihr Christen allzugleich" \fontsize #-2 \normal-text \italic " Un clavier, pédalier, jeux d'anches"}
  composer = "Bach"
opus = "BWV 609"
 mutopiatitle = "Lobt Gott, ihr Christen allzugleich"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 609"
 mutopiainstrument = "Organ"
 date = "1714"
 source = "University of Rochester - Fauré 1917"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Pierre Pouillon"
 maintainerEmail = "pierre@ssji.net"
 lastupdated = "2007/avr/05"
 footer = "Mutopia-2007/05/13-953"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\paper {
between-system-space = 1.0\cm
top-margin = 0.0\cm
bottom-margin = 1.0 \cm
raggedbottom=##f
raggedlastbottom=##f
tagline= ##t
print-page-number = ##f
}

\version "2.10.16"

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 19)

global = {
%pour doigtés de changement de doigt type "4--5" :
\override TextScript #'font-name = #"Emmentaler"
\key sol \major
\time 4/4
\partial 4 }

soprano = \relative do''
{\clef treble
\global
%met doigté à l'extérieur point d'orgue :
\override Script #'script-priority = #1
sol4-1
re'-2-5 re-4-5 re-2-5 re-2-4 |
%2
mi-2-5 re8-2-4 do-2-5 si4-4  \fermata la-4 |
%3
re8-5 dod-1-4 re4-"5----4" mi-5 mi-5 |
%4
re2-"4--5" \fermata  ~re4  re-1-5 |
%5
re-1-5 re-2-5 \once \override Fingering #'extra-offset = #'( 0 . 2 ) re-5 si16 do si-1-3  \once \override Fingering #'extra-offset = #'( 0 . 2 ) do-4 |
%6
re4-1-5 ~re16 re-3-5 do si-1-3 la4 \fermata re-5 |
%7
do-"4-5" si-"4-5" la-2-4 la-1-5 |
%8
sol8-1-3 la-2-4 si-5 do-2-4 re4-5 \fermata re-2-5 |
%9
do-1-4 si-2-3 la-1-4 la-5 |
%10
sol2.-"4-5" \fermata
}

alto = \relative do''
{\clef treble
\global
\override Fingering #'direction = #UP
sol16 \once \override Fingering #'extra-offset = #'( 0 . 2 )
si-3 la sol
%1
la8 si do16 fad,-1 sol-2 la-1 sol8 la-1 si16 do si la-1 |
%2
sol8 sol8-1 la16 \once \override Fingering #'extra-offset = #'( 0.0 . 1.5 )  sol-1 fad \once \override Fingering #'extra-offset = #'( 0 . 1 ) mi-1 \change Staff = down \stemUp re \change Staff = up \stemDown fad-2 mi-1 \change Staff = down \stemUp  re dod \change Staff = up \stemDown mi-2 re-1 \change Staff = down \stemUp \once \override Fingering #'direction = #DOWN dod-1 |
%3
si8 \change Staff = up \stemDown mi \change Staff = down \stemUp re16 mi \change Staff = up \stemDown fad8-1 \change Staff = down \stemUp mi16 fad \change Staff = up \stemDown sol8-1 ~sol16 si-2 la-1 \change Staff = down \stemUp sol |
%4
fad16 \override Fingering #'extra-offset = #'( 0 . 1 )
\change Staff = up \stemDown sol-1 fad-2 mi-1 \change Staff = down \stemUp re \change Staff = up \stemDown mi-1
 \override Fingering #'extra-offset = #'( 0 . 0 )
fad sol la do-4 si la sol8 fad-2 |
%5
sol16 si-3 la sol   fad sol-2 mi fad   \change Staff = down \stemUp re \change Staff = up \stemDown fad-2 sol-1 la-2 si8 fad |
%6
sol16 do si la   \change Staff = down \stemUp sol \change Staff = up \stemDown  si la sol \change Staff = down \stemUp fad sol fad mi re8 \change Staff = up \stemDown fad
\change Staff = down \stemUp
%7
mi16 \change Staff = up \stemDown sol-1 fad mi \change Staff = down \stemUp re \change Staff = up \stemDown mi-1 \change Staff = down \stemUp do re \change Staff = up \stemDown mi8 dod-1 re red-2
%8
\override Fingering #'extra-offset = #'( 0 . 1 )
mi16 sol-3 fad mi   \change Staff = down \stemUp re \change Staff = up \stemDown si'-3
\override Fingering #'extra-offset = #'( 0 . 0 )
la sol \change Staff = down \stemUp fad \change Staff = up \stemDown re' do si la
do-4 si-3 la-2
%9
sol8 la-2 ~la16 la-1-5 sol-3 fa-2 mi fa re mi \change Staff = down \stemUp \once \override Fingering #'direction = #DOWN do-1 \change Staff = up \stemDown mi re do |
%10

}



  tenor = \relative do'
{\clef bass
\global
\override Fingering #'direction = #DOWN
\stemDown \tieDown
si16-3 re do si
%1
la-4 si-2 sol la fad la-3 si-2 do-1 re-2 mi do re si-4 sol la si |
%2
do-2 re si do   \once \override Fingering #'extra-offset = #'( 0 . -1 ) la4-4 ~la16-1 la-2 sol  fad-1-4 mi8-2-5  \once \override Fingering #'extra-offset = #'( 0 . -1.8 ) la-3
%3
~ la16-2 \once \override Fingering #'extra-offset = #'( 0 . -1 ) sol8-4 sol16-5 la8.-2-4 la16-5 si8.-2-4 si16-4 dod8.-3 dod16-1-5 |
%4
re-2-4 si-1 la sol fad-1-4 sol-2 fad mi re-5 fad-3 sol-2 la-1 si-3 do la si |
%5
sol-5 re'-1 do si la8 sol la16-1-4 do si la sol mi'-1 re do |
%6
si-5 re-4 mi fad sol8-1 r8 r16-2 mi-1-3 re-2-5 do-1-3 si-2-4 do la-5 si-4 |
%7
sol8-1-5 la-4 si-1-3 sol-2-5   ~  \once \override Fingering #'extra-offset = #'( -3 . 0 )  sol16-1 si-1 la sol fad sol mi-5 fad |
%8
sol-5 [mi'-1 re do] si-2-4
\clef treble
\stemUp
sol'-1 [fad mi] re-2-4 si'-1 la-2 sol-3 fad-4 mi-1 re-2 do-3 |
%9
\clef bass
\stemDown
si-4 do la-5 si-1 sol4-3 ~sol4. fad!8-4 |
%10
\stemUp
si16 \change Staff = up \stemDown
\override Fingering #'direction = #UP
do-1 si-2 la-1 \change Staff = down \stemUp sol \change Staff = up \stemDown si-2 la-1 do-2 si4-1_\fermata
}

basse = \relative do'
{\clef bass
\override Script #'script-priority = #1
\global
\partial 4
s4 s1 s1 s1 s1 s1 s1 s1 s1 s1 |
%10
sol16_1_2 mi_4 re_1 do_3 si_1_4 re_2 do_3 mi_1 re4_2 \fermata
}


a = \rtoe
q = \lheel

pieds = \relative do' {
\clef bass
\key sol \major
\time 4/4
\partial 4
sol4^\q
fad8^\a mi_\a re_\q do_\a si^\a la_\q sol_\a fa!_\q
%2
mi_\a mi'^\q fad!^\a re_\a sol4.^\a fad8_\a |
sol8^\a mi_\a fad^\a re_\a sol^\a mi_\a la^\a la,_\markup{ \musicglyph #"scripts.dpedaltoe"  "_"  }
^\markup{" " "_"   \musicglyph #"scripts.dpedaltoe"}  |
%4
re,4._\a mi8_\q fad^\a re_\a sol^\a la^\q |
si^\a do_\a re_\q mi^\q fad^\a re_\a sol^\a la^\q |
%6
si^\a la_\a si^\a do^\q re4^\a r8 re,,_\a |
mi_\q
 fad_\a sol_\q si^\a do^\q la_\a re^\a si_\a |
%8
mi^\q fad^\a sol^\a la^\q si^\a do^\q re^\a re,_\a |
mi_\q fad^\a sol^\q si,_\a do^\a la_\a re4^\a |
%10
sol,2._\a \fermata
\bar "|."
}

\score{
{\new StaffGroup
\with{ \remove System_start_delimiter_engraver }
<<
\new PianoStaff
<<
\new Staff = "up"
<< \soprano \\ \alto>>
\new Staff = "down"
<< \tenor \\ \basse >> >>
 \new Staff
\pieds >>
}

\layout {
 indent = 2.0\cm
}}

midialto = \relative do''
{\clef treble
\global
sol16 si-3 la sol
%1
la8 si do16 fad,-1 sol-2 la-1 sol8 la-1 si16 do si la-1 |
%2
sol8 sol8-1 la16  sol-1 fad  mi-1 re  fad-2 mi-1   re dod  mi-2 re-1   dod-1 |
%3
si8 mi re16 mi  fad8-1  mi16 fad sol8-1 ~sol16 si-2 la-1  sol |
%4
fad16  sol-1 fad-2 mi-1  re  mi-1
fad sol la do-4 si la sol8 fad-2 |
%5
sol16 si-3 la sol   fad sol-2 mi fad   re  fad-2 sol-1 la-2 si8 fad |
%6
sol16 do si la   sol   si la sol fad sol fad mi re8  fad
%7
mi16  sol-1 fad mi  re  mi-1  do re  mi8 dod-1 re red-2
%8
mi16 sol-3 fad mi  re  si'-3
la sol  fad re' do si la
do-4 si-3 la-2
%9
sol8 la-2 ~la16 la-1-5 sol-3 fa-2 mi fa re mi  do mi re do |
%10

}



  miditenor = \relative do'
{\clef bass
\global
si16-3 re do si
%1
la-4 si-2 sol la fad la-3 si-2 do-1 re-2 mi do re si-4 sol la si |
%2
do-2 re si do   la4-4 ~la16-1 la-2 sol  fad-1-4 mi8-2-5  la-3
%3
~ la16-2  sol8-4 sol16-5 la8.-2-4 la16-5 si8.-2-4 si16-4 dod8.-3 dod16-1-5 |
%4
re-2-4 si-1 la sol fad-1-4 sol-2 fad mi re-5 fad-3 sol-2 la-1 si-3 do la si |
%5
sol-5 re'-1 do si la8 sol la16-1-4 do si la sol mi'-1 re do |
%6
si-5 re-4 mi fad sol8-1 r8 r16-2 mi-1-3 re-2-5 do-1-3 si-2-4 do la-5 si-4 |
%7
sol8-1-5 la-4 si-1-3 sol-2-5   ~    sol16-1 si-1 la sol fad sol mi-5 fad |
%8
sol-5 [mi'-1 re do] si-2-4
\clef treble
sol'-1 [fad mi] re-2-4 si'-1 la-2 sol-3 fad-4 mi-1 re-2 do-3 |
%9
\clef bass
si-4 do la-5 si-1 sol4-3 ~sol4. fad!8-4 |
%10
si16 do-1 si-2 la-1  sol  si-2 la-1 do-2 si4-1_\fermata
}


\score {
<<   \new Staff {
     \set Staff.midiInstrument = "reed organ"
\soprano
    }
    \new Staff {
      \midialto
   }
  \new Staff {
      \set Staff.midiInstrument = "reed organ"
\miditenor
 }
\new Staff {
      \set Staff.midiInstrument = "reed organ"
\basse
    }
\new Staff {
\transpose do do,
\set Staff.midiInstrument = "reed organ"
\pieds
    }
  \new Staff {
 \transpose do do'
\set Staff.midiInstrument = "clarinet"
\soprano
    }
    \new Staff {
 \transpose do do'
\set Staff.midiInstrument = "clarinet"
      \midialto
  }
    \new Staff {
\transpose do do'
\set Staff.midiInstrument = "clarinet"
\miditenor
  }
\new Staff {
 \transpose do do'
\set Staff.midiInstrument = "clarinet"
\basse
    }
\new Staff {
\set Staff.midiInstrument = "clarinet"
\pieds
}>>

\midi {
    \context {
     \Score
      tempoWholesPerMinute = #(ly:make-moment 70 8)
      }
    }
}
