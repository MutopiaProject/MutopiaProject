%Score version: 2.0
\version "2.12.2"
\include "english.ly"
\paper {
%#(set-paper-size "letter")
between-system-padding = 1
between-system-space = 3
  %ragged-bottom=##f
  ragged-last-bottom=##f
#(ly:set-option 'point-and-click #f)
}

#(set-global-staff-size 18.26)
\header {
 title =  "Nocturne"
 composer = "Frédéric Chopin"
 opus = "Op. 9 N. 2"
 dedication = \markup \italic { "A M.me Marie Pleyel" }
 
 % MUTOPIA
 mutopiatitle = "Nocturne"
 mutopiacomposer = "ChopinFF"
 mutopiapoet = ""
 mutopiaopus = "Op. 9, No. 2"
 mutopiainstrument = "Piano"
 date = "1833"
 source = "G. Schirmer, New York, 1881"
 style = "Romantic"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Renato Biolcati Rinaldi"
 maintainerEmail = "rebiolca@gmail.com"
 maintainerWeb = "http://www.nightpassage.org"
 moreInfo = "Made from scans available at Library Of Congress http://memory.loc.gov"
 
 footer = "Mutopia-2014/12/18-1590"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%%%Il gruppetto cromatico%%%
grc = ^\markup{\column {\center-align { \lower #6.5 {\finger"12121"} \tiny \lower #4.5 { \flat} \lower #3.0 \musicglyph #"scripts.turn" \tiny { \natural}}}}


%%%Posizione testo e dinamiche%%%
 dis = \override DynamicLineSpanner #'staff-padding = #3.5 
 ddd = \once \override DynamicLineSpanner #'staff-padding = #0
 ttt = \once \override TextScript #'staff-padding = #0 
 dpp = \once \override DynamicLineSpanner #'staff-padding = #1.6
 
%%%Diteggiatura dentro la legatura %%%
 did = \override Fingering #'avoid-slur = #'inside 
 
%%%Diteggiatura fuori dalla legatura (Default)%%%
 dif = \override Fingering #'avoid-slur = #'outside
 
%%%Simboli dentro la legatura%%%
 sot = \override Script #'avoid-slur = #'inside
 
%%%Pedale giù Markup%%%
ped = _\markup \small {\hspace #-1.0 \musicglyph  #"pedal.Ped" \hspace #-1.0 "."} 

%%%Pedale su Markup%%%
pes = _\markup \small {\hspace #-1.0 \musicglyph #"pedal.*"}

%%%Diteggiatura supplementare Markup%%%
uno = \markup { \finger "1" }
due = \markup { \finger "2" }
tre = \markup { \finger "3" }
qua = \markup { \finger "4" }
cin = \markup { \finger "5" }

%%%Vari.%%%
pri = \override TextSpanner #'bound-details #'left #'text = "poco ritard. "
pra = \mark \markup {\italic \normalsize "poco rallent."}
prl = ^\markup {\italic \normalsize "poco rall."}
pru = _\markup {\italic \normalsize "poco rubato"}
spp = _\markup {\italic \normalsize "sempre  " \dynamic pp}
dol = _\markup {\italic \normalsize "dolcissimo"}
tei = ^\markup{\bold \normalsize "Tempo I."}

%%%f tra parentesi%%%
fpa = \markup{ \center-align {\line  { \bold{\fontsize #3 \italic  (}
       \hspace # -1.0 \raise # 0.5 \dynamic f \bold{\hspace # -1.0 \fontsize #3 \italic  )} }} }	   
	   
%%%più P tra parentesi%%%
ppt = \markup{ \center-align {\line  { \italic ( \italic più  \dynamic p
         \italic  ) }} }	   



     upper = \relative c'' {
       \clef treble
       \key ef \major
       \time 12/8
	   
\override Score.MetronomeMark #'transparent = ##t
\tempo 8=132
       \partial 8	
	   \dis
\did
	   \once \override TextScript #'extra-offset = #'( -5.0 . 2.0 )
	    bf8-1^\markup{ \bold "Andante ( "\tiny \note #"8" #1 \tiny "=132)"}
		
	   \once \override TextScript #'extra-offset = #'( 0.0 . -4.8 )
	   g'4.^\markup { \finger "54" }~
	   
	   \once \override TextScript #'extra-offset = #'( -14 . 0.0 )
	   g8_\markup{\italic 
\normalsize "espress. dolce"} f-3 (g-4 f4.-3 ef4-2) bf8-1	%1
	( g'4-5 
\once \override TextScript #'extra-offset = #'( 0.5 . -4.5 )
\dpp
	c,8\<\grc c'4-5 \! g8-2 bf4.-4 af4-3 g8-2) 	%2

\dif f4.-1 g4-3 (d8-1) ef4.-2 c-1	%3
\did bf8-1\f  ( \dif d'-5)  c-4 (bf16-3 af g af-4) c, (d ef4.) r4 bf8-1	%4
	
( \once \override Script #'extra-offset = #'(-0.3 . -1.8) g'4.\p^\markup { \finger "54" } f16-3)  (g \sot f\prall e f g f8-.-3)   ef4->-2~(ef16 f ef\prall d ef f	%5 
	
\ddd g-4)\< [b, (c) df->-3 (c-1) \ttt f->-2_\markup{\italic "cresc."} (e-1) af->-3 (g-1) df'-4 (c) g]\! \dpp bf!4.-3\> ( \did af4-2\! \dif g8-1) %6

f4.^\markup { \finger "23" }\startTrillSpan \grace { e16\stopTrillSpan ([f16] } g8-.-3) g-4 (d-1) ef4.-2 (c-1)	%7

\did bf8-1\f ( \dif d'-.-5) \ddd \did c-.-4\<  \( \did bf16-.-3 [af-. g-.-1 af-.  \once \override TextScript #'extra-offset = #'( -0.5 . -3.4 ) \acciaccatura af8^\qua c,16-1 d\!]\)  ef4.-3~ef8 d-2 ef	%8

f4.-4\p \dif g4-5\> (f8)\! f4.\pp (c4.)	%9

\pri ef8-.-4\startTextSpan ([ef-.-3 ef-.-2] ef-.-1) [d16-2 (ef f16.-4 ef32-3)] ef4.-2 (bf-1)\stopTextSpan	%10

\did bf'-5\f\tei ( a4-4 g8-3) <a,^1 f'-5>4. <bf^2 d-4>	%11

 \did <g^1 ef'-5>4. ( <a^2 d-5>8-. <a c>-. <a d>-.)  <f-1 bf-3>-. (  <fs_2  b>-. ^\qua  <e  b'>-.^\qua \pra <e bf'-3 c>-. <f a  c>-.^\qua  < af_2 d>-.^\cin)	%12
 
\grace { \once \override DynamicLineSpanner #'staff-padding = #3.3 g16\sf\tei [(bf ef]} g4) \p a,16 (bf cf-- bf #(set-accidental-style 'forget) cs-4 #(set-accidental-style 'default) d-1 g16.-5) f32-4 f4-3 ef8->-2~ ef16 (f ef\prall d-1 ef f	%13

g-.) \ddd \dif b,-1\< (c-2) df-3 (c-1) f-2\! (\once \override TextScript #'staff-padding = #2 e-1_\markup { \italic "cresc." } ) af-3 (g-1) df' (c g bf!4.-3) (\ddd \did af4-2\> \dif g8-1\!)	%14

\once \override TextScript #'extra-offset = #'( 0.5 . 0.0 )
f4.\p^\markup { \column {\center-align {{\lower #0.5 \finger "23"} {\musicglyph #"scripts.trill"}  } }}  \grace { e16 ([f] } g8-.-3) \dif g->-4 (d-1) ef 4.-2 c-1	%15

\ddd 
\once \override TextScript #'extra-offset = #'( 1.5 . 0.5 )
\did bf8-1_\fpa\< (d') cs-.-4 ( c32-.-5 b-.-3 bf-.-4 a-.-5 af-. f-. d-. cf-.->) bf d \times 2/3  {\tupletUp \once \override TupletNumber #'extra-offset = #'( 0.0 . 1.7 ) \once \override TupletBracket #'extra-offset = #'( 0.0 . 1.7 ) g-5  f-4 ef-2\!} ef4.^\markup {  \finger "12" }~ ef8 d ef	%16

\dif f4.-3\p (g4-4 f8) \did f4.-4 (c-1)	%17

<<{ \oneVoice \once \override TextScript #'extra-offset = #'( 1.8 . -2.0 )
\times 3/4  { \once \override PhrasingSlur #'positions = #'(5.5 . 4) \dif ef8-.-3_\ppt \(  (  ef-. ef-. ef-.)} ef (\did d16-2 ef f16. ef32)\) ef4.   (\ddd bf4.)} 
\\
{\voiceTwo s4. s4. s4. s8\<s8 s8\! } >>
	%18

\dif bf'4.-5\f (a4 g8) \ddd <a,^1 f'-5>4.\> (<bf^2 d-4>\!)	%19

 <g ef'>4.  \( \stemUp \once \override TextScript #'extra-offset = #'( 0.0 . -2.2 ) <a d>8-.^\markup{\column {\center-align \lower #3 {\finger"5"}\center-align \lower #1.7 {\finger"2"}}} (\did <a c>-.^\markup{\column {\center-align \lower #3 {\finger"4"}\center-align \lower #1.7 {\finger"2"}}} <a d>-.) \)  \stemNeutral <f^1 bf-3>-. ( \once \override TextScript #'extra-offset = #'( -2.0 . 0.0 ) <fs b>-.\prl <e b'>-. <e bf' c>-. <f a c>-. <af d>-.)	%20
 
\grace { \once \override DynamicLineSpanner #'staff-padding = #3.3 g16\sf\tei [(bf ef]} g4) \p a,16 (bf cf-> bf #(set-accidental-style 'forget) cs #(set-accidental-style 'default) d-1 \dif g16.->-4 f32) \ddd f4\> ( ef8->-2\!)~ ef16 f (ef\trill \ddd d\< ef f\!	%21

g)  b,-1 (c-2) df->-3 (c-1) f->-2 (\ddd e-1\<) af->-3 (g-1) df' (c g \acciaccatura {g8} bf!4.)\!  (af4 g8-1)	%22


f4.^\markup { \finger "23" }\startTrillSpan  \grace { e16\stopTrillSpan ([f] } g8-.) g-4 (d-1) ef 4.-2 (c-1)	%23

\ddd 
\once \override TextScript #'extra-offset = #'( 1.5 . 0.5 )
\did bf16-1-._\fpa\< ([ \dif d'8-5 \set stemLeftBeamCount = #1 \set stemRightBeamCount = #2  
 cs16-.-4  \set stemLeftBeamCount = #2 c16-.-5 b32-.-4] bf16-.-3 [a-.-5]) af32-|-4 \did a,-1 ( bf-2 b-1 c cs d-1  \times 2/3  {\tupletUp \once \override TupletNumber #'extra-offset = #'( 0.0 . 1.5 ) \once \override TupletBracket #'extra-offset = #'( 0.0 . 1.5 ) g-4  f-3 ef-2\!} ef2.->-1)	%24

ef4.-3^\markup{\bold "Coda"}\p (f8 ef f g2.)	%25

ef4.\pp \(~ef16 f (ef) f ( ef f g4\pru) \) ef8-2\turn (ef'-.-5) (d-.-5 c-.-5)	%26

bf4-4\spp \(a!8-5  (af) c, d\) ef f16 ( ef\prall d ef ) \acciaccatura ef8 g'8-.\dol f16-.-5 (ef-.-4 d-.-5 c-.-5	%27 

cf8---5 bf---4 bff---5) \dif bff16-5 ([af-4]) af-4 ([g-5]) g16.-5 (f32-4 ef2.->-3)	%28 

ef4.\p~ \(\times 6/8 {\tupletDown ef16 f (ef f ef) \ddd f  ( \< ef f)} g4.\!\) r4 r8	%29

ef8-|_\markup{\italic 
\normalsize "con forza"} \did af,16-2 (bf af\trill g af-2 [cf-1 ef-2 af-3 ef'-5) r32 \dif f-3] (
#(set-octavation 1)
\did g8-4 ef) <ef ef'>4-> \once \override TextScript #'extra-offset = #'( -1.0 . 0.0 ) <d d'>8_\markup{\italic 
\normalsize "stretto"} <c! c'!>	%30

<cf cf'-5> <bf bf'-4> <bff bff'-5> <af! af'!-4> <g g'> <d d'-5> <ef ef'-4> <ef' ef'>4._> <f, f'>8 <c' c'>	%31

\cadenzaOn <cf cf'>2.-^_\markup {\dynamic ff \italic 
\normalsize "senza        –          –        tempo" } s4 <bf bf'>2.-^\fermata \tiny{ \ddd \stemUp \override DynamicLineSpanner #'staff-padding = #2.0 cf'!16-3\< [bf-2 c!-4 a!-1]  cf [bf c! a] cf [bf c! a]    cf [bf c! a] cf [bf c! a]   cf [bf c! a] cf [bf c! a] cf_\markup  {  \italic 
\normalsize "cresc." } [bf c! a\!] \bar "" cf [bf c! a] cf [bf c! a] \ddd cf\>_\markup {  \italic 
\normalsize "dimin." } [bf c! a\!]  cf [bf c! a]  cf  [bf d-5 c!-4] bf-2_\markup { \italic 
\normalsize "rallent. smorz." } [a-1 af-4 g-3] f-2 [d-1 (ef-2 cf-1]
#(set-octavation 0)
bf8-4 [ af c, d-3)]} \cadenzaOff \bar "|" \normalsize		%32
\stemNeutral  \once \override TextScript #'extra-offset = #'( 0.0 . -2.0 ) <g, ef'-4>8_\markup{\dynamic pp} (\once \override TextScript #'extra-offset = #'( -3.0 . 0.0 ) bf-2\tei g'  <g, ef'> bf g' <g, ef'> bf g' <g, ef'> bf g'	%33
 \once \override TextScript #'extra-offset = #'( 0.0 . -2.0 ) <g, ef'>4._\markup{\dynamic ppp}) <g' ef'> <g,, ef'>2.\fermata \bar "|."	%34


   
	
     } 
     
     lower = \relative c {
       \clef bass
       \key ef \major
       \time 12/8
     \override Beam #'auto-knee-gap = #3
       \partial 8 r8	
	   
 
ef,-.\ped  <g' ef'>  ( <bf ef  g>)\pes  ef,-.\ped <af d> (<cf d af'>)\pes  ef,,-.\ped <g' ef'> (<bf ef g>)\pes d,,-.\ped  <g' ef'> (<bf ef g>)\pes	%1
	   
c,,-.\ped <g'' e'> (<bf e g>)\pes   c,-.\ped <g' e'> (<c e bf'>)\pes f,,-.\ped <f' df'> (<bf df e!>)\pes  f,-.\ped <f' c'> (<af c f>)\pes	%2
	   
bf,-.\ped <f' d'!> (<bf d af'>)\pes b,-.\ped <g' f'> (<d' f g>)\pes c,-.\ped <g' ef'> (<c ef g>)\pes a,-.\ped <gf' ef'> (<c ef gf>)\pes	%3
		
bf,-.\ped <f' ef'> (<bf ef af!>)\pes   bf,,-.\ped  <f'' d'> (<bf af'>)\pes  ef,,-.\ped   <g' ef'> (<bf ef g>) ef,-. <g ef'> (<bf ef g>)	%4
		
ef,-. <g ef'>  (<bf ef g>)\pes \once \override TextScript #'extra-offset = #'( 0.0 . 3.0 ) ef,-.\ped <af d> (<cf d af'>)\pes ef,-.\ped <g ef'> (<bf ef g>)\pes \once \override TextScript #'extra-offset = #'(0.0 . 2.0 )d,-.\ped <g ef'> (<bf ef g>)\pes %5
		
c,-.\ped <g' e'> (<bf e g>) c,-. <g' e'> (<c e bf'>)\pes f,,-.\ped <f' df'> (\once \override TextScript #'extra-offset = #'( 0.0 . 2.0 ) <bf df e!>)\pes \once \override TextScript #'extra-offset = #'( 0.0 . 3.0 ) f,-.\ped <f' c'> ( \once \override TextScript #'extra-offset = #'( 0.0 . 2.0 ) <af c f>)\pes	%6
		
 bf,-.\ped <f' d'!> (<bf d af'>\pes) b,-.\ped <g' f'> (<d' f g>)\pes c,-.\ped <g' ef'> (<c ef g>)\pes a,-.\ped <gf' ef'> (<c ef gf>)\pes	%7
		
bf,-.\ped <f' ef'> (<bf ef af!>)\pes  bf,,-.\ped <f'' d'> (<bf af'>)\pes  ef,,-.\ped  <g' ef'> (<bf ef g>) ef,-. <g ef'> (<bf ef g>)\pes	%8
		
bf,-.\ped <f' d'> (<bf d f>) bf,-. <f' d'> (<bf d f>)\pes a,-.\ped <f' c'> (<c' f>) a,-. <f' c'> (<c' f>)\pes	%9
		
af,!-.\ped <ef' c'> (<af c ef>) af,,-. <ef'' cf'> (<af cf ef>)\pes ef,-.\ped  <g' ef'> (<bf ef g>) ef,-. <g ef'> (<bf ef g>)\pes %10

e,,-.\ped <e' df'> (<bf' df g>)\pes e,,-.\ped <e' c'> (<bf' c g'>)\pes f,-.\ped <f' ef'!> (<c' ef f>)\pes g,-.\ped <g' d'!> (<bf d g>)\pes	%11

c,,-.\ped <g'' ef'> (<c ef g>)\pes f,,-.\ped <f' ef'> (<c' ef f>)\pes <bf d>-. (<a ds>-. gs-. g-. <f c' ef!>-. <bf f'>-.)	%12

ef,,-.\ped <g' ef'> (<bf ef g>)\pes ef,-. <af d> (<bf d af'>) ef,-. <g ef'> (<bf g'>) d,-. <g ef'> (<bf ef g>)	%13

c,-. <g' e'> (<bf e g>) c,-. <g' e'> (<c e bf'>) f,,-. <f' df'> (<bf df e!>) f,-. <f' c'> (<af c f>)	%14

bf,-.\ped <f' d'!> (<bf d af'>)\pes b,-.\ped <g' f'>  (<d' f g>)\pes c,-.\ped <g' ef'> (<c ef g>)\pes a,-.\ped <gf' ef'> (<c ef gf>)\pes	%15

bf,-. <f' ef'> (<bf ef af!>) bf,,-.\ped <f'' d'>\pes (<bf d af'>) ef,,-.\ped <g' ef'> (<bf g'>)\pes   ef,-. <g ef'> (<bf g'>)	%16

bf,-. <f' d'> (<bf d f>) bf,-. <f' d'> (<bf d f>) a,-. <f' c'> (<c' f>) a,-. <f' c'> (<c' f>)	%17

af,!-. <ef' c'> (<af c ef>)	af,,-.\ped <ef'' cf'> (<af cf ef>)\pes ef,-. <g' ef'> (<bf ef g>) ef,-. <g ef'> (<bf ef g>)	%18

e,,-.\ped <e'! df'> (<bf' df g>)\pes e,,-. <e' c'> (<bf' c g'>) f,-.\ped <f' ef'!> (<c' ef a>)\pes g,-.\ped <g' d'> (<bf d bf'>)\pes	%19

c,,-.\ped <g'' ef'> (<c ef g>)\pes f,,-. <f' ef'> (<c' ef f>) <bf d>-. (<a ds>-. gs-. g-. <f c' ef!>-. <bf f'>-.)	%20

ef,,-.\ped <g' ef'> (<bf ef g>)\pes ef,-. <af d> (<bf d af'>) ef,-. <g ef'> (<bf ef g>) d,-. <g ef'> (<bf ef g>)	%21

c,-. <g' e'> (<bf e g>) c,-. <g' e'> (<c e bf'>) f,,-. <f' bf df> (<bf df e!>) f,-. <f' c'> (<af c f>)	%22

bf,-. <f' d'!> (<bf d af'>) b,-. <g' f'>  (<d' f g>) c,-. <g' ef'> (<c ef g>) a,-. <gf' ef'> (<c ef gf>)	%23

bf,-. <f' ef'> (<bf ef af!>) bf,,-.\ped <f'' d'> (<bf d af'>)\pes ef,,-.\ped <g' ef'> (<bf ef g>)\pes   ef,-. <g ef'> (<bf ef g>)	%24

ef,,-.\ped <af' cf ef> (<cf ef af>) ef,-. <af cf ef> (<cf ef af>)\pes ef,,-.\ped <g' ef'> (<bf ef g>)  ef,-. <g ef'> (<bf ef g>)\pes	%25

ef,,-.\ped <af' cf ef> (<cf ef af>) ef,-. <af cf ef> (<cf ef af>)\pes ef,,-.\ped <g' bf ef> (<bf ef g>) ef,-. <g ef'> (<bf ef g>)\pes	%26

ef,-.\ped <f d'> (<bf af'!>) ef,-. <f d'> (<bf af'>)\pes ef,-.\ped <g ef'> (<bf g'>)\pes a,-.\ped <f' ef'> (<c' ef f>)\pes	%27

bf,-.\ped <f' ef'> (<bf ef af!>)\pes bf,,-.\ped <f'' d'> (<bf d af'>)\pes ef,,-.\ped <g' ef'> (<bf ef g>) ef,-. <g ef'> (<bf ef g>)\pes 	%28

af,,-.\ped <ef'' af cf> <af cf ef> <cf ef af> <af cf ef> <ef af cf>\pes ef,-.\ped <g' ef'> (<bf ef g>) ef,-. <g ef'> (<bf ef g>)\pes	%29

af,,-.\ped <ef'' af cf> <af cf ef> <ef af cf> <af cf ef> <ef af cf> ef,-.\ped <g' ef'> (<bf ef g>)\pes a,\ped <f' ef'> <cf' ef f>\pes	%30

bf,-.\ped <f' bf ef> (<bf ef af!>)\pes b,-.\ped <g' f'> (<d' f g>)\pes c,-. <g' ef'> (<c g'>) a,-.\ped
<<{ \oneVoice \stemUp <c' ef>8  <c ef f>\pes }
\\
{ \voiceTwo  f,4} >>	%31

\cadenzaOn \once \override PhrasingSlur #'positions = #'(3 . 5) \stemDown bf,,8\ped [ \(\once \override TextScript #'extra-offset = #'( -0.4 . -5.5 ) bf'^\markup { \finger "15" } \did \once \override TextScript #'extra-offset = #'( 0.0 . -4.0 ) f'^\tre \dif af!-2   d-1 \did bf-5
       \clef treble
\once \override TextScript #'extra-offset = #'( 0.0 . -6.0 ) f'^\tre \once \override TextScript #'extra-offset = #'( 0.0 . -5.0 ) af]^\due\)  d2.-1\fermata
       \clef bass
s1  s s s s8 s\pes  \cadenzaOff \bar "|"	%32

<<{ \oneVoice \stemUp 
s8  bf,4  s8 bf4 s8 bf4 s8 bf4~
\stemNeutral
<ef, bf'>4.)

}
\\
{ \voiceTwo  \stemDown \slurUp \once \override Slur #'extra-offset = #'(0.0 . 2.5) \once \override Slur #'positions = #'(-1.0 . -1.0) ef,8^.\ped  ( bf'' bf, ef8 bf' bf,) \once \override Slur #'extra-offset = #'(0.0 . 1.0) \once \override Slur #'positions = #'(0.0 . 0.5) ef,^. (bf'' bf, ef bf' bf,
bf'4 s8 )\stemNeutral
\clef treble
<ef bf'>4.
\clef bass
 \once \override TextScript #'extra-offset = #'( 3.0 . 1.5 ) <ef,, bf'>2.\pes^\fermata

} >>	%33



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
      #'((alignment-offsets . (0 -13.7))) } }
        \midi { }
     }
