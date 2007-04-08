% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.8.1"
\include "italiano.ly" 
%% Version 1
%% "Vers qui irions-nous, Seigneur ? C'est toi qui a les paroles de la vie éternelle."
%% 
\header{
    title = \markup {\center-align { "Von Gott will ich nicht lassen." \small "De Dieu, je ne veux pas me séparer." "  "} }
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Johann Sebastian Bach (1685-1750)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Bach-Gesellschaft Edition, OrgelWerke 1893"
    opus = "BWV 658"
    lastupdated = "2006-04-09"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "Von Gott will ich nicht lassen"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"
    %tagline= ""
 footer = "Mutopia-2006/05/07-755"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

%#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

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
showTripletNumber = { \set tupletNumberFormatFunction = #denominator-tuplet-formatter }
staffdown = { \change Staff = "basse" \halsup }
staffup = { \change Staff = "dessus" \halsdown }
std = { \change Staff = "basse" }
stu = { \change Staff = "dessus" }


global = {
  \key do \minor
  \time 4/4
}

soprano = \relative do'{
  \partial 8 do8
  %  1 :
  \repeat volta 2 {
    | fa8. sol32 lab32 sol8.^\prall fa32 sol32 lab4 sib8 lab8 
    | sol16 [ la32 si32 do16 re32 mib32 ] fa16 re16 sol,16 fa'16 mib4 la,16\rest fa32 [ sol32 lab16 sib32 do32 ] 
    | reb4 ~ reb16 [ mib,32 fa32 sol16 lab32 sib32 ] do2 ~
    | do4. sib8 ~ sib16 [ do32 sib32 lab16 sib32 do32 ] reb16 sib16 sol16 do16 
  %  5 :
    | lab8 [ fa8 ] ~ fa8 mi8 fa2 
    | fa'16\rest la,32 [ si32 do16 re32 mib32 ] fa16 re16 si16 re16 ~ re8 reb8 do4 ~
    | do16 [ fa,32 sol!32 lab16 sib32 do32 ] reb4 ~ reb16 [ sib32 lab32 sol16 lab32 sib32 ] mi,16 sol16 do,16 mi16 
    | fa8 re'8\rest fa16\rest do32 [ re32 mi16 fa32 sol32 ] lab8 [ sol8 ] ~ sol8. fa16 ~
    | fa16 [ mi32 re32 mi16 sol16 ] ~ sol16 [ do,32 reb32 mib16 fa32 solb32 ] solb16 fa16 fa16 mib16 mib16 [ reb!16 reb8 ] ~
  % 10 :
    | reb16 [ sol,32 lab32 sib16 do32 reb32 ] ~ reb16 sib16 sol16 do16 lab8 r8 re16\rest sib16 fa16 lab16 
  }
  \alternative {
    { | sol8 re'8\rest re16\rest fa,16 si,16 re16 mi!4 re'16\rest do,8. }
    { | sol'8 re'8\rest re16\rest fa,16 si,16 re16 mi!4 re'16\rest sol,32 [ lab32 sib16 do32 reb32 ] }
  }
  do2 sib8. mib,16 lab8. lab16 |
  sol8. do,16 fa8. fa16 mi16 [ fa32 sol32 lab16 sib32 do32 ] reb16 sib16 sol16 do16 |
  % 15 :
  lab4 ~ lab8 [ solb8 ] ~ solb8 [ fa8 ] ~ fa8 mib8 ~
  mib16 [ fa32 sol!32 lab16 sib32 do32 ] reb!16 lab16 fa16 reb'16 do16 [ lab32 sib32 do16 reb32 mib32 ] fa16 reb16 sib16 sol'16 
  \stemDown lab4 ~ lab16 fa16 reb16 sib'16 do4 ~ do16 [ re,!32 mib32 fa16 sol32 lab32 ] |
  \stemUp sib4 ~ sib16 [ do,32 re32 mib16 fa32 sol32 ] lab4 ~ lab16 [ sib,32 do32 re16 mib32 fa32 ]
  sol16 mib16 sib16 sol'16 lab,16 sol'16 lab,16 fa'16 sib,16 [ sol32 lab32 sib16 do32 reb32 ] mib16 sib16 mib,16 reb'16
  % 20 : 
  do4 ~ do8 [ sib8 ] ~ sib8 [ sol'8 ] ~ sol8 fa16 mib16 
  fa16 [ sib,32 do32 re16 mib32 fa32 ] sol16 mib16 sib16 re16 mib8 re8\rest re4\rest 
  re16\rest fa,32 [ sol32 lab16 sib32 do32 ] reb16 sib16 sol16 do16 lab4 re4\rest 
  re16\rest si!32 [ do32 re16 mib32 fa32 ] sol4 ~ sol8. mib16 fa8. re16 |
  sol16 [ do,32 re32 mi!16 fa32 sol32 ] lab16 fa16 reb16 fa16 sib,16 [ sol32 lab32 sib16 do32 reb32 ] do8. sib16 
  % 25 :
  la8 [ do8 ] ~ do8 [ sib8 ] ~ sib16. [ sol32 ] la!16 [ sib32 do32 ] reb!16 [ sib32 do32 ] reb16 fa32 mi!32 |
%%$  << 
%%$    { fa2 fa2 mi!2 mi4. mi8 fa1^\fermata } 
%%$    \\
%%$    { r8 reb!4 reb4 reb4 reb8 ~ reb8 reb!4 reb4 reb4. do1 }
%%$  >>
  s1 s1  
  
}

alto = \relative do' {
  \global
 
  \partial 8 fa,8\rest 
  %  1 :
  \repeat volta 2 {
    | la2\rest la16\rest lab32 [ sib32 do16 re!32 mib32 ] fa16 \staffdown sib,16 fa16 \staffup re'16 ~
    | re8 \staffdown do4 si8 do4 r4 \staffup
    | mi2\rest r16 re!32 [ mi!32 fa16 sol32 lab32 ] sib16 sol16 do,16 sib'16 
    | lab8 sol8 fa8 sol8 ~ sol8 fa4 mi8 
    %  5 :
    fa16 [ \staffdown fa,32 sol32 lab16 sib32 do32 ] \staffup reb16 sib16 sol16 do16 fa,4 si16\rest sib32 [ do32 re!16 mib!32 fa32 ] 
    | sol2 ~ sol16 [ mib32 fa32 sol16 lab!32 sib!32 ] do16 lab16 mib16 solb16 
    fa16 si,16\rest si8\rest r16 sib'16 fa16 lab16 sol!8 si,8\rest sol4\rest 
    | si16\rest do32 [ re32 mi!16 fa32 sol32 ] lab8 r8 r16 do8 [ sib16 ] ~ sib16 lab32 sol32 lab8 
    sol4 lab8 r8 do4 ~ do8 [ sib16 lab!16 ] |  
    % 10 :
    sib8 mi,8\rest mi!4 si16\rest fa'32 [ sol32 lab16 sib32 do32 ] reb,8 si8\rest |
  } 
  \alternative {
    { si16\rest do32 [ re!32 mi16 fa32 sol32 ] lab,8 mi8\rest la16\rest sol32 [ lab32 sib!16 do32 reb32 ] \staffdown mi,!16 \staffup do'16 \staffdown sol16 sib16 | }
    { \staffup si16\rest do32 [ re!32 mi16 fa32 sol32 ] lab,8 mi8\rest la16\rest sol32 [ lab32 sib!16 do32 reb32 ] \staffdown mi,!16 do'16 sol16 sib16 \staffup |}
  } 
  \staffdown la16 [ \staffup  do32 reb!32 mib16 fa32 solb!32 ] fa8 [ reb8 ] ~ reb16 [ reb16 do8 ] ~ do16 [ do16 \staffdown sib8 ] ~ 
  sib16 [ sib16 lab8 ] ~ lab16 [ lab16 sol8 ] ~ sol8 [ fa8 ] ~ fa8 mi!8 |
  % 15 :
  r16 fa32 [ sol32 lab16 sib32 do32 ] reb16 sib16 mib,16 reb'16 do8 [ \staffup  reb!8 ] ~ reb16 sib16 sol!16 reb'16 
  do8 r8 \staffdown r4 re8\rest lab16 sib32 do32 reb4 ~
  reb16 [ do32 sib32 do16 reb!32 mib32 ] fa16 reb16 sib16 sol'16 lab8 r8 re4\rest |
  \staffup R1 
  R1 
  % 20 :
   r8 lab8 ~ lab8 [ sol16 fa16 ] sol8 [ sib8 ] ~ sib8 lab8 ~
  lab8 \staffdown fa,8 mib8 fa8 r16 mib32 [ fa32 sol16 lab32 sib32 ] do16 sol16 mi!16 sib'16 
  lab8 [ fa8 ~ fa8 mi!8 ] \staffup r16 sol'32 [ fa32 mib!16 re!32 do32 ] re16 [ sib32 do32 re16 mib32 fa32 ] |
  si,!8 si8\rest sol'16\rest mib'16 si!16 re16 sol,8 [ do8 ]~ do8 sib!8 ~ |
  sib8 [ \staffdown  do,!8 ] ~ do8 [ fa8 ] reb!8 re8\rest \staffup r16 sol16 do,8 ~ |
  % 25 :
  do8 [ mib8 ] ~ mib8 [ reb8 ] do16 [ fa8. ] ~ fa16 sib8. ~ \break 
   |
  << 
    { fa'2 fa2 mi!2 mi4. mi8 fa1^\fermata} \\
    { sib,32 [ la!32 sib16. la32 sib16 ] fa32 [ la32 sib16. la32 sib16 ] ~ sib32 [ la32 sib16. la32 sib16 ] fa32 [ la32 sib16. la32 sib16 ] ~ 
      sib32 [ la!32 sib16. la32 sib16 ] sol32 [ la32 sib16. la32 sib16 ] ~
      sib32 [ la32 sib16. la32 sib16 ] sol32 [ la32 sib16. la32 sib16 ] la!1} \\
    { \once \override Rest #'extra-offset = #'( 2.0 . 0.0 ) re8\rest reb!4 reb4 reb4 \once\override Tie #'staff-position = #+5 \tieUp  reb8 ~ reb8 \tieNeutral reb!4 reb4 reb4. do1 }
  >>
   

}


tenor = \relative do  { 
  \global
  \clef "bass"
  \partial 2 r8
  %  1 :
  \repeat volta 2 {
    | \once\override Voice.TextScript #'extra-offset = #'(0.0 . -5.3) r16_\markup{\small "(Pedal 4 Fuss.)"} fa32 [ sol32 lab16 sib32 do32 ] reb16 sib16 mi,16 do'16 fa,8 mib8 re!8 sib8 
    | mib4 re4 si16\rest do32 [ re32 mib16 fa32 sol32 ] lab4 ~
    | lab16 [ sib,32 do32 reb16 mib32 fa32 ] sol4 ~ sol8 fa4 mi!8 
    | fa16 [ fa,32 sol32 lab16 sib32 do32 ] reb16 sib16 fa16 reb'16 mi,!8 [ fa8 ] do8 do'8 
  %  5 :
    | \stemDown reb8 do8 sib8 do8 \stemNeutral r16 do16 fa,16 mib'!16 re!8 sib8 |
    mib8 re16 do16 si!8 sol8 do8 sib8 lab8 lab'8 |
    reb,8 do8 sib8 sib'8 mi,8 re!8 do16 [ do,32 re32 mi!16 fa32 sol32 ] |
    lab8 sol8 fa8 do8 fa16 [ do'32 re32 mi!16 fa32 sol32 ] lab8 fa8 |
    do'16 [ sol16 do,16 re32 mi!32 ] fa8 do16 sib16 la!16 [ fa32 sol!32 la16 sib32 do32 ] reb16 sib16 sol16 sib16 |
    % 10 :
    mi,!8 sol8 do,8 do'8 fa8 fa,8 sib8 reb8 |
  }
  \alternative {
    { mi,!8 [ do8 ] fa8 fa'8 do4 sol4\rest }
    { mi!8 [ do8 ] fa8 fa'8 do4 sol4\rest }
  }
  r4 r16 reb'!32 [ mib32 fa16 sol!32 lab32 ] sol8 lab8 fa8 re!8 
  \halsdown mi!8 [ fa8 ] reb8 [ sib8 ] ~ sib8 lab16 fa16 do'4
  % 15 :
  fa,8 mi8\rest mi4\rest si'16\rest reb!32 [ mib32 fa16 sol32 lab32 ] sib,8 mib8 
  lab,8 solb'!8 fa8 reb!8 lab8 r8 si4\rest 
  si2\rest si16\rest lab'32 [ sib32 do16 re!32 mib32 ] fa4 ~
  fa16 [ sol,32 lab32 sib16 do32 re32 ] mib4 ~ mib16 [ fa,32 sol32 lab16 sib32 do32 ] re16 fa16 sib,16 re16 
  mib16 [ mib,32 fa32 sol16 lab32 sib32 ] do16 lab16 fa16 re'16 \halsup mib,8 reb!8 do8 sib8 
  % 20 :
  lab16 [ fa32 sol32 lab16 sib32 do32 ] reb!16 sib16 sol16 reb'16 mib,!16 [ do'32 re!32 mi!16 fa32 sol32 ] \halsdown lab16 fa16 do16 mib!16 
  re!8 sib8 sol8 sib8 mib,8 [ mib'8 ] mi8 do8 
  fa8 reb8 sib8 do8 \halsup fa8 fa,8 sib8 lab8 
  sol8 fa8 mib8 re8 do16 [ do'32 re32 mib16 fa32 sol32 ] \halsdown lab16 fa16 re16 sol16 
  mi!4 fa2 mi8 \tieUp mib8 ~
  % 25 :
  \stemUp mib16 [ fa,32 sol32 la!16 sib32 do32 ] \halsdown reb16 [ sib32 do32 reb16 fa32 mi!32 ] fa8. [ sol32 la!32 ] sib8 sib,8 
  \stemNeutral fa'8 fa,8 r8 \stemDown fa'8 \stemUp fa8 [ fa,8 ] r8 \stemDown fa'8 
  << 
    {fa8 fa,8 mi'8\rest \stemDown fa8 \stemUp fa8 [ fa,8 ] mi'8\rest \stemDown fa8 ~ fa1^\fermata } 
    \\
    { s1 fa,1}
  >>

}

choral = \relative do {
  \global
  \partial 8 r8 
  %  1 :
  \repeat volta 2 {
    | R1*3
    | r2 do2 
    | fa4 sol4 lab4 sib4 
    | sol4. fa8 mib4 mib4 
    | fa4 fa4 sol4 sol4 
    | do,2 ~ do4 r4
    | R1*2
  }
  \alternative {
    { R1 }
    { R1 }
  }
  | R1
  | r2 do'2 
  | do4 sib4 lab4 sol4 
  | lab1 
  R1 R1 
  | r2 sol2 
  | lab4 sib4 do4 do4 
  | sib4. lab8 sol4 sol4 
  | lab4 sol4 fa4 fa4 
  | sol4. fa8 mib4 re4
  | do4 fa4 sol4 sol4 
  fa1 ~
  fa1 ~
  fa1 ~
  fa1_\fermata \bar "|."
}

sopranomidi = \relative do'{
  \partial 8 do8
  %  1 :
  \repeat volta 2 {
    | fa8. sol32 lab32 \times 4/5 {sol32 lab32 sol32 lab32 sol32} lab32 sol32 fa32 sol32 lab4 sib8 lab8 
    | sol16 [ la32 si32 do16 re32 mib32 ] fa16 re16 sol,16 fa'16 mib4 la,16\rest fa32 [ sol32 lab16 sib32 do32 ] 
    | reb4 ~ reb16 [ mib,32 fa32 sol16 lab32 sib32 ] do2 ~
    | do4. sib8 ~ sib16 [ do32 sib32 lab16 sib32 do32 ] reb16 sib16 sol16 do16 
  %  5 :
    | lab8 [ fa8 ] ~ fa8 mi8 fa2 
    | fa'16\rest la,32 [ si32 do16 re32 mib32 ] fa16 re16 si16 re16 ~ re8 reb8 do4 ~
    | do16 [ fa,32 sol!32 lab16 sib32 do32 ] reb4 ~ reb16 [ sib32 lab32 sol16 lab32 sib32 ] mi,16 sol16 do,16 mi16 
    | fa8 re'8\rest fa16\rest do32 [ re32 mi16 fa32 sol32 ] lab8 [ sol8 ] ~ sol8. fa16 ~
    | fa16 [ mi32 re32 mi16 sol16 ] ~ sol16 [ do,32 reb32 mib16 fa32 solb32 ] solb16 fa32 r32 fa16 mib32 r32 mib16 [ reb!32 r32 reb8 ] ~
  % 10 :
    | reb16 [ sol,32 lab32 sib16 do32 reb32 ] ~ reb16 sib16 sol16 do16 lab16 r16 r8 re16\rest sib16 fa16 lab16 
  }
  \alternative {
    { | sol8 re'8\rest re16\rest fa,16 si,16 re16 mi!4 re'16\rest do,8. }
    { | sol'8 re'8\rest re16\rest fa,16 si,16 re16 mi!4 re'16\rest sol,32 [ lab32 sib16 do32 reb32 ] }
  }
  do2 sib8. mib,16 lab8 r16 lab16 |
  sol8. do,16 fa8 r16 fa16 mi16 [ fa32 sol32 lab16 sib32 do32 ] reb16 sib16 sol16 do16 |
  % 15 :
  lab4 ~ lab8 [ solb8 ] ~ solb8 [ fa8 ] ~ fa8 mib8 ~
  mib16 [ fa32 sol!32 lab16 sib32 do32 ] reb!16 lab16 fa16 reb'16 do16 [ lab32 sib32 do16 reb32 mib32 ] fa16 reb16 sib16 sol'16 
  \stemDown lab4 ~ lab16 fa16 reb16 sib'16 do4 ~ do16 [ re,!32 mib32 fa16 sol32 lab32 ] |
  \stemUp sib4 ~ sib16 [ do,32 re32 mib16 fa32 sol32 ] lab4 ~ lab16 [ sib,32 do32 re16 mib32 fa32 ]
  sol16 mib16 sib16 sol'16 lab,16 sol'16 lab,16 fa'16 sib,16 [ sol32 lab32 sib16 do32 reb32 ] mib16 sib16 mib,16 reb'16
  % 20 : 
  do4 ~ do8 [ sib8 ] ~ sib8 [ sol'8 ] ~ sol8 fa16 mib16 
  fa16 [ sib,32 do32 re16 mib32 fa32 ] sol16 mib16 sib16 re16 mib8 re8\rest re4\rest 
  re16\rest fa,32 [ sol32 lab16 sib32 do32 ] reb16 sib16 sol16 do16 lab4 re4\rest 
  re16\rest si!32 [ do32 re16 mib32 fa32 ] sol4 ~ sol8. mib16 fa8. re16 |
  sol16 [ do,32 re32 mi!16 fa32 sol32 ] lab16 fa16 reb16 fa16 sib,16 [ sol32 lab32 sib16 do32 reb32 ] do8. sib16 
  % 25 :
  la8 [ do8 ] ~ do8 [ sib8 ] ~ sib16. [ sol32 ] la!16 [ sib32 do32 ] reb!16 [ sib32 do32 ] reb16 fa32 mi!32 |
  << 
    { fa4~fa8. r16 fa2 | mi!4~mi8. r16 mi4~mi16 r16 mi8 | fa1^\fermata } 
    \\
    { r8 reb!8. r16 reb8. r16 reb8. r16 reb8 ~| reb16 r16 reb!8. r16 reb8. r16 reb4 ~ reb16 r16 | do1| }
  >>
  s1 s1  
  
}

altomidi = \relative do' {
  \global
 
  \partial 8 fa,8\rest 
  %  1 :
  \repeat volta 2 {
    | la2\rest la16\rest lab32 [ sib32 do16 re!32 mib32 ] fa16 \staffdown sib,16 fa16 \staffup re'16 ~
    | re8 \staffdown do4 si8 do4 r4 \staffup
    | mi2\rest r16 re!32 [ mi!32 fa16 sol32 lab32 ] sib16 sol16 do,16 sib'16 
    | lab8 sol8 fa8 sol8 ~ sol8 fa4 mi8 
    %  5 :
    fa16 [ \staffdown fa,32 sol32 lab16 sib32 do32 ] \staffup reb16 sib16 sol16 do16 fa,4 si16\rest sib32 [ do32 re!16 mib!32 fa32 ] 
    | sol2 ~ sol16 [ mib32 fa32 sol16 lab!32 sib!32 ] do16 lab16 mib16 solb16 
    fa32 r32 si,16\rest si8\rest r16 sib'16 fa16 lab16 sol!16 r16 si,8\rest sol4\rest 
    | si16\rest do32 [ re32 mi!16 fa32 sol32 ] lab8 r8 r16 do8 [ sib16 ] ~ sib16 lab32 sol32 lab8 
    sol4 lab8 r8 do4 ~ do8 [ sib16 lab!16 ] |  
    % 10 :
    sib16 r16 mi,8\rest mi!4 si16\rest fa'32 [ sol32 lab16 sib32 do32 ] reb,8 si8\rest |
  } 
  \alternative {
    { si16\rest do32 [ re!32 mi16 fa32 sol32 ] lab,8 mi8\rest la16\rest sol32 [ lab32 sib!16 do32 reb32 ] \staffdown mi,!16 \staffup do'16 \staffdown sol16 sib16 | }
    { \staffup si16\rest do32 [ re!32 mi16 fa32 sol32 ] lab,8 mi8\rest la16\rest sol32 [ lab32 sib!16 do32 reb32 ] \staffdown mi,!16 do'16 sol16 sib16 \staffup |}
  } 
  \staffdown la16 [ \staffup  do32 reb!32 mib16 fa32 solb!32 ] fa8 [ reb8 ] ~ reb32 r32 [ reb16 do8 ] ~ do32 r32 [ do16 \staffdown sib8 ] ~ 
  sib32 r32 [ sib16 lab8 ] ~ lab32 r32 [ lab16 sol8 ] ~ sol8 [ fa8 ] ~ fa8 mi!8 |
  % 15 :
  r16 fa32 [ sol32 lab16 sib32 do32 ] reb16 sib16 mib,16 reb'16 do8 [ \staffup  reb!8 ] ~ reb16 sib16 sol!16 reb'16 
  do8 r8 \staffdown r4 re8\rest lab16 sib32 do32 reb4 ~
  reb16 [ do32 sib32 do16 reb!32 mib32 ] fa16 reb16 sib16 sol'16 lab8 r8 re4\rest |
  \staffup R1 
  R1 
  % 20 :
   r8 lab8 ~ lab8 [ sol16 fa16 ] sol8 [ sib8 ] ~ sib8 lab8 ~
  lab8 \staffdown fa,8 mib8 fa8 r16 mib32 [ fa32 sol16 lab32 sib32 ] do16 sol16 mi!16 sib'16 
  lab8 [ fa8 ~ fa8 mi!8 ] \staffup r16 sol'32 [ fa32 mib!16 re!32 do32 ] re16 [ sib32 do32 re16 mib32 fa32 ] |
  si,!8 si8\rest sol'16\rest mib'16 si!16 re16 sol,8 [ do8 ]~ do8 sib!8 ~ |
  sib8 [ \staffdown  do,!8 ] ~ do8 [ fa8 ] reb!8 re8\rest \staffup r16 sol16 do,8 ~ |
  % 25 :
  do8 [ mib8 ] ~ mib8 [ reb8 ] do16 [ fa8. ] ~ fa16 sib8. ~ \break 
   |
    sib,32 [ la!32 sib16. la32 sib16 ] fa32 [ la32 sib16. la32 sib16 ] ~ sib32 [ la32 sib16. la32 sib16 ] fa32 [ la32 sib16. la32 sib16 ] ~ 
      sib32 [ la!32 sib16. la32 sib16 ] sol32 [ la32 sib16. la32 sib16 ] ~
      sib32 [ la32 sib16. la32 sib16 ] sol32 [ la32 sib16. la32 sib16 ] la!1

}

tenormidi = \relative do  { 
  \global
  \clef "bass"
  \partial 2 r8
  %  1 :
  \repeat volta 2 {
    | \once\override Voice.TextScript #'extra-offset = #'(0.0 . -5.3) r16_\markup{\small "(Pedal 4 Fuss.)"} fa32 [ sol32 lab16 sib32 do32 ] reb16 sib16 mi,16 do'16 fa,8 mib8 re!8 sib8 
    | mib4 re4 si16\rest do32 [ re32 mib16 fa32 sol32 ] lab4 ~
    | lab16 [ sib,32 do32 reb16 mib32 fa32 ] sol4 ~ sol8 fa4 mi!8 
    | fa16 [ fa,32 sol32 lab16 sib32 do32 ] reb16 sib16 fa16 reb'16 mi,!8 [ fa8 ] do8 do'8 
  %  5 :
    | \stemDown reb8 do8 sib8 do8 \stemNeutral r16 do16 fa,16 mib'!16 re!8 sib8 |
    mib8 re16 do16 si!8 sol8 do8 sib8 lab8 lab'8 |
    reb,8 do8 sib8 sib'8 mi,8 re!8 do16 [ do,32 re32 mi!16 fa32 sol32 ] |
    lab8 sol8 fa8 do8 fa16 [ do'32 re32 mi!16 fa32 sol32 ] lab8 fa8 |
    do'16 [ sol16 do,16 re32 mi!32 ] fa8 do16 sib16 la!16 [ fa32 sol!32 la16 sib32 do32 ] reb16 sib16 sol16 sib16 |
    % 10 :
    mi,!8 sol8 do,8 do'8 fa8 fa,8 sib8 reb8 |
  }
  \alternative {
    { mi,!8 [ do8 ] fa8 fa'8 do4 sol4\rest }
    { mi!8 [ do8 ] fa8 fa'8 do4 sol4\rest }
  }
  r4 r16 reb'!32 [ mib32 fa16 sol!32 lab32 ] sol8 lab8 fa8 re!8 
  \halsdown mi!8 [ fa8 ] reb8 [ sib8 ] ~ sib8 lab16 fa16 do'4
  % 15 :
  fa,8 mi8\rest mi4\rest si'16\rest reb!32 [ mib32 fa16 sol32 lab32 ] sib,8 mib8 
  lab,8 solb'!8 fa8 reb!8 lab8 r8 si4\rest 
  si2\rest si16\rest lab'32 [ sib32 do16 re!32 mib32 ] fa4 ~
  fa16 [ sol,32 lab32 sib16 do32 re32 ] mib4 ~ mib16 [ fa,32 sol32 lab16 sib32 do32 ] re16 fa16 sib,16 re16 
  mib16 [ mib,32 fa32 sol16 lab32 sib32 ] do16 lab16 fa16 re'16 \halsup mib,8 reb!8 do8 sib8 
  % 20 :
  lab16 [ fa32 sol32 lab16 sib32 do32 ] reb!16 sib16 sol16 reb'16 mib,!16 [ do'32 re!32 mi!16 fa32 sol32 ] \halsdown lab16 fa16 do16 mib!16 
  re!8 sib8 sol8 sib8 mib,8 [ mib'8 ] mi8 do8 
  fa8 reb8 sib8 do8 \halsup fa8 fa,8 sib8 lab8 
  sol8 fa8 mib8 re8 do16 [ do'32 re32 mib16 fa32 sol32 ] \halsdown lab16 fa16 re16 sol16 
  mi!4 fa2 mi8 \tieUp mib8 ~
  % 25 :
  \stemUp mib16 [ fa,32 sol32 la!16 sib32 do32 ] \halsdown reb16 [ sib32 do32 reb16 fa32 mi!32 ] fa8. [ sol32 la!32 ] sib8 sib,8 
  \stemNeutral fa'8 fa,8 r8 \stemDown fa'16 r16 \stemUp fa8 [ fa,8 ] r8 \stemDown fa'16 r16 
  << 
    {fa8 fa,8 mi'8\rest \stemDown fa16 r16 \stemUp fa8 [ fa,8 ] mi'8\rest \stemDown fa8 ~ fa1^\fermata } 
    \\
    { s1 fa,1}
  >>

}

choralmidi = \relative do {
  \global
  \partial 8 r8 
  %  1 :
  \repeat volta 2 {
    | R1*3
    | r2 do2 
    | fa4 sol4 lab4 sib4 
    | sol4. fa8 mib8. r16 mib4 
    | fa8. r16 fa4 sol8. r16 sol4 
    | do,2 ~ do4 r4
    | R1*2
  }
  \alternative {
    { R1 }
    { R1 }
  }
  | R1
  | r2 do'4~do8. r16
  | do4 sib4 lab4 sol4 
  | lab1 
  R1 R1 
  | r2 sol2 
  | lab4 sib4 do8. r16 do4 
  | sib4. lab8 sol8. r16 sol4 
  | lab4 sol4 fa8. r16 fa4 
  | sol4. fa8 mib4 re4
  | do4 fa4 sol8. r16 sol4 
  fa1 ~
  fa1 ~
  fa1 ~
  fa1_\fermata \bar "|."
}

\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  %headsep = 1\mm
  %aftertitlespace = 1\mm
  indent = 1\cm
  bottommargin = 4\mm 
  topmargin = 2\mm
}

\score{
  \new PianoStaff 
  <<
    \set PianoStaff.systemStartDelimiterHierarchy = #'(SystemStartBar (SystemStartBrace a b ))
    \new Staff = "dessus" << 
      \soprano \\
      \alto 
    >>
    \new Staff = "basse" { 
      \clef "bass" 
      \tenor
    }
    \new Staff = "pedale" {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-5 . -10)
      \clef "bass"
      \choral
    }
  >>

  \layout{
  }
}


\score { 
  \unfoldRepeats {
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
      \set Staff.midiInstrument = "bassoon"
      \transpose do do' 
      \choralmidi
    }
    \new Staff { % tempo staff
      \partial 8 s8
      \repeat volta 2 {
	s1*10
      }
      \alternative {
	{ s1 }
	{ s1 }
      }
      s1*13
      s4 \tempo 4 = 58 s4 \tempo 4 = 56 s4 \tempo 4 = 54 s4
      s1 \tempo 4 = 40 s1
    }
  >>
}
  \midi{ \tempo 4 = 60 }

}
