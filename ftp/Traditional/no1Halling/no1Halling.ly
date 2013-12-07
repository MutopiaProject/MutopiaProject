\version "2.16.1"
\include "articulate.ly"

\header {
  arranger="Johan Halvorsen"
  composer="Norwegian folk music"
  title="Nº1. Halling."
  mutopiatitle="Nº1. Halling."
  mutopiacomposer="Traditional"
  %mutopiapoet=""
  %not set, because there is no lyrics
  mutopiaopus="Verk 24"
  mutopiainstrument="Piano, Violin"
  date="1895"
  source="Carl Warmuths Musikforlag"
  style="Folk"
  copyright="Creative Commons Attribution-ShareAlike 3.0"
  maintainer="Helge Hafting"
  maintainerEmail="helge dot hafting at ntebb dot no"
  moreInfo="Scanned public domain original downloaded from International Music Score Library Project IMSLP63468-PMLP129433-Halvorsen-Nordic-Songs-and-Dances-complete-vln-pno.pdf. Title of the original songbook is 'Norske Viser og Dandse (Norwegishe Volksweisen und Tänze)'"

 footer = "Mutopia-2013/12/07-1889"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

vABAG = {a16. bes32 a16 g}

violin= \relative f'' {
  a8->\p\upbow
  g16( e) f( d) \vABAG
  f d e cis a8 \acciaccatura gis'' a->
  g16( e) f( d) \vABAG
  f d e cis a8 a''->
  g16\downbow f(\upbow g) e-.\downbow a,16.(\upbow bes32) a16-.\downbow g(\upbow
  f) d\downbow e(\upbow cis) a8\downbow \acciaccatura gis'' a->\upbow
  g16-. f( g) e-. a,16.( bes32) a16-. g(
  f) d-. e( cis) a8 a
  d16 e f g \vABAG
  f d e cis a8 a'8
  d16 e f g \vABAG 
  f d e cis a8 d16 cis
  cis4(\( d8) a,-.\)
  <d a'>16 <e a> <f a> <g a> <a a>16.\flageolet-4 bes32 <a a>16 <g a>
  <f a> <d a'> <e a> <e cis> <e a,>8 a
  <f d'>16 <a e'> <a f'> <a g'> <a a'>16. <a bes'>32 <a a'>16 <a g'>
  <a f'> d <a e'> cis a8 d16 cis
  cis4( d8) 
}

pianoupper= \relative c'' {
  f16->\p( d
  e bes d a    f cis e a,)
  <b gis'>8-. <cis a'>4-> f'16( d
  e bes d a    f cis e a,)
  <b gis'>8-. <cis a'>4-> d16( f
  e a f a c, a' cis, a'
  d, a' gis a g a) f->( a
  e a f a c, a' cis, a'
  d, a' d, gis cis, a') r8
  \repeat unfold 2 {
    r8 << <a, a'>4. \\ { f'4->( e8-.) } >> 
    r8 << {<gis, gis'>4->( <a a'>8)-.} \\ e'4.>>
  }
  <e a>16. bes'32 a16 g16 e8 r8
  \acciaccatura a' f-. r \acciaccatura e cis-. r
  \acciaccatura cis d-. r \acciaccatura e a-. r
  \acciaccatura e f-. r \acciaccatura e cis-. r
  \acciaccatura a f-. r \acciaccatura e cis-. r
  \acciaccatura a' g-. r \acciaccatura a f-.
}

pianolower= \relative c, {
  r8
  <d a'>2     
  <a' d f>8-. <a e'>4-> r8
  <d, a'>2  
  <a' f'>8-. <a e'>4-> r8
  <d, a'>2 
  <d a'> 
  <d a'>
  <e e'>4 <a e'>8 r8 
  \repeat unfold 4 {
    d4( cis)
  }
  a'4 d8 r
  d,,16\sustainOn a' d, a' d, a' d, a'
  \repeat tremolo 4 {d,16 a'}
  \repeat tremolo 4 {d,16 a'}
  \repeat tremolo 4 {d,16 a'}
  d,16 a' d, a' d,8
}

music = <<
  \time 2/4
  \partial 8
  \new Staff = "violin" \with {
    %Slightly smaller staff, so it fits on letter paper
    %The original also had a smaller violin staff
    fontSize = #-2
    \override StaffSymbol #'staff-space = #(magstep -2)
    %Needed when using the slightly smaller staff:
    \override Beam #'auto-knee-gap = #4.5
  } { 
    \tempo "Moderato."
    \set Staff.instrumentName = #"Violin"
    \set Staff.midiInstrument = #"violin"
    \clef treble
    \key d \minor
    \repeat volta 2 \violin
  }
  \new PianoStaff  <<
    \set PianoStaff.instrumentName = #"Piano"
    \set PianoStaff.midiInstrument = #"acoustic grand"
    \new Staff = "upper" {
      \clef treble
      \key d \minor 
      \repeat volta 2 \pianoupper
    }
    \new Staff = "lower" {
      \clef bass
      \key d \minor 
      \repeat volta 2 \pianolower
    } 
  >>
>>

%pdf output
\score {
  \music
  \layout{}
}

%midi output
\score {
  \unfoldRepeats \articulate
  \music
  \midi{}
}
