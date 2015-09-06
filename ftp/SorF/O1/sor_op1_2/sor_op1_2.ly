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
  mutopiatitle = "Divertissements pour la guitare, n°2 Waltz"
  mutopiacomposer = "SorF"
  mutopiaopus = "O 1.2"
  mutopiainstrument = "Guitar"
  mutopiasource = "Danish Royal Library early 19th Century edition"
  moreInfo = "<p>The maintainer has created MP3 and OGG Vorbis audio files from the MIDI output (which is available above). These are computer generated but will probably sound better than playing the MIDI file on your own system, depending on your setup. Download them:</p><ul><li><a href=\"../ftp/SorF/O1/sor_op1_2/sor_op1_2.mp3\">sor_op1_2.mp3</a></li><li><a href=\"../ftp/SorF/O1/sor_op1_2/sor_op1_2.ogg\">sor_op1_2.ogg</a></li></ul>"
  date = "1820s"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  title 	= "Six divertissements pour la guitare"
  opus		= "Opus 1.2"
  instrument	= "Guitarre"
  meter		= "Allegretto"
  subtitle = 	"2. Waltz"
  source =	"Golden Music Press/GFA/Frederic Noad facsimile edition"
  composer =	"Fernando Sor"
  enteredby	= "Mark Van den Borre"

 footer = "Mutopia-2015/09/06-452"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

upperVoice =  \relative c'{
 \repeat volta 2 {								%begin repeat #1
  \partial 8*1 \stemDown d'8|							%upbeat
  \stemUp b16. d32  g8[ g]|							%1
  g16 d  b8[ <d b>]|								%2
  <c a> \grace d16 \slurDown <c a>16( <b g>) <c a>8|				%3
  <b g> <c a> <cis ais>|							%4
  \slurUp \tuplet 3/2 {d16( e  d)}  g8[ g]|					%5
  g16. d32  b8[ d]|								%6
  cis[ \grace d16 \slurDown cis16(  b) cis8]|					%7
  <d fis,>r8									%8.1
  }										%end repeat #1
  
 \repeat volta 2 {								%begin repeat #2
  \stemDown d|									%8.2
  \stemUp c!16. fis32  a8[ fis]|						%9
  g4 d8|									%10
  c16. fis32  a8[ c,]|								%11
  g'4 d8|									%12
  d16. g,32  g'8[ g]|								%13
  e16. g,32  g'8[ g]|								%14
  <b, g> <c a> <a fis>|								%15
  <g g,> r8									%16.1
 }										%end repeat #2
  
 \repeat volta 2 {								%begin repeat #3
  \stemDown d'16 b|								%16.2
  g' d b' g d b|								%17
  \stemUp g b d, b' g b|							%18
  a c fis, c' d, c'|								%19
  g b d, d' b d|								%20
  \stemDown g d b' g d b|							%21
  \stemUp g b d, b' g b|							%22
  a c fis, a d, fis|								%23
  g8 r8										%24.1
 }										%end repeat #3
  
 \repeat volta 2 {								%begin repeat #4
  g16 b|									%24.2
  fis a d, a' a c|								%25
  g b d, b' b d|								%26
  a c d, c' c e|								%27
  b d g, d' e g|								%28
  dis fis e g c, e|								%29
  b dis c e a, c|								%30
  g b a c fis, a|								%31
  g8 r										%32.1
 }										%end repeat #4
 
 \repeat volta 2 {								%begin repeat #5
  \stemDown d'8 |								%32.2
  \stemUp b16. d32  g8[ g]|							%33
  g16 d  b8[ <d b>]|								%34
  <c a> \grace d16 \slurDown <c a>16( <b g>) <c a>8|				%35
  <b g> <c a> <cis ais>|							%36
  \tuplet 3/2 {d16 e d}  g8[ g]|							%37
  g16. d32  b8[ d]|								%38
  cis[ \grace d16 \slurDown cis16(  b) cis8]|					%39
  <d fis,>r8									%40.1
 }										%end repeat #5
  
 \repeat volta 2 {								%begin repeat #6
  \stemDown d|									%40.2
  \stemUp c16. fis32  a8[ fis]|							%41
  g4 d8|									%42
  c16. fis32  a8[ c,]|								%43
  g'4 d8|									%44
  d16. g,32  g'8[ g]|								%45
  e16. g,32  g'8[ g]|								%46
  <b, g> <c a> <a fis>|								%47
  <g g,> r8									%48.1
 }										%end repeat #6
}

lowerVoice =  \relative c'{
 \partial 8*1 s8|								%upbeat
 \stemDown g'4 r8|								%1
 g4 r8|										%2
 d4 r8|										%3
 g,8 r r|									%4
 <g' b>4.|									%5
 g4 r8|										%6
 <g a,>4.|									%7
 d8 r8 s8|									%8
 d4 <a' c>8|									%9
 <b g> <c a> b|									%10
 d,4 r8|									%11
 <b' g> <c a> b|								%12
 b,4 r8|									%13
 c4 r8|										%14
 d4 r8|										%15
 s4.|										%16
 s4.|										%17
 s4.|										%18
 s4.|										%19
 s4.|										%20
 s4.|										%21
 s4.|										%22
 s4.|										%23
 s4 g8|										%24
 fis d a'|									%25
 g d b'|									%26
 a d, c'|									%27
 b g e'|									%28
 dis e c|									%29
 b c c,|									%30
 d a' fis|									%31
 s4 s8|										%32
 \stemDown g4 r8|								%33
 g4 r8|										%34
 d4 r8|										%35
 g,8 r r|									%36
 <g' b>4.|									%37
 g4 r8|										%38
 <g a,>4.|									%39
 d8 r8 s8|									%40
 d4 <a' c>8|									%41
 <b g> <c a> b|									%42
 d,4 r8|									%43
 <b' g> <c a> b|								%44
 b,4 r8|									%45
 c4 r8|										%46
 d4 r8|										%47
}

\score {
 \context Staff = "guitar"  <<
  \time 3/8
  \key g \major
  \clef violin 
  \context Voice = "one" {
   \voiceOne
   \upperVoice
  }
  \context Voice = "two" {
   \voiceTwo
   \lowerVoice
  }
>>

  \midi {
    \tempo 4. = 60
    }


\layout {}
}
