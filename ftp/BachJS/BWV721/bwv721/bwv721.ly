% -*- mode: LilyPond ; coding: utf-8 -*-
\version "2.6.4.3"
\include "italiano.ly" 

\header{
    title = \markup {\center-align { "Erbarm dich mein, o Herre Gott" "Have mercy upon me, o Lord" "Aie pitié de moi, ô Seigneur Dieu" } }
    subtitle = \markup {manualiter}
    piece = "" 
    instrument = \markup {\center-align { "Orgel - Orgue - Organ"}}
    composer = "Johann Sebastian Bach (1685-1750)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Bach-Gesellschaft Edition OrgelWerke Bd 4. 1893"
    opus = "BWV 721"
    lastupdated = "2006-02-26"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "Erbarm dich mein, o Herre Gott"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"
    footer = "Mutopia-2006/03/02-689"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

#(set-default-paper-size "a4" 'landscape)
%#(set-global-staff-size 20)


global = {
  \key si \minor
  \time 2/2
}

choral = \relative do' {
  R1
  re'2\rest fad,2 
  la2 lad2 
  si2 dod2 
  re2 dod2 \break
  si2 re2\rest 
  re2\rest la2 
  re2 dod2 
  re2 si2 
  la2 sol2 \break
  fad1 
  R1 
  re'2\rest fad,2 
  si2 si2 
  la2 re2 \pageBreak
  dod4 do4 si2 
  la2 re2\rest
  re2\rest la2
  re2 la2 
  si2 fad2 \break
  la2 sol2 
  fad2 re'2\rest 
  re2\rest fad,2 
  si2 si2 
  la2 fad2 \break
  sol2 mi2 
  re2 re'2\rest
  re2\rest re,2 
  la'2 si2 
  dod2 re2 \break
  si2 la2 
  si2 sol2 
  fad1 ~
  fad1 
}

alto = \relative do' {

  dod8 [ dod8 dod8 dod8 ] 
  re8 [ re8 re8 re8 ] 
 
  mi8 [ mi8 mi8 mi8 ] 
  mi8 [ mi8 re8 re8 ]  
  
  dod8 [ dod8 dod8 dod8 ] 
  fad8 [ fad8 mi8 mi8 ]  

  re8 [ re8 re8 re8 ] 
  mi8 [ mi8 la8 sol8 ] 
  
  fad8 [ fad8 sol8 sol8 ] 
  sol8[ sol8 < re la'>8 < re la'>8 ]  
 
  < re la'>8 [ < red la' >8 < mi sol >8 < mi sol >8 ] 
  < do fad >8 [ < do fad >8 < si fad' >8 < si fad' >8 ] 

  < si fad'>8 [ < si fad'>8 < dod mi >8 < si mi >8 ] 
  mi8 [ mi8 re8 re8 ] 

  re8 [ re8 mi8 mi8 ]
  mi8 [ mi8 fad8 mi8 ]

  re8 [ re8 fad8 fad8 ] 
  sol8 [ sol8 sol8 sol8 ] 
 
  sol8 [ sol8 fad8 fad8 ] 
  re8 [ re8 mi8 mi8 ] 

  mi8 [ mi8 re8 re8 ] 
  dod8 [ dod8 dod8 dod8 ]  
  %-- reprise -- repeat -- Wiederholung
  \bar ":|"

  re8 re8 mi8 mi8 
  dod8 dod8 re8 re8 

  mi8 mi8 mi8 mi8 
  mi8 mi8 re8 re8 

  fad8 fad8 fad8 fad8 
  < si, fad'>8 < si mi >8 <re! mi>8 <re mi>8 
  
  < dod mi >8 < dod mi >8 < dod mi >8 < re mi >8
  < re fad >8 < re fad >8 re8 re8 

  mi8 mi8 fad8 fad8 
  si,8 si8 mi8 mi8 

  mi8 mi8 < re fad >8 < re fad >8
  re8 re8 re8 re8 

  dod8 dod8 dod8 dod8 
  re8 re8 re8 re8 

  re8 re8 re8 re8 
  mi8 mi8 re8 re8 

  re8 re8 re8 re8 
  re8 re8 dod8 dod8 

  red8 red8 si8 si8 
  si8 si8 dod8 dod8 

  dod8 dod8 re8 re8 
  si8 si8 si8 si8 

  lad8 lad8 si8 si8 
  dod8 dod8 dod8 dod8 
  
  red8 red8 mi8 mi8 
  fad8 fad8 sol8 sol8 

  < do, mi >8 < do mi >8 < do mi >8 < do mi >8 
  < dod mi >8 < dod mi >8 < si red >8 < si red >8

  < si mi >8 < si mi >8 < si re >8 < si re >8
  < si re >8 < si re >8 dod8 dod8 

  dod8 dod8 si8 si8 
  la8 la8 re8 re8 

  si8 si8 mi8 mi8 
  la,8 la8 re8 re8 

  dod8 dod8 re8 re8 
  re8 re8 mi8 mi8 

  sold8 sold8 fad8 fad8 
  fad8 fad8 fad8 fad8 

  fad8 fad8 mi8 mi8 
  mi8 mi8 re8 re8 

  < si fad' >8 < si fad' >8 red8 red8
  si8 si8 mi8 mi8 

  dod8 dod8 re8 re8 
  dod8 dod8 dod8 dod8 

  re8 re8 re8 re8 
  dod2 
  \bar "|."
} 



tenor = \relative do {

  <fad la>8  <fad la>8 <fad la>8 <fad la>8
  <fad la>8  <fad la>8 <re sol>8 <re sol>8

  <sol la>8 <sol la>8 <sol la>8 <sol la>8
  <fad la>8 la8 si8 si8

  la8 la8 sol8 sol8 
  fad8 fad8 dod'8 dod8 

  fad,8 fad8 si8 si8 
  la8 la8 la8 lad8 

  si8 si8 si8 si8 
  si8 si8 la8 la8 

  si8 si8 si8 si8 
  la8 la8 la8 la8 

  sol8 sol8 sol8 sol8 
  la8 la8 la8 la8 

  la8 la8 sol8 sol8 
  sol8 sol8 fad8 fad8 

  fad8 fad8 si8 si8 
  si8 si8 re8 re8 

  dod8 dod8 <fad, dod'>8 <fad dod'>8
  fad8 fad8 <mi la>8 <mi la>8

  <fad la>8 <fad lad>8 <sol si>8 <sold si>8
  si8 si8 la8 sold8 
  %-- reprise -- repeat -- Wiederholung

  la8 la8 si8 si8
  < sol si >8 < sol si >8 la8 la8 

  la8 la8 < sol la > 8 < sol la > 8 
  < fad la >8 < fad la >8 si8 si8 

  si8 si8 la8 la8 
  sol8 sol8 si8 si8

  la8 la8 la8 la8 
  la8 la8 la8 la8 

  sold8 sold8 la8 la8 
  la8 la8 sold8 sold8 

  la8 la8 < fad la >8 < fad la >8 
  < sol si >8 < sol si >8 < sold si >8 < sold si >8

  < mi si'>8 < mi la >8 < mi la >8 < mi la >8 
  < fad la >8 < fad la >8 la8 la8

  < fad la >8 < fad la >8 sol8 sol8 
  sol8 sol8 fad8 fad8 

  sol8 sol8 sol8 sol8 
  la8 la8 la8 la8 

  fad8 fad8 fad8 fad8 
  sol8 sol8 < mi la >8 < mi la >8 
  
  < mi fad >8 < mi fad >8 < re fad >8 < re fad >8 
  fad8 fad8 mi8 mi8 

  mi8 mi8 re8 re8 
  mi8 mi8 fad8 fad8 

  fad8 fad8 < sol si >8 < sol si >8 
  si8 la8 < sol si >8 < sol si >8 

  sol8 sol8 fad8 fad8 
  fad8 fad8 fad8 fad8 

  mi8 mi8 mi8 mi8 
  mi8 mi8 fad8 fad8 

  fad8 fad8 sol8 sol8 
  sol8 fad8 fad8 fad8 

  sol8 sol8 sol8 sol8 
  fad8 fad8 sol8 sol8 

  sol8 sol8 fad8 fad8 
  sol8 sol8 sold8 sold8 

  < sold si >8 < sold si >8 la8 la8 
  la8 la8 < fad la >8 < fad la >8 

  < sol si >8  < sol si >8 si8 si8 
  < sol la >8 < sol la >8 < fad la >8 < fad la >8

  la8 la8 < fad la >8 < fad la >8
  sol8 sol8 mi8 mi8 

  fad8 fad8 fad8 sold8 
  lad8 lad8 lad8 lad8 

  si8 si8 < sold si >8 < sold si >8 
  < fad lad >2
  
} 

basse = \relative do, {

  fad8 fad8 la8 la8 
  si8 si8 si8 si8 

  dod8 dod8 dod8 dod8 
  re8 re8 si8 si8 

  fad'8 fad8 mi8 mi8 
  re8 re8 dod8 dod8 

  si8 si8 sol'8 sol8 
  sol8 sol8 fad8 mi8 
  
  re8 re8 si8 si8
  mi8 mi8 fad8 fad8 

  sol8 sol8 mi8 mi8 
  mi8 mi8 red8 red8 

  mi8 mi8 mi8 mi8 
  fad8 fad8 fad8 fad8 

  si,8 si8 mi8 mi8 
  la,8 la8 lad8 lad8 

  si8 si8 re8 re8 
  mi8 mi8 sol,8 sol8 

  la8 la8 la8 la8 
  si8 si8 dod8 dod8 

  re8 re8 si8 si8 
  fad'8 fad8 fad8 fad8 
  %-- reprise -- repeat -- Wiederholung

  fad8 fad8 sol8 sol8 
  mi8 mi8 fad8 fad8 

  dod8 dod8 dod8 dod8 
  re8 re8 re8 re8 

  red8 red8 red8 red8 
  mi8 mi8 sold8 sold8 

  la8 la8 sol8 sol8 
  fad8 fad8 fa8 fa8 

  mi8 mi8 red8 red8 
  mi8 mi8 re8 re8 

  dod8 dod8 do8 do8 
  si8 si8 mi8 mi8 

  la,8 la8 sol8 sol8 
  fad8 fad8 fad'8 fad8

  si,8 si8 si8 si8 
  dod8 dod8 re8 re8 

  sol,8 sol8 si8 si8 
  re8 re8 fad8 fad8 

  si,8 si8 red8 red8 
  mi8 mi8 la,8 la8 

  lad8 lad8 si8 si8 
  sold8 sold8 sol8 sol8 

  fad8 fad8 si8 si8 
  si8 si8 lad8 lad8 

  la8 la8 sol8 sol8 
  red'8 red8 mi8 mi8 

  do8 do8 la8 la8 
  lad8 lad8 si8 si8

  mi,8 mi8 sol8 sol8 
  sold8 sold8 lad8 lad8 

  si8 si8 sol8 sol8 
  re'8 re8 si8 si8 

  mi8 mi8 do8 do8 
  do8 do8 si8 si8 

  la8 la8 re8 re8 
  sol,8 sol8 mi'8 mi8 

  mi8 mi8 fad8 fad8 
  re8 re8 si8 si8 

  mi8 mi8 sol8 sol8 
  dod,8 dod8 re8 re8 

  red8 red8 si8 si8 
  mi8 mi8 do8 do8 

  lad8 lad8 si8 si8 
  sol8 sol8 mi'8 mi8 

  re8 re8 mid,8 mid8 
  fad2

}

\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  headsep = 1\mm
  aftertitlespace = 1\mm
  indent = 1\cm
  %bottommargin = 4\mm 
  %topmargin = 4\mm
}

\score {
  
  \context PianoStaff <<
    \context Staff = "dessus" <<
      \global
      \clef violin
      \set Staff.midiInstrument = "Church organ"
      \context Voice = "choral" {
	%\override NoteSpacing #'stem-spacing-correction = #5.0
	%\override SpacingSpanner #'shortest-duration-space = #10.0
	%\override SpacingSpanner #'spacing-increment = #10.0
	\voiceOne \choral
      }
      \context Voice = "alto" {
	\voiceTwo \alto
      }
    >>
    \context Staff = "basse" <<
      \global
      \clef bass
      \set Staff.midiInstrument = "Church organ"
      \context Voice = "tenor" {
	\voiceOne \tenor
      } 
      \context Voice = "basse" {
	\voiceTwo \basse
      }
    >>
  >>
  \layout {}
  
  \midi { \tempo 4 = 80}
}



