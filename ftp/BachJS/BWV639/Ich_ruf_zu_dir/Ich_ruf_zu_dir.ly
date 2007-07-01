% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.8.1"
\include "italiano.ly" 
%% Version 1
%% 
\header{
    title = \markup {\center-align { \medium "Ich ruf ' zu dir, Herr Jesu Christ." \small\medium "Je crie vers Toi, Seigneur Jésus." \medium\small "Unto Thee I cry, Lord Jesus." " "} }
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Johann Sebastian Bach (1685-1750)"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    source = "Bach-Gesellschaft Edition, OrgelWerke 1893"
    opus = "BWV 639"
    lastupdated = "2006-05-02"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "Ich ruf' zu dir, Herr Jesu Christ"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"
    %tagline= ""
 footer = "Mutopia-2007/07/01-756"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
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

choral = \relative do'' {
  % choral au soprano
  \global
  \partial 4 do4   
  %  1 :
  \repeat volta 2 {
    lab4 sib4 lab8. sol16 fa8. sol16 
    lab16 sib16 lab16 sib16 \once\override Voice.TextScript #'extra-offset = #'(-1 . -0.8) sib8.^\markup{"(" \hspace #0.5 \raise #0.7 \musicglyph #"scripts.prallprall" \hspace #-1 ")"} lab32 sib32 \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.0) do4^\markup{\musicglyph #"scripts.ufermata"} do8. reb!16 
    mib4 \appoggiatura reb16 do8. sib16 lab4 sib8 do8 
  }
  \alternative {
    { reb4 ~ reb16 [ mib32 fa32 \once\override Voice.TextScript #'extra-offset = #'(0.5 . 0.2) reb16^\markup{\musicglyph #"scripts.prall"} do16 ] \once\override Voice.TextScript #'extra-offset = #'(-1.6 . -1.0) do4^\markup{"(" \hspace #0.5 \musicglyph #"scripts.ufermata" \hspace #-1 ")"} do4 }
    { reb4 ~ reb16 [ mib32 fa32 \once\override Voice.TextScript #'extra-offset = #'(0.5 . 0.2) reb16^\markup{\musicglyph #"scripts.prall"} do16 ] \once\override Voice.TextScript #'extra-offset = #'(-1.5 . -1.0) do4^\markup{"(" \hspace #0.5 \musicglyph #"scripts.ufermata" \hspace #-1 ")"} mib4 }
  }
  %  6 :
  fa4 mib8 [ reb32 do32 reb16 ] do8 sib8 lab8 sib8 
  do4 sib4 lab4^\fermata do4 
  do4 do4 sib4 lab4 
  sol2 \once\override Voice.TextScript #'extra-offset = #'(-1.2 . -1.0) fa2^\markup{"(" \hspace #0.5 \musicglyph #"scripts.ufermata" \hspace #-1 ")"} 
  % 10 :
  lab4 sol4 fa2 
  \once\override Voice.TextScript #'extra-offset = #'(-1.3 . -1.0) mib2.^\markup{"(" \hspace #0.5 \musicglyph #"scripts.ufermata" \hspace #-1 ")"} mib4 
  lab4 lab4 sib4 sib4 
  \once\override Voice.TextScript #'extra-offset = #'(-1.5 . -1.0) do2.^\markup{"(" \hspace #0.5 \musicglyph #"scripts.ufermata" \hspace #-1 ")"} reb4 
  do4 sib4 lab4 fa8. sol16 
  % 15 :
  \partial 2. lab4 sol4 fa4^\fermata \bar "|."
}

alto = \relative do' {
  \global
  \clef "bass"
  \partial 2. lab16 ( do16 fa16 mi16 )
  %  1 :
  \repeat volta 2 {
    fa16 ( do16 lab16 fa16 ) sol16 ( sib16 reb!16 do16 ) fa,16 ( lab16 do16 sib16 ) lab16 fa16 lab16 do16 
    \clef "violin" fa16 mi!16 fa16 lab16 sol16 fa16 mi16 fa16 mi!16 ( do16 sol16 sib16 ) lab16 ( do16 fa16 lab16 )
    sol16 ( mib16 lab16 sol16 ) lab16 mib16 fa16 solb16 fa16 ( reb!16 fa16 lab16 ) sol16 ( reb!16 do16 solb'!16 )
  } 
  \alternative {
    { fa16 ( sib,16 reb!16 fa16 ) sib16 ( lab16 sol16 lab16 ) sol16 do,16 mi16 sib16 \clef "bass" lab16 ( do16 fa16 mi!16 )}
    { \clef "violin" fa16 ( sib,16 reb!16 fa16 ) sib16 ( lab16 sol16 lab16 ) sol16 ( sib,16 lab16 fa'16 ) sol,16 ( reb'!16 lab16 do16 )}
  } 
  %  6 :
  lab16 do16 sib16 reb!16 sib16 ( reb16 lab'16 sol16 ) lab16 ( mib16 reb!16 sol16 ) do,16 ( fa16 lab16 sol16 )
  lab16 ( mib16 lab,16 solb'16 ) fa16 ( lab,16 sol!16 reb'!16 ) do16 ( lab16 do16 mib16 ) sol!16 ( do,16 sib16 sol'16 )
  la,16 ( do16 fa16 sol16 ) la!16 ( fa16 mib16 la16 ) reb,!16 sol16 lab16 sol16 do,16 fa16 sol16 fa16 
  reb!16 ( fa16 sol16 fa16 ) mi16 ( sib16 reb!16 do16 ) lab16 ( do16 fa16 mi!16 ) fa16 ( do16 lab16 fa16 )
  % 10 :
  sib16 ( fa'16 sol16 fa16 ) sib,16 ( mib16 fa16 mib16 ) do16 mib16 fa16 mib16 re!16 sol,16 si16 re16 
  sol,16 do16 mib16 reb!16 sol,16 ( sib16 reb16 do16 ) \clef "bass" mib,16 lab16 do16 sib16 reb!16 sib16 mib,16 reb'16 
  fa,16 lab16 reb!16 do16 fa,16 lab16 do16 sib16 fa16 lab16 sib16 lab16 sol16 sib16 reb!16 do16 
  \clef "violin" lab16 do16 mib16 lab16 mib16 sib'16 do16 sib16 la16 mib16 solb16 la,!16 sib16 sol'!16 lab,16 fa'16 
  \clef "bass" sol,16 mi'16 fa16 mib16 fa,16 reb'!16 mib16 reb16 mib,16 do'16 reb!16 do16 \clef "violin" sib16 fa'16 sol16 fa16
  % 15 :
  \partial 2. re!16 fa16 sol16 fa16 mi16 reb16 sib16 sol16 la16 do16 fa8 
}


basse = \relative do, { 
  \global
  \clef "bass"
  \partial 4 fa8 fa8  
  %  1 :
  \repeat volta 2 {
    fa'8 [ fa8 ] fa8 [ mi!8 ] fa8 [ fa8 ] fa8 mib!8 
    reb!8 [ reb8 ] reb8 [ reb8 ] do8 [ do8 ] fa8 fa8 
    do'8 [ do8 ] do8 [ do8 ] do8 [ do8 ] sib8 la!8 
  }
  \alternative {
    { sib8 [ lab!8 ] sol8 [ fa8 ] mi!8 [ do8 ] fa,8 fa8 }
    { sib'8 [ lab!8 ] sol8 [ fa8 ] mi!8 [ fa8 ] do8 do8 }
  }
  reb8 [ reb8 ] mib8 [ mib8 ] lab8 [ mib8 ] fa8 reb8 
  mib8 [ do8 ] reb8 [ mib8 ] lab,8 [ lab8 ] mi!8 mi8 
  fa8 [ fa8 ] fa'8 [ fa8 ] fa8 [ mi!8 ] fa8 reb8 
  sib8 [ sol8 ] do8 [ do8 ] reb!8 [ reb8 reb8 reb8 ]
  re!8 [ re8 mib8 mib8 ] la,!8 [ la8 si8 si8 ]
  do8 [ do8 sib!8 sib8 ] lab8 [ lab8 sol8 sol8 ]
  fa8 fa8 mib8 mib8 re!8 re8 mib8 mib8 
  lab8 lab8 solb8 solb8 fa8 fa8 sib8 sib8 
  sib8 [ lab8 ] lab8 [ sol8 ] sol8 [ fa8 ] reb'8 [ reb8 ] 
  \partial 2. si8 [ si8 ] do8 [ do8 ] fa,4 
}

choralmidi = \relative do'' {
  % choral au soprano
  \global
  \partial 4 do4   
  %  1 :
  \repeat volta 2 {
    lab4 sib4 lab8. sol16 fa8. sol16 
    lab16 sib16 lab16 sib16  \times 6/13 {sib32 do32 sib32 do32 sib32 do32 sib32 do32 sib32 do32 sib32 do32 sib32} lab32 sib32 do8. r16 do8. reb!16 
    mib4 reb16 do8 sib16 lab4 sib8 do8 
  }
  \alternative {
    { reb4 ~ reb16 mib32 fa32 reb32 mib32 do32 r32 do8.. r32 do4 }
    { reb4 ~ reb16 mib32 fa32 reb32 mib32 do32 r32 do8.. r32 mib4 }
  }
  %  6 :
  fa4 mib8 [ reb32 do32 reb16 ] do8 sib8 lab8 sib8 
  do4 sib4 lab8. r16 do8. r16 
  do8. r16 do4 sib4 lab4 
  sol2 fa4 ~ fa8. r16
  % 10 :
  lab4 sol4 fa2 
  mib2 ~ mib8. r16 mib4
  lab8. r16 lab4 sib8. r16 sib4 
  do2 ~ do8. r16 reb4 
  do4 sib4 lab4 fa8. sol16 
  % 15 :
  \partial 2. lab4 sol4 fa4
}

bassemidi = \relative do, { 
  \global
  \clef "bass"
  \partial 4 fa16 r16 fa8  
  %  1 :
  \repeat volta 2 {
    fa'16 r16 fa16 r16 fa16 r16 mi16 r16 fa16 r16 fa16 r16 fa16 r16 mib16 r16 
    reb16 r16 reb16 r16 reb16 r16 reb16 r16 do16 r16 do16 r16 fa16 r16 fa16 r16 
    do'16 r16 do16 r16 do16 r16 do16 r16 do16 r16 do16 r16 sib16 r16 la16 r16 
  }
  \alternative {
    { sib16 r16 lab16 r16 sol16 r16 fa16 r16 mi16 r16 do16 r16 fa,16 r16 fa16 r16 }
    { sib'16 r16 lab16 r16 sol16 r16 fa16 r16 mi16 r16 fa16 r16 do16 r16 do16 r16 }
  }
 reb16 r16 reb16 r16 mib16 r16 mib16 r16 lab16 r16 mib16 r16 fa16 r16 reb16 r16 
 mib16 r16 do16 r16 reb16 r16 mib16 r16 lab,16 r16 lab16 r16 mi16 r16 mi16 r16 
 fa16 r16 fa16 r16 fa'16 r16 fa16 r16 fa16 r16 mi16 r16 fa16 r16 reb16 r16 
 sib16 r16 sol16 r16 do16 r16 do16 r16 reb16 r16 reb16 r16 reb16 r16 reb16 r16 
 re16 r16 re16 r16 mib16 r16 mib16 r16 la,16 r16 la16 r16 si16 r16 si16 r16 
 do16 r16 do16 r16 sib16 r16 sib16 r16 lab16 r16 lab16 r16 sol16 r16 sol16 r16 
 fa16 r16 fa16 r16 mib16 r16 mib16 r16 re16 r16 re16 r16 mib16 r16 mib16 r16 
 lab16 r16 lab16 r16 solb16 r16 solb16 r16 fa16 r16 fa16 r16 sib16 r16 sib16 r16
  sib16 r16 lab16 r16 lab16 r16 sol16 r16 sol16 r16 fa16 r16 reb'16 r16 reb16 r16 
 \partial 2. si16 r16 si16 r16 do16 r16 do16 r16 fa,4 
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
      \choral
    >>
    \new Staff = "basse" { 
      \clef "bass" 
      \alto
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
      \alto
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \alto
      }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \bassemidi
    }

    \new Staff { % tempo staff
      \partial 4 s4
      \repeat volta 2 {
	s1*3
      }
      \alternative {
	{ s1 }
	{ s1 }
      }
      s1*9
      \partial 2. 
      s4 \tempo 8 = 70 s4 \tempo 8 = 60 s8 \tempo 8 = 20 s8
    }
  >>
}
  \midi{ \tempo 8 = 75 }

}
