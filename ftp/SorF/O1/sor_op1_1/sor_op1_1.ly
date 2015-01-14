%{
This document aims for a clean and consistent LilyPond editing style:
 * comments on 10 tabs (further if necessary)
 * line numbers at end of line
 * brackets documented at end of line
 * differences from the facsimile documented at end of line
 * ugly tweaks documented at end of line (look for %tweak)

I try to keep this file portable to future LilyPond versions. Therefore, I limit layout tweaks to a minimum.

Enjoy this music!

Mark Van den Borre <mark@markvdb.be>
%}

\version "2.18.0"
\header {
  mutopiatitle = "Divertissements pour la guitare, n°1 Andante "
  mutopiacomposer = "SorF"
  mutopiaopus = "O 1.1"
  mutopiainstrument = "Guitar"
  date = "1820s"
  source = "Golden Music Press/GFA/Frederic Noad facsimile edition"
  style = "Classical"
  copyright = "Creative Commons plus audio permission"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  lastupdated = "2004/May/3"
  filename	= "sor_op1_1.ly"
  title 	= "Six divertissements pour la guitare"
  opus		= "Opus 1.1"
  instrument	= "Guitarre"
  meter		= "Andante"
  subtitle = 	"1. Andante"
  source =	"Golden Music Press/GFA/Frederic Noad facsimile edition"
  composer =	"Fernando Sor"
  enteredby	= "Mark Van den Borre"
  footer = 	"Mutopia-2004/05/03-413"
}

upperVoice =  \relative c''{
 \repeat volta 2 {
  b4 b c|									%1
  d4.. e16 d4|									%2
  <e c> <fis d> <g e>|								%3
  <fis d> 
%  \once \override Slur.attachment-offset = #'((0 . -0.4) . (-0.6 . -1.5))	%tweak slur
  \grace fis16( <e c>8.) d16 <d b>4|						%4 facsimile: grace fis slurs to e, not c
  <g b,><b b,> <d b,>|								%5
  fis,4. \slurDown \tuplet 3/2 {g16( fis  e)} <fis c>8[ fis]|			%6
  <g b,>4 <b b,> <d b,>|							%7
  <fis, c>4. \tuplet 3/2 {g16( fis  e)}  fis8[ fis]|				%8
  <g b, g e>4 r8<cis, g a,>[ <cis g a,><cis g a,>]|				%9
  <d fis, d>4<d fis, d> r4|							%10
 }										%end 1st repeat
 
 \repeat volta 2 {
  <c! a>4. \grace d16 <c a>16<b gis> <c a>8<c a>|				%11
  b g' <fis d> <e c> <d b> <cis! ais!>|						%12
  <c! a!>4. <c a>16<b gis> <c a>8<c a>|						%13 corrected: facsimile says g
  <b g> g' <fis d> <e c> <d b> <c a>|						%14
  <b gis>4<b gis>4<b gis>4|							%15
  <c a>8.<d b>16 <e c>4 r8. <e c>16|						%16 corrected: facsimile says <e c>8
  <d b g>8.<c a c,>16 <b g d>4 <a fis d>|					%17
  <a fis c><g b,>r|								%18
 }										%end 2nd repeat
}										%end upperVoice

lowerVoice =  \relative c'{
 \repeat volta 2 {
  \stemDown g2.|								%1
  g2.|										%2
  g'8[ g g g g g]|								%3
  g[ g g g] g4|									%4
  g8[\f d g d g d]|								%5
  <c' a>[ d, a' d, a' d,]|							%6
  g[ d g d g d]|								%7
  a'[ d, a' d,] <c' a>[ <c a d,>]|						%8
  s2.|										%9
  s2.||										%10
 }										%end 1st repeat
 \repeat volta 2 {
  fis,,8[_\markup \italic "dol" d' fis, d' fis, d']|				%11
  <g, g'>4 r r|									%12 corrected: facsimile says e
  fis8[ d' fis, d' fis, d']|							%13
  g,4 r r|									%14
  r8  f'[ e d c b]|								%15
  a4 r fis'|									%16
  g8. c,16 d4 d|								%17
  g,2 s4||									%18
 }										%end 2nd repeat
}										%end lowerVoice

middleVoice =  \relative c'{
 \repeat volta 2 {
  \once\shiftOn \stemUp g'8[ d] \stemDown  g[ d a' d,]|					%1
  b'8[ g] b[ g16 c]  b8[ g]|							%2
  s2.|										%3
  s2.|										%4
  s2.|										%5
  s4 \stemUp c s|								%6
  s2.|										%7
  s4 c s4|									%8
  s2.|										%9
  s2.||										%10
 }										%end 1st repeat
 
 \repeat volta 2 {
  s2.|										%11
  s2.|										%12
  s2.|										%13
  s2.|										%14
  s2.|										%15
  s2.|										%16
  s2.|										%17
  s2.||										%18
 }										%end 2nd repeat
}										%end middleVoice

\score {
  \context Staff = "upper"  <<
    \time 3/4
    \key g \major
    \clef violin 
    \context Voice = "one" {
        \voiceOne
	\upperVoice
    }
    \context Voice = "two" {
        \voiceTwo
	\middleVoice
    }
    \context Voice = "three" {
    	\voiceThree
	\lowerVoice
    }
>>

  \midi {
    \tempo 4 = 84
    }


\layout {
%  line-width = 455.244096\pt
%  textheight = 24.0 \cm    % for A4 paper
  %textheight = 22.2 \cm    % for Letter paper
}
}
