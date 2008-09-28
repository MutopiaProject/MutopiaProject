%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POÈME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poemeA = \lyricmode {
 \set fontSize = #-1

%--- 38-48
Wenn auf dem höch -- sten Fels ich __ steh’,
in’s tie -- fe Thal her -- nie -- der seh’,
und sin -- ge, und sin -- ge;

%--- 51-60
fern aus dem tie -- fen dun -- keln Thal
schwingt sich em -- por der Wie -- der -- hall,
der Wie -- der -- hall der Klüf -- te.

%--- 63-81
Je wei -- ter mei -- ne Stim -- me dringt,
je hel -- ler sie mir wie -- der -- klingt
von un -- ten, von un -- ten.

Mein Lieb -- chen wohnt so weit von mir,
drum sehn’ ich mich so heiß nach ihr
hin -- ü -- ber, hin -- ü -- ber,

je wei -- ter mei -- ne Stim -- me dringt,
je hel -- ler sie mir wie -- der -- klingt __
von un -- ten, von un -- ten.

%--- 95-105
Wenn auf dem höch -- sten Fels ich __ steh’,
in’s tie -- fe Thal her -- nie -- der seh’,
und sin -- ge, und sin -- ge;

%--- 108-119
fern aus dem tie -- fen dun -- keln Thal
schwingt sich em -- por der Wie -- der -- hall,
der Wie -- der -- hall der Klüf -- te.
}


poemeB = \lyricmode {
 \set fontSize = #-1

%--- 128
In tie -- fem Gram __ ver -- zehr’ __ ich mich, __
mir ist die Freu -- de hin,
auf Er -- den mir __ die Hoff -- nung wich, __
ich hier so ein -- " " sam bin, __
ich hier __ so ein -- sam bin.

%--- 164
So seh -- nend klang im Wald __ das Lied, __
so seh -- nend klang es durch __ die Nacht, __
die Her -- zen es __ zum Him -- mel zieht __
mit wun -- der -- ba -- rer Macht, __
die Her -- zen es __ zum Him -- mel zieht __
mit wun -- der -- ba -- rer Macht. __
}

poemeC = \lyricmode {
 \set fontSize = #-1

%--- 226
Der Früh -- ling will kom -- men,
der Früh -- ling, mei -- ne Freud’,
nun mach’ __ ich mich fer -- tig
zum Wan -- dern be -- reit,

%--- 238
nun mach’ __ ich mich fer -- tig
zum Wan -- dern be -- reit.
Der Früh -- ling will kom -- men,
o Früh -- ling, mei -- ne Freud’,
der Früh -- ling will kom -- men,
der Früh -- ling, mei -- ne Freud’,
nun mach’ __ ich mich fer -- tig
zum Wan -- dern be -- reit.

%--- 262
Je wei -- ter mei -- ne Stim -- me dringt,
je hel -- ler sie mir wie -- der -- klingt,
je wei -- ter die Stim -- me __ dringt,
je hel -- ler sie mir __ wie -- der -- klingt

%--- 276
Je wei -- ter mei -- ne Stim -- me dringt,
je wei -- ter die Stim -- me dringt,
je hel -- ler, je hel -- ler sie wie -- der -- klingt. __
Der Früh -- ling will kom -- men,
der Früh -- ling will kom -- men,
der Früh -- ling, mei -- ne Freud’,
nun mach’ __ ich mich fer -- tig
zum Wan -- dern be -- reit;
der Früh -- ling will kom -- men,

%--- 302
der Früh -- ling, mei -- ne Freud’,
der Früh -- ling will kom -- men,
der Früh -- ling, mei -- ne Freud’,
nun mach’ __ ich mich fer -- tig
zum Wan -- dern be -- reit.
Je wei -- ter die Stim -- me dringt,
je hel -- ler sie wie -- der -- klingt,
je wei -- ter die Stim -- me dringt,
je hel -- ler sie wie -- der -- klingt,
je wei -- ter mei -- ne Stim -- me dringt,
je hel -- ler sie mir wie -- der -- klingt,
je hel -- ler sie wie -- der -- klingt.
}
poeme = { \poemeA \poemeB \poemeC }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. VOIX
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
chantAA = \relative do'' {
%--- 0
\partial 16 r16
%--- 1
R2.*5
r4 r4^\fermataMarkup r4
R2.*30
%--- 37
R2.
r4 r4 re8.[ mib16]
fa2 \times 2/3 { re8[ sib fa]} \TUPBNO \tupletUp
re4.( \times 2/3 { fa8 sib[ fa])} re'
fa2 \times 2/3 { mib8[ fa re]}
%--- 42
do2 r8 do
mib8. re16 do4. re8
si8. la16 sol4 r
R2.
r4 r r8 fa
%--- 47
fa8[ sol'] mib4 r8 fa,
fa8[ fa'] re4 r 
R2.*2
fa2 \times 2/3 { re8[ sib] fa}
%--- 52
re4.( fa8 \times 2/3 { sib[ fa]) re'}
fa2( \times 2/3 { mib8)[ fa] re}
do2 r8 do
do8. re16 mib4. do8
si16[ sol'] re[ si] sol2
%--- 57
R2.
r4 r r8 fa
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
chantAB = \relative do' {
%--- 59
fa8 sol' mib4. la,8\turn
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
chantAC = \relative do' {
%--- 59
fa8 sol' mib4. \times 2/3 { sib32 la sol } la16
}

%%%%%%%%%%%%%%%%%%%% suite
chantAD = \relative do'' {
%--- 60
sib8[ re] sib,4 r
R2.
%--- 62
R2.
r4 r4 r8 sib'
sib8. lab16 sib8. lab16 sib8. dob16 
reb2 r8 sib
%--- 66
dob8. sib16 dob8. reb16 mib8. fa16
solb2 r8 mib
reb8[ dob] reb,4 r8 mib'
reb8[ sib] reb,4 r8 sib'
%--- 70
sib8. lab16 sib8. lab16 sib8. dob16 
reb2 r8 sib
dob8. sib16 dob8. reb16 mib8. fa16
solb2 r8 sib,
%--- 74
dob8[ mib] lab,4 r8 la
sib8[ reb] solb,4 r8 sib
sib8. lab16 sib8. lab16 sib8. dob16
reb2 r8 dod 
%--- 78
re!8. dod16 si8. dod16 re8. mi16
fad2 ~ fad8 mi
mi8[ re] fad,4 r8 fad
si8[ la] re,4 r
%--- 82
R2.*10
%--- 92
R2.*3
r4 r re'8.[ mib16]
fa2 \times 2/3 { re8[ sib fa] }
%--- 97
re4.( \times 2/3 { fa8 sib[ fa]) } re'
fa2 \times 2/3 { mib8[ fa re] }
do2 r8 do
mib8. re16 do4. re8
si8. la16 sol4 r
%--- 102
R2.
r4 r r8 fa
fa8[ sol'] mib4 r8 fa,
fa8[ fa'] re4 r 
R2.
%--- 107
R2.
fa2 \times 2/3 { re8[ sib] fa}
re4.( fa8 \times 2/3 { sib[ fa]) re'}
fa2( \times 2/3 { mib8[ fa]) re}
do2 r8 la
%--- 112
sib8. do16 reb4. reb8
do16[ lab'] mib[ do] lab2
R2.*3
%--- 117
r4 r r8 fa
fa8 sol' mib4. la,8
sib8[ re] sib,4 r
R2.*2
%--- 122
R2.*5
}

chantPartA = { \chantAA \chantAB \chantAD }
chantMidiA = { \chantAA \chantAC \chantAD }


%%%%%%%%%%%%%%%%%%%% PARTIE B
chantBA = \relative do'' {
%--- 127
R2.
r4 r re
re2. ~
re2 ~ re8 do
do2( sib4)
r4 r sib
sib2( la4
%--- 134
do2) fad,4
sol2. ~
sol4 r sol
lab2 do4
mib2 sol,4
lab2 r4
r4 r re
%--- 141
re2. ~
re2 ~ re8 do
do2( sib4)
r4 r sib
sib2( la8[ do]
mib2) fad,4
\appoggiatura la4 sol2. ~
%--- 148
sol4 r re'
mib2.
mib2.
}

%%%%%%%%%%%%%%%%%%%% ORNEMENT PARTITION
chantBB = \relative do'' {
%--- 151-152
<< { mib2. s2 }  { s2 s16 \stemUp \set fontSize = #-3 fab32^([ mib reb16 mib] \set fontSize = #0 \stemDown fab2) \stemNeutral } >> mib4
}

%%%%%%%%%%%%%%%%%%%% ORNEMENT MIDI
chantBC = \relative do'' {
%--- 151-152
mib2 \times 2/3 { fab16[ mib reb8 mib] }
fab2 mib4
}


%%%%%%%%%%%%%%%%%%%% suite
chantBD = \relative do'' {
%--- 153
mib2. ~
mib4 r mib
%--- 155
mi2. ~
mi2. ~
mi2. ~
mi4( re!) do
sib!4( re fa) ~
fa4( mi) sold,
%--- 161
la2 r4
R2.*2
r4 r do
do2.
do2.
do2.
%--- 168
do2.
mib!2. ~
mib4( re8[ do]) sib![ la]
sol2.(
fad4) r do'
do2.
do2.
%--- 175
do2.
do2.
mib2. ~
mib4( re8[ do]) sib[ la]
sol2.(
fad4) r r
R2.
%--- 182
r4 r re'
re2. ~
re2 do8[ si]
la2( sol4)
r4 r sol
sol2. ~
sol8( do4 mi8) sol[ mi]
%--- 189
re2. ~
re4 r red
mi2.
mi2.
mi2.(
fad4)( mi) re
%--- 195
dod2.(
si4) r dod
re2.
re2.
re4( si') sol
fad4( mi) do
%--- 201
do2.(
si4) r si
mi2 re4
do8.([ re32 do] si4) la
sol2. ~
sol4 r r
%--- 207
R2.*7
%--- 214
R2.*3
R2.-\fermataMarkup
\appoggiatura s8 \TIMESTNO \time 2/1
R1*2-\fermataMarkup
}

chantPartB = { \chantBA \chantBB \chantBD }
chantMidiB = { \chantBA \chantBC \chantBD }


%%%%%%%%%%%%%%%%%%%% PARTIE C
chantC = \relative do' {
\TIMEB 
%--- 219
R2*7
%--- 226
r4 r8 fa
fa4 sol16[ la] sib[ do]
re4 fa,8 fa
fa8. sol16 la[ sib] do[ re]
mib4 r8 fa,
fa8[ sol16 la] sib[ do] re[ mib]
fa4 re8 sib
%--- 233
la8[ sol'] mib do
sib4 r
R2*3
r4 r8 fa
fa8[ sol16 la] sib[ do] re[ mib]
%--- 240
fa8[ sib] fa re
sol4 mib8 do
sib4 r8 fa'
sol,4 la8 mib'
re4 sib8 r
R2
r4 r8 fa'
sol,8 sib la mib'
%--- 248
re4 r
R2
r4 r8 fa,
fa4 sol16[ la] sib[ do]
re4 fa,8 fa
fa8. sol16 la[ sib] do[ re]
mib4 r8 fa,
%--- 255
fa8[ sol16 la] sib[ do] re[ mib]
fa8[ sib] fa re
sol4 mib8 do
sib4 r
R2*3
%--- 262
r4 r8 re
re8.-> dod16 re8.-> dod16
re8.-> dod16 re8 mi
fad8.-> mi16 fad8.-> mi16
fad8.-> mi16 fad8 sol
la4 ~ la16[ fad re la]
%--- 268
fad4 r8 re'
fad4 ~ fad16[ re] la[ fad]
re4 r8 red
\slurDashed mi8_([ fad16 sol] la[ si dod red]
mi8[ fad sol]) \slurSolid mi
mi4 \grace mi16 \times 2/3 { re8[ dod re] }
%--- 274
fad4. mi8
re4 r
r4 r8 mi
fad8.-> mi16 fad8.-> mi16
fad8.-> mi16 fad8 sol
la4 ~ la16[ fad re la]
fad4 r8 re'
%--- 281
fad4 ~ fad16[ re] la[ fad]
re4 r8 red
\slurDashed mi8_([ fad16 sol] la[ si dod red]
mi8[ fad]) \slurSolid sol mi
la4 fad8 re
la4( si8) dod
%--- 287
re2 ~
re4 re
re4 re8 re
re4 re8 re
re4 do16[ sib] la[ sol]
fa4 fa8 fa
fa8. sol16 la[ sib] do[ re]
%--- 294
mib4 r8 fa,
fa8[ sol16 la] sib[ do] re[ mib]
fa4 re8 sib
la8[ sol'] mib do
sib4 r8 fa'
sol,4 la8 mib'
re4 sib8 r
R2
%--- 302
r4 r8 fa'
sol,8 sib la mib'
re4 r
R2
r4 r8 fa,
fa4 sol16[ la] sib[ do]
re4 fa,8 fa
fa8. sol16 la[ sib] do[ re]
%--- 310
mib4 r8 fa,
fa8[ sol16 la] sib[ do] re[ mib]
fa8[ sib] fa re
sol4 mib8 do \bar "||"
sib4 r8 fa
fa16([ sol la sib] do[ re mib fa])
re4 r8 fa,
%--- 317
fa16([ sol la sib] do[ re]) mib[ fa]
re4 r8 sib
sib16([ do re mib] fa[ sol la sib]
sol4) fa8 mib
re4 do
sib4 r8 fa
%--- 323
fa16([ sol la sib] do[ re mib fa])
re4 r8 fa,
fa16([ sol la sib] do[ re]) mib[ fa]
re4 r8 sib
sib8([ do16 re] mib[ fa sol la]
sib8[ sol]) mib do
%--- 329
fa4. la,8
sib8 re mib8.^> re16
mib8.^> re16 mib8.^> re16
mib8.^> re16 sol8.^> fa16
sol8.^> fa16 sol8.^> fa16
sol8[ fa] r fa
%--- 335
sib2 ~
sib8[ sol!] sol sol
fa2 ~
fa4 la,
sib4 r
%--- 340
R2*10
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉS
notePartChant = {
 \clef treble
 \KEYA \TIMEA
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Singstimme "
 \chantPartA \chantPartB \chantC
}

noteMidiChant = {
 \clef treble
 \KEYA \TIMEA
 \ICHANTA
 \chantMidiA \chantMidiB \chantC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1a. DYNAMIQUES PARTITION/MIDI VOIX
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
%%%%%%%%%%%%%%%%%%%% PARTIE A

dynPartChantA = {
%--- 0
\partial 16 s16
%--- 1
s2.*36
%--- 37
s2.*14
%--- 51
s2.\p
%--- 52
s2.*3
s2.\f
s2.
%--- 57
s2.
s4 s4 s8 s8\p
s2.*3
%--- 62
s2.
s4 s4 s8 s8\f
s2.*2
%--- 66
s4.. s4\cr s16\!
s4\decr s8\! s4 s8\p
s2.
s2 s8 s8\p
%--- 70
s2.*4
%--- 74
s2.
s2 s8 s8\f
s2.*2
%--- 78
s4.. s4\cr s16\!
s4\decr s4\! s8 s8\p
s2.*2
%--- 82
s2.*10
%--- 92
s2.*15
%--- 107
s2.
s2.\p
s2.*3
%--- 112
s4^\CRESCM s4.\cr s8\!
\DYNEXO #'(-1.5 . -3) s2.\f
s2.*3
%--- 117
s2 s8 s8\p
s2.*4
%--- 122
s2.*5
}

%%%%%%%%%%%%%%%%%%%% PARTIE B

dynPartChantB = {
%--- 127
s2.*22
%--- 149
s2.\pp
s2.
s2 s16 s8\cr s16\!
s8\decr s8\! s2
s2.*2
%--- 155
s2.*2
s2.^\CRESCM
s2\cr s4\!
s2\f\decr s4\!
s2.\p
%--- 161
s2.*7
%--- 168
s2\cr s8 s8\!
s2\decr s8 s8\!
s2.*5
%--- 175
s2.\cr
s2 s8 s8\!
s2\fp\decr s8 s8\!
s2.*4
%--- 182
s2 s4\p
s2.*5
s4\cr s8\! s8 s8\decr s8\!
%--- 189
s2.*3
s8 s2^\CRESCM s8
s8 s2\cr s8\!
s4.\f\decr s8\! s4
%--- 195
s2.\p
s2.*3
s2\cr s4\!
s4.\decr s8\! s4
%--- 201
s2.*2
s4.\decr s8\! s4
s2.*3
%--- 207
s2.*7
%--- 214
s2.*4
s1*2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartChantC = {
%--- 219-261
s2*43
%--- 262
s4 s8 s8\f
s2*3
s4 s8\cr s8\!
s8\decr s8\! s4
%--- 268
s4. s8\p
s2*2
s4 s16 s8.^\CRESCM
s2
s4 s8.\cr s16\!
%--- 274
s8\decr s8\! s4
s2
s4. s8\f
s2
s4 s8\cr s8\!
s8\decr s8\! s4
s4. s8\p
%--- 281
s2*2
s4 s16 s8.^\CRESCM
s4 s16 s8\cr s16\!
\DYNEXO #'(-0.5 . 0) s8\f\decr s16 s16\! s4
s2
%--- 287
s2*2
s2^\DECRESCM
s2
s2\pp
s2*2
%--- 294
s4. s8\pp
s2*4
s2^\CRESCM
s2*2
%--- 302
s2*4
s4. s8\mf
s2*3
%--- 310
s8 s4^\CRESCM s8\f
s2*3
s4. s8\p
s2*2
%--- 317
s2
s4. s8\f
s4 s8._\cr s16\!
s8_\decr s16 s16\! s4
s2
s4. s8\p
%--- 323
s2*3
s4. s8\f
s4 s8._\cr s16\!
s8_\decr s8\! s4
%--- 329
s2*2
s4 s8 \DTSDASHOK \TSCREXO #'(0 . -3) \CRESC s8^\cr
s4 \TSCREXO #'(-2.5 . -4.5) s4^\FORTEMANUEL
s2
s4... s32\!
%--- 335
\DYNEXO #'(-3 . -1.5) s2\ff
s2*14
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION
dynPartChant = {
 \override DynamicTextSpanner #'dash-period = #-1
 \dynamicUp
 \dynPartChantA \dynPartChantB \dynPartChantC
}


%%%%%%%%%%%%%%%%%%%% MIDI
%%%%%%%%%%%%%%%%%%%% PARTIE A

dynMidiChantA = {
%--- 0
\partial 16 s16
%--- 1
s2.*36
%--- 37
s2.
s2.\ppp\cr
s2.\!\p
s2.*11
%--- 51
s2.\p
%--- 52
s2.*3
s2.\f
s2.
%--- 57
s2.
s4 s4 s8 s8\p
s2.*3
%--- 62
s2.
s4 s4 s8 s8\f
s2.*2
%--- 66
s4.. s4\cr s16
s4\!\ff\decr s4\!\f s8 s8\p
s2.
s2 s8 s8\p
%--- 70
s2.*4
%--- 74
s2.
s2 s8 s8\f
s2.*2
%--- 78
s4.. s4\cr s16
s4\!\ff\decr s4 s8 s8\!\p
s2.*2
%--- 82
s2.*10
%--- 92
s2.*15
%--- 107
s2.
s2.\p
s2.*3
%--- 112
s2.\cr
s2.\!\f
s2.*3
%--- 117
s2 s8 s8\p
s2.*4
%--- 122
s2.*5
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
dynMidiChantB = {
\ICHANTB
%--- 127
s2.*22\pp
%--- 149
s2.\pp
s2.
s2 s16 s8.\cr
s8\!\mf\decr s8\!\pp s2
s2.*2
%--- 155
s2.*2
s2.\cr
s2.
s2.\!\f\decr
s2.\!\p
%--- 161
s2.*7
%--- 168
s2.\cr
s2.\!\f\decr
s2.\!\p
s2.*4
%--- 175
s2.\cr
s2.
s2.\!\f\decr
s2.\!\p
s2.*3
%--- 182
s2 s4\p
s2.*5
s4\cr s8\!\f s8 s8\decr s8\!\p
%--- 189
s2.*3
s8 s2\cr s8
s2.
s4.\!\f\decr s8\!\p s4
%--- 195
s2.\p
s2.*3
s2.\cr
s4.\!\f\decr s8\!\p s4
%--- 201
s2.*2
s4.\decr s8\!\pp s4
s2.*3
%--- 207
s2.*7
%--- 214
s2.*4
\appoggiatura s8 s1*2
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
dynMidiChantC = {
\ICHANTA
%--- 219-261
s2\p
s2*42
%--- 262
s4 s8 s8\f
s2*3
s4 s4\cr
s8\!\ff\decr s8\!\f s4
%--- 268
s4. s8\p
s2*2
s4 s16 s8.\cr
s2*2
%--- 274
s8\f\decr s8\!\p s4
s2
s4. s8\f
s2
s4 s4\cr
s8\!\ff\decr s8\!\f s4
s4. s8\p
%--- 281
s2*2
s4 s16 s8.\cr
s2
s8\!\f\decr s8\!\p s4
s2
%--- 287
s2*2
s2\decr
s2
s2\!\pp
s2*2
%--- 294
s4. s8\pp
s2*4
s2\cr
s4 s4\!\mp
s2
%--- 302
s2*4
s4. s8\mf
s2*3
%--- 310
s8 s4\cr s8\!\f
s2*3
s4. s8\p
s2*2
%--- 317
s2
s4. s8\f
s4 s4\cr
s8\!\ff\decr s8\!\f s4
s2
s4. s8\p
%--- 323
s2*3
s4. s8\f
s4 s4\cr
s8\!\ff\decr s8\!\f s4
%--- 329
s2*2
s4 s8 s8\cr
s4 s8.\!\ff s16\f\cr
s2*2
%--- 335
s2\!\ff
s2*14
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI
dynMidiChant = { \dynMidiChantA \dynMidiChantB \dynMidiChantC }
