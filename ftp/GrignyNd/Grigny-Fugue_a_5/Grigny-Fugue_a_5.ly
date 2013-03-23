\version "2.16.1"
\include "italiano.ly" 

%% Version 1.0

\header{
    title = "Fugue à 5"
    subtitle = ""
    piece = "" 
    instrument = "Pour orgue"
    composer = "Nicolas de Grigny (1671-1703)"
    copyright = "Public Domain"
    source = "Edition Schott 1877 Alexandre Guilmant"
    opus = ""
    enteredby = "G. Gréco"
    mutopiacomposer = "GrignyNd"
    mutopiainstrument = "Organ"
    mutopiastyle = "Baroque"
    maintainer = "Gérard Gréco"

 footer = "Mutopia-2013/03/23-539"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global =  {
  \key do \major
  \time 4/4
}

soprano  =  \new Voice \relative do'' {
  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1
  \voiceOne r2 mi4^\mordent mi |
  \appoggiatura mi8 fa2^\mordent mi8[ sol fa mi] |
  %% 15 :
  re2^\prall sol^\prall |
  la4. si8 \appoggiatura si do4. si16[ do] |
  si2^\prall la2 ~ |
  la sol4.^\mordent la8 |
  \appoggiatura la si4.^\mordent la16[ sol] fad2^\prall |
  % D'après l'édition orginale -- according to the original printing :
  %% 20 :
  mi1 |
  %% mi2 | %% leçon d'Alexandre Guilmant
  s1 s1 s1 |
  r2 mi4.^\prall mi8 |
  %% 25 :
  \appoggiatura mi fa8[ la sol fa] mi2^\prall |
  re2. sol4 |
  sol2 re ~ |
  re2 r8 re8[ mi fad] |
  %re2 la'8\rest re,8[ mi fad] |
  \appoggiatura fad? sol2^\mordent ~ sol8[ fad! sol la] | 
  %% 30 :
  si1 |
  la2 sol |
  sol8[ la] si4 do la |
  si2 mi,4 la8[sol] |
  fad4^\prall sol fad2^\prall |
  mi2 r2 |
  %% un moyen d'ajuster la hauteur d'une pause :
%  \once \override MultiMeasureRest #'extra-offset = #'(0 . 1)  R1 |
R1 |
  mi2^\mordent mi4.^\prall mi8 |
  \appoggiatura mi fa2^\mordent mi |
  re2 mi ~ |
  mi re |
  %% sic :
  re4 ~ re4 ~ re2 |
  do8[ mi re do] re2 ~ |
  re2 mi |
  re4 la' la4. sol8 |
  fa4^\prall re2 do4 ~ |
  do4 re mi2 |
  mi1 |
  
 }

alto =  \new Voice \relative do'' {
  %\set Staff.midiInstrument = "alto sax"
  R1
  R1
  si2^\mordent^"Cornet" si4.^\prall si8
  \appoggiatura si8 do4^\mordent~do16[re do si] si4.^\prall la16[ si]
  %% 5 :
  la2 re |
  mi2^\mordent re |
  dod^\prall re8^\mordent do si^\prall la |
  sold4^\prall mi'4.^\mordent re8 do4^\mordent ~ |
  do4 re mi^\mordent fa8[ sol] |
  %% 10 :
  fad2^\prall sol4 re |
  do4.^\prall re8 \appoggiatura re8 mi2^\mordent |
  \voiceTwo la,2 re4^\mordent re8[ la] |
  \appoggiatura la8 si2_\mordent la2 ~ |
  la4 re sol,2 ~ |
  %% 15 :
  sol2 sol4 do8_\mordent[ si] |
  la4 re do2 |
  mi4 re do4._\prall re8 |
  si1 ~ |
  si1   |
  %% 20 :
  si2 r2 |
  \oneVoice R1 |
  si2^\mordent si4.^\prall si8 |
  \appoggiatura si do2^\mordent si |
  \voiceTwo la1 ~ |
  %% 25 :
  la2. sol4 |
  fa8_\prall[ sol] la4 sol2 ~ |
  sol1 |
  fad2 r2 |
  r r8 red'8[ mi fad] |
  %% 30 :
  \appoggiatura fad? sol1_\mordent |
  mi4_\prall re2 do4 |
  re8[ fa] mi2. |
  fad4 mi8[ re] dod[ si] do4 ~ |
  do4 si si2 |
  %% 35 :
  %% selon l'édition originale -- according to the original printing :
  mi2 si4._\prall si8 |
  %% si2 si4._\prall si8 | %% leçon d'Alexandre Guilmant
  \appoggiatura si do2_\mordent si_\mordent
  la1 ~ |
  la8[ si do_\mordent re] sol,4 sol8[ la] |
  si8_\mordent[ do si la] sol2_\prall ~ |
  %% 40 :
  sol1 |
  fad2_\prall sol |
  sol4. la8 \appoggiatura la8 si2_\mordent |
  la1 
  la1 |
  %% 45 :
  la2 sol |
  la2 si4 la |
  si1_\mordent |
}

tenor = \relative do' {
 % \set Staff.midiInstrument = "alto sax"
  mi2^\mordent^"Cromorne" mi4.^\prall mi8 |
  \appoggiatura mi fa4_\mordent ~ fa16[ sol fa mi] mi4._\prall re16[ mi] |
  re2 sol4 fa |
  mi fad sol2 ~ |
  %% 5:
  \voiceOne sol2 fad8^\prall[ la sol fa] |
  mi4 la2 sol4 ~ |
  sol2 fad8^\prall[ mi] fa4 |
  mi4. fad8 sol2 |
  la2 sol |
  %% 10 :
  la2 sol8[ la] si4 |
  la2 sol4. la8 |
  fad2^\prall si4 fad |
  \appoggiatura fa8 mi2 mi |
  re2 do |
  %% 15 :
  si8^\mordent[ si do re] mi2^\mordent |
  mi4 re mi2 |
  mi2 mi4. mi8 |
  red2^\prall mi ~ |
  mi2 red2^\prall |
  %% 20 :
  mi2 mi4.^\prall mi8 |
  \oneVoice \appoggiatura mi fa2^\mordent mi4.^\prall re8 |
  re2 sol |
  mi4 la2 sol4 ~ |
  sol4 fa mi dod8^\prall[ dod] |
  %% 25 :
  \appoggiatura dod re^\mordent[ fa mi re] dod4.^\prall re8 |
  \voiceOne re1 |
  mi2 re |
  re8[ re mi fad] \appoggiatura fad sol4.^\mordent la8 |
  si4 la sol2 ~ |
  %% 30 :
  sol1 ~ |
  sol4 fa2 mi4 |
  \appoggiatura mi8 re4 re8[ mi] do4^\prall do8[ re] |
  si4. sol'8 sol4 fad8^\prall[ mi] |
  red4^\prall mi red4.^\prall mi8 |
  %% 35 :
  \oneVoice mi1 |
  R1 | R1 |
  R1 |
  s1 
  %% 40 :
  s1 s1 s1 |
  \voiceOne r2 mi4. mi8 |
  fa2 \afterGrace mi2^\prall {fa16[ fa mi]} |
  re8[ re16 mi] fa4 ~ fa8[ mi] mi4 ~ |
  mi8[ re] re2 do8[ re] |
  \override NoteColumn #'force-hshift = #'2 si1^\prall
}

basso = \relative do' {
  %\set Staff.midiInstrument = "alto sax"
  
  \voiceTwo
  s1 s1 s1 s1
  %% 5 :
  r2 si4. si8 |
  do4 ~ do16[ re do si] si4._\prall la16[ si] |
  la2 re ~ |
  re4 do8[ re] si4_\prall mi ~ |
  mi4 re2 do4 ~ |
  do4. si16[ do] si4 sol' ~ |
  sol fa mi2 |
  re2 re4. re8 |
  re2 do |
  la4 sol sol4. la8 |
  si8[ sol la si] \appoggiatura {re8} do4. do8 |
  do4 la2. |
  sold2_\prall la4. sol8 |
  fad2 mi |
  \appoggiatura sol8 fad2. sol8[ la] |
  sold2_\prall r2 |
  s1 s1 s1 s1 s1
  r2 si4._\prall si8 |
  \appoggiatura si8 do2_\mordent si2_\prall |
  la2 r2 |
  r8 si8[dod red] mi2 ~ |
  mi2 ~ mi8[ re16 do] si8[ mi] |
  dod4 re8[ do] si4_\prall do4 ~ |
  do4 si2 la4 ~ |
  la4 sol8[ si] ~ si4 la ~ |
  la sol8[ la] si2 |
  mi,1 |
  s1 s1 s1 |
  si'2^\mordent si4. si8 |
  \appoggiatura{ si8} do2^\mordent si2^\prall |
  la2 re |
  \appoggiatura{re8} mi4.^\mordent fad8 sol4 sol,8[ sol] |
  \appoggiatura sol8 la4_\mordent la8_\prall[ si] \appoggiatura si8 do4 dod |
  re2. dod4 |
  re4 re8[ do] si4_\prall do8[si] |
  \appoggiatura si8 la4. re8 sold,4_\prall la ~ |
 la2 sold2_\prall |
  
}

pedale = \relative do {
  R1*7 |
  mi2_"Pédalle" mi |
  fa mi |
  re sol |
  la4. si8 do2 ~ |
  do2 si4 la |
  %>>
  sold2 la4 la, |
  re si do8[ re mi fa] |
  sol4. fa8 mi2 |
  fa2 mi |
  mi,2 la |
  si1 ~ |
  si1 |
  mi8[ fa mi re] dod[ si dod la] |
  re[ do si sol] do[ re mi fa] |
  sol[ la sol fa] mi[ fad sol mi] |
  la[ sol fad re] sol[ sol, si do] |
  re2 dod8[ mi la sol] |
  fa8[ re sib' sol] la4 la, |
  re8[ mi fad re] sol4. fa8 |
  mi8[ do mi fa] sol[ sol, si do] |
  re8[ mi re do] si8[ sol do la] |
  mi'1 ~ |
  mi8[ red mi fad] sol4 mi |
  la4 re, sol do, |
  sol' sold la2 |
  red,4 mi8[ mi,] la2 |
  si2. la4 |
  sold2 ~ sold8 [mi fad sold] |
  la8[ si do re ] mi8[ fa mi re] |
  dod[ re mi re] do[ si do la] |
  re8[ re' la si] do8[ do, mi fa] |
  sol[ la sol fa] mi[ fa mi re] |
  do[ re mi fa ] sol[ sol, si do] |
  re[ mi re do] si[ la sol fa] |
  mi[ do' si la] sol2 |
  fad4 fa mi la | 
  re,8[ mi fa sol] la2 |
  re2 sol4 do, |
  fa2 mi4 la, |
  mi1 |
}

\score {
    {
	<<
	    \new PianoStaff \with {
              % Separate staff group from last staff
              \override StaffGrouper #'staffgroup-staff-spacing #'minimum-distance = #13
              \override StaffGrouper #'staffgroup-staff-spacing #'basic-distance = #13
            }
            <<
		\context Staff = "dessus" <<
		    \global
		    \clef violin 
		    \set Staff.midiInstrument = "Church organ"
		    \soprano
		    \alto
		>>
		\context Staff = "basse" <<
		    \global    
		    \clef violin
		    \set Staff.midiInstrument = "Church organ"
		    \tenor
		    \basso
		>> 
	    >>
	    \context Staff = "pedale" <<
	      \global
	      \set Staff.midiInstrument = "Church organ"
	      \clef bass
	      \pedale
	    >>
	>>  
	
	
	\bar "|."
    }
    \layout {}
    
  \midi {
    \tempo 4 = 100
    }


    
}
