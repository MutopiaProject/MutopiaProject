%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D899-2-Impromptu.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                      FRANZ SCHUBERT: "Impromptu in Es-dur", für Klavier
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.57"
\include "italiano.ly"

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")

line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Impromptu in Es-dur (D.899-2)  ♫" }  \fromproperty #'page:page-number-string }
evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Impromptu in Es-dur (D.899-2)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}


\header {
 title = \markup \center-column { \fontsize #1.5 "Impromptu in Es-dur" " " }
 subtitle = \markup { \fontsize #2.5 "D.899-2 (Opus 90 No 2.)" }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.899 (Op. 90 No2., 1827)" }
% MUTOPIA
 mutopiatitle = "Impromptu in Es-dur"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.899 (Op. 90, No. 2)"
 mutopiainstrument = "Piano"
 date = "1827"
 source = "Breitkopf & Härtel, 1888"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1551"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%
%  La partition a été divisée en quatre parties en raison des reprises, qui sont gérées manuellement (Midi oblige)
%  - Première partie  A: seulement un \partial 4
%  - Deuxième partie  B: reprise à l'identique. Cette partie est rejouée après la partie C (deux petites différences 
%      de dynamiques)
%  - Troisième partie C: reprise à l'identique.
%  - Quatrième partie D: Coda
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. NOTES: A1. PIANO HAUT: VOIX 1, 2  A2. PIANO BAS: VOIX 1, 2, 3
%  B. DYNAMIQUES PARTITION: B1. COMMUNES avec quelques variations  B2. PIANO HAUT  B3. PIANO BAS
%  C. DYNAMIQUES MIDI: COMMUNES avec quelques variations 
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- INSTRUMENTS
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOBAS = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.7
}
%----- TONALITE ET MESURE
KEYA = { \key mib \major }
KEYB = { \key re \major }
TIME = { \time 3/4 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large  { \hspace #-5 \italic "Allegro." } }

%----- CACHER LE NOMBRE OU LE CROCHET D'UN NOLET
TUPNNO = \override TupletNumber #'transparent = ##t
TUPBNO = \override TupletBracket #'transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
%----- CHANGER DE PORTÉE
STAFFDO = { \change Staff = down \voiceOne}
STAFFUP = { \change Staff = up \voiceThree }
%----- HAMPE SUR DEUX PORTÉES
STEMCR = {
 \once \override Stem #'length = #18
 \once \override Stem #'cross-staff = ##t
 \once \override Stem #'flag-style = #'no-flag }
%----- OCTAVES: DEBUT ET FIN
OCTAVEBEG = { #(set-octavation 1) \set Staff.ottavation = #"8" }
OCTAVEEND = #(set-octavation 0)
%----- MARKUP
CODA       = \markup { \bold \large "Coda" }
BENMARCATO = \markup { \bold \large \italic "ben marcato" }
%----- MARKUP SUR DASHED-LINE
LEGATO =   { \set crescendoText   = \markup { \bold \italic "legato" }    \set crescendoSpanner = #'dashed-line }
%----- CRESCENDOS
CRESC     = { \set crescendoText   = \markup { \bold \italic "cresc." }   \set crescendoSpanner = #'dashed-line }
DECRESC   = { \set decrescendoText = \markup { \bold \italic "decresc." } \set decrescendoSpanner = #'dashed-line }
DIMIN     = \markup { \bold \italic "dimin." }
CREScendo = { \set crescendoText   = \markup { \bold \italic "cres  " }   \set crescendoSpanner = #'dashed-line }
cresCENdo = { \set crescendoText   = \markup { \bold \italic "cen  " }    \set crescendoSpanner = #'dashed-line }
crescenDO = { \set crescendoText   = \markup { \bold \italic "do  " }     \set crescendoSpanner = #'dashed-line }
%----- ACCELERANDO
ACCElerando = { \set crescendoText   = \markup { \bold \italic "acce  " }   \set crescendoSpanner = #'dashed-line }
acceLErando = { \set crescendoText   = \markup { \bold \italic "le  " }     \set crescendoSpanner = #'dashed-line }
acceleRANdo = { \set crescendoText   = \markup { \bold \italic "ran  " }    \set crescendoSpanner = #'dashed-line }
acceleranDO = { \set crescendoText   = \markup { \bold \italic "do  " }     \set crescendoSpanner = #'dashed-line }
%----- SUPPRESSION ET RETABLISSEMENT DU "dash"
DTSDASHNO = \override DynamicTextSpanner #'dash-period = #-1
DTSDASHOK = \override DynamicTextSpanner #'dash-period = #2.0
%----- DYNAMIQUE SPECIALE
FFZ = #(make-dynamic-script "ffz")
%----- DEPLACER UNE DYNAMIQUE OU MODIFIER SON LIBELLE
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A1. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A11. NOTES PIANO HAUT:  VOIX 1 ou 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A: PARTIAL 4
hautAA = \relative do'' { \voiceOne
%--- 0
\partial 4 s4
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
hautAB = \relative do'' { \voiceOne
%--- 1
s2.*25
%--- 26
s4 dob2
s2.
s4 sib2
s2.
s4 lab2
%--- 31
s2.
s4 solb2
s4 dob2
dob4( sib re)
s2.
%--- 36
s2.
s4 dob2^>
s2.
s4 dob2^>
s4 reb2^>
%--- 41-50
s4 mib2^>
s2.*9
%--- 51-60
s2.*10
%--- 61-82
s2.*22
}

%%%%%%%%%%%%%%%%%%%% PARTIE C
hautAC = \relative do' { \voiceTwo
\KEYB
%--- 83
\TUPNO r4 \times 2/3 { si8[ re fad] } si,4
r4 \times 2/3 { si8[ dod sol'] } si,4
r8 <re fad> r <mi fad> r <re fad>
%--- 86
r4 \times 2/3 { dod8[ fad lad] } dod,4
r4 \times 2/3 { fad8[ lad dod] } fad,4
r4 \times 2/3 { re8[ fad si] } re,4
si'8[ mi, si' mi, si' mi,]
r4 \times 2/3 { re8[ fad si] } re,8 r
%--- 91
r4 \times 2/3 { si8[ re fad] } si,8 r
r4 \times 2/3 { si8[ dod sol'] } si,8 r
r8 <re fad> r <mi fad> r <re fad>
r4 \times 2/3 { dod8[ fad lad] } dod,4
r4 \times 2/3 { fad8[ lad dod] } fad,4
%--- 96
r4 \times 2/3 { re8[ fad si] } re,4
r8 <fad sold> r <fad sold> r <fad sold>
r4 \times 2/3 { dod8[ mid sold] } dod,4
r4 \times 2/3 { la8[ dod fad] } la,4
r4 \times 2/3 { sol!8[ si re] } sol,4
%--- 101
dod8[ sold dod sold dod sold]
s2.*4
%--- 106
s2.*5
%--- 111
r4 \times 2/3 { dod8[ mid sold] } dod,4
r4 \times 2/3 { lad8[ dod sol'!] } lad,4
r8 <re fad> r <mi fad> r <re fad>
r4 \times 2/3 { dod8[ fad lad] } dod,4
r4 \times 2/3 { fad8[ lad dod] } fad,4
%--- 116
r4 \times 2/3 { red8[ fad do'] } red,4
r8 <sol si> r <la si> r <sol si>
r4 \times 2/3 { fad8[ si re!] } fad,4
r8 <fad sold> r <fad sold> r <fad sold> 
r4 \times 2/3 { dod8[ mid sold] } dod,4
%--- 121
r8 <dod red> r <dod red> r <dod red> 
r4 \times 2/3 { sold8[ sid red] } sold,4
s2.*3
%--- 126
s2.
r4 \times 2/3 { si8[ re fad] } si,4
r4 \times 2/3 { si8[ dod sol'] } si,4
r8 <re fad> r <mi fad> r <re fad>
r4 \times 2/3 { dod8[ fad lad] } dod,4
%--- 131
r4 \times 2/3 { fad8[ lad dod] } fad,4
r4 \times 2/3 { re8[ fad si] } re,4
si'8[ mi, si' mi, si' mi,]
r4 \times 2/3 { re8[ fad si] } re,4
r4 \times 2/3 { mi8[ sol si] } mi,4
%--- 136
r4 \times 2/3 { mi8[ fad do'] } mi,4
r8 <sol si> r <la si> r <sol si>
r4 \times 2/3 { fad8[ si red] } fad,4
r4 \times 2/3 { si8[ red fad] } si,4
r4 \times 2/3 { sol8[ si mi] } sol,4
%--- 141
r8 <si dod> r <si dod> r <si dod>
r4 \times 2/3 { fad8[ lad dod] } fad,4
r4 \times 2/3 { re8[ fad si] } re,4
r4 \times 2/3 { do8[ mi sol] } do,4
fad8[ dod! fad dod fad dod]
%--- 146
r4 \times 2/3 { si8[ re fad] } si,4
r4 \times 2/3 { si8[ mi sol] } si,4
r4 \times 2/3 { si8[ re fad] } si,4
\times 2/3 { dod8[ re mi] } \times 2/3 { fad[ sol fad] } \times 2/3 { mi[ re dod] } 
r4 \times 2/3 { si8[ re fad] } si,4
%--- 151
r4 \times 2/3 { si8[ mi sol] } si,4
r4 \times 2/3 { si8[ re fad] } si,4
\times 2/3 { dod8[ re mi] } \times 2/3 { fad[ sol fad] } \times 2/3 { mi[ re dod] } 
r4 \times 2/3 { si8[ re fad] } si,4
r4 \times 2/3 { si8[ re fad] } si,4
%--- 156
r4 \times 2/3 { si8[ re fad] } si,4
s2.*2
r4 \times 2/3 { sib8[ mib solb] } sib,4
r4 \times 2/3 { sib8[ mib solb] } sib,4
%--- 161-168
s2.*8  \KEYA
}

%%%%%%%%%%%%%%%%%%%% PARTIE D: CODA
hautAD = \relative do' { \voiceTwo
%--- 251
r4^\CODA \times 2/3 { si8[ re fad] } si,4
r4 \times 2/3 { si8[ dod sol'] } si,4
r8 <re fad> r <mi fad> r <re fad>
r4 \times 2/3 { dod8[ fad lad] } dod,4
r4 \times 2/3 { re8[ fa! sib!] } re,4
%--- 256
r4 \times 2/3 { mib8[ solb sib] } mib,4
s2.
r4 \times 2/3 { mib8[ solb sib] } mib,4
r4 \times 2/3 { si'8[ re fad] } si,4
r4 \times 2/3 { si8[ dod sol'] } si,4
%--- 261
r8 <re fad> r <mi fad> r <re fad>
r4 \times 2/3 { dod8[ fad lad] } dod,4
r4 \times 2/3 { re8[ fa! sib!] } re,4
r4 \times 2/3 { mib!8[ solb sib] } mib,4
s2.
%--- 266
r4 \times 2/3 { mib8[ solb sib] } mib,4 \OCTAVEBEG
r4 \times 2/3 { sib'8[ fa' lab] } sib,4
r4 \times 2/3 { sib8[ mib solb] } sib,4
s2.
r4 \times 2/3 { mib,8[ solb sib] } mib,4
%--- 271
r4 \times 2/3 { sib'8[ fa' lab] } sib,4
r4 \times 2/3 { sib8[ mib solb] } sib,4
s2.
r4 \times 2/3 { mib,8[ solb sib] } mib,4
s2.
%--- 276
s2. \OCTAVEEND
s2.*4
%--- 281-283
s2.*3
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PIANO HAUT A
hautA = \context Staff \new Voice { \voiceOne \hautAA \hautAB \hautAC \hautAB \hautAD }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A12. NOTES PIANO HAUT:  VOIX 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A: PARTIAL 4
hautBA = \relative do''' { \voiceThree
%--- 0
\oneVoice
\partial 4 sib4
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
hautBB = \relative do''' { \voiceThree
%--- 1
\oneVoice \tupletUp
\times 2/3 { sol8[ sib lab] } \times 2/3 { sol[ fa mib] }  \times 2/3 { re[ do sib] }  \TUPNO
\times 2/3 { lab[ sol fa] }   \times 2/3 { mib[ re do] }   \times 2/3 { sib[ do re] } 
\times 2/3 { mib[ re mib] }   \times 2/3 { mi[ red mi] }   \times 2/3 { fa[ mi fa] } 
\times 2/3 { fad[ mid fad] }  \times 2/3 { sol[ fad sol] } \times 2/3 { lab[ sol lab] } 
\times 2/3 { sol[ sib lab] }  \times 2/3 { sol[ lab sib] } \times 2/3 { do[ re mib] } 
%--- 6
\times 2/3 { fa[ do' sib] }  \times 2/3 { lab[ sol fa] } \times 2/3 { mib[ re do] } 
\times 2/3 { sib[ fa' mib] } \times 2/3 { re[ do sib] }  \times 2/3 { lab[ sol fa] } 
\times 2/3 { mib[ fa sol] }  \times 2/3 { lab[ sib do] } \times 2/3 { re[ mib fa] } 
\times 2/3 { sol[ sib lab] } \times 2/3 { sol[ fa mib] } \times 2/3 { re[ do sib] } 
\times 2/3 { lab[ sol fa] }  \times 2/3 { mib[ re do] }  \times 2/3 { sib[ do re] } 
%--- 11
\times 2/3 { mib[ re mib] }  \times 2/3 { mi[ red mi] }   \times 2/3 { fa[ mi fa] } 
\times 2/3 { fad[ mid fad] } \times 2/3 { sol[ fad sol] } \times 2/3 { lab[ sol lab] } 
\times 2/3 { sol[ sib lab] } \times 2/3 { sol[ lab sib] } \times 2/3 { do[ re mib] } 
\times 2/3 { fa[ do' sib] }  \times 2/3 { lab[ sol fa] }  \times 2/3 { mib[ re do] } 
\times 2/3 { re[ fa mib] }   \times 2/3 { re[ mib fa] }   \times 2/3 { sol[ lab sib] } 
%--- 16
\times 2/3 { mib,[ fa sol] } \times 2/3 { lab[ sib do] }  \times 2/3 { re[ mib fa] } 
\times 2/3 { sol[ sib lab]}  \times 2/3 { sol[fa mib] }   \times 2/3 { re[do sib] } 
\times 2/3 { lab[ sol fa]}   \times 2/3 { mib[ re do] }   \times 2/3 { sib[ do re] } 
\times 2/3 { mib[ re mib] }  \times 2/3 { mi[ red mi] }   \times 2/3 { fa[ mi fa] } 
\times 2/3 { fad[ mid fad] } \times 2/3 { sol[ fad sol] } \times 2/3 { lab[ sol lab] } 
%--- 21
\times 2/3 { sol[ sib lab] }  \times 2/3 { sol[ lab sib] } \times 2/3 { do[ re mib] }
\times 2/3 { fa[ do' sib] }   \times 2/3 { lab[ sol fa] }  \times 2/3 { mib[ re do] } 
\times 2/3 { sib[ fa' mib] }  \times 2/3 { re[ do sib] }   \times 2/3 { lab[ sol fa] } 
\times 2/3 { mib[ sol fa] }   \times 2/3 { mib[ re do] }   \times 2/3 { sib[ lab fa] } 
\times 2/3 { solb[ sib lab] } \times 2/3 { solb[ fa mib] } \times 2/3 { reb[ dob sib] } 
%--- 26
\voiceThree
\times 2/3 { dob8[ mib lab] } \stemDown \times 2/3 { dob[ mib, lab] }  \times 2/3 { solb[ mib solb] }
\stemUp \times 2/3 { fa[ dob' sib] }  \times 2/3 { lab[ solb fa ] }  \times 2/3 { mib[ reb dob] } 
\times 2/3 { sib[ reb solb] } \stemDown \times 2/3 { sib[ reb, solb] } \times 2/3 { fa[ reb fa] } 
\stemUp \times 2/3 { mib[ sib' lab] } \times 2/3 { solb[ fa mib] }   \times 2/3 { reb[ dob sib ] } 
\times 2/3 { lab[ dob fa] } \stemDown  \times 2/3 { lab[ dob, fa] }   \times 2/3 { mib[ dob mib] } 
%--- 31
\stemUp \times 2/3 { re![ lab' solb] } \times 2/3 { fa[ mib re] }     \times 2/3 { dob[ sib lab] } 
\times 2/3 { solb[ sib mib] } \stemDown \times 2/3 { solb[ sib, mib] } \times 2/3 { reb_>[ sib reb] } 
\stemUp \times 2/3 { dob8[ mib lab] } \stemDown \times 2/3 { dob[ mib, lab] } \times 2/3 { solb_>[ mib solb] }
\times 2/3 { dob[ fa, re] }   \times 2/3 { sib'[ fa re] }   \times 2/3 { re'[ lab fa] } 
\oneVoice
\times 2/3 { mib'[ solb fa] }  \voiceThree \stemDown \times 2/3 { mib[ reb dob] }   \times 2/3 { sib[ lab fa] } 
%--- 36
\stemNeutral \times 2/3 { solb8[ sib lab] } \times 2/3 { solb[ fa mib] }   \times 2/3 { reb[ dob sib] } 
\times 2/3 { dob[ mibb fa] } \stemDown \times 2/3 { dob'[ fa, mibb] } \times 2/3 { fa[ reb dob] } 
\stemNeutral \times 2/3 { sib[ sib' lab] }  \times 2/3 { solb[ fa mib] }  \times 2/3 { reb[ dob sib] } 
\times 2/3 { dob[ mibb fa] } \stemDown \times 2/3 { dob'[ fa, mibb] } \times 2/3 { fa[ reb dob] } 
\stemUp \times 2/3 { reb[ solb sib] } \stemDown \times 2/3 { reb[ sib solb] } \times 2/3 { fa[ solb fab] } 
%--- 41
\stemUp \times 2/3 { mib[ lab dob] } \stemDown \times 2/3 { mib[ dob lab] } \times 2/3 { sol![ lab solb] } 
\oneVoice
\times 2/3 { fa[ solb sol] }  \times 2/3 { lab[ sib dob] } \times 2/3 { reb[ mib fa] } 
\times 2/3 { solb[ sib lab] } \times 2/3 { solb[ fa mib] } \times 2/3 { reb[ dob sib] } 
\times 2/3 { lab[ dob sib] }  \times 2/3 { lab[ solb fa] } \times 2/3 { mib^>[ re! fa] } 
\times 2/3 { lab[ dob sib] }  \times 2/3 { lab[ solb fa] } \times 2/3 { mib^>[ re fa] } 
%--- 46
\times 2/3 { lab[ dob sib] } \times 2/3 { lab[ solb fa] } \times 2/3 { mib^>[ re fa] } 
\times 2/3 { lab[ dob re] }  \times 2/3 { dob[ re fa] } \times 2/3 { re[ fa solb] } 
\times 2/3 { lab[ dob sib] } \times 2/3 { lab[ solb fa] } \times 2/3 { mib^>[ re fa] } 
\times 2/3 { lab[ dob sib] } \times 2/3 { lab[ solb fa] } \times 2/3 { mib^>[ re fa] } 
\times 2/3 { lab[ dob lab] } \times 2/3 { dob[ lab dob] } \times 2/3 { lab[ dob lab] } 
%--- 51
\times 2/3 { sib[ lab sib] }  \times 2/3 { lab[ sib lab] } \times 2/3 { sib[ lab sib] } 
\times 2/3 { sol![ sib lab] } \times 2/3 { sol[ fa mib] }  \times 2/3 { re[ do sib] } 
\times 2/3 { lab[ sol fa] }   \times 2/3 { mib[ re do] }   \times 2/3 { sib[ do re] } 
\times 2/3 { mib[ re mib] }   \times 2/3 { mi[ red mi] }   \times 2/3 { fa[ mi fa] } 
\times 2/3 { fad[ mid fad] }  \times 2/3 { sol[ fad sol] } \times 2/3 { lab[ sol lab] } 
%--- 56
\times 2/3 { sol[ sib lab] } \times 2/3 { sol[ lab sib] } \times 2/3 { do[ re mib] } 
\times 2/3 { fa[ do' sib] }  \times 2/3 { lab[ sol fa] }  \times 2/3 { mib[ re do] } 
\times 2/3 { re[ fa mib] }   \times 2/3 { re[ mib fa] }   \times 2/3 { sol[ lab sib] } 
\times 2/3 { mib,[ fa sol] } \times 2/3 { lab[ sib do] }  \times 2/3 { re[ mib fa] } 
\times 2/3 { sol[ sib lab]}  \times 2/3 { sol[fa mib] }   \times 2/3 { re[do sib] } 
%--- 61
\times 2/3 { lab[ sol fa]}   \times 2/3 { mib[ re do] }   \times 2/3 { sib[ do re] } 
\times 2/3 { mib[ re mib] }  \times 2/3 { mi[ red mi] }   \times 2/3 { fa[ mi fa] } 
\times 2/3 { fad[ mid fad] } \times 2/3 { sol[ fad sol] } \times 2/3 { lab[ sol lab] } 
\times 2/3 { sol[ fad sol] } \times 2/3 { lab[ sol lab] } \times 2/3 { sib[ lab sib] }
\times 2/3 { lab[ sol lab] } \times 2/3 { sib[ lab sib] } \times 2/3 { do[ si do] }
%--- 66
\times 2/3 { re[ dod re] }   \times 2/3 { mi[ re mi] }   \times 2/3 { fad[ mi fad] }
\times 2/3 { sol[ fad sol] } \times 2/3 { la[ sol la] }  \times 2/3 { si[ la si] } \OCTAVEBEG
\times 2/3 { do[ si do] }    \times 2/3 { re[ do re] }   \times 2/3 { mi[ re mi] }
\times 2/3 { fa[ mib! reb] } \times 2/3 { do[ sib lab] } \times 2/3 { sol[ fa mib] } \OCTAVEEND
\times 2/3 { re[ do sib] }   \times 2/3 { la[ sib do] }  \times 2/3 { re[ mib fa] }
%--- 71
\times 2/3 { solb[ sib lab] }  \times 2/3 { solb[ fa mib] }  \times 2/3 { reb[ dob sib] }
\times 2/3 { dob[ mib reb] }   \times 2/3 { dob[ sib lab] }  \times 2/3 { solb[ fa mib] }
\times 2/3 { re![ fa mib] }    \times 2/3 { re[ dob sib] }   \times 2/3 { lab[ solb fa] }
\times 2/3 { solb'[ sib lab] } \times 2/3 { solb[ fa mib] }  \times 2/3 { reb[ dob sib] }
\times 2/3 { dob[ mib reb] }   \times 2/3 { dob[ sib lab] }  \times 2/3 { solb[ fa mib] }
%--- 76
\times 2/3 { re![ fa mib] }  \times 2/3 { re[ \STAFFDO dob sib] } \times 2/3 { lab8 solb fa }
\times 2/3 { mib[ fa solb] } \times 2/3 { lab[ dob sib] } \times 2/3 { lab[ solb fa] } 
\times 2/3 { mib[ fa solb] } \times 2/3 { lab[ dob sib] } \times 2/3 { lab[ solb fa] } 
\times 2/3 { mib[ fa solb] } \times 2/3 { lab[ dob sib] } \times 2/3 { lab[ solb fa] } 
\times 2/3 { mib[ fa solb] } \times 2/3 { lab[ sib do!] } \STAFFUP \times 2/3 { re!8[ mib fa] }
%--- 81-82
solb2 r4
<sib, reb solb sib>2^> r4

\bar "||"
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
hautBC = \relative do'' { \voiceThree
\KEYB

%--- 83
si!2.^\BENMARCATO  si  si4( dod re)
%--- 86
dod2.^>  fad^>  re^>  dod4 mi dod  re2.^>
%--- 91
si2.^>  si^>  si4 dod re  dod2.  fad^>   
%--- 96
re2.^>  si4 re si  dod2.^> la^>  sol!^>
%--- 101
mid4 sold mid  fad2.  fad^>  fad  mid
%--- 106
fad2.  fad^>  fad  mid  fad
%--- 111
dod'2.  lad^>  si4 dod re  dod2.  fad
%--- 116
red2.^>  mi4 fad sol  fad2.  re4 dod si  dod2.
%--- 121
la4 sold fad  sold2.  mid_(  fad)  s2.
%--- 126
s2.  si2.  si  si4 dod re  dod2.   
%--- 131
fad2.  re2.  dod4 mi dod  re2.  mi^>
%--- 136
mi2.^>  mi4 fad sol  fad2. si^>  sol^>
%--- 141
mi4 sol mi  fad2.^>  re(  do)  lad4 dod! lad
%--- 146
si2.  si^>  si^>  lad  si
%--- 151
si2.  si  lad  si  si^>
%--- 156
si2.^> 
\times 2/3 { re,8_>[ fad si] } si,4 \times 2/3 { re8_>[ fad si] } 
si,4 \times 2/3 { re8_>[ fad si] } si,4
sib'2.^>
sib2.^>
%--- 161
\oneVoice \times 2/3 { mib,8[ solb sib] } sib,4 \times 2/3 { mib8[ solb sib] }
sib,4 \times 2/3 { mib8[ solb sib] } sib,4
<mib mib'>2 <mib' mib'>4 ~
<mib mib'>4 <dob dob'>2
\times 2/3 { lab'8[ dob lab] } \times 2/3 { dob[ lab dob] } \times 2/3 { lab[ dob lab] } 
%--- 166-168
\times 2/3 { dob8[ lab? dob] } \times 2/3 { lab[ dob lab] } \times 2/3 { dob[ lab dob] } 
\times 2/3 { lab[ sib lab] }  \times 2/3 { sib[ lab sib] } \times 2/3 { lab[ sib lab] }
\times 2/3 { sib[ lab sib] }  \times 2/3 { lab[ sib lab] } \times 2/3 { sib[ lab sib] } 

\bar "||" \KEYA
}


%%%%%%%%%%%%%%%%%%%% PARTIE D: CODA
hautBD = \relative do'' { \voiceThree
%--- 251
si2.^>
si2.^>
si4 dod re
dod2.
re2.^>
%--- 256
mib!2.^>
\oneVoice fa,8[ fa' solb, solb' fa, fa'] \voiceThree
mib2.
si'!2.^>
si2.
%--- 261
si4 dod re
dod2.
re2.^>
mib!2.^>
\oneVoice <fa, sib re>8[ fa' <solb, sib re> solb' <fa, sib re> fa'] \voiceThree
%--- 266
mib2. \OCTAVEBEG
sib'2.^>
sib2.^>
\oneVoice <lab, fa'>8[ lab' <solb, mib'> solb' <fa, re'> fa'] \voiceThree
mib2.
%--- 271
sib'2.^>
sib2.^>
\oneVoice <lab, fa'>8[ lab' <solb, mib'> solb' <fa, re'> fa'] \voiceThree
mib2.
\oneVoice <dob lab'>8[ dob' <sib, solb'> sib' <re, fa> re']
%--- 276
\times 2/3 { mib8[ dob sib] } \times 2/3 { lab8[ solb fa] } mib8^| r8 \OCTAVEEND
\times 2/3 { mib8[ dob sib] } \times 2/3 { lab8[ solb fa] } mib8^| r8
\times 2/3 { mib8[ dob sib] } \times 2/3 { lab8[ solb fa] } mib8 r8
\times 2/3 { mib8[ \STAFFDO dob sib] } \times 2/3 { lab[ solb fa] } mib8 r
%--- 280-283
\STAFFUP
mib'4-| mib-| mib-|
mib4-| mib-| mib-|
<re! fa sib re!>4 r4 r4
<mib solb sib mib>4 r4 r4
\bar "|."
}


%%%%%%%%%%%%%%%%%%%% SYNTHESE PIANO HAUT B
hautB = \context Staff \new Voice { \voiceThree \hautBA \hautBB \hautBC \hautBB \hautBD }


%%%%%%%%%%%%%%%%%%%% SYNTHESE POUR LA PARTITION
noteHaut = {
 \clef treble
 \KEYA \TIME
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 \IPIANOHAUT
 << \hautA \hautB >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A21. NOTES PIANO BAS:  VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A: PARTIAL 4
basAA = \relative do' { \voiceOne
%--- 0
\oneVoice \partial 4 r4 
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
basAB = \relative do' { \voiceOne
%--- 1
\voiceOne r4 sib2
r4 sib2
r4 sib2
r4 sib2
r4 sib2
%--- 6
\oneVoice lab,4 <lab' do>2
sib,4 <lab' sib re>2
mib4 <sol sib mib>2
\voiceOne r4 sib2
r4 sib2
%--- 11
r4 sib2 
r4 sib2
r4 sib2
\oneVoice lab,4 <lab' do>2
sib,4 <lab' sib re>2
%--- 16
mib4 <sol sib mib>2
\voiceOne r4 sib2
r4 sib2 
r4 sib2
r4 sib2
%--- 21
r4 sib2
\oneVoice lab,4 <lab' do>2
sib,4 <lab' sib re>2
mib4 <sol sib mib>2
\voiceOne mib,4( mib'2)
%--- 26
lab,4( lab'2)
reb,,4( reb'2)
solb,4( solb'2)
dob,,4( dob'2)
fa,4( fa'2)
%--- 31
sib,,4( sib'2)
mib,4( mib'2)
lab,4( lab'2)
sib,4( sib'2) ~
sib2.
%--- 36
r4 reb,2
r4 mibb^>_( reb)
r4 reb2
r4 mibb^>_( reb)
r4 solb2 ~
%--- 41
solb4 lab2 ~
lab4 dob2(
sib2) \oneVoice r4 \voiceOne
r4 <fa lab dob>2
r4 <fa lab dob>2
%--- 46
r4 <fa lab dob>2 ~
<fa lab dob>2. \clef treble
r4 <fa' lab dob>2
r4 <fa lab dob>2 ~
<fa_~ lab_~ dob>2.(
%--- 51
<fa lab sib>2.) \clef bass
r4 sib,2
r4 sib2
r4 sib2 
r4 sib2
%--- 56
r4 sib2
\oneVoice lab,4 <lab' do>2
sib,4 <lab' sib fa'>2
mib4 <sol sib mib>2
\voiceOne r4 sib2
%--- 61
r4 sib2 
r4 sib2
r4 sib2
r4 <mib, sib'>2
r4 <mib lab>2
%--- 66
r4 <re la'>2
r4 <re sol>2
r4 <do sol'>2
r4 <do fa>2
r4 <fa lab!>2
%--- 71
mib4( mib'2)
lab,,4( lab'2)
sib,4( sib'2)
mib,,4( mib'2)
lab,,4( lab'2)
%--- 76
\voiceThree sib,4( sib'2)
s2.*4
%--- 81-82
\oneVoice solb'2 r4
<solb, solb'>2 r4
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
basAC = \relative do, { \voiceOne
\KEYB

%--- 83
\oneVoice si!4_| <si' re fad>2_>
si,4_| <si' dod mi sol>2_>
\voiceOne r8 <fad' si> r <fad lad> r <fad si>
%--- 86
\oneVoice fad,4 <fad' lad>2_>
fad,4 <fad' lad dod>2_>
si,4 <fad' si>2_>
sol,8[ sol' mi, mi' sol, sol']
si,4 <fad' si>2
%--- 91
si,,4_. <si' re fad>2_>
si,4_. <si' dod mi sol>2_>
\voiceOne r8 <fad' si> r <fad lad> r <fad si>
\oneVoice fad,4 <fad' lad>2
fad,4 <fad' lad dod>2
%--- 96
si,4 <fad' si>2
re,8[ re' si, si' re, re']
dod,4_. <dod' mid sold>2
fad,4_. fad'2
si,,4_. <si' re>2
%--- 101
dod,4 <dod' mid> dod,
\voiceOne r4 \times 2/3 { fad'8[ la dod] } fad,4
r4 \times 2/3 { fad8[ si re] } fad,4
r4 \times 2/3 { fad8[ la dod] } fad,4
\times 2/3 { sold8[ la si] } \times 2/3 { dod[ re dod] } \times 2/3 { si[ la sold] } 
%--- 106
r4 \times 2/3 { fad8[ la dod] } fad,4
r4 \times 2/3 { fad8[ si re] } fad,4
r4 \times 2/3 { fad8[ la dod] } fad,4
\times 2/3 { sold8[ la si] } \times 2/3 { dod[ re dod] } \times 2/3 { si[ la sold] } 
r4 \times 2/3 { fad8[ la dod] } fad,4
%--- 111
\oneVoice mid,4 <mid' sold>2
mi,!4 <mi'! sol!>2
\voiceOne r8 <fad si> r <fad lad> r <fad si>
\oneVoice fad,4 <fad' lad>2
lad,4 <lad' dod>2
%--- 116
la,!4 <la'! do>2
\voiceOne r8 <si mi> r <si red> r <si mi>
\oneVoice si,4 <si' re!>2
si,,8[ si' dod, dod' re, re']
dod,4 <dod' mid sold>2
%--- 121
fad,,8[ fad' sold, sold' la, la']
sold,4 <sold' sid red>2
\voiceOne r4 \times 2/3 { mid'8[ sold dod] } mid,4
r4 \times 2/3 { fad8[ la dod] } fad,4
<sol! si>8[ re' <fad, la> dod' <mid, sold> dod']
%--- 126
\times 2/3 { fad,8[ re dod] } \times 2/3 { si[ la sold] } fad8 r
\oneVoice si,4_. <si' re fad>2 
si,4_. <si' dod mi sol>2
\voiceOne r8 <fad' si> r <fad lad> r <fad si>
\oneVoice fad,4 <fad' lad>2
%--- 131
fad,4 <fad' lad dod>2
si,4 <fad' si>2
sol,8[ sol' mi, mi' sol, sol']
si,4 <fad' si>2
mi,4_| <mi' sol si>2_>
%--- 136
mi,4_| <mi' fad la do>2_>
\voiceOne r8 <si' mi> r <si red> r <si mi>
\oneVoice si,4 <si' red>2
si,4 <si' red fad>2
mi,4 <si' mi>2
%--- 141
sol,8[ sol' mi, mi' sol, sol']
fad,4 <fad' lad dod>2
si,4 <fad' si>2
mi,4 <mi' sol>2
fad,4 <fad' lad> fad,
%--- 146
si,4 <si' re fad>2
mi,4_| <mi' sol lad>2
si,4 <re' fad>2
fad,4 fad'2
si,,4 <si' re fad>2
%--- 151
mi,4_| <mi' sol lad>2
si,4 <re' fad>2
fad,4 fad'2
si,,4 <si' re fad>2
si,4 <si' re fad>2
%--- 156
si,4 <si' re fad>2
si,4 <si' re fad> si,
<si' re fad>4 si, <si' re fad>
sib,4 <sib' mib solb>2
sib,4 <sib' mib solb>2
%--- 161
sib,4 <sib' mib solb> sib,
<sib' mib solb>4 sib, <sib' mib solb>
<lab, lab'>4 <lab' dob mib fa>2
<lab dob mib fa>2 <lab dob mib fa>4
<sib_~ fa'_~ lab^~ dob^~>2.
%--- 166-168
<sib fa' lab dob>2.
<sib_~ fa'_~ lab^~ sib^~>2. 
<sib fa' lab sib>2. \KEYA
}

%%%%%%%%%%%%%%%%%%%% PARTIE D: CODA
basAD = \relative do, { \voiceOne

%--- 251
\oneVoice si4_| <si' re fad>2
si,4_| <si' dod mi sol>2
\voiceOne r8 <fad' si> r <fad lad> r <fad si>
\oneVoice fad,4 <fad' lad>2
sib,4 <fa'! lab! sib>2
%--- 256
mib,!4 <mib' solb sib>2
sib4 <lab' sib re> sib,
mib4 <solb sib>2
si,,4_| <si' re fad>2
si,4_| <si' dod mi sol>2
%--- 261
\voiceOne r8 <fad' si> r <fad lad> r <fad si>
\oneVoice fad,4 <fad' lad>2
sib,!4 <fa'! lab! sib!>2
mib,!4 <mib' solb sib>2
sib4 <lab' sib re> sib,
%--- 266
mib4 <solb sib mib>2
sib,4 \clef treble <sib' re fa lab>2 \clef bass
mib,4 \clef treble <sib' mib solb>2
<lab dob fa>4 <sib mib solb> <sib fa' lab> \clef bass
mib,4 \clef treble <sib' mib solb>2 \clef bass
%--- 271
sib,4 \clef treble <sib' re fa lab>2 \clef bass
mib,4 \clef treble <sib' mib solb>2
<lab dob fa>4 <sib mib solb> <sib fa' lab> \clef bass
mib,4 \clef treble <sib' mib solb>2
<lab dob fa>4 <sib mib solb> <sib fa' lab> \clef bass
%--- 276
<mib, solb sib mib>2 <mib lab dob mib>8_| r8
<mib  solb sib mib>2 <mib lab dob mib>8_| r8
<mib, solb sib mib>2 <mib lab dob mib>8 r8
s2. \voiceOne
\STEMCR <mib' solb sib>4 \STEMCR <mib lab dob> \STEMCR <mib solb sib> 
%--- 281-283
\STEMCR <mib lab dob>4 \STEMCR <mib solb sib>4 \STEMCR <mib lab dob>
\oneVoice <sib, sib'>4 r4 r4
<mib sib' mib>4 r4 r4
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PIANO BAS I
basA = \context Staff \new Voice { \voiceOne \basAA \basAB \basAC \basAB \basAD }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A22. NOTES PIANO BAS:  VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A: PARTIAL 4
basBA = \relative do { \voiceTwo
%--- 0
\partial 4 s4
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
basBB = \relative do { \voiceTwo
%--- 1
mib2.
fa2.
sol2.
re2.
mib2.
%--- 6
s2.*3
mib2.
fa2.
%--- 11
sol2.
re2.
mib2.
s2.*2
%--- 16
s2.
mib2.
fa2.
sol2.
re2.
%--- 21
mib2.
s2.*3
mib,2.
%--- 26
lab2.
reb,2.
solb2.
dob,2.
fa2.
%--- 31
sib,2.
mib2.
lab2.
sib2.
mib2.
%--- 36
solb,2.
lab2.
solb2.
lab2.
sib2.
%--- 41
dob2.
reb2.
solb2.
sib,2.
sib2.
%--- 46
sib2. ~
sib2.
sib'2.
sib2. ~
sib2. ~
%--- 51
sib2.
mib,2.
fa2.
sol2.
re2.
%--- 56
mib2.
s2.*2
s2.
mib2.
%--- 61
fa2.
sol2.
re2.
reb2.
do2.
%--- 66
do2.
si2.
sib!2.
lab2.
sib2.
%--- 71
mib2.
lab,2.
sib2.
mib,2.
lab,2.
%--- 76
sib2.
}

%%%%%%%%%%%%%%%%%%%% PREMIERE FOIS
basBBA = \relative do, { \voiceTwo
%--- 77
mib4 <sib' re>2_>(
mib,8) r8 <sib' re>2_>(
mib,8) r8 <sib' re>2
\TUPNO \times 2/3 { mib,8[ fa solb] } \times 2/3 { lab[ sib do!] } \times 2/3 { re![ mib fa] } 
%--- 81-82
s2.*2
}

%%%%%%%%%%%%%%%%%%%% DEUXIEME FOIS
basBBB = \relative do, { \voiceTwo
%--- 245
mib8 r <sib' re>2(
mib,8) r8 <sib' re>2(
mib,8) r8 <sib' re>2
\TUPNO \times 2/3 { mib,8[ fa solb] } \times 2/3 { lab[ sib do!] } \times 2/3 { re![ mib fa] } 
%--- 249-250
s2.*2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
basBC = \relative do { \voiceTwo
\KEYB

%--- 83
s2.*2
re4 dod si
%--- 86
s2.*5
%--- 91
s2.*2
re4 dod si
s2.*2
%--- 96
s2.*5
%--- 101
s2.
fad4 <la dod>2
si,4 <si' re mid>2
fad,4 <la' dod>2
dod,4 dod'2
%--- 106
fad,,4 <fad' la dod>2
si,4 <si' re mid>2
fad,4 <la' dod>2
dod,4 dod'2
fad,,4 <fad' la dod>2
%--- 111
s2.*2
re'4 dod si
s2.*2
%--- 116
s2.
sol'4 fad mi
s2.*3
%--- 121
s2.*2
dod,4_. dod'2_>
la,4_. la'2_>
si,8[ si' dod, dod' dod, dod']
%--- 126
fad,4 r4 r
s2.*2
re'4 dod si
s2.
%--- 131
s2.*5
%--- 136
s2.
sol'4 fad mi
s2.*3
%--- 141-168
s2.*28 \KEYA
}

%%%%%%%%%%%%%%%%%%%% PARTIE D: CODA
basBD = \relative do { \voiceTwo

%--- 251
s2.*2
re4 dod si
s2.*2
%--- 256
s2.*5
%--- 261
re4 dod si
s2.*4
%--- 266-275
s2.*10
%--- 276
s2.*3
<mib, solb sib mib>2 <mib lab dob>8 r8
<mib solb sib>4_| <mib lab dob>_| <mib solb sib>_|
%--- 281-283
<mib lab dob>4_| <mib solb sib>_| <mib lab dob>_|
s2.*2
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PIANO BAS II
basB = \context Staff \new Voice { \voiceTwo \basBA \basBB \basBBA \basBC \basBB \basBBB \basBD }


%%%%%%%%%%%%%%%%%%%% SYNTHESE POUR LA PARTITION
noteBas = {
 \clef bass
 \KEYA \TIME
 \set autoBeaming = ##f
 \IPIANOBAS
 << \basA \basB >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A: PARTIAL 4
dynPartA = {
%--- 0
\partial 4 s4\p
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
%%%%%%%%%%%%%%%%%%%% DEBUT PREMIERE FOIS

dynPartBA = {
%--- 1
\LEGATO s2\cr s4\!
}

%%%%%%%%%%%%%%%%%%%% DEBUT DEUXIEME FOIS
dynPartBB = {
%--- 1
s2.\p
}

%%%%%%%%%%%%%%%%%%%% PARTIE COMMUNE 1
dynPartBC = {
%--- 2
s2.
\times 6/9 { s8 s4\cr s4. s4 s8\! }
\times 6/9 { s2.\decr s4 s8\! }
%--- 5
s2.*3
%--- 8
\times 6/9 { s2.\cr s4 s8\! }
\DYNEXO #'(1 . 0) s2.\f
s2.
%--- 11
\times 6/9 { s8 s4\cr s4. s4 s8\! }
\times 6/9 { s2.\decr s4 s8\! }
s2.*3
}

%%%%%%%%%%%%%%%%%%%% PREMIERE FOIS: MESURES 16-17
dynPartBD = {
%--- 16-17
s2.*2
}

%%%%%%%%%%%%%%%%%%%% DEUXIEME FOIS: MESURES 184-185
dynPartBE = {
%--- 184-185
\CRESC s2\cr s4\!
\DYNEXO #'(1 . 0) s2.\f
}

%%%%%%%%%%%%%%%%%%%% PARTIE COMMUNE 2
dynPartBF = {
%--- 18
s2.
\times 6/9 { s8 s4\cr s4. s4 s8\! }
\times 6/9 { s2.\decr s4 s8\! }
s2.*4
%--- 25
\DYNEXO #'(1 . 0) s2.\pp
s2.*11
%--- 37
s4 s2\fp
s2.
s4 s2\fp
s2.*4
%--- 44
s4 \DECRESC s4.\decr s8\!
s2.*5
%--- 50
\times 6/9 { s2.\cr s4 s8\! }
\times 6/9 { s2.\decr s4 s8\! }
s2.\p
s2.
%--- 54
\times 6/9 { s2.\cr s4 s8\! }
\times 6/9 { s2.\decr s4 s8\! }
s2.*3
%--- 59
\CRESC s2\cr s4\!
\DYNEXO #'(1 . 0) s2.\f
s2.
%--- 62
\times 6/9 { s2.\cr s4 s8\! }
\times 6/9 { s2.\decr s4 s8\! }
%--- 64
s4 \DTSDASHOK \CREScendo s2 \cr
\times 6/9 { s4. s4 s8\! \cresCENdo  s4.\cr }
s2.
\times 6/9 { s4. s4 s8\! \crescenDO  s4\cr s8\! } \DTSDASHNO
%--- 68
\DYNEXO #'(2 . 0) s2.\ff
s2.*2
%--- 71
\DYNEXO #'(1.5 . 0) s2.\fz
\DYNEXO #'(1.5 . 0) s2.\fz
\DYNEXO #'(1 . 0) s2.\fz
\DYNEXO #'(1 . 0) s2.\fz
\DYNEXO #'(1 . 0) s2.\fz
\DYNEXO #'(1 . 0) s2.\fz
%--- 77
s4 s2\fz
s4 s2\fz
s4 s2\fz
}

%%%%%%%%%%%%%%%%%%%% FIN PREMIERE FOIS
dynPartBG = {
%--- 80-82
s2.
\DYNEXO #'(1.5 . 0) s2.-\FFZ
\DYNEXO #'(0 . -1.5) s2.-\FFZ
}

%%%%%%%%%%%%%%%%%%%% FIN DEUXIEME FOIS
dynPartBH = {
%--- 248-250
s2.
\DYNEXO #'(1 . 0) s2.\ff
\DYNEXO #'(0 . -1) s2.\ff
}

dynPartB    = { \dynPartBA \dynPartBC \dynPartBD \dynPartBF \dynPartBG }
dynPartBbis = { \dynPartBB \dynPartBC \dynPartBE \dynPartBF \dynPartBH }


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartC = {
%--- 83
s2.\ff
s2.
s4\cr s8\! s4\decr s8\!
s2.*3
%--- 89
s4\cr s8\! s4\decr s8\!
s2.
\DYNEXO #'(1 . 0) s2.\p
s2.
%--- 93
s4\cr s8\! s4\decr s8\!
s2.
\DYNEXO #'(1 . 0) s2.\f
s2.
%--- 97
\DYNEXO #'(1.5 . 0) \PINEXO #'(1 . 0) s4\ff\cr s8\! \PINEXO #'(1.5 . 0) s4\decr s8\!
s2.
\DYNEXO #'(1 . 0) s2.\p
s2.*3
%--- 103
\DYNEXO #'(2.5 . 0) s2.-\FFZ
\DYNEXO #'(1 . 0) s2.\p
\times 6/9 { s4.\cr s8\! s8 s4.\decr s8\! }
s2.
%--- 107
\DYNEXO #'(2.5 . 0) s2.-\FFZ
\DYNEXO #'(1 . 0) s2.\p
\times 6/9 { s4.\cr s8\! s8 s4.\decr s8\! }
s2.
%--- 111
s2.\f
s2.\ff
s2.*3
%--- 116
s2.\ff
s2.*3
%--- 120
\DYNEXO #'(2 . 0) s2.\fz
s2.
s2.\fz
s2.\p
s2.
%--- 125
s2.\f
s2.
\DYNEXO #'(1 . -1) s2.\p
s2.*7
%--- 135
\DYNEXO #'(1 . -1) s2.\f
s2.*5
%--- 141
\times 6/9 { s4.\cr s8\! s8 s4.\decr s8\! }
s2.*5
%--- 147
\DYNEXO #'(2.5 . 0) s2.-\FFZ
\DYNEXO #'(1 . 0) s2.\p
\times 6/9 { s4.\cr s8\! s8 s4.\decr s8\! }
s2.
%--- 151
\DYNEXO #'(2 . 0) s2.-\FFZ
\DYNEXO #'(1 . 0) s2.\p
\times 6/9 { s4.\cr s8\! s8 s4.\decr s8\! }
s2.
%--- 155
\DYNEXO #'(1 . 0) s2.\f
s2.*4
%--- 160
s4 s16 \CRESC s4\cr s8.\!
s2.*2
%--- 163
\DYNEXO #'(1 . 0) s2\fz s4\fz
s4 s2\fz
s2.\decr
\times 6/9 { s2. s4 s8\! }
%--- 167
\DECRESC s2\decr s4\!
s2.
}

%%%%%%%%%%%%%%%%%%%% PARTIE D: CODA
dynPartD = {
%--- 251
\DYNEXO #'(1 . -1) s2.\ff
s2.
s4\cr s8\! s4\decr s8\!
s2.*3
%--- 257
s4\cr s8\! s4\decr s8\!
s2.
\DYNEXO #'(0.5 . 0) s2.\ff
s2.
s4\cr s8\! s4\decr s8\!
s2.*3
%--- 265
s4\cr s8\! s4\decr s8\!
s2.
\DYNEXO #'(2 . 0) s4\ff \DTSDASHOK \ACCElerando s4.\cr s8\!
\acceLErando s4\cr s8\! \acceleRANdo s4.\cr
s8 s8\! \acceleranDO s8\cr s8\! s4 \DTSDASHNO
s2.*6
%--- 276
s2 s4\fz
s2 s4\fz
s2 s4\fz
s2 s4\fz
s2.*2
\DYNEXO #'(0.5 . 0) s2.\fz
s2.\fz
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE DES DYNAMIQUES POUR LA PARTITION
dynPart = {
 \override DynamicTextSpanner #'dash-period = #-1
 \dynPartA \dynPartB \dynPartC \dynPartBbis \dynPartD
}

%%%%%%%%%%%%%%%%%%%% DYNAMIQUES PORTEE DU HAUT ET PORTEE DU BAS
%%%%%%%%%%%%%%%%%%%% PORTEE DU HAUT: un crescendo/decrescendo en PARTIES A, un diminuendo en PARTIE B
dynPartHaut = {
 \override DynamicTextSpanner #'dash-period = #-1
 \dynamicUp
%--- 0
s4
%--- PARTIE A (1-82)
s2.*79
%--- 80-82
s2\cr s8.. s32\!
\PINEXO #'(0 . 0.75) s4\decr s4\! s4
s2.
%--- PARTIE B (83-168)
s2.*82
s2 s4^\DIMIN 
s2.*3
%--- PARTIE A (169-250)
s2.*79
%--- 248-250 (= 80-82)
s2\cr s8.. s32\!
\PINEXO #'(0 . 0.75) s4\decr s4\! s4
s2.
%--- PARTIE C (251-283)
s2.*33
}

%%%%%%%%%%%%%%%%%%%% PORTEE DU HAUT: quelques "ffz" en PARTIE B

dynPartBas = {
%--- 0
s4
%--- PARTIE A (1-82)
s2.*82
%--- PARTIE B (83-168)
%--- 83-102
s2.*20
%--- 103-107
s4 \DYNEXO #'(2 . 0) s2_\FFZ
s2.*3
s4 \DYNEXO #'(2 . 0) s2_\FFZ
%--- 108-146
s2.*39
%--- 147-151
\DYNEXO #'(1 . 0) s4 s2_\FFZ
s2.*3
\DYNEXO #'(1 . 0) s4 s2_\FFZ
%--- 152-168
s2.*17
%--- PARTIE A (169-250)
s2.*82
%--- PARTIE C (251-283)
s2.*33
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A: PARTIAL 4
dynMidiA = {
%--- 0
\partial 4 s4\p
}

%%%%%%%%%%%%%%%%%%%% PARTIE B
%%%%%%%%%%%%%%%%%%%% DEBUT PREMIERE FOIS
dynMidiBA = {
%--- 1
s2.
}

%%%%%%%%%%%%%%%%%%%% DEBUT DEUXIEME FOIS
dynMidiBB = {
%--- 1
s2.\p
}

%%%%%%%%%%%%%%%%%%%% PARTIE COMMUNE
dynMidiBC = {
%--- 2
s2.
s2.\cr
s2.\!\f\decr
%--- 5
s2.\!\p
s2.*2
%--- 8
s2.\cr
s2.\!\f
s2.
%--- 11
s2.\cr
s2.\!\fff\decr
s2.\!\mf
s2.*2
%--- 16
s2.\cr
s2.\!\f
s2.
%--- 19
s2.\cr
s2.\!\fff\decr
s2.
s2.*3
%--- 25
s2.\!\pp
s2.*11
%--- 37
s4 s4\f s4\p
s2.
s4 s4\f s4\p
s2.*4
%--- 44
s4 s2\decr
s2.\!\pp
s2.*4
%--- 50
s2.\cr
s2.\!\mf\decr
s2.\!\p
s2.
%--- 54
s2.\cr
s2.\!\f\decr
s2.\!\p
s2.*2
%--- 59
s2.\cr
s2.\!\f
s2.
%--- 62
s2.\cr
s2.\!\fff\decr
%--- 64
s4\!\mf s2 \cr
s2.*3
%--- 68
s2.\!\ff
s2.*2
%--- 71
s4\fff s2\mf
s4\fff s2\mf
s4\fff s2\mf
s4\fff s2\mf
s4\fff s2\mf
s4\fff s2\mf
%--- 77
s4 s4\fff s4\mf
s4 s4\fff s4\mf
s4 s4\fff s4\mf
}

%%%%%%%%%%%%%%%%%%%% FIN PREMIERE FOIS
dynMidiBD = {
%--- 80-82
s2\cr s4\!\f
s4\fff s2\f
s4\fff s2\f
}

%%%%%%%%%%%%%%%%%%%% FIN DEUXIEME FOIS
dynMidiBE = {
%--- 80-82
s2\cr s4\!\f
s4\fff s2\f
s4\fff s2\f
}

dynMidiB    = { \dynMidiBA \dynMidiBC \dynMidiBD }
dynMidiBbis = { \dynMidiBB \dynMidiBC \dynMidiBE }


%%%%%%%%%%%%%%%%%%%% PARTIE C DEBUT
dynMidiCA = {
%--- 83
s2.\ff
s2.
s4\cr s8\!\fff s4\decr s8\!\ff
s2.*3
%--- 89
s4\cr s8\!\fff s4\decr s8\!\ff
s2.
s2.\p
s2.
%--- 93
s4\cr s8\!\mf s4\decr s8\!\p
s2.
s2.\f
s2.
%--- 97
s4\ff\cr s8\!\fff s4\decr s8\!\ff
s2.
s2.\p
s2.*3
}

%%%%%%%%%%%%%%%%%%%% PARTIE C: HAUT
dynMidiCB = {

%--- 103
s2\ff s4\p
s2.\p
s4\cr s8\!\mf s4\decr s8\!\p
s2.
%--- 107
s2\ff s4\p
s2.\p
s4\cr s8\!\mf s4\decr s8\!\p
s2.
%--- 111
s2.\f
s2.\ff
s2.*3
%--- 116
s2.\ff
s2.*3
%--- 120
s4\fff s2\ff
s2.
s4\fff s2\ff
s2.\p
s2.
%--- 125
s2.\f
s2.
s2.\p
s2.*7
%--- 135
s2.\f
s2.*5
%--- 141
s4\cr s8\!\ff s4\decr s8\!\f
s2.*5
%--- 147
s2\fff s4\f
s2.\p
s4\cr s8\!\f s4\decr s8\!\p
s2.
s2\ff s4\p
}

%%%%%%%%%%%%%%%%%%%% PARTIE C: BAS
dynMidiCC = {

%--- 103
s4 s4\ff s4\p
s2.\p
s4\cr s8\!\mf s4\decr s8\!\p
s2.
%--- 107
s4 s4\ff s4\p
s2.\p
s4\cr s8\!\mf s4\decr s8\!\p
s2.
%--- 111
s2.\f
s2.\ff
s2.*3
%--- 116
s2.\ff
s2.*3
%--- 120
s4\fff s2\ff
s2.
s4\fff s2\ff
s2.\p
s2.
%--- 125
s2.\f
s2.
s2.\p
s2.*7
%--- 135
s2.\f
s2.*5
%--- 141
s4\cr s8\!\ff s4\decr s8\!\f
s2.*5
%--- 147
s4 s4\fff s4\f
s2.\p
s4\cr s8\!\f s4\decr s8\!\p
s2.
s4 s4\ff s4\p
}

%%%%%%%%%%%%%%%%%%%% PARTIE C: FIN
dynMidiCD = {
%--- 152
s2.\p
s4\cr s8\!\f s4\decr s8\!\p
s2.
%--- 155
s2.\f
s2.*4
%--- 160
s4 s2\cr
s2.*2
%--- 163
\tempo 4=130 s2 s4\!\ff
s4\f s4\ff s4\f
\tempo 4=160 s2.\decr
s2.
%--- 167
s2 s4\!\p
s2.
}

dynMidiChaut = { \dynMidiCA \dynMidiCB \dynMidiCD }
dynMidiCbas  = { \dynMidiCA \dynMidiCC \dynMidiCD }

%%%%%%%%%%%%%%%%%%%% PARTIE D: CODA
dynMidiD = {
%--- 251
s2.\ff
s2.
s4\cr s8\!\fff s4\decr s8\!\f
s2.*3
%--- 257
s4\cr s8\!\fff s4\decr s8\!\f
s2.
s2.\ff
s2.
s4\cr s8\!\fff s4\decr s8\!\f
s2.*3
%--- 265
s4\cr s8\!\fff s4\decr s8\!\f
s2.
\tempo 4=172 s2.\ff
\tempo 4=184 s2.
\tempo 4=196 s2.
\tempo 4=208 s2.
\tempo 4=220 s2.
\tempo 4=232 s2.
\tempo 4=244 s2.
s2.*2
%--- 276
s2 s4\fff
s2\ff s4\fff
s2\ff s4\fff
s2\ff s4\fff
s2.\ff
s2.
\tempo 4=200 s2.\fff
\tempo 4=130 s2.
%--- CHUTE DOUCE
s2 mib4\ppppp
}

%%%%%%%%%%%%%%%%%%%% PORTEE DU HAUT
dynMidiHaut = { \dynMidiA \dynMidiB \dynMidiChaut \dynMidiBbis \dynMidiD }

%%%%%%%%%%%%%%%%%%%% PORTEE DU BAS

dynMidiBAs  = { \dynMidiA \dynMidiB \dynMidiCbas  \dynMidiBbis \dynMidiD }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new PianoStaff <<
   \new Staff = "up" << \noteHaut \dynPartHaut >>
   \new Dynamics = "dynamics" \dynPart
   \new Staff = "down" << \noteBas \dynPartBas >>
  >>
 >>
 \layout {
  \context {
   \Score
   \override SpacingSpanner #'spacing-increment = #1
  }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \CRESC works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 0.5)
   \override DynamicLineSpanner #'Y-offset = #0

   \consists "Script_engraver"
   \consists "Dynamic_engraver"
   \consists "Text_engraver"
   \consists "Skip_event_swallow_translator"
   \consists "Axis_group_engraver"
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           F. SORTIE MIDI (pas de \layout)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% REDEFINITION DES VOLUMES RESPECTIFS ATTRIBUES AUX DYNAMIQUES 
% volumes par défaut (LilyPond\usr\share\lilypond\current\scm\midi.scm):
% sf    1.00     ff  0.80     mp   0.61     ppp    0.42     fp: 0.50
% ffff  0.92     f   0.75     p    0.55     pppp   0.34
% fff   0.85     mf  0.68     pp   0.49     ppppp  0.25

#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist (append '(
 ("sf" .    1.00)
 ("ffff" .  1.00)
 ("fff" .   1.00)
 ("ff" .    0.88)
 ("f" .     0.75)
 ("mf" .    0.70)
 ("mp" .    0.62)
 ("p" .     0.55)
 ("pp" .    0.50)
 ("ppp" .   0.35)
 ("pppp" .  0.18)
 ("ppppp" . 0.00) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME s2. s2. s2. }

\score {
 <<
  \new Staff = "up"   { \SILENCE << \noteHaut \dynMidiHaut >> }
  \new Staff = "down" { \SILENCE << \noteBas  \dynMidiBAs  >> }
 >>
 \midi {
 \context {
   \Score
% ECHELLE DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
   tempoWholesPerMinute = #(ly:make-moment 160 4)
  }
 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D899-2-Impromptu.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
