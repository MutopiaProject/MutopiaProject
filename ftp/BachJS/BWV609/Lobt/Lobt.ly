% -*- coding: utf-8 -*-

\include "italiano.ly"
\header {
  title = \markup\center-align {"Lobt Gott, ihr Christen allzugleich" \fontsize #-1 \normal-text "Orgelbüchlein"}
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
 footer = "Mutopia-2007/04/07-953"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\paper {
between-system-space = 1.0\cm
top-margin = 0.0\cm
bottom-margin = 1.0 \cm
raggedbottom=##f
raggedlastbottom=##f
tagline= ##t
%system-count = 8
print-page-number = ##f
}

\version "2.10.16"

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 19)

global = { \key sol \major
\time 4/4
\partial 4 }

soprano = \relative do''
{\clef treble
\global
sol4
re' re re re |
%2
mi re8 do si4 \fermata la |
re8 dod re4 mi mi |
%4
re2 \fermata ~re4 re |
re re re si16 do si do |
%6
re4 ~re16 re do si la4 \fermata re |
do4 si la la |
%8
sol8 la si do re4 \fermata re |
do si la la |
%10
sol2. \fermata
}

alto = \relative do''
{\clef treble
\global

sol16 si la sol
la8 si do16 fad, sol la sol8 la si16 do si la |
%2
sol8 sol8 la16 sol fad mi re fad mi re dod mi re dod |
si8 mi re16 mi fad8 mi16 fad sol8 ~sol16 si la sol |
%4
fad16 sol fad mi re mi fad sol la do si la sol8 fad |
sol16 si la sol fad sol mi fad re fad sol la si8 fad |
%6
sol16 do si la sol si la sol fad sol fad mi re8 fad |
mi16 sol fad mi re mi do re mi8 dod re red |
%8
mi16 sol fad mi re si' la sol fad re' do si la do si la |
sol8 la ~la16 la sol fa mi fa re mi do mi re do |
%10

}



  tenor = \relative do'
{\clef bass
\global
\stemDown
si16 re do si
la si sol la fad la si do re mi do re si sol la si |
%2
do re si do  la4 ~la16 la sol fad mi8 la
~ la16 sol8 sol16 la8. la16 si8. si16 dod8. dod16 |
%4
re si la sol fad sol fad mi re fad sol la si do la si |
sol re' do si la8 sol la16 do si la sol mi' re do |
%6
si re mi fad sol8 r8 r16 mi re do si do la si |
sol8 la si sol ~sol16 si la sol fad sol mi fad |
%8
sol mi' re do
\clef treble
\stemUp
si sol' fad mi re si' la sol fad mi re do |
\clef bass
\stemDown
si do la si sol4 ~sol4. fad!8 |
%10
\stemUp
si16 do si la sol si la do si4 \fermata


}

basse = \relative do'
{\clef bass
\global
\partial 4

s4 s1 s1 s1 s1 s1 s1 s1 s1 s1 |
%10
sol16 mi re do si re do mi re4 \fermata

}


a = \rtoe
q = \lheel

pieds = \relative do' {
\clef bass
\global
sol4
fad8 mi re do si la sol fa!
%2
mi mi' fad! re sol4. fad8 |
sol8 mi fad re sol mi la la, |
%4
re,4. mi8 fad re sol la |
si do re mi fad re sol la |
%6
si la si do re4 r8 re,, |
mi fad sol si do la re si |
%8
mi fad sol la si do re re, |
mi fad sol si, do la re4 |
%10
sol,2. \fermata

\bar "|."
}

\score
{
% compliqué mais : les barres de mesures traversent en un seul trait les 3 portées :
\new StaffGroup
\with{
\remove System_start_delimiter_engraver
}
<<
\new InnerStaffGroup
\with {systemStartDelimiter = #'SystemStartBrace }
<<
\new Staff
<< \soprano \\ \alto>>
\new Staff
<< \tenor \\ \basse >> >>
 \new Staff
\pieds>>

\layout {
 indent = 1.0\cm }
}

\score {
<<
    \new Staff {
      \set Staff.midiInstrument = "reed organ"
\soprano
    }
    \new Staff {
      \set Staff.midiInstrument = "reed organ"
      \alto
    }
    \new Staff {
      \set Staff.midiInstrument = "reed organ"
\tenor
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
      \alto
    }
    \new Staff {
 \transpose do do'
\set Staff.midiInstrument = "clarinet"
\tenor
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
      tempoWholesPerMinute = #(ly:make-moment 80 8)
      }
    }



}
