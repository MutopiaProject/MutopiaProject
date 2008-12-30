%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D774.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                   FRANZ SCHUBERT: Gesang "Auf dem Wasser zu singen", für eine Singstimme mit Klavierbegleitung
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.34"
\include "italiano.ly"

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")
 line-width = 180\mm
 between-system-padding = #1
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Auf dem Wasser zu singen (D 774)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Auf dem Wasser zu singen (D 774)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Auf dem Wasser zu singen" }
 subtitle = " "
 poet = \markup { \line { \column { { \bold "Graf Friedrich Leopold zu Stolberg-Stolberg" } { \small "(1750-1819)" }
        { \bold \italic "“Für meine Agnes”"} } } }
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 774 (Op. 72, 1823)" }
% MUTOPIA
 mutopiatitle = "Auf dem Wasser zu singen"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Graf Friedrich Leopold zu Stolberg-Stolberg (1750-1819)"
 mutopiaopus = "D.774 (Op. 72)"
 mutopiainstrument = "Voice and Piano"
 date = "1823"
 source = "C.F. Peters (Band I)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = "A source is freely available at http://www.dlib.indiana.edu/variations/scores/"
 footer = "Mutopia-2007/10/13-1052"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME
%  B. NOTES: B1. MÉLODIE  B21. PIANO HAUT  B22. PIANO BAS
%  C. DYNAMIQUES PARTITION: C1. MÉLODIE  C2. PIANO
%  D. DYNAMIQUES MIDI: D1. MÉLODIE  D2. PIANO
%  E. SORTIE PARTITION
%  F. SORTIE MIDI
%
% 	                BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%----- TONALITÉ ET MESURE
KEYTIME = { \key fa \minor \time 6/8 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-4 \italic "Mäßig geschwind." } }
%----- VARIER LA HAUTEUR D'UNE LIAISON
SLURINSIDE = \once \override Script #'avoid-slur = #'inside
%----- DÉPLACER UNE DYNAMIQUE VERS LA DROITE, LA GAUCHE
DYNEXO = #(define-music-function (parser location beg-end) (pair?)
           #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO = #(define-music-function (parser location beg-end) (pair?)
           #{ \once \override Hairpin #'extra-offset = #$beg-end #})
DECRESC = { \set decrescendoText = \markup { \italic "decresc." } \set decrescendoSpanner = #'dashed-line }
%----- VARIER LA HAUTEUR D'UNE BARRE DE LIGATURE
BEAMPOS = #(define-music-function (parser location beg-end) (pair?)
            #{ \once \override Beam #'positions = #$beg-end #})
%----- MARKUPS
SIMILE  = \markup { \italic \bold "simile" }
SSIMILE = \markup { \italic \bold "sempre simile" }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME
%  B. NOTES: B1. MÉLODIE  B21. PIANO HAUT  B22. PIANO BAS
%  C. DYNAMIQUES PARTITION: C1. PIANO
%  D. DYNAMIQUES MIDI: D1. MÉLODIE  D2. PIANO
%  E. SORTIE PARTITION
%  F. SORTIE MIDI
%
% 	                BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  La Mélodie, le Piano et les Dynamiques sont découpées différemment, selon qu'elles sont répétées à l'identique
% ou qu'elles varient.
%  Le poème comprend trois strophes en continu.
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  A. POEME
%  B. MELODIE
%     B1. Notes
%     B2. Dynamiques pour la sortie Partition
%     B3. Dynamiques pour la sortie Midi
%  C. PIANO
%     C1. PIANO HAUT: Notes
%     C2. PIANO BAS: Notes
%     C3. PIANO: Dynamiques pour la sortie Partition
%     C4. PIANO: Dynamiques pour la sortie Midi
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
% 	                BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITON, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
 \set fontSize = #-.5

%STROPHE 1

%9
Mit -- ten im Schim -- mer der spie -- geln -- den Wel -- len
Glei -- tet, wie Schwä -- ne, der wan -- ken -- de Kahn:
%13
Ach, auf der Freu -- de sanft -- schim -- mern -- den Wel -- len
Glei -- tet die See -- le da -- hin wie der Kahn,
%17
Ach, auf der Freu -- de sanft -- schim -- mern -- den Wel -- len
Glei -- tet die See -- le da -- hin wie der Kahn;
%. . . . .
%22
Denn von dem Him -- mel her -- ab auf die Wel -- len
Tan -- zet das A -- bend -- rot rund um den Kahn,
%26 29
Tan -- zet das A -- bend -- rot rund um den Kahn.

%STROPHE 2

%35
Ü -- ber den Wip -- feln des west -- li -- chen Hai -- nes
Win -- ket uns freund -- lich der röt -- li -- che Schein;
%39
Un -- ter den Zwei -- gen des öst -- li -- chen Hai -- nes
Säu -- selt der Kal -- mus im röt -- li -- chen Schein;
%43
Un -- ter den Zwei -- gen des öst -- li -- chen Hai -- nes
Säu -- selt der Kal -- mus im röt -- li -- chen Schein;
%. . . . .
%48
Freu -- de des Him -- mels und Ru -- he des Hai -- nes
At -- met die Seel im er -- rö -- ten -- den Schein.
%52 55
At -- met die Seel im er -- rö -- ten -- den Schein.

%STROPHE 3

%60
Ach, es ent -- schwin -- det mit tau -- i -- gem Flü -- gel
Mir auf den wie -- gen -- den Wel -- len die Zeit;
%64
Mor -- gen ent -- schwin -- de mit schim -- mern -- dem Flü -- gel
Wie -- der wie ges -- tern und heu -- te die Zeit,
%68
Mor -- gen ent -- schwin -- de mit schim -- mern -- dem Flü -- gel
Wie -- der wie ges -- tern und heu -- te die Zeit,
%. . . . .
%73
Bis ich auf hö -- he -- rem strah -- len -- dem Flü -- gel
Sel -- ber ent -- schwin -- de der wech -- seln -- den Zeit,
%77 80
Sel -- ber ent -- schwin -- de der wech -- seln -- den Zeit.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B1. NOTES MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%INTRO

meloNoteIntro = \relative do {

%1 - 8
 R2.*8
}

%CORPS

meloNoteCorps = \relative do' {

%9 (+26) 35 61
 mib8. fab16 mib8 mib lab mib
%10
 \BEAMPOS #'(3.5 . 4.5) mib16[( dob')] dob[( sib)] sib[( lab)] lab4 mib8
 mib8. fab16 mib8 mib sib' mib,
 mib16[( reb')] reb[( dob)] dob[( sib)] sib4.
%13
 dob16[( mib)] mib[( reb)] reb[( dob)] dob8. solb16 solb8
 solb16[( fab')] fab[( mib)] mib[( reb)] reb4 solb,8
 mib'8. mib16  mib8 mib8. dob16 lab8
%16
 sib mib sol,! lab4.
 solb16[( mib')] mib[( reb)] reb[( dob)] dob8. solb16 solb8
 solb16[( fab')] fab[( mib)] mib[( reb)] reb4 solb,8
%19
 mib'8. mib16 mib8 mib8. dob16 lab8
 sib mib sol,! lab4.
 R2.
%22
 mib'8.fab16 mib8 solb8. fab16 mib8
 mib8. reb16 mib8 fab4 reb8
 reb8. lab16 lab8 fab'8. mib16 reb8
%25
 reb8. dob16 sib8 lab4.
 mib'2. ~
 mib4. ~ mib8. reb16 do!8
%28
 fa!8. mib16 reb8 reb8. do16 sib8
 lab4 r8 r4 r8
 R2.
%31 (+26) 57 83
 R2.
 R2.
 R2.
}

%ALTERNATIVE 1-2 : 34 60

meloNoteAlter = \relative do' {
 R2.
}
 
%FIN : 86 - 87

meloNoteFin = \relative do' {
 R2. R2.
 \bar "|."
}

meloNoteCorpsA = { \meloNoteCorps \meloNoteAlter }
meloNoteCorpsB = { \meloNoteCorps \meloNoteAlter }
meloNoteCorpsC = { \meloNoteCorps \meloNoteFin }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
meloNotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \meloNoteIntro \meloNoteCorpsA \meloNoteCorpsB \meloNoteCorpsC
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
meloNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.6
 \meloNoteIntro \meloNoteCorpsA \meloNoteCorpsB \meloNoteCorpsC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B21. NOTES PIANO HAUT:Intro, Corps A, Corps B, Corps C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%INTRO

pianoHautNoteIntro = \relative do' {

%1
 \stemUp
 mib16[( mib') mib( reb) reb( dob)] dob[( sib) sib( lab) lab( mib)]
 mib[( mib') mib( reb) reb( dob)] dob[( sib) sib( lab) lab( mib)]
 mib _\SIMILE [ fab' fab mib mib reb] reb[ dob dob sib sib mib,] \break
%4
 mib[ fab' fab mib mib reb] reb[ dob dob sib sib mib,]
 mib[ mib' mib reb reb dob] dob[ sib sib lab lab mib]
 \grace lab16 \stemNeutral lab'16[ solb solb fab fab mib] mib[ re re mib mib fab] \break
%7-8
 fab(->[ mib reb! dob sib lab] \SLURINSIDE mib'->[ reb dob sib lab sol!]) 
 sib[( lab mib dob mib sol)] lab8 r r
}

%CORPS A

pianoHautNoteCorpsA = \relative do' {

%9
 mib16[( mib') mib( reb) reb( dob)] dob[( sib) sib( lab) lab( mib)] \break
%10
 mib _\SSIMILE [ mib' mib reb reb dob] dob[ sib sib lab lab mib]
 mib[ fab' fab mib mib reb] reb[ dob dob sib sib mib,]
 mib[ fab' fab mib mib reb] reb[ dob dob sib sib mib,] \break
%13
 solb[ solb' solb fab fab mib] mib[ reb reb dob dob solb]
 solb[ lab' lab solb solb fab] fab[ mib mib reb reb solb,] \break
 solb[ solb' solb mib mib dob] lab[ lab' lab mib mib dob]
%16
 sib[ sib' sib sol! sol mib] lab,[ lab' lab mib mib dob]
 solb[ solb' solb fab fab mib] mib[ reb reb dob dob solb] \break
 solb[ lab' lab solb solb fab] fab[ mib mib reb reb solb,]
%19
 solb[ solb' solb mib mib dob] lab[ lab' lab mib mib dob]
 sib[ sib' sib sol! sol mib] lab,[ lab' lab mib mib dob] \break
 la[ solb' solb fab fab mib] mib[ re re mib mib la,]
%22
 la[ solb' solb fab fab mib] mib[ re re mib mib la,]
 la[ solb' solb fab fab mib] lab,[ fab' fab mib mib reb] \break
 lab[ fab' fab mib mib reb] lab[ lab' lab solb solb fab]
 %25
 mib,[ fab' fab mib mib reb] mib,[ dob' dob sib sib lab]
 mib[ reb' reb dob dob sib] mib,[ dob' dob sib sib lab] \break
 mib[ reb' reb do! do sib] mib,[ do' do sib sib lab]
%28
 fa![ reb' reb do do sib] sol[ fa' fa mib mib reb]
 << { do16[( do') do( sib) sib( lab)] mib[( lab) lab( sol) sol( mib)] } \\
    { do8[ <do mib> <do mib>] <do mib>[ do do] } >> \break
 <reb mib>16[( <sol, fa'>) <sol fa'>( <reb' mib>) <reb mib>( <sol, fa'>)]
  <sol fa'>[( <reb' mib>) <reb mib>( <sol, fa'>) <sol fa'>( <reb' mib>)]
%31-34
 << { <do mib>16[( do') do( sib) sib( lab)] mib[( lab) lab( sol) sol( fa)] } \\
    { do8[ do do] do[ do do] } >>
 <reb mib>16[( <sol, fa'>) <sol fa'>( <reb' mib>) <reb mib>( <sol, fa'>)]
  <sol fa'>[( <reb' mib>) <reb mib>( <sol, fa'>) <sol fa'>( <reb' mib>)] \break
 << { lab16[( do) do( lab) lab( do)] do[( lab) lab( do) do( lab)] } \\
    { <do, mib>8[ <do mib> <do mib>] <do mib>[ <do mib> <do mib>] } >>
%%%
 << { lab'16[( dob) dob( lab) lab( dob)] dob[( lab) lab( dob) dob( lab)] } \\
    { <dob, mib>8[ <dob mib> <dob mib>] <dob mib>[ <dob mib> <dob mib>] } >>
}

%CORPS B

pianoHautNoteCorpsB = \relative do' {

%35
 mib16[( mib') mib( reb) reb( dob)] dob[( sib) sib( lab) lab( mib)] \break
%36
 mib[( mib') mib( reb) reb( dob)] dob[( sib) sib( lab) lab( mib)]
 mib[( fab') fab( mib) mib( reb)] reb[( dob) dob( sib) sib( mib,)]
 mib[ fab' fab mib mib reb] reb[ dob dob sib sib mib,] \break
%39
 solb[ solb' solb fab fab mib] mib[ reb reb dob dob solb]
 solb[ lab' lab solb solb fab] fab[ mib mib reb reb solb,] \break
 solb[ solb' solb mib mib dob] lab[ lab' lab mib mib dob]
%42
 sib[ sib' sib sol! sol mib] lab,[ lab' lab mib mib dob] \break
 solb[ solb' solb fab fab mib] mib[ reb reb dob dob solb]
 solb[ lab' lab solb solb fab] fab[ mib mib reb reb solb,] \break
%45
 solb[ solb' solb mib mib dob] lab[ lab' lab mib mib dob]
 sib[ sib' sib sol! sol mib] lab,[ lab' lab mib mib dob]
 la[( solb') solb( fab) fab( mib)] mib[( re) re( mib) mib( la,)] \break
%48
 la[( solb') solb( fab) fab( mib)] mib[( re) re( mib) mib( la,)]
 la[ solb' solb fab fab mib] lab,[ fab' fab mib mib reb] 
 lab[ fab' fab mib mib reb] lab[ lab' lab solb solb fab] \break
 %51
 mib,[ fab' fab mib mib reb] mib,[ dob' dob sib sib lab]
 mib[ reb' reb dob dob sib] mib,[ dob' dob sib sib lab]
 mib[ reb' reb do! do sib] mib,[ do' do sib sib lab] \break
%54
 fa![ reb' reb do do sib] sol[ fa' fa mib mib reb]
 << { do16[ do' do sib sib lab] mib[ lab lab sol sol mib] } \\
    { do8[ <do mib> <do mib>] <do mib>[ do do] } >>
 <reb mib>16[ <sol, fa'> <sol fa'> <reb' mib> <reb mib> <sol, fa'>] <sol fa'>[ <reb' mib> <reb mib> <sol, fa'> <sol fa'> <reb' mib>] \break
%57-60
 << { <do mib>16[ do' do sib sib lab] mib[ lab lab sol sol fa] } \\
    { do8[ do do] do[ do do] } >>
 <reb mib>16[ <sol, fa'> <sol fa'> <reb' mib> <reb mib> <sol, fa'>] <sol fa'>[ <reb' mib> <reb mib> <sol, fa'> <sol fa'> <reb' mib>]
 << { lab16[( do) do( lab) lab( do)] do[( lab) lab( do) do( lab)] } \\
    { <do, mib>8[ <do mib> <do mib>] <do mib>[ <do mib> <do mib>] } >> \break
%%%
 << { lab'16[ dob dob lab lab dob] dob[ lab lab dob dob lab] } \\
    { <dob, mib>8[ <dob mib> <dob mib>] <dob mib>[ <dob mib> <dob mib>] } >>
}

%CORPS C

pianoHautNoteCorpsC = \relative do' {

%61
 mib16[ mib' mib reb reb dob] dob[ sib sib lab lab mib]
%62
 mib[ mib' mib reb reb dob] dob[ sib sib lab lab mib] \break
 mib[ fab' fab mib mib reb] reb[ dob dob sib sib mib,]
 mib[ fab' fab mib mib reb] reb[ dob dob sib sib mib,]
%65
 solb[( solb') solb( fab) fab( mib)] mib[ reb reb dob dob solb] \break
 solb[ lab' lab solb solb fab] fab[ mib mib reb reb solb,]
 solb[ solb' solb mib mib dob] lab[ lab' lab mib mib dob] \break
%68
 sib[ sib' sib sol! sol mib] lab,[ lab' lab mib mib dob]
 solb[ solb' solb fab fab mib] mib[ reb reb dob dob solb] \break
 solb[ lab' lab solb solb fab] fab[ mib mib reb reb solb,]
%71
 solb[ solb' solb mib mib dob] lab[ lab' lab mib mib dob] \break
 sib[ sib' sib sol! sol mib] lab,[ lab' lab mib mib dob]
 la[ solb' solb fab fab mib] mib[ re re mib mib la,]
%74
 la[ solb' solb fab fab mib] mib[ re re mib mib la,] \break
 la[ solb' solb fab fab mib] lab,[ fab' fab mib mib reb] 
 lab[ fab' fab mib mib reb] lab[ lab' lab solb solb fab]
 %77
 mib,[ fab' fab mib mib reb] mib,[ dob' dob sib sib lab] \break
 mib[ reb' reb dob dob sib] mib,[ dob' dob sib sib lab]
 mib[ reb' reb do! do sib] mib,[ do' do sib sib lab]
%80
 fa![ reb' reb do do sib] sol[ fa' fa mib mib reb] \break
 << { do16[( do') do( sib) sib( lab)] mib[( lab) lab( sol) sol( mib)] } \\
    { do8[ <do mib> <do mib>] <do mib>[ do do] } >>
 <reb mib>16[( <sol, fa'>) <sol fa'>( <reb' mib>) <reb mib>( <sol, fa'>)] <sol fa'>[( <reb' mib>) <reb mib>( <sol, fa'>) <sol fa'>( <reb' mib>)]
%83-87
 << { <do mib>16[( do') do( sib) sib( lab)] mib[( lab) lab( sol) sol( fa)] } \\    { do8[ do do] do[ do do] } >> \break
 <reb mib>16[( <sol, fa'>) <sol fa'>( <reb' mib>) <reb mib>( <sol, fa'>)] <sol fa'>[( <reb' mib>) <reb mib>( <sol, fa'>) <sol fa'>( <reb' mib>)]
 << { lab16[( do) do( lab) lab( do)] do[( lab) lab( do) do( lab)] } \\
    { <do, mib>8[ <do mib> <do mib>] <do mib>[ <do mib> <do mib>] } >>
%%%
 << { mib'16[( lab) lab( mib) mib( lab)] lab[( mib) mib( lab) lab( mib)] } \\
    { <lab, do>8[ <lab do> <lab do>] <lab do>[ <lab do> <lab do>] } >>
 <lab do lab'>2. \fermata
 \bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
pianoHautNotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \pianoHautNoteIntro \pianoHautNoteCorpsA \pianoHautNoteCorpsB \pianoHautNoteCorpsC
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoHautNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "acoustic grand"
 \pianoHautNoteIntro \pianoHautNoteCorpsA \pianoHautNoteCorpsB \pianoHautNoteCorpsC
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  B22. NOTES PIANO BAS: Intro, Corps, Alter, Fin
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%INTRO

pianoBasNoteIntro = \relative do {

%1
 lab8 <mib' lab dob>[ <mib lab dob>] <mib lab dob>[ <mib lab dob> <mib lab dob>]
 lab, <mib' lab dob>[ <mib lab dob>] <mib lab dob>[ <mib lab dob> <mib lab dob>]
 mib, <mib' sol reb'>[ <mib sol reb'>] <mib sol reb'>[ <mib sol reb'> <mib sol reb'>]
%4
 mib, <mib' sol reb'>[ <mib sol reb'>] <mib sol reb'>[ <mib sol reb'> <mib sol reb'>]
 lab, <mib' lab dob>[ <mib lab dob>] <mib lab dob>[ <mib lab dob> <mib lab dob>]
 fab, <fab' lab dob>[ <fab lab dob>] <fab lab dob>[ <fab lab dob> <fab lab dob>]
%7
 mib, <mib' lab dob>[ <mib lab dob>] mib, <mib' sib' reb>[ <mib sib' reb>]
 lab, <mib' lab dob>[ <mib lab dob>] <mib lab dob>[ <mib lab dob> <mib lab dob>]
}

%CORPS

pianoBasNoteCorps = \relative do {

%9 (+26) 35 61
 lab <mib' lab dob>[ <mib lab dob>] <mib lab dob>[ <mib lab dob> <mib lab dob>]
%10
 lab, <mib' lab dob>[ <mib lab dob>] <mib lab dob>[ <mib lab dob> <mib lab dob>]
 mib, <mib' sol reb'>[ <mib sol reb'>] <mib sol reb'>[ <mib sol reb'> <mib sol reb'>]
 mib, <mib' sol reb'>[ <mib sol reb'>] <mib sol reb'>[ <mib sol reb'> <mib sol reb'>]
%13
 dob <solb' dob mib>[ <solb dob mib>] <solb dob mib>[ <solb dob mib> <solb dob mib>]
 solb, <solb' sib fab'>[ <solb sib fab'>] <solb sib fab'>[ <solb sib fab'> <solb sib fab'>]
 dob, <solb' dob mib>[ <solb dob mib>] lab, <lab' dob mib>[ <lab dob mib>]
%16
 mib <sib' reb mib>[ <sib reb mib>] lab, <lab' dob mib>[ <lab dob mib>]
 dob, <solb' dob mib>[ <solb dob mib>] <solb dob mib>[ <solb dob mib> <solb dob mib>]
 solb, <solb' sib fab'>[ <solb sib fab'>] <solb sib fab'>[ <solb sib fab'> <solb sib fab'>]
%19
 dob, <solb' dob mib>[ <solb dob mib>] lab, <lab' dob mib>[ <lab dob mib>]
 mib <sib' reb mib>[ <sib reb mib>] lab, <lab' dob mib>[ <lab dob mib>]
 do,! <la' mib' solb>[ <la mib' solb>] <la mib' solb>[ <la mib' solb> <la mib' solb>]
%22
 do, <la' mib' solb>[ <la mib' solb>] <la mib' solb>[ <la mib' solb> <la mib' solb>]
 do, <la' mib' solb>[ <la mib' solb>] reb, <lab' reb fab>[ <lab reb fab>]
 reb, <lab' reb fab>[ <lab reb fab>] reb, <lab' reb fab>[ <lab reb fab>]
%25
 mib, <mib' sol! reb'>[ <mib sol reb'>] lab, <mib' lab dob>[ <mib lab dob>]
 mib, <mib' sol reb'>[ <mib sol reb'>] lab, <mib' lab dob>[ <mib lab dob>]
 mib, <mib' sol reb'>[ <mib sol reb'>] lab, <mib' lab do!>[ <mib lab do>]
%28
 reb, <fa' sib reb>[ <fa sib reb>] mib, <mib' sol reb'>[ <mib sol reb'>]
 lab, <mib' lab do>[ <mib lab do>] <mib lab do>[ <mib lab do> <mib lab do>]
 mib, <mib' sib' reb>[ <mib sib' reb>] <mib sib' reb>[ <mib sib' reb> <mib sib' reb>]
%31 (+26) 57 83
 lab, <mib' lab do>[ <mib lab do>] <mib lab do>[ <mib lab do> <mib lab do>]
 mib, <mib' sib' reb>[ <mib sib' reb>] <mib sib' reb>[ <mib sib' reb> <mib sib' reb>]
 lab, <mib' lab>[ <mib lab>] <mib lab>[ <mib lab> <mib lab>]
}

%ALTERNATIVE 1-2 : 34 60

pianoBasNoteAlter = \relative do {
 lab <mib' lab>[ <mib lab>] <mib lab>[ <mib lab> <mib lab>]
}
 
%FIN : 86 - 87

pianoBasNoteFin = \relative do {
 lab <mib' lab do>[ <mib lab do>] <mib lab do>[ <mib lab do> <mib lab do>]
 <lab, mib' lab>2. \fermata
}

pianoBasNoteCorpsA = { \pianoBasNoteCorps \pianoBasNoteAlter }
pianoBasNoteCorpsB = { \pianoBasNoteCorps \pianoBasNoteAlter }
pianoBasNoteCorpsC = { \pianoBasNoteCorps \pianoBasNoteFin }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
pianoBasNotePart = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \pianoBasNoteIntro \pianoBasNoteCorpsA \pianoBasNoteCorpsB \pianoBasNoteCorpsC
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoBasNoteMidi = {
 \KEYTIME
 \set Staff.midiInstrument = "acoustic grand"
 \pianoBasNoteIntro \pianoBasNoteCorpsA \pianoBasNoteCorpsB \pianoBasNoteCorpsC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. DYNAMIQUES PARTITION MÉLODIE: Intro, Corps A, Corps B, Corps C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%INTRO

meloDynPartIntro = {

%1 - 8
 s2.*8
}

%CORPS A

meloDynPartCorpsA = {

%9
 s2. ^\pp
%10
 s2.*3
%13
 s2. ^\mf
 s2.
 s8. \setTextCresc s16 ^\cr s8 s4. \!
%16
 s2.
 s2. ^\p
 s2.
%19
 s8. \setTextCresc s16 ^\cr s8 s4. \!
 s2.*2
%22
 s2. ^\p
 s2.*2
%25
 s2.*3
%28
 s2. ^\f
 s2.*2
%31-34
 s2.*4
}

%CORPS B

meloDynPartCorpsB = {

%35
 s2. ^\pp
%36
 s2.*3
%39
 s2. ^\mf
 s2.
 s8. \setTextCresc s16 ^\cr s8 s4. \!
%42
 s2.
 s2. ^\p
 s2.
%45
 s8. \setTextCresc s16 ^\cr s8 s4. \!
 s2.*2
%48
 s2. ^\p
 s2.*2
%51
 s2.*3
%54
 s2. ^\f
 s2.*2
%57-60
 s2.*4
}

%CORPS C

meloDynPartCorpsC = {

%61-79
 s2.*19
%80
 s2. ^\f
 s2.*2
%83-87
 s2.*5
 \bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
meloDynPart = {
 \KEYTIME
 \override DynamicTextSpanner #'dash-period = #-1.0
 \meloDynPartIntro \meloDynPartCorpsA \meloDynPartCorpsB \meloDynPartCorpsC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  C2. DYNAMIQUES PARTITION PIANO: Intro, Corps, Alter, Fin
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynPart = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%1
 s4 \pp \cr s16 s16 \! s4 \decr s16 s16 \!
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
%4
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
 s4 \fp \cr s16 s16 \! s4 \decr s16 s16 \!
%7
 s2.
 s2.

%9
 \DYNEXO #'(1.5 . 0) s2. \pp
%10
 s2. s2. s2.
%13
 s4 \mf \cr s16 s16 \! s4 \decr s16 s16 \!
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
 s8 \setTextCresc s4 \cr s4 \! s8
%16
 s2.
 s4 \p \cr s8 \! s4 \decr s16 s16 \!
 s4 \cr s8 \! s4 \decr s16 s16 \!
%19
 s8 \setTextCresc s4 \cr s4 \!s8
 s2.
 s4 \p \cr s16 s16 \! s4 \decr s16 s16 \!
%22
 s4 \cr s8 \! s4 \decr s16 s16 \!
 s2.
 s2.
%25
 s2.
 s2.
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
%28
 s2. \f
 \PINEXO #'(2.5 . 0) s4 \decr s8 \! \DYNEXO #'(1.5 . 0) s4. \p
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
%31-34
 \DYNEXO #'(1.5 . 0) s4. \fp s4 \decr s16 s16 \!
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
 s4. \DECRESC s4 \decr s16 s16 \!
 s2.

%35
 \DYNEXO #'(1.5 . 0) s2. \pp
%36
 s2. s2. s2.
%39
 s4 \mf \cr s16 s16 \! s4 \decr s16 s16 \!
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
 s8 \setTextCresc s4 \cr s4 \! s8
%42
 s2.
 s4 \p \cr s16 s16 \! s4 \decr s16 s16 \!
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
%45
 s8 \setTextCresc s4 \cr s4 \!s8
 s2.
 s4 \p \cr s16 s16 \! s4 \decr s16 s16 \!
%48
 s4 \cr s8 \! s4 \decr s16 s16 \!
 s2.
 s2.
%51
 s2.
 s2.
 s4 \cr s16 s16 \! s8 \decr s16 s16 \! s8
%54
 s2. \f
 \PINEXO #'(2.5 . 0) s4 \decr s8 \! \DYNEXO #'(1.5 . 0) s4. \p
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
%57-60
 \DYNEXO #'(1.5 . 0) s4. \fp s8 \decr s16 s16 \! s8
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
 s4. \DECRESC s4 \decr s16 s16 \!
 s2.

%61
 \DYNEXO #'(1.5 . 0) s2. \pp
%62
 s2. s2. s2.
%65
 s4 \mf \cr s8 \! \PINEXO #'(1.5 . 0) s4 \decr s8 \!
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
 s8 \setTextCresc s4 \cr s4 \! s8
%68
 s2.
 s4 \p \cr s8 \! s4 \decr s16 s16 \!
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
%71
 s8 \setTextCresc s4 \cr s4 \!s8
 s2.
 s4 \p \cr s16 s16 \! s4 \decr s16 s16 \!
%74
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
 s2.
 s2.
%77
 s2.
 s2.
 s4 \cr s16 s16 \! s8 \decr s16 s16 \! s8
%80
 s2. \f
 \PINEXO #'(1.5 . 0) s4 \decr s8 \! \DYNEXO #'(1.5 . 0) s4. \p
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
%83-87
 \DYNEXO #'(1.5 . 0) s4. \fp s4 \decr s16 s16 \!
 s4 \cr s16 s16 \! s4 \decr s16 s16 \!
 s4. \DECRESC s4 \decr s16 s16 \!
 s2.
 s2.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D1. DYNAMIQUES MIDI MÉLODIE: Intro, Corps A, Corps B, Corps C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%INTRO

meloDynMidiIntro = {

%1 - 8
 s2.*8
}

%CORPS A et CORPS B

meloDynMidiCorpsA = {

%9
 s2. \pp
%10
 s2.*3
%13
 s2. \mf
 s2.
 s4. \cr s4.
%16
 s2. \! \f
 s2. \p
 s2.
%19
 s2. \cr
 s4. s4. \! \mf
 s2.
%22
 s2. \p
 s2.*2
%25
 s2.*3
%28
 s2. \f
 s2.*2
%31-34
 s2.*4
}

%CORPS C

meloDynMidiCorpsC = {

%61-79
 s2.*19
%80
 s2. \f
 s2.*2
%83-87
 s2.*5
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
meloDynMidi = {
 \KEYTIME
 \meloDynMidiIntro \meloDynMidiCorpsA \meloDynMidiCorpsA \meloDynMidiCorpsC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                              D21. DYNAMIQUES MIDI PIANO HAUT: Intro, Corps, Alter, Fin
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PORTÉE DU HAUT
%INTRO

pianoHautDynMidiIntro = {

%1
 s4. \pp \cr   s4. \! \mf \decr
 s4. \! \pp \cr s4. \! \mf \decr
 s4. \! \pp \cr s4. \! \mf \decr
%4
 s4. \! \pp \cr       s4. \! \mf \decr
 s4. \! \pp \cr       s4 \! \mf \decr s16 s16 \! \p
 s16 \mp s16 \p \cr s4 s4. \! \mf \decr
%7
 s2. \! \p
 s2.
}

%CORPS

pianoHautDynMidiCorps = {

%9 (+26) 35 61
 s2. \pp
%10
 s2.*3
%13
 s4. \mf \cr    s4. \! \ff \decr
 s4. \! \mf \cr  s4. \! \ff \decr
 s4. \! \mf \cr  s4. \! \ff
%16
 s2.
 s4. \p \cr     s4. \! \f \decr
 s4. \! \p \cr   s4. \! \f \decr
%19
 s4. \! \p \cr   s4. \! \f
 s2.
 s4. \p \cr     s4. \! \f \decr
%22
 s4. \! \p \cr   s4. \! \f \decr
 s2. \! \p
 s2.
%25
 s2.
 s2.
 s4. \cr       s4 \! \f \decr s16 s16 \! \p
%28
 s2. \f
 s4. \decr     s4. \! \p
 s4. \cr       s4 \! \f \decr s16 s16 \! \p
%31 (+26) 57 83
 s16 \mf s16 \mp s4 s4. \decr
 s4. \! \p \cr        s4. \! \f \decr
 s4. \! \p           s4 \decr s16 s16 \! \pp
}

%ALTERNATIVE 1-2: 34 60

pianoHautDynMidiAlter = {
 s2.
}

%FIN : 86 - 87
pianoHautDynMidiFin = {
 s2. \decr
 s2. \! \ppp
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoHautDynMidiCorpsA = { \KEYTIME \pianoHautDynMidiCorps \pianoHautDynMidiAlter }
pianoHautDynMidiCorpsB = { \KEYTIME \pianoHautDynMidiCorps \pianoHautDynMidiAlter }
pianoHautDynMidiCorpsC = { \KEYTIME \pianoHautDynMidiCorps \pianoHautDynMidiFin }

pianoHautDynMidi = { \KEYTIME
 \pianoHautDynMidiIntro  \pianoHautDynMidiCorpsA \pianoHautDynMidiCorpsB \pianoHautDynMidiCorpsC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                              D22. DYNAMIQUES MIDI PIANO BAS: Intro, Corps, Alter, Fin
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%INTRO

pianoBasDynMidiIntro = {

%1
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
%4
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
%7
 s8 \p s4 \ppp s8 \p s4 \ppp
 s8 \p s4 \ppp s4.
}

%CORPS

pianoBasDynMidiCorps = {

%9 (+26) 35 61
 s8 \p s4 \ppp s4.
%10
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
%13
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s8 \p s4 \ppp
%16
 s8 \p s4 \ppp s8 \p s4 \ppp
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
%19
 s8 \p s4 \ppp s8 \p s4 \ppp
 s8 \p s4 \ppp s8 \p s4 \ppp
 s8 \p s4 \ppp s4.
%22
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s8 \p s4 \ppp
 s8 \p s4 \ppp s8 \p s4 \ppp
%25
 s8 \p s4 \ppp s8 \p s4 \ppp
 s8 \p s4 \ppp s8 \p s4 \ppp
 s8 \p s4 \ppp s8 \p s4 \ppp
%28
 s8 \p s4 \ppp s8 \p s4 \ppp
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
%31 (+26) 57 83
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
 s8 \p s4 \ppp s4.
}

%ALTERNATIVE 1-2: 34 60

pianoBasDynMidiAlter = {
 s8 \p s4 \ppp s4.
}

%FIN : 86 - 87
pianoBasDynMidiFin = {
 s8 \p s4 \ppp s4. \decr
 s2. \! \pppp
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoBasDynMidiCorpsA = { \KEYTIME \pianoBasDynMidiCorps \pianoBasDynMidiAlter }
pianoBasDynMidiCorpsB = { \KEYTIME \pianoBasDynMidiCorps \pianoBasDynMidiAlter }
pianoBasDynMidiCorpsC = { \KEYTIME \pianoBasDynMidiCorps \pianoBasDynMidiFin }

pianoBasDynMidi = { \KEYTIME
 \pianoBasDynMidiIntro  \pianoBasDynMidiCorpsA \pianoBasDynMidiCorpsB \pianoBasDynMidiCorpsC
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          E. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new Voice = "mel" << \meloDynPart \meloNotePart >>
  \new Lyrics \lyricsto "mel" \poeme
  \new PianoStaff <<
   \new Staff = "up" << \pianoHautNotePart >>
   \new Dynamics = "dynamics" \pianoDynPart
   \new Staff = "down" << \pianoBasNotePart >>
  >>
 >>
 \layout {
 	\context { \RemoveEmptyStaffContext }
 	\context {
   \Score
   \override VerticalAxisGroup #'remove-first = ##t
	  \override SpacingSpanner #'spacing-increment = #1.0
	 }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice %So that \cresc works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 0.5)
   \override DynamicLineSpanner #'Y-offset = #0

   \consists "Script_engraver"
   \consists "Dynamic_engraver"
   \consists "Text_engraver"

   \override TextScript #'font-size = #2
   \override TextScript #'font-shape = #'italic

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
%                                          F. SORTIE MIDI (pas de \layout)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REDÉFINITION DES VOLUMES RESPECTIFS ATTRIBUÉS AUX DYNAMIQUES 
#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist
      (append 
      '(
	("sf" .    1.00)
	("ffff" .  1.00)
	("fff" .   0.88)
	("ff" .    0.75)
	("f" .     0.62)
	("mf" .    0.54)
	("mp" .    0.46)
	("p" .     0.40)
	("pp" .    0.33)
	("ppp" .   0.28)
	("pppp" .  0.23)
	("ppppp" . 0.16)
	)
      my-absolute-volume-alist))

% DANS LE BLOC MIDI, CHAQUE DYNAMIQUE RENCONTRÉE PRENDRA LE NOUVEAU VOLUME SPÉCIFIÉ
#(define (my-dynamic-absolute-volume s)
  (let ((entry (assoc s my-absolute-volume-alist)))
    (if entry
	(cdr entry))))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \KEYTIME s2. }

\score {
 <<
  \new Voice = "mel"   { \SILENCE << \meloNoteMidi \meloDynMidi >> }
  \new PianoStaff <<
   \new Staff = "up"   { \SILENCE << \pianoHautNoteMidi \pianoHautDynMidi >> }
   \new Staff = "down" { \SILENCE << \pianoBasNoteMidi \pianoBasDynMidi >> }
  >>
 >>
 \midi {
	\context {
  \Score
% CHANGEMENT DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
	 tempoWholesPerMinute = #(ly:make-moment 90 4)
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FIN DU FICHIER SchubertF-D774.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
