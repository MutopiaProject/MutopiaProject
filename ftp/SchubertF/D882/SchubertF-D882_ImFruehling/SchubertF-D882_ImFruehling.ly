%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                          FICHIER SchubertF-D827-ImFruehling.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                   FRANZ SCHUBERT: Gesang "Im Frühling", für eine Singstimme mit Klavierbegleitung
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
 indent = 22\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Im Frühling (D.882)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Im Frühling (D.882)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Im Frühling" }
 subsubtitle = " "
 poet = \markup { \bold "Ernst Konrad Friedrich Schulze" \small "(1789-1817)" }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1827)" "D.882 (März 1826)" }
% MUTOPIA
 mutopiatitle = "Im Frühling"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Ernst Schulze"
 mutopiaopus = "D.882"
 mutopiainstrument = "Voice and Piano"
 date = "1826"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1550"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME
%  B. CHANT: B1: Notes B2: dynamiques
%  C. PIANO: C1: Notes PIANO HAUT  C2: Notes PIANO BAS  C3: Dynamiques partition  C4: Dynamiques midi
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TEMPI
TEMPOBASE = \tempo 4=56
TEMPOA    = \tempo 4=52
TEMPOB    = \tempo 4=48
TEMPOC    = \tempo 4=44
TEMPOD    = \tempo 4=40
TEMPOE    = \tempo 4=10
%----- TONALITÉS ET MESURES
KEYA = { \key sol \major }
KEYB = { \key sol \minor }
TIME = { \time 4/4 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-4 "Andante." } }
%----- INSTRUMENTS
ICHANT = {
% \set Staff.midiInstrument = "harmonica"
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUTI = {
% \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
}
IPIANOHAUTII = {
% \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.6
}
IPIANOBAS = {
% \set Staff.midiInstrument = "acoustic guitar (nylon)"
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
% \set Staff.midiMaximumVolume = #1
 \set Staff.midiMaximumVolume = #0.7
}
%----- REPOSITIONNEMENT D'UNE DYNAMIQUE
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT DES SCRIPT / MARKUP
SCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Script #'extra-offset = #$beg-end #})
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
%----- LIAISON: HAUTEUR 
SLURPOS =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Slur #'positions = #$beg-end #})
%----- IMITATION D'UN LONG POINT D'ORGUE 
SLURTHICK = \once \override Slur #'thickness = #4
POINTTHICK = \once \override Script #'font-size = #3
GROSPOINT = \markup { \fontsize #2 \musicglyph #"period" }
%----- BARRE DE LIGATURE: HAUTEUR 
BEAMPOS =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Beam #'positions = #$beg-end #})
%----- REPOSITIONNEMENT D'UNE NOTE
NOTEHS =
 #(define-music-function (parser location beg-end) (number?)
#{ \once \override NoteColumn #'force-hshift = #$beg-end #})
IGNCOLL = \once \override NoteColumn #'ignore-collision = ##t
%----- REPOSITIONNEMENT D'UNE ALTERATION
ALTEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Accidental #'extra-offset = #$beg-end #})
%----- CRESCENDOS
CRESCM     = \markup { \bold \italic "cresc." }
DIMINM     = \markup { \bold \italic "dimin." }
%----- DYNAMIQUE SPECIALE
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
%----- MARKUP
ATEMPO = \markup { \bold \large "a tempo" }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

%--- 4
Still sitz’ ich an des Hü -- gels Hang,
der Him -- mel ist __  so __  klar,
das Lüft -- chen __  spielt __  im __  grü -- nen Thal,
wo ich beim ers -- ten Früh -- lings -- strahl
einst, ach, __ so __ glück -- lich war, so __ glück -- lich war;

wo ich an ih -- rer Sei -- te __ ging
so trau -- lich und so nah,
und tief im dun -- keln Fel -- sen -- quell
den schö -- nen Him -- mel __ blau und hell
und sie im Him -- mel sah, und __ sie im __ Him -- mel __ sah.

%--- 20
Sieh, wie der bun -- te Früh -- ling schon
aus Knosp’ und Blü -- the __ blickt!
Nicht al -- le __ Blü -- then __ sind mir gleich,
am lieb -- sten pflückt’ ich von dem Zweig,
von wel -- chem __ sie ge -- pflückt, von wel -- chem sie ge -- pflückt!

Denn al -- les ist wie da -- mals __ noch,
die Blu -- men, das Ge -- fild;
die Son -- ne scheint nicht min -- der hell,
nicht min -- der freund -- lich __ schwimmt im Quell
das blau -- e Him -- mels -- bild, das blau -- e __ Him -- mels -- bild.

%--- 34
Es wan -- deln nur sich Will’ und Wahn,
es wech -- seln Lust __ und __ Streit;
vo -- rü -- ber __ flieht __ der __ Lie -- be Glück,
und nur die Lie -- be bleibt zu -- rück,
die Lieb’ __ und __ ach, das Leid, und __ ach, das Leid.

%--- 41
O wär’ ich doch ein Vög -- lein nur
dort an dem Wie -- sen -- hang,
dann blieb’ ich auf den Zwei -- gen hier
und säng’ ein sü -- sses __ Lied von ihr,
den gan -- zen Som -- mer lang, den __ gan -- zen __ Som -- mer __ lang,
ich säng’ von ihr den gan -- zen Som -- mer __ lang.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do'' {
%--- 1
R1*2 \break
R1
r2 r4 r8 re
%--- 5
re8 si la sol sol8. mi16 mi8. mi16
mi8 do' mi16[ re] do[ si] do4 r8 re
mi16[ re] do[ si] la[ sol] fad[ sol] sol8. mi16 mi8. mi16
%--- 8
mi8 dod' re si dod8. la16 mi8 mi'
fa16[ mi] do![ re] mi8. sold,16 la8 si16[ do] re8. fad,!16
sol4 r r r8 sol
%--- 11
la8 la si8. sol16 sol16.[ la64 sol] fad16[ sol] la8 la
si8 sol dod la re4. re,8
sol8 sol fad fad mi mi16[ fad] sol8 sol
%--- 14
la8. la16 do[ si] la[ si] do8 sol fa'^\fermata re
mi8. la,16 la8 si sol4 r8 re'16[ red]
fad16[ mi] la,[ si] re[ do] la[ fad] sol4 r
%--- 17
R1*3
%--- 20
r2 r4 r8 re'
re8 si la sol sol8. mi16 mi8. mi16
mi8 do' mi16[ re] do[ si] do4 r8 re
%--- 23
mi16[ re] do[ si] la[ sol] fad[ sol] mi8. fad16 sold8. mi16
la8 mi re' si dod8. re16 mi8. mi16
%--- 25
fa16[ mi] do![ re] mi8. sold,16 la la si do re8. fad,!16
sol4 r r r8 sol
la8. la16 si8 sol sol16.[ la64 sol] fad16[ sol] la8. la16
%--- 28
si8 sol dod la re4. re,8
sol8 sol fad fad mi8. fad16 sol8 sol
%--- 30
la8. la16 do[ si] la[ si] do8 sol fa'^\fermata re
mi8. la,16 la8 si sol4 r8 re'16[ red]
fad16[ mi] la,[ si] re[ do] la[ fad] sol4 r
%--- 33
\bar "||" \KEYB R1
r2 r4 r8 re'
%--- 35
re8 sib la sol sol8. mib16 mib8 mib
mib8 do' mib16[ re] do[ si] do4 r8 re
%--- 37
mib16[ re] do[ sib] la[ sol] fad[ sol] mib8 fa sol8. sol16
lab8 mib reb'8. reb16 do8. lab16 mib8 mib'
%--- 39
fab16[ mib] do[ reb] mib8. sol,16 lab8 sib16[ do] re8. fad,16
sol4 r \TSCREXO #'(1 . 0) r2^\fermataMarkup
%--- 41
\bar "||" \KEYA
r2 r4 r8 sol
la8 la si sol \BEAMPOS #'(3 . 2.2) sol[ \grace { la16[ sol] } fad] sol la8. la16
%--- 43
si8 sol dod la re4. re,8
sol8 sol fad fad mi8. fad16 sol8 sol
la8 la do16[ si] la[ si] do8 sol fa'^\fermata re
%--- 46
mi8. la,16 la8 si sol4 r8 re'16[ red]
fad16[ mi] la,[ si] re[ do] la[ fad] sol4 r
%--- 48
r4 r8 fad mi8. fad16 sol4
r8 la mi'\fermata sol, sol si16[ la] sol4
R1^\fermataMarkup
\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEYA \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chant
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \clef treble
 \KEYA \TIME \TEMPOBASE
 \ICHANT
 \chant
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES (VOIX I / VOIX II)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautIA = \relative do'' { \voiceOne
%--- 1
<< { \voiceOne sol8[ sol( fad) \SLURPOS #'(2.5 . 2.5) fad]( mi)[ mi16( fad] sol4) } \\ { \voiceThree s2. re8.[ sol16] } >>
<< { \voiceOne la8[ la( si) sol] sol([ fad16 sol] la4) } \\ { \voiceThree s2 re,4 s4 } >>
<< { \voiceOne sol8[ sol( fad) \SLURPOS #'(2.5 . 2.5) fad]( mi)[ mi16( fad] sol4) } \\ { \voiceThree s2. re8.[ sol16] } >>
\voiceOne la8[ la( mi' sol,)] sol([ si16 la]) sol4
%--- 5
\oneVoice r8 <si, re sol> r <re sol> r <mi sol> r <re mi sold>
r8 <do mi la>([ <la fa' la> <re fa sol>]) r << { \voiceOne <sol mi'>8( re'4) } \\ { \voiceThree s8 \ALTEXO #'(1.5 . 0.1) sold,8[ la] } >>
\oneVoice r8 <si, re sol> r <re sol> r <mi sol> r <re mi sold>
%--- 8
r8 <dod mi la> r <re mi si'> r <dod mi la> r <re mi sold>
<do! mi la>8([ <si re la'> <do mi la> <re mi si'>]) <do mi la>8([ <do la' do> <re sol si> <do re fad la>])
\voiceOne sol'8[ sol( fad) \SLURPOS #'(2.5 . 2.5) fad]( mi)[ mi16( fad] sol8)[ sol]
%--- 11
\oneVoice r8 <la, mi' sol> r << { \voiceOne <si mi sol ~ >8 \IGNCOLL sol'([ fad16 sol]) } \\ { \voiceThree r8 \NOTEHS #'1.5 re4 } >>
 \oneVoice r8 <re fad la>
r8 <re sol si> r \set doubleSlurs = ##t <sol dod>( \set doubleSlurs = ##f <fad re'>)[ ( <fa si> <mi do'!> <fad la>])
r8 <si, re sol> r <la red la'> r <sol mi' sol> r <si re sol>
%--- 14
r8 <mi sol la> r <fa sol si> r <mi sol do>\noBeam <fa sol re'>\fermata r
r8 <mi sol mi'> r <re fad! re'> r <si sol' si> r \voiceOne sol'16([ <fad la>]
sol8) ( la4 do8 si)[ re( mi fad)]
%--- 17
\oneVoice sol16([ si, re sol] fad[ si, re fad] mi[ sol, mi' fad] sol[ si, re sol])
la[ mi sol la] si[ si, mi sol] sol[ re fad sol] << { la4 } \\ { la16[ re, mi fad] } >>
sol16[ si, re sol] fad[ si, re fad] mi[ sol, mi' fad] sol[ si, re sol]
%--- 20
la[ mi sol la] mi'[ mi, fad sol] << { \voiceOne re16[ sol si la] } \\ { \voiceTwo s8 fad } >> sol16[ <si, re> <do mi> <la fad'>]
sol'16[ si, re si'] la[ dod, re sol] sol[ do, mi sol] sold[ re mi sold]
la[ do, mi la] la,[ re sol, fa'] mi[ sol, do mi] << { \voiceOne la8.[ do16] } \\ { \voiceTwo mi,16[ mib re8] } >>
%--- 23
\oneVoice si'16[ si, re si'] la[ dod, re sol] sol[ do, mi sol] sold[ re mi sold]
la[ dod, mi la] si[ re, mi si'] la[ dod, mi la] sold[ re mi sold]
%--- 25
la([ do,! la si] do la' sold si] la[ do, si la] si[ si' fad! la])
sol16([ si, re sol] fad[ si, re fad] mi[ sol, mi' fad] sol[ si, re sol])
la[ mi sol la] si[ si, mi sol] sol[ re fad sol] la[ re, fad la]
%--- 28
si[ si, sol' si] la[ sol mi fad] re[ fad, la re] la[ fad' re la']
sol16[ si, re sol] fad[ si, re fad] mi[ sol, mi' fad] sol[ si, re sol]
%--- 30
sol[ la, mi' sol] sol[ si, fa' sol] sol[ do, mi sol] <fa, sol re' sol>8\fermata r
}

%%%%%%%%%%%%%%%%%%%% 31: MORDANT POUR LA PARTITION
pianoHautIB = \relative do''' {
sol16[ sol, la sol'] la,[ fad' re re'] si[ si, si' la] sol\prall[ fad sol fad]
}

%%%%%%%%%%%%%%%%%%%% 31: MORDANT POUR LE MIDI
pianoHautIC = \relative do''' {
sol16 sol, la sol'  la, fad' re re'  si si, si' la  sol64[ la sol32] fad16 sol fad
}

%%%%%%%%%%%%%%%%%%%% 32: suite
pianoHautID = \relative do'' { 
%--- 32
mi16[ sold, la mi'] fad[ la, fad' la] sol![ re si re] do[ mi la, fad']
%--- 33
\KEYB
r16 <sib, re sol>8[ <sib re sol>16] r <sol si re fa>8[<sol si re fa>16] r <sol do mib>8[ <sol do mib>16] r <sol sib re>8[ <sol sib re>16]
r16 <mib lab do>8[ <mib lab do>16] r <mi sol sib>8[ <mi sol sib>16] r <re sol sib>8[ <re sol sib>16] r <re fad la!>8[ <re fad re'>16]
%--- 35
r16 <sol sib re>8[ <sol sib re>16] r <sol si re fa!>8[ <sol si re fa>16] r <sol do mib>8[ <sol do mib>16] r <si reb mib>8[ <si reb mib>16]
r16 <lab do mib>8[ <lab do mib>16] r <lab re! fa>16[ r <fa sol re'>] r <mib sol do>8[ <mib sol do>16]
 << { mib'16[( re) re^. re^.] } \\ { <la! do>8[ <la do>16 <la do>] } >>
%--- 37
r16 <sol sib re>8[ <sol sib re>16] r <sol si re sol>8[<sol si re sol>16]
 r <sol do mib sol>8[ <sol do mib sol>16] r <reb' mib sol sib!>8[ <reb mib sol sib>16]
r16 <do mib lab>8[ <do mib lab>16] r <reb fab sol>8[ <reb fab sol>16]
 r <do mib lab>8[ <do mib lab>16] r <reb mib sib'>8[ <reb mib sib'>16]
%--- 39
r16 <do mib do'>[ r <reb lab' reb>] r <mib lab do>[ r <reb mib sib'>] r <do mib lab>[ r <do lab'>] r <sib re! sol>[ r <do re la'>]
r16 <sib re sol>8[ <sib re sol>16] r <si re fa>8[ <si re fa>16]
 r <sol do mib>8[ <sol do mib>16] r \SLURTHICK #6 \SLURPOS #'(3 . 3) \TSCREXO #'(3 . -2) <sol si re>8^\GROSPOINT ([ <sol si re>16])
%--- 41
\KEYA
sol'16^\ATEMPO [ si, re sol] fad[ si, re fad] mi[ sol, mi' fad] sol[ si, re sol]
la[ mi sol la] si[ si, mi sol] sol[ re fad sol] la[ re, fad la]
%--- 43
si[ si, sol' si] la[ sol mi fad] re[ fad, la re] la[ fad' re la']
si[ si, re si'] la[ si, red la'] sol[ sol, mi' sol] sol[ si, re sol]
sol[ la, mi' sol] sol[ si, fa' sol] sol[ do, mi sol] <fa, sol re' sol>8\fermata r
}

%%%%%%%%%%%%%%%%%%%% 46: MORDANT POUR LA PARTITION
pianoHautIE = \relative do''' {
sol16[ sol, la sol'] fad[ re fad re'] si[ si, si' la] sol\prall[ fad sol fad]
}

%%%%%%%%%%%%%%%%%%%% 46: MORDANT POUR LE MIDI
pianoHautIF = \relative do''' {
sol16 sol, la sol'  fad re fad re'  si si, si' la  sol64[ la sol32] fad16 sol fad
}

%%%%%%%%%%%%%%%%%%%% 47: suite
pianoHautIG = \relative do'' { 
%--- 47
mi16[ sold, la mi'] fad[ la, fad' la] sol![ re si re] do[ mi la, fad']
sol16[ si, re sol] fad[ si, re fad] mi[ sol, mi' fad] sol[ si, re sol]
}

%%%%%%%%%%%%%%%%%%%% 49-50: GRUPPETTO POUR LA PARTITION ET FIN
pianoHautIH = \relative do''' {
la16[ mi sol la] mi'^\fermata[ mi, fad sol] \voiceOne \SCREXO #'(2.5 . -2.5) sol8^\turn[ si16 la] \oneVoice sol[ si,( do dod]
\voiceOne re16[ re, fad do'] si)[ sol( la lad] si[ si, re fad]) <si, sol'>4^\fermata
}

%%%%%%%%%%%%%%%%%%%% 49-50: GRUPPETTO POUR LE MIDI ET FIN
pianoHautIJ = \relative do''' {
la16[ mi sol la] mi'^\fermata[ mi, fad sol] sol16[ fad64 sol la sol si16 la] sol[ si,( do dod]
re16[ re, fad do'!] si)[ sol( la lad] si[ si, re fad]) <si, sol'>4^\fermata
}


%%%%%%%%%%%%%%%%%%%% SYNTHESES PIANO HAUT VOIX I
pianoHautIPart = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIB \pianoHautID \pianoHautIE \pianoHautIG \pianoHautIH
}
pianoHautIMidi = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIC \pianoHautID \pianoHautIF \pianoHautIG \pianoHautIJ
}

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautII = \context Staff \relative do' \new Voice { \voiceTwo
%--- 1
<si re>8 <si re>4 <si re>8( <sol do>)[ <sol do>]( si4)
<mi sol>8 <mi sol>4 <si mi>8 si[ la16 si] <re fad>8[ <dod sol'>16 <do re la'>]
<si re>8 <si re>4 \SLURPOS #'(1 . 1) <si re>8( <sol do>)[ <sol do>]( si4)
<mi sol>8 <mi sol>4 mi8 re[ <re fad>] re4
%--- 5
s1
s2 s8 \stemUp \IGNCOLL <mi sol mi'>8( \stemDown <do re>4)
s1
%--- 8
s1*2
<si re>8 <si re>4 \SLURPOS #'(1 . 1) <si re>8( <sol do>)[ <sol do>]( <si re>[) <si re>]
%--- 11
s4. \stemUp \IGNCOLL <si ~ mi sol>8 \stemDown si[ la16 si] s4
s1*2
%--- 14
s1*2
mi4 fad sol8 sol4 re'16[ do]
%--- 17
s1*16
%--- 33
\KEYB
s1*16
%--- 49
s2 sol'8[ fad] s4
s8 fad,([ sol16]) s8. s8 do,! s4
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEYA \TIME
 \set autoBeaming = ##f
 << \pianoHautIPart \pianoHautII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉS MIDI
noteMidiPianoHautI = {
 \clef treble
 \KEYA \TIME
 \IPIANOHAUTI
 \pianoHautIMidi
}
noteMidiPianoHautII = {
 \clef treble
 \KEYA \TIME
 \IPIANOHAUTII
 \pianoHautII
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBas = \relative do {
%--- 1
sol4( si do sol)
do4( dod) re ~ re16[ re,( mi fad)]
sol4( si do sol)
\set doubleSlurs = ##t <do la'>4( <dod si'>) \set doubleSlurs = ##f <re si'>8[ <re do'!>] <sol si>4 
%--- 5
sol,4( si do si)
la4( fa8[ sol]) do4( fad,)
sol4( si do si)
%--- 8
la4( sold la si)
do!8([ fa] mi4) la,8([ mib'] re4) 
sol,4( si do sol)
%--- 11
do4_( dod re re,)
sol8([ fad mi la] re,) << { sold'8([ la re16 do]) } \\ { re,4. } >>
sol,4( si do sol)
%--- 14
do4( re mi si8\fermata) r
do4( re mi si)
do4( la8[ re] sol,) si'([do la])
%--- 17
sol,8-.[ <si' re sol>] si,-.[ <si' re fad>] do,-.[ <sol' do mi>] sol,-.[ <si' re sol>] 
do,8[ <la' mi' sol>] dod,[ <si' mi sol>]  re,16[ <si' re sol> <la re fad> <si re sol>] <re fad la>4
sol,,8[ <si' re sol>] si,[ <si' re fad>] do,[ <sol' do mi>] sol,[ <si' re sol>] 
%--- 20
do,8[ <la' mi' sol>] dod,[ <si' mi sol>] <re, si'>[ <re do'! re> <sol si re>] r
sol,[ <si' re sol>] si,[ <sol' re'>] do,[ <sol' do mi>] si,[ <sold' re' mi>]
la,[ <la' do mi>] <fa do' re>[ <sol re' fa>] do,[ <sol' do mi>] fad,![ <la' do re>] 
%--- 23
sol,[ <sol' si re>] si,[ <sol' re' sol>] do,[ <do' mi sol>] si,[ <re' mi sold>]
la,[ <dod' mi la>] sold,[ <re'' mi si'>] la,[ <dod' mi la>] si,[ <re' mi sold>]
%--- 25
<< { s4 <la do>8[ <si re>] s4 <si re>8[ <do re>] } \\ {  <do,! la' do!>8([ <fa la do>] mi4) <la do>8([ <mib la do>] re4) } >>
sol,8[ <si' re sol>] si,[ <si' re fad>] do,[ <sol' do mi>] sol,[ <si' re sol>] 
do,8[ <la' mi' sol>] dod,[ <si' mi sol>] re,16[ <si' re sol> <la re fad> <si re sol>] <re fad la>4
%--- 28
sol,8[ <fad sol si> mi <la dod sol'>] re,[ <la' re fad> re, <do' re la'>]
sol,8[ <si' re sol>] si,[ <si' re fad>] do,[ <sol' do mi>] sol,[ <si' re sol>] 
%--- 30
do,8[ <la' mi' sol>] re,[ <si' fa' sol>] mi,[ <do' mi sol>] <si, sol' re'>\fermata r
<do sol'>[ <dod la'>] re[ <re' fad>] mi,[ <si' sol'>]
 << { \voiceOne s8 sol' } \\ { \voiceThree s8 re16[ red] } \\ { \voiceTwo si,8[ si'] } >>
do,8[ <do' mi>] re,[ <do' re la'>] sol,[ <sol' si re sol> <sol do mi> <sol la fad'>]
%--- 33
\KEYB
sol,16-. sol'([ sib re])  sol,,-. sol'([ re' fa])  sol,,-. sol'([ do mib])  sol,,-. sol'([ sib re])
do,, mib'[ lab do] dod,, mi'[ sol sib]  re,, re'[ sol sib] re,, re'[ fad! la]
%--- 35
sol, sol'[ sib re] sol,, sol'[ re' fa] sol,, sol'[ do mib] sol,, mib'[ sib' reb]
lab, mib'[ lab do] fa,,[ lab' fa, sol'] do, mib[ sol do] fad,, re'[ la' do]
%--- 37
sol, sol'[ sib re] sol,, sol'[ re' fa] sol,, sol'[ do mib] mib,, mib'[ sib' reb]
lab, mib'[ lab do] lab, fab'[ sib reb] lab, mib'[ lab do] sol, mib'[ sib' reb]
%--- 39
lab,-.[ <mib' lab do>-. fa,-. <fa' lab reb>-.] mib,[ <mib' lab do> mib, <mib' sol reb'>]
 lab,[ <lab' do> mib <do' mib>] re,![ <sib' re!> re, <do' re>]
sol, sol'[ sib re] sol,, sol'[ re' fa] sol,, sol'[ do mib]
 sol,, \SLURTHICK #6 \SLURPOS #'(4.5 . 2.5) sol'([ \SCREXO #'(0 . 1) \POINTTHICK si^. re])
%--- 41
\KEYA
sol,,16[ <si' re sol>8 <si re sol>16] si,16[ <si' re fad>8 <si re fad>16]
 do,16[ <sol' do mi>8 <sol do mi>16] sol,16[ <si' re sol>8 <si re sol>16]
do,16[ <la' mi' sol>8 <la mi' sol>16] dod,16[ <si' mi sol>8 <si mi sol>16]
 re,16[ <si' re sol> <la re fad> <si re sol>] re,[ <re' fad la>8 <re fad la>16]
%--- 43
sol,16[ <si re sol>8 fad16] mi16[ <la dod sol'>8 la,16] re16[ <la' re>8 <la re fad>16] re,16[ <do'! re la'>8 <do re la'>16]
sol,16[ <si' re sol>8 <si re sol>16] si,16[ <si' red fad>8 <si red fad>16]
 do,16[ <sol' do mi>8 <sol do mi>16] sol,16[ <si' re sol>8 <si re sol>16]
do,16[ <la' mi' sol>8 <la mi' sol>16] re,16[ <si'fa' sol>8 <si fa' sol>16]
 mi,16[ <do' mi sol>8 <do mi sol>16] <si, sol' re'>8^\fermata r
%--- 46
<do sol'>8[ <dod la'>] re16[ <re' fad>8 <re fad>16] mi,16[ <si' sol'>8 <si sol'>16] si,16[ <si' re sol>8 <si red la'>16]
do,16[ <do' mi>8 <do mi>16] re,16[ <la' re fad>8 <do re la'>16] sol,16[ <sol' si re sol>8 <sol si re sol>16] <sol do mi>8[ <sol la fad'>]
%--- 48
sol,8[ <si' re sol>] si,[ <si' re fad>] do,[ <sol' do mi>] sol,[ <si' re sol>]
do,[ <la' mi' sol>] dod,^\fermata [ <si' mi sol>] <re, si'>[ <re do'! re>] <sol si re>16 \clef treble sol'16([ la lad]
si16) r \clef bass << { la,16[ re ~] re } \\ { re,8([ sol16]) } >> si16([ do dod] re) r
 << { fad,16[ la] } \\ { re,8 } >> <sol, re' sol>4_\fermata
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEYA \TIME
 \set autoBeaming = ##f
 \pianoBas
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \clef bass
 \KEYA \TIME
 \IPIANOBAS
 \pianoBas
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = {
%--- 1
\DYNEXO #'(0 . -0.5) s1\pp
s1*4
%--- 6
s2. s8\decr s8\!
s1
%--- 8
\DYNEXO #'(2 . 0) s2.\ppp s8 \TSCREXO #'(0 . 1) s8-\CRESCM
s8\cr s16 s16\! s16 \PINEXO #'(-2.5 . 0) s16\decr s16 s16\! s8\p\cr s16 s16\! s16 \PINEXO #'(-2.5 . 0) s16\decr s16 s16\! 
\DYNEXO #'(1.5 . -0.5) s1\pp
s1
%--- 12
s4 \PINEXO #'(1 . 0) s8\cr s8\! s16 \PINEXO #'(-1 . 0) s8.\decr s16.. s64\! s8
s1
\PINEXO #'(2 . 0) s2.\cr \DYNEXO #'(2 . 0) s4\!\fp
\DYNEXO #'(1.5 . 0) s1\pp
s1
%--- 17
\DYNEXO #'(1.5 . 0) s1\pp
s1*4
%--- 22
s2 s16 s8\cr s16\! s8.\decr s16\!
s1
%--- 24
\DYNEXO #'(2 . 0) s1\ppp
s8.\cr s16\! s8.\decr s16\! s16 s8\cr s16\! s8.\decr s16\! 
s1*3
%--- 29
s2... s16-\CRESCM
s2. \TSCREXO #'(1 . 0.5) s8-\SFORZATO s8
\DYNEXO #'(1.5 . -0.5) s1\pp
s1
%--- 33
s2\mf s16 s8.\cr s8. s16\!
s8.\decr s16\! s2 s8 s8\p
s1
%--- 36
s2 s32 s8.\cr s32\! s8\decr s16\! s16
s1
s1\pp
s1
\DYNEXO #'(0.5 . -1) s4\p s16 \TSCREXO #'(0 . 0.5) s8.-\DIMINM s2
%--- 41
s1\pp
s1*3
%--- 45
\TSCREXO #'(0 . 0.5) s2.-\CRESCM \TSCREXO #'(1 . 0.5) s8-\SFORZATO s8
\DYNEXO #'(1.5 . -1) s1\pp
s1
\DYNEXO #'(2 . 0) s1\ppp
s1*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1
s1\pp
s1*4
%--- 6
s2. s8\p\decr s8\!\pp
s1
%--- 8
s2.\ppp s8 s8\cr
s8 s8\!\p s8\decr s8\!\pp s8\p\cr s8\!\mp s4\decr
s1\!\pp
s1
%--- 12
s4 s8\cr s8\!\p s4\decr s8\!\pp s8
s1
s4\cr \TEMPOA s8 \TEMPOB s8 \TEMPOC s8 \TEMPOD s8 \TEMPOE s16.\!\mf s16\ppppp \TEMPOB s16.\pp
\TEMPOBASE s1
s1
%--- 17
s1\pp
s1*4
%--- 22
s2 s16 s8\cr s16\!\p s8.\decr s16\!\pp
s1
%--- 24
s1\ppp
s8.\cr s16\!\pp s8.\decr s16\!\ppp s16 s8\cr s16\!\pp s8.\decr s16\!\ppp
s1*3
%--- 29
s1
s4\cr \TEMPOA s8 \TEMPOB s8 \TEMPOC s8 \TEMPOD s8 \TEMPOE s16.\!\mp s16\ppppp \TEMPOB s16.\pp
\TEMPOBASE s1
s1
%--- 33
s2\mf s16 s8.\cr s8. s16\!\f
s8.\decr s16\!\mf s2 s8 s8\p
s1
%--- 36
s2 s8.\cr s16\!\mp s8.\decr s16\!\p
s1
s1\pp
s1
s4\p s4\decr \TEMPOA  s4 \TEMPOB s8. \TEMPOD s16\!\pp
%--- 41
\TEMPOBASE s1\pp
s1*3
%--- 45
s4\cr \TEMPOA s8 \TEMPOB s8 \TEMPOC s8 \TEMPOD s8 \TEMPOE s16.\!\mp s16\ppppp \TEMPOB s16.\pp
\TEMPOA s1
s1
s1\ppp
s4 \TEMPOE s16 \TEMPOA s8. s2
s4 s16 \TEMPOB s4 \TEMPOC s8. \TEMPOE s4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant" \notePartChant
  \new Lyrics \lyricsto "chant" \poeme

  \new PianoStaff <<
   \set PianoStaff.instrumentName = "PianoForte "
   \new Staff = "pianoUp"    << \notePartPianoHaut >>
   \new Dynamics = "dynamics" \dynPartPiano
   \new Staff = "pianoDown"  << \notePartPianoBas >>
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
%                                           E. SORTIE MIDI SEULE
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
 ("ff" .    1.00)
 ("f" .     0.85)
 ("mf" .    0.75)
 ("mp" .    0.65)
 ("p" .     0.60)
 ("pp" .    0.55)
 ("ppp" .   0.50)
 ("pppp" .  0.40)
 ("ppppp" . 0.01) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME \partial 2 s2 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant       \dynMidiPiano >> }
  \new Staff = "pianoUpI"   { \SILENCE << \noteMidiPianoHautI  \dynMidiPiano >> }
  \new Staff = "pianoUpII"  { \SILENCE << \noteMidiPianoHautII \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas    \dynMidiPiano >> }
 >>
 \midi {
 \context {
   \Score
% ECHELLE DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D827-ImFruehling.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
