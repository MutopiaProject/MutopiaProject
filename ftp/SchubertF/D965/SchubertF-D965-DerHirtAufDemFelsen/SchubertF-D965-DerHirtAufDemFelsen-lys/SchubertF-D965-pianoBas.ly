
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B32. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
pianoBasA = \relative do {
%--- 0
\partial 16 re16
%--- 1
re2 r8. re16
re2 r4 \tupletUp \TUPBNO
\times 2/3 { <re sib'>8[ <re sib'> <re sib'>] } \times 2/3 { <re sib'>8[ <re sib'> <re sib'>] }
 \times 2/3 { <re sib'>8[ <re sib'> <re sib'>] }
<re la'>4~ <re la'>8 r r4
\times 2/3 { <re, sib'>8[ <re sib'> <re sib'>] } \times 2/3 { <re sib'>8[ <re sib'> <re sib'>] }
 \times 2/3 { <re sib'>8[ <re sib'> <re sib'>] } \TUPNO
<re la'>2\fermata r4
%--- 7
<sib sib'>2 r4
<re re'>2 r4
<do do'>2 r4
<fa, fa'>2 r4
<lab lab'>2 r4
%--- 12
<sol sol'>2 r4
<re' re'>2 r4
<mib mib'>4 r <re re'>
<do do'>4 r <mib mib'>
fa2 <mib mib'>8 r
%--- 17
<re re'>8 r <mib mib'> r <do do'> r
<fa fa'>2 r4
<sib, sib'>2 r4
<re re'>2 r4
<do do'>2 r4
%--- 22
<fa, fa'>2 r4
<fad fad'>2 r4
<fad fad'>2 r4
<sol sol'>2 r4
<lab lab'>2 r4
%--- 27
<sold sold'>2 r4
<sold sold'>2 r4
<la la'>2 r4
<la la'>2 r4
<la la'>2 r4
%--- 32
<sib sib'>4 r \set doubleSlurs = ##t <si si'>(
<do do'>4) r <la la'>(
<sib sib'>4) \set doubleSlurs = ##f r re(
mib2) r4
mib4( mi fa)
%--- 37
<sib, sib'>2 r4
sib2 r4
<sib sib'>2 r4
<re re'>2 r4
<do do'>2 r4
%--- 42
<fa, fa'>2 r4
<do' do'>4 r <fa, fa'>
<sol sol'>2 r4
<sib! sib'>4 r mib
fa2 r4
%--- 47
<la, la'>2 r4
<sib sib'>2 r4
\times 2/3 { la'8_>[ <fa' do' mib> <fa do' mib>] } \times 2/3 { \repeat tremolo 3 <fa do' mib> }
 \times 2/3 { \repeat tremolo 3 <fa do' mib> } 
\times 2/3 { sib,8_>[ <fa' sib re> <fa sib re>]} \times 2/3 { \repeat tremolo 3 <fa sib re> }
 \times 2/3 { \repeat tremolo 3 <fa sib re> } 
<sib,, sib'>2 r4
%--- 52
<re re'>2 r4
<do do'>2 r4
<fa, fa'>2 r4
<do' do'>2 r4
<sol sol'>2 r4
%--- 57
<do do'>2 r4
<la la'>2 r4
<fa fa'>2 r4
<sib sib'>2 r4
\times 2/3 { fa'8[ <fa' la do mib> <fa la do mib>] } \times 2/3 { \repeat tremolo 3 <fa la do mib> }
 \times 2/3 { \repeat tremolo 3 <fa la do mib> } 
%--- 62
\times 2/3 { sib,8[ <fa' sib re> <fa sib re>]} \times 2/3 { \repeat tremolo 3 <fa sib re> }
 \times 2/3 { \repeat tremolo 3 <fa sib re> } 
\times 2/3 { sib,8[ <fa' sib re> <fa sib re>]} \times 2/3 { \repeat tremolo 3 <fa sib re> } <fa sib re>8 r
<solb,, solb'>8 r <solb solb'> r <solb solb'> r 
<solb solb'>2 r4
%--- 66
<solb solb'>8 r <solb solb'> r <solb solb'> r 
<solb solb'>2 r4
<fa fa'>2 r4
<solb solb'>2 r4
%--- 70
<solb solb'>8 r <solb solb'> r <solb solb'> r 
<solb solb'>2 r4
<solb solb'>8 r <solb solb'> r <solb solb'> r 
<solb solb'>2 r4
%--- 74
<fa fa'>2 r4
<solb solb'>2 r4
<solb solb'>8 r <solb solb'> r <solb solb'> r 
<solb solb'>2 r4
%--- 78
<si si'>8 r <si si'> r <si si'> r 
<la! la'!>2 <la la'>8 r
<re re'>2 r4
<re re'>2 r4
%--- 82
<fad, fad'>2 r4
<la la'>2 <la la'>4
<re re'>2 r4
<re re'>2 r4
<re re'>2 r4
%--- 87
<re re'>2 r4
<sib! sib'!>2 r4
<si si'>2 r4
<do do'>4 r <la la'>
<sib sib'>4 r re4(
%--- 92
mib2) r4
mib4( mi fa)
<sib, sib'>2 r4
sib2 r4
<sib sib'>2 r4
%--- 97
<re re'>2 r4
<do do'>2 r4
<fa, fa'>2 r4
<do' do'>4 r <fa, fa'>
<sol sol'>2 r4
%--- 102
<sib! sib'!>4 r mib
fa2 r4
<la, la'>2 r4
<sib sib'>2 r4
\times 2/3  { la'8_>[ <fa' do' mib> <fa do' mib>] } \times 2/3 { \repeat tremolo 3 <fa do' mib> }
 \times 2/3 { \repeat tremolo 3 <fa do' mib> }
%--- 107
\times 2/3  { sib,8_>[ <fa' sib re> <fa sib re>] }      \times 2/3 { \repeat tremolo 3 <fa sib re> }
 \times 2/3 { \repeat tremolo 3 <fa sib re> }
<sib,, sib'>2 r4
<re re'>2 r4
<do do'>2 r4
<fa, fa'>2 r4
%--- 112
<sib sib'>4 r <sol sol'>
<lab lab'>2 r4
\times 2/3  { lab'8[ <mib' lab do> <mib lab do>] } \times 2/3 { \repeat tremolo 3 <mib lab do> }
 \times 2/3 { \repeat tremolo 3 <mib lab do> }
\times 2/3  { \repeat tremolo 3 <mib lab do> }     \times 2/3 { \repeat tremolo 3 <mib lab do> }
 \times 2/3 { \repeat tremolo 3 <mib lab do> }
\times 2/3  { la,!8[ <fa' do' mib> <fa do' mib>] }  \times 2/3 { \repeat tremolo 3 <fa do' mib> }
 \times 2/3 { \repeat tremolo 3 <fa do' mib> }
%--- 117
\times 2/3  { la,8[ <fa' do' mib> <fa do' mib>] }  \times 2/3 { \repeat tremolo 3 <fa do' mib> }
 \times 2/3 { \repeat tremolo 3 <fa do' mib> }
<fa,, fa'>2 r4
<sib sib'>2 r4
\times 2/3  { fa'8[ <fa' la do mib> <fa la do mib>] } \times 2/3 { \repeat tremolo 3 <fa la do mib> }
 \times 2/3 { \repeat tremolo 3 <fa la do mib> }
\times 2/3  { sib,8[ <fa' sib re> <fa sib re>] }      \times 2/3 { \repeat tremolo 3 <fa sib re> }
 \times 2/3 { \repeat tremolo 3 <fa sib re> }
%--- 122
\times 2/3  { sib,8[ <fa' sib re> <fa sib re>] } \times 2/3 { \repeat tremolo 3 <fa sib re> }
 \times 2/3 { \repeat tremolo 3 <fa sib re> }
\times 2/3  { do8[ <mib lab do> <mib lab do>] }  \times 2/3 { \repeat tremolo 3 <mib lab do> }
 \times 2/3 { \repeat tremolo 3 <mib lab do> }
\times 2/3  { do8[ <mib lab do> <mib lab do>] }  \times 2/3 { \repeat tremolo 3 <mib lab do> }
 \times 2/3 { \repeat tremolo 3 <mib lab do> }
\times 2/3  { re,8[ <re' sol si> <re sol si>] }  \times 2/3 { \repeat tremolo 3 <re sol si> }
 \times 2/3 { \repeat tremolo 3 <re sol si> }
\times 2/3  { re,8[ <re' la' do> <re la' do>] }  \times 2/3 { \repeat tremolo 3 <re la' do> }
 \times 2/3 { \repeat tremolo 3 <re la' do> }
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
pianoBasB = \relative do {
%--- 127
\repeat unfold 10 { <sol sol'>2 r4 }
%--- 137
<do, do'>2 r4
<reb reb'>2 r4
<do do'>2 r4
<re! re'!>2 r4
%--- 141
<sol, sol'>2 r4
\repeat unfold 7 { <sol' sol'>2 r4 }
%--- 148
<do, do'>2 r4
<reb reb'>2 r4
<dob dob'>2 r4
<sib sib'>2 r4
<lab lab'>2 r4
<lab lab'>2 r4
%--- 155
<sold sold'>2 r4
<sold sold'>2 r4
<la! la'!>2 r4
<la la'>2 r4
<re re'>2 r4
<mi mi'>2 r4
%--- 161
<la, la'>2 r4
<la la'>2 r4
<la' la'>2 r4
<sol! sol'!>2 r4
<fad fad'>2 r4
<fa! fa'!>2 r4
<mi mi'>2 r4
%--- 168
<mib! mib'!>2 r4
\repeat unfold 4 { <re re'>2 r4 }
<fad fad'>2 r4
<fa! fa'!>2 r4
%--- 175
<mi mi'>2 r4
<mib! mib'!>2 r4
\repeat unfold 6 { <re re'>2 r4 }
%--- 183
<sol, sol'>2 r4
\repeat unfold 6 { <sol' sol'>2 r4 }
%--- 190
<si, si'>2 r4
<do do'>2 r4
<si si'>2 r4
<dod dod'>2 r4
<re re'>2 r4
%--- 195
<mi mi'>2 r4
<mi mi'>2 r4
<si si'>2 r4
<la la'>2 r4
<sol sol'>2 r4
<do do'>2 r4
%--- 201
\repeat unfold 4 { <re re'>2 r4 }
%--- 205
\repeat unfold 6 { <sol, sol'>2 r4 }
%--- 209
mib'2 r4
do2 r4
\repeat unfold 4 { <la la'>2 r4 }
%--- 217
<la la'>2.\fermata
\appoggiatura s8 \TIMESTNO \time 2/1
 R1*2-\fermataMarkup
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
pianoBasC = \relative do, {
\TIMEB 
%--- 219
<sib sib'>4 r
<sib sib'>4 r
<do do'>4 r
<fa, fa'>4 r
<re' re'>4 r
<sib sib'>4 r
<fa fa'>4 r
%--- 226
<sib sib'>4 r
<sib sib'>4 r
<sib sib'>4 r
<do do'>4 r
<fa, fa'>4 r
<re' re'>4 r
<sib sib'>4 r
%--- 233
<fa fa'>4 r
<sib sib'>4 r
<sib sib'>4 r
<sib sib'>4 r
<do do'>4 r
<fa, fa'>4 r
<re' re'>4 r
%--- 240
<sib sib'>4 r
<fa fa'>4 r
<sib sib'>4 r
<sib sib'>8 r <sib sib'> r
<sib sib'>4 r
<sib sib'>8 r <sib sib'> r
<sib sib'>4 r
<sib sib'>8 r <sib sib'> r
%--- 248
<sib sib'>4 r
<sib sib'>8 r <sib sib'> r
<sib sib'>4 r
<sib sib'>4 r
<sib sib'>4 r
<do do'>4 r
<fa, fa'>4 r
%--- 255
<re' re'>4 r
<sib sib'>4 r
mib8 r fa r
<sib, sib'>4 r
sib'8[ <fa' sib re> <fa sib re> <fa sib re>]
re8[ <fa sib re> <fa sib re> <fa sib re>]
fa,8[ <fa' la mib'> <fa la mib'> <fa la mib'>]
%--- 262
sib,8[ <fa' sib re> <fa sib re>] r
re8.[ la16] re8.[ la16] 
re8.[ la16] re8-.[ la-.] 
re8.[ la16] re8.[ la16] 
re8.[ la16] re8 r
<re, re'>4 r
%--- 268
<re re'>4 r
<re re'>4 r
<re re'>8 r <si si'> r
<mi mi'>4 r
<sol, sol'>4 r
<la la'>4 r
%--- 274
<la la'>4 r
re'8.[ la16] re8.[ la16] 
re8.[ la16] re8-.[ la-.] 
re8.[ la16] re8.[ la16] 
re8.[ la16] re8 r
<re, re'>4 r
<re re'>4 r
%--- 281
<re re'>4 r
<re re'>8 r <si si'> r
<mi mi'>4 r
<sol, sol'>4 r
<la la'>4 r
<la la'>4 r
%--- 287
<re re'>4 r
<re re'>4 r
<re re'>4 r
<re re'>4 r
<sib sib'>4 r
<re re'>4 r
<do do'>4 r
%--- 294
<fa, fa'>4 r
<re' re'>4 r
<sib sib'>4 r
<fa fa'>4 r
<sib sib'>4 r
<sib sib'>8 r <sib sib'> r
<sib sib'>4 r
<sib sib'>8 r <sib sib'> r
%--- 302
<sib sib'>4 r
<sib sib'>8 r <sib sib'> r
<sib sib'>4 r
<sib sib'>8 r <sib sib'> r
<sib sib'>4 r
<sib sib'>4 r
<sib sib'>4 r
<do do'>4 r
%--- 310
<fa, fa'>4 r
<re' re'>4 r
<sib sib'>4 r
mib8 r fa r
<sib, sib'>4 r
<la la'>4 r
<sib sib'>4 r
%--- 317
<la la'>4 r
<sib sib'>4 r
<sib sib'>4 r
<mib mib'>4 r
fa8 r fa r
sib8-.[ fa'-. re-. sib-.]
%--- 323
<la, la'>8 r r4
<sib sib'>8 r r4
<la la'>8 r r4
<sib sib'>4 r
<mib mib'>4 r
<mib mib'>4 r
%--- 329
fa8 r fa r
sib8 r <re, re'> r
<sol re'> r <re re'> r
<sol re'> r <fa fa'> r
<sib fa'> r <fa fa'> r
<sib fa'>4 r
%--- 335
sol16[ sol' sol, sol'] sol,[ sol' sol, sol'] 
<sol, sol'>4 r
<fa fa'>4 r
<fa, fa'>4 r
<sib sib'>8 r <fa' fa'> r
<sib fa'>8 r <sol sol'> r
<do sol'>8 r <sib sib'> r
%--- 342
<sib sib'> r <sol sol'> r
<do, do'>4 r
r8 do'-.[ re-. mib-.]
fa4 r
<fa, fa'>4 r
<sib sib'>4 r
<sib re fa sib>4 r
<sib, sib'>4 r
}


%%%%%%%%%%%%%%%%%%%% SYNTHESE PIANO BAS
pianoBas = { \pianoBasA \pianoBasB \pianoBasC }


%%%%%%%%%%%%%%%%%%%% SYNTHESE POUR LA PARTITION
notePartPianoBas = {
 \clef bass
 \KEYA \TIMEA
 \set autoBeaming = ##f
 \pianoBas
}

noteMidiPianoBas = {
 \clef bass
 \KEYA \TIMEA
 \IPIANOBAS
 \set autoBeaming = ##f
 \unfoldRepeats { \pianoBas }
}


