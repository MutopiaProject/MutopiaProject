%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D703-Quartettsatz.ly
%
%                               FRANZ SCHUBERT: Streichquartett No. 12 “Quartettsatz”
%                                     AVEC SORTIES PARTITION ET MIDI SEPAREES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.34"
\include "italiano.ly"
#(set-global-staff-size 18)

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")
 line-width = 190\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Streichquartett No. 12 “Quartettsatz” in c-moll (D 703)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Streichquartett No. 12 “Quartettsatz” in c-moll (D 703)  ♫" } " " }
 #(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup \center-align { \fontsize #1.5 "Streichquartett No. 12 “Quartettsatz”" "in c-moll (D 703)" }
 subtitle = " "
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 703 (1820)" }
% MUTOPIA
 mutopiatitle = "Streichquartett No. 12 “Quartettsatz” in c-moll"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.703"
 mutopiainstrument = "String Quartet"
 date = "1820"
 source = "Breitkopf & Härtel, 1894"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2007/12/29-1196"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GÉNÉRALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  -  INSTRUMENTS
%     A. VIOLON 1    -  A1: NOTES - A2: DYNAMIQUES PARTITION - A3: DYNAMIQUES MIDI
%     B. VIOLON 2    -  B1: NOTES - B2: DYNAMIQUES PARTITION - B3: DYNAMIQUES MIDI
%     C. ALTO        -  C1: NOTES - C2: DYNAMIQUES PARTITION - C3: DYNAMIQUES MIDI
%     D. VIOLONCELLE -  D1: NOTES - D2: DYNAMIQUES PARTITION - D3: DYNAMIQUES MIDI
%  E. SORTIE PARTITION
%  F. SORTIE MIDI
%
%                  BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%----- TONALITÉ ET MESURE
KEYTIME = { \key mib \major \time 6/8 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-3.0 \italic "Allegro assai." } }
%----- VARIER LA HAUTEUR D'UNE LIAISON
SLURHLIM =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override Slur #'height-limit = #$beg-end #})
SLURPOS =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Slur #'positions = #$beg-end #})
SLURIN  = \once \override Script #'avoid-slur = #'inside
%----- CACHER UNE DYNAMIQUE (POUR SÉPARER LES PORTÉES)
DYNNO = \once \override DynamicText #'transparent = ##t
%----- DÉPLACER UNE DYNAMIQUE
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- CACHER UNE ALTÉRATION SUR LA PORTÉE DU HAUT QUAND L'ALTÉRATION DU BAS EST CACHÉE PAR LA BARRE  
ACCINO = \once \override Accidental #'transparent = ##t
%----- MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
DECRESC = { \set decrescendoText = \markup { \italic "decresc." } \set decrescendoSpanner = #'dashed-line }
DOLCE = \markup { \bold \italic "dolce" }
PIZZICATO = \markup { \bold \italic "pizz." }
ARCO = \markup { \bold \italic "arco" }
FFZ = #(make-dynamic-script "ffz")
%----- VIOLONCELLE & PIZZICATO
CELLO      =  \set Staff.midiInstrument = "cello"
PIZZICELLO =  \set Staff.midiInstrument = "pizzicato strings"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. VIOLON I
%                                           A1. VIOLON I: NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violonINoteA = \relative do' {
 \repeat volta 2 {                               % LIGNE 1 À 140

%1
do16[ do si si do do]       sib16[ sib la la sib sib]
lab16[ lab sol sol lab lab] sol16[ sol do do re re]
mib16[ mib re re mib mib]   mi16[ mi fa fa mi mi]
fa16[ fa sol sol fad fad]   sol16[ sol mib' mib fa! fa]
%5
\repeat tremolo 6 sol16 \repeat tremolo 6 do16
\repeat tremolo 6 do16  \repeat tremolo 6 sol'16
\repeat tremolo 6 sol16 \repeat tremolo 6 sol16
fad16[ fad sol sol fad fad] \repeat tremolo 6 sol16
lab8-.[ fa-. reb-.]  lab8-.[ fa-. reb-.]
lab'8-.[ fa-. reb-.] lab8-.[ fa-. reb-.]
%11
si4.( si'
mib4.~mib4 re8)
do8[( si) do-.]    sib8[( la) sib-.]
lab8[( sol) lab-.] sol8[( sol' mib)]
%15
do8[( si) do-.]    sib8[( la) sib-.]
lab8[( sol) lab-.] sol8[( sol' mib)]
re8([lab' fa]      re8[ mib do])
si8([ fa' re]      lab8[ sol si])
do8[( si) do-.]    sib8[( la) sib-.]
%20
lab8[( sol) lab-.] sol8[( sol' mib)]
do8[( si) do-.]    sib8[( la) sib-.]
lab8[( sol) lab-.] sol8[( sol' mib)]
reb8([lab' fa]     reb8[ do reb]
%24
fa8[ mib reb]     do8[ sib lab])
sol8([ reb'' sib] mib,8[ re! mib]
sol8[ fa mib]     reb8[ sib mib])
lab,2.^(
do4. mib)
%29
mib4.~( mib4 reb16[ do]
sib4. do)
reb2.(
fa4. lab)
%33
lab4.~( lab4 sol16[ fa])
mib4.( fa
reb4. fa4 mib8
do4 lab8 mib'4 reb8)
do2.(
%38
sib8-.)[ mib( fa] mib[ fa sol])
lab2.(
do4. mib)
mib4.~( mib4 reb16[ do]
%42
sib4. do)
reb2.(
fa4. lab)
lab4.~(lab4 sol16[ fa])
mib4.( fa
%47
reb4. fa4 mib8)
do4( lab8 mib'4 reb8)
do2.(
dob4. sib
%51
la4. sib4 do8
mib4 reb8 do4 sib8)
lab2.(
sol4. mib')
mib4.( do
%56
dob4. sib
la4. sib4 do8
fa4 reb8 do4 sib8)
%59
lab2.(
mib2.)
lab,4 r8 r4 r8
R2.
%63
lab,16([ sib dob reb mib fa] sol16[ lab sib dob reb mib]
fa16[ sol lab sib dob reb]   mib16[ fa sol lab sib lab])
solb4 r8 r4 r8
R2.
solb,,16([ lab sib dob reb dob] sib16[ dob reb mib fab mib])
%68
reb16([ mib fab solb lab sib]  dob16[ reb mib fab solb fab])
mib4 r8 r4 r8
reb,16([ mib fab solb lab sol] lab16([ sib do reb mib fab])
mib4 r8 r4 r8
reb,16([ mib fab solb lab sol] lab16([ sib do reb mib fab])
%73
mib4 r8 r4 r8
mib,16([ fa solb lab sib la] sib16[ do re! mib fa solb])
fa4 r8 r4 r8
fa,16([ sol lab sib do si]   do16[ re mi fa sol lab])
sol8[ fad,( sol] lab[ sol]) r8
r8 fad([ sol] lab[ sol]) r8
%79
r8 fad,([ sol] lab^>[ sol]) r8
r8 fad([ sol] lab^>[ sol]) r8
r8 fad([ sol] lab->[ sol do]
sib8[ lab' sol] fa![ mib re])
dod2.(
%84
re2.)
r8 fad,^([ sol] lab->[ sol do]
sib8[ lab' sol] fa![ mib re])
dod2.~
dod2.(
re2.
mi2.)
%91
re4.( si
do4. la)
sol4 r8 r4 sol8^(
re'4_>( do!8 si4.)
%95
do4.~( do4 si8
fad'4_> mi8 re4) red8(
mi4 do8 la4 si8)
do4( la8 mi4 fad8)
<sol si,>4 r8 r4 sol'8(
%100
re'4_> do!8 si4.)
do4.~( do4 si8
fad'4_> mi8 re4 red8)
mi4( do8 la4 si8)
%104
do4( la8 mi4 fad8)
sol8([ la sol] fad[ re mi ]
fa!8[ sol fa] mi4.)
fa8([ sol fa] mi[ do re]
mib!8[ fa mib] re4.)
%109
mib2.~
mib2.
re4.~( re8[ sol do,]
si4. la4.)
%113
sol''8([ la sol] fad[ re mi ]
fa!8[ sol fa] mi4.)
fa8([ sol fa] mi[ do re]
mib!8[ fa mib] re4.)
mib2.~
%118
mib2.
re4.~( re8[ sol do,]
si4. la4.)
mib2.~(
mib8[ lab mib] do[ lab do])
%123
re2.~
re2.
sol,4.( si
do4. la)
sol4.( si
%128
do4. la)
sol4.( si
re4. fad)
sol4.( si
%132
do4. la)
sol4.( si
do4. la)
sol4.( si
%136
re4. fad)
sol2.~
sol2.~
sol8([ fa! re] si[ lab! fa]
%140
re8[ si lab] fa[ re si])
 }                                         % FIN DU REPEAT LIGNE 1 À 140
}

%%%%%%%%%%%%%%%%%%%% SUITE Ba

violonINoteBa = \relative do' {

%141
\repeat tremolo 12 lab!16
lab8 r8 r8 r4 mib''8(
sib4.) ( do4 reb8
%144
fa8[ mib do] lab[ do mib])
sib4. ( do4 reb8
fa8[ mib do] lab'[ mib do])
solb'8([ mib do] mib[ do la]
%148
solb8[ fa mi] mib[ reb do])
\repeat tremolo 12 reb16
reb8 r8 r8 r4 fa'8(
do4.) ( reb4 mib8
%152
solb8[ fa reb] sib[ reb fa])
mib4.( fa4 solb8
sib8[ lab fa] reb'[ lab fa])
mib8([ solb fa] mib[ reb' do])
%156
sib([ lab solb] solb[ fa mib])
reb4.~( reb4 lab'8)
lab4.~( lab4 do,8)
reb4( lab'8) reb4( lab'8)
%160
lab4.~( lab8[ fa reb])
lab,,4.^>~( lab4 sibb8)
sibb4.^>~( sibb4 lab8)
lab4^>( sibb8) lab4^>( sibb8)
%164
lab4^>( sibb8) sibb4^>( lab8)
reb'4.~( reb4 lab'8)
lab4.~( lab4 do,8)
reb4( lab'8) reb4( lab'8)
lab4.~( lab8[ fa reb])
%169
la,,4.^>~( la4 sib8)
sib4.^>~( sib4 la8)
la4^>( sib8) la4^>( sib8)
la4^>( sib8) sib4^>( la8)
%173
sib'4.~( sib4 fa'8)
fa4.~( fa8[ reb sib])
la2.(
lab!2.)
do4.~( do4 sol'8)
%178-180
sol4.~( sol8[ mib do])
si2.(
sib2.)
}

%%%%%%%%%%%%%%%%%%%% 181-182 TRILLE Ba
trillePartBa = \relative do'' {
re2.(
dod2. \trill)
}
trilleMidiBa = \relative do'' {
re2.
\repeat unfold 10 { dod32 re } \times 2/3 { dod16 si dod }
}

%%%%%%%%%%%%%%%%%%%% SUITE Bb

violonINoteBb = \relative do'' {
%183
re4.~( re4 la'8)
la4.~( la8[ fad re])
dod2.(
dod'2.)
%187
re4.~( re4 la'8)
la4.~( la8[ fad re])
dod2.(
dod,2.)
%191
re4.( dod
re4. dod
re4. dod
re4. la)
sib2.(
re4. fa)
%197
fa4.~( fa4 mib16[ re]
do4.) ( re)
mib2.(
sol4. sib)
%201-204
sib4.~( sib4 la16[ sol]
fa4. sol4.) (
mib4. sol4 fa8
re4 sib8 fa'4 mib8)
}

%%%%%%%%%%%%%%%%%%%% 205-206 TRILLE Ba
trillePartBb = \relative do'' {
re2.(
do4.) re4. \trill
}
trilleMidiBb = \relative do'' {
re2.(
do4.) \repeat unfold 4 { re32 mib } \times 2/3 { re16 do re }
}

%%%%%%%%%%%%%%%%%%%% SUITE Bc

violonINoteBc = \relative do'' {
%207
mib2.(
sol4. sib)
sib4.~( sib4 lab!16[ sol]
%210
fa4.) ( sol4.)
lab2.(
do4. mib)
mib4.~( mib4 re16[ do]
sib4.) do(
%215
lab4.) do4( sib8
sol4) mib8( sib'4 lab8)
sol2.(
solb4. fa)
%219
mi4.( fa4 sol!8
sib4 lab8 sol4 fa8)
mib2.(
re4.) sib'~(
%223
sib4. sol
solb4. fa)
mi4.( fa4 sol8
do4 lab8 sol4 fa8)
mib2.(
sib2.)
R2.
%230
R2.
mib,16([ fa solb lab solb fa] mib[ fa solb lab sib dob]
sib16[ re mib fa solb fa] solb[ lab sib dob reb mib])
<reb, reb'>8 r8 r8 r4 r8
R2.
%235
reb,16([ mib fa solb fa mib] reb[ mib fa solb lab sib]
dob16[ reb mib fa solb lab] fa[ solb lab sib dob reb])
<sib, sib'>4 r8 r4 r8
sib16([ do reb mib fa mi] fa[ sol la sib do reb])
<do, do'>4 r8 r4 r8
%240
fa16[ sol lab! sib do reb] do[ reb mib fa sol fa]
mi8 si,,16[ si do do] si[ si do do si si]
do16[ do si si do do] si[ si do do si si]
do8 r8 r8 r4 r8
R2.
r8 si([ do] reb[ do fa]
%246
mib8[ reb' do] sib[ lab sol])
fad2.(
sol2.)
%249
r8 si([ do] reb[ do fa]
mib8[ reb' do] sib[ lab sol])
fad2.~
fad2.
%253
sol2.(
la2.)
sol4.( mi
fa4. re)
do4.~ do4 do8(
%258
sol'4 fa8 mi4.)
fa4.~ fa4 mi8(
si'4_> la8 sol4) sold8(
la4 fa8 re4 mi8)
%262
fa4( re8 la4 si8)
do4.~ do4 do8(
sol'4_> fa8 mi4.)
do4.~ do4 do8(
%266
si'4_> la8 sol4) sold8(
la4) ( fa8 re4 mi8
fa4 re8 la4 si8)
do8([ re do] si[ sol la])
%270
sib!8([ do sib] la4.)
sib8([ do sib] la[ fa sol])
lab!8([ sib lab] sol4.)
lab2.~
lab2.
%275
sol4.^>~( sol8[ do fa,]
mi4. re)
do''8([ re do] si[ sol la])
%278
sib!8([ do sib] la4.)
sib8([ do sib] la[ fa sol])
lab!8([ sib lab] sol4.)
lab2.~
lab2.
sol4.^>~( sol8[ do fa,]
%284
mi4. re)
lab!2.~
lab8[ reb( lab] fa reb fa])
sol2.~
sol2.
%289
do,4.( mi
fa4. re)
do4.( mi
fa4. re)
do4.( mi
%294
sol4. si)
do4.( mi
fa4. re)
do4.( mi
fa4. re)
%299
do4.( mi
sol4. si)
do2.~
do2.~
%303
do4 r8 r4 r8
R2.
%305
do,,16[ do si si do do]       sib16[ sib la la sib sib]
lab16[ lab sol sol lab lab] sol16[ sol do do re re]
mib16[ mib re re mib mib]   mi16[ mi fa fa mi mi]
fa16[ fa sol sol fad fad]   sol16[ sol mib' mib fa! fa]
%309-315
\repeat tremolo 6 sol16 \repeat tremolo 6 do16
\repeat tremolo 6 do16  \repeat tremolo 6 sol'16
\repeat tremolo 12 sol16
fad16[ fad sol sol fad fad] \repeat tremolo 6 sol16
lab4 r8 r4 r8
<sol,,, re' si' sol'>4 r8 r4 r8
<sol mib' do'>4 r8 r4 r8
\bar "|."
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. VIOLON I : DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violonIDynPartA = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%1-4
s2. \pp
s2.*3
%5-8
\setTextCresc s2. \cr
s2.*3
%9-12
s2. \! \FFZ
\DYNEXO #'(1 . 0) s2. \fp
s2. \pp \cr
s4. \! \decr s4 s8 \!
%13-26
s2.*14
%27-29
s2. -\DOLCE
s2. \cr
s4. \! \decr s4 \! s8
%30-38
s2.*9
%39
\DYNEXO #'(1 . 0) s2. \pp
%40-50
s2.*11
%51-52
s2. \cr
s4. \! \decr s8 s8 \! s8
%53-56
s2.*4
%57-60
s2. \cr
s4. \! \decr s4 s8 \!
s2.*2
%61-62
s2. \fz
s2.
%63
s2. \p
\setTextCresc s2. \cr
s2. \! \fz
s2.
s2. \p
%68
\setTextCresc s2. \cr
s2. \! \fz
s4. \cr s4 s16  s16 \!
s2. \fz
s4. \cr s4 s16  s16 \!
%73
s2. \fz
s4. \cr s4 s16  s16 \!
s2. \fz
s4. \cr s4 s16  s16 \!
s4. \fz s4. \fz
s4. s4. \fz
%79
s8 s4 \p s4.
s2.
s8 s4 \pp s4.
%82-86
s2.*5
%87
s2. \pp
s2.*2
\setTextDim s2. \decr
%91-96
s2. \!
s2.*5
%97-99
s2. \fp
s2.
s4. s4 s8 \mf
%100-102
s2.*3
%103-105
s4. \fp \decr s4 s8 \!
s2.
\DYNEXO #'(2 . 0) s2. \ppp
%106-108
s2.*3
%109-112
\DYNEXO #'(0.5 . 0) s2. \fp \decr
s16 s16 \! s4 s4.
s2. \p
s2.
%113-116
\DYNEXO #'(2 . 0) s2. \ppp
s2.*3
%117-120
\DYNEXO #'(0.5 . 0) s4. \fp \decr s4 s8 \!
s2.
s2. \p
s2.
%121-124
s2. \decr
s4. s8 s8 \! s8
s2.*2
%125
s4. \cr s4 s8 \!
s4. \decr s4 s8 \!
s4. \cr s4 s8 \!
s4. \decr s8 \! s4
s2.*2
%131-140
\DYNEXO #'(2 . 0) s2. \ppp
s2.*9
}

violonIDynPartB = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%141-146
s2. \ff
s4. s4 s8 \pp
s2.*4
%147-154
\setTextCresc s2. \cr
s4. s4 s8 \!
s2. \ff
s4. s4 s8 \p
s2.*4
%155-160
s4. \cr s4 s8 \!
s4. \decr s4 s8 \!
s2. \p
s2.*3
%161-164
s2. \mf
s2.*3
%165-168
s2. \pp
s2.*3
%169-172
s2. \mf
s2.*3
%173-194
s2. \pp
s2.*21
%195-203
\DYNEXO #'(0.5 . 0) \TSCREXO #'(2.5 . 2.5) s2. \p -\DOLCE
s2.*8
%204-230
s4. s4 \decr s8 \!
s2.*26
%231-234
s2. \p
s4. \cr s4 s16 s16 \!
s2. \fz
s2.
%235-241
s2. \p
\setTextCresc s4. \cr s4. \!
s2. \fz
s4. \p \cr s4 s16 s16 \!
s2. \fz
s4. \p \cr s4 s16 s16 \!
s2. \fz
%242-244
s4. \decr s4 s16 s16 \!
s2.*2
%245-250
s8 s4 \pp s4 \cr s8 \!
s4 \decr s8 \! s4.
s2. \pp
s2.
s4. s4 \cr s8 \!
s4 \decr s8 \! s4.
%251-260
s2. \ppp
s2.*9
%261-266
s4. \fp \decr s4 \! s8
s2.
\DYNEXO #'(1 . 0) s2. \mf
s2.*3
%267-268
s2. \fp \decr
s8 s8 \! s8 s4.
%269-272
\DYNEXO #'(1 . 0) s2. \ppp
s2.*3
%273-280
\DYNEXO #'(1 . 0) \PINEXO #'(1 . 0) s4. \fp \cr s4 s8 \!
s4 \decr s8 \! s4.
s2.*6
%281-284
s2. \fp
s2.*3
%285-288
s4. \fp \decr s4 s16 s16 \!
s2.*3
%289-294
\DYNEXO #'(1 . 0) s2. \pp
s2.*5
%295-304
\setTextDim s4. \decr s4. \!
s2.*9
%305-308
\DYNEXO #'(1 . 0) s2. \pp
s2.
s4. s4. \cr
s4. s4 s16 s16 \!
%309-315
s4. \setTextCresc s4 \cr s8 \!
s2.
s4. \f \setTextCresc s4 \cr s8 \!
s4. \cr s4 s16 s16 \!
s2. \ff
s2.*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A3. VIOLON I : DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violonIDynMidiA = {
 \repeat unfold 2 {                               % LIGNE 1 À 140

%1-4
s2. \pp
s2.*3
%5-8
s2. \cr
s2.*3
%9-12
s8 \! \ff s8 \f s8 s4.
s8 \ff s8 \f s8 s4.
s2. \pp \cr
s2. \! \mp \decr
%13-26
s2. \! \pp
s2.*13
%27-29
s2.
s2. \cr
s4. \! \mf \decr s4 \! \pp s8
%30-38
s2.*9
%39
s2. \pp
%40-50
s2.*11
%51-52
s2. \cr
s2. \! \mf \decr
%53-56
s2. \! \pp
s2.*3
%57-60
s2. \cr
s2. \! \mf \decr
s2. \! \pp
s2.
%61-62
s2. \f
s2.
%63
s2. \p
s2. \cr
s2. \! \f
s2.
s2. \p
%68
s2. \cr
s2. \! \f
s2. \p \cr
s2. \! \f
s2. \p \cr
%73
s2. \! \f
s2. \p \cr
s2. \! \f
s2. \p \cr
s8 \! \f s4 \mp s8 \f s4 \mp
s4. s8 \f s4 \mp
%79
s8 s4 \p s4.
s2.
s8 s4 \pp s4.
%82-86
s2.*5
%87-90
s2. \pp
s2.*2
s2. \decr
%91-96
s2.
s2. \! \ppp
s2.*4
%97
s4. \p \decr s4 s8 \! \ppp
s2.
s4. s4 s8 \mf
%100-102
s2.*3
%103-105
s4. \f \decr s4 s8 \! \p
s2.
s2. \ppp
%106-108
s2.*3
%109-112
s2. \mp \decr
s2.
s2. \! \p
s2.
%113-116
s2. \ppp
s2.*3
%117-120
s2. \mp \decr
s2.
s2. \! \p
s2.
%121-124
s2. \decr
s4. s8 s8 \! \pp s8
s2.*2
%125
s4. \cr s4.
s4. \! \p \decr s4.
s4. \pp \cr s4.
s4. \! \p \decr s4.
s2. \! \pp
s2.
%131-140
s2. \ppp
s2.*9
 }                                         % FIN DU REPEAT LIGNE 1 À 140
}

violonIDynMidiB = {

%141-146
s2. \ff
s4. s4 s8 \pp
s2.*4
%147-154
s2. \cr
s2.
s2. \! \ff
s4. s4 s8 \p
s2.*4
%155-160
s4. \cr s4.
s4. \! \mf \decr s4.
s2. \! \p
s2.*3
%161-164
s2. \mf
s2.*3
%165-168
s2. \pp
s2.*3
%169-172
s2. \mf
s2.*3
%173-181
s2. \pp
s2.*8
%182 TRILLE
s2. \mp
%183-194
s2. \pp
s2.*11
%195-203
s2. \p
s2.*8
%204-228
s4. s4 \mf \decr s8 \! \p
s2.
%206 TRILLE
s4. s4. \mf
%207-229
s2. \p
s2.*23
%231-234
s2. \p
s4. \cr s4 s16 s16
s2. \! \f
s2.
%235-241
s2. \p
s2. \cr
s2. \! \f
s2. \p \cr
s2. \! \f
s2. \p \cr
s2. \! \f
%242-244
s2. \decr
s2. \! \p
s2.
%245-250
s4. \pp s4. \cr
s4 \! \mf \decr s8 \! \pp s4.
s2. \pp
s2.
s4. s4. \cr
s4 \! \mf \decr s8 \! \pp s4.
%251-260
s2. \ppp
s2.*9
%261-266
s4. \mf \decr s4 \! \p s8
s2.
s2. \mf
s2.*3
%267-268
s2. \f \decr
s4 \! \mf s8 s4.
%269-272
s2. \ppp
s2.*3
%273-280
s2. \p \cr
s4 \! \f \decr s8 \! \p s4.
s2.*6
%281-284
s4 \f \decr s8 \! \p s4.
s2.*3
%285-288
s2. \f \decr
s2. \! \p
s2.*2
%289-294
s2. \pp
s2.*5
%295-304
s2. \decr
s2.
s2. \! \ppp
s2.*7
%305-308
s2. \pp
s2.
s4. s4. \cr
s2.
%309-315
s2.*2
s4. \! \f s4. \cr
s2.
\tempo 4=120 s2. \! \ff
s2.
\tempo 4=45 s2.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN A. VIOLON I
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. VIOLON II
%                                           B1. VIOLON II: NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violonIINoteA = \relative do' {
 \repeat volta 2 {                               % LIGNE 1 À 140

%1
R2.
R2.
do16[ do si si do do]       sib16[ sib la la sib sib]
lab16[ lab sol sol lab lab] sol16[ sol do do re re]
%5
mib16[ mib re re mib mib]  mi16[ mi fa fa mi mi]
fa16[ fa sol sol fad fad]  sol16[ sol mib' mib fa! fa]
\repeat tremolo 6 sol16 \repeat tremolo 6 do16
\repeat tremolo 6 do16  \repeat tremolo 6 mib16
<fa,, reb' lab'>4 r8 r4 r8
R2.
%11
lab2.(
sol4.~sol4 fa8)
mib4.( mi4.
fa4. mib4) do16([ reb]
%15
mib4.) (mi4.
fa4. mib4.)
re2.(
fa2.)
mib4.( mi4.
%20
fa4. mib4) do16([ reb]
mib4.) (mi4.
fa4. mib4.)
reb2. ~
%24
reb2. ~
reb2. ~
reb2.
do8[( fa) mib-.]  mib8[( fa) mib-.]
mib8[( fa) mib-.] mib8[( fa) mib-.]
%29
mib8[( fa) mib-.] mib8[( fa) mib-.]
mib8[( fa) mib-.] mib8[( fa) mib-.]
reb8[( fa) reb-.] reb8[( fa) reb-.]
reb8[( fa) reb-.] reb8[( fa) reb-.]
%33
do8[( mib) do-.]  do8[( mib) do-.]
do8[( mib) do-.]  mib8[( fa) mib-.]
reb8[( fa) reb-.] reb8[( mib) reb-.]
do8[( mib) do-.]  reb8[( fa) reb-.]
do8[( mib) do-.]  do8[( mib) do-.]
%38
sib8[( mib) sib-.] reb8[( mib) reb-.]
do8[( mib') mib-.] mib8[( fa) mib-.]
mib8[( fa) mib-.]  mib8[( fa) mib-.]
mib8[( fa) mib-.]  mib8[( fa) mib-.]
%42
mib8[( fa) mib-.] mib8[( fa) mib-.]
reb8[( fa) reb-.] reb8[( fa) reb-.]
reb8[( fa) reb-.] reb8[( fa) reb-.]
do8[( mib) do-.]  do8[( mib) do-.]
do8[( mib) do-.]  mib8[( fa) mib-.]
%47
reb8[( fa) reb-.] reb8[( mib) reb-.]
do8[( mib) do-.]  reb8[( fa) reb-.]
do8[( mib) do-.]  do8[( mib) do-.]
dob8[( mib) dob-.]  sib8[( mib) sib-.]
%51
la8[( do) la-.]    la8[( do) la-.]
fa8[( sib) fa-.]   fa8[( sib) fa-.]
mib8[( lab) mib-.] mib8[( lab) mib-.]
mib8[( sol) mib-.] reb'8[( mib) reb-.]
do8[( mib) do-.]   do8[( mib) do-.]
%56
dob8[( mib) dob-.] sib8[( mib) sib-.]
la8[( do) la-.]    la8[( do) la-.]
fa8[( sib) fa-.]   fa8[( sib) fa-.]
%59
mib8[( lab) mib-.] mib8[( lab) mib-.]
mib8[( sol) mib-.] mib8[( sol) mib-.]
\repeat tremolo 12 mib16
\repeat tremolo 12 mib16
%63
\repeat tremolo 12 mib16
\repeat tremolo 12 mib16
\repeat tremolo 12 solb16
\repeat tremolo 12 solb16
\repeat tremolo 12 solb16
%68
\repeat tremolo 12 solb16
\repeat tremolo 12 <reb mib>16
\repeat tremolo 12 <reb fab>16
\repeat tremolo 12 <reb mib>16
\repeat tremolo 12 <reb fab>16
%73
\repeat tremolo 12 <reb mib>16
\repeat tremolo 12 solb16
\repeat tremolo 12 fa16
\repeat tremolo 12 lab16
sol8 dod([ re] mib[ re]) r8
r8 dod([ re] mib[ re]) r8
%79
r8 dod,([ re] mib[ re]) r8
r8 dod([ re] mib[ re]) r8
r8 mib4~ mib4( lab8)
sol8([ re' mib] re[ sib la])
sol2.~
%84
sol4.( fad)
r8 mib4~ mib4( lab!8)
sol8([ re' mib] re[ sib la])
sol2.(
sib2.~)
sib2.~
sib2.
%91
si4.( sol
la4. fad)
sol2.~
sol2.~
%95
sol2.~
sol2.
fad2.~(
fad4. do)
sol''2.~
%100
sol4. sol8([ fad sol])
sol2.~
sol4. sol8([ fad sol])
fad2.~(
%104
fad4. do)
re2.(
do4.) do8([ re do])
do2.(
sib4.) sib8([ do sib])
%109
do4.~( do8[ sib do])
reb8([ mib reb] do4 sib8)
la4.( si4 la8)
sol4.( fad)
%113
si'4.( la4.~
la4. sol)
la4.( sol~
sol4. fa)
lab!4.~( lab8[ sol lab])
%118
sib8([ do sib] lab4 sol8)
fad4.( sol4 mi8
re2.)
sib2.(
lab2.
%123
sol2.
fad2.)
re4.( sol
la4. fad)
re4.( sol
%128
la4. fad)
re4.( sol
si4. re)
re4.( sol
%132
la4. fad)
re4.( sol
la4. fad)
re4.( sol
%136
si4. do)
si2.~
si2.~
si8 r8 r8 r4 r8
%140
R2.
 }                                         % FIN DU REPEAT LIGNE 1 À 140
}

violonIINoteB = \relative do' {

%141
\repeat tremolo 12 do16
do8 r8 r8 r4 lab'8(
sol2.) (
%144
lab2.)
\set doubleSlurs = ##t <sol sib>2.(
<lab do>2.) \set doubleSlurs = ##f
solb'8([ mib do] mib[ do la]
%148
solb8[ fa mi] mib[ reb do])
\repeat tremolo 12 sib16
sib8 r8 r8 r4 \set doubleSlurs = ##t <fa' sib>8(
<fa la>2.) (
%152
<fa sib>2.)
<lab! mib'>2.(
\ACCINO <lab! fa'>2.) \set doubleSlurs = ##f
<sib mib>2.~
%156
<sib mib>4. <lab mib'>
lab8([ sol! lab] fa[ solb mib]
reb8[ fa mib]    reb[ fa solb])
lab8([ sol! lab] fa[ solb mib]
%160
reb8[ fa mib]      reb[ fa lab])
solb8([ fa solb])  solb([ fa solb])
solb8([ fa solb])  solb([ fa solb])
solb8([ lab solb]) solb([ lab solb])
%164
solb8([ lab solb])  solb([ fa solb])
fa8([ lab solb]     fa[ solb mib])
reb8([ fa mib]      reb[ fa solb])
fa8([ lab solb]     fa[ solb mib]
reb8([ fa mib]      reb[ mib fa])
%169
mib8([ re! mib]) mib([ re mib])
mib8([ re mib])  mib([ re mib])
mib8([ fa mib])  mib([ fa mib])
mib8([ fa mib])  mib([ re mib])
%173
reb8([ fa mib] reb[ mib do]
sib8[ reb do]  sib[ reb fa])
fa8([ mi fa])  fa([ mi fa])
fa2.
mib!8([ sol fa] mib[ fa re]
%178
do8[ mib re]     do[ mib sol])
sol8([ fad sol]) sol([ fad sol])
sol2.
sib8([ la sib]   do[ sib la]
%182
sol8[ fad sol]    la[ sib sol])
fad8([ re fad])   fad([ re fad])
fad8([ re fad])   fad([ re fad])
sol8([ dod, sol']) sol([ dod, sol'])
sol8([ dod, sol']) sol([ dod, sol'])
%187
fad8([ re fad])   fad([ re fad])
fad8([ re fad])   fad([ re fad])
sol8([ dod, sol']) sol([ dod, sol'])
sol8([ dod, sol']) sol([ dod, sol'])
%191
fad4 r8 r4 r8
R2.*3
fa8[( sol) fa-.] fa[( sol) fa-.]
fa8[( sol) fa-.] fa[( sol) fa-.]
%197
fa8[( sol) fa-.]   fa[( sol) fa-.]
fa8[( sol) fa-.]   fa[( sib) fa-.]
sol8[( sib) sol-.] sol[( sib) sol-.]
sol8[( sib) sol-.] sol[( sib) sol-.]
%201
fa8[( sib) fa-.]  fa[( sib) fa-.]
fa8[( sib) fa-.]  sol[( re') sol,-.]
sol8[( do) sol-.] fa[( do') fa,-.]
fa8[( sib) fa-.]  mib[( sol) mib-.]
re8[( fa) re-.]   re8[( fa) re-.]
%206
do8[( fa) do-.] fa[( lab!) fa-.]
mib8[( do') sib-.] sib[( do) sib-.]
sib8[( do) sib-.] sib[( do) sib-.]
sib8[( do) sib-.] sib[( do) sib-.]
%210
sib8[( do) sib-.]  sib[( mib) sib-.]
do8[( mib) do-.]   do[( mib) do-.]
do8[( mib) do-.]   do[( mib) do-.]
sib8[( mib) sib-.] sib[( mib) sib-.]
sib8[( mib) sib-.] do[( sol') do,-.]
%215
do8[( fa) do-.]      sib[( fa') sib,-.]
sib8[( mib) sib-.]   lab[( do) lab-.]
sol8[( sib) sol-.]   sol[( sib) sol-.]
solb8[( sib) solb-.] fa[( sib) fa-.]
%219
mi8[( sol) mi-.]   mi[( sol) mi-.]
fa8[( lab) fa-.]   do[( fa) do-.]
sib8[( mib) sib-.] sib[( mib) sib-.]
sib8[( re) sib-.]  lab'[( sib) lab-.]
%223
sol8[( sib) sol-.] sol[( sib) sol-.]
solb8[( sib) solb-.] fa[( sib) fa-.]
mi8[( sol) mi-.]   mi[( sol) mi-.]
%226
fa8[( lab) fa-.]   do[( fa) do-.]
sib8[( mib) sib-.] sib[( mib) sib-.]
sib8[( re) sib-.]  sib[( re) sib-.]
\repeat tremolo 12 sib16
%230
\repeat tremolo 12 sib16
\repeat tremolo 12 sib16
\repeat tremolo 12 sib16
\repeat tremolo 12 reb16
\repeat tremolo 12 reb16
%235
\repeat tremolo 12 reb16
\repeat tremolo 12 reb16
\repeat tremolo 12 sib16
\repeat tremolo 12 reb16
\repeat tremolo 12 do16
%240
\repeat tremolo 12 <si fa'>16
<do mi>16[<do mi> si si do do] si[ si do do si si]
do16[ do si si do do] si[ si do do si si]
do8 r8 r8 r4 r8
R2.
r8 lab4~( lab reb8)
%246
do8([ sol' lab] sol[ mib re!])
do2.~(
do4. si)
r8 lab'4~ ^( lab reb8)
do8([ sol' lab] sol[ mib re!])
do2.(
mib2.~)
%253
mib2.~
mib2.~
mi4.( do
re4. si)
do2.~
%258
do2.
do2.~
do2.
si2.~(
si4. fa)
do'2.~
do4. do8([ si do])
do2.~
%266
do4. do8([ si do])
si2.~(
si4. fa)
sol2.(
%270
fa4.) fa8([ sol fa])
fa2.(
mib!4.) mib8([ fa mib])
fa4.~( fa8[ mib fa]
solb8[ lab solb] fa4 mib8)
%275
re4.^>( mi4 do8)
do4.( si)
mi'4.( re
reb4. do)
re!4.( do4.~
do4. sib)
%281
reb4.~( reb8[ do reb]
mib8[ fa mib] reb4 do8)
si4.( do4 la8)
%284
sol2.
mib!2.(
reb2.
do2.
si2.)
%289
sol4.( do
re4. si)
sol4.( do
re4. si)
sol4.( do
%294
mi4. sol)
sol4.( do
re4. si)
sol4.( do
re4. si)
%299
sol4.( do
mi4. sol)
\ACCINO sol!2.~
sol2.~
%303
sol4 r8 r4 r8
R2.
%305
R2.
R2.
do,,16[ do si si do do]     sib16[ sib la la sib sib]
lab16[ lab sol sol lab lab] sol16[ sol do do re re]
%309-315
mib16[ mib re re mib mib]  mi16[ mi fa fa mi mi]
fa16[ fa sol sol fad fad]  sol16[ sol mib' mib fa! fa]
\repeat tremolo 6 sol16 \repeat tremolo 6 do16
\repeat tremolo 6 do16  \repeat tremolo 6 mib16
<reb, reb'>4 r8 r4 r8
<sol,, re' si'>4 r8 r4 r8
<sol mib' do'>4 r8 r4 r8
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. VIOLON II : DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violonIIDynPartA = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%1-4
s2.*2
\DYNEXO #'(1 . 0) s2. \pp
s2.
%5-8
\setTextCresc s2. \cr
s2.*3
%9-11
s2. \! \FFZ
s2.
s2. \pp
%12-38
s2.*27
%39
\DYNEXO #'(1 . 0) s2. \pp
%40-60
s2.*21
%61-62
s2. \fz \decr
s4. s4 s16  s16 \!
%63
s2. \p
s4. \cr s4 s16  s16 \!
s2. \fz \decr
s4. s4 s16  s16 \!
s2. \p
%68
s4. \cr s4 s16  s16 \!
s4. \fz \decr s4 s16  s16 \!
s4. \cr s4 s16  s16 \!
s4. \fz \decr s4 s16  s16 \!
s4. \cr s4 s16  s16 \!
%73
s4. \fz \decr s4 s16  s16 \!
s4. \cr s4 s16  s16 \!
s4. \fz \decr s4 s16  s16 \!
s4. \cr s4 s16  s16 \!
s4. \fz s4. \fz
s4. s4. \fz
%79
s8 s4 \p s4.
s2.
s8 s4 \pp s4.
%82-86
s2.*5
%87
s2. \pp
s2.*2
\setTextDim s2. \decr
%91-96
s2. \!
s2.*5
%97-99
s2. \fp
s2.
s2. \mf
%100-102
s2.*3
%103-105
s4. \fp \decr s4 s8 \!
s2.
\DYNEXO #'(2 . 0) s2. \ppp
%106-108
s2.*3
%109-112
\DYNEXO #'(0.5 . 0) s2. \fp \decr
s16 s16 \! s4 s4.
s2.
s2.
%113-116
\DYNEXO #'(2 . 0) s2. \ppp
s2.*3
%117-120
\DYNEXO #'(0.5 . 0) s4. \fp \decr s4 s8 \!
s2.
s2. \p
s2.
%121-124
s2. \decr
s4. s8 s8 \! s8
s2.*2
%125
s4. \cr s4 s8 \!
s4. \decr s4 s8 \!
s4. \cr s4 s8 \!
s4. \decr s8 \! s4
s2.*2
%131-140
\DYNEXO #'(2 . 0) s2. \ppp
s2.*9
}

violonIIDynPartB = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%141-146
s2. \ff
s4. s4 s8 \pp
s2.*4
%147-154
\setTextCresc s2. \cr
s4. s4 s8 \!
s2. \ff
s4. s4 s8 \p
s2.*4
%155-160
s4. \cr s4 s8 \!
s4. \decr s4 s8 \!
s2. \p
s2.*3
%161-164
s2. \mf
s2.*3
%165-168
s2. \pp
s2.*3
%169-172
s2. \mf
s2.*3
%173-194
s2. \pp
s2.*21
%195-228
\DYNEXO #'(1.5 . 0) s2. \pp
s2.*33
%229-234
s4. \fz \decr s4 s16 s16 \!
s2.
s2. \p
s4. \cr s4 s16 s16 \!
s4. \fz \decr s4 s16 s16 \!
s2.
%235-239
s2. \p
s4. \cr s4 s16 s16 \!
s4. \fz \decr s4 s16 s16 \!
s4. \p \cr s4 s16 s16 \!
s4. \fz \decr s4 s16 s16 \!
%240-244
s4. \p \cr s4 s16 s16 \!
s2. \fz
s4. \decr s4 s16 s16 \!
s2.*2
%245-250
s8 s4 \pp s4 \cr s8 \!
s4 \decr s8 \! s4.
s2. \pp
s2.
s4. s4 \cr s8 \!
s4 \decr s8 \! s4.
%251-260
s2. \ppp
s2.*9
%261-266
s2. \fp
s2.
\DYNEXO #'(1 . 0) s2. \mf
s2.*3
%267-268
s2. \fp \decr
s8 s8 \! s8 s4.
%269-272
\DYNEXO #'(1 . 0) s2. \ppp
s2.*3
%273-280
\DYNEXO #'(1 . 0) \PINEXO #'(1 . 0) s4. \fp \cr s4 s8 \!
s4 \decr s8 \! s4.
s2.*6
%281-284
s2. \fp
s2.*3
%285-288
s4. \fp \decr s4 s16 s16 \!
\setTextDim s4. \decr s4. \!
s2.*2
%289-294
\DYNEXO #'(1 . 0) s2. \pp
s2.*5
%295-304
\setTextDim s4. \decr s4. \!
s2.*9
%305-308
s2.*2
s4. \pp s4. \cr
s4. s4 s16 s16 \!
%309-315
s4. \setTextCresc s4 \cr s8 \!
s2.
s4. \f \setTextCresc s4 \cr s8 \!
s4. \cr s4 s16 s16 \!
s2. \ff
s2.*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3. VIOLON II : DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violonIIDynMidiA = {
 \repeat unfold 2 {                               % LIGNE 1 À 140

%1-4
s2.*2
s2. \pp
s2.
%5-8
s2. \cr
s2.*3
%9-11
s2. \! \ff
s2.
s2. \pp
%12-38
s2.*27
%39
s2. \pp
%40-60
s2.*21
%61-62
s2. \f \decr
s2.
%63
s2. \! \p
s2. \cr
s2. \! \f \decr
s2.
s2. \! \p
%68
s2. \cr
s2. \! \f \decr
s2. \! \p \cr
s2. \! \f \decr
s2. \! \p \cr
%73
s2. \! \f \decr
s2. \! \p \cr
s2. \! \f \decr
s2. \! \p \cr
s8 \! \f s4 \mp s8 \f s4 \mp
s4. s8 \f s4 \mp
%79
s8 s4 \p s4.
s2.
s8 s4 \pp s4.
%82-86
s2.*5
%87-90
s2. \pp
s2.*2
s2. \decr
%91-96
s2.
s2. \! \ppp
s2.*4
%97
s4. \p \decr s4 s8 \! \ppp
s2.
s2. \mf
%100-102
s2.*3
%103-105
s4. \f \decr s4 s8 \! \p
s2.
s2. \ppp
%106-108
s2.*3
%109-112
s2. \mp \decr
s2.
s2. \! \p
s2.
%113-116
s2. \ppp
s2.*3
%117-120
s2. \mp \decr
s2.
s2. \! \p
s2.
%121-124
s2. \decr
s4. s8 s8 \! \pp s8
s2.*2
%125
s4. \cr s4.
s4. \! \p \decr s4.
s4. \pp \cr s4.
s4. \! \p \decr s4.
s2. \! \pp
s2.
%131-140
s2. \ppp
s2.*9
 }                                         % FIN DU REPEAT LIGNE 1 À 140
}

violonIIDynMidiB = {

%141-146
s2. \ff
s4. s4 s8 \pp
s2.*4
%147-154
s2. \cr
s2.
s2. \! \ff
s4. s4 s8 \p
s2.*4
%155-160
s4. \cr s4.
s4. \! \mf \decr s4.
s2. \! \p
s2.*3
%161-164
s2. \mf
s2.*3
%165-168
s2. \pp
s2.*3
%169-172
s2. \mf
s2.*3
%173-194
s2. \pp
s2.*21
%195-228
s2. \pp
s2.*33
%229-234
s4. \ff \decr s4 s16 s16 \! \pp
s2.
s2. \p
s2. \cr
s4. \! \ff \decr s4 s16 s16 \! \pp
s2.
%235-241
s2. \p
s2. \cr
s2. \! \f \decr
s2. \! \p \cr
s2. \! \f \decr
s2. \! \p \cr
s2. \! \f
%242-244
s2. \decr
s2. \! \p
s2.
%245-250
s4. \pp s4. \cr
s4 \! \mf \decr s8 \! \pp s4.
s2. \pp
s2.
s4. s4. \cr
s4 \! \mf \decr s8 \! \pp s4.
%251-260
s2. \ppp
s2.*9
%261-266
s4. \mf \decr s4 \! \p s8
s2.
s2. \mf
s2.*3
%267-268
s2. \f \decr
s4 \! \mf s8 s4.
%269-272
s2. \ppp
s2.*3
%273-280
s2. \p \cr
s4 \! \f \decr s8 \! \p s4.
s2.*6
%281-284
s4 \f \decr s8 \! \p s4.
s2.*3
%285-288
s2. \f \decr
s2. \! \p \decr
s2.*2
%289-294
s2. \! \pp
s2.*5
%295-304
s2. \decr
s2.
s2. \! \ppp
s2.*7
%305-308
s2.*2
s4. \pp s4. \cr
s2.
%309-315
s2.*2
s4. \! \f s4. \cr
s2.
s2. \! \ff
s2.*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN B. VIOLON II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. ALTO (VIOLA)
%                                           C1. ALTO: NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoNoteA = \relative do' {
 \repeat volta 2 {                               % LIGNE 1 À 140
%1
R2.
R2.
R2.
R2.
%5
do16[ do si si do do]       sib16[ sib la la sib sib]
lab16[ lab sol sol lab lab] sol16[ sol do do re re]
mib16[ mib re re mib mib]   mi16[ mi fa fa mi mi]
fa16[ fa sol sol fad fad]   sol16[ sol mib' mib do do]
<fa,, reb' lab'>4 r8 r4 r8
R2.
%11
re'2.(
si2.)
\repeat tremolo 12 do16
\repeat tremolo 12 do16
%15
\repeat tremolo 12 do16
\repeat tremolo 12 do16
lab2.(
re2.)
\repeat tremolo 12 do16
%20
\repeat tremolo 12 do16
\repeat tremolo 12 do16
\repeat tremolo 12 do16
lab2.~
%24
lab2.
sib2.~
sib4.( sol4.)
lab8[( do) do-.] do8[( lab) do-.]
do8[( lab) do-.] do8[( lab) do-.]
%29
reb8[( sib) reb-.] reb8[( sib) reb-.]
reb8[( sib) reb-.] do8[( lab) do-.]
lab8[( reb) lab-.] lab8[( reb) lab-.]
lab8[( reb) lab-.] lab8[( reb) lab-.]
%33
lab8[( do) lab-.]  lab8[( do) lab-.]
lab8[( do) lab-.]  do8[( fa,) do'-.]
sib8[( fa) sib-.]  sib8[( mib,) sib'-.]
lab8[( mib) lab-.] lab8[( fa) lab-.]
lab8[( mib) lab-.] lab8[( mib) lab-.]
%38
sol8[( mib) sol-.] sib8[( mib,) sib'-.]
lab8[( do') do-.]  do8[( lab) do-.]
do8[( lab) do-.]   do8[( lab) do-.]
reb8[( sib) reb-.] reb8[( sib) reb-.]
%42
reb8[( sib) reb-.] do8[( lab) do-.]
lab8[( reb) lab-.] lab8[( reb) lab-.]
lab8[( reb) lab-.] lab8[( reb) lab-.]
lab8[( do) lab-.]  lab8[( do) lab-.]
lab8[( do) lab-.]  do8[( fa,) do'-.]
%47
sib8[( fa) sib-.]  sib8[( mib,) sib'-.]
lab8[( mib) lab-.] lab8[( fa) lab-.]
lab8[( mib) lab-.] lab8[( mib) lab-.]
lab8[( mib) lab-.] sol8[( mib) sol-.]
%51
solb8[( mib) solb-.] solb8[( mib) solb-.]
fa8[( reb) reb-.]    reb8[( fa) reb-.]
do8[( mib) do-.]     do8[( mib) do-.]
sib8[( mib) sib-.]   sol'8[( mib) sol-.]
lab8[( mib) lab-.]   lab8[( mib) lab-.]
%56
lab8[( mib) lab-.]   sol8[( mib) sol-.]
solb8[( mib) solb-.] solb8[( mib) solb-.]
fa8[( reb) fa-.]     reb8[( fa) reb-.]
%59
do8[( mib) do-.]    do8[( mib) do-.]
sib8[( mib) sib-.]  sib8[( mib) sib-.]
\repeat tremolo 12 dob16
\repeat tremolo 12 dob16
%63
\repeat tremolo 12 dob16
\repeat tremolo 12 dob16
\repeat tremolo 12 <reb fab>16
\repeat tremolo 12 <reb fab>16
\repeat tremolo 12 <reb fab>16
%68
\repeat tremolo 12 <reb fab>16
\repeat tremolo 12 sib16
\repeat tremolo 12 lab16
\repeat tremolo 12 sib16
\repeat tremolo 12 lab16
%73
\repeat tremolo 12 sib16
\repeat tremolo 12 <sib mib>16
\repeat tremolo 12 <do mib>16
\repeat tremolo 12 <do mib>16
<si re>8 lad'([si] do[ si]) r8
r8 lad([si] do[ si]) r8
%79
r8 lad,([si] do[ si]) r8
r8 lad([si] do[ si]) r8
r8 la([ sib!] do[ sib re]
mib8[ fa sol] lab![ sol la])
sib2.~
%84
sib4.( la)
r8 la,([ sib] do[ sib re]
mib8[ fa sol] lab![ sol la])
sib2.(
sol2.~)
sol2.~
%90
sol2.~
sol4. re(
fad4. do)
si8([ fad' sol] fa[ mi fa]
mi8[ red mi] re4) red8(
%95
mi8[ red mi] re[ dod re]
do!8[ si do] si4) si8(
do4.~) do4( si8
la2.)
<sol sol'~>2.
%100
sol'4. sol8([ fad sol])
sol2.~
sol4. sol8([ fad sol])
do4.~( do4 si8
%104
la2.)
si4.( la~
la4. sol)
la4.( sol~
sol4. fa)
%109
lab4.~( lab8[ sol lab])
sib8([ do sib] lab4 sol8)
fad4.( sol4 mi8)
re4.~( re8[ mi re])
%113
re'2.(
\ACCINO do!4.) do8([ re do])
do2.(
\ACCINO sib!4.) sib8([ do sib])
do4.~( do8[ sib do])
%118
reb8([ mib reb] do4 sib8)
la4.( si4 sol8)
sol4.( fad)
reb2.(
do2.
%123
sib2.
la2.)
si4.( re
fad4. do)
si4.( re
%128
fad4. do)
si4.( re
sol4. do)
si4.( re
%132
fad4. do)
si4.( re
fad4. do)
si4.( re
%136
sol4. re)
re2.~
re2.~
re8 r8 r8 r4 r8
%140
R2.
 }                                         % FIN DU REPEAT LIGNE 1 À 140
}

altoNoteB = \relative do {

%141
\repeat tremolo 12 mib16
mib8 r8 r8 r4 \set doubleSlurs = ##t <do' mib>8(
<reb mib>2.) (
%144
<do mib>2.)
<reb mib>2.(
<do mib>2.) \set doubleSlurs = ##f 
solb'8([ mib do] mib[ do la]
%148
solb8[ fa mi] mib[ reb do])
\repeat tremolo 12 fa16
fa8 r8 r8 r4 reb'8(
mib2.) (
%152
reb2.) \set doubleSlurs = ##t
<solb do>2.(
<fa reb'>2.)
<solb reb'>2.(
%156
<sol re'>4.) \set doubleSlurs = ##f <solb do>4.
fa8([ mi fa] reb[ mib lab,]
fa8[ reb' lab] fa[ reb' mib])
fa8([ mi fa] reb[ mib lab,]
%160
fa8[ reb' lab] fa[ reb' fa])
mib8([ re! mib]) mib([ re mib])
mib8([ re mib])  mib([ re mib])
mib8([ fa mib])  mib([ fa mib])
%164
mib8([ fa mib]) mib([ re mib])
reb8([ fa mib]   reb[ mib lab,])
fa8([ reb' lab]  fa[ reb' mib])
reb8([ fa mib]   reb[ mib lab,]
fa8[ reb' lab]  fa[ lab reb])
%169
do8([ si do])  do([ si do])
do8([ si do])  do([ si do])
do8([ reb do]) do([ reb do])
do8([ reb do]) do([ si do])
%173
sib!8([ reb do] sib[ do fa,]
reb8[ sib'fa] reb[ sib' reb])
do2.
do8([ si do]) do([ si do])
do8([ mib! re] do[ re sol,]
%178
mib8[ sol fa]  mib[ do' mib])
re2.
re8([ dod re]) re([ dod re])
sol,8([ la sol] fad[ sol la]
%182
sib8[ do sib]      la[ sol sib])
la8([ re la])      la([ re la])
la8([ re la])      la([ re la])
sol8([ mib' sol,]) sol([ mib' sol,])
sol8([ mib' sol,]) sol([ mib' sol,])
%187
la8([ re la])      la([ re la])
la8([ re la])      la([ re la])
sol8([ mib' sol,]) sol([ mib' sol,])
sol8([ mib' sol,]) sol([ mib' sol,])
%191
la4 r8 r4 r8
R2.*3
re8[( sib) re-.]  re[( sib) re-.]
re8[( sib) re-.]  re[( sib) re-.]
%197
mib8[( do) mib-.]  mib[( do) mib-.]
mib8[( do) mib-.]  re[( sib) re-.]
mib8[( sib) mib-.] mib[( sib) mib-.]
mib8[( sib) mib-.] mib[( sib) mib-.]
%201
re8[( sib) re-.]   re[( sib) re-.]
re8[( sib) re-.]   fa[( re) fa-.]
mib8[( do) mib-.]  mib[( do) mib-.]
re8[( sib) re-.]   sib[( sol) sib-.]
sib8[( fa) sib-.]  sib[( fa) sib-.]
%206
la8[( fa) la-.]     lab[( fa) lab-.]
sol8[( lab') sol-.] sol[( mib) sol-.]
sol8[( mib) sol-.]  sol[( mib) sol-.]
lab8[( fa) lab-.]   lab[( fa) lab-.]
%210
lab8[( fa) lab-.]  sol[( mib) sol-.]
lab8[( mib) lab-.] lab[( mib) lab-.]
lab8[( mib) lab-.] lab[( mib) lab-.]
sol8[( mib) sol-.] sol[( mib) sol-.]
sol8[( mib) sol-.] sib[( sol) sib-.]
%215
lab8[( fa) lab-.]  lab[( fa) lab-.]
\ACCINO sol!8[( mib) sol-.] mib[( do) mib-.]
mib8[( sib) mib-.] mib[( sib) mib-.]
mib8[( sib) mib-.] re[( sib) re-.]
%219
reb8[( sib) reb-.] reb[( sib) reb-.]
do8[( lab) do-.]   lab[( do) lab-.]
sol8[( sib) sol-.] sol[( sib) sol-.]
fa8[( sib) fa-.]   fa'[( sib,) fa'-.]
%223
mib8[( sib) mib-.] mib[( sib) mib-.]
mib8[( sib) mib-.] re[( sib) re-.]
reb8[( sib) reb-.] reb[( sib) reb-.]
%226
do8[( lab) do-.]   lab[( do) lab-.]
sol8[( sib) sol-.] sol[( sib) sol-.]
lab8[( sib) lab-.] lab[( sib) lab-.]
\repeat tremolo 12 solb16
%230
\repeat tremolo 12 solb16
\repeat tremolo 12 solb16
\repeat tremolo 12 solb16
\repeat tremolo 12 <lab dob>16
\repeat tremolo 12 <lab dob>16
%235
\repeat tremolo 12 <lab dob>16
\repeat tremolo 12 <lab dob>16
\repeat tremolo 12 <fa lab>16
\repeat tremolo 12 <fa sib>16
\repeat tremolo 12 <sol! sib>16
%240
\repeat tremolo 12 <fa lab>16
do'16[ do si si do do] si[ si do do si si]
do16[ do si si do do]  si[ si do do si si]
do8 r8 r8 r4 r8
R2.
r8 re,!([ mib] fa[ mib sol]
%246
lab8[ sib do] reb[ do re])
mib2.~(
mib4. re)
r8 re([ mib] fa[ mib sol]
lab8[ sib do] reb[ do re])
mib!2.(
do2.~)
%253
do2.~
do2.
do4.( sol
si4. fa)
mi8[( si') do-.] sib[( la) sib-.]
%258
la8[(sold) la-.] sol4( sold8)
la8[(sold) la-.] sol[(fad) sol-.]
fa!8[(mi) fa-.] mi4.^>
fa4.~( fa4 mi8
%262
re2.)
do2.~
do4. do8([ si do])
do2.~
%266
do4. do8([ si do])
fa4.~( fa4 mi8
re2.)
mi4.( re
reb4. do)
%271
re!4.( do~
do4. sib)
reb4.~( reb8[ do reb]
mib8[ fa mib] reb4 do8)
%275
si4.^>( do4 la8)
sol2.
sol'2.(
fa4.) fa8([ sol fa])
fa2.(
mib!4.) mib8([ fa mib])
%281
fa4.~( fa8[ mib fa]
solb8[ lab solb] fa4 mib8)
re4.( mi4 do8)
%284
do4.( si)
solb2.(
fa2.
mib!2.
re2.)
%289
mi4.( sol
si4. fa)
mi4.( sol
si4. fa)
mi4.( sol
%294
do4. fa)
mi4.( sol
si4. fa)
mi4.( sol
si4. fa)
%299
mi4.( sol
do4. fa)
mi2.~
mi2.~
%303
mi4 r8 r4 r8
R2.
%305
R2.*4
%309-315
do,16[ do si si do do]      sib16[ sib la la sib sib]
lab16[ lab sol sol lab lab] sol16[ sol do do re re]
mib16[ mib re re mib mib]   mi16[ mi fa fa mi mi]
fa16[ fa sol sol fad fad]   sol16[ sol mib mib do do]
<fa, reb' lab'>4 r8 r4 r8
<sol sol'>4 r8 r4 r8
<do, do'>4 r8 r4 r8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. ALTO : DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoDynPartA = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%1-4
s2.*4
%5-8
\setTextCresc s4. \p \cr s4.
s2.*3
%9-11
s2. \! \FFZ
s2.
s2. \pp
%12-38
s2.*27
%39
\DYNEXO #'(1 . 0) s2. \pp
%40-60
s2.*21
%61-62
s2. \fz \decr
s4. s4 s16  s16 \!
%63
s2. \p
s4. \cr s4 s16  s16 \!
s2. \fz \decr
s4. s4 s16  s16 \!
s2. \p
%68
s4. \cr s4 s16  s16 \!
s4. \fz \decr s4 s16  s16 \!
s4. \cr s4 s16  s16 \!
s4. \fz \decr s4 s16  s16 \!
s4. \cr s4 s16  s16 \!
%73
s4. \fz \decr s4 s16  s16 \!
s4. \cr s4 s16  s16 \!
s4. \fz \decr s4 s16  s16 \!
s4. \cr s4 s16  s16 \!
s4. \fz s4. \fz
s4. s4. \fz
%79
s8 s4 \p s4.
s2.
s8 s4 \pp s4.
%82-86
s2.*5
%87
s2. \pp
s2.*2
\setTextDim s2. \decr
%91-96
s2. \!
s2.*5
%97-99
s2. \fp
s2.
s2. \mf
%100-102
s2.*3
%103-105
s4. \fp \decr s4 s8 \!
s2.
\DYNEXO #'(2 . 0) s2. \ppp
%106-108
s2.*3
%109-112
\DYNEXO #'(0.5 . 0) s2. \fp \decr
s16 s16 \! s4 s4.
s2.
s2.
%113-116
\DYNEXO #'(2 . 0) s2. \ppp
s2.*3
%117-120
\DYNEXO #'(0.5 . 0) s4. \fp \decr s4 s8 \!
s2.
s2. \p
s2.
%121-124
s2. \decr
s4. s8 s8 \! s8
s2.*2
%125
s4. \cr s4 s8 \!
s4. \decr s4 s8 \!
s4. \cr s4 s8 \!
s4. \decr s8 \! s4
s2.*2
%131-140
\DYNEXO #'(2 . 0) s2. \ppp
s2.*9
}

altoDynPartB = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%141-146
s2. \ff
s4. s4 s8 \pp
s2.*4
%147-154
\setTextCresc s2. \cr
s4. s4 s8 \!
s2. \ff
s4. s4 s8 \p
s2.*4
%155-160
s4. \cr s4 s8 \!
s4. \decr s4 s8 \!
s2. \p
s2.*3
%161-164
s2. \mf
s2.*3
%165-168
s2. \pp
s2.*3
%169-172
s2. \mf
s2.*3
%173-194
s2. \pp
s2.*21
%195-228
\DYNEXO #'(1.5 . 0) s2. \pp
s2.*33
%229-234
s4. \fz \decr s4 s16 s16 \!
s2.
s2. \p
s4. \cr s4 s16 s16 \!
s4. \fz \decr s4 s16 s16 \!
s2.
%235-239
s2. \p
s4. \cr s4 s16 s16 \!
s4. \fz \decr s4 s16 s16 \!
s4. \p \cr s4 s16 s16 \!
s4. \fz \decr s4 s16 s16 \!
%240-244
s4. \p \cr s4 s16 s16 \!
s2. \fz
s4. \decr s4 s16 s16 \!
s2.*2
%245-250
s8 s4 \pp s4 \cr s8 \!
s4 \decr s8 \! s4.
s2. \pp
s2.
s4. s4 \cr s8 \!
s4 \decr s8 \! s4.
%251-260
s2. \ppp
s2.*9
%261-266
s2. \fp
s2.
\DYNEXO #'(1 . 0) s2. \mf
s2.*3
%267-268
s2. \fp \decr
s8 s8 \! s8 s4.
%269-272
\DYNEXO #'(1 . 0) s2. \ppp
s2.*3
%273-280
\DYNEXO #'(1 . 0) \PINEXO #'(1 . 0) s4. \fp \cr s4 s8 \!
s4 \decr s8 \! s4.
s2.*6
%281-284
s2. \fp
s2.*3
%285-288
s4. \fp \decr s4 s16 s16 \!
s2.*3
%289-294
\DYNEXO #'(1 . 0) s2. \pp
s2.*5
%295-304
\setTextDim s4. \decr s4. \!
s2.*3
\DYNNO s2. \ppp
s2.*4
\DYNNO s2. \ppp
%305-308
s2.*4
%309-315
s4. \setTextCresc s4 \cr s8 \!
s2.
s4. \f \setTextCresc s4 \cr s8 \!
s4. \cr s4 s16 s16 \!
s2. \ff
s2.*2
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. ALTO : DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoDynMidiA = {
 \repeat unfold 2 {                               % LIGNE 1 À 140

%1-4
s2.*4
%5-8
s2. \p \cr
s2.*3
%9-11
s2. \! \ff
s2.
s2. \pp
%12-38
s2.*27
%39
s2. \pp
%40-60
s2.*21
%61-62
s2. \f \decr
s2.
%63
s2. \! \p
s2. \cr
s2. \! \f \decr
s2.
s2. \! \p
%68
s2. \cr
s2. \! \f \decr
s2. \! \p \cr
s2. \! \f \decr
s2. \! \p \cr
%73
s2. \! \f \decr
s2. \! \p \cr
s2. \! \f \decr
s2. \! \p \cr
s8 \! \f s4 \mp s8 \f s4 \mp
s4. s8 \f s4 \mp
%79
s8 s4 \p s4.
s2.
s8 s4 \pp s4.
%82-86
s2.*5
%87-90
s2. \pp
s2.*2
s2. \decr
%91-96
s2.
s2. \! \ppp
s2.*4
%97
s4. \p \decr s4 s8 \! \ppp
s2.
s2. \mf
%100-102
s2.*3
%103-105
s4. \f \decr s4 s8 \! \p
s2.
s2. \ppp
%106-108
s2.*3
%109-112
s2. \mp \decr
s2.
s2. \! \p
s2.
%113-116
s2. \ppp
s2.*3
%117-120
s2. \mp \decr
s2.
s2. \! \p
s2.
%121-124
s2. \decr
s4. s8 s8 \! \pp s8
s2.*2
%125
s4. \cr s4.
s4. \! \p \decr s4.
s4. \pp \cr s4.
s4. \! \p \decr s4.
s2. \! \pp
s2.
%131-140
s2. \ppp
s2.*9
 }                                         % FIN DU REPEAT LIGNE 1 À 140
}

altoDynMidiB = {

%141-146
s2. \ff
s4. s4 s8 \pp
s2.*4
%147-154
s2. \cr
s2.
s2. \! \ff
s4. s4 s8 \p
s2.*4
%155-160
s4. \cr s4.
s4. \! \mf \decr s4.
s2. \! \p
s2.*3
%161-164
s2. \mf
s2.*3
%165-168
s2. \pp
s2.*3
%169-172
s2. \mf
s2.*3
%173-194
s2. \pp
s2.*21
%195-228
s2. \pp
s2.*33
%229-234
s4. \ff \decr s4 s16 s16 \! \pp
s2.
s2. \p
s2. \cr
s4. \! \ff \decr s4 s16 s16 \! \pp
s2.
%235-241
s2. \p
s2. \cr
s2. \! \f \decr
s2. \! \p \cr
s2. \! \f \decr
s2. \! \p \cr
s2. \! \f
%242-244
s2. \decr
s2. \! \p
s2.
%245-250
s4. \pp s4. \cr
s4 \! \mf \decr s8 \! \pp s4.
s2. \pp
s2.
s4. s4. \cr
s4 \! \mf \decr s8 \! \pp s4.
%251-260
s2. \ppp
s2.*9
%261-266
s4. \mf \decr s4 \! \p s8
s2.
s2. \mf
s2.*3
%267-268
s2. \f \decr
s4 \! \mf s8 s4.
%269-272
s2. \ppp
s2.*3
%273-280
s2. \p \cr
s4 \! \f \decr s8 \! \p s4.
s2.*6
%281-284
s4 \f \decr s8 \! \p s4.
s2.*3
%285-288
s2. \f \decr
s2. \! \p
s2.*2
%289-294
s2. \pp
s2.*5
%295-308
s2. \decr
s2.
s2. \! \ppp
s2.*11
%309-315
s4. \p s4 \cr
s2.
s4. \! \f s4. \cr
s2.
s2. \! \ff
s2.*2
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN C. ALTO (VIOLA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. VIOLONCELLE (CELLO)
%                                           D1. VIOLONCELLE: NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

celloNoteA = \relative do {
 \repeat volta 2 {                               % LIGNE 1 À 140

%1
R2.*4
%5
R2.*2
do16[ do si si do do]       sib16[ sib la la sib sib]
lab16[ lab sol sol lab lab] sol16[ sol mib mib do do]
fa4 r8 r4 r8
R2.
%11
sol2.(
sol2.)
do4 r8 r4 r8
R2.
%15
do4 r8 r4 r8
R2.
fa2.(
sol2.)
do,,8[( reb) do-.] do8[( reb) do-.]
%20
do8[( reb) do-.] do8[( reb) do-.]
do'8[( reb) do-.] do8[( reb) do-.]
do8[( reb) do-.] do8[( reb) do-.]
fa2.~
%24
fa2.
mib2.~
mib2.
lab4 r8 r4 r8
R2.
%29
sol4 r8 r4 r8
r4 r8 solb4 r8
fa4 r8 r4 r8
reb4 r8 r4 r8
%33
lab4 r8 r4 r8
r4 r8 la'4.(
sib4) r8 sol4.(
lab!4) r8 fa4.(
mib2.~)
%38
mib4 r8 r4 r8 \clef tenor
lab'2.~(
lab2.
sol2.~
%42
sol4. solb)
fa2.(
reb2.
lab2.
lab'4.) la4.(
%47
sib4. sol
lab!4. fa)
mib2.~
mib2.~
%51
mib2.(
reb4. reb,)
mib2.~
mib4 r8 r4 r8
r8 r4 mib'4.~
%56
mib2.
mib2.(
reb4. reb,)
%59
mib2.~
mib2. \clef bass
lab16[ lab sol sol lab lab] sol16[ sol lab lab sol sol]
lab16[ lab sol sol lab lab] sol16[ sol lab lab sol sol]
%63
lab8-.[ mib-.] r8 mib-.[ dob-.] r8
dob8-.[ lab-.] r8 lab-.[ lab'-.] r8
sib16[ sib la la sib sib] la16[ la sib sib la la]
sib16[ sib la la sib sib] la16[ la sib sib la la]
sib8-.[ solb-.] r8 solb-.[ reb-.] r8
%68
reb8-.[ sib-.] r8 sib-.[ sib'-.] r8
sol,!16[ sol sol' sol fad fad] sol16[ sol fad fad sol sol]
lab8-.[ fab-.] r8 reb-.[ lab-.] r8
sol16[ sol sol' sol fad fad] sol16[ sol fad fad sol sol]
lab8-.[ fab-.] r8 reb-.[ lab-.] r8
%73
sol16[ sol sol' sol fad fad] sol16[ sol fad fad sol sol]
sib8-.[ solb-.] r8 mib-.[ sib-.] r8
la16[ la la' la sold sold] la16[ la sold sold la la]
do8-.[ lab!-.] r8 fa-.[ do-.] r8
sol8 r8 r8 r8 \clef tenor fad''([ sol]
lab[ sol]) r8 r8 fad([ sol]
%79
lab[ sol]) r8 r8 \clef bass fad,,([ sol]
lab^>[ sol]) r8 r8 fad([ sol])
mib2.~
mib2.~
mib2.(
%84
re2.)
mib2.^>~
mib2.~
mib2.~
mib2.(
re2.)
dod2.
%91
re2.~
re2.
sol4 r8 r4 r8
r4 r8 sol8^>([ fad sol])
%95
sol4 r8 r4 r8
r4 r8 sol8^>([ fad sol])
sol2.^>~
sol2.
sol'8([ fad sol] fa[ mi fa]
%100
mi8[ red mi] re4) red8(
mi8[ red mi] re[ dod re]
do!8[ si do] si4) sol''8~
sol2.~
%104
sol2.
sol4.( re
fa!4. do)
fa4.( do
mib!4. sib)
%109
lab!2.(
sol4. lab4 sib8)
do4.( si4 do8
re2.)
%113
sol4 r8 re4 r8
fa!4 r8 do4 r8
fa4 r8 do4 r8
mib!4 r8 sib4 r8
lab!4 r8 r4 r8
%118
\ACCINO sol!4 r8 lab4 sib8
do4 r8 si4 do8
re4 r8 re4 r8
sol,,2.(
lab!4.( do4 mib8)
%123
re2.~
re2.
%125-138
\repeat unfold 14 { sol,8([ fad sol] re'[ dod re]) }
%139-140
sol,8 r8 r8 r4 r8
R2.
 }                                         % FIN DU REPEAT LIGNE 1 À 140
}

celloNoteB = \relative do {

%141
lab!8([ sol lab] mib'[ re mib])
lab,8([ sol lab] mib'[ re mib])
lab,8([ sol lab] mib'[ re mib])
%144
lab,8([ sol lab] mib'[ re mib])
lab,8([ sol lab] mib'[ re mib])
lab,8([ sol lab] mib'[ re mib])
la,8([ sold la] fa'[ mi fa])
%148
la,8([ sold la] fa'[ mi fa])
sib,8([ la sib] fa'[ mi fa])
sib,8([ la sib] fa'[ mi fa])
sib,8([ la sib] fa'[ mi fa])
%152
sib,8([ la sib]   fa'[ mi fa])
lab,!8([ sol lab] lab'![ sol lab])
lab,8([ sol lab]  lab'[ sol lab])
lab,8([ sol lab]  lab'[ sol lab])
%156
lab,8([ sol lab]  lab'[ sol lab])
\repeat tremolo 6 reb,16 reb8 r8 r8
R2.
\repeat tremolo 6 reb16 reb8 r8 r8
%160
R2.
do'4.~( do4 reb8)
reb4._>~( reb4 do8)
do4_>( reb8) do4_>( reb8)
%164
do4_>( reb8) reb4_>( do8)
\repeat tremolo 6 reb,16 reb8 r8 r8
R2.
\repeat tremolo 6 reb16 reb8 r8 r8
R2. \clef tenor
%169
fa'4._>~( fa4 solb8)
solb4._>~( solb4 fa8)
fa4_>( solb8) fa4_>( solb8)
fa4_>( solb8) solb4_>( fa8)
%173
sib,4 r8 r4 r8
R2. \clef bass
fa,4.~( fa4 do'8)
do4.~( do8[ lab! fa])
do4 r8 r4 r8
%178
R2.
sol'4.~( sol4 re'8)
re4.~( re8[ sib! sol])
mib!2.~
%182
mib2.
re4 r8 r4 r8
R2.
mib4.~( mib4 sib'8)
sib4.~( sib8[ sol mib])
%187
re4.( re')
R2.
mib,4.~( mib4 sib'8)
sib4.~( sib8[ sol mib])
%191
re4 r8 r4 r8
R2.*3
sib''4 r8 r4 r8
R2.
%197
la4 r8 r4 r8
r4 r8 lab4.(
sol4) r8 r4 r8
mib4 r8 r4 r8
%201
sib2.(
sib'4) r8 si4.(
do4) r8 la4.(
sib4) r8 sol4 r8
fa2.~
%206
fa4 r8 sib4 r8
mib,2.(
mib'2.)
re2.~(
%210
re4. reb)
do2.(
lab2.)
mib2.(
mib'4.) mi(
%215
fa4.) re4.(
mib!4. do)
sib2.~
sib2.
%219
sib2.(
lab4.) lab,4.(
sib2.)~
sib4 r8 r4 r8
%223
r4 r8 sib'4.
~sib2.
sib2.(
%226
lab4.) lab,4.(
sib2.~)
sib2.
mib16[ mib re re mib mib] re[ re mib mib re re]
%230
mib16[ mib re re mib mib] re[ re mib mib re re]
mib8-.[ sib-.] r8 sib-.[ solb-.] r8
solb8-.[ mib-.] r8 mib-.[ mib'-.] r8
fa16[ fa mi mi fa fa] mi[ mi fa fa mi mi]
fa16[ fa mi mi fa fa] mi[ mi fa fa mi mi]
%235
fa8-.[ reb-.] r8 reb-.[ lab-.] r8
lab8-.[ fa-.] r8 fa-.[ fa'-.] r8
re!16[ re dod dod re re] dod[ dod re re re, re]
fa8-.[ fa'-.] r8 r4 r8
mi16[ mi red red mi mi] red[ red mi mi do! do]
%240
reb8-.[ reb,-.] r8 reb-.[ reb'-.] r8
do16[ do si si do do] si[ si do do si si]
do16[ do si si do do]  si[ si do do si si]
do8([ si do] si[ do si]
do8([ si do] si[ do sol])
lab2.~
%246
lab2.~
lab2.(
sol2.)
lab'2._>~
lab2.~
lab2.~
lab2.
%253
sol,2.(
fad2.)
sol2.~
sol2.
do,4 r8 r4 r8
%258
r4 r8 do'8->([ si do])
do4 r8 r4 r8
r4 r8 do8->([ si do])
do2.~
do2.
do8[( si) do-.] sib[( la) sib-.]
la8[( sold) la-.] sol4( sold8)
la8[( sold) la-.] sol[( fad) sol-.]
%266
fa!8[( mi) fa-.] mi4( do'8)
do2.~
do2.
do'4.( sol
sib!4. fa)
%271
sib4.( fa
lab4. mib)
reb2.(
do4. reb4 mib8)
%275
fa4.^>( mi4 fa8
sol2.)
do4 r8 sol4 r8
sib4 r8 fa4 r8
sib4 r8 fa4 r8
%280
lab4 r8 mib4 r8
reb4 r8 r4 r8
do4^> r8 reb4 mib8
fa4^> r8 mi4 fa8
%284
sol4 r8 sol4 r8
do,,2.(
reb4.) ( fa4 lab8)
sol2.~
sol2.
%289-304
\repeat unfold 14 { do,8([ re do] sol'[ fad sol]) }
do,8([ re do] sol'[ fad sol]
do,8[ re do]  sol'[ fad sol])
%305-308
R2.*4
%309-315
R2.*2
do16[ do si si do do]       sib16[ sib la la sib sib]
lab16[ lab sol sol lab lab] sol16[ sol mib mib do do]
fa4 r8 r4 r8
sol4 r8 r4 r8
do,4 r8 r4 r8
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D2. VIOLONCELLE : DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

celloDynPartA = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%1-6
s2.*6
%7-8
s4 \f \setTextCresc s8 \cr s4.
s2.
%9-11
s2. \! \FFZ
s2.
s2. \pp
%12-38
s2.*27
%39
\DYNEXO #'(1 . 0) s2. \pp
%40-60
s2.*21
%61-62
s2. \fz \decr
s4. s4 s16  s16 \!
%63
s2. \p
s4. \cr s8 s8 \! s8
s2. \fz \decr
s4. s4 s16  s16 \!
s2. \p
%68
s4. \cr s8 s8 \! s8
s4. \fz \decr s4 s16  s16 \!
s4. \cr s8 s8 \! s8
s4. \fz \decr s4 s16  s16 \!
s4. \cr s8 s8 \! s8
%73
s4. \fz \decr s4 s16  s16 \!
s4. \cr s8 s8 \! s8
s4. \fz \decr s4 s16  s16 \!
s4. \cr s8 s8 \! s8
s2. \fz
s2. \fz
%79
s4. \fz s8 s4 \p
s4. s8 s4 \pp
s2.
%82-89
s2.*8
%90
\setTextDim s2. \decr
%91-96
s2. \!
s2.*5
%97-99
s2. \fp
s2.
s2. \mf
%100-102
s2.*3
%103-105
s4. \fp \decr s4 s8 \!
s2.
\DYNEXO #'(2 . 0) s2. \ppp
%106-108
s2.*3
%109-112
\DYNEXO #'(0.5 . 0) s2. \fp \decr
s16 s16 \! s4 s4.
s2.
s2.
%113-116
s2. ^\PIZZICATO
s2.*3
%117-120
\DYNEXO #'(0.5 . 0) s4. \fp \decr s4 s8 \!
s2.
s2. \p
s2.
%121-124
s2. ^\ARCO \decr
s4. s8 s8 \! s8
s2.*2
%125-130
s2.*6
%131-140
\DYNEXO #'(2 . 0) s2. \ppp
s2.*9
}

celloDynPartB = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%141-146
s2. \ff
s2. \p
s2.*4
%147-154
\setTextCresc s2. \cr
s4. s4 s8 \!
s2. \ff
s2. \p
s2.*4
%155-160
s2.*2
s2. \p
s2.*3
%161-164
s2. \mf
s2.*3
%165-168
s2. \pp
s2.*3
%169-172
s2. \mf
s2.*3
%173-194
s2.*22
%195-228
\DYNEXO #'(0.5 . 0) s2. \p
s2.*33
%229-234
s4. \fz \decr s4 s16 s16 \!
s2.
s2. \p
s4. \cr s8 s8 \! s8
s4. \fz \decr s4 s16 s16 \!
s2.
%235-239
s2. \p
s4. \cr s4 s16 s16 \!
s4. \fz \decr s4 s16 s16 \!
s2. \p
s4. \fz \decr s4 s16 s16 \!
%240-244
s2. \p
s2. \fz
s4. \decr s4 s16 s16 \!
s2. \p
\DECRESC s4. \decr s4. \!
%245-250
\DYNEXO #'(1 . 0) s2. \pp
s2.*5
%251-260
s2. \ppp
s2.*9
%261-266
s2. \fp
s2.
\DYNEXO #'(1 . 0) s2. \mf
s2.*3
%267-268
s2. \fp \decr
s8 s8 \! s8 s4.
%269-272
\DYNEXO #'(1 . 0) s2. \ppp
s2.*3
%273-280
\DYNEXO #'(1 . 0) \PINEXO #'(1 . 0) s4. \fp \cr s4 s8 \!
s4 \decr s8 \! s4.
s2.*2
s2. ^\PIZZICATO
s2.*3
%281-284
s2. \fp
s2.*3
%285-288
s4. ^\ARCO \fp \decr s4 s16 s16 \!
s2.*3
%289-304
\DYNEXO #'(1 . 0) s2. \pp
s2.*15
%305-308
s2.*4
%309-315
s2.*2
s4. \f \setTextCresc s4 \cr s8 \!
s4. \cr s4 s16 s16 \!
s2. \ff
s2.*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D3. VIOLONCELLE : DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

celloDynMidiA = {
 \repeat unfold 2 {                               % LIGNE 1 À 140

%1-6
s2.*6
%7-8
s4 \f s8 \cr s4.
s2.
%9-11
s2. \! \ff
s2.
s2. \pp
%12-38
s2.*27
%39
s2. \pp
%40-60
s2.*21
%61-62
s2. \f \decr
s2.
%63
s2. \! \p
s2. \cr
s2. \! \f \decr
s2.
s2. \! \p
%68
s2. \cr
s2. \! \f \decr
s2. \! \p \cr
s2. \! \f \decr
s2. \! \p \cr
%73
s2. \! \f \decr
s2. \! \p \cr
s2. \! \f \decr
s2. \! \p \cr
s4. \f s4. \mp
s4. \f s4. \mp
%79
s8 \f s4 s8 s4 \p
s2.
s4. s8 s4 \pp
%82-86
s2.*5
%87-90
s2. \pp
s2.*2
s2. \decr
%91-96
s2.
s2. \! \ppp
s2.*4
%97
s4. \p \decr s4 s8 \! \ppp
s2.
s2. \mf
%100-102
s2.*3
%103-105
s4. \f \decr s4 s8 \! \p
s2.
s2. \ppp
%106-108
s2.*3
%109-112
s2. \mp \decr
s2.
s2. \! \p
s2.
%113-116
\PIZZICELLO s2.
s2.*3
%117-120
s2. \mp \decr
s2.
s2. \! \p
s2.
%121-124
\CELLO s2. \decr
s4. s8 s8 \! \pp s8
s2.*2
%125-130
s2.*6
%131-140
s2. \ppp
s2.*9
 }                                         % FIN DU REPEAT LIGNE 1 À 140
}

celloDynMidiB = {

%141-146
s2. \ff
s2. \p
s2.*4
%147-154
s2. \cr
s2.
s2. \! \ff
s2. \p
s2.*4
%155-160
s2.*2
s2. \p
s2.*3
%161-164
s2. \mf
s2.*3
%165-168
s2. \pp
s2.*3
%169-172
s2. \mf
s2.*3
%173-194
s2.*22
%195-228
s2. \p
s2.*33
%229-234
s4. \ff \decr s4 s16 s16 \! \pp
s2.
s2. \p
s2. \cr
s4. \! \ff \decr s4 s16 s16 \! \pp
s2.
%235-241
s2. \p
s2. \cr
s2. \! \f \decr
s2. \! \p
s2. \f \decr
s2. \! \p
s2. \f
%242-244
s2. \decr
s2. \! \p
s2. \decr
%245-250
s2. \! \pp
s2.*5
%251-260
s2. \ppp
s2.*9
%261-266
s4. \mf \decr s4 \! \p s8
s2.
s2. \mf
s2.*3
%267-268
s2. \f \decr
s4 \! \mf s8 s4.
%269-272
s2. \ppp
s2.*3
%273-280
s2. \p \cr
s4 \! \f \decr s8 \! \p s4.
s2.*2
\PIZZICELLO s2.
s2.*3
%281-284
s4 \f \decr s8 \! \p s4.
s2.*3
%285-288
\CELLO s2. \f \decr
s2. \! \p
s2.*2
%289-294
s2. \pp
s2.*5
%295-308
s2. \decr
s2.
s2. \! \ppp
s2.*11
%309-315
s2.*2
s4. \f s4. \cr
s2.
s2. \! \ff
s2.*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN D. VIOLONCELLE (CELLO)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ DES NOTES POUR LA PARTITION

violonINotePart = {
 \clef treble
 \KEYTIME
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Violin I "
 \violonINoteA \violonINoteBa \trillePartBa \violonINoteBb \trillePartBb \violonINoteBc
}

violonIINotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Violin II "
 \violonIINoteA \violonIINoteB
}

altoNotePart = {
 \clef alto
 \KEYTIME
 \set autoBeaming = ##f
 \override Stem #'neutral-direction = #up
 \set Staff.instrumentName = "Viola "
 \altoNoteA \altoNoteB
}

celloNotePart = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \override Stem #'neutral-direction = #up
 \set Staff.instrumentName = "Cello "
 \celloNoteA \celloNoteB
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ DES DYNAMIQUES POUR LA PARTITION
violonIDynPart  = { \violonIDynPartA  \violonIDynPartB }
violonIIDynPart = { \violonIIDynPartA \violonIIDynPartB }
altoDynPart     = { \altoDynPartA     \altoDynPartB }
celloDynPart    = { \celloDynPartA    \celloDynPartB }


\score {
 \new StaffGroup
  <<
   \new Staff = "violonI"  << \violonINotePart  \violonIDynPart >>
   \new Staff = "violonII" << \violonIINotePart \violonIIDynPart >>
   \new Staff = "alto"     << \altoNotePart     \altoDynPart >>
   \new Staff = "cello"    << \celloNotePart    \celloDynPart >>
  >>
 \layout { }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           F. SORTIE MIDI (pas de \layout)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% RÉSUMÉ DES NOTES POUR LE MIDI

violonINoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "violin"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
 \unfoldRepeats { \violonINoteA \violonINoteBa \trilleMidiBa \violonINoteBb \trilleMidiBb \violonINoteBc }
}

violonIINoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "violin"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
 \unfoldRepeats { \violonIINoteA \violonIINoteB }
}

altoNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "viola"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
 \unfoldRepeats { \altoNoteA \altoNoteB }
}

celloNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "cello"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
 \unfoldRepeats { \celloNoteA \celloNoteB }
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ DES DYNAMIQUES POUR LE MIDI
violonIDynMidi  = { \violonIDynMidiA  \violonIDynMidiB }
violonIIDynMidi = { \violonIIDynMidiA \violonIIDynMidiB }
altoDynMidi     = { \altoDynMidiA     \altoDynMidiB }
celloDynMidi    = { \celloDynMidiA    \celloDynMidiB }

%%%%%%%%%%%%%%%%%%%% REDÉFINITION DES VOLUMES RESPECTIFS ATTRIBUÉS AUX DYNAMIQUES 
% volumes par défaut (LilyPond\usr\share\lilypond\current\scm\midi.scm):
% sf    1.00     ff  0.80     mp   0.61     ppp    0.42     fp: 0.50
% ffff  0.92     f   0.75     p    0.55     pppp   0.34
% fff   0.85     mf  0.68     pp   0.49     ppppp  0.25

#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist (append '(
 ("sf" .    1.00)
 ("ffff" .  1.00)
 ("fff" .   0.90)
 ("ff" .    0.80)
 ("f" .     0.68)
 ("mf" .    0.52)
 ("mp" .    0.48)
 ("p" .     0.40)
 ("pp" .    0.32)
 ("ppp" .   0.24)
 ("pppp" .  0.16)
 ("ppppp" . 0.12)
 )
 my-absolute-volume-alist))

% DANS LE BLOC MIDI, CHAQUE DYNAMIQUE RENCONTRÉE PRENDRA LE NOUVEAU VOLUME SPÉCIFIÉ
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \KEYTIME s2. }

\score {
 <<
  \new Staff = "violonI"  { \SILENCE << \violonINoteMidi  \violonIDynMidi  >> }
  \new Staff = "violonII" { \SILENCE << \violonIINoteMidi \violonIIDynMidi >> }
  \new Staff = "alto"     { \SILENCE << \altoNoteMidi     \altoDynMidi     >> }
  \new Staff = "cello"    { \SILENCE << \celloNoteMidi    \celloDynMidi    >> }
 >>
 \midi {
  \context {
   \Score
% CHANGEMENT DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
   tempoWholesPerMinute = #(ly:make-moment 140 4)
  }
 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D703-Quartettsatz.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
