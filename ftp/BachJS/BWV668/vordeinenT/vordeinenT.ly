% -*- mode: LilyPond ; coding: utf-8 -*-
\version "2.8.0"
\include "italiano.ly" 

\header{
    title = \markup {\center-align { "Vor deinen Thron tret' ich." \normalsize "(oder: Wenn wir in höchsten Nöthen sein.)" "Devant Ton trône, je vais comparaître." } }
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Johann Sebastian Bach (1685-1750)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Bach-Gesellschaft Edition, OrgelWerke 1893"
    opus = "BWV 668"
    lastupdated = "2006-03-28"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "Vor deinen Thron tret' ich"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"
    footer = "Mutopia-2006/03/29-712"
    %tagline= ""
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

%#(set-default-paper-size "a4")
#(set-global-staff-size 18)

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

staffup = {
   \change Staff = "dessus" \halsdown
}

staffdown = {
   \change Staff = "basse" \halsup
}

global = {
  \key sol \major
  \time 4/4
}

choral =  \relative do'' {
  \global \tieDown 
  \override MultiMeasureRest #'staff-position = #2 R1
  \override MultiMeasureRest #'staff-position = #4 R1*4
  \override MultiMeasureRest #'staff-position = #2 R1*2
  %  8 :
  \once\override Voice.TextScript #'extra-offset = #'(0.0 . 0.2) sol2^\markup{ "Choral"}  sol4 \stemUp la8 do16 si16 
  si4 \stemNeutral la8. si16 do4 si4 
  % 10 : ==============================================
  la4^\trill ~ la16 sol16 la8 sol2 ~
  sol2 si2\rest 
  \override MultiMeasureRest #'staff-position = #4 R1*7
  % 19 :
  si2\rest \once\override Voice.TextScript #'extra-offset = #'(0.0 . 0.2) si2^\markup{ "Choral"}
  % 20 : ==============================================
  do4 si4  la4 sol4
  fad4 sol4 la2 ~
  la2 si2\rest 
  R1*6
  re2\rest re2 
  % 30 : ==============================================
  do4 si4  la8 sol8 fad4 
  sol8 fad8 mi4 re2 ~
  re2 si'2\rest 
  R1*7
  % 40 : ==============================================
  si2\rest si2 
  do4 si4  la4 sol8 la8 
  si4 la4 \tieUp  sol2  ~
  sol1 ~
  sol1 ~
  % 45 : ================
  sol1 ^\fermata \bar "|."
}

alto = \relative do'' {
  \global \staffup
  \override MultiMeasureRest #'staff-position = #-2 R1 
  sol8\rest sol8 sol8 fad8 mi4 fad8 mi8 
  re8 mi8 fad4 sol4. fad8 
  mi8 [ la8 ] re,8 sol8 ~ sol8 fad16 mi16 fad8 sol8 
  %  5 : ================
  la4 sol8 la8 si8 re,8 [ re8 dod8 ] 
  \staffdown si4 dod8 si8 la8 si8 dod4 
  re4. do!16 si16 do4. si16 la16 
  si8 si8 [ si8 do8 ] re4 mi8 fad8 
  sol8 si,8 mi8 re8 do8 re8 re4
  % 10 : ================================
  mi8 do8 re8 do8 si8 do8 re4 ~
  re8 [ do16 si16 do8 la8 ] si8 r8 r4 
  \staffup mi8\rest mi8 re8 mi8 fad8 sol8 la8 sol8 
  fad4 sol8 sold8  la8 [ sol8 ] fad8 mi16 red16 
  mi2. ~ mi8 re!16 dod16 
  % 15 : ================
  re8 fad8 [ sol8 fad8 ] mi8 re8 dod8 red8 
  mi4. fad16 sol16 la4. sol16 fad16 
  sol4. fad16 mi16 fad8 re8 sol4 ~
  sol4 ~ sol16 mi16 re16 mi16 fad8 [ sol8 ] la8 sol16 fad16 
  \staffdown sol8 re8 [ re8 mi8 ] fa8 sol16 fa16 mi8 re8 
  % 20 : ================================
  do8 sol'8 [ sol8 fad!8 ] mi8 fad8 sol4 
  r8 re8 re8 dod16 si16 mi8 dod16 re16 mi8 dod8 
  re16 mi16 fad8 mi16 fad16 sol8 fad8 r8 r4 
  \staffup la,2\rest la8\rest la8 si8 dod8
  re4 fa4 mi8 fad8 sold4 
  % 25 : ================
  la8 fa8 mi8 re8 dod16 red16 mi4 red8 
  mi8. [ fad16 sol8. la16 ] si8 la4 si16 la16 
  sol4 la4 re,4 mi4
  fad8 la8 sol8 fad8  mi8 re8 do!4 
  \staffdown si8 re8 sol4 fad8 fad8 [ fad8 sol8 ] 
  % 30 : ================================
  la8 fad8 re4 ~ re2 ~
  re8 re4 dod8 re4. do8 
  si2 ~ si8 la8 r4 
  \staffup mi'8\rest mi8 re8 mi8 fad8 sol16 fad16 mi8 fad8 
  sol4. fad16 mi16 fad8 si,8 mi4 ~
  % 35 : ================
  mi4 red4 mi8 fad8 [ sol8 fad8 ] 
  mi8 re!16 mi16 fad8 mi8 re4. do!8 
  si8 [ dod8 ] re8 mi16 re16 dod8 [ re8 ] mi8 fad16 mi16 
  re8 mi8 fad8 sold8 la4 r4 
  r8 la8 si8 la8 sol!8 fad16 sol16 la8 sol8 
  % 40 : ================================
  \staffdown fad4 mi8 fad16 sol16 fad2 
  mi8 fad8 sol4 ~ sol8 fad8 sol8 fad8 
  sol4. fad8 ~ fad8 mi8 fa8 mi8 
  re8 do16 re16 mi8 re8 do8 do8\rest do4\rest 
  \staffup si2\rest re8\rest re8 mib8 re8 
  % 45 : ================
  do8 si16 do16 re8 do8 si2_\fermata 
}

tenor = \relative do' { 
  \global
  %  1 :
  \tieDown \stemDown r8 sol8 sol8 la8 si4 la8 si8 
  do8 si8 la4 sol8 sold8 la8 lad8
  si4. la!8 si8 dod8 re4 ~
  re8 do!8 si8 mi8 la,2 ~
  %  5 : ================
  la8 si8 do4 si8 la8 sol4 ~
  sol8 fad8 sol8 sold8 \dotsDown \once \override Staff.NoteCollision #'merge-differently-dotted = ##f la4. \dotsNeutral sol8 
  la8 sol16 fad16 sol4 ~ sol8 fad16 mi16 fad4 
  r8 sol8 sol8 la8 si4 dod8 red8 
  mi8 sol,8 sol8 fad8 mi8 la4 sol8 ~
  % 10 : ================================
  sol8 sol4 fad8 sol8 sol8 [ sol8 fa8 ]
  mi4. mib8 re8 si'8 [ do8 si8 ]
  la8 sol8 fad8 sol8 la8 si8 do4 ~
  do4 si4 mi,4 la4 ~
  la8 sol16 fad16 sol4. fad16 mi16 fad4 ~
  % 15 : ================
  fad4 r8 fad8 sol8 [ sold8 ] la4 ~
  la8 sol!16 fad16 sol4 ~ sol8 fad16 mi16 fad8 si8 
  mi,4. la8 re,4 r16 re'16 mi16 re16 
  do8 si8 la8 si8 do4. si16 la16 
  si8 si8 [ si8 do8 ] re4 \tieUp \once\override Tie #'staff-position = #+14 sol4 ~
  % 20 : ================================
  sol8 \tieDown sol,16 [ la16 ] si8 do16 re16 mi8 re8 re8 [ mi16 re16 ]
  do8 [ si16 la16 si8 sol8 ~ ] sol8 sol16 fad16 mi8 fad16 sol16 
  la8 re4 dod8 re8 re8 [ do8 si8 ]
  la4 fad4 sol8 fad8 mi4 
  % --- page
  re8 do'!8 si8 la8 sold8 la8 si4 
  % 25 : ================
  do4 si4 mi,16 [ fad!16 sol!8 la8 si8 ] 
  do4 mi4 red8 mi8 fad4 ~
  fad8 mi8 re!8 do8 si4 dod4 
  re2 r8 re,8 mi8 fad8 
  sol8 la8 si8 dod8 re8 do8 si4
  % 30 : ================================
  fa8\rest la8 la8 sol8 fad8 si8 la4 
  sol8 la8 si8 la8 ~ la8 fad8 sol8 la8 ~
  la8 sol16 fad16 sol4 ~ sol8 fad8 si4 
  do4 si4 la4 sol8 la8 
  si4 la4 sol2 
  % 35 : ================
  fad8 [ sol8 ] la8 si16 la16 sol8 la8 si4 ~
  si4 lad4 si8 fad8 [ mi8 fad8 ]
  sol8 la16 sol16 fad8 sold8 la8 si16 la16 sol8 la8 
  si8 dod8 re4 dod8 fad,8 [ sol!8 fad8 ] 
  mi8 re16 mi16 fad8 mi8 re4 r4 
  % 40 : ================================
  sol8\rest si8 do8 si8 la8 sol16 la16 si8 la8 
  sol8 [ la8 ] si8 do16 re16 mi8 re8 [ re8 do8 ] 
  re4 mi8 si8 si4. do8 
  sol4 r8 si8 do8 do,8 [ si8 do8 ]
  << {si'4 r4 r8 si8 do8 si8 
      la8 sol16 la16 si8 la8 sol2 } \\
     { re8 mi16 re16 do8 re8 mi8 fa8 [ sol8 fa8 ] 
				% 45 : ================
       mib8 re16 mib16 fa8 mib8 \once \override Script #'padding = # 1 re2_\fermata}
   >>
 
}

pedale = \relative do {
  \global
  \clef bass
  % 1 :
  R1*3
  r2 r8 re8 re8 mi8 
  %  5 : ================
  fad4 mi8 fad8 sol8 fad8 mi4 
  re8 red8 mi8 mid8 fad4. mi8 
  fad8 si,8 mi4 ~ mi8 la,8 re4 
  sol,8 r8 r4 r8 sol'8 sol8 fad8 
  mi8. [ re16 do8 re8 ] la8 fad8 sol8 si8 
  % 10 : ================================
  do8 la8 re8 re,8 mi8 [ mi'8 ] si8 la16 si16 
  do2 sol8 r8 r4 
  R1 
  r8 re'8 mi8 re8 do8 si8 la8 si8 
  do4. si16 lad16 si2 ~
  % 15 : ================
  si4 r4 r8 si8 la8 si8 
  \stemUp do8 re8 mi8 re8  dod8 la8 re4 ~
  \stemNeutral re8 dod16 si16 dod8 do8 ~ do8 si16 la16 si8 sol8 
  la8 si16 do16 re4 ~ re8 mi8 fad8 re8 
  sol2 ~ sol8 sol8 [ sol8 fa8 ] 
  % 20 : ================================
  mi8 mi8 [ mi8 re8 ] do8 do8 [ do8 si8 ] 
  la8 [ re8 ] si8 [ mi8 ] dod8 la16 si16 dod8 la8 
  fad'8 [ re8 ] la'8 [ la,8 ] re8 r8 r4 
  R1 
  r2 r8 re8 do!8 si8 
  % 25 : ================
  la4 sold4 la8 sol8 fad4 
  mi8 [ la8 ] sol8 [ do8 ] si8 dod8 red8 si8 
  mi4 fad4 r8 sol8 fad8 mi8 
  re4 si4 do!8 si8 la4 
  sol8 fad8 mi8 la8 re,8 re'8 [ re8 mi8 ] 
  % 30 : ================================
  \stemDown fad8 re8 sol8 sol,8 re'8 \stemNeutral re8 [ re8 dod8 ] 
  si8 [ la8 ] sol8 la16 sol16 fad8 re8 mi8 fad8 
  sol8 la8 si8 dod8 \stemUp re4 r4 \stemNeutral 
  R1 
  r8 do8 re8 do8 si8 la16 si16 do8 si8 
  % 35 : ================
  la4 si4 mi,4 mi'8 re!8 
  dod4 fad,8 fad'8 si,8 la!8 sol8 la8 
  mi4 si'4 la4 r4 
  r4 si4 la4 si4 
  dod4 re8 dod8 si4 dod4 
  % 40 : ================================
  re8 red8 mi2 red4 
  mi8 mi8 [ mi8 re!8 ] do8 re16 do16 si8 la8 
  sol8 si8 dod8 red8 mi,8 mi'8 re8 do8 
  si8 la16 si16 do8 sol8 mi8 fad8 sol8 la8 
  si8 sol8 la8 si8 do2 ~
  % 45 : ================
  do2 \once \override Script #'padding = # 1 sol2_\fermata
  
}

\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  headsep = 1\mm
  aftertitlespace = 1\mm
  indent = 1\cm
  bottommargin = 4\mm 
  topmargin = 4\mm
}

\score {
  {
      \context PianoStaff <<
	\context Staff = "dessus" <<
	  \global
	  \clef violin 
	  \set Staff.midiInstrument = "pan flute"
	  \choral
	>>
	\context Staff = "basse" <<
	  \global    
	  \clef bass
	  \set Staff.midiInstrument = "pan flute"
	  \alto
	  \tenor
	>> 
	\context Staff = "pedale" <<
	  \global
	  %\set Staff.minimumVerticalExtent = #'(-2 . 8)
	  \clef bass
	  \set Staff.midiInstrument = "pan flute"
	  \pedale
	>>
      >>
   
  }
  \layout {}
  \midi{ \tempo 8 = 80  }
}