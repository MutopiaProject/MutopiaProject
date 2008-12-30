%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D881B-Fischerweise.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Fischerweise", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.60"
\include "italiano.ly"

\paper {
line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
#(define top-margin (/ (- paper-height (* 259 mm)) 2))
#(define bottom-margin (/ (- paper-height (* 253 mm)) 2))
between-system-padding = 7\mm

 indent = 22\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Fischerweise (D.881B)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Fischerweise (D.881B)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 dedication = \markup \center-column { \fontsize #0.5 \bold "Der Fürstin Kinsky, geborene von Kerpen gewidmet." " " }
 title = \markup { \fontsize #1.5 "Fischerweise" }
 subtitle = "Zweite Fassung"
 subsubtitle = " "
 poet = \markup { \hspace #23  \column { \center-column {
  \line { \fontsize #2 \bold "Franz Xaver Baron von Schlechta" }
  \line { \small "(1796-1875)" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.881B (Op. 96, No 4, März 1826)" }
% MUTOPIA
 mutopiatitle = "Fischerweise"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Franz von Schlechta"
 mutopiaopus = "D.881B (Op. 96, No 4)"
 mutopiainstrument = "Voice and Piano"
 date = "1826"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1589"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%  Des "\break" ont été introduits pour unifier les deux formats de sortie PDF
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME
%  B. CHANT: B1: Notes
%  C. PIANO: C1: Notes PIANO HAUT  C2: Notes PIANO BAS  C3: Dynamiques partition  C4: Dynamiques midi
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TEMPI
TEMPOBASE = \tempo 4=160
%----- TONALITÉS ET MESURES
KEY   = { \key re \major }
TIME  = { \time 2/2 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-4.0 "Etwas geschwind. " } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "trumpet"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.9
}
IPIANOBAS = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
%----- CRESCENDOS ET MARKUPS
CRESCM    = \markup { \bold \italic "cresc." }
LEISE     = \markup { \bold \italic "leise" }
%----- DYNAMIQUE SPECIALE
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- REPOSITIONNEMENT DES MARKUP
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poemeA = \lyricmode {
\set fontSize = #-.5

Den __ Fi -- scher __ fech -- ten __ Sor -- gen
und __ Gram und __ Leid nicht an;
er -- löst am frü -- hen Mor -- gen
mit leich -- tem __ Sinn den Kahn, mit __ leich -- tem __ Sinn den Kahn.

Da la -- gert rings noch Frie -- de
auf Wald und Flur und __ Bach,
er ruft mit sei -- nem Lie -- de
die __ gold’ -- ne Son -- ne wach,
er __ ruft mit sei -- nem Lie -- de
die gold’ -- ne Son -- ne wach.

Da la -- gert __ rings __ noch __ Frie -- de
auf Wald und Flur und Bach,
er ruft __ mit __ sei -- nem __ Lie -- de
die gold’ -- ne Son -- ne wach.
}

poemeB = \lyricmode {
\set fontSize = #-.5

Er __ singt zu __ sei -- nem __ Wer -- ke
aus __ vol -- ler __ fri -- scher Brust,
die __ Ar -- beit gibt ihm Stär -- ke,
die Stär -- ke __ Le -- bens -- lust, die __ Stär -- ke __ Le -- bens -- lust.

Bald wird ein bunt Ge -- wim -- mel
in al -- len Tie -- fen __ laut
und plät -- schert durch den Him -- mel,
der __ sich im Was -- ser baut,
und __ plät -- schert durch den Him -- mel,
der sich im Was -- ser baut.

Bald wird __ ein __ bunt __ Ge -- wim -- mel
in al -- len Tie -- fen __ laut
und plät -- schert __ durch __ den __ Him -- mel,
der sich im Was -- ser baut.


Doch __ wer ein Netz __ will __ stel -- len,
braucht __ Au -- gen __ klar und gut,
muss __ hei -- ter gleich den Wel -- len
und frei sein __ wie die Fluth, und frei sein __ wie die Fluth,.

Dort an -- gelt auf der __ Brü -- cke
die Hir -- tin, Schlau -- er Wicht!
ent -- sa -- ge dei -- ner Tü -- cke,
den Fisch be -- trügst du nicht.

Dort an -- gelt __ auf __ der __ Brü -- cke
die Hir -- tin, Schlau -- er Wicht!
ent -- sa -- ge __ dei -- ner __ Tü -- cke,
den Fisch be -- trügst du nicht.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% INTRO
chantA = \relative do' {
%--- 1
R1*2
}

%%%%%%%%%%%%%%%%%%%% CORPS AVEC REPRISE IDENTIQUE
chantB = \relative do' { \oneVoice
%--- 3
\bar "|:"
R1*7
%--- 10
r2 r4 fad8[ sol]
%--- 11
la4 la8[ sol] fad4 mi8[ fad]
sol2 mi4 mi8[ fad]
sol4 sol8[ la] si4 fad
sol2 r4 sol8[ la]
si4 la sol fad
%--- 16
fad2 mi4 la
la4 sol8[ fad] mi4 la
fad2 r4 fad8[ sol]
la4 sol8[ fad] mi4 la
re,2 r2
%--- 21
R1*2
r2 r4 mi
la4 la la si
dod2 la4 mi
%--- 26
la4 la la dod8[ si]
la2 r4 la
re4 re re re
re2 si4 sol8[ la]
si4 sol fad la
%--- 31
sol2 r4 mi8[ fad]
sol4 si si mi
re2 dod4 re
la4 fad mi la
%--- 35
re,2 r4 \TSCREXO #'(-0.5 . 0) re'^\LEISE
dod8[ mi] re[ dod] dod[ mi] re[ dod]
re2 la4 la
la4 la la la
%--- 39-43
fad2 r4 re'
dod8[ mi] re[ dod] dod[ mi] re[ dod]
re2 la4 la
la4 la la la
re,2 r2
\bar ":|"
}

%%%%%%%%%%%%%%%%%%%% DERNIERE PARTIE
chantC = \relative do' { \oneVoice
%--- 44-50
R1*7
%--- 51
r2 r4 fad8[ sol]
la4 la8[ sol] fad4 mi8[ fad] \break
sol2 mi4 mi8[ fad]
%--- 54
sol4 sol8[ la] si4 fad
sol2 r4 sol8[ la]
si4 la sol fad
fad2 mi4 la
la4 sol8[ fad] mi4 la
%--- 59
fad2 r4 la
la4 sol8[ fad] mi4 la
re,2 r2
R1*2
%--- 64
R1
r2 r4 si'
dod4. la8 mi4 fad8[ sold]
la2 la4 si
dod2 la4 r
%--- 69
r4 re2 re4
re2. si4
si4 sol fad la
sol4 mi r mi8[ fad]
sol4 si si mi
%--- 74
re2 dod4 re->
la4 fad mi la
re,2 r4 \TSCREXO #'(-1 . 0) re'^\LEISE
dod8[ mi] re[ dod] dod[ mi] re[ dod]
re2 la4 la
%--- 79
si2 la4 r
r4 fad8 fad la4 re4
dod8[ mi] re[ dod] dod[ mi] re[ dod]
re2 la4 re
%--- 83
la4 la la la
re,2 r2
%--- 85-92
R1*8
\bar "|."
}

chantPart = { \chantA \chantB \chantC }
chantMidi = { \chantA \chantB \chantB \chantC }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chantPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEY \TIME
 \ICHANT
 \chantMidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES PARTITION/MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartChant = { }

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiChant = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
%%%%%%%%%%%%%%%%%%%% INTRO
pianoHautIA = \relative do' { \oneVoice
%--- 1-2
<fad la>8[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<fad' la>[ la, <fad' la> la,]  <fad' la>[ la, <fad' la> la,]
}

%%%%%%%%%%%%%%%%%%%% CORPS AVEC REPRISE IDENTIQUE
pianoHautIB = \relative do' { \oneVoice
%--- 3
<sol' si>8[ si, <sol' si> si,] <sol' si>[ si, <sol' si> si,]
<fad' la>[ la, <fad' la> la,]  <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,]  <sol' la>[ la, <sol' la> la,]
%--- 6
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' si>[ si, <sol' si> si,] <sol' si>[ si, <sol' si> si,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <re fad> <mi sol>]
%--- 11
<fad la>[ la, <fad' la> <mi sol>] <re fad>[ la <dod mi> <re fad>]
<mi sol>[ la, <mi' sol> la,]      <dod mi>[ la mi' fad]
<mi sol>[ si <mi sol> <fad la>]   <sol si>[ si, <red fad> si] 
<mi sol>[ si mi <red fad>]        <mi sol>8[ si <mi sol> <fad la>]
<sol si>[ si, <fad' la> si,]      <mi sol>[ si <re fad> si] 
%--- 16
<re fad>[ la <re fad> la] <dod mi>[ la <dod mi la> la] \voiceOne
<re la'> la sol' fad] <re mi>[ la <dod mi la> la]
<re fad> la fad' sol] la4 fad8[ sol]
la4 sol8[ fad] <re mi>[ la <dod mi la> la]
<re fad>[ la fad' sol] la4 sol8[ la]
%--- 21
si4 la8[ sol] <mi sol>[ si <red fad> si]
<mi sol>[ si sol' la] si4 fad8[ sold]
la4 sold8[ fad] <dod la'>[ mi <re sold> mi]
<dod la'>8[ mi <dod la'> mi] <dod la'>[ mi <re sold> mi]
<dod la'>8[ mi <dod la'> mi] <dod la'>[ mi <re sold> mi]
%--- 26
<dod la'>8[ mi <dod la'> mi] <dod la'>[ mi <re sold> mi]
<dod la'>8[ mi <dod la'> mi] <dod la'>[ mi <dod la'> mi]
<la re>[ re, <la' re> re,] <la' re>[ re,] re'4
<si re>8[ re, <si' re> re,] <sol si>[ re <mi sol> <fad la>]
<sol si>[ si, <mi sol> si] <mi fad>[ si <red fad> si]
%--- 31
<mi sol>[ si mi <red fad>] <mi sol>[ si mi <red fad>]
<mi sol>[ si <mi si'> si] <mi si'>[ si <si' mi> mi,]
<si' re!>[ mi, <si' re> mi,] <la dod>[ mi <la re> re,]
<fad la>[ la, <re fad> la] <re mi>[ la <dod mi> la]
%--- 35
<re fad>[ la <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
%--- 39-43
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
}

%%%%%%%%%%%%%%%%%%%% DERNIERE PARTIE
pianoHautIC = \relative do' { \oneVoice
%--- 44
<sol' si>8[ si, <sol' si> si,] <sol' si>[ si, <sol' si> si,]
<fad' la>[ la, <fad' la> la,]  <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,]  <sol' la>[ la, <sol' la> la,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' si>[ si, <sol' si> si,] <sol' si>[ si, <sol' si> si,]
%--- 49
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <re fad> <mi sol>]
<fad la>[ la, <fad' la> <mi sol>] <re fad>[ la <dod mi> <re fad>]
<mi sol>[ la, <mi' sol> la,]      <dod mi>[ la mi' fad]
%--- 54
<mi sol>[ si <mi sol> <fad la>]   <sol si>[ si, <red fad> si] 
<mi sol>[ si mi <red fad>]        <mi sol>8[ si <mi sol> <fad la>]
<sol si>[ si, <fad' la> si,]      <mi sol>[ si <re fad> si] 
<re fad>[ la <re fad> la] <dod mi>[ la <dod mi la> la] \voiceOne
la'4 sol8[ fad] <re mi>[ la <dod mi la> la]
%--- 59
<re fad> la fad' sol] la4 fad8[ sol]
la4 sol8[ fad] <re mi>[ la <dod mi la> la]
<re fad>[ la fad' sol] la4 sol8[ la]
si4 la8[ sol] <mi sol>[ si <red fad> si]
<mi sol>[ si sol' la] si4 fad8[ sold]
%--- 64
la4 sold8[ fad] <dod la'>[ mi <re sold> mi]
<dod la'>8[ mi <dod la'> mi] <dod la'>[ mi <re sold> mi]
<dod la'>8[ mi <dod la'> mi] <dod la'>[ mi <re sold> mi]
<dod la'>8[ mi <dod la'> mi] <dod la'>[ mi <re sold> mi]
<dod la'>8[ mi <dod la'> mi] <dod la'>[ mi <dod la'> mi]
%--- 69
<la re>[ re, <la' re> re,] <la' re>[ re,] re'4
<si re>8[ re, <si' re> re,] <sol si>[ re <sol si> si,]
<sol' si>[ si, <mi sol> si] <mi fad>[ si <red fad> si]
<mi sol>[ si mi <red fad>] <mi sol>[ si mi <red fad>]
<mi sol>[ si <mi si'> si] <mi si'>[ si <si' mi> mi,]
%--- 74
<si' re!>[ mi, <si' re> mi,] <la dod>[ mi <la re> re,]
<fad la>[ la, <re fad> la] <re mi>[ la <dod mi> la]
<re fad>[ la <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
%--- 79
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
%--- 83
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' si>8[ si, <sol' si> si,] <sol' si>[ si, <sol' si> si,]
<fad' la>[ la, <fad' la> la,]  <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,]  <sol' la>[ la, <sol' la> la,]
%--- 88-92
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' si>[ si, <sol' si> si,] <sol' si>[ si, <sol' si> si,]
<fad' la>[ la, <fad' la> la,] <fad' la>[ la, <fad' la> la,]
<sol' la>[ la, <sol' la> la,] <sol' la>[ la, <sol' la> la,]
<fad' la>1
}

pianoHautIPart = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIB \pianoHautIC
}
pianoHautIMidi = \context Staff \new Voice { \voiceOne
 \pianoHautIA \pianoHautIB \pianoHautIB \pianoHautIC
}


%%%%%%%%%%%%%%%%%%%% VOIX II
%%%%%%%%%%%%%%%%%%%% INTRO
pianoHautIIA = \relative do' { \voiceTwo
%--- 1-2
s1*2
}

%%%%%%%%%%%%%%%%%%%% CORPS AVEC REPRISE IDENTIQUE
pianoHautIIB = \relative do' { \voiceTwo
%--- 3
s1*14
%--- 17
s4 re s2
s4 re~ re8[ la] re4~
re8[ la] re4 s2
s4 re~ re8[ la] mi'4~
%--- 21
mi8[ si] mi4 s2
s4 mi~ mi8[ si] re4~
re8[ la] re4 s2
%--- 24
s1*4
%--- 28
s2. sol8[ la]
%--- 29-43
s1*15
}

%%%%%%%%%%%%%%%%%%%% DERNIERE PARTIE
pianoHautIIC = \relative do' { \voiceTwo
%--- 44-57
s1*14
%--- 58
re8[ la] re4 s2
s4 re~ re8[ la] re4~
re8[ la] re4 s2
s4 re~ re8[ la] mi'4~
mi8[ si] mi4 s2
s4 mi~ mi8[ si] re4~
%--- 64
re8[ la] re4 s2
%--- 65-68
s1*4
%--- 69
s2. sol8[ la]
%--- 70-92
s1*23
}

pianoHautIIPart = \context Staff \new Voice { \voiceTwo
 \pianoHautIIA \pianoHautIIB \pianoHautIIC
}
pianoHautIIMidi = \context Staff \new Voice { \voiceTwo
 \pianoHautIIA \pianoHautIIB \pianoHautIIB \pianoHautIIC
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 << \pianoHautIPart \pianoHautIIPart >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIME
 \IPIANOHAUT
 << \pianoHautIMidi \pianoHautIIMidi >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
%%%%%%%%%%%%%%%%%%%% INTRO
pianoBasIA = \relative do, { \oneVoice
%--- 1-2
R1
r2 r4 <re re'>
}

%%%%%%%%%%%%%%%%%%%% CORPS AVEC REPRISE IDENTIQUE
pianoBasIB = \relative do { \voiceOne
%--- 3
re2 re \oneVoice
<re, re'>2 r4 re''
dod8[ mi re dod] dod8[ mi re dod] 
%--- 6
re2 r4 <re,, re'> \voiceOne
re'2 re \oneVoice
<re, re'>2 r4 re''
dod8[ mi re dod] dod8[ mi re dod] 
re2 r4 <re,, re'>
%--- 11
<re re'>2 r4 <re re'>
<la la'>2 r4 <sol sol'>
<si si'>2 <si si'>4 <si si'>
<mi mi'>2 r4 <mi mi'>
mi4( fad sol sold)
%--- 16
la2. sol!4
fad4 mi8[ re] la'4-. la,-.
re4 re'8[ mi] fad r re,[ mi]
fad4 mi8[ re] la'4-. la,-.
re4 re'8([ mi] fad) r mi,([fad]
%--- 21
sol4) fad8[ mi] si'4-. si,-.
mi4 mi'8([ fad] sol) r re,[ mi]
fad4 mi8[ re] mi4-. mi-.
la,8 mi''([ <dod la'> mi]) <dod la'>-. r <mi si'>-. r
<la,, la'>8 mi''([ <dod la'> mi]) <dod la'>-. r <mi si'>-. r
%--- 26
<la,, la'>8 mi''([ <dod la'> mi]) <dod la'>-. r <mi si'>-. r
<la,, la'>8 mi''([ <dod la'> mi]) <dod la'> r sol!4
fad4 fad fad mi8[ fad]
sol2. <si, si'>4
<si si'>4 <si si'> <si si'> <si si'>
%--- 31
<mi mi'>4 mi'8([ <si fad'>] <mi sol>) r8 r4
mi,4 sol sol <sol, sol'>
<sold sold'>2( <la la'>4) fad'8([ sol!]
la4) <la, la'> <la la'> <la la'>
%--- 35
<re re'>2 r4 <re la'>
<re la'>2 r4 <re la'>
<re la'>2 r4 \clef treble re'''-.
dod8[ mi re dod] dod[ mi re dod]
%--- 39-43
re2 r4 \clef bass <re,,, la'>
<re la'>2 r4 <re la'>
<re la'>2 r4 \clef treble re'''-.
dod8[ mi re dod] dod[ mi re dod]
re2 r4 \clef bass <re,,, re'>
}

%%%%%%%%%%%%%%%%%%%% DERNIERE PARTIE
pianoBasIC = \relative do { \voiceOne
%--- 44
re2 re \oneVoice
<re, re'>2 r4 re''
dod8[ mi re dod] dod8[ mi re dod] 
re2 r4 <re,, re'> \voiceOne
re'2 re \oneVoice
%--- 49
<re, re'>2 r4 re''
dod8[ mi re dod] dod8[ mi re dod] 
re2 r4 <re,, re'>
<re re'>2 r4 <re re'>
<la la'>2 r4 <sol sol'>
%--- 54
<si si'>2 <si si'>4 <si si'>
<mi mi'>2 r4 mi'
mi,4( fad sol sold)
la2. sol!4(
fad4) mi8[ re] la'4-. la,-.
%--- 59
re4 re'8([ mi] fad) r re,[ mi]
fad4 mi8[ re] la'4-. la,-.
re4 re'8([ mi] fad) r mi([fad]
sol4) fad8[ mi] si4 si
mi8 r mi([fad] sol) r re,[ mi]
%--- 64
fad4 mi8[ re] mi4-. mi-.
<la, la'>8 mi''([ <dod la'> mi]) <dod la'>-. r <mi si'>-. r
<la,, la'>8 mi''([ <dod la'> mi]) <dod la'>-. r <mi si'>-. r
<la,, la'>8 mi''([ <dod la'> mi]) <dod la'>-. r <mi si'>-. r
<la,, la'>8 mi''([ <dod la'> mi]) <dod la'> r sol!4
%--- 69
fad4 fad fad mi8[ fad]
sol2. <si, si'>4
<si si'>4 <si si'> <si si'> <si si'>
<mi mi'>4 mi'8([ <si fad'>] <mi sol>) r8 r4
mi,4 sol sol <sol, sol'>
%--- 74
<sold sold'>2( <la la'>4) fad'8([ sol!]
la4) <la, la'> <la la'> <la la'>
<re re'>2 r4 <re la'>
<re la'>2 r4 <re la'>
<re la'>2 r4 \clef treble re'''
%--- 79
dod8[ mi re dod] dod[ mi re dod]
re2 r4 \clef bass <re,,, la'>
<re la'>2 r4 <re la'>
<re la'>2 r4 \clef treble re'''
%--- 83
dod8[ mi re dod] dod[ mi re dod]
re2 r4 \clef bass <re,,, re'> \voiceOne
re'2 re \oneVoice
<re, re'>2 r4 re''
dod8[ mi re dod] dod8[ mi re dod] 
%--- 88-92
re2 r4 <re,, re'> \voiceOne
re'2 re \oneVoice
<re, re'>2 r4 re''
dod8[ mi re dod] dod8[ mi re dod] 
re1
}

pianoBasIPart  = \context Staff \new Voice { \voiceOne
 \pianoBasIA \pianoBasIB \pianoBasIC
}

pianoBasIMidi  = \context Staff \new Voice { \voiceOne
 \pianoBasIA \pianoBasIB \pianoBasIB \pianoBasIC
}


%%%%%%%%%%%%%%%%%%%% VOIX II
%%%%%%%%%%%%%%%%%%%% INTRO
pianoBasIIA = \relative do { \voiceTwo
%--- 1-2
s1*2
}

%%%%%%%%%%%%%%%%%%%% CORPS AVEC REPRISE IDENTIQUE
pianoBasIIB = \relative do { \voiceTwo
%--- 3
sol8[ si la sol] sol8[ si la sol] 
s1*3
%--- 7
sol8[ si la sol] sol8[ si la sol] 
%--- 8-43
s1*36
}

%%%%%%%%%%%%%%%%%%%% DERNIERE PARTIE
pianoBasIIC = \relative do { \voiceTwo
%--- 44
sol8[ si la sol] sol8[ si la sol] 
s1*3
%--- 48
sol8[ si la sol] sol8[ si la sol] 
%--- 49-84
s1*36
%--- 85
sol8[ si la sol] sol8[ si la sol] 
s1*3
%--- 89
sol8[ si la sol] sol8[ si la sol] 
%--- 90-92
s1*3
}

pianoBasIIPart  = \context Staff \new Voice { \voiceTwo
 \pianoBasIIA \pianoBasIIB \pianoBasIIC
}

pianoBasIIMidi  = \context Staff \new Voice { \voiceTwo
 \pianoBasIIA \pianoBasIIB \pianoBasIIB \pianoBasIIC
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEY \TIME
 \set autoBeaming = ##f
 << \pianoBasIPart \pianoBasIIPart >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEY \TIME
 \IPIANOBAS
 << \pianoBasIMidi \pianoBasIIMidi >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 1 INTRO
s1\mf
s1
%--- 3 CORPS
s1*3
%--- 6
s2. s4\pp
s1*3
s2. s4\p
%--- 11
s1*12
%--- 23
s2. s4\pp
s1*3
%--- 27
s2. \TSCREXO #'(-1.5 . 0) s4-\CRESCM
s1*3
%--- 31
s2. s4\f
s4 s16 s8.\cr s4. s8\!
s4.\decr s8\! s2
s1
%--- 35
s8 s4.\pp s2
s1*7
%--- 43
s2. s4\mf
%--- 44 DERNIERE PARTIE
s1*3
%--- 47
s2. s4\pp
s1*3
s2. s4\p
%--- 52-63
s1*12
%--- 64
s2. s4\pp
s1*4
%--- 69
s1-\CRESCM
s1*2
%--- 72
s2. s4\f
s2 s16 \PINEXO #'(-1 . 0) s4.\cr s32 s32\!
\PINEXO #'(0.5 . 0) s4.\decr s8\! s4 \TSCREXO #'(1 . 0.5) s4-\SFORZATO
s1
%--- 76
s2 s2\pp
s1*7
%--- 84
s2. s4\mf
s1*3
%--- 88-92
s2. s4\pp
s1*4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1 INTRO
\TEMPOBASE
s1\mf
s1
%--- 3 CORPS AVEC REPRISE IDENTIQUE
\repeat unfold 2 {
s1*3
s2. s4\pp
s1*3
s2. s4\p
%--- 11
s1*12
%--- 23
s2. s4\pp
s1*3
%--- 27
s2. s4\cr
s1*3
%--- 31
s2. s4\!\f
s4 s2\cr s4\!\ff\decr
s4. s8\!\f s2
s1
%--- 35
s2\decr s2\!\pp
s1*7
%--- 43
s2. s4\mf } % fin du \repeat unfold 2
%--- 44 DERNIERE PARTIE
s1*3
%--- 47
s2. s4\pp
s1*3
s2. s4\p
%--- 52-63
s1*12
%--- 64
s2. s4\pp
s1*4
%--- 69
s1\cr
s1*2
%--- 72
s2. s4\!\f
s2 s4\cr s4\!\ff\decr
s4. s8\!\f s2
s1
%--- 76
s2\decr s2\!\pp
s1*7
%--- 84
s2. s4\mf
s1*3
%--- 88-92
s2. s4\pp
s1*4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant"  << \notePartChant \dynPartChant >>
  \new Lyrics \lyricsto "chant" \poemeA
  \new Lyrics \lyricsto "chant" \poemeB

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
   \override SpacingSpanner #'spacing-increment = #1.6
   \override TextScript #'font-size = #1
  }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \CRESC works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 1.5)
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

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME s1 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiPiano >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
 >>
 \midi { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D881B-Fischerweise.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
