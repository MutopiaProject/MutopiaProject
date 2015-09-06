\version "2.16.1"
\header {
  mutopiatitle = "Divertissements pour la guitare, n°5.1"
  mutopiacomposer = "SorF"
  mutopiaopus = "O 1.5.1"
  mutopiainstrument = "Guitar"
  mutopiasource = "Danish Royal Library early 19th Century edition"
  date = "1820s"
  source = "Golden Music Press/GFA/Frederic Noad facsimile edition"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  moreInfo = "<p>The maintainer has created MP3 and OGG Vorbis audio files from the MIDI output (which is available above). These are computer generated but will probably sound better than playing the MIDI file on your own system, depending on your setup. Download them:</p><ul><li><a href=\"../ftp/SorF/O1/sor_op_1_5_1/sor_op_1_5_1.mp3\">sor_op_1_5_1.mp3</a></li><li><a href=\"../ftp/SorF/O1/sor_op_1_5_1/sor_op_1_5_1.ogg\">sor_op_1_5_1.ogg</a></li></ul>"
  filename = "sor_op1_5_1.ly"
  dedication = "Composés et dédiés à Mrs Davenport"
  title = "Six divertissements pour la guitare"
  subtitle = "n°5.1: Thema"
  opus = "Opus 1 n°5.1"
  instrument = "Guitarre"
  meter = "Andante sostenuto"
  %subtitle = "5. Thema"
  composer = "Fernando Sor (1778-1839)"
  enteredby = "Mark Van den Borre"

 footer = "Mutopia-2013/03/23-455"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

upperVoice =  \relative c' {
 \repeat volta 2 {
 \partial 4 <e' c>8 <g b,>|			%1
 \grace g16 <f a,>8[ r16 <e g,>] <d f,>8 <b g g,>|%slur between grace note and f missing
 <c e, c> r <c' e, c> <b g>|		%3
 \voiceOne <a f>[ r16 <g e>] <f d>8 <e c>|	%4 16th rest position too low
 <d b> r <e c> <g b,>|				%5
 \grace g16 <f a,>8[ r16 <e g,>] <d f,>8 <b g>|	%6
 \oneVoice <c e, c> r8 <c' e, c> <b d, gis,>|	%7
 <a c, a>[ r16 g] <fis c d,>8 <a c, d,>|	%8
 <g b, g,> r8 }

 \repeat volta 2 {
 <g d b g>_\markup {\italic cres} <a fis c g>| %9
 <b f d g,>[ r16 <c e, c>] <d g, f b,>8\f <e g, e c>|%10 facsimile says "f" instead of "F"
 <f d, b g> r <e c>\p <b gis>|		%11
 <c a>[ r16 <gis e>] <a f>8 <f d f,>|	%12
 <d b g>4 <e c c,>8 <g bes, e,,>|	%13
 \grace g16 \voiceOne <f a,>8[ r16 <e g,>] <d f,>8 <b f>|	%14
 \oneVoice <c e, c> r <gis' d b e,> <a c, f,>16 r|%15
 \voiceOne <b f d>8\noBeam \oneVoice <c e, c a>16. <a es c fis,>32 <g e c g>8 <b, f g,>|%16
 <c e, c> r }			%17
 
}

lowerVoice =  \relative c'' {
 \voiceTwo
 \partial 4 s4|	%1
 s2|			%2
 s2|			%3
 r8 g b, c|		%4
 g s c c|		%5
 c r f, g|		%6
 s2|			%7
 s|			%8
 s|			%9
 s|			%10
 s|			%11
 s|			%12
 s|			%13
 f8 r g g|		%14
 s2|			%15
 g'16 gis s4.|	%16
 s4			%17
}     

\score {
 \context Staff <<
  \time 2/4
  \upperVoice
  \lowerVoice
  >>
  \layout{}
  \midi{}
} 
				
