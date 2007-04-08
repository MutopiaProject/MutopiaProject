% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.8.1"
\include "italiano.ly" 
%% Version 1
%% 
\header{
  title = \markup {\center-align { \medium " Durch Adams Fall ist ganz verderbt." \fontsize #-1  \medium "Par la chute d'Adam." \fontsize #-1  \medium "Through Adam's fall." " "} }
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Johann Sebastian Bach (1685-1750)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Bach-Gesellschaft Edition, OrgelWerke 1893"
    opus = "BWV 637"
    lastupdated = "2006-06-04"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "Durch Adams Fall ist ganz verderbt"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"
    %tagline= ""
 footer = "Mutopia-2006/06/05-775"
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
  \key la \minor
  \time 4/4
}

choral = \relative do'' {
  % choral au soprano
  \global \halsup
  \partial 2*1 \once \override Rest #'extra-offset = #'( 0.0 . +1.0 ) r4 la4 |
  %  1 :
  \repeat volta 2 {
    la4 la4 sol4 la4 |
    fa4 mi4 re4^\fermata la'4 
    do4 re4 la4 si4 
  }
  \alternative {
    { do2 \once\override Voice.TextScript #'extra-offset = #'(-1.5 . -1.0) la4^\markup{"(" \hspace #0.5 \musicglyph #"scripts.ufermata" \hspace #-1 ")"} la4 }
    %%  5 :
    { do2 \once\override Voice.TextScript #'extra-offset = #'(-1.5 . -1.0) la4^\markup{"(" \hspace #0.5 \musicglyph #"scripts.ufermata" \hspace #-1 ")"} do4 }
  }
  %%  6 :
  do4 do8. sib16 la!4 fa8 sol8 
  la4 sol4 fa4^\fermata la4 
  la4 la4 sol4 la4 
  fa4 mi4 re4^\fermata la'4 
  %% 10 :
  la4 sol4 la4 si!4 
  do4 la4 sol4^\fermata re'4 
  mi4 re4 la4 do4 
  \partial 2.  << { si8 \tieDown \once \override NoteColumn #'force-hshift = #2.0 la8 ~ la8 sold!8 la4^\fermata } \\ {s8 \stemDown la8 s8 s8 s4 } \\ { s4\stemUp \once \override NoteColumn #'force-hshift = #-1.0 si4 \stemDown la4 } >> \bar "|."
}

alto = \relative do'' {
  \global \halsdown
  \clef "violin"
  \partial 2*1  \once \override Rest #'extra-offset = #'( 0.0 . -2.0 ) r8 la16 sol16 fad16 mi16 fa8 | 
  %%  1 :
  \repeat volta 2 {
    mi8 red16 mi16 fad8 mi16 fad16 sol8 dod,16 re!16 mi8 re16 mi16 |
    fa16 dod16 re8 ~ re8 [ dod!8 ] re8 la'16 sol16 fad16 mi16 fa!8 
    mi8 fa8 ~ fa16 re16 sold8 la16 mi16 re16 dod!16 re16 si16 mi8 ~ 
  } 
  \alternative {
    { mi16 re16 mi16 fa16 sol8. \once\override Tie #'staff-position = #-4.5 sol16 ~ sol16 sib16 la16 sol16 fad16 mi16 fa16 sol16 }
    %%  5 :
    {  mi16 \repeatTie re16 mi16 fa16 sol8. \once\override Tie #'staff-position = #-4.5 sol16 ~ sol16 mi16 fa8  mi8\rest mi16\rest sib'16 
    }
  }
  %%  6 :
  la16 sol16 lab8 sol4 ~ sol16 sol16 fa16 mi16 re4 
  mi8 la,16 si16 do16 si16 dod8 re16 la16 la'16 sol16 fad16 mi16 fa8 
  mi8 red16 mi16 fad8 mi16 fad16 sol8 dod,16 re16 mi8 re16 mi16 
  fa16 dod16 re8 ~ re8 dod!8 re4 mi8. mi16 
  %% 10 :
  fa16 sol16 fad8 sol8 do,16 re16 mib8 re16 do16 si!16 \staffdown do16 si16 la16 
  sol8 fad16 sol16 la16 do16 si16 do16 si4 \staffup r8 r16 fa'!16 
  mi16 re16 mi16 fad16 sol16 la16 sold8 la16 si16 la16 sold!16 fad!16 mi16 re!8 
  \partial 2. mi8 fad!8 mi4 mi4_\fermata

}

tenor = \relative do' {
  \global
  \partial 4*2 r4 r8 r16 re16 |
  \repeat volta 2 {
    dod16 si16 la16 sol16 fad16 si,16 si'8 mi,16 fad16 sol8 ~ sol16 sol16 fa16 mi16 
    re8. do'!16 si16 sib16 la16 sol16 fa16 sol16 fa16 mi16 re16 la'16 re16 sold,16 
    la16 do16 si16 la16 sold16 fa!16 mi16 re16 do16 dod16 re16 mi16 fa8 mi16 re16 
    
  }
  \alternative {
    {la'8 sol16 fa16 mi16 sol16 do8 ~ do8 dod8 re16 la16 re8 }
    {la8 sol16 fa16 mi16 sol16 do8 ~ do8 do16 re16 mib16 fa16 mi8}
  }
  %%  6 :
  fa8. fa16 ~ fa16 fa16 mi16 re16 do16 si!16 dod8 re16 lab16 sol16 fa16 
  do'16 la!16 sol16 fa16 mi16 sol16 fa16 mi16 re4 r8 r16 re'16 
  dod16 si16 la16 sol16 fad16 si,16 si'8 mi,16 fad16 sol8 ~ sol16 sol16 fa16 mi16 
  re8. do'!16 si16 sib16 la16 sol16 fad16 sold16 la16 si16 do!16 re16 dod8 
  %% 10 :
  re8. mib16 re16 sib16 la16 sol16 fa!16 sol16 fad8 ~ fad16 la16 sol16 fad16 
  mi16 re16 do16 re16 mib8 re8 ~ re16 fad!16 sol16 la16 sib16 do16 si8 
  do8 do,8 si16 fa'!16 mi16 re16 do16 mi16 fad16 sold16 la16 si16 sold16 la16 
  \partial 4*3 si16 do32 re32 do16 si16 do16 si16 dod16 re16 dod4_\fermata
}


basse = \relative do' { 
  \global
  \clef "bass"
  \partial 4*2 r2 |
  %  1 :
  \repeat volta 2 {
    r8 do!8 red,4 r8 sib'8 dod,4 
    r8 fa8 sold,8 la8 re,4 r4 
    r8 la''8 si,4 r8 fa'!8 sold,!4 
  }
  \alternative {
    { r8 sib8 do,8 mi8 fa4 r4}
    { r8 sib8 do,8 mi8 fa4 r4 }
  }
  %%  6 :
  r8 si'!8 do,4 r8 la'8 si,!4 
  r8 re8 mi,8 la8 re,4 r4 
  r8 do''!8 red,4 r8 sib'8 dod,4 
  r8 fa8 sold,8 la8 re,4 r4 
  %% 10 :
  r8 la''8 sib,4 r8 do8 red,4 
  r8 mib'8 fad,4 sol4 r4 
  r2 r8 do'8 red,8 fa!8 [
  \partial 2.  sold,8 ] red'!8 mi,4 la4_\fermata
}

choralmidi = \relative do'' {
  % choral au soprano
  \global 
  \partial 2*1 r4 la8. r16
  %  1 :
  \repeat volta 2 {
    la8. r16 la4 sol4 la4 |
    fa4 mi4 re8. r16 la'4 
    do4 re4 la4 si4 
  }
  \alternative {
    { do2 la16 r16*3 la8. r16 }
    %%  5 :
    { do2 la8. r16 do4 }
  }
  %%  6 :
  do8. r16 do8. sib16 la!4 fa8 sol8 
  la4 sol4 fa8. r16 la8. r16 
  la8. r16 la4 sol4 la4 
  fa4 mi4 re8. r16 la'8. r16 
  %% 10 :
  la4 sol4 la4 si!4 
  do4 la4 sol8. r16 re'4 
  mi4 re4 la16 r16 la8 do4 
  \partial 2.  << { si8  la8 ~ la8 sold!8 la4 } \\ {s8 la8 s8 s8 s4 } \\ { s4 si4 la4 } >> \bar "|."
}

altomidi = \relative do'' {
  \global \halsdown
  \clef "violin"
  \partial 2*1 r8 la16 sol16 fad16 mi16 fa8 | 
  %  1 :
  \repeat volta 2 {
    mi8 red16 mi16 fad8 mi16 fad16 sol8 dod,16 re!16 mi8 re16 mi16 |
    fa16 dod16 re8 ~ re8 [ dod!8 ] re8 la'16 sol16 fad16 mi16 fa!8 
    mi8 fa8 ~ fa16 re16 sold8 la16 mi16 re16 dod!16 re16 si16 mi8 ~
  } 
  \alternative {
    { mi16 re16 mi16 fa16 sol8. sol16 ~ sol16 sib16 la16 sol16 fad16 mi16 fa16 sol16 }
    %%  5 :
    { mi16 re16 mi16 fa16 sol8. sol16 ~ sol16 mi16 fa8 r8 r16 sib16 }
  }
  %%  6 :
  la16 sol16 lab8 sol4 r16 sol16 fa16 mi16 re4 
  mi8 r16 si16 do16 si16 dod8 re16 la16 la'16 sol16 fad16 mi16 fa8 
  mi8 red16 mi16 fad8 mi16 fad16 sol8 dod,16 re16 mi8 re16 mi16 
  fa16 dod16 re8 ~ re8 dod8 re4 mi8 r16 mi16 
  %% 10 :
  fa16 sol16 fad8 sol8 do,16 re16 mib8 re16 do16 si!16 \staffdown do16 si16 la16 
  sol8 fad16 sol16 la16 do16 si16 do16 si4 \staffup r8 r16 fa'!16 
  mi16 re16 mi16 fad16 sol16 la16 sold8 la16 si16 la16 sold!16 fad!16 mi16 re!8 
  \partial 2. mi8 fad!8 mi8. r16 mi4

}

tenormidi = \relative do' {
  \global
  \partial 4*2 r4 r8 r16 re16 |
  %%  1 :
  \repeat volta 2 {
    dod16 si16 la16 sol16 fad16 si,16 si'8 mi,16 fad16 sol8 r16 sol16 fa16 mi16 
    re8. do'!16 si16 sib16 la16 sol16 fa16 sol16 fa16 mi16 re16 la'16 re16 sold,16 
    la16 do16 si16 la16 sold16 fa!16 mi16 re16 do16 dod16 re16 mi16 fa8 mi16 re16 
    
  }
  \alternative {
    {la'8 sol!16 fa16 mi16 sol16 do8 ~ do8 dod8 re16 la16 re8 }
    %%  5 :
    {la8 sol!16 fa16 mi16 sol16 do8 ~ do8 do16 re16 mib16 fa16 mi8}
  }
  %%  6 :
  fa8 r16 fa16 r16 fa16 mi16 re16 do16 si!16 dod8 re16 lab16 sol16 fa16 
  do'16 << { la!8 } \\ { r16 sol16 } >> fa16 mi16 sol16 fa16 mi16 re4 r8 r16 re'16 
  dod16 si16 la16 sol16 fad16 si,16 si'8 mi,16 fad16 sol8 r16 sol16 fa16 mi16 
  re8. do'!16 si16 sib16 la16 sol16 fad16 sold16 la16 si16 do!16 re16 dod8 
  %% 10 :
  re8. mib16 re16 sib16 la16 sol16 fa!16 sol16 fad8 ~ fad16 la16 sol16 fad16 
  mi16 re16 do16 re16 mib8 re8 ~ re16 fad16 sol16 la16 sib16 do16 si8 
  do8 do,8 si16 fa'!16 mi16 re16 do16 mi16 fad16 sold16 la16 si16 sold16 la16 
  \partial 4*3 si16 do32 re32 do16 si16 do16 si16 dod16 re16 dod4
}

\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  headsep = 1\mm
  %aftertitlespace = 1\mm
  indent = 1\cm
  bottommargin = 4\mm 
  topmargin = 1\mm
}

\score{
  \new PianoStaff 
  <<
    \set PianoStaff.systemStartDelimiterHierarchy = #'(SystemStartBar (SystemStartBrace a b ))
    \new Staff = "dessus" << 
      \choral
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
  \unfoldRepeats {
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
      \partial 2*1 s2
      \repeat volta 2 {
	s1*3
      }
      \alternative {
	{ s1 }
	{ s1 }
      }
      s1*7
      \partial 4*3 
      s4 \tempo 8 = 60 s4 \tempo 8 = 40 s8 \tempo 8 = 20 s8
    }
  >>
}
  \midi{ \tempo 8 = 70 }

}
