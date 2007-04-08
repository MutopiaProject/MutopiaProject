% -*- mode: LilyPond ; coding: utf-8 -*-
\version "2.8.1"
\include "italiano.ly" 
%% Version 2

\header{
    title = \markup {\center-align { "In dulci jubilo." " "} }
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Johann Sebastian Bach (1685-1750)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Bach-Gesellschaft Edition, OrgelWerke 1893"
    opus = "BWV 608"
    lastupdated = "2006-04-09 ; Fête des Rameaux"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "In dulci jubilo"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"
    %tagline= ""
 footer = "Mutopia-2006/04/09-729"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

%#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

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
  \key la \major
  \time 3/2
  \override TupletBracket #'bracket-visibility = ##f 
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
}

choral =  \relative do'' {
  \global
  \override TupletNumber #'transparent = ##t
  \clef "violin"
  %  1 :
  la2 la2 la2 
  dod1 re2 
  mi1 fad2 
  mi1 fa2\rest 
  %  5 :
  la,2 la2 la2 
  dod1 re2 
  mi1 fad2 
  mi1 fa2\rest 
  mi1 fad2
  % 10 :
  mi1 re2 
  dod2. re4 dod4 si4 
  la2 re2\rest re2\rest 
  la2 si2 si2 
  dod2 si2 ~ si2 
  % 15 :
  \once \override NoteColumn #'force-hshift = #-0.8 la1 si2 
  dod1 re2\rest 
  mi2 mi2 fad2 
  mi1 re2 
  dod2. re4 dod4 si4 
  % 20 :
  la2 re2\rest re2\rest 
  la2 si2 si2 
  dod2 si2 ~ si2 
  \once \override NoteColumn #'force-hshift = #-0.8 la1 si2 
  dod2 re2\rest re2\rest 
  % 25 :
  fad,1 fad2 
  sold1 sold2 
  la2. si4 dod4 re4 
  mi1. 
  dod1 dod2 
  % 30 :
  si1 si2 
  la2 ~ \times 4/3 { la8 [ si8 dod8 ] re8 [ mi!8 fad8 ] } | 
  sold,2 ~ \times 4/3 { sold8 [ la8 si8 ] dod8 [ red8 mid8 ] } |
  fad2 fa2\rest fa2\rest 
  \times 4/3 { r8 la8 sol8 fad8 [sol8 mi8] re8 [ mi8 dod8 ] }
  % 35 :
  re1. ~
  \times 4/3 { re8 mi8 re8 dod8 re8 si8 la8 si8 sold8 }
  la1.^\fermata \bar "|."
}
alto = \relative do'' {
  \global
  %  1 :
  \times 4/3 { r8 sold8  fad8  mi8 fad8  re8  dod8 re8 si8 \override TupletNumber #'transparent = ##t
	      la8  si'8 la8  sold8  la8 fad8  mi8  fad8 re8  }
  la'4 la4 la4 la4 la4 la4 
  \times 4/3 { dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
  %  5 :
	       la8 sold8 fad8 mi8 fad8 re8 dod8 re8 si8 
	       \staffdown la8 \staffup si'8 la8 sold8 la8 fad8 mi8 fad8 re8 }
  la'4 la4 la4 la4 la4 la4 
  \times 4/3 { dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
	       la8 dod8 si8 la8 si8 dod8 re8 dod8 re8 
  % 10 :
	       dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
	       la8 sold8 fad8 mi8 fad8 re8 } mi4 mid4 
  \times 4/3 { fad8 si8 la8 sold8 la8 fad8 mi8 fad8 re8 } 
  dod4 dod4 \times 4/3 { re8 dod8 re8 mi8 re8 mi8 
			la,8 mi'8 la8 ~ la8 si8 la8 sold8 fad8 sold8 
  % 15 :
			la8 si8 sold8 fad8 sold8 fad8 mi8 fad8 re8 }
  dod4 mi4 la,4 la'2 sold4 
  \times 4/3 { la8 mi8 sold8 la8 si8 dod8 re8 dod8 re8 
	       dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
	       la8 sold8 fad8 mi8 fad8 re8 } mi4 mid4 
  % 20 :
  \times 4/3 { fad8 si8 la8 sold8 la8 fad8 mi8 fad8 re8 }
  dod4 dod4 \times 4/3 { re8 dod8 re8 mi8 re8 mi8 
			 la,8 mi'8 la8 ~ la8 si8 la8 sold8 fad8 sold8
			 la8 si8 sold8 fad8 sold8 fad8 mi8 fad8 re8 
			 dod8 re8 mi8 fad8 mi8 fad8 sold8 fad8 sold8  
  % 25 :
			 lad,4 lad8 si4 dod8 re8 mi8 dod8 
			 re4 si8 mi8 fad8 re8 dod8 re8 si8 }
  dod4 dod4 fad4 sold4 la4 si4 ~
  \times 4/3 { si4 la8 sold8 la8 fad8 } mi2 
  \times 4/3 { mi8 dod'8 si8 la8 si8 sold8 fad8 sold8 mi8 
  % 30 :
	       re4 si8 mi8 fad8 re8 dod8 re8 si8 }
  mi4 mid4 fad4 sold4 la2 
  re,2 dod2 sold'2 
  fad2 \times 4/3 { r8 la8 sol8 fad8 sol8 mi8 }
  fad4 r4 mi4\rest sol4 fad4 mi4 
  % 35 :
  fad1. ~
  fad4 fad4 mi4 re4 dod4 si4 
  dod1.
}

tenor = \relative do'  { 
  \global
  \clef "bass"
  %  1 :
  R1.
 \times 4/3 { r8 sold8  fad8  mi8 fad8  re8  dod8 re8 si8 \override TupletNumber #'transparent = ##t
	      la8  si'8 la8  sold8  la8 fad8  mi8  fad8 re8  }
  la'4 la4 la4 la4 la4 la4
  %  5 :
  \times 4/3 { dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
	       la8 sold8 fad8 mi8 fad8 re8 dod8 re8 si8 
	       la8 si'8 la8 sold8 la8 fad8 mi8 fad8 re8 }
  la'4 la4 la4 la4 la4 la4 
  \times 4/3 { dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
  % 10 :	       
	       la8 dod8 si8 la8 si8 dod8 re8 dod8 re8 
	       la8 mi'8 re8 dod8 re8 si8 la8 si8 sold8 
	       la8 sold8 fad8 mi8 fad8 re8 } mi4 mid4 
  \times 4/3 { fad8 si8 la8 sold8 la8 fad8 mi8 fad8 re8 } 
  dod4 dod4 \times 4/3 { re8 dod8 re8 mi8 re8 mi8 
  % 15 :
			 la,8 mi'8 la8 ~ la8 si8 la8 sold8 fad8 sold8 
			 la8 si8 sold8 fad8 sold8 fad8 mi8 fad8 re8 }
  dod4 mi4 la,4 la'2 sold4 
  % ---
  \times 4/3 { la8 mi8 sold8 la8 si8 dod8 re8 dod8 re8 
	       la8 mi'8 re8 dod8 re8 si8 la8 si8 sold8 
  % 20 :
	       la8 sold8 fad8 mi8 fad8 re8 } mi4 mid4 
  \times 4/3 { fad8 si8 la8 sold8 la8 fad8 mi8 fad8 re8 }
  dod4 dod4 \times 4/3 { re8 dod8 re8 mi8 re8 mi8 
			 la,8 mi'8 la8 ~ la8 si8 la8 sold8 fad8 sold8
			 la8 si8 sold8 fad8 sold8 fad8 mi8 fad8 red8 
  % 25 :
			 mi8 fad8 mi8 re!8 mi8 dod8 si8 dod8 la!8 
			 mi8 mi'8 re8 dod8 re8 si8 la8 si8 sold8 
			 fad8 fad'8 mi8 re8 mi8 dod8 si8 dod8 la8 
			 \stemDown sold8 sold'8 \stemNeutral fad8 mi8 fad8 re8 dod8 re8 si8 }
  la2 mi'2 la2 ~
  % 30 :
  \times 4/3 { la8 si8 la8 sold8 la8 fad8 } sold2 ~
  \times 4/3 { sold8 la8 sold8 fad8 sold8 mid8 } fad2 ~
  \times 4/3 { fad8 sold8 fad8 mid8 fad8 red8 } mid4 dod4 
  \times 4/3 {  \stemDown fad,8 la'8 sol8 \stemNeutral fad8 sol8 mi8 re8 mi8 dod8}
  re1. ~
  % 35 :
  \times 4/3 { re8 mi8 re8 dod8 re8 si8 la8 si8 sold8 }
  la1. ~
  la1.^\fermata
}
pedale = \relative do' {
  \global
  \clef "bass"
  %  1 :
  R1.
  la2 la2 la2 
  dod1 re2 
  mi1 fad2 
  %  5 :
  mi1 r2 
  la,2 la2 la2 
  dod1 re2 
  mi1 fad2 
  mi1 r2 
  % 10 :
  mi1 fad2
  mi1 re2 
  dod2. re4 dod4 si4 
  la2 r2 r2 
  la2 si2 si2 
  % 15 :
  dod1 si2
  la1 si2 
  dod1 r2 
  mi2 mi2 fad2 
  mi1 re2 
  % 20 :
  dod2. re4 dod4 si4 
  la2 r2 r2 
  la2 si2 si2 
  dod1 si2
  la1 si2 
  % 25 :
  dod2 r2 r2
  R1.
  fad,1 fad2 
  sold1 sold2 
  la2. si4 dod4 re4 
  mi1. 
  % 30 :
  dod1 dod2 
  si1 si2
  << 
    { la1. ~ 
      la1. ~
      la1. ~ 
      la1. ~ 
      la1. } \\ 
    { s1. 
      s1. 
      s1. 
      si,2\rest si4\rest fad'4 mi4 re4 
      mi1._\fermata
    } 
  >> 
}


\score{
\new StaffGroup \with{systemStartDelimiter = #'SystemStartBar } <<

 \new PianoStaff <<
   \new Staff = "dessus" << 
     \choral \\
     \alto 
   >>
   \new Staff = "basse" { 
     \clef "bass" 
     \tenor
   }
 >>
 \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 2)
  \new Staff = "pedale" {
    
    \pedale
  }
>>
\layout{}
}

choralmidi =  \relative do'' {
  \global
  \clef "violin"
  %  1 :
  la4. r8 la4. r8 la2 
  dod1 re2 
  mi1 fad2 
  mi1 fa2\rest 
  %  5 :
  la,4. r8 la4. r8 la2 
  dod1 re2 
  mi1 fad2 
  mi1 fa2\rest 
  mi1 fad2
  % 10 :
  mi1 re2 
  dod2. re4 dod4 si4 
  la2 re2\rest re2\rest 
  la2 si4. r8 si2 
  dod2 si2 ~ si2 
  % 15 :
  la1 si2 
  dod1 re2\rest 
  mi4. r8 mi2 fad2 
  mi1 re2 
  dod2. re4 dod4 si4 
  % 20 :
  la2 re2\rest re2\rest 
  la2 si4. r8 si2 
  dod2 si2 ~ si2 
  la1 si2 
  dod2 re2\rest re2\rest | 
  % 25 :
  \times 4/3 {fad,8*5 r8} fad2 | 
  \times 4/3 {sold8*5 r8} sold2 | 
  la2. si4 dod4 re4 
  mi1. 
  \times 4/3 {dod8*5 r8} dod2 
  % 30 :
  \times 4/3 {si8*5 r8} si2 
  la2 ~ \times 4/3 { la8 [ si8 dod8 ] re8 [ mi!8 fad8 ] } | 
  sold,2 ~ \times 4/3 { sold8 [ la8 si8 ] dod8 [ red8 mid8 ] } |
  fad2 fa2\rest fa2\rest 
  \times 4/3 { r8 la8 sol8 fad8 [sol8 mi8] re8 [ mi8 dod8 ] }
  % 35 :
  re1. ~
  \times 4/3 { re8 mi8 re8 dod8 re8 si8 la8 si8 sold8 }
  la1.
}

altomidi = \relative do'' {
  \global
  %  1 :
  \times 4/3 { r8 sold8  fad8  mi8 fad8  re8  dod8 re8 si8 
	      la8  si'8 la8  sold8  la8 fad8  mi8  fad8 re8  }
  la'4 la4 la4 la4 la4 la4
  \times 4/3 { dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
  %  5 :
	       la8 sold8 fad8 mi8 fad8 r8 dod8 re8 r8 
	       la8 si'8 la8 sold8 la8 fad8 mi8 fad8 re8 }
  la'4 la4 la4 la4 la4 la4 
  \times 4/3 { dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
	       la8 dod8 si8 la8 si8 dod8 re8 dod8 re8 
  % 10 :
	       dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
	       la8 sold8 fad8 mi8 fad8 r8 } mi4 mid4 
  \times 4/3 { fad8 si8 la8 sold8 la8 fad8 mi8 fad8 re8 } 
  dod8 r8 dod4 \times 4/3 { re8 dod8 re8 mi8 re8 mi8 
			la,8 mi'8 la8 ~ la8 si8 la8 sold8 fad8 sold8 
  % 15 :
			la8 si8 sold8 fad8 sold8 fad8 mi8 fad8 re8 }
  dod4 mi4 la,4 la'2 sold4 
  \times 4/3 { la8 mi8 sold8 la8 si8 dod8 re8 dod8 re8 
	       dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
	       la8 sold8 fad8 mi8 fad8 r8 } mi4 mid4 
  % 20 :
  \times 4/3 { fad8 si8 la8 sold8 la8 fad8 mi8 fad8 re8 }
  dod8 r8 dod4 \times 4/3 { re8 dod8 re8 mi8 re8 mi8 
			 la,8 mi'8 la8 ~ la8 si8 la8 sold8 fad8 sold8
			 la8 si8 sold8 fad8 sold8 fad8 mi8 fad8 re8 
			 dod8 re8 mi8 fad8 mi8 fad8 sold8 fad8 sold8  
  % 25 :
			 lad,8 r8 lad8 si4 dod8 re8 mi8 dod8 
			 re4 si8 mi8 fad8 re8 dod8 re8 si8 }
  dod8 r8 dod4 fad4 sold4 la4 si4 ~
  \times 4/3 { si4 la8 sold8 la8 fad8 } mi2 
  \times 4/3 { mi8 dod'8 si8 la8 si8 sold8 fad8 sold8 mi8 
  % 30 :
	       re4 si8 mi8 fad8 re8 dod8 re8 si8 }
  mi4 mid4 fad4 sold4 la2 
  re,2 dod2 sold'2 
  fad2 \times 4/3 { r8 la8 sol8 fad8 sol8 mi8 }
  fad4 r4 mi4\rest sol4 fad4 mi4 
  % 35 :
  fad1. ~
  fad8 r8 fad4 mi4 re4 dod4 si4 
  dod1.
}

tenormidi = \relative do'  { 
  \global
  \clef "bass"
  %  1 :
  R1.
 \times 4/3 { r8 sold8  fad8  mi8 fad8  re8  dod8 re8 si8 
	      la8  si'8 la8  sold8  la8 fad8  mi8  fad8 re8  }
  la'8 r8 la8 r8 la8 r8 la8 r8 la8 r8 la4
  %  5 :
  \times 4/3 { dod8 mi8 re8 dod8 << re8*2 \\ {r8 si8} >> la8 << si8*2 \\ {r8 sold8} >> 
	       la8 sold8 fad8 mi8 fad8 re8 dod8 re8 si8 
	       la8 si'8 la8 sold8 la8 fad8 mi8 fad8 re8 }
  la'8 r8 la8 r8 la8 r8 la8 r8 la8 r8 la4
  \times 4/3 { dod8 mi8 re8 dod8 re8 si8 la8 si8 sold8 
  % 10 :	       
	       la8 dod8 si8 la8 si8 dod8 re8 dod8 re8 
	       la8 mi'8 re8 dod8 << re8*2 \\ { r8 si8 } >> la8 si8 sold8 
	       la8 sold8 fad8 mi8 fad8 re8 } mi4 mid4 
  \times 4/3 { fad8 si8 la8 sold8 la8 fad8 mi8 fad8 re8 } 
  dod8 r8 dod4 \times 4/3 { re8 dod8 re8 mi8 re8 mi8 
  % 15 :
			 la,8 mi'8 la8 ~ la8 si8 la8 sold8 fad8 sold8 
			 la8 si8 sold8 fad8 sold8 fad8 mi8 fad8 re8 }
  dod4 mi4 la,4 la'2 sold4 
  \times 4/3 { la8 mi8 sold8 la8 si8 dod8 re8 dod8 re8 
	       la8 mi'8 re8 dod8 << re8*2 \\ { r8 si8} >> la8 si8 sold8 
  % 20 :
	       la8 sold8 fad8 mi8 fad8 re8 } mi4 mid4 
  \times 4/3 { fad8 si8 la8 sold8 la8 fad8 mi8 fad8 re8 }
  dod8 r8 dod4 \times 4/3 { re8 dod8 re8 mi8 re8 mi8 
			 la,8 mi'8 la8 ~ la8 si8 la8 sold8 fad8 sold8
			 la8 si8 sold8 fad8 sold8 fad8 mi8 fad8 red8 
  % 25 :
			 mi8 fad8 mi8 re!8 mi8 dod8 si8 dod8 la!8 
			 mi8 mi'8 re8 dod8 re8 si8 la8 si8 sold8 
			 fad8 fad'8 mi8 re8 mi8 dod8 si8 dod8 la8 
			 sold8 sold'8 fad8 mi8 fad8 re8 dod8 re8 si8 }
  la2 mi'2 la2 ~
  % 30 :
  \times 4/3 { la8 si8 la8 sold8 la8 fad8 } sold2 ~
  \times 4/3 { sold8 la8 sold8 fad8 sold8 mid8 } fad2 ~
  \times 4/3 { fad8 sold8 fad8 mid8 fad8 red8 } mid4 dod4 
  \times 4/3 { fad,8 la'8 sol8 fad8 sol8 mi8 re8 mi8 dod8}
  re1. ~
  % 35 :
  \times 4/3 { re8 mi8 re8 dod8 re8 si8 la8 si8 sold8 }
  la1. ~
  la1.^\fermata
}

pedalemidi = \relative do' {
  \global
  \clef "bass"
  %  1 :
  R1.
  la4. r8 la4. r8 la2 
  dod1 re2 
  mi1 fad2 
  %  5 :
  mi1 r2 
  la,4. r8 la4. r8 la2 
  dod1 re2 
  mi1 fad2 
  mi1 r2 
  % 10 :
  mi1 fad2
  mi1 re2 
  dod2. re4 dod4 si4 
  la2 r2 r2 
  la2 si4. r8 si2 
  % 15 :
  dod1 si2
  la1 si2 
  dod1 r2 
  mi4. r8 mi2 fad2 
  mi1 re2 
  % 20 :
  dod2. re4 dod4 si4 
  la2 r2 r2 
  la2 si4. r8 si2 
  dod1 si2
  la1 si2 
  % 25 :
  dod2 r2 r2
  R1.
  \times 4/3 { fad,8*5 r8 } fad2 
  \times 4/3 { sold8*5 r8 } sold2 
  la2. si4 dod4 re4 
  mi1. 
  % 30 :
  \times 4/3 { dod8*5 r8 } dod2 
  \times 4/3 { si8*5 r8 } si2
  << 
    { la1. ~ 
      la1. ~
      la1. ~ 
      la1. ~ 
      la1. } \\ 
    { s1. 
      s1. 
      s1. 
      si,2\rest si4\rest fad'4 mi4 re4 
      mi1._\fermata
    } 
  >> 
}

\score {
  <<
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \choralmidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \altomidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \tenormidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \pedalemidi
    }
  >>
  \midi{ \tempo 2 = 72 }
}
