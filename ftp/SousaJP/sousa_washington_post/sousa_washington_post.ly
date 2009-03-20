%Score version: 2.0
\version "2.12.2"
\include "english.ly"

\paper {
  ragged-bottom=##f
  ragged-last-bottom=##f
#(ly:set-option 'point-and-click #f)
} 


\header {
title = "The Washington Post"
subtitle = "March"
composer = "John Philip Sousa"
  mutopiatitle = "The Washington Post"
  mutopiacomposer = "SousaJP"
  mutopiainstrument = "Piano"
  style = "March"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "D. Davis & Co. Sydney, 189-?"
  maintainer = "Renato Biolcati Rinaldi"
  maintainerEmail = "rebiolca@gmail.com"
  maintainerWeb = "http://www.nightpassage.org"
  moreInfo = "Made from scans available at National Library of Australia http://www.musicaustralia.org"
 
 footer = "Mutopia-2009/03/19-1321"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

 dis = \override DynamicLineSpanner #'staff-padding = #3
 dit = \override TextScript #'staff-padding = #2
 ddd = \once \override DynamicLineSpanner #'staff-padding = #2
 ttt = \once \override TextScript #'staff-padding = #2
 fin = \override Fingering #'avoid-slur = #'inside
 fou = \override Fingering #'avoid-slur = #'outside
 sot = \override Script #'avoid-slur = #'inside
 sop = \override Script #'avoid-slur = #'outside
 
 dla = \set doubleSlurs = ##t
 dls = \set doubleSlurs = ##f
 
	upper = \relative c'' {
       \clef treble
       \key g \major
       \time 6/8

	   \dis \dit

\override Score.MetronomeMark #'transparent = ##t
\tempo 4.=120
\once \override TextScript #'extra-offset = #'( -5.0 . 2.0 )
   
<d d'>4\ff^\markup { \bold "Tempo Marziale" } <ds ds'>8 <e e'>4. ~	%1			
<e e'>4 <ef ef'>8 <d d'>4 <cs cs'>8	%2	
<d d'>4 <ds ds'>8 <e e'>4.~	%3
<e e'>4 <ef ef'>8 <d d'>4 <cs cs'>8	  %4
<d d'>4 <ds ds'>8 <e e'>4 <ef ef'>8	%5
<d d'>4 <cs cs'>8 <c c'>4 <b b'>8	%6
<a a'>4 r8 <d fs a d>4-^ r8	%7
r4 d8\mf d (cs d)	%8
<c e>8 r r 
\tieDown
<c e>4.~(	  %9
<c fs>8) r r \dla <c fs>4.-^(	%10
\tieNeutral
<b a'>8)\dls r r <b g'>4.-^~	%11
<b g'>4\p g'8 g fs e	%12
<c d> [r <c ds>] <c e> [r <c ef>]	%13
<c d>4 <c d>8 <c d> [<c d> <c d>] 	%14
<b d> [r <b ds>] <b e> [r <b ef>]	%15
<b d>4 d8 d cs d	%16
\tieDown
<a e'> r r <a e'>4.-^~(	%17			
<a fs'>8) \tieNeutral r r <a d fs>4.-^~(	%18			
<a d a'>8) r r <g d' g>4.~	 %19		
<g d' g>4\< g'8 g[fs g\!]	%20
 fs4\ff <fs, fs'>8 <fs fs'> [<g g'> <gs gs'>]	%21	 
<a a'>4 <a a'>8 <a a'> [<b b'> <cs cs'>]	%22	
<d d'> [r <g a cs>] <fs a d> [r <g a cs>]	%23	
<fs a d>4\mf d8 d[(cs d)]	  	 %24=====P1
\tieDown		
<c e> r r <c e>4.~(	%25
<c fs>8) r r \dla <c fs>4.-^(	 %26
\tieNeutral	
<b a'>8) \dls r r <b g'>4.-^~	%27		
<b g'>4 g'8\p g fs e	%28			
<c d> [r <c ds>] <c e> [r <c ef>]	%29	
<c d>4 <c d>8 <c d> <c d> <c d>	 %30
<b d> [r <b ds>] <b e> [r <b ef>]	%31	
<b d>4 d8 d [cs d]	%32
\tieDown
<a e'>8 r r <a e'>4.-^~(	%33
<a fs'>8)\tieNeutral r r <a d fs>4.-^~	%34		
(<a d a'>8) r r <g d' g>4.~	 %35
<g d' g>4\< g'8 g [fs g\!]	%36
fs4\ff <fs, fs'>8 <fs fs'> [<g g'> <gs gs'>]	%37
<a a'>4 <a a'>8 <a a'> [<b b'> <cs cs'>]	%38
<d d'> [r <g a cs>] <fs a d> [r <g a cs>]	%39
<fs a d>4 d8 <d d,>4 <d d,>8  %40
<d d,>4.\ff <fs, fs'>4 <a a'>8	%41
<e' e'>4. <e e'>4.	%42
<e e'>2.~	%43
<e e'>4 <d d'>8 <d d'>[<b b'> <d d'>]	%44
<e e'>2.~ %45
<e e'>4 <c c'>8 <c c'> [<a a'> <c c'>] 	 %46
<e e'>2.~	%47
<e e'>4 <d d'>8 <b b'>4 <g g'>8	%48
<d d'>4. <fs fs'>4 <a a'>8	%49
<e' e'>4. <e e'>4.	%50
<e e'>2.~   %51
<e e'>4 <d d'>8 <d d'> [<b b'> <d d'>]	%52
<g g'>4. <g, g'>4 (<a a'>8)	%53
<b b'>4. <g g'>	%54
<a a'>2.	%55
<g g'>4 <g g'>8 <g g'> <fs fs'> <e e'>    %56=====P2
<d d'>4.\ff <fs fs'>4 <a a'>8	%57
<e' e'>4. <e e'>4.	%58
<e e'>2.~	%59
<e e'>4 <d d'>8 <d d'>[<b b'> <d d'>]	%60
<e e'>2.~	%61
<e e'>4 <c c'>8 <c c'> [<a a'> <c c'>]  %62
<e e'>2.~	%63
<e e'>4 <d d'>8 <b b'>4 <g g'>8	%64
<d d'>4. <fs fs'>4 <a a'>8	%65
<e' e'>4. <e e'>4.	%66
<e e'>2.~  %67
<e e'>4 <d d'>8 <d d'> <b b'> <d d'>	%68
<g g'>4. <g, g'>4 (<a a'>8)	%69
<b b'>4. <g g'> %70
<a a'>2.	%71
<g g'>4 g8\p \(fs!4 g8 \bar "||"  %72

\key c \major 
e\) [r g ](fs4 g8)	%73 
f4. \(b,	%74
c d\)	%75
e4 g8 (fs4 g8)	%76
e8-. g-. c-. e-. c-. g-.   %77
f4. (b,	%78
g'2.~	%79
g4) g8 (fs4 g8)	%80
a [r a] (gs4 a8)	%81
a [r a] (gs4 a8) 	%82
a4. \(f'	%83
e4 cs8 d4 a8	%84
g\) [r g] (fs4 g8)	%85
<fs a> [r <fs a>] <f b> [r <f g>]	%86
<e c'>4 r8 r4 r8	%87
r4 g8\mf \(fs4 g8 	  %88=====P3
e\) r g (fs4 g8)	%89
f4. (b,	%90
c d)	%91
e4 g8 (fs4 g8)	%92
e-. g-. c-. e-. c-. g-.	 %93
f4. (b,	%94
g'2.~	%95
g4) g8 (fs4 g8\<)	%96
a [r\! a] (gs4 a8)	%97
a [r a] (gs4 a8) 	%98
a4. (f'	%99
e4 cs8 d4 a8	%100
g [r g] (fs4 g8)	%101
<fs a> [r <fs a>] <f b> [r <f g>]	%102
<e c'>4 r8 r4 r8 %103
r4 <g' g'>8\ff \(<fs fs'>4 <g g'>8 	%104
<g, g'>4\) r8 r4 r8	%105
r4 <g' g'>8 \(<fs fs'>4 <g g'>8	%106
<g, g'>4\) r8 r4 r8	%107
r4 <g' g'>8 (<fs fs'>4 <g g'>8)	%108
<g, g'>4 <g g'>8\< <gs gs'>4 <gs gs'>8\!	%109
<a a'>4 <a a'>8 <as as'>4 <as as'>8	  %110
<b b'>4 r8 <g' b d g>4-^ r8	%111
r4 <g g'>8\ff \(<fs fs'>4 <g g'>8	%112
<e e'>8\) [r <g g'>] <fs fs'>4 (<g g'>8)	%113
<f! f'!>4. <b, b'>	%114
<c c'> <d d'>	  %115
<e e'>4 <g g'>8 (<fs fs'>4 <g g'>8)	%116
e-. g-. c-. e-. c-. g-.	%117
<f f'>4. <b, b'>	%118
<g' g'>2.~	%119
<g g'>4 <g g'>8 (<fs fs'>4 <g g'>8)	   %120=====P4
#(set-octavation 1)
<a a'> [r <a a'>] (<gs gs'>4 <a a'>8)	%121
<a a'> [r <a a'>] (<gs gs'>4 <a a'>8)	%122
<a a'>4. <f' f'>	%123
<e e'>8 [r <cs cs'>] <d d'> [r <a a'>]	%124
<g g'> [r <g g'> ] (<fs fs'>4 <g g'>8) 	%125
<a fs' a> [r <a fs' a>] <b f' b> [r <b f' g>]	%126

<c e c'>8 
#(set-octavation 0)
r r r4 r8	%127
r4 <g g'>8 \(<fs fs'>4 <g g'>8	%128
<g, g'>4\ff \) r8 r4 r8 %129
r4 <g' g'>8 \( <fs fs'>4 <g g'>8 	%130
<g, g'>4 \) r8 r4 r8	%131
r4 <g' g'>8 ( <fs fs'>4 <g g'>8)	%132
<g, g'>4 <g g'>8\< <gs gs'>4 <gs gs'>8\! 	%133
<a a'>4 <a a'>8 <as as'>4 <as as'>8	 %134
<b b'>4 r8 <g' b d g>4-^ r8	%135
r4 <g g'>8\ff \(<fs fs'>4 <g g'>8	 %136
<e e'>8\) [r <g g'>] <fs fs'>4 (<g g'>8)	%137
<f! f'!>4. <b, b'>	%138
<c c'> <d d'>	%139
<e e'>4 <g g'>8 (<fs fs'>4 <g g'>8)	 %140
e-. g-. c-. e-. c-. g-. 	%141
<f f'>4. <b, b'>	%142
<g' g'>2.~	%143
<g g'>4 <g g'>8 <fs fs'>4 <g g'>8	%144
#(set-octavation 1)
<a a'> [r <a a'>] (<gs gs'>4 <a a'>8)	 %145
<a a'> [r <a a'>] (<gs gs'>4 <a a'>8)	 %146
<a a'>4. <f' f'>	%147
<e e'>8 [r <cs cs'>] <d d'> [r <a a'>]	%148
<g g'> [r <g g'> ] (<fs fs'>4 <g g'>8)	%149
<a fs' a> [r <a fs' a>] <b f' b> [r <b f' g>]		%150

<c e c'>4
#(set-octavation 0) 
r8 r4 <f, g b>8-^	%151
<e g c>4-^ r8 <e g c>4-^ r8 \bar "|."	%152
     }
     lower =  \relative c, {
       \clef bass
       \key g \major
       \time 6/8
     
<d d'>4 <ds ds'>8 <e e'>4. ~	%1			
<e e'>4 <ef ef'>8 <d d'>4 <cs cs'>8	%2
<d d'>4 <ds ds'>8 <e e'>4.~	%3
<e e'>4 <ef ef'>8 <d d'>4 <cs cs'>8	%4
<d d'>4 <ds ds'>8 <e e'>4 <ef ef'>8	%5
<d d'>4 <cs cs'>8 <c c'>4 <b b'>8	%6
<a a'>4 r8 <d d'>4^^ r8	%7
R2.	%8
c8 [r <a'' c e>] <a c e> [r <a c e>]	%9
d,,8 [r <a'' c d>] <a c d> [r <a c d>]	%10
g,8 [r <g' b d>] <g b d> [r <g b d>]	%11
g,8 [r <g' b d>] <g b d> [r <g b d>]	%12
fs [r <c' d>] d, [r <c' d>]	%13
fs, [r <c' d>] d, [r <c' d>]	%14
g [r <b d>] d, [r <b' d>]	%15
g [r <b d>] d, [r <b' d>]	%16		
 cs, [r <g' a>] cs, [r <g' a>]	%17	
 c,! [r <fs a>] c [r <fs a>]	%18	
 b, [r <d g>] b [r <d g>]	%19 
 bf [r <d g>] bf [r <d g>]	%20
 a [r <d fs a>] a [r <d fs a>]	%21		
a [r <e' g a>] a [r <e g a>]	%22		
<d fs a> [r a] <d, d'> [r a']	%23	
<d, d'>4 r8 r4 r8	%24		
c [r <a'' c e>] <a c e> [r <a c e>]	%25
d,, [r <a'' c d>] <a c d> [r <a c d>]	%26
g, [r <g' b d>] <g b d> [r <g b d>]	%27	
g, [r <g' b d>] <g b d> [r <g b d>]	%28	
fs [r <c' d>] d, [r <c' d>]	%29		
fs, [r <c' d>] d, [r <c' d>]	%30
g [r <b d>] d, [r <b' d>]	%31		
g [r <b d>] d, [r <b' d>]	%32		
cs, [r <g' a>] cs, [r <g' a>]	%33		
c,! [r <fs a>] c [r <fs a>]	%34		
b, [r <d g>] b [r <d g>]	%35
bf [r <d g>] bf [r <d g>]	%36
a [r <d fs a>] a [r <d fs a>]	%37
a [r <e' g a>] a, [r <e' g a>]	%38
<d fs a> [r a] <d, d'> [r a']	%39
<d, d'>4 r8 r4 r8	%40
fs[r <a' c d>] d,[r <a' c d>]	%41
fs,[r <a' c d>] d,[r <a' c d>]	%42
g,[r <g' b d>] d[r <g b d>]	%43
g,[r <g' b d>] d[r <g b d>]	%44
fs,[r <a' c d>] d,[r <a' c d>]	%45
fs,[r <a' c d>] d,[r <a' c d>]	%46
g,[r <g' b d>] d[r <g b d>]	%47
g,[r <g' b d>] d[r <g b d>]	%48
fs,[r <a' c d>] d,[r <a' c d>]	%49
fs,[r <a' c d>] d,[r <a' c d>]	%50
g,[r <g' b d>] d[r <g b d>]	%51
g,[r <g' b d>] d[r <g b d>]	%52
\stemDown <ef, ef'> [r <g' bf>] <ef, ef'> [r <g' bf>]	%53
<d, d'> [r <g' b!>] \stemNeutral d [r <g b>]	%54
fs,[r <fs' c' d>] d[r <fs c' d>]	%55
<g d' b>4 r8 r4 r8	%56
fs,[r <a' c d>] d,[r <a' c d>]	%57
fs,[r <a' c d>] d,[r <a' c d>]	%58
g,[r <g' b d>] d[r <g b d>]	%59
g,[r <g' b d>] d[r <g b d>]	%60
fs,[r <a' c d>] d,[r <a' c d>]	%61
fs,[r <a' c d>] d,[r <a' c d>]	%62
g,[r <g' b d>] d[r <g b d>]	%63
g,[r <g' b d>] d[r <g b d>]	%64
fs,[r <a' c d>] d,[r <a' c d>]	%65
fs,[r <a' c d>] d,[r <a' c d>]	%66
g,[r <g' b d>] d[r <g b d>]	%67
g,[r <g' b d>] d[r <g b d>]	%68
\stemDown <ef, ef'> [r <g' bf>] <ef, ef'> [r <g' bf>]	%69 
<d, d'> [r <g' b!>] \stemNeutral d [r <g b>]	%70
fs,[r <fs' c' d>] d[r <fs c' d>]	%71
<g b d>4 r8 r4 r8	 %72


\key c \major
c,[r <e g>] <e g> [r <e g>]	%73
d[r <f g>] <f g> [r <f g>]	%74
e [r g] b, [r <f' g>]	%75
c[r <e g>] <e g> [r <e g>]	%76
c[r <e g>] <e g> [r <e g>]	%77
d[r <f g>] <f g> [r <f g>]	%78
e[r <g c>] <g c> [r <g c>]	%79
c,[r <e g c>] <e g c> [r <e g c>]	%80
f[r <a c>] <a c> [r <a c>]	%81
e[r <g a cs>] <g a cs> [r <g a cs>]	%82
d[r <f a d>] <f a d> [r <f a d>]	%83
e[r <g a cs>] f [r <a d>]	%84
g[r <c e>] <c e> [r <c e>]	%85
<g c ef> [r <g c ef>] <g b d> [r <g b d>]	%86
<c, c'>4  \(<g g'>8 <fs fs'>4 <g g'>8	%87
<g, g'>4\) r8 r4 r8	%88
c' [r <e g>] <e g> [r <e g>]	%89
d [r <f g>] <f g> [r <f g>]	%90
e [r g] b, [r <f' g>]	%91
c [r <e g>] <e g> [r <e g>]	%92
c [r <e g>] <e g> [r <e g>] %93
d[r <f g>] <f g> [r <f g>]	%94
e[r <g c>] <g c> [r <g c>]	%95
c,[r <e g c>] <e g c> [r <e g c>]	%96
f[r <a c>] <a c> [r <a c>]	%97
e[r <g a cs>] <g a cs> [r <g a cs>]	%98
d[r <f a d>] <f a d> [r <f a d>]	%99
e[r <g a cs>] f [r <a d>]	%100
g[r <c e>] <c e> [r <c e>]	%101
<g c ef> [r <g c ef>] <g b d> [r <g b d>]	%102
<c, c'>4  \(<g g'>8 <fs fs'>4 <g g'>8	%103
<g, g'>4\) r8 r4 r8	%104
r4 <g' g'>8 \(<fs fs'>4 <g g'>8	%105
<g, g'>4\) r8 r4 r8	%106
r4 <g' g'>8 \(<fs fs'>4 <g g'>8	%107
<g, g'>4\) r8 r4 r8	%108
r4 <g' g'>8 <gs gs'>4 <gs gs'>8	%109
<a a'>4 <a a'>8 <as as'>4 <as as'>8	 %110
<b b'>4 r8 <g g'>4^^ r8	%111
R2.	%112
 \stemDown <c, c'>8 [r <e' g c>]  <e g c> [r <e g c>]	%113
 <d, d'> [r <f' g b>]  <f g b> [r <f g b>]	%114
 <e, e'> [r <g' c>]   <b,, b'> [r <f'' g d'>] %115
<c, c'> [r <e' g c>]  <e g c> [r <e g c>]	%116
 <c, d'> [r <e' g c>] <e g c> [r <e g c>]	%117
 <d, d'> [r <f' g b>] <f g b> [r <f g b>]	%118
<e, e'> [r <g' c>] <g c> [r <g c>]	%119
<c,, c'> [r <e' g c>] <e g c> [r <e g c>]	%120
<f, f'> [r <a' c>] <a c> [r <a c>]	%121
<e, e'> [r <g' a cs>] <g a cs> [r <g a cs>]	%122
<d, d'> [r <f' a d>] <f a d> [r <f a d>]	%123
<e, e'> [r <g' a cs>] <f, f'> [r <f' a d>]	%124
<g, g'> [r <g' c e>] <g c e> [r <g c e>]	%125
g,[r <a' c ef>] g, [r <g' b d>]	%126
\stemNeutral
\slurDown
<c, c'>8  [r <g g'>8]   (<fs fs'>4 <g g'>8	%127
<g, g'>4)  r8 r4 r8 \slurNeutral	%128 
r4 <g' g'>8 \(<fs fs'>4 <g g'>8	%129
<g, g'>4\) r8 r4 r8	 %130
r4 <g' g'>8 \(<fs fs'>4 <g g'>8	%131
<g, g'>4\) r8 r4 r8	%132
r4 <g' g'>8 <gs gs'>4 <gs gs'>8	%133
<a a'>4 <a a'>8 <as as'>4 <as as'>8	 %134
<b b'>4 r8 <g g'>4 r8	%135
R2.	%136
  \stemDown <c, c'>8-^ [r <e' g c>] <e g c> [r <e g c>]	%137
 <d, d'>-^ [r <f' g b>] <f g b> [r <f g b>]	%138
<e, e'> [r <g' c>] <b,, b'> [r <f'' g d'>]	 %139
<c, c'> [r <e' g c>] <e g c> [r <e g c>]	%140
<c, c'> [r <e' g c>] <e g c> [r <e g c>]	%141
<d, d'> [r <f' g b>] <f g b> [r <f g b>]	%142
<e, e'> [r <g' c>] <g c> [r <g c>]	%143
<c,, c'> [r <e' g c>] <e g c> [r <e g c>]	%144
<f, f'> [r <a' c>] <a c> [r <a c>]	%145
<e, e'> [r <g' a cs>] <g a cs> [r <g a cs>]	%146
<d, d'> [r <f' a d>] <f a d> [r <f a d>]	%147
<e, e'> [r <g' a cs>] <f, f'> [r <f' a d>]	%148
<g, g'> [r <g' c e>] <g c e> [r <g c e>]	%149
g,[r <a' c ef>] g, [r <g' b d>]	%150
\stemNeutral
<c, c'>4 <g g'>8 (<fs fs'>4) <g g'>8^^	%151
<c, c'>4^^ r8 <c c'>4^^ r8	%152

     }

     \score  
	 {
        \new PianoStaff  <<
           \set PianoStaff.instrumentName = "Piano  "
           \new Staff = "upper" \upper
           \new Staff = "lower" \lower
        >>
        \layout {   \context {
      \Score
      \override NonMusicalPaperColumn
      #'line-break-system-details =
      #'((alignment-offsets . (0 -12))) } }
        \midi { }
     }
