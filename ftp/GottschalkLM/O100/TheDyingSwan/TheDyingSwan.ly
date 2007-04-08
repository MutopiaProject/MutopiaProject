\version "2.10.0"

\header {
dedication = \markup \center-align {"dedicated to Miss Eva Waldence Hedge" "   "}
title = \markup \center-align { "The Dying Swan" "   " }
mutopiatitle = "The Dying Swan"
subtitle = "La mort du cygne"
%instrument = "piano"
subsubtitle = \markup {\italic "(Romance poétique)"}
composer = \markup \center-align { "Louis Moreau Gottschalk" \small "(1829-1869)" "    " "Opus 100-Ro 076"}
mutopiaopus = "Op. 100"
mutopiainstrument= "Piano"
mutopiacomposer= "GottschalkLM"
style="Romantic"
maintainer = "Anonymous"
maintainerEmail = "music@edso.fr"
maintainerWeb = "http://www.gottschalk.fr"
source = "Kunkel Brothers, 1870"
copyright = "Public Domain"
 footer = "Mutopia-2007/03/29-942"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "italiano.ly"

\paper 

{
 %after-title-space=60\mm
 system-count=23
 bottom-margin=2
 ragged-last-bottom = ##f
}

stemExtend = \once \override Stem #'length = #22
noFlag = \once \override Stem #'flag-style = #'no-flag
ct = { \override Staff.Clef #'transparent = ##t }
cf = { \override Staff.Clef #'transparent = ##f }
tnt = { \override TupletNumber #'transparent = ##t }
tnf = { \override TupletNumber #'transparent = ##f }
tbt = { \override TupletBracket #'transparent = ##t }
tst = { \override Staff.TimeSignature #'transparent = ##t }
tsf = { \override Staff.TimeSignature #'transparent = ##f }
kst = { \override Staff.KeySignature #'transparent = ##t }
ksf = { \override Staff.KeySignature #'transparent = ##f }


\score {
<<
<<

%---------------------------------------------------------------------------
% Ossia
%---------------------------------------------------------------------------

\new Staff \with
  {

    fontSize = #-4
    \override StaffSymbol #'staff-space = #(magstep -3)
  }
  
{
\stopStaff
\ct 
\tst
\kst
\key sol \minor
\skip 2*85
\skip 4  
\override Staff.BarLine #'break-visibility = #end-of-line-invisible
\startStaff
\ksf
\cf \tsf
	
<<
	{
	do'''8\rest^\markup {\hspace #0 \raise #1.5 "ossia"} #(set-octavation 1) \stemDown sol'''64^\markup {\hspace #0 \raise #4.5 "scintillante"}_([lab''' la''' sib''' do'''' sib''' sol''' mib''']) sol''''8-. r #(set-octavation 0) do'''8\rest #(set-octavation 1) sol'''64_([lab''' la''' sib''' do'''' sib''' fa''' re''']) fa''''8-. r #(set-octavation 0)
 do'''8\rest#(set-octavation 1) \times 4/7 {\stemDown mib'''32_([mi''' fa''' fad''' sol''' mib''' do'''])} mib''''8-. r8 #(set-octavation 0) do'''8\rest #(set-octavation 1) \times 8/9 {re'''64_([mib''' mi''' fa''' fad''' sol''' fad''' re''' la''])} re''''8-. #(set-octavation 0)

}  \\


{\stemUp <sol sib mib' sol'>2 <fa sib re' fa'>2 <mib sol do' mib'>2  <fad la re'>2}
>>
\stopStaff
\ct \tst
\skip 2*4
\override Staff.RehearsalMark #'break-visibility = #end-of-line-invisible


\break
\startStaff
\cf \tsf

<<
	{
	do'''8\rest#(set-octavation 1) \stemDown sol'''64^\markup {\hspace #0 \raise #4.5 "scintillante"}_([lab''' la''' sib''' do'''' sib''' sol''' mib''']) sol''''8-. r8 #(set-octavation 0) do'''8\rest#(set-octavation 1) sol'''64_([lab''' la''' sib''' do'''' sib''' fa''' re''']) fa''''8-. r8 #(set-octavation 0)
 do'''8\rest#(set-octavation 1) \times 4/7 {\stemDown mib'''32_([mi''' fa''' fad''' sol''' mib''' do'''])} mib''''8-. r8 #(set-octavation 0) do'''8\rest#(set-octavation 1) \times 8/9 {re'''64_([mib''' mi''' fa''' fad''' sol''' fad''' re''' la''])} re''''8-. #(set-octavation 0)

}  \\


{\stemUp <sol sib mib' sol'>2 <fa sib re' fa'>2_" " <mib sol do' mib'>2_" "  <fad la re'>2_" "}
\stopStaff
>>


  }

>>
\new PianoStaff 
<<
       
\new Staff = "up"
{ 

%---------------------------------------------------------------------------
% RH
%---------------------------------------------------------------------------

\clef treble
\key sol \minor
\time 4/4



<sib'' re''' sol''' sib'''>2^"Andante"\arpeggio\p <la'' do''' mib''' la'''>2\arpeggio <re'' fad'' la'' re'''>2\arpeggio\fermata~ <re'' fad'' la'' re'''>4 r
s1_"Ben cantanto" re'2 mib'4..-> mib'16  s1 
 


s1 #(set-octavation 1) <re''' fad''' la''' re''''>2\arpeggio\pp <re''' sol''' sib''' re''''>4\arpeggio\< <re''' mi''' sol''' re''''>\arpeggio\! <re''' fad''' la''' re''''>2\arpeggio~ <re''' fad''' la''' re''''>4 #(set-octavation 0) r
s4\p <re'-. sol'>^"M.G." s4 <mib'-. fad'> s <sib-.  sol'> s <sib-. mib' sol'> s4\f <mib'-. sol'> s <re'-. fad'>


s4_"legato"
<<
{<re'' re'''>\arpeggio\pp <mib'' do'''> <fad'' la''>} \\
{sol''2 s4}
>>
s4 <re'-. sol'> s4 <mib'-. fad'> s <sib-.  sol'> s <sib-. mib' sol'> s4\f <mib'-. sol'> s <re'-. fad'> s\p
<<
{<re'' sol'' sib'' re'''>\arpeggio <sol'' sib'' re''' sol'''>\arpeggio} \\
{<sol' sib'>\arpeggio <sol' sib' re''>\arpeggio}
>>
r4


<<
{r4 <sib' mib'' sol''> r4 <sib' re'' fa''> r <sol' do'' mib''> r <fad' la' re''>} \\
{sol'2\mf fa'2 mib'2 re'2}
>>
r8 
<fa' re''>\< [<fa' re''><sol' mib''>]\! <fa' re''>[<mib' do''><re' sib'><do' la'>] <re' sib'>\> <re' sib'>4\! <do' la'>8 <sib sol'>4\<~<sib sol'>8\! r8


<<
{r4 <sib' mib'' sol''> r4 <sib' re'' fa''> r <sol' do'' mib''> r <fad' la' re''>} \\
{sol'2 fa'2 mib'2 re'2}
>>
\clef bass
r8 
<fa re'>\< [<fa re'><sol mib'>]\! <fa re'>[<mib do'>\> <re sib><do la>\!] <re sib>_"rit." <re sib>4 <do la>8 
\bar "||" \key sol \major \time 3/4 
% 
\clef treble 
\cadenzaOff


#(set-octavation 1) <si'' re''' sol''' si'''>4^\markup {\hspace #0 \raise #3.5 "Lento con expressione."}\p\arpeggio <sol'' si'' re''' sol'''>\arpeggio <mi'' sold'' la'' mi'''>\arpeggio #(set-octavation 0)
 \bar "|" \cadenzaOff <re'' sol'' si'' re'''>4..\arpeggio <mi'' mi'''>16 <re'' re'''>4
#(set-octavation 1) <si'' re''' sol''' si'''>4\arpeggio <sol'' si'' re''' sol'''>\arpeggio <mi'' sold'' la'' mi'''>\arpeggio #(set-octavation 0)
<re'' sol'' si'' re'''>4..\arpeggio <mi'' mi'''>16 <re'' re'''>4

\tnt
\times 2/3 {\override DynamicLineSpanner #'padding = #3 si'8^\< [do'' dod'']} \appoggiatura {re''16 [mi'']} \times 2/3 {re''8 [dod'' re'']} \acciaccatura re'' \times 2/3 {si''-_ [la''-_  sol''-_]\!}
\appoggiatura {fad''16 [sol'' la'']} sol''2-> fad''4

\tbt
\times 2/3 {r8 <fad' la'>[\( <sol' si'>]}{\acciaccatura re'' }\times 2/3 {<la' do''>[<sold' si'><la' do''>]\)} <do'' mi''^^>16 [<do'' mi''^^>8 <si' re''>16]
<sol' si'>4 #(set-octavation 1)\times 2/3 {r8 <re'' re'''-.>[<mi'' mi'''-.>]} \times 2/3 {\stemUp <fad'' fad'''-.><sol'' sol'''-.><la'' la'''-.>}



<si'' re''' sol''' si'''>4\mf\arpeggio <sol'' si'' re''' sol'''>\arpeggio <mi'' sol'' do''' mi'''>\arpeggio #(set-octavation 0)
<re'' sol'' si'' re'''>4..\arpeggio <mi'' mi'''>16 <re'' re'''>4
#(set-octavation 1)<si'' mi''' sol''' si'''>4\arpeggio <sol'' si'' mi''' sol'''>\arpeggio <mi'' sol'' si'' mi'''>\arpeggio #(set-octavation 0)
<red'' fad'' si'' red'''>4..\arpeggio <mi'' mi'''>16 <red'' red'''>4


<re'' fad'' la'' re'''>4\p #(set-octavation 1)

\times 2/3 {<fad'' fad'''>(<la'' la'''>8)} 
\times 2/3 {<do''' do''''>4 <mib''' mib''''>8}
\times 2/3 {<re''' re''''-> >4_"poco rall." (<sol''' sol''''>8)} #(set-octavation 0) r4 r4
#(set-octavation 1)\times 2/3 {<la'' la'''-> >(<re''' re''''-> >8)}#(set-octavation 0) r4 r4 \bar "||" \key sol \minor \time 4/4


\override Score.RehearsalMark #'break-align-symbol = #'time-signature \mark \markup {\hspace #0 \raise #3.5 "Tempo Primo"}
s4_\markup {\hspace #0 \raise #-2.5 " Ben cantanto"}\p <re'-. sol'>^"M.G." s4 <mib'-. fad'>  
<<
{s <sol'' sib'' sol'''>-. s <sol'' sib'' sol'''>-.} \\
{s <sol' sib' re''> s <sib' mib''>}
>> 
 
s\f \override DynamicLineSpanner #'padding = #1 <mib'-. sol'>\< s\! <re'-. fad'> s4_"legato"
<<
{<re'' re'''>\arpeggio\p <mib'' do'''> <fad'' la''>} \\
{sol''2 s4}
>>


s4 <re'-. sol'> s4 <mib'-. fad'>  
<<
{s <sol'' sib'' sol'''>-. s <sol'' sib'' sol'''>-.} \\
{s <sol' sib' re''> s <sib' mib''>}
>> 
s\f \override DynamicLineSpanner #'padding = #1 <mib'-. sol'>\< s\! <re'-. fad'> s\p
<<
{<re'' sol'' sib'' re'''>-.\arpeggio <sol'' sib'' re''' sol'''>-.\arpeggio} \\
{<sol' sib'>\arpeggio <sol' sib' re''>\arpeggio}
>>
r4


\pageBreak
<<
{r4 ^\mf << {<sib'' mib''' sol''' sib'''>} \\ {<sol' sib' mib'' sol''>} >> r4 << {<sib'' re''' fa''' sib'''>} \\ {<fa' sib' re'' fa''>} >>} \\
{<sol sib mib' sol'>2_"sostenuto" <fa sib re' fa'>2}
>> 
\noBreak
<<
{r4 << {<sol'' do''' mib''' sol'''>} \\ {<mib' sol' do'' mib''>} >> r4 << {\stemDown <fad' la' re'' fad''>} \\ {\stemUp <la'' re''' fad''' la'''>} >>} \\
{\stemUp 
<do' mib'>2 \stemUp re'} 
>> 
\noBreak

r8  \stemDown <re'' fa'' re'''>_"poco cresc." [<re'' fa'' re'''><mib'' sol'' mib'''>]<re'' fa'' re'''>[<do'' mib'' do'''><sib' re'' sib''><la' do'' la''>]
\noBreak
<sib' re'' sib''><sib' re'' sib''>4_> <la' do'' la''>8 <sol' sib' sol''>2 



\break

<<
{r4 << {<sib'' mib''' sol''' sib'''>} \\ {<sol' sib' mib'' sol''>} >> r4 << {<sib'' re''' fa''' sib'''>} \\ {<fa' sib' re'' fa''>} >>} \\
{<sol sib mib' sol'>2 <fa sib re' fa'>2}
>> 
\noBreak
<<
{r4 << {<sol'' do''' mib''' sol'''>} \\ {<mib' sol' do'' mib''>} >> r4 << {\stemDown <fad' la' re'' fad''>} \\ {\stemUp <la'' re''' fad''' la'''>} >>} \\
{\stemUp 
<do' mib'>2 \stemUp re'} 
>> 

\noBreak
r8  <re'' fa'' re'''>_"poco cresc." [<re'' fa'' re'''><mib'' sol'' mib'''>]<re'' fa'' re'''>[<do'' mib'' do'''><sib' re'' sib''><la' do'' la''>]
\noBreak
<sib' re'' sib''>4. <la' do'' la''>8

\override Staff.TimeSignature #'break-visibility = #end-of-line-invisible
\bar "||" \key sol\major \time 3/4 

\cadenzaOff


\break
\override Score.RehearsalMark #'break-align-symbol = #'time-signature \mark \markup {\hspace #0 \raise #4.5 "Dolce"}
#(set-octavation 1) <si'' re''' sol''' si'''>4\arpeggio <sol'' si'' re''' sol'''>\arpeggio <mi'' sold'' la'' mi'''>\arpeggio #(set-octavation 0)
 \bar "|" 
\cadenzaOff  <re'' sol'' si'' re'''>4..\arpeggio <mi'' mi'''>16 <re'' sol'' si'' re'''>4
#(set-octavation 1) <si'' re''' sol''' si'''>4\arpeggio <sol'' si'' re''' sol'''>\arpeggio <mi'' sold'' la'' mi'''>\arpeggio #(set-octavation 0)
<re'' sol'' si'' re'''>4..\arpeggio <mi'' mi'''>16 <re'' sol '' si' 're'''>4\arpeggio






\break
\tbt
\times 2/3 {\override DynamicLineSpanner #'padding = #3 si'8^\< [do'' dod'']} \appoggiatura {re''16 [mi'']} \times 2/3 {re''8 [dod'' re'']} \times 2/3 {\stemDown si''-_\! [la''-_ sol''-_]} 
\appoggiatura {fad''16 [sol'' la'']} sol''2^^ fad''4

\times 2/3 {\override DynamicLineSpanner #'padding = #3 mi'8\p^\< [fa' fad']} \times 2/3 {sol' [si' do''\!]} \appoggiatura {do''16 [re'']} \times 2/3 {\stemDown mi''8-. [re''-. do''-.]}

\pageBreak


do''2 si'4
\times 2/3 {mi'8 ([fad' sold']} \times 2/3 {la' [si' do''])} \times 2/3 {\stemDown red''^\< [fad''8. mi''16\!] }
mi''2 re''4


\times 2/3 {\override DynamicLineSpanner #'padding = #1 <do''' mib'''>8\f\> [ <la'' do'''> <fad'' la''>\!]} \times 2/3 {<mib'' fad''>[<do'' mib''><la' do''>]} 
\stemDown


\times 2/3 {si'^\< <re' fad' si'>8.\! \change Staff = down \stemUp
     \clef treble < do' la'>16} 
\change Staff = up
#(set-octavation 1)
<si'' re''' sol''' si'''>4\p\arpeggio <sol'' si'' re''' sol'''>\arpeggio <mi'' sol'' si'' mi'''>\arpeggio #(set-octavation 0)
<re'' fad'' la'' re'''>4..\arpeggio <mi'' mi'''>16 <re'' re'''>4

<si' re'' sol'' si''>4\pp\arpeggio <sol' si' re'' sol''>\arpeggio <mi' sold' la' mi''>\arpeggio 
<re' fad' la' re''>4..\arpeggio <mi' mi''>16 <re' fad' la' re''>4\arpeggio


si'_"lento cresc."^\< ~\times 2/3 {si'8\! [(sol' <do' mi'>]} \times 2/3 {\stemUp <si re'>[ \change Staff = down \stemUp <sol si> sol])} \change Staff = up 

s2 
\set PianoStaff.connectArpeggios = ##t
<sol' do'' sol''>4\p\arpeggio
\set PianoStaff.connectArpeggios = ##f
<si' re'' sol'' si''>2\arpeggio #(set-octavation 1) <sol'' do''' sol'''>4\pp\arpeggio <si'' re''' sol''' si'''>4_"Fine"\arpeggio #(set-octavation 0) r2 \bar "||"



}






 
    
\new Staff = "down"
{ 

%---------------------------------------------------------------------------
% LH
%---------------------------------------------------------------------------

\clef treble
\key sol \minor
\time 4/4



<sol' sib' re'' sol''>2\arpeggio <do' mib' la' do''>2\arpeggio <re' fad' la'>2\arpeggio\fermata~ <re' fad' la'>4 r
\clef bass 
<< 
{sol la8 [sib] do' \times 2/3 {do'16 re' do'} sib8 [la]} \\
{sol,4 la,8 [sib,] do \times 2/3 {do16 re do} sib,8 [la,]}
>>
re2 mib4..-> mib16
<< 
{ fad2 sol4.. sol16 re1 } \\
{ fad,2 sol,4.. sol,16 re,1}
>>



\clef treble
<re'' fad'' la''>2\arpeggio <re'' sol'' sib''>4\arpeggio <re'' mi'' sol''>4\arpeggio <re'' fad'' la''>2\arpeggio~ <re'' fad'' la''>4 r
\clef bass 
<< 
{ sol la8 [sib^\markup {\hspace#0 \raise#1.2 "cantabile e doloroso"}] do' \times 2/3 {do'16 re' do'} sib8 [la] re'2 sol r8 la [sib do'] do' \times 2/3 {do'16 re' do'} sib8 [la] sib8 r8 } \\
{ sol,4 s4 sol, s sol, s mib, s do, s re, s sol,}
>>



\clef treble
sib' la' <re' do''>
\clef bass 
<< 
{ sol la8 [sib] do' \times 2/3 {do'16 re' do'} sib8 [la] re'2 sol r8 la [sib do'] do' \times 2/3 {do'16 re' do'} sib8 [la] sol4 s2 r4 } \\
{ sol,4 s4 sol, s sol, s mib, s do, s re, s sol, s2 s4}
>>





mib, <sol sib mib'> sib,, <fa sib re'> do, <mib sol do'> re, <re fad la> sol, sol do, <mib sol> re, re sol,, <sib re' sol'> 




mib, <sol sib mib'> sib,, <fa sib re'> do, <mib sol do'> re, <re fad la> sol,, sol, do,, do, re,, re, 

\key sol \major 


\tnt \tbt



\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [dod' lad])} 
\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [re' si])}
\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [dod' lad])}
\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [re' si])}



\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [re' si])}
\times 2/3 {<la,, la,> [(do' re']} \times 2/3 {fad' [re' do']} \times 2/3 {fad' [re' do'])}
\times 2/3 {re,8 [(do' re']} \times 2/3 {fad' [re' do']} fad'4)
\times 2/3 {sol,8 [(si re']} sol'4) r4


\times 2/3 {<sol,, sol,>8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [mi' do'])} 
\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [re' si])}
\times 2/3 {mi,8 [(si mi']} \times 2/3 {sol' [mi' si]} \times 2/3 {sol' [mi' si])}
\times 2/3 {si,8 [(fad si]} \times 2/3 {red' [si fad]} \times 2/3 {red' [si fad])}




\times 2/3 {<re, re>8 [(do' re']} \times 2/3 {fad' [re' do']} \times 2/3 {fad' [re' do'])} 
\times 2/3 {<re, re>8 [(sib re']} \clef treble \times 2/3 {sol' [sib' re'']} sol''4) \clef bass 
\times 2/3 {re,8 [(la do']} \clef treble \times 2/3 {re' [fad' la']} re''4) \bar "||" \key sol \minor \time 4/4 \clef bass



<< 
{ sol la8 [sib] do' \times 2/3 {do'16 re' do'} sib8 [la] re'2 sol r8 la [sib do'] do' \times 2/3 {do'16 re' do'} sib8 [la] sib8 r8 } \\
{ sol,4 s4 sol, s sol, s mib, s do, s re, s sol,}
>>

\clef treble
sib' la' <re' do''>



\clef bass 
<< 
{ sol la8 [sib] do' \times 2/3 {do'16 re' do'} sib8 [la] re'2 sol r8 la [sib do'] do' \times 2/3 {do'16 re' do'} sib8 [la] sol4 s2 r4 } \\
{ sol,4 s4 sol, s sol, s mib, s do, s re, s sol, s2 s4}
>>




<mib, mib>4 s <sib,, sib,> s
<<
{\stemExtend <mib sol>2 \stemExtend \noFlag <fad la>2} \\
{<do, do>4 s <re, re> s}
>>
sol, <si fa' sol'> do <do' mib' sol'> re <fad do' re'> sol, <sol sib re'>



<mib, mib>4 s <sib,, sib,> s
<<
{\stemExtend <mib sol>2 \stemExtend \noFlag <fad la>2} \\
{<do, do>4 s <re, re> s}
>>
sol, <si fa' sol'> do, <do' mib' sol'> <<{re,8 s}\\{re,8 [re']}>> re'4^^

\override Staff.TimeSignature #'break-visibility = #end-of-line-invisible

\key sol\major 



\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [dod' lad])} 
\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [re' si])}
\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [dod' lad])}
\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [re' si])}




\times 2/3 {sol,8 [(si re']} \times 2/3 {sol' [re' si]} \times 2/3 {sol' [re' si])} 
\times 2/3 {sol,8 [(la si]} \times 2/3 {red' [si la]} \times 2/3 {red' [si la])}
\times 2/3 {do,8 [(sol do']} \times 2/3 {mi' [do' sol]} \times 2/3 {mi' [do' sol])}




\times 2/3 {mi,8 [(re' fa')]} \times 2/3 {sold [(re' mi')]} \times 2/3 {mi [(re' mi')]}
\times 2/3 {la,8^\< [(la do')]} \times 2/3 {mi' [(do' la\!)]} \times 2/3 {la' [(mi' do')]}
\times 2/3 {re8 [(sol si]} \times 2/3 {re' [si sol]} \times 2/3 {sol' [re' si])}



\times 2/3 {re, [(la do']} mib'4) \stemDown re,8 re\fermata


<<{<si sol'>4 s }\\{\times 2/3 {sol8 [(re' sol']} \times 2/3 {si' [sol' re'])}}>>
si'4
\times 2/3 {sol8 ([re' fad']} \times 2/3 {do'' [fad' re')]}  do''4
\clef bass
\times 2/3 {sol,8 ([re sol]} \times 2/3 {si [sol re)]} dod4




\times 2/3 {sol,8 [re fad]} \times 2/3 {do' [fad re]} do'4
\times 2/3 {sol,8^\f ([re sol]} \times 2/3 {si4-.) r8} \times 2/3 {r4 \stemDown mi8}

<<{<sol si>2}\\{<sol, re>}>> 
<sol mi'>4\arpeggio

<sol re' sol'>2\arpeggio \clef treble <sol' mib''>4\arpeggio 
<sol' re'' sol''>4\arpeggio \clef bass \acciaccatura sol, sol,,2 \bar "||"

}


>>
>>
\layout {}
\midi {}
}
