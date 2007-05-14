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

\version "2.6.3"
\header {
 mutopiatitle = "Six divertissements pour la guitarre, n�1 Minuetto"
 mutopiacomposer = "SorF"
 mutopiaopus = "O 2"
 mutopiainstrument = "Guitar"
 date = "1813"
 style = "Classical"
 maintainer = "Mark Van den Borre"
 maintainerEmail = "mark@markvdb.be"
 maintainerWeb = "http://markvdb.be"
 lastupdated = "2005/Aug/13"
 title 	= "Six divertissements pour la guitare"
 opus		= "Opus 2"
 instrument	= "Guitarre"
 source =	"ed. Simrock, Berlin"
 composer =	"Fernando Sor (1778-1839)"
 enteredby	= "Mark Van den Borre"
 
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

upperVoice = \relative c'''{
 \repeat volta 2 {
  g4 g g|									%1
  g2 fis4|									%2
  a a a|									%3
  a2 g4| 									%4
  b a g|									%5
  g fis e|									%6
  d c b|									%7
  <b g> <a fis> s|								%8
 }										%end 1st repeat

 \repeat volta 2 {
  d e fis|									%9
  g2 fis4|									%10
  d e fis|									%11
  g2 fis4|									%12
  d e fis|									%13
  g <f d>2|									%14
  <e c>4 <a e> <fis c>|								%15
  <fis c> <g b,> s|								%16
 }										%end 2nd repeat
}										%end upperVoice


middleVoice = \relative c''{
 \repeat volta 2 {
  \stemUp b4 b b|								%1
  c2.|										%2
  c4 c c|									%3
  c2 b4| 									%4
  g' fis e|									%5
  e d c|									%6
  s2.|										%7
  s2 r4|									%8
 }										%end 1st repeat

 \repeat volta 2 {
  \stemDown d4 cis c|								%9
  b cis d|									%10
  d cis c|									%11
  b <cis bes> <d a>|								%12
  d cis c|									%13
  s2.|										%14
  s2.|										%15
  s2 r4|									%16
 }										%end 2nd repeat
}										%end middleVoice

lowerVoice = \relative c''{
 \repeat volta 2 {
  \stemDown g4 d g|								%1
  a d,2|									%2
  d4 e fis|									%3
  g d g,| 									%4
  g'2.|										%5
  g2.|										%6
  <b g>4 <a c,> <g cis,>|							%7
  d2 s4|									%8
 }										%end 1st repeat

 \repeat volta 2 {
  d2.|										%9
  d2.|										%10
  d2.|										%11
  d2.|										%12
  d2 s4|									%13
  <b' g>4 <g b,>2\ff|								%14 facsimile: "FF" instead of "ff", left of b
  <g c,>4 <c a,> <a d,>|							%15
  g2 s4|									%16
 }										%end 2nd repeat
}										%end lowerVoice


\score {
 \header {
  piece = "Menuetto"
 }
 \context Staff=upper <<
  \time 3/4
  \key g \major
  \clef violin
  \set Staff.midiInstrument ="acoustic guitar (nylon)"
  \context Voice = one {
   \voiceOne
   \upperVoice
  }
  \context Voice = two {
   \voiceTwo
   \middleVoice
  }
  \context Voice = three {
   \voiceThree
   \lowerVoice
  }
  >>
 \midi { \tempo 4=84}
 \layout {}
}

%=============================================%
% 2. Valse
%=============================================%

% MACRO for hiding tuplet brackets and numbers
tupletNumbersOff = {
	\override TupletBracket #'bracket-visibility = ##f
	\override TupletBracket #'number-visibility = ##f
}

upperVoice = \relative c''{
 \tupletNumbersOff								%tweak to switch tuplet brackets and numbers off
 \repeat volta 2 {
  \times 2/3 {d16[( e d])} {b8 c}|						%1
  e4 d8|									%2
  fis \appoggiatura g32 fis16 e fis8|						%3
  g( b) d,| 									%4
  \times 2/3 {d16[( e d])} b8 c|						%5
  cis( d) g|									%6
  <d b> <c a> <b g>|								%7
  <a fis>4 r8|									%8
 }										%end 1st repeat

 \repeat volta 2 {
  c \appoggiatura d32 c16 b c8|							%9
  <b g> <d b>8. <b g>16|							%10
  c8 \appoggiatura d32 c16 b c8|						%11
  <b g> <d b>4|									%12
  <g b,>8 <fis c> <f d>|							%13
  <e c> <a e> r|								%14
  fis \appoggiatura g32 fis16 e fis8|						%15
  <g b,>4 r8|									%16
 }										%end 2nd repeat

 \repeat volta 2 {
  <b d,>4.^\markup \italic {dol} |						%17
  <g b,>4.|									%18
  e8 e16( fis) g8|								%19
  <d b>4 b8|									%20
  <b' d,>4.|									%21
  <g b,>4.|									%22
  e8 a a|									%23
  <d, fis,>4 r8|								%24
 }										%end 3rd repeat

 \repeat volta 2 {
  <c' a>4.|									%25
  <a fis>4.|									%26
  fis8 <fis c> <fis c>|								%27
  \appoggiatura a32 g16( fis) g a b8| 						%28
  <c a>4.|									%29
  <a fis>4.|									%30
  fis8 <fis c> <fis c>|								%31
  g4 r8|									%32
 }										%end 4th repeat

  \times 2/3 {d16[( e d])} {b8 c}|						%33 33 to 48 == 1 to 16
  e4 d8|									%34
  fis \appoggiatura g32 fis16 e fis8|						%35
  g( b) d,| 									%36
  \times 2/3 {d16[ e d]} b8 c|							%37
  cis( d) g|									%38
  <d b> <c a> <b g>|								%39
  <a fis>4 r8|									%40
  c \appoggiatura d32 c16 b c8|							%41
  <b g> <d b>8. <b g>16|							%42
  c8 \appoggiatura d32 c16 b c8|						%43
  <b g> <d b>4|									%44
  <g b,>8 <fis c> <f d>|							%45
  <e c> <a e> r|								%46
  fis \appoggiatura g32 fis16 e fis8|						%47
  <g b,>4 r8 \bar "||"|\pageBreak						%48
}										%end upperVoice

lowerVoice = \relative c''{
 \repeat volta 2 {
  \stemDown
  b8 g a|									%1
  c4 b8|									%2
  d, <c' a> <c a>|								%3
  <b g>4 r8|									%4
  b8 g a|									%5
  ais b4|									%6
  d,4.|										%7
  d4 s8|									%8
 }										%end 1st repeat

 \repeat volta 2 {
  << {\stemDown <a' d,,>8 <a d,> <a d,>} \\ {\stemUp d,,4.} >>|			%9
  g8 d' d|									%10
  <a' d,,> <a d,> <a d,>|							%11
  g, d' d|									%12
  <g g,> <g a,> <g b,>|								%13
  <g c,> <c a,> s|								%14
  << {\stemUp d,4.} \\ { d8 <c' a> <c a>} >>					%15
  g4 s8|									%16
 }										%end 2nd repeat

 \repeat volta 2 {
  g8 g16 g g8|									%17
  g8 g16 g g8|									%18
  <c g> <c g> <c g>|								%19
  g g g|									%20
  g g16 g g8|									%21
  g g16 g g8|									%22
  <cis g a,>4.|									%23
  d,8 d d|									%24
 }										%end 3rd repeat

 \repeat volta 2 {
  d d16 d d8|									%25
  d d16 d d8|									%26
  d <d a'> <d a'>|								%27
  <g b>4 r8|									%28
  d d16 d d8|									%29
  d d16 d d8|									%30
  d <d a'> <d a'>|								%31
  <g b>4 s8|									%32
 }										%end 4th repeat

  b8 g a|									%33
  c4 b8|									%34
  d, <c' a> <c a>|								%35
  <b g>4 r8|									%36
  b8 g a|									%37
  ais b4|									%38
  d,4.|										%39
  d4 s8|									%40
  << {\stemDown <a' d,,>8 <a d,> <a d,>} \\ {\stemUp d,,4.} >>|			%41
  g8 d' d|									%42
  <a' d,,> <a d,> <a d,>|							%43
  g, d' d|									%44
  <g g,> <g a,> <g b,>|								%45
  <g c,> <c a,> s|								%46
  << {\stemUp d,4.} \\ { d8 <c' a> <c a>} >>					%47
  g4 s8|									%48
}										%end lowerVoice


\score {
 \header { piece = "Valse" }
  \context Staff=upper <<
    \time 3/8
    \key g \major
    \clef violin
    \set Staff.midiInstrument ="acoustic guitar (nylon)"
    \context Voice = one {
        \voiceOne
	\upperVoice
    }
    \context Voice = two {
    	\voiceTwo
	\lowerVoice
    }
  >>
\midi { \tempo 4=84}
\layout {
  %linewidth = 455.244096\pt
}
}

%===============================================================================%
% 3. Andantino
%===============================================================================%

upperVoiceEight = \relative c'' {
  f8[ a e a]|									%1
  \appoggiatura g16 f8.. e32 d8 f|						%2
  e[ bes' g e]|									%3
  << {\stemUp d4} \\ {r8 \stemUp gis,}>> <cis a>8 a'|				%4 d and gis8 should point upwards, no luck forcing it
  f[ a e a]|									%5
  a16. gis32 g8 r f|								%6
  e[ f g e]|									%7
  %\partial 8*3 f r r|								%8
  f r r										%8
}

upperVoiceSixteen = \relative c'' {
  c'8|
  <a f>[ <a f> <a f> <a f>]|							%9
  g4. a16. g32|									%10
  f8[ fis g <d' gis,>]|								%11
  << {d4 <cis a>8 a|} \\ {s8 \stemUp g s4} >>					%12
  bes8[ cis, cis cis]|								%13
  << {d8.. e32 f8 fis\>} \\ {r8 \stemUp a,4 s8} >>|				%14 crescendo from fis to g in next measure invisible
  g'[ gis\> a\! cis,]|								%15 crescendo from gis to a should be above notes
  <e g,>4 <d f,>8|								%16
}

upperVoiceMinoreBeginning = \relative c''{
 \key d \minor
 \repeat volta 2 {
  \stemUp
  \partial 8*1 a'8^"6� Corde en Re"
  \upperVoiceEight
 }										%end 1st repeat

 \repeat volta 2 {
  %\partial 8*1 c'8|								%8 part 2
  \upperVoiceSixteen
 }										%end 2nd repeat
}

upperVoiceMinoreEnding = \relative c''{
 \key d \minor
 \upperVoiceEight
 \upperVoiceSixteen
 \bar "||"
}

upperVoiceMaggiore = \relative c''{
 \key d \major
 \repeat volta 2 {
  \override Voice.TextScript #'padding = #4.0					%tweak to keep "Maggiore" from interfering with notes
  \partial 8*1 a^"Maggiore"|							%16 part 2
  fis'[ e fis g]|								%17
  a4. d8|									%18
  d[ cis b cis]|								%19
  d4 a8 a|									%20
  fis[ e fis g]|								%21
  a4. a8|									%22
  g[ g fis fis]|								%23
 }
  \alternative { {e16 a \appoggiatura {cis32} b16 a gis a g a|} {e16 a \appoggiatura {cis16} b a gis[ a gis a]} }%24 end 3rd repeat

 \repeat volta 2 {
  cis8[ cis d d]|								%25
  g,4 fis8[ a]|									%26
  cis[ cis d d]|								%27
  g,[ fis e a]|									%28
  fis[ e fis g]|								%29
  a4 r8 a|									%30
  a g fis e|									%31
  e4 d8 a'|									%32
 }										%end 4th repeat
}										%end upperVoice

lowerVoiceEight = \relative c'' {
  d4 cis8 a|									%1
  r <a d,>16. <g e>32 f8 <a d,>|						%2
  <bes g>4 r8 g,|								%3
  << {\stemDown a4 s} \\ {r8 \stemDown f' e r} >>|				%4
  d'4 c|									%5
  <d bes> <c a>|								%6
  <bes g>8[ <a f> <d bes,> <bes c,>]|						%7
  <a f>[ <c a> <a f>]								%8 part 1
}

lowerVoiceSixteen = \relative c'' {
  c8|										%8 part 2
  r f,16. g32 a8 bes|\noPageBreak						%9
  << {\stemDown c4. <e cis>8} \\ {s8 f16 e32 d e8 s}>>|\noPageBreak		%10 facsimile error: f8 e16 d, this seems to be the most logical solution
  d[ <d c!> <d b> <f bes,>]|\noPageBreak					%11
  << {\stemDown a,4 e'8 r} \\ {r f s4} >>|\noPageBreak				%12
  r8 <bes, g>[ <bes g> <bes g>]|\noPageBreak					%13
  f8.. e32 d8 <es' c!>|\noPageBreak						%14
  <d b>8[ <d bes> <f a,> <g, a,>]|\noPageBreak					%15
  \partial 8*3 d[ a d,]\noPageBreak						%16 part 1
}

lowerVoiceMinoreBeginning = \relative c'' {
 \repeat volta 2 {
  \stemDown
  \partial 8*1 r8|								%upbeat
  \lowerVoiceEight
 }										%end 1st repeat

 \repeat volta 2 {
  \lowerVoiceSixteen
 }										%end 2nd repeat
}

lowerVoiceMinoreEnding = \relative c'' {
 \lowerVoiceEight
 \lowerVoiceSixteen
}

lowerVoiceMaggiore = \relative c''{
 \repeat volta 2 {
  \stemDown
  \partial 8*1 s8|								%16 part 2
  << {\stemDown d16 a cis a d a e' a,|} \\ {d,,2} >>				%17
  << {\stemDown fis''16 a, d a fis' a, fis' a,|} \\ {d,,2}>>			%18
  << {\stemDown <g'' e>16 a, <g' e> a, <g' e> a, <g' e> a,|} \\ {d,,2}>>	%19
  << {\stemDown <fis'' d>16 a, <fis' d> a, fis' a, fis' a,|} \\ {d,,2}>>	%20
  << {\stemDown d''16 a cis a d a e' a,|} \\ {d,,2} >>				%21
  << {\stemDown fis''16 a, d a fis' a, fis' a,|} \\ {d,,2} >>			%22
  << {\stemDown e''16 a, cis a d a d a|} \\ {a,2} >>				%23
 }										
 \alternative { {<cis' a,>8 r4 r8} {<cis a,>8 r4 r8} }				%24 end 3rd repeat

 \repeat volta 2 {
  << {\stemDown <g' e!>16 a, <g' e> a, <fis' d> a, <fis' d> a,|} \\ { a,2} >>	%25
  << {\stemDown <e'' cis>16 a, <e' cis> a, d a fis' a,|} \\ {a,2} >>		%26
  << {\stemDown <g'' e>16 a, <g' e> a, <fis' d> a, <fis' d> a,|} \\ {a,2} >>	%27
  << {\stemDown cis'16 a d a cis8 a|} \\ {a,2} >>				%28
  << {\stemDown d'16 a cis a d a e' a,|} \\ {d,,2} >>				%29
  << {\stemDown fis''16 a, d a fis d' c d|} \\ {d,,2} >>			%30
  << {\stemDown b''16 dis e b \stemUp a[ d] g,[ cis]|} \\ { g4 a8 a,} >>	%31
  d,16 cis'' g cis fis,8 r|							%32
 }										%end 4th repeat
}										%end lowerVoice


\score {
 \header { 
  piece = "Andantino"
  breakbefore = ##t
 }
  \context Staff=upper <<
    \time 2/4
    \clef violin
    \context Voice = one {
        \voiceOne
	\upperVoiceMinoreBeginning
	\upperVoiceMaggiore
	\upperVoiceMinoreEnding
    }
    \context Voice = two {
    	\voiceTwo
	\lowerVoiceMinoreBeginning
	\lowerVoiceMaggiore
	\lowerVoiceMinoreEnding
    }
  >>
\layout {
%  linewidth = 455.244096\pt
}
}

\score {
  \unfoldRepeats
  \context Staff=upper <<
    \time 2/4
    \clef violin
    \set Staff.midiInstrument ="acoustic guitar (nylon)"
    \context Voice = one {
        \voiceOne
        \transpose c c,								% a classical guitar sounds an octave lower than it is written
	\upperVoiceMinoreBeginning
        \transpose c c,
	\upperVoiceMaggiore
        \transpose c c,
	\upperVoiceMinoreEnding
    }
    \context Voice = two {
    	\voiceTwo
        \transpose c c,
	\lowerVoiceMinoreBeginning
        \transpose c c,
	\lowerVoiceMaggiore
        \transpose c c,
	\lowerVoiceMinoreEnding
    }
  >>
\midi { \tempo 4=84}
}

%====================================================================%
% 4. Menuetto
%====================================================================%

melody =  \relative c'' {
 \stemUp
 \repeat volta 2{
 c4 c c|
 c cis d|
 f f f|
 f2 <e c>4|
 <g e> e a|
 <d, b>2 <e c>4|
 g8.[ ( fis16)] <f! b,>4 <e c>|
 <e c> <d b> r|
 }

 \repeat volta 2{
 <d bes>4 <cis a> <e a,>|
 d4. e8 f4|
 <c aes> <b g> <d g,>|
 <c g>4. <d g,>8 <e g,>4|
 <g e> <g e> <g es>|
 <fis d>2 <g d>4|
 a e fis|
 <fis c> <g b,> \times 2/3 {  g8 f d }|
 c4 c c|
 c cis d|
 d d d|
 d dis( e)|
 e e e|
 e f fis|
 g8.[ c16] e,4 d8.[ e16]|
 <d f,>4 <c e,> r|
 }
}

middle =  \relative c' {
 \stemUp
 \repeat volta 2{
 s2.|
 s2.|
 s2.|
 d'4.. b16 s4|
 s2.|
 s2.|
 a4 s s|
 s2.|
 }

 \repeat volta 2{
 s2.|
 a2 a4|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 }
}

bass =  \relative c' {
 \stemDown
 \repeat volta 2 {
 <c e>4 <f d> <g e>|
 <a f>2.|
 <b g>4 <c a> <d b>|
 c g c,|
 r c' f,|
 g f e|
 d g c,|
 g2 s4|
 }

 \repeat volta 2 {
 g'2 g4|
 f4. e8 d4|
 f2 f4|
 e4. d8 c4|
 c' c c|
 c2 b4|
 <e c> <c c,> <c a d,>|
 g2 r4|
 <e c> <f d> <g e>|
 <a f>2.|
 <fis d>4 <g e> <a fis>|
 <b g>2.|
 <gis e>4 <a fis> <b gis>|
 <c a>2 <c aes>4|
 <e g,> c <b f g,>|
 c,2 s4|
 }
}

        
\score {
 \header { piece = "Menuetto" }
 \context Staff = "guitar" << 
  \time 3/4
  \context Voice = "upper" \melody
  \context Voice = "mid" \middle
  \context Voice = "lower" \bass
 >>
 \layout { }
 \midi { \tempo 4=76 }
}

%================================================================%
% 5. Valse
%================================================================%

melody =  \relative c'' {
 \stemUp
 \repeat volta 2 {
 g'16.^\markup {Moderato}[( e32]) c'8 c|		%1
 g16.[( e32]) c8 c|					%2
 d16.[( b32]) g8 b|					%3
 \appoggiatura {d16} c16 b c d e f|			%4
 g16.[ e32] c'8 c|					%5
 g16.[ e32] c8 c|					%6
 g16.[ d'32(] <f d>8) <e c>|				%7
 <d b>4 r8|						%8
 }

 \repeat volta 2 {
 d16.[ g,32] g'8 g|					%9
 g16.[ e32] c8 cis|					%10
 d16.[ g,32] g'8 g|					%11
 g16.[ e32] c8 g'|					%12
 c16 b a g f e|						%13
 f e d c b a|						%14
 \override Staff.NoteCollision #'merge-differently-dotted = ##t
 g16.[ c32] e8 <d f,>|					%15
 <c e, c> r r|						%16
 }

 \repeat volta 2 {
 <g' e>4.^\markup {\italic "dol."}|			%17
 <e c>4.|						%18
 <f d>8 \grace {g16} <f d>16 <e cis> <f d>8|		%19
 <d b>4.|						%20
 <e c>4.|						%21
 <f d>4.|						%22
 <d b>8 \grace {e16} <d b>16 <cis ais>16 <d b>8|	%23
 <e c!>4 r8|						%24
 }

 \repeat volta 2 {
 d4 g8|							%25
 d4 g8|							%26
 fis8 \grace {g16} fis16 e fis8|			%27
 g16( b) a g fis e|					%28
 d4 g8|							%29
 d4 g8|							%30
 fis \grace {g16} fis16 e fis8|				%31
 g4 r8|							%32
 }

 g16.[( e32]) c'8 c|					%33
 g16.[( e32]) c8 c|					%34
 d16.[( b32]) g8 b|					%35
 \grace {d16} c16 b c d e f|				%36
 g16.[ e32] c'8 c|					%37
 g16.[ e32] c8 c|					%38
 g16.[ d'32]( <f d>8) <e c>|				%39
 <d b>4 r8|						%40

 d16.[ g,32] g'8 g|					%41
 g16.[ e32] c8 cis|					%42
 d16.[ b32] g'8 g|					%43
 g16.[ e32] c8 g'|					%44
 c16 b a g f e|						%45
 f e d c b a|						%46
 g16.[ c32] e8 <d f,>|					%47
 <c e, c> r r \bar "||"					%48
}

bass = \new Voice  \relative c'' {
 \stemDown
 r8 <e c>8 <e c>|					%1
 r <e, c> <e c>|					%2
 r <f g,> <f g,>|					%3
 <e c>4 r8|						%4
 r8 <e' c> <e c>|					%5
 r <e, c> <e c>|					%6
 r b c|							%7
 g g' g|						%8

 <f b,>4.|						%9
 << {\stemDown c4.} \\ {\stemUp c8 \stemDown <e g>[ <e g>]} >>|			%10
 <f b,>4.|						%11
 <e c>4 r8|						%12
 <e' c> r r|						%13
 <a, f>4 r8|						%14
 g4 g,8|						%15
 s4.|							%16

 r8 c' c,|						%17
 r g' c,|						%18
 r g' g|						%19
 r g f|							%20
 r e a|							%21
 r f d|							%22
 r g g|							%23
 r g c,|						%24

 g'16 b d, b' d, b'|					%25
 g16 b d, b' d, b'|					%26
 a[ c] d,8 <c' a>|					%27
 <b g>4 r8|						%28
 g16 b d, b' d, b'|					%29
 g16 b d, b' d, b'|					%30
 a[ c] d,8 <c' a>|					%31
 g16 b d, g g,8|					%32

 r8 <e'' c>8 <e c>|					%33
 r <e, c> <e c>|					%34
 r <f g,> <f g,>|					%35
 <e c>4 r8|						%36
 r8 <e' c> <e c>|					%37
 r <e, c> <e c>|					%38
 r b c|							%39
 g g' g|						%40

 <f b,>4.|						%41
 <<{c4.} \\ {c8 <e g> <e g>}>>|				%42
 <f b,>4.|						%43
 <e c>4 r8|						%44
 <e' c> r r|						%45
 <a, f>4 r8|						%46
 g4 g,8|						%47
 s4.|							%48
 
}		

\score {
 \header { piece = "Valse" }
    \context Staff = "guitar" <<
      \time 3/8
      \context Voice = "upper" \melody
      \context Voice = "lower" \bass
      >>
  \layout { }
  \midi { }
}

%========================================================%
% 6. Siciliana
%========================================================%

melody =  \relative c'' {
 \set Staff.minimumVerticalExtent = #'(-10 . 10)
 \stemUp
 \key e \minor
 \repeat volta 2 {
  \partial 8 b8|
  \grace {e32([ fis)]} g8. fis16 e8 e dis b|
  e4 fis8\trill g8 r b,|
  <b' g>8. <a fis>16 <g e>8 <a fis>4 <a fis>8|
  \grace {a32([ g)]}<fis dis>4 r8 r4 b,8|
  g'8. fis16 e8 d4 d8|
  <d b>4 \grace {d16} <c a>8 <b g>4 <b gis>8|%EDIT d16 c slur in Simrock source
  <c a>8. <d b>16 <e c>8 <b g>4 <a fis>8|
  \partial 8*5 g4 d8 b8[] r8
 }
 
 \repeat volta 2 {
  \partial 8 d'8|
  b'8. c16 b8 a8. b16 a8|
  a4 gis8 e4 e8|
  a4 a8 b4 b8|
  \grace {a32[ b]} c4. r4 c8|%EDIT slur in Simrock source
  c8. a16 f8 f4 e8|
  dis4. e4 b8|
  a'8. b16 a8 g4 <b g>8|
  <fis dis>4 r8 r4 b,8|
  \grace {e32([ fis)]} g8. fis16\turn e8 e dis b|%LAYOUT TODO turn should be between and below g8 fis16
  e4 fis8 g8 r b,|
  <b' g>8. <a fis>16 <g e>8 <a fis>4 <a fis>8|
  \grace {a32([ g)]}<fis dis>4 r8 r4 fis8|
  gis4 gis8 a4 g8|
  \appoggiatura {g16} fis8. e16 fis8 g4 g8|
  f8. g16 f8 e4 dis8|
  \partial 8*5 e4 <g b,>8 <e g,>4|
 }

 \set Staff.printKeyCancellation = ##f
 %TODO allign "Maggiore" to the right of the rehearsal mark, above the sharps
 %\once \override Score.RehearsalMark #'self-alignment-X = #left
 \key e \major \repeat volta 2  \mark \markup { Maggiore }{
  \partial 8 b8|
  \grace {e32\p([ fis)]} gis8. fis16 e8 \grace {e32([ fis)]} gis8. fis16 e8|
  b'4. b8. gis16 e8|
  fis8. gis16 fis8 fis dis! b|
  e4 gis8 b,4 b8|
  \grace {e16([ fis)]} gis8. fis16 e8 \grace {e16([ fis)]} gis8. fis16 e8|
  b'4. ~ b4 ais8|
  b4 cis8 fis,8. gis16 ais8|
  <b dis,>4 <a! fis>8 <gis e>4 <fis dis a>8|
  \grace {e32\p([ fis)]} gis8. fis16 e8 \grace {e32([ fis)]} gis8. fis16 e8|
  b'4. b8. gis16 e8|
  fis8. gis16 fis8 fis dis! b|
  e4 gis8 b,4 b8|
  \grace {e32([ fis)]} gis8. fis16 e8 \grace {e32([ fis)]} gis8. fis16 e8|
  b'4. ~ b4 ais8|
  b4 cis8 fis,8. gis16 ais8|
  b4 r8 r4 b,8|
  \grace {fis'32[( gis])} a8. gis16 fis8 \grace {fis32[( gis])} a8. gis16 fis8|
  e4. b4 b8|
  \grace {fis'32[( gis])} a8. gis16 fis8 \grace {fis32[( gis])} a8. gis16 fis8|
  e4 r8 r4 e8|
  a8. b16 a8 gis4 gis8|
  fisis!4. r4 gis8|%TODO double sharp doesn't render: lilypond bug?
  a8. b16 a8 gis4 gis8|
  g4 s8 s4 cis8|
  g4 s8 s4 cis8|
  fis,4 s8 s4 cis'8|
  <fis, dis!>4 s8 s4 c'8|
  <fis, dis>4 s8 s4 c'8|
  b8. e,16 fis8 gis8. a16 fis8|
  \partial 8*5 <e gis,>4 r8 r4|
 }

 \key e \minor
  \partial 8 b8|
  \grace {e32([ fis)]} g8. fis16 e8 e dis b|
  e4 fis8\trill g8 r b,|
  <b' g>8. <a fis>16 <g e>8 <a fis>4 <a fis>8|
  \appoggiatura {a32([ g)]}<fis dis>4 r8 r4 b,8|
  g'8. fis16 e8 d4 d8|
  <d b>4 \grace {d16} <c a>8 <b g>4 <b gis>8|
  <c a>8. <d b>16 <e c>8 <b g>4 <a fis>8|
  g4 d8 b8 r8 d'8|
  b'8. c16 b8 a8. b16 a8|
  a4 gis8 e4 e8|
  a4 a8 b4 b8|
  \grace {a32[ b]} c4. r4 c8|
  c8. a16 f8 f4 e8|
  dis4. e4 b8|
  a'8. b16 a8 g4 <b g>8|
  <fis dis>4 r8 r4 b,8|
  \grace {e32([ fis)]} g8. fis16 e8 e dis b|
  e4 fis8 g8 r b,|
  <b' g>8. <a fis>16 <g e>8 <a fis>4 <a fis>8|
  \grace {a32([ g)]}<fis dis>4 r8 r4 fis8|
  gis4 gis8 a4 g8|
  \grace {g16(} fis8.) e16 fis8 g4 g8|
  f8. g16 f8 e4 dis8|
  e4 \grace {fis16(}g8) e4 \grace {ais16(}b8)|
  e,4 g8 fis8.\trill g16 fis8|
  e4 \grace {fis16(}g8) e4 \grace {dis'16(}e8)|
  e,4 g8 fis8. g16 fis8|
  <e b g>4. s4 <g b, g>8|
  <e b g>4 s8 s4 <g b, g>8|
  <e b g e,>4 s8 s4.|
  s4. <e b g e,>4.\pp ^\markup { Naturel }|
  <e b g e e,>2.\bar "||"
}

middle = \new Voice \relative c'' {
 \stemUp
 \repeat volta 2 {
  \partial 8 s8|
  s2.|
  s2.|
  s2.|
  s2.|
  s4. a8. b16 c8|
  s2.|
  s2.|
  \partial 8*5 s4. s4
 }
 
 \repeat volta 2 {
  \partial 8 s8|
  s2.|
  e,4. gis4.|
  c8. e16 e8 d8. e16 d8|
  c8. e16 c8 s4.|
  s2.|
  s2.|
  s2.|
  b,4. s4.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  \partial 8*5 s4. s4
 }
 
 \repeat volta 2 {
  \partial 8 s8|
  s2.|
  s2.|
  b'4 b8 b4 s8|
  s2.|
  s2.|
  \stemDown s4 fis'8 eis4 s8|
  s4 <gis e>8  s4.|
  s2.|
  s2.|
  s2.|
  \stemUp b,4 b8 b4 s8|
  s2.|
  s2.|
  \stemDown s4 fis'8 s4.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  e4 e8 e4 e8|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  s2.|
  \partial 8*5 s4 <b gis>8 <gis e>4
 }

 \partial 8 s8
 s2.|
 s2.|
 s2.|
 s2.|
 s4. \stemUp a8. b16 c8|
 s2.|
 s2.|
 s2.|
 s2.|
 e,4. gis4.|
 c8. e16 c8 d8. e16 d8|
 c8. e16 c8  s4.|
 s2.|
 s2.|
 s2.|
 b,4. s4.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s2.|
 s4. b'4 b8|
 s2.|
 s2.|
 e,,4. e4 s8|
 e4. e4 s8|
 s2.|
 s2.|
 s2.|
}

bass = \new Voice  \relative c'' {
 \stemDown
 \repeat volta 2 {
  \partial 8 r8|
  <b g e,>4 <b g>8 <a fis>4 <a fis>8|
  <g e>4 <b dis,>8 <b e,>8 r r|
  e,,4 e'8 a,4 <c' a>8|
  b4 b8 b,4 r8|
  <b' g e,>4 <b g>8 fis4 fis8|
  g4 dis8 e4 d8|
  c8. b16 a8 d4 d8|
  \partial 8*5 g,4 b8 g8[] r8
 }
 
 \repeat volta 2 {
  \partial 8 r8|
  <d'' g,>4 <d g,>8 <d f,>4 <d f,>8|
  e, <d' b> <d b> gis, <d' b> <d b>|
  a4 a8 gis4 e,8|
  a4 a'8 a,4 r8|
  a4 <c' a>8 <c a>4 <c a>8|
  <c a>4 <c a>8 <b g>4 r8|
  <dis b fis>4 <dis b fis>8 <e b e,>4 <g, e,>8|
  b, ais' b b,4 r8|
  e,4 <b'' g>8 <a fis>4 <a fis>8|
  <g e>4 <b dis,>8 <b e,>4 r8|
  e,,4 e'8  a,4 <c' a>8|
  b4 b8 b,4 r8|
  #(set-accidental-style 'modern) <d' b e,,>4. #(set-accidental-style 'default)<cis a a,>4.|
  <c a d,>4. <b g>4 <d b g,>8|
  <c a a,>4 <c a a,>8 <b g b,>4 <a fis b,>8|
  \partial 8*5 <g e>4 e8 e,4
 }

 \repeat volta 2 {
  \partial 8 r8|
  <b'' gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e,>8|
  <b gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e,>8|  
  <a e,>4 <a e,>8 <a e,>4 <a e,>8|
  <gis e,>4 <b e,,>8 <gis e,>4 <gis e,>8|
  <b gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e>8|
  <fis dis>4 d8 cis4 <e' cis fis,>8|
  <dis b gis>4 e,8 <dis' b fis>4 <e cis fis,>8|
  b4 b8 b4 b,8|
  <b' gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e,>8|
  <b gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e,>8|  
  <a e,>4 <a e,>8 <a e,>4 <a e,>8|
  <gis e,>4 <b e,,>8 <gis e,>4 <gis e,>8|
  <b gis e,>4 <b gis e,>8 <b gis e,>4 <b gis e>8|
  <fis dis>4 d8 <eis' cis,>4 <e cis fis,>8|
  <dis b gis>4 <gis e e,>8 <dis b fis>4 <e cis fis,>8|
  <dis b>4 b8 b4 b8|
  <dis! a fis b,>4 <dis a b,>8 <dis a b,>4 <dis a b,>8|
  <gis, b,>4 <gis b,>8 <gis b,>4 <gis b,>8|
  <dis'! a b,>4 <dis a b,>8 <dis a b,>4 <dis a b,>8|
  <gis, e,>4 e8 e4 e8|
  <e' cis>4 <e cis>8 <e b>4 <e b>8|
  ais,4. r4 b8|
  <e cis>4 <e cis>8 <e b>4 <e b>8|
  <e ais,>4 r8 r4 r8|
  <e ais,>4 r8 r4 r8|
  <e ais,>4 r8 r4 r8|
  a,!4 r8 r4 r8|
  a4 r8 r4 r8|
  <b gis>4 <cis a>8 <e b>4 <dis a b,>8|
  \partial 8*5 e,,4. r4
 }

  \partial 8 r8|
  <b'' g e,>4 <b g>8 <a fis>4 <a fis>8|
  <g e>4 <b dis,>8 <b e,>8 r r|
  e,,4 e'8 a,4 <c' a>8|
  b4 b8 b,4 r8|
  <b' g e,>4 <b g>8 fis4 fis8|
  g4 dis8 e4 d8|
  c8. b16 a8 d4 d8|%EDIT Added d4.
  g,4 b8 g8[] r8 r8|
  <d'' g,>4 <d g,>8 <d f,>4 <d f,>8|
  e, <d' b> <d b> gis, <d' b> <d b>|
  a4 a8 gis4 e,8|
  a4 a'8 a,4 r8|
  a4 <c' a>8 <c a>4 <c a>8|
  <c a>4 <c a>8 <b g>4 r8|
  <dis b fis>4 <dis b fis>8 <e b e,>4 <g, e,>8|
  b, ais' b b,4 r8|
  e,4 <b'' g>8 <a fis>4 <a fis>8|
  <g e>4 <b dis,>8 <b e,>4 r8|
  e,,4 e'8  a,4 <c' a>8|
  b4 b8 b,4 r8|
  #(set-accidental-style 'modern) <d' b e,,>4. #(set-accidental-style 'default)<cis a a,>4.|
  <c a d,>4. <b g>4 <d b g,>8|
  <c a a,>4 <c a a,>8 <b g b,>4 <a fis b,>8|
  <g e,>4 <b g e,>8 <b g e,>4 <b g e,>8|
  <b g e,>4 <b g e e,>8 <a dis, e,>4 <a dis, e,>8|
  <b g e e,>4 <b g e e,>8 <b g e,>4 <b g e,>8|
  <b g e,>4 <b g e e,>8 <b a dis, e,>4 <b a dis, e,>8|
  e,,8. ais16 b8 e,4 e'8_\markup { Perdendosi }|
  e,8. ais16 b8 e,4 e'8|
  s4 b'8_\markup { Armonica } e g b|
  e4 r8 s4.|
  s2.
}		

\score {
 \header { 
  piece = "Siciliana"
  breakbefore = ##t
 }
 \context Staff = "guitar" <<
  \time 6/8
  \context Voice = "upper" \melody
  \context Voice = "inbetween" \middle
  \context Voice = "lower" \bass
 >>
 \layout {
 }
 \midi {}
}
