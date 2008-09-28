%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. NOTES CLARINETTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
clarinetteAA = \relative do'' {
%--- 0
\partial 16 r16
%--- 1
R2.*5
r4 mi\fermata ~ mi8.([ fa16])
%--- 7
sol2( \tupletUp \TUPBNO \times 2/3 { mi8[ do sol] }
mi4.) sol8( \times 2/3 { do8[ sol mi'] } \TUPNO
sol2 \times 2/3 { fa8[ sol mi] }
re4.) re8([ mi fa])
mi4( do'4.. reb16
%--- 12
do4 fa,8) r r4
sol4( do4.. reb16
do4 la8) r r la,(
la'4) ~ \times 2/3 { la8([ sol fa] } \times 2/3 { mi[ fa la,] }
do4 si8) r r4
%--- 17
R2.
r4 r mi8.([ fa16]
sol2 \times 2/3 { mi8[ do sol] }
mi4.) sol8( \times 2/3 { do8[ sol mi'] }
sol2 \times 2/3 { fa8[ sol mi] }
%--- 22
re4.) re8([ mi fa])
mi2.(
mi,2) ~ mi8.[ mi16](
fa2.) (
fa,2) ~ fa8.[ fa16](
%--- 27
fad4) ~ \times 2/3 { fad8([ lad dod] } \times 2/3 { fad[ lad dod]) }
fad4( sol4.. mi16)
dod4( re8) fad-.[ fad( sol)]
sol4( sold la) ~
la4 sol!8([ fa!16]) r mi8([ re16]) r
%--- 32
red4( mi8) r r8. mi16-.
sol4( fa8) r r8. re16-.
fa4( mi8) r r8. dod16-.
mi2( re4
la4. si16[do] si[ sol' fa re])
%--- 37
do2. ~
do4 r r
R2.*3
%--- 42
R2.*2
r4 r r8 mi-.
mi8.([ re16] do4 mi8[ re])
si8.([ la16] sol4) r
%--- 47
R2.
r4 r r8 sol^> ~
sol8([ la'] fa4) r8 sol,^> _~
sol8([ sol'] mi4) r4
R2.
%--- 52
R2.*5
%--- 57
re8.([ mi16] fa4. la8
sol16[ fa re si] sol2)
R2.
r4 r r8 sol^> ~
sol8.([ la'16] fa4) r8 sol,^> ~
%--- 62
sol8.([ sol'16] mi2) ~
mi4 r4 r
R2.*2
%--- 66
R2.*2
r8 fa([ mib_> reb] mib,-.) r
r8 fa'([ mib_> do] mib,-.) r
%--- 70
R2.*4
%--- 74
r8 sib'([ reb_> fa] mib) r
r8 lab,([ do_> mib] do) r
R2.*2
%--- 78
R2.*3
r4 r16 sold,([ si mi] sold[ si mi sold])
%--- 82
si4..( sold16 mi[ si sold si])
sold'2 ~ sold8.([fad16])
fad8([ mi] sold,) r r8. sold16(
dod8[ si] mi,) r r4
mi'2. ~
%--- 87
mi4( mi-. mi-.)
mi2.(
mi8-.) ([ mi-. mi-. mi-. fa!-. sol-.])
sol4( fa8) r r8. re16-.
fa4( mi8) r r8. dod16-.
%--- 92
mi2( re4
la4. si16[ do] si[ sol' fa re])
do2. ~
do4 r r
R2.
%--- 97
R2.*4
r4r r8 mi
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO PARTITION
clarinetteAB = \relative do'' {
%--- 102
<< { s4 s8 s8\turn s8 s8 } \\ { mi8.^([ re16] do4 mi8[ re]) } >>
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO MIDI
clarinetteAC = \relative do'' {
%--- 102
mi8.^([ re16] do8[ re32 do si do] mi8[ re])
}

%%%%%%%%%%%%%%%%%%%% suite
clarinetteAD = \relative do'' {
%--- 103
si8.([ la16] sol4) r
R2.
r4 r r8 sol^> ~
sol8([ la'] fa4) r8 sol,^> _~
%--- 107
sol8([ sol'] mi4) r4
R2.*4
%--- 112
R2.*2
re16([ sib' fa re] sib2) ~
sib4. sib8([ la lab])
sol4.( si!8[ re mi!]
%--- 117
fa2.)
R2.
r4 r r8 sol,^> ~
sol8.([ la'16] fa4) r8 sol,^> ~
sol8.([ sol'16] mi2) ~
%--- 122
mi4( mi-. mi-.)
fa2. ~
fa8([mi fa sol la sib])
la2. ~
la2( sold4)
}

clarinettePartA = { \clarinetteAA \clarinetteAB \clarinetteAD }
clarinetteMidiA = { \clarinetteAA \clarinetteAC \clarinetteAD }


%%%%%%%%%%%%%%%%%%%% PARTIE B
clarinetteBA = \relative do''' {
%--- 127
la2 r4
R2.*11
%--- 139
r4 sib,4..( la16)
la8([ sold sold mi' mi-. mi-.])
mi4 r r
%--- 142
R2.*20
%--- 162
re2.^>( \SLURINSIDE
re2.^>
re2.^>)
%--- 165
R2.*6
%--- 171
fa2. ~
fa4( mi8[ re do si])
do2( si4)
%--- 174
R2.*5
%--- 179
fa'2. ~
fa4( mi8[ re do si])
la2.(
sold4) ^(si re)
dod2 r4
%--- 184
R2.*23
%--- 207
mi2. ~
mi2.(
fa!2.) ~
fa2.
fa2. ~
fa4( sol la)
la2. ~
%--- 214
la2( lab4) (
sol2.) ~
sol2. ~
}

%%%%%%%%%%%%%%%%%%%% ORNEMENT PARTITION
clarinetteBB = \relative do''' {
%--- 217-218
<< { \stemDown \SCREXO #'(0 . -3) \SLURTHICK #5 \SLURPOS #'(8 . 7) sol2.\trill^( }
 { s2 \set fontSize = #-3 \stemUp \TSCREXO #'(1 . -2.5) fad16^\GROSPOINT [ sol] \TUPNOK \times 2/3 { si16[ la sol]) \stemNeutral } } >> \set fontSize = #0 
\grace { \times 2/3 { fad16([ sol la]) \TUPNO } } \TIMESTNO \time 2/1  sol2\fermata fad!8([ fa re do])
 si4^.( sib^. la^. lab^._\fermata)
}

%%%%%%%%%%%%%%%%%%%% ORNEMENT MIDI
clarinetteBC = \relative do''' {
%--- 217
\repeat unfold 8 { sol32 la } \times 2/3 { sol16 fad sol } \times 2/3 { si16 la sol }
%--- 218
\appoggiatura s8 \times 2/3 { fad16([ sol la]) } sol8 ~ sol4
 fad!8([ fa re do])
si4^.( sib^. la^. lab^.)
}


clarinettePartB = { \clarinetteBA \clarinetteBB }
clarinetteMidiB = { \clarinetteBA \clarinetteBC }


%%%%%%%%%%%%%%%%%%%% PARTIE C
clarinetteCA = \relative do'' {
\bar "||" \TIMEB
s1*0 ^\MOVEMENTB
%--- 219
sol4( la!16[ si do re]
mi4.) sol,8-.
sol8.([ la16] si[ do re mi]
fa4.) sol,8-.
sol8([ la16 si] do[ re mi fa])
sol8[( mi') do-. la-.]
sol16([ la fa sol] mi[ fa re mi]
%--- 226
do4) r
R2*6
%--- 233
R2
r4 r8 sol-.
sol4( la16[ si do re]
mi4.) sol,8-.
sol8.([ la16] si[ do re mi]
fa4.) r8
R2
%--- 240
R2*4
r4 r8 sol(
la,4 si16[ re mi fa])
mi4( do8) r
R2
%--- 248
r4 r8 sol'
la,8([ si16 do] si[ re la' sol])
mi4 r
s2
sol,8.([ la16] si[ do re mi]
fa4.) r8
sol,8([ la16 si] do[ re mi fa]
%--- 255
sol4) r
do,16([ re mi fa] sol[ la si do])
la4( re8[ si])
do4 r
R2*3
%--- 262
R2*3
mi,8.->([ red16 \SLURINSIDE mi8.-> red16]
\SLURINSIDE mi8.->[ red16) mi8-. fad-.]
sold4 r
%--- 268
si4 ~si16([sold mi si]
sold8) r r4
sold'4 ~sold16([ si, la sold]
fad8) r r4
R2*2
%--- 274
R2
mi'8.->([ red16 \SLURINSIDE mi8.-> red16]
\SLURINSIDE mi8.->[ red16) mi8-. re-.]
mi8.([ red16 mi8. red16]
mi8.[ red16) mi8-. fad-.]
sold4 r
si4 ~si16([sold mi si]
%--- 281
sold8) r r4
sold'4 ~sold16([ si, la sold]
fad8) r r4
R2
si8([ dod16 red] mi[ fad sold la]
si4( la8[ fad])
%--- 287
mi4 r
R2*12
%--- 300
r4 r8 sol(
la,4)( si16[ re mi fa]
mi4)( do8) r
R2
r4 r8 sol'(
la,8)([ do] si16[ re la' sol]
mi4) r
R2
sol,8.([ la16] si[ do re mi]
fa8) r r4
%--- 310
sol,8([ la16 si] do[ re mi fa]
sol8) r r4
do,16([ re mi fa] sol[ la si do])
la4( re8[ si]) \bar "||"
do4^\PIUMOSSO r4
R2
sol,16([ la si do] re[ mi fa sol])
%--- 317
sol,8 r r4
sol16([ la si do] re[ mi fa sol])
mi16([ fa sol la] si[ do re mi])
fa4( mi8[ re])
}

%%%%%%%%%%%%%%%%%%%% TRILLE PARTITION
clarinetteCB = \relative do''' {
%--- 321
do4 si8.\trill([ la32 si])
do4 r
}

%%%%%%%%%%%%%%%%%%%% TRILLE MIDI
clarinetteCC = \relative do''' {
%--- 321
do4 ~ do32[ si do si do si la si]
do4 r
}

%%%%%%%%%%%%%%%%%%%% suite
clarinetteCD = \relative do''' {
%--- 323
R2
la16([ sol fa mi] re[ do si la])
sol8 r r4
la'16([ sol fa mi] re[ do si do])
la8([ si16 do] re[ mi fa sol]
la8)[ do( la fa)]
}

%%%%%%%%%%%%%%%%%%%% TRILLE PARTITION
clarinetteCE = \relative do'' {
%--- 329
mi4 re\trill
}

%%%%%%%%%%%%%%%%%%%% TRILLE MIDI
clarinetteCF = \relative do'' {
%--- 329
mi4 re32[ mi re mi re mi re do]
}

%%%%%%%%%%%%%%%%%%%% suite
clarinetteCG = \relative do'' {
%--- 330
do8 r re8->[ do16 si]
do8->[ si16 do] re8->[ do16 si]
do8->[ re16 mi] fa8->[ mi16 re]
mi8->[ re16 mi] fa8->[ mi16 re]
mi4-> r
%--- 335
r16 fad,[ la do] mib[ fad la do]
mib2(
mi16)[ re do si] la[ sol fa mi]
re16[ do si la] sol[ fa mi re]
do16[ mi sol do] si[ sol' fa re]
do16[ sol' mi re] dod[ la' sol mi]
re16[ la' fa re] mi[ do' sib sol]
%--- 342
mi[ do' sib sol] mi[ dod' sib sol]
fa16[ la re fa] re[ la fa re]
la16[ re fa, la] re,[ fa la, do]
si8[ do16 re] mi[ fa sol la]
si16[ do re mi] fa[ sol la si]
do4 r
mi,16[ mi' do sol] mi[ do sol mi]
do4 r
}

clarinettePartC = { \clarinetteCA \clarinetteCB \clarinetteCD \clarinetteCE \clarinetteCG }
clarinetteMidiC = { \clarinetteCA \clarinetteCC \clarinetteCD \clarinetteCF \clarinetteCG }


%%%%%%%%%%%%%%%%%%%% RÉSUMÉS
notePartClarinette = {
 \clef treble
 \KEYC \TIMEA
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Clarinette in B "
 \clarinettePartA \clarinettePartB \clarinettePartC
}
noteMidiClarinette = {
 \clef treble
 \KEYC \TIMEA
 \ICLARINETTE
 \transpose do sib, { \clarinetteMidiA \clarinetteMidiB \clarinetteMidiC }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2a. DYNAMIQUES PARTITION/MIDI CLARINETTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
%%%%%%%%%%%%%%%%%%%% PARTIE A

dynPartClarinetteA = {
%--- 0
\partial 16 s16
%--- 1
R2.*5
\DYNEXO #'(0 . -0.2) \TSCREXO #'(-3 . 0) s4\pp_"lange Haltung" \TSCREXO #'(-1.7 . 4.8) s4_"< >" \DYNEXO #'(-0.5 . 0) s8.\pp \DYNEXO #'(-0.5 . 0) %--- 7
s16\p
s2.*5
%--- 12
s2.
s8 s4.-\CRESCM s4
s2 s8 s8\p
s2.*2
%--- 17
s2.
s2 s4\pp
s2.*3
%--- 22
s2.
s8 s4.-\DECRESCM s4
s2.*2
s2.-\CRESCM
%--- 27
s4 \PINEXO #'(1 . 0) \PINROT s4\cr s8. s16\!
s4\decr s8. s16\! s4
s2.
s2\cr s8. s16\!
s4\f\decr s8 s16\! s16 s4\p
%--- 32
s2.
s2 s4-\DECRESCM
s2 s8. s16\pp
s2.
s4. s8\cr s16\! s16 \PINEXO #'(-0.5 . 0) s16\decr s16\!
%--- 37
s2.*20
%--- 57
s8.\mf s16\cr s4.\! s8\decr
s8. s16\! s2
s2.
s4 s4 s8 s8\p
s2.
%--- 62
s2.*4
%--- 66
s2.*2
s8 s4.\pp s4
s2.
%--- 70
s2.*4
%--- 74
s8 s4.\pp s4
s2.*3
%--- 78
s2.*3
s4 s4\p s8.\cr s16\!
%--- 82
s4..\fp\decr s16\! s4
s2.\pp
s2.*3
%--- 87
s2.*2
s2\cr s8 s8\!
s4\decr s8\! s4.
s2 s8. s16\pp
%--- 92
s2.
s4.. s16\cr s16\! s16 \PINEXO #'(-0.5 . 0) s16\decr s16\!
s2.*3
%--- 97
s2.*4
s2 s8 s8\pp
%--- 102
s2.*10
%--- 112
s2.*2
s8.\f\decr s16\! s2
s4. s4.\p
s2._\DECRESCM
%--- 117
s2.\pp
s2.
s2 s8 s8\pp
s2.*2
%--- 122
s2.*2
s8 s2\cr s8\!
s4\decr s4\! s4
s2.
}

%%%%%%%%%%%%%%%%%%%% PARTIE B

dynPartClarinetteB = {
%--- 127
s2.\pp
s2.*11
%--- 139
s4 s4\decr s16\! s8.
s2.*22
%--- 162
s2.\pp
s2.*8
%--- 171
s2^\decr s4\!
s2.*7
%--- 179
s2^\decr s4\!
s2.
\DTSDASHOK \DECRESC s2.\decr
s2.
s2.\!\pp \DTSDASHNO \DECRESCNO
s2.*23
%--- 207
s2.\p
s2.*4
%--- 212
s2\cr s4\!
s8 s2\decr s8
s8 s8\! s2
s2.*2
%--- 217
\PINEXO #'(1 . 0) s2\cr s8\! s16.\decr s32\!
s1*2
}

%%%%%%%%%%%%%%%%%%%% PARTIE B

dynPartClarinetteC = {
%--- 219
s2\p
s2*25
%--- 245
s8\cr s8\! s8.\decr s16\! 
s2*2
%--- 248
s2
s8\cr s8\! s8.\decr s16\! 
s2*12
%--- 262
s2*3
s2\mf
s4 \PINEXO #'(3 . 0.5) s16^\cr s16\! s8
s8^\decr s8\! s4
%--- 268
s8\decr s8\! s4
s2\p
s2\pp
s2*3
%--- 274
s2*4
s4 \PINEXO #'(3 . 0.5) s16^\cr s16\! s8
s8^\decr s8\! s4
s2
%--- 281
s2\p
s2\pp
s2*2
s4..\f\cr s16\!
s4\decr s8\! s8
%--- 287
s2*13
%--- 300
s4. s8\p
s2*7
%--- 308
s2\mf
s2
%--- 310
s8 s4.^\CRESCM
s2
\DYNEXO #'(0 . -3) s2^\f
s2*3
s2\p
%--- 317
s2*2
s4\f s8.\cr s16\!
s8.\decr s16\! s4
s2*2
%--- 323
s2*4
s4\f s8.\cr s16\!
s4\cr s8\! s8
%--- 329
s2*12
%--- 341
s4 s4_\CRESCM
s4 s4\cr
s8. s16\! s8.\decr s16\!
s2*6
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION
dynPartClarinette = {
 \override DynamicTextSpanner #'dash-period = #-1
 \dynamicDown
 \dynPartClarinetteA \dynPartClarinetteB \dynPartClarinetteC
}

%%%%%%%%%%%%%%%%%%%% MIDI
%%%%%%%%%%%%%%%%%%%% PARTIE A

dynMidiClarinetteA = {
%--- 0
\TEMPOC \partial 16 s16
%--- 1
R2.*5
\TEMPOF
s4 s4\ppp s8. \TEMPOD s16\p \TEMPOBASE
%--- 7
s2.*5
%--- 12
s2.
s8 s4.\cr s4
s4.\mf s4 s8\p
s2.*2
%--- 17
s2.
s2 s4\pp
s2.*3
%--- 22
s2.
s4 s2\decr
s2.
s2.\!\ppp
s2.\cr
%--- 27
s2.
s4\!\mp\decr s4..\!\p s16
s2.
s2.\cr
s4.\!\mf\decr s16\!\p s16 s4\p
%--- 32
s2.
s2 s8. s16\decr
s2 s8.. s16\!\pp
s2.
s4. s8\cr s16\!\p s8\decr s16\!\pp
%--- 37
s2.*20
%--- 57
s8.\mf s16\cr s4. s8\!\decr
s8. s16\!\mf s2
s2.
s4 s4 s8 s8\p
s2.
%--- 62
s2.*4
%--- 66
s2.*2
s8 s4.\pp s4
s2.
%--- 70
s2.*4
%--- 74
s8 s4.\pp s4
s2.*3
%--- 78
s2.*3
s4 s4\p s4\cr
%--- 82
s4..\f\decr s16\!\p s4
s2.\pp
s2.*3
%--- 87
s2.*2
s2.\cr
s4\!\mf\decr s8\!\p s4.
s2 s8. s16\pp
%--- 92
s2.
s4.. s16\cr s16\!\mp s8\decr s16\!\pp
s2.*3
%--- 97
s2.*4
s2 s8 s8\pp
%--- 102
s2.*10
%--- 112
s2.*2
s8.\f\decr s16\!\mp s2
s4. s4.\p
s2.\decr
%--- 117
s2.\!\pp
s2.
s2 s8 s8\pp
s2.*2
%--- 122
s2.*2
s8 s2\cr s8
s2\!\mf\decr s4\!\p
s2.
}

%%%%%%%%%%%%%%%%%%%% PARTIE B

dynMidiClarinetteB = {
%--- 127
\TEMPOC s2.\pp
s2.*11
%--- 139
s4 s2\p\decr
s2.\!\pp
s2.*21
%--- 162
s2.\pp
s2.*8
%--- 171
s2.\p\decr
s2.
s2.\!\pp
s2.*5
%--- 179
s2\mp\decr s4\!\p
s2.
s2.\decr
s2.
s2.\!\pp
s2.*23
%--- 207
s2.\p
s2.*4
%--- 212
s2.\cr
s2.\!\f\decr
s4\!\p s2
s2.*2
%--- 217
\TEMPOBASE s2\cr \TEMPOG s8\!\mf s16.\decr s32\!\p
\appoggiatura s8 \TEMPOF s1
s4 s4 \TEMPOG s4 \TEMPOH s4

}


%%%%%%%%%%%%%%%%%%%% PARTIE B

dynMidiClarinetteC = {
%--- 219
\TEMPOB s2\p
s2*25
%--- 245
s8\cr s8\!\mf s8\decr s8\! \p
s2*2
%--- 248
s2
s8\cr s8\!\mf s8\decr s8\! \p
s2*12
%--- 262
s2*3
s2\mf
s4 s4\cr
s8\!\f\decr s8\!\mf s4
%--- 268
s8\f\decr s8\!\mf s4
s2\p
s2\pp
s2*3
%--- 274
s2*4
s4 s4\cr
s8\!\f\decr s8\!\mf s4
s2
%--- 281
s2\p
s2\pp
s2*2
s2\f\cr
s4\!\ff\decr s8\!\f s8
%--- 287
s2*13
%--- 300
s4. s8\p
s2*7
%--- 308
s2\mf
s2
%--- 310
s8 s4.\cr
s2
s2\!\f
s2
\TEMPOA s2
s2
s2\p
%--- 317
s2*2
s4\f s4\cr
s8\!\ff\decr s8\!\f s4
s2*2
%--- 323
s2*4
s4\f s4\cr
s8\!\ff\decr s8\!\f s4
%--- 329
s2*12
%--- 341
s4 s4\cr
s2
s8. s16\!\ff s8.\decr s16\!\f
s2*5
\TEMPOD s2
}
%%%%%%%%%%%%%%%%%%%% SYNTHESE MIDI
dynMidiClarinette = { \dynMidiClarinetteA \dynMidiClarinetteB \dynMidiClarinetteC }
