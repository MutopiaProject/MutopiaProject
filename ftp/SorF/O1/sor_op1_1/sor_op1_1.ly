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

\version "2.18.2"
\header {
  mutopiatitle = "Divertissements pour la guitare, n°1 Andante"
  mutopiacomposer = "SorF"
  mutopiaopus = "O 1.1"
  mutopiainstrument = "Guitar"
  mutopiasource = "Danish Royal Library early 19th Century edition"
  moreInfo = "<p>The maintainer has created MP3 and OGG Vorbis audio files from the MIDI output (which is available above). These are computer generated but will probably sound better than playing the MIDI file on your own system, depending on your setup. Download them:</p><ul><li><a href=\"../ftp/SorF/O1/sor_op1_1/sor_op1_1.mp3\">sor_op1_1.mp3</a></li><li><a href=\"../ftp/SorF/O1/sor_op1_1/sor_op1_1.ogg\">sor_op1_1.ogg</a></li></ul>"
  date = "1820s"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  title 	= "Six divertissements pour la guitare"
  opus		= "Opus 1.1"
  instrument	= "Guitarre"
  meter		= "Andante"
  subtitle = 	"1. Andante"
  source =	"Golden Music Press/GFA/Frederic Noad facsimile edition"
  composer =	"Fernando Sor"
  enteredby	= "Mark Van den Borre"

 footer = "Mutopia-2015/09/06-413"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper{
  top-margin = 8 \mm
  bottom-margin = 10 \mm
  top-markup-spacing.basic-distance = #6 %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #7 %-dist. from header/title to first system
  system-system-spacing.basic-distance = #18
  top-system-spacing.basic-distance = #12
}



upperVoice =  \relative c' {
 \repeat volta 2 {
  b4 b c|									%1
  d4.. e16 d4|									%2
  <e c> <fis d> <g e>|								%3
  <fis d>
%  \once \override Slur.attachment-offset = #'((0 . -0.4) . (-0.6 . -1.5))	%tweak slur
  \grace fis16_( <e c>8.) d16 <d b>4|						%4 facsimile: grace fis slurs to e, not c
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

lowerVoice =  \relative c {
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
  s2.|										%10
 }										%end 1st repeat
 \repeat volta 2 {
  fis,,8[_\markup \italic "dol" d' fis, d' fis, d']|				%11
  <g, g'>4 c\rest c\rest|									%12 corrected: facsimile says e
  fis,8[ d' fis, d' fis, d']|							%13
  g,4 c\rest c\rest |									%14
  b8\rest f'[ e d c b]|								%15
  a4 c\rest fis|                                    %16
  g8. c,16 d4 d|                                    %17
  g,2 s4|									%18
 }										%end 2nd repeat
}										%end lowerVoice

middleVoice =  \relative c {
 \repeat volta 2 {
  \once\shiftOn \stemUp g'8[ d] \stemDown  g[ d a' d,]|					%1
  b'8[ g] b[ g16 c]  b8[ g]|                %2
  s2.|										%3
  s2.|										%4
  s2.|										%5
  s4 \stemUp c s|                           %6
  s2.|										%7
  s4 c s4|									%8
  s2.|										%9
  s2.|										%10
 }										%end 1st repeat

 \repeat volta 2 {
  s2.|										%11
  s2.|										%12
  s2.|										%13
  s2.|										%14
  s2.|										%15
  s2.|										%16
  s2.|										%17
  s2.|										%18
 }										%end 2nd repeat
}										%end middleVoice

\score {
  \new Staff = "upper" \with {
    midiInstrument = #"acoustic guitar (nylon)"
    } <<
    \time 3/4
    \key g \major
    \clef "treble_8"
    \new Voice = "one" {
        \voiceOne
	\upperVoice
    }
    \new Voice = "two" {
        \voiceTwo
	\middleVoice
    }
    \new Voice = "three" {
    	\voiceThree
	\lowerVoice
    }
>>

  \midi {
    \tempo 4 = 84
    }


\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
%  line-width = 455.244096\pt
%  textheight = 24.0 \cm    % for A4 paper
  %textheight = 22.2 \cm    % for Letter paper
}
}
