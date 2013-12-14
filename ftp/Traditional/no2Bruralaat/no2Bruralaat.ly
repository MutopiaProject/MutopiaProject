\version "2.16.2"

\header {
  arranger="Johan Halvorsen"
  composer="Norwegian folk music"
  title="Nº2. Bruralaat."
  mutopiatitle="Nº2. Bruralaat."
  mutopiacomposer="Traditional"
  %not set, no lyrics:
  %mutopiapoet=""
  mutopiaopus="Verk 24"
  mutopiainstrument="Piano, Violin"
  date="1895"
  source="Carl Warmuths Musikforlag"
  style="Folk"
  copyright="Creative Commons Attribution-ShareAlike 3.0"
  maintainer="Helge Hafting"
  maintainerEmail="helge dot hafting at ntebb dot no"
  moreInfo="Scanned public domain original from International Music Score Library Project IMSLP63468-PMLP129433-Halvorsen-Nordic-Songs-and-Dances-complete-vln-pno.pdf. Title of the original songbook: 'Norske Viser og Dandse (Norwegishe Volksweisen und Tänze)'. Midi may be faulty as lilypond still have problems with grace notes."
  %Hack to display the violin tuning. New use for the "poet" field, as there is no poet here.
  poet = \markup {
    \score {
      \new Staff \with {    
        fontSize = #-4
        \override StaffSymbol #'staff-space = #(magstep -4)
        \consists "Balloon_engraver"
        \override BalloonTextItem #'annotation-line = ##f
        \override BalloonTextItem #'annotation-balloon = ##f
        \remove "Time_signature_engraver"
        \remove "Clef_engraver"
        \override Stem #'stencil = ##f
      }
      {
        \set Staff.instrumentName = \markup {
          \smaller \column { "Violin tuning" 
          }
        }
        <a-\balloonText #'(1 . 0) \markup { \italic "a" } 
         d'-\balloonText #'(1 . 0) \markup { \italic "d" } 
         a'-\balloonText #'(1 . 0) \markup { \italic "a" } 
         e''-\balloonText #'(1 . 0) \markup { \italic "e" } >4 
      }
      \layout{}
    } %score
  } %markup

 footer = "Mutopia-2013/12/14-1890"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

%Override forcing grace slurs to go down. Prettier in this piece.
startAppoggiaturaMusic = {
  \once\override Slur #'direction = #DOWN
  <>\startGraceSlur
}

%Suggested fix for "programming error: Going back in MIDI time.":
%make notes 2 times shorter than they look:
%\acciaccatura { \scaleDurations #' (1 . 2) { c'8[ d' e' f' g'] } }
% \scaleDurations 1/2 { ... }
%Except it doesn't help that much - it reduces the warnings from
%17 to 15. Dropping "articulate" solves everything. Problem in articulate.ly ?
%Another problem - lilypond does not indicate where the problem is, there
%is no line number in these error messages.


violin= \relative a'{
  \times 2/3 {<a fis'>8(\mf <a e'>) <a fis'>-.} \times 2/3 {<a g'>( <a fis'>) <a g'>-.} <a a'>8.-> <a b'>16 <a gis'>8.-> <a a'>16 
  \times 2/3 {<a fis'>8-. <a e'>( <a fis'>)} \times 2/3 {<a g'>( <a fis'>) <a g'>-.} <a a'>8.-> <a b'>16 <<  {\appoggiatura \scaleDurations 1/2 { gis'16[ a]} } \\ {\acciaccatura \scaleDurations 1/2 { a,8} }>> <a gis'>8.-> <a a'>16
  \appoggiatura  \scaleDurations 1/2 { fis'[ g] } <a, fis'>( <a e'> <a fis'>) <a g'>-. <a e'>( <a d> <a e'>) <a fis'>-. \appoggiatura { \scaleDurations 1/2  {cis[ d cis]} } <d, d'>8.-> <a' e'>16 <a d,>4 
  <a fis'>16( e') fis-. g-. <a, e'>( d) e-. fis-. <d fis>4-- <a e'>--
  <a fis'>16\(\trill e' fis\) g-. \appoggiatura \scaleDurations 1/2 { e[ fis] } <a, e'>\( d e\) fis-. <d fis>4-- <a e'>-- 
  \appoggiatura \scaleDurations 1/2 { fis16[ g] } <fis a>\( <e a> <fis a>\) <g a>-. <e a>8-. <fis a>-. q4-> <e g,>-> 
  << {\appoggiatura \scaleDurations 1/2 { fis16[ g] }  fis^( e) fis-. g-.} \\ g,4 >> <e' g,>8-. fis-. << \acciaccatura d8*1/2 d4->\\ \stemDown \appoggiatura \scaleDurations 1/2 { b16[ c b] } c4  >> <c fis>8-.(\upbow^\markup{\italic rit.} <d g>-.)
  <fis a>4->^\markup{\italic "a tempo"} <d' fis>-> <fis, a>-> <c fis>8-.\upbow( <d g>-.)
  <fis a>4-> q8-.( <g b>-.) <fis a>4-> <c fis>8-.( <d g>-.)
  <fis a>4-> <d' fis>-> <fis, a>-> <c fis>8-.( <d g>-.)
  <fis a>4-> q8-.( <g b>-.) <fis a>4-> <c fis>8-.(\pp <d g>-.)
  <fis a>4-> q8-.( <g b>-.) <fis a>4-> << \times 2/3 { fis8->( g fis) } \\ g,4 >>
  << {\appoggiatura \scaleDurations 1/2 {e'16[ fis]} e( d) e( fis) \appoggiatura\scaleDurations 1/2 { fis[ g] } \times 2/3 {fis8( g fis)} e16[( d) \appoggiatura \scaleDurations 1/2 { e[ fis] } e( fis)] \times 2/3 {fis8( g fis)}} \\ {g,4 g g g} >> 
  << {\appoggiatura \scaleDurations 1/2 { e'16[ fis] } e\( d e fis\) \acciaccatura e8*1/2 e8. d16 \acciaccatura d8*1/2 c2 } \\ {g4 \appoggiatura \scaleDurations 1/2 { b16[ c]} g8. c16 \appoggiatura \scaleDurations 1/2 { b16[ c b] } d2 }>>
}

pianoupper= \relative c'' {
  r16 a\(\p d a e a e a fis a fis a e a e a\)
  d\( a d a e a e a fis a fis a e a e a\)
  d,\( a' d, a' g a g a fis a fis a \appoggiatura \scaleDurations 1/2 { fis[ g] } fis e fis g\)
  <d fis>\p\( a' d, a' g a g a\) \appoggiatura \scaleDurations 1/2 { d,[ e]\pp } d\( cis d e\) cis-. bis-. cis8-> 
  d16\(\p a' d, a' g a g a\) \appoggiatura \scaleDurations 1/2 { d,[ e] } d cis d e \appoggiatura \scaleDurations 1/2 { cis[ d] } cis-. bis-. cis8-> 
  d16\p\( cis d\) e-. cis\( a d a\) d\(\prall cis d\) e-. cis\f bis-. cis8->
  d16 a' d, a' g8 a fis4 r_\markup{\italic rit.}
   \appoggiatura \scaleDurations 1/2 { fis'16[ g] }fis-.\pp_\markup{\italic "a tempo"} e-. d-. r \appoggiatura \scaleDurations 1/2 { b[ cis] } b-. a-. fis-. r fis'-.\prall e-. d-. r b-.\prall a-. cis-. e-.
  fis16\prall e d r f,\prall d d' r d\prall a fis' d a' fis g e
  fis16\prall-. e-. d-. r b-.\prall a-. fis-. r fis'16\prall-. e-. d-. r b-.\prall a-. cis-. e-.
  fis16\prall e d r f,\prall d d' r d\prall a fis' d a' fis g e
  fis16\prall-. e-. d-. r fis,\prall d b d a8 r r \acciaccatura a'8*1/2 a'8\(
  <a a,>\) \repeat unfold 3 {\acciaccatura a,8*1/2 a'4} \acciaccatura a,8*1/2 a'8[\( 
  a]\)  \acciaccatura a8*1/2 a,4 \acciaccatura a8*1/2 a,4 \acciaccatura a8*1/2 a'4.
}

pianolower= \relative c, {
  r1
  r
  r
  \repeat unfold 3 {
    r2 <d a'>4 q8 q8
  }
  r2 <d a'>8 q q4
  \repeat unfold 4 {
    q8 q q4 q8 q q4
  }
  q8 q8 q4~ q8 r8 r4
  q r q r
  r2 q2
}

music = <<
  \time 4/4
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
    \key d \major
    \violin
  }
  \new PianoStaff \with {
    %Slightly smaller staff, so it all fits in one page even with Mutopia's
    %rather large box at the bottom
    % -0.5 is enough for A4
    % -0.6 is necessary to fit it on one page with letter size paper
    fontSize = #-0.6
    \override StaffSymbol #'staff-space = #(magstep -0.6)  
  }
  <<
    \set PianoStaff.instrumentName = #"Piano"
    \set PianoStaff.midiInstrument = #"acoustic grand"
    \new Staff = "upper" {
      \clef treble
      \key d \major 
      \pianoupper
    }
    \new Staff = "lower" {
      \clef bass
      \key d \major
      \pianolower \bar "|."
    } 
  >>
>>

%pdf output
\score { 
  \music
  \layout{
    \context {
      \Score
      \override SpacingSpanner
      %This override fits the song on one A4-page, like the original
      #'common-shortest-duration = #(ly:make-moment 1 8)
      \override SpacingSpanner #'uniform-stretching = ##t        
    }  
  }
}

\include "articulate.ly"

%midi output where repeats work
\score {
  \unfoldRepeats \articulate
  \music
  \midi{}
}
