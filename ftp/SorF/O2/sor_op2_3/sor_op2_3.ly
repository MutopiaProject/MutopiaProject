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

\version "2.4.2"
\header {
 mutopiatitle = "Six divertissements pour la guitarre, n°3 Andantino"
 mutopiacomposer = "SorF"
 mutopiaopus = "O 2.3"
 mutopiainstrument = "Guitar"
 date = "1813"
 source = "Golden Music Press/GFA/Frederic Noad facsimile of Meissonier edition"
 style = "Classical"
 maintainer = "Mark Van den Borre"
 maintainerEmail = "mark@markvdb.be"
 maintainerWeb = "http://markvdb.be"
 lastupdated = "2004/Dec/29"
 filename	= "sor_op2_3.ly"
 title 	= "Six divertissements pour la guitare"
 opus		= "Opus 2.3"
 instrument	= "Guitarre"
 meter		= ""
% footer		= ""
 subtitle = 	"3. Andantino"
 source =	"Golden Music Press/GFA/Frederic Noad facsimile edition"
 composer =	"Fernando Sor"
 enteredby	= "Mark Van den Borre"
 copyright = "Creative Commons Attribution-ShareAlike 2.0"
 footer = "Mutopia-2004/12/29-515"
 tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright "+ \maintainer + " 2004.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

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
  \partial 8*1 a'8^"6\° Corde en Re"
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
  r f,16. g32 a8 bes|								%9
  << {\stemDown c4. <e cis>8} \\ {s8 f16 e32 d e8 s}>>|				%10 facsimile error: f8 e16 d, this seems to be the most logical solution
  d[ <d c!> <d b> <f bes,>]|							%11
  << {\stemDown a,4 e'8 r} \\ {r f s4} >>|					%12
  r8 <bes, g>[ <bes g> <bes g>]|							%13
  f8.. e32 d8 <es' c!>|								%14
  <d b>8[ <d bes> <f a,> <g, a,>]|						%15
  \partial 8*3 d[ a d,]								%16 part 1
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
  \unfoldrepeats
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

