% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.8.1"
\include "italiano.ly" 
%% Version 1
%% "Vers qui irions-nous, Seigneur ? C'est toi qui a les paroles de la vie éternelle."
%% 
\header{
    title = \markup {\center-align { "In dich hab' ich gehoffet, Herr."  \fontsize #-1 "In te domine, speravi." \fontsize #-1 "En Toi j'ai espéré, Seigneur." \fontsize #-1 "In Thee, O Lord, do I put my trust." "  "} }
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Johann Sebastian Bach (1685-1750)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Bach-Gesellschaft Edition, OrgelWerke 1893"
    opus = "BWV 640"
    lastupdated = "2006-06-01"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "In dich hab' ich gehoffet, Herr"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"
    %tagline= ""
 footer = "Mutopia-2006/06/05-774"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

%#(set-default-paper-size "a4" 'landscape)
%#(set-global-staff-size 18)

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
  \key mi \minor
  \time 4/4
}

choral = \relative do'{
  \partial 4 mi4 
  %%  1 :
  mi4 si'4 fad8. sol16 la4 ~
  la8 sol8 fad4 mi4^\fermata mi4 
  si'4 dod4 re4 dod4 ~
  dod8 [ si8 ] ~ si8 lad8 si4^\fermata si4 
  %%  5 :
  mi4 dod4 re4 si4 
  la4 sol4 fad4^\fermata fad4 
  mi4 si'4 fad8. sol16 la4 
  sol4 fad4 mi4^\fermata mi4 
  red4 mi4 fad8. la!16 si8 la8 
  %% 10 :
  sol4 fad4 mi4^\fermata ~ mi4 
}

alto = \relative do' {
  \global
  \partial 4 \staffdown \once \override Rest #'extra-offset = #'( 0.0 . +5.0 ) r4
  %%  1 :
  r8 si16 fad16 sol16 si16 mi,8 \staffup r8 si'16 mi16 red4 ~
  red16 si16 mi16 si16 do8 si16 fad16 sol8 \once \override Rest #'extra-offset = #'( 0.0 . -3.0 ) r8 \staffdown r4 
  r8 re'16 sold,16 lad16 dod16 dod8 si16 \staffup re16 fad16 si16 lad4 ~
  lad16 fad16 sold8 fad8 fad16 dod16 red4 \staffdown r8 si16 fad16 
  %%  5 :
  sol16 \staffup sol'16 si16 mi,16 la16 sol16 fad16 mi16 re16 la'16 fad8 ~ fad16 si,16 mi8 ~
  mi8. red16 mi16 si16 dod8 ~ dod16 fad,16 si8 ~ si16 mi16 red!8 
  mi8 \staffdown si16 fad16 sol16 si16 mi,8 \staffup r8 si'16 mi16 red4 
  si8 mi16 si16 do8 si16 [ fad16 ] sol8 \once \override Rest #'extra-offset = #'( 0.0 . -3.0) r8 si16 fad16 sol8 
  fad16 si16 la8 si8. lad16 si16 red16 fad8 ~ fad16 mi8 red!16 
  %% 10 :
  mi16 red16 mi8 ~ mi8 red8 \once \override Rest #'extra-offset = #'( 0.0 . -1.0) r16 si8. ~ si4 
}


tenor = \relative do'  { 
  \global
  \clef "bass"
  \partial 4 r8 si16 fad
  %%  1 :
  sol8 sol16 red16 mi8 si'8 ~ si16 fad16 red!16 mi16 fad16 si,16 si'16 fad16 
  sol16 red16 mi8 ~ mi16 la16 red,!8 mi8 si'16 [ fad16 ] sol16 si16 mi,8 
  fad4. sol!8 fad16 si16 re16 si16 fad'16 dod!16 mi8 ~
  mi8 re8  dod16 fad,16 mi'!8 r8 si16 fad16 sol!8 sol16 red16
  %%  5 : 
  mi8 sol8 ~ sol16 mi16 la8 ~ la8 si16 fad16 sol4 ~
  sol16 do16 fad,8 sol16 red16 mi8 ~ mi8 red!16 dod16 red16 sol16 fad16 do'!16 
  si16 fad16 sol16 red16 mi8 si'8 ~ si16 fad16 red!16 mi16 fad16 si,16 la'16 fad16 
  sol16 red16 mi8 ~ mi16 la16 red,!8 mi8 si'16 [ fad16 ] sol16 red!16 mi8 
  r8 do'16 fad,16 sol16 red16 mi8 r8 red'8 si16 sol16 do!16 si16 ~
  %% 10 :
  si16 sol16 mi16 si'16 do16 la16 fad16 si16 << { r8 sold!8 ~ sold4 } \\ { sold!8. si,16 \once\override Voice.TextScript #'extra-offset = #'(0.5 . 0.0) mi4_\markup{\musicglyph #"scripts.dfermata"} } >>

}

basse = \relative do' {
  \global
  \partial 4 r4
  %%  1 :
  r4 r8 sol16 dod,16 red8 si8 r4 
  r8 do16 sol16 la8 si8 mi,4 r8 sol'16 dod,16 
  re8 si8 r8 mi16 lad,16 si8 fad8 r8 fad'16 dod16 
  re16 si16 si'16 mid,16 fad8 fad,8 si4 r4 
  %%  5 : 
  r4 r8 la'16 mi16 fad8 re8 r8 mi16 si16 
  do8 la8 r8 mi'16 lad,16 si4 r8 si16 fad16 
  sol8 mi8 r8 sol'16 dod,16 red8 si8 r8 fad'16 si,16 
  mi16 si16 do16 sol16 la8 si8 mi,4 r8 mi'16 lad,16 
  si8 fad8 r8 sol'16 dod,16 red16 si16 si'16 fad16 sol16 mi16 fad16 si,16 
  %% 10 :
  mi16 si16 do16 sol16 la16 fad16 si8 \once\override Script #'padding = #0.7  mi,2_\fermata
 \bar "|."
}

choralmidi = \relative do'{
  \partial 4 mi8. r16 
  %%  1 :
  mi4 si'4 fad8. sol16 la4 ~
  la8 sol8 fad4 mi8. r16 mi4 
  si'4 dod4 re4 dod4 ~
  dod8 si8 ~ si8 lad8 si8. r16 si4 
  %%  5 :
  mi4 dod4 re4 si4 
  la4 sol4 fad8. r16 fad4 
  mi4 si'4 fad8. sol16 la4 
  sol4 fad4 mi8. r16 mi4 
  red4 mi4 fad8. la!16 si8 la8 
  %% 10 :
  sol4 fad4 mi4^\fermata ~ mi4 
}

altomidi = \relative do' {
  \global
  \partial 4 \staffdown r4
  %%  1 :
  r8 si16 fad16 sol16 si32 r32 mi,8 \staffup r8 si'16 mi16 red4 ~
  red16 si16 mi16 si16 do8 si16 fad16 sol8 r8 \staffdown r4 
  r8 re'16 sold,16 lad16 dod32 r32 dod8 si8 \staffup  fad'16 si16 lad4 ~
  lad16 fad16 sold8 fad16 r16 fad16 dod16 red4 \staffdown r8 si16 fad16 
  %%  5 :
  sol16 \staffup sol'16 si16 mi,16 la16 sol16 fad16 mi16 re16 la'16 fad8 ~ fad16 si,16 mi8 ~
  mi8. red16 mi16 si16 dod8 ~ dod16 fad,16 si8 ~ si16 mi16 red!8 
  mi8 \staffdown si16 fad16 sol16 si32 s32 mi,8 \staffup r8 si'16 mi16 red4 
  si8 mi16 si16 do8 si16 [ fad16 ] sol8 r8 si16 fad16 sol8 
  fad16 si16 la8 si8. lad16 si16 s16 fad'8 ~ fad16 mi8 red!16 
  %% 10 :
  mi16 red16 mi8 ~ mi8 red8 r16 si8. ~ si4 
}


tenormidi = \relative do'  { 
  \global
  \clef "bass"
  \partial 4 r8 si16 fad
  %%  1 :
  sol16 r16 sol16 red16 mi8 si'8 ~ si16 fad16 red!16 mi16 fad16 si,16 si'16 fad16 
  sol16 red16 mi8 ~ mi16 la16 red,!8 mi8 si'16 [ fad16 ] sol16 si16 mi,8 
  fad4. sol!8 fad16 re'8 si16 fad'16 dod!16 mi8 ~
  mi8 re8  dod16 fad,16 mi'!8 r8 si16 fad16 sol!8 sol16 red16
  %%  5 : 
  mi8 sol8 ~ sol16 mi16 la8 ~ la8 si16 fad16 sol4 ~
  sol16 do16 fad,8 sol16 red16 mi8 ~ mi8 red!16 dod16 red16 sol16 fad16 do'!16 
  si16 fad16 sol16 red16 mi8 si'8 ~ si16 fad16 red!16 mi16 fad16 si,16 la'16 fad16 
  sol16 red16 mi8 ~ mi16 la16 red,!8 mi8 si'16 [ fad16 ] sol16 red!16 mi8 
  r8 do'16 fad,16 sol16 red16 mi8 r16 red'16 ~ red8 si16 sol16 do!16 si16 ~
  %% 10 :
  si16 sol16 mi16 si'16 do16 la16 fad16 si16 << { r8 sold8 ~ sold4 } \\ { sold16 r8 si,16 mi4_\fermata} >>

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
      \choral \\
      \alto 
    >>
    \new Staff = "basse" { 
      \clef "bass" 
      \tenor
    }
    \new Staff = "pedale" {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-5 . -10)
      \clef "bass"
      \basse
    }
  >>

  \layout{
    
  }
}




\score { 
  <<
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \choralmidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \choralmidi
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
      \set Staff.midiInstrument = "pan flute"
      \basse
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \basse
    }
    \new Staff { % tempo staff
      \partial 4 s4
      s1*9
      s4 \tempo 8 = 60 s4 \tempo 8 = 40 s4 \tempo 8 = 30 s4
    }
  >>
  
  \midi{ \tempo 8 = 66 }

}
