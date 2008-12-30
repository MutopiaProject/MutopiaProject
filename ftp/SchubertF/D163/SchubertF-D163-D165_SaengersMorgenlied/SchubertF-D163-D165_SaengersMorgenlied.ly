%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D163-D165.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                  FRANZ SCHUBERT: Gesang "Sängers Morgenlied", für eine Singstimme mit Klavierbegleitung
%                                    2 VERSIONS, AVEC SORTIES PARTITION ET MIDI SEPAREES
%  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.34"
\include "italiano.ly"

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")
 line-width = 184\mm
 indent = 22\mm
 between-system-padding = 5\mm
 between-system-space = 1\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Sängers Morgenlied (D163 & D165)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Sängers Morgenlied (D163 & D165)  ♫" } " " }
 #(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \lower #10 \fontsize #1.5 "Sängers Morgenlied" }
 subtitle =  \markup { \lower #3 "Erste und zweite Fassungen " }
 subsubtitle = \markup { \lower #5 " " }
 poet = \markup { \fontsize #1 \bold "Theodor Körner" \small "(1791-1813)" }
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.163 & D.165 (1815)" }
% MUTOPIA
 mutopiatitle = "Sängers Morgenlied"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.163 & D.165"
 mutopiainstrument = "Voice and Piano"
 date = "1815"
 source = "D163: Handschrift von Franz Schubert; D165: Breitkopf & Härtel (IMSLP)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = "A source is freely available: for D163 at http://www.schubert-online.at/ and for D165 at http://imslp.org/wiki/Accueil"
 footer = "Mutopia-2007/10/13-1051"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GÉNÉRALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME
%                                             VERSION 1 - D163
%  B. NOTES: B1. MÉLODIE
%            B21. PIANO HAUT  B22. PIANO BAS
%  C. DYNAMIQUES PARTITION: C1. PIANO
%  D. DYNAMIQUES MIDI: D1. MÉLODIE D2. PIANO
%                                             VERSION 2 - D165
%  E. NOTES: E1. MÉLODIE
%            E21. PIANO HAUT  E22. PIANO BAS
%  F. DYNAMIQUES PARTITION: F1. PIANO
%  G. DYNAMIQUES MIDI: G1. MÉLODIE  G2. PIANO

%  H. SORTIE PARTITION SÉPARÉE POUR VERSION 1 ET VERSION 2 (suivies du texte complet du poème)
%  I. SORTIE MIDI COMMUNE
%
% 	                BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TONALITÉS ET MESURES
KEYTIMEA = { \key sol \major  \time 6/8 }
KEYTIMEB = { \key do  \major  \time 3/4 }
%----- MOUVEMENTS
MOVEMENTA = \markup { \bold \large { \hspace #-4.0 \italic "Lieblich, etwas geschwind." } }
MOVEMENTB = \markup { \bold \large { \hspace #-4.0 \italic "Langsam." } }
%----- ABRÉVIATIONS
STAFFUP = { \change Staff = up }
STAFFDO = { \change Staff = down }
%----- CACHER LE NOMBRE OU LE CROCHET D'UN NOLET
TUPNUMTR = \override TupletNumber #'transparent = ##t
TUPBRATR = \override TupletBracket #'transparent = ##t
TUPTR  = { \TUPNUMTR \TUPBRATR }
TUPNUMTRNO = \override TupletNumber #'transparent = ##f
%----- MARKUP
SFORZATO = \markup { \hspace #0.5 \musicglyph #"scripts.sforzato" }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POÈME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% STROPHE 1: différence au vers 1 entre A (D163) et B (D165):
%            "Aus GOL -- DE -- NEN Pfor -- ten" et "Aus GOLD -- NEN Pfor -- ten"

ApoemeUn = \lyricmode {
 \set fontSize = #-.5
 
 Sü -- ßes Licht aus gol -- de -- nen Pfor -- ten
 brichst du sie -- gend durch die Nacht,
 schö -- ner Tag du bist er -- wacht. __
 Mit ge -- heim -- nis -- vol -- len Wor -- ten,
 in me -- lo -- di -- schen Ak -- kor -- den
 grüß ich dei -- ne Ro -- sen -- pracht,
 grüß ich dei -- ne Ro -- sen -- pracht. 
}

BpoemeUn = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "1. "
 
 Sü -- ßes Licht! __ Aus gold -- nen  Pfor -- ten
 brichst du sie -- gend durch die Nacht.
 Schö -- ner Tag! __ du bist er -- wacht. __
 Mit ge -- heim -- nis -- vol -- len Wor -- ten,
 in me -- lo -- di -- schen Ak -- kor -- den,
 Grüß ich dei -- ne Ro -- sen -- pracht,
 grüß ich dei -- ne Ro -- sen -- pracht! 
}

BpoemeDeux = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "2. "
 
 Ach! __ der Lie -- be sanf -- tes We -- hen
 schwellt mir das be -- weg -- te Herz,
 sanft, wie ein __ ge -- lieb -- ter Schmerz.
 Dürft' ich nur auf gold' -- nen Hö -- hen
 mich im Mor -- gen -- duft er -- ge -- hen!
 Sehn -- sucht zieht mich him -- mel -- wärts,
 Sehn -- sucht zieht mich him -- mel -- wärts.
}

% POÈME ENTIER À LA FIN

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          VERSION 1 - D163: 27 februar 1815
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B1. NOTES MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AmeloNote = \relative do''' \repeat volta 2 {

%1-4
 R2.
 r4 r8 sol4 re8
 \stemUp si4 \stemNeutral sol8 do8. re16 mi8
 dod4 re8 sol16[ fad mi re] \stemUp do[ si] \stemNeutral
%5-8
 la4 do8 mi16[ re dod re] do[ la]
 re4. r8 red red
 mi4 mi16.[ fad32] sol4 dod,8
 re!4.~ re8 \fermata re8 re
%9-13
 mib4 mib8 re4 re8
 dod4 dod8 r8 re re 
 mi!4 mi8 re4 re8
 dod4 dod8 la'16[ sol fad mi] re[ do]
 si4 re8 la4 re8
%14-17
 si4 r8 fad'16[ sol la fad] re[ do]
 si4 re8 la4 mi'16[ re]
 sol,4 r8 r4 r8
 R2. ^\fermataMarkup
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
AmeloNotePart = {
 \clef treble
 \KEYTIMEA
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENTA
 \set Staff.instrumentName = "Singstimme "
 \AmeloNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
AmeloNoteMidi = {
 \KEYTIMEA
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \unfoldRepeats { \AmeloNote }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B21. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ApianoHautNote = \relative do''' \repeat volta 2 {

 re16([ dod mi re dod re] \stemDown do[ si la sol fad mi] ) \stemNeutral
 << { re8([ <dod mi> <do fad>]) sol' } \\ { si,8([ sib la]) <sol si> } >> r8 r 
 r8 sol'([ si,]) do r mi
 r8 << { dod([ re]) } \\ { sol,4 } >> r8 <re sol si>[ <do sol' si>]
%5-8
 <mi sol la>4. r8 <do fad la>[ <do fad la>]
 si16[ re sol re si re] la[ red fad red la red] \STAFFDO
 \voiceOne sol,16[ si mi si sol si] mi,[ la dod la mi la]
 fad16[ la re la fad re] r8 \fermata \STAFFUP \oneVoice r8 re''8(
%9-13
 mib4.) ( re4.)
 dod4. r8 r \voiceOne <la re>8 (
 <do mi>4.) <si re>4.(
 <sib dod> ) <re, la' do> \oneVoice
 r8 <re sol si>[ <re sol si>] r <re fad la>[ <re fad la>]
%14-17
 r8 <re sol si>[ <re sol si>] r <re fad la do>[ <re fad la do>]
 r8 <re sol si>[ <re sol si>] r <do fad la>[ <do fad la>]
 << { \voiceTwo \stemUp sol'16_([ fad sol si re fad] \stemDown sol16[ fad sol si re si]) } \\
    { \voiceOne s4. sol16[ fad sol si re fad] } >>
 << { \voiceOne sol8 } \\ { \voiceTwo sol,8 } >> \oneVoice r r <re, sol si>8 r r \fermata  
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
ApianoHautNotePart = {
 \clef treble
 \KEYTIMEA
 \set autoBeaming = ##f
 \ApianoHautNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
ApianoHautNoteMidi = {
 \KEYTIMEA
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.8
 \unfoldRepeats { \ApianoHautNote }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          B22. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ApianoBasNote =  \relative do'' \repeat volta 2 {

%1-4
 re16([ dod mi re dod re] \stemDown do[ si la sol fad mi]) \stemNeutral \clef bass
 re4.( sol,8) r r
 r8 r \clef treble <fa' sol>8([ <mi sol>)] r <do sol'>
 r8 \clef bass lad( si) r sol[ sol]
%5-8
 do,4. r8 \stemUp re[ re] \stemNeutral
 <sol, sol,>4. <si si,>4.
 \voiceThree mi,4. <la la,>4.
 re,8 re8\rest re8\rest re16 re16\rest-\fermata \oneVoice r8 re''(
%9-13
 mib4.) ( re )
 dod4. r8 r \STAFFUP \voiceTwo <re fad>8(
 <do! sol'>4.) <re sol>4.(
 <mi sol>4.) \STAFFDO \oneVoice fad,
 sol4 r8 re4 r8
%14-17
 sol4 r8 re4 r8
 sol4 r8 re4 r8
 <sol, si re sol>8[ <sol' si re> <sol si re>] \repeat tremolo 3 <sol si re>
 <sol si re> r r <sol,, sol'>8 r r\fermata
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
ApianoBasNotePart = {
 \clef treble
 \KEYTIMEA
 \set autoBeaming = ##f
 \ApianoBasNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
ApianoBasNoteMidi = {
 \KEYTIMEA
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.8
 \unfoldRepeats { \ApianoBasNote }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. DYNAMIQUES PARTITION PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ApianoDynPart = \repeat volta 2 {
 \override DynamicTextSpanner #'dash-period = #-1.0
%1-4
 s2. \p
 s2.*2
 s8 s4 -\SFORZATO s4.
%5-8
 s2.
 s8 \setTextCresc s4 \cr s4.
 s4. s4. \! \f
 s4. s4 s8 \pp
%9-13
 s2.*3
 s4. s4. \fp
 s2.
%14-17
 s2.*2
 s2. \f
 s2.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D1. DYNAMIQUES MIDI MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AmeloDynMidi = { s2.\pp }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D2. DYNAMIQUES MIDI PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ApianoDynMidiPrep = \repeat volta 2 {
%1-4
 s2. \p
 s2.*2
 s8 s8 \ff s8 \p s4.
%5-8
 s2.
 s8 s4 \cr s4.
 s4. s4. \! \f
 s4. s4 s8 \pp
%9-13
 s2.*3
 s4. s8 \f s4 \pp
 s2.
%14-17
 s2.*2
 s2. \f
 s2.
}
%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
ApianoDynMidi = {
 \unfoldRepeats { \ApianoDynMidiPrep }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           VERSION 2 - D165: 1. märz 1815
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          E. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          E1. NOTES MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BmeloNote = \relative do'' \repeat volta 2 {

%1-3
 \tupletUp r4 mi4 ~ \times 2/3 { mi8[ re] do } \TUPTR \tupletNeutral
 do4( si) ~ \times 2/3 { si8[ do] re }
 mi4 ~ ( \times 2/3 { mi8[ sol fad] } \times 2/3 { sol8[ mi]) do }
%4-7
 do4 si \times 2/3 { si8[ do] re } 
 mi4. mi8 \grace { red16[ mi fa] } mi8. sold,16
 la2 \times 2/3 { mi'8[ re] do }
 si4 ~ \times 2/3 { si8[ do] re } \times 2/3 { re8[ mi] re }
%8-11
 re4( sol) r4
 R2.
 r4 r4 sol8. fa16
 mi4. re8 \tupletUp \TUPNUMTRNO \times 2/3 { do8[ si] la } \tupletNeutral \TUPNUMTR
%12-14
 do4 si mi8. mi16
 sol4. fa8 \times 2/3 { mi8[ re] do } 
 mi4 re r4
%15-18
 sol4. fa8 mi re
 do2 re8[ red]
 mi2 r4
 sol4. fa8 mi re
%19-22
 do2( \times 2/3 { mi8[ re]) si }
 do4 r4 r4
 R2.
 R2. \pageBreak
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
BmeloNotePart = {
 \clef treble
 \KEYTIMEB
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENTB
 \set Staff.instrumentName = "Singstimme "
 \BmeloNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
BmeloNoteMidi = {
 \KEYTIMEB
 \set Staff.midiInstrument = "pan flute"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \unfoldRepeats { \BmeloNote }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          E21. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BpianoHautNote = \relative do' \repeat volta 2 {

%1-3
 \tupletDown
 \times 2/3 { mi8([ sol do] }   \times 2/3 { mi,8[ sol do] }  \times 2/3 { mi,8[ sol do]) } \TUPTR
 \times 2/3 { fa,8([ sol re'] } \times 2/3 { fa,8[ sol re'] } \times 2/3 { fa,8[ sol si]) } 
 \times 2/3 { mi,8([ sol do] }  \times 2/3 { mi,8[ sol do] }  \times 2/3 { mi,8[ sol do]) }
%4-7
 \times 2/3 { fa,8([ sol re'] } \times 2/3 { fa,8[ sol re'] } \times 2/3 { fa,8[ sol si]) } 
 \times 2/3 { mi,8([ sol do] }  \times 2/3 { mi,8[ sol do] }  \times 2/3 { mi,8[ sold re']) }
 << { \voiceOne \TUPTR \times 2/3 { mi,8^([ la do] }  \times 2/3 { do,8[ mi la] } \times 2/3 { do8[ si la]) } } \\
    { \voiceTwo s2 mi4 } >>
 \times 2/3 { re8([ sol si] }  \times 2/3 { re,8[ sol si] }  \times 2/3 { do,8[ fad la]) }
%8-11
 \times 2/3 { si,8([ re sol] }  \times 2/3 { si,8[ re sol] }  \times 2/3 { fa!8[ sol si]) }
 \times 2/3 { sol8([ si re] }   \times 2/3 { fa8[ re si] }    \times 2/3 { sol8[ si re]) }
 \times 2/3 { si8([ re fa] }    \times 2/3 { la8[ fa re] }    \times 2/3 { si8[ sol' fa]) }
 \times 2/3 { mi,8([ si' mi] }  \times 2/3 { mi,8[ si' mi] }  \times 2/3 { mi,8[ la mi']) }
%12-14
 \times 2/3 { mi,8([ do' mi] }  \times 2/3 { mi,8[ si' mi] }  \times 2/3 { mi,8[ do' mi]) }
 \times 2/3 { sol,8([ re' sol] } \times 2/3 { sol,8[ re' sol] } \times 2/3 { sol,8[ do sol']) }
 \times 2/3 { sol,8([ mi' sol] } \times 2/3 { sol,8[ re' sol] } \times 2/3 { sol,8[ si re]) }
%15-18
 <sol, do sol'>4 r4 r4
 \times 2/3 { mi8([ sol do] }   \times 2/3 { mi,8[ sol do] }  \times 2/3 { fa,8[ sol si]) }
 \times 2/3 { sold8([ si mi] }  \times 2/3 { sold,8[ si mi] } \times 2/3 { la,8[ do mi]) }
 <sol, do sol>4 r4 r4
%19-22
 \times 2/3 { mi8([ sol do] }   \times 2/3 { mi,8[ sol do] }  \times 2/3 { fa,8[ sol re']) }
 do4 << { \voiceOne \TUPTR \times 2/3 { do8^([ re mi] }  \times 2/3 { sol8[ fa re]) } } \\
        { \voiceTwo \TUPTR \times 2/3 { s8 r8 do8( } \times 2/3 { si8[ re sol,]) } } >>
 << { \voiceOne sol'4 \times 2/3 { do,8^([ re mi] }  \times 2/3 { sol8[ fa re]) } } \\
    { \voiceTwo mi4   \times 2/3 { s8 r8 do8( } \times 2/3 { si8[ re sol,]) } } >>
 << { \voiceOne re'4( do) } \\ { \voiceThree sol2 } \\ { \voiceTwo fa4( mi) } >> r4
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
BpianoHautNotePart = {
 \clef treble
 \KEYTIMEB
 \set autoBeaming = ##f
 \BpianoHautNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
BpianoHautNoteMidi = {
 \KEYTIMEB
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.8
 \unfoldRepeats { \BpianoHautNote }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          E22. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BpianoBasNote =  \relative do \repeat volta 2 {

%1-3
 <do sol'>4-.( <do sol'>-. <do sol'>-.)
 <do sol'>4-.( <do sol'>-. <do sol'>-.)
 <do sol'>4-.( <do sol'>-. <do sol'>-.)
%4-7
 <do sol'>4-.( <do sol'>-. <do sol'>-.)
 <do sol'>4 <do, do'> <si si'>
 <la la'>2 <la la'>4
 <re re'>2 <re re'>4
%8-10
 sol2 <sol' si re>8.[ <sol si re>16]
 <sol si re>2 <sol si re fa>8.[ <sol si re fa>16]
 <sol si re fa>2.
%11-14
 << { \voiceOne si4( re) do
      <la do>4( <sold si>) do
      re4( fa) mi
      <do mi>4( <si re>) s4 } \\
    { \voiceTwo sold2 la4
      mi2 la4
      si2 do4
      sol2 <fa sol si>8.[ <fa sol si>16] } >>
%15-18
 <mi sol do>4 r4 r4
 <sol do>2( <sol si>4)
 <mi si' mi>2 <la do mi>8.[ <la do mi>16]
 <mi sol do mi>4 r4 r4
%19-22
 << { \voiceOne do'2( si4) \TUPTR
      \times 2/3 { mi,8([ sol do] }   \times 2/3 { mi,8[ sol do] }  \times 2/3 { fa,8[ sol si]) }
      \times 2/3 { do,8([ sol' do] }   \times 2/3 { mi,8[ sol do] }  \times 2/3 { fa,8[ sol si]) }
      si4( do) } \\
    { \voiceTwo sol2 sol4
      do,2.
      do2.
      do2 } >> r4
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
BpianoBasNotePart = {
 \clef bass
 \KEYTIMEB
 \set autoBeaming = ##f
 \BpianoBasNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
BpianoBasNoteMidi = {
 \KEYTIMEB
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.8
 \unfoldRepeats { \BpianoBasNote }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           F. DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           F1. DYNAMIQUES PARTITION PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BpianoDynPart = {
 \override DynamicTextSpanner #'dash-period = #-1.0
 \time 3/4
%1-12
 s2. \pp
 s2.*11
%13-14
 \times 2/3 { s8 \setTextCresc s4 \cr } s4 s4 \!
 s2.
%15-18
 s2. \fp
 s2.
 s4 \decr \times 2/3 { s8 \! s4 } s4
 s2. \fp
%19-22
 s2. \pp
 s2.*3
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           G. DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           G1. DYNAMIQUES MIDI MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BmeloDynMidi = { s2.\p }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           G2. DYNAMIQUES MIDI PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BpianoDynMidiPrep = \repeat volta 2 {
%1-12
 s2. \pp
 s2.*11
%13-14
 s4 \cr s2 \! \f
 s2.
%15-18
 s8 \ff s8 \mp s2
 s2.
 s4 \decr s4 \! \pp s4
 s8 \f s8 \p s2
%19-22
 s2. \pp
 s2.*3
}
%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
BpianoDynMidi = {
 \unfoldRepeats { \BpianoDynMidiPrep }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           H. SORTIE PARTITION (pas de \midi) : 2 SCORES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {

%%%%%%%%%%%%%%%%%%%% D163

\score {
 <<
  \new Voice = "mel" << \AmeloNotePart >>
  \new Lyrics \lyricsto "mel" \ApoemeUn
  \new PianoStaff <<
   \set PianoStaff.instrumentName = "Fortepiano "

	  \new Staff = "up" << \ApianoHautNotePart >>
   \new Dynamics = "dynamics" \ApianoDynPart
   \new Staff = "down" << \ApianoBasNotePart >>
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
   \alias Voice % So that \cresc works, for example.
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
 \header { piece = \markup { \line { \column { { \bold \large "1. Erste Fassung : D163, 27. Februar 1815." }
  "Nach einer Reinschrift von Franz Schubert (Wienbibliothek im Rathaus)" } } } }
}

%%%%%%%%%%%%%%%%%%%% D165

\score {
 <<
  \new Voice = "mel" << \BmeloNotePart >>
  \new Lyrics \lyricsto "mel" \BpoemeUn
  \new Lyrics \lyricsto "mel" \BpoemeDeux
  \new PianoStaff <<
   \set PianoStaff.instrumentName = "Pianoforte "

	  \new Staff = "up" << \BpianoHautNotePart >>
   \new Dynamics = "dynamics" \BpianoDynPart
   \new Staff = "down" << \BpianoBasNotePart >>
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
   \alias Voice % So that \cresc works, for example.
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
 \header {  piece = \markup {\line { \column { { \bold \large "2. Zweite Fassung : D165, 1. März 1815." }
  "Nach Breitkopf & Härtel (IMSLP)" } } } }
}

%%%%%%%%%%%%%%%%%%%% POÈME ENTIER

\markup { \bold \large "Sängers Morgenlied" }

\markup { \lower #5
 \fill-line {
  \column {
   \line { \bold "1."
    \column {
     "Süßes Licht! Aus goldnen Pforten"
     "       Brichst du siegend durch die Nacht."
     "       Schöner Tag! Du bist erwacht."
     "Mit geheimnisvollen Worten,"
     "       In melodischen Akkorden"
     "       Grüß' ich deine Rosenpracht!"
     " "
    }
   } 
   \line { \bold "2."
    \column {
     "Ach! der Liebe sanftes Wehen"
     "       Schwellt mir das bewegte Herz,"
     "       Sanft, wie ein geliebter Schmerz."
     "Dürft' ich nur auf goldnen Höhen"
     "       Mich im Morgenduft ergehen!"
     "       Sehnsucht zieht mich himmelwärts."
     " "
    }
   } 
   \line { \bold "3."
    \column {
     "Und der Seele kühnes Streben"
     "       Trägt im stolzen Riesenlauf"
     "       Durch die Wolken mich hinauf."
     "Doch mit sanftem Geisterbeben"
     "       Dringt das Lied ins inn're Leben,"
     "       Löst den Sturm melodisch auf."
    }
   }
  }
  \hspace #0.1
  \column {
   \line { \bold "4."
    \column {
     "Vor der Augen wird es helle;"
     "       Freundlich auf der zarten Spur"
     "       Weht der Einklang der Natur,"
     "Und begeistert rauscht die Quelle,"
     "       Munter tanzt die flücht'ge Welle"
     "       Durch des Morgens stille Flur."
     " "
    }
   } 
   \line { \bold "5."
    \column {
     "Und von süßer Lust durchdrungen"
     "       Webt sich zarte Harmonie"
     "       Durch des Lebens Poesie."
     "Was die Seele tief durchklungen,"
     "       Was berauscht der Mund gesungen,"
     "       Glüht in hoher Melodie."
     " "
    }
   } 
   \line { \bold "6."
    \column {
     "Des Gesanges muntern Söhnen"
     "       Weicht im Leben jeder Schmerz,"
     "       Und nur Liebe schwellt ihr Herz,"
     "In des Liedes Heil'gen Tönen"
     "       Und im Morgenglanz des Schönen"
     "       Fliegt die Seele himmelwärts."
    }
   }
  }
 }
}
} % FIN DU BOOK


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           I. SORTIE MIDI COMMUNE (pas de \layout)
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
ASILENCE = { \KEYTIMEA s2. }
% SILENCE ET CHANGEMENT DE TEMPO ENTRE D163 & D165
BSILENCE = { \tempo 4=48 s2. }

\score {
 <<
  \new Voice = "mel"   { \ASILENCE << \AmeloNoteMidi \AmeloDynMidi >>       \BSILENCE << \BmeloNoteMidi \BmeloDynMidi >> }
  \new PianoStaff <<
   \new Staff = "up"   { \ASILENCE << \ApianoHautNoteMidi \ApianoDynMidi >> \BSILENCE << \BpianoHautNoteMidi \BpianoDynMidi >> }
   \new Staff = "down" { \ASILENCE << \ApianoBasNoteMidi \ApianoDynMidi >>  \BSILENCE << \BpianoBasNoteMidi \BpianoDynMidi >> }
  >>
 >>
 \midi {
	\context {
  \Score
% CHANGEMENT DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
	 tempoWholesPerMinute = #(ly:make-moment 84 4)
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D163-D165.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
