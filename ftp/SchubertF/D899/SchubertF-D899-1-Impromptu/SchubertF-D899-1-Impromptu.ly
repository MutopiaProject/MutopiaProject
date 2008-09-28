%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D899-1-Impromptu.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                      FRANZ SCHUBERT: "Impromptu in C moll", für Klavier
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.34"
\include "italiano.ly"

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")
 line-width = 190\mm
 oddHeaderMarkup  =  \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Impromptu in c-moll (D 899-1)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Impromptu in c-moll (D 899-1)  ♫" } " " }
 #(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup \center-align { \fontsize #1.5 "Impromptu in c-moll" " " }
 subtitle = \markup { \fontsize #2.5 "D 899-1 (Opus 90 No 1.)" }
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 899 (Op. 90 No1., 1827)" }
% MUTOPIA
 mutopiatitle = "Impromptu in c-moll"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.899 (Op. 90, No. 1)"
 mutopiainstrument = "Piano"
 date = "1827"
 source = "Breitkopf & Härtel, 1888"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2007/12/29-1192"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GÉNÉRALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. NOTES: A1. PIANO HAUT: VOIX 1, 2, 3, 4  A2. PIANO BAS: VOIX 1, 2, 3
%  B. DYNAMIQUES PARTITION: B1. COMMUNES  B2. PIANO HAUT  B3. PIANO BAS
%  C. DYNAMIQUES ET VOLUMES MIDI:  C1.DYNAMIQUES  C2. VOLUMES
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%                  BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- VOLUMES
VOLMIN =
 #(define-music-function (parser location beg-end) (number?)
 #{ \set Staff.midiMinimumVolume = #$beg-end #})
VOLMAX =
 #(define-music-function (parser location beg-end) (number?)
 #{ \set Staff.midiMaximumVolume = #$beg-end #})
%----- TONALITÉ ET MESURE
KEYTIME = {  \key do \minor \time 4/4 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-4 \italic "Allegro molto moderato." } }
%----- DÉPLACER UNE DYNAMIQUE
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
% RÉTABLISSEMENT DU dash
DTSDASHOK = \once \override DynamicTextSpanner #'dash-period = #3.0
%----- DÉPLACER UNE NOTE
NOTEHS =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override NoteColumn #'force-hshift = #$beg-end #})
IGNCOLL = \once \override NoteColumn #'ignore-collision = ##t 
%----- DÉPLACER UN POINT
DOTEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Dots #'extra-offset = #$beg-end #})
%----- DÉPLACER UN SCRIPT / TEXTSCRIPT
SCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Script #'extra-offset = #$beg-end #})
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
%----- CACHER LE NOMBRE OU LE CROCHET D'UN NOLET
TUPNNO = \override TupletNumber #'transparent = ##t
TUPBNO = \override TupletBracket #'transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
%----- CACHER UNE ALTÉRATION SUR UNE PORTÉE SUPÉRIEURE QUAND UNE ALTÉRATION EST CACHÉE PAR LA BARRE DE MESURE
ACCINO = \once \override Accidental #'transparent = ##t
%----- DÉCOLLER UNE LIAISON D'ARTICULATION
SLURIN = {
 \override Script #'slur-padding = #0.2
 \override Script #'avoid-slur = #'inside }
%----- TEMPOS
TEMPOBASE    = \tempo 4=88
TEMPOLENTA   = \tempo 4=86
TEMPOLENTB   = \tempo 4=84
TEMPOLENTC   = \tempo 4=82
TEMPOLENTD   = \tempo 4=80
TEMPOLENTE   = \tempo 4=76
TEMPOLENTF   = \tempo 4=72
TEMPOLENTG   = \tempo 4=64
TEMPOFERMATA = \tempo 4=44
%----- MARKUP
STACCATO = \markup { \hspace #-2 \italic "stacc." }
SFORZATO = \markup { \hspace #0.5 \musicglyph #"scripts.sforzato" }
CRESC   = { \set crescendoText = \markup { \fontsize #-0.8 \italic "cresc." } \set crescendoSpanner = #'dashed-line }
DECRESC = { \set decrescendoText = \markup { \fontsize #-0.8 \italic "decresc." } \set decrescendoSpanner = #'dashed-line }
DIMIN   = { \set decrescendoText = \markup { \fontsize #-0.8 \hspace #2 \italic "dimin." } \set decrescendoSpanner = #'dashed-line }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A1. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A11. NOTES PIANO HAUT:  VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hautIa = \relative do'' { \voiceOne
%1
 \oneVoice
 <sol sol'>2. \fermata si8. ([ do16]
 re4-.) ( re-. re-.) do8.([ re16]
 mib4. re8 do4) re8.([ do16]
 si4 la8.[ si16] do4 re8.[ mib16])
%5
 re2. <re, sol si>8.-.[ <mib sol do>16-.]
 <fa sol re'>4-. <fa sol re'>4-. <fa sol re'>4-. <mib sol do>8.-.[ <fa sol re'>16-.]
 <sol mib'>4.. <fa sol re'>16 <mib sol do>4 <fa lab re>8.[ <mib lab do>16]
 <re sol si>4 <do sol' la>8.[ <re sol si>16] <mib sol do>4 <sol mib'>8.[ <fa sol re'>16]
 <mib sol do>2. re'8.([ mib16]
%10
 fa4-.) (fa-. fa-.) mib8.([ re16]
 sol4. fa8 mib4) re8.([ do16]
 si4 la8.[ si16] do4 fa8.[ mib16]
 re2.) <fa, sib! re>8.-.[ <sol sib mib>16-.]
 <lab sib fa'>4-. <lab sib fa'>4-. <lab sib fa'>4-. <sol sib mib>8.-.[ <fa sib re>16-.]
%15
 <sib sol'>4.. <lab sib fa'>16 <sol sib mib>4 <fa lab re>8.[ <mib lab do>16]
 <re sol si>4 <do sol' la>8.[ <re sol si>16] <mib sol do>4 <sol mib'>8.[ <fa sol re'>16]
 <mib sol do>2. si'8.([ do16]
}

%%%%%%%%%%%%%%%%%%%% 18-19: APPOGGIATURE POUR LA PARTITION
signePartIa = \relative do'' { \voiceOne
%18-19
 re4-.) (re-. re-.) do8.([ re16])
 \grace { do16[ re] } mib4.( re8 do4) re8. [ do16]
}

%%%%%%%%%%%%%%%%%%%% 18-19: APPOGGIATURE POUR LE MIDI
signeMidiIa = \relative do'' { \voiceOne
 re4-.) (re-. re-.) do8.([ \times 2/3 { re32 do re]) }
 mib4.( re8 do4) re8. [ do16]
}


%%%%%%%%%%%%%%%%%%%% 20: SUITE Ib
hautIb = \relative do'' { \voiceOne
%20
 \oneVoice
 <sol si>4 <sol la>8.[ <sol si>16] <sol do>4 <sol re'>8.[ <sol mib'>16]
 <sol re'>2. <re sol si>8.[ <mib sol do>16]
 <fa sol re'>4 <fa sol re'>4 <fa sol re'>4 <mib sol do>8.[ <fa sol re'>16]
 <sol mib'>4.. <fa sol re'>16 <mib sol do>4 <fa lab re>8.[ <mib lab do>16]
 <re sol si>4 <do sol' la>8.[ <re sol si>16] <mib sol do>4 <sol mib'>8.[ <fa sol re'>16]
%25
 <mib sol do>2. re'8.([ mib16]
%26-27
 fa4)
}

%%%%%%%%%%%%%%%%%%%% 26: MORDANT POUR LA PARTITION
signePartIb = \relative do'' { \voiceOne fa4-.( fa-. \SCREXO #'(0 . -1.3) mib8. \prall[ re16]) }

%%%%%%%%%%%%%%%%%%%% 26: MORDANT POUR LE MIDI
signeMidiIb = \relative do'' { \voiceOne fa4-.( fa-. mib32[ fa32 mib8 re16]) }

%%%%%%%%%%%%%%%%%%%% 27: SUITE Ic
hautIc = \relative do'' { \voiceOne
 sol'4..( fa16 mib4) re8.[ do16] 
%28
 \oneVoice
 <re, sol si>4 <do sol' la>8.[ <re sol si>16] <mib sol do>4 <sol fa'>8.[ <sol mib'>16]
 <sol re'>2. <fa sib! re>8.[ <sol sib mib>16]
%30
 <lab sib fa'>4 <lab sib fa'>4 <lab sib fa'>4 <sol sib mib>8.[ <fa sib re>16]
 <sib sol'>4.. <lab sib fa'>16 <sol sib mib>4 <fa lab re>8.[ <mib lab do>16]
 <re sol si>4 <do sol' la>8.[ <re sol si>16] <mib sol do>4 <sol mib'>8.[ <fa sol re'>16]
 <mib sol do>2. mib'8.([ re16]
 <mib, lab do>2.) \slurDown \appoggiatura do'16 \slurNeutral mib8.([ re16]
%35
 <sol, do>2.) re'8.([ mib16]
 <lab, do fa>4) <sol do mib>8.[ <fa re'>16] <mib do'>4 <re sol si>
 <mib sol do>2. mib'8.([ re16]
 <mib, lab do>2.) mib'8.([ re16]
}

%%%%%%%%%%%%%%%%%%%% 39-40 APPOGGIATURE POUR LA PARTITION
signePartIc = \relative do'' {
%39-40
 \oneVoice <sol do>2.) reb'8.\([ mib16]
 \stemUp \appoggiatura { reb32[ mib] } \stemNeutral <lab, fa'>4\) <lab mib'>8.-.[ <lab reb!>16-.] <lab do>4-. <reb, mib sol sib>-.
}

%%%%%%%%%%%%%%%%%%%% 39-40 APPOGGIATURE POUR LE MIDI
signeMidiIc = \relative do'' {
 \oneVoice <sol do>2.) reb'8.([ \times 2/3 { mib32 reb mib]) }
 <lab, fa'>4 <lab mib'>8.-.[ <lab reb!>16-.] <lab do>4-. <reb, mib sol sib>-.
}

%%%%%%%%%%%%%%%%%%%% 40: SUITE Id
hautId = \relative do' { \oneVoice
%40
 <do mib lab>2 r4 lab'8.([ do16]
 mib4-.) ( mib-. mib-. mib-.) (
 fa2) ( mib2
 reb2 do)
%45
 sib4( reb do sib
 lab2) r4 lab8.([ do16]
 mib4) <mib, mib'>-.( <mib mib'>-. <mib mib'>-.)
 <fab fab'>2( <mib mib'>)
 reb'2( dob4. sib8)
%50
 lab4\( \slurDown \appoggiatura lab16 \slurNeutral fab'4 mib reb\)
 dob2. dob8.([ mib16]
 <solb, solb'>4) <solb solb'>( <sol sol'> <lab lab'>)
 <sib sib'>( <reb reb'> <dob dob'> <sib sib'>8.[ <lab lab'>16])
 <sol sol'>4( <sol sol'> <lab lab'>8[ <sol sol'> <fa fa'> <sol sol'>])
%55
 <lab lab'>2. lab'8.([ do16]
 <mib, mib'>4-.) ( <mib mib'>-. <mib mib'>-. <mib mib'>-.)
 <fa fa'>4( <sol sol'> <lab lab'> <mib mib'>)
 <mib mib'>4( <reb reb'>8) r8 <reb reb'>4( <do do'>8) r8
 sib'4( reb do sib)
%60
 \TUPNO \times 2/3 { lab8 mib,[ lab] } \times 2/3 { do[ lab mib] } \times 2/3 { mib'[ do lab] } \times 2/3 { lab[ do mib] }
 \times 2/3 { mib8[ sib sol] } \times 2/3 { mib'[ sib sol] } \times 2/3 { mib'[ do lab] } \times 2/3 { sib[ mib sol] }
 \times 2/3 { lab8[ mib lab,] } \times 2/3 { lab'[ re, lab] } \times 2/3 { lab'[ mib sib] } \times 2/3 { sib[ mib sol] }
 \times 2/3 { fa8[ sib, sol] } \times 2/3 { fa'[ si, sol] } \times 2/3 { fa'[ do lab] } \times 2/3 { lab[ do mib] }
%64
 \voiceOne
 \times 2/3 { reb,8[ lab' reb] } \times 2/3 { fa,[ lab sib] } \times 2/3 { mib,[ lab do] } \times 2/3 { sol[ mib' reb] }
%65
 \oneVoice
 \times 2/3 { <mib, lab do>8 mib[ lab] } \times 2/3 { do[ lab mib] } \times 2/3 { mib'[ do lab] } \times 2/3 { lab[ do mib] }
 \times 2/3 { mib8[ sib sol] } \times 2/3 { mib'[ sib sol] } \times 2/3 { mib'[ dob lab] } \times 2/3 { sib[ mib sol] }
 \times 2/3 { lab8[ mib lab,] } \times 2/3 { lab'[ reb, sib] } \times 2/3 { lab'[ mib dob] } \times 2/3 { dob[ mib solb] }
 \times 2/3 { fab8[ dob sol!] } \times 2/3 { fab'[ sib, sol] } \times 2/3 { fab'[ dob lab] } \times 2/3 { lab[ dob mib] }
%69
 \voiceOne
 \times 2/3 { lab,8[ dob reb] } \times 2/3 { lab[ dob fab] } \times 2/3 { solb,[ dob mib] } \times 2/3 { sib[ solb' fab] }
%70
 \oneVoice
 \times 2/3 { <solb, dob mib>8 mib[ solb] } \times 2/3 { dob[ solb mib] } \times 2/3 { mib'[ dob solb] } \times 2/3 { dob[ mib solb] }
 <solb, solb'>4(  <solb solb'> <sol sol'> <lab lab'>
 <sib sib'>4 <reb reb'> <dob dob'> <sib sib'>8.[  <lab lab'>16])
 <sol sol'>4( <sol sol'> <lab lab'>8[ <sol sol'> <fa fa'> <sol sol'>])
 <lab lab'>2 reb8([ do si do])
%75
 \slurDown \appoggiatura do16 \slurNeutral fa2  do8([ sib! la sib])
 \slurDown \appoggiatura sib16 \slurNeutral mib2  reb8([ do sib lab])
 <sol mib'>8([ <fa reb'> <mib do'> <reb sib'>]) <do lab'>4( <mib do'>8.[ <reb sib'>16])
 <do lab'>4 r4 reb'8([ do si do])
%79
 \voiceOne do'8([ sib la sib]) \oneVoice do,8([ sib la sib])
 \voiceOne sib'8([ lab! sol lab]) \oneVoice  reb,8([ do sib lab])
 <sol mib' sol>8([ <fa reb' fa> <mib do' mib> <reb sib' reb>]) \voiceOne <do lab' do>4( reb'8.[ sib16])
%82
 \oneVoice
 <lab, do mib lab>2. do8.^([ mib16]
 <lab, lab'>4^.) ^( <lab lab'>^. <lab lab'>^. <lab lab'>^.)
 <sol sol'>2.^> do8.^([ mib16]
%85
 <sol, sol'>4^.) ^( <sol sol'>^. <sol sol'>^. <sol sol'>^.)
 <fa fa'>2^> <fad fad'>^>
 \times 2/3 { <sol sol'>8[ <sol sol'> <sol sol'>] } \times 2/3 { \repeat tremolo 3 <sol sol'>8 }
  \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
 \times 4/6 { \repeat tremolo 6 <sol sol'>8 } \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
 \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
  \times 2/3 { \repeat tremolo 3 <sol sol'>8 } \times 2/3 { <sol sol'>8[ <sol sol'> <fa fa'>] }
%90
 \times 4/6 { \repeat tremolo 6 <sol do mib sol>8_> } \times 4/6 { \repeat tremolo 6 <sol si re sol>8_> }
 \times 2/3 { <sol do mib sol>8[ <sol sol'> <sol sol'>] } \times 2/3 { \repeat tremolo 3 <sol sol'>8 }
  \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
 \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
  \times 2/3 { \repeat tremolo 3 <sol sol'>8 } \times 2/3 { \repeat tremolo 3 <lab lab'>8 }
 \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
  \times 2/3 { \repeat tremolo 3 <sol sol'>8 } \times 2/3 { <sol sol'>8[ <sol sol'> <fa fa'>] }
 \times 4/6 { \repeat tremolo 6 <sol do mib sol>8^> } \times 4/6 { \repeat tremolo 6 <sol si re sol>8^> }
%95
 <sol do mib sol>2 r4 si'8.([ do16]
%96
 \voiceOne
 re4-.) ( re-. re-.) do8.([ re16]
 mib4.) ( re8 do4) re8.([ do16]
 si4 la8.[ si16] do4 re8.[ mib16])
 re2. <si, sol' si>8.[ <do la' do>16]
%100
 \oneVoice
 <re si' re>4 <re si' re> <re si' re> <do sol' do>8.[ <re sol re'>16]
%101
 \voiceOne
 \DOTEXO #'(-2 . 0) \NOTEHS #-1 mib'4. re8 do4 re8.[ do16]
 si4 si do mib8.[ re16]
 do2. \oneVoice re8.([ mib16] \voiceOne 
 fa4) fa fa( mib8.[ re16]
%105
 sol4.) ( fa8 mib4 re8.[ do16])
 si4( si do fa8.[ mib16])
 re2. \oneVoice re8.([ mib16]
%108
 <fa, re' fa>4) <fa re' fa> <fa re' fa> <sol mib' sol>8.[ <lab fa' lab>16]
%109
 <sib sol' sib>4( <re fa lab> <mib sol>) \voiceOne fa8.[ re16]
%110
 si4 si do mib8.[ re16]
 do2. \times 2/3 { \TUPNO <do, do'>8[ <do do'><do do'>] }
%112
 \oneVoice
 <do' re lab' do>2._> \times 2/3 { \TUPNO <do, do'>8[ <do do'><do do'>] }
 <do' mib sol do>2._> \times 2/3 { <do, do'>8[ <do do'><do do'>] }
 <reb fa reb'>4 <fa fa'>8.[ <lab lab'>16] <sol do mib sol>4 <sol si re sol>
%115
 <do, mib sol do>2. \times 2/3 { <do do'>8[ <do do'><do do'>] }
 <do' re do'>2._>  \times 2/3 { <do, do'>8[ <do do'><do do'>] }
 <do' sol' do>2._>  \times 2/3 { <do, do'>8[ <do do'><do do'>] }
 <reb reb'>4 <fa fa'>8.[ <lab lab'>16] <sol do mib sol>4 <sol si re sol>
 <do, mib sol do>2. \times 2/3 { <do do'>8[ <do do'><do do'>] }
%120
 \times 2/3 { \repeat tremolo 3 <reb do'>8 }  \times 2/3 { \repeat tremolo 3 <re do'>8 }
  \times 2/3 { \repeat tremolo 3 <mib do'>8 } \times 2/3 { \repeat tremolo 3 <mi do'>8 }
 \times 4/6 { \repeat tremolo 6 <mi do'>8 }
  \times 2/3 { \repeat tremolo 3 <fa do'>8 } \times 2/3 { \repeat tremolo 3 <mib fad do'>8 }
 \voiceOne \times 2/3 { \repeat tremolo 6 <fad do'>8 } 
  \times 2/3 { \repeat tremolo 3 do'8 }   \times 2/3 { \repeat tremolo 3 sib8 }
 \times 2/3 { \repeat tremolo 3 sib8 } \times 2/3 { \repeat tremolo 3 la8 }
  \oneVoice \times 2/3 { \repeat tremolo 3 <sib, re sol>8 }  \times 2/3 { \repeat tremolo 3 <la re fad>8 }
 <sib re sol>2 r4 sol'8.^([ sib16]
%125
 \voiceOne
 re4) re re re
 mib2( re)
 do2( sib)
 la4( do sib la)
 sol2. r4
%130
 re'4 re re re
 mib2( re)
 do2( sib)
 sol4( mib' re do)
 sib2. r4
%135
 \oneVoice
 <fa fa'>4( <fa fa'> <fad fad'> <sol sol'>)
 <la la'>4( <do do'> <sib sib'> <la la'>8.[ <sol sol'>16])
 <fad fad'>4( <fad fad'> <sol sol'>8[ <fad fad'> <mi mi'> <fad fad'>])
 <sol sol'>2 r16 sol[ sib re] sol[ sib, re sol]
 r8 <la, re fad>-| r <do re la'>-| r <sib re sol>-| r <la re fad>-|
%140
 r8 <sol re' sol>-|[ <sol do sol'>-| <dod sol' dod>-|] r <re sol la re>-|[ <re fad la re>-| <fad, la re>-|]
 r8 <mib sib' mib>[ <mib la mib'> <la mib' la>] r <sib mib fa sib>[ <sib re fa sib> <re, fa sib>]
 r8 <mib sol do> r <fad la mib'> r <sol sib re> r <do re fad>
 r8 <sib re sol>[ <re, sib' re> <re la' do>] <re sol sib>[ <sol sib re> <sib re sol> <sol sib re>]
 r8 <fad la re> r <do' re la'> r <sib re sol> r <la re fad>
%145
 r8 <sol re' sol>[ <sol do sol'> <dod sol' dod>] r <re sol la re>[ <re fa la re> <fa, la re>]
 r8 <mib sib' mib>[ <mib la mib'> <la mib' la>] r <sib mib fa sib>[ <sib re fa sib> <fa do'>]
 r8 <mib sib' mib> r <sol sib do> r <fa sib fa'> r <la mib' fa la>
 r8 <sib mib fa sib>[ <sib re fa sib> <sib re fa>] <fa sib re>[ <re fa sib>] <sib sib'>8.[ <re re'>16]
 <fa fa'>4 <fa fa'>( <fad fad'> <sol sol'>)
%150
 <la la'>4( <do do'> <sib sib'> <la la'>8. <sol sol'>16)
 <fad fad'>4 <fad fad'>( <sol sol'>8[ <fad fad'> <mi mi'> <fad fad'>])
 \bar "||" \key do \major <sol sol'>2 do8([ si lad si])
 \stemUp \slurDown \appoggiatura si16 \stemNeutral mi2 si8([ la! sold la])
 \stemUp \appoggiatura la16 \stemNeutral re2 do8([ si la sol])
%155
 <fad re'>8([ <mi do'> <re si'> <do la'>]) <si sol'>4( <re si'>8.[ <do la'>16]
 <si sol'>4) r do'8([ si lad si])
%157
 \voiceOne si'8([ la sold la]) \oneVoice si,8([ la sold la])
 \voiceOne la'8([ sol fad sol]) \oneVoice do,8([ si la sol])
 <fad re' fad>8([ <mi do' mi> <re si' re> <do la' do>]) <si sol' si>4 \voiceOne do'8.([ la16])
%160
 \oneVoice \TUPNO \times 2/3 { <si, sol'>8[ <sol sol'> <sol sol'>] } \times 2/3 { \repeat tremolo 3 <sol sol'>8 }
  \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
 \times 4/6 { \repeat tremolo 6 <sol sol'>8 } \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
 \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
  \times 2/3 { \repeat tremolo 3 <sol sol'>8 } \times 2/3 { <sol sol'>8 <sol sol'> <fa fa'> }
 \times 4/6 { \repeat tremolo 6 <sol do mib sol>8 } \times 4/6 { \repeat tremolo 6 <sol si re sol>8 }
 \times 2/3 { <sol do mib sol>8[ <sol sol'> <sol sol'>] } \times 2/3 { \repeat tremolo 3 <sol sol'>8 }
  \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
%165
 \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
  \times 2/3 { \repeat tremolo 3 <sol sol'>8 } \times 2/3 { \repeat tremolo 3 <lab lab'>8 }
 \times 4/6 { \repeat tremolo 6 <sol sol'>8 }
  \times 2/3 { \repeat tremolo 3 <sol sol'>8 } \times 2/3 { <sol sol'>8 <sol sol'> <fa fa'> }
 \times 4/6 { \repeat tremolo 6 <sol do mi sol>8-> } \times 4/6 { \repeat tremolo 6 <sol si re sol>8-> }
 <sol do mi sol>2 r4 <re' sol si>8.[ <mi sol do>16]
 <fa sol re'>4 <fa sol re'> <fa sol re'> <mi sol do>8.[<fa sol re'>16]
%170
 <sol mi'>4. <fa sol re'>8 <mi sol do>4 <fa sol re'>8.[ <mi sol do>16]
 <re sol si>4 <do sol' la>8.[ <re sol si>16] <mi sol do>4 <sol si re>8.[ <sol do mi>16]
 <sol si re>2. <si, sol' si>8.[ <do la' do>16]
 <re si' re>4 <re si' re> <re si' re> <mi do' mi>8.[ <fa re' fa>16]
 <sol mi' sol>4( <si re fa> <do mi>) <la fa'>8.[ <fa la re>16]
%175
 <re sol si>4 <re sol si> <re sol si> <sol mi'>8.[ <fa sol re'>16]
 <mi sol do>2 r4 si''8.([ do16]
%177
 \voiceOne
 re4) ( re re do8.[ re16])
 mib4.( re8 do4) re8.([ do16]
 si4) ( la8.[ si16] do4 <si re>8.[ <do mib>16])
%180
 <si re>2. \oneVoice re,8.([ mib16]
 \voiceOne fa4) (
}

%%%%%%%%%%%%%%%%%%%% 181: MORDANT POUR LA PARTITION
signePartId = \relative do'' { \voiceOne fa4 fa \SCREXO #'(0 . -1.3) mib8. \prall[ re16]) }

%%%%%%%%%%%%%%%%%%%% 181: MORDANT POUR LE MIDI
signeMidiId = \relative do'' { \voiceOne fa4 fa mib32[ fa32 mib8 re16]) }

%%%%%%%%%%%%%%%%%%%% 182: SUITE Ie
hautIe = \relative do'' { \voiceOne
%182
 sol'4. ( fa8 mib4) \IGNCOLL \NOTEHS #-0.5 re8.([ do16]
 si!4) ( la!8.[ si16] do4 <re fa>8.[ <do mib>16])
 <si re>2. \oneVoice <si, sol' si>8.[ <do la' do>16]
%185
 <re si' re>4 <re si' re> <re si' re> <mi do' mi>8.[ <fa re' fa>16]
 <sol mi' sol>4.( <fa re' fa>8 <mi dod' mi>4) r4
%187
 \voiceOne
 mi4.( fa8 mi4) \oneVoice r4
%188
 <fa re' fa>4.( <mib do' mib>8 <re si' re>4) r4
%189
 \voiceOne
 re4.( mib8 re4) \oneVoice r4
%190
 \voiceOne mib'2( re4 do)
 sol2( do8[ si la si])
%192
 \oneVoice
 <mi, do'>1 ~
 <mi do'>2. si'8.([do16]
 re4-.) ( re-.re-.) do8[ si]
%195
 mib4.( re8 do8)[ sol( do re])
 mib4( re8[ do]) sol4-.( <fa si>-.)
 <mi! do'>2. r4
 r4 <sol sol'>2-> r4
 r4 <sol sol'>2-> mib'8([ fa]
%200
 \ACCINO sol!8[ mib si do]) sol4-.( <fa si>-.)
 <mi! do'>2 sol4-.( <fa si>-.)
 <mi do'>2 \clef bass sol,4( <fa si>)
 <mi do'>2 <mi sol do>
 <mi sol do>1 \fermata
 \bar "|."
}

partHautI = \context Staff \new Voice { \voiceOne
 \hautIa \signePartIa \hautIb \signePartIb \hautIc \signePartIc \hautId \signePartId \hautIe
}
midiHautI = \context Staff \new Voice { \voiceOne
 \hautIa \signeMidiIa \hautIb \signeMidiIb \hautIc \signeMidiIc \hautId \signeMidiId \hautIe
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A12. NOTES PIANO HAUT:  VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hautII = \context Staff \relative do'' \new Voice { \voiceTwo
 \slurDown
%1-17
 s1*17
%18-19
 r4 <sold si>4 <la do> la
 la2. la4
%20-25
 s1*6
%26-27
 s4 <lab dob re>4 <lab sib> <lab sib>
 <sol sib>4 <lab re> sol fa8.[ mib16]
%28-63
 s1*36
%64
 s2. \NOTEHS #1.5 <mib sol>4
%65-68
 s1*4
%69
 s2. \NOTEHS #1.5 <solb sib>4
%70-78
 s1*9
%79
 fa'2 s2
 mib2 s2
 s2. <reb, sol>4
%82-95
 s1*14
%96
 r4 fa lab r4
 r4 mib sol r4
 r4 fa mib do
 \stemUp \appoggiatura lab'16 \stemDown sol2. s4
%100
 s1
%101
 \DOTEXO #'(-2 . 0) \NOTEHS #-1 mib4. re8 <do sol'>4 <re fad>4
 <re fa!>4  \IGNCOLL \NOTEHS #-0.5 re <do sol'> <fa si>
 mib2. s4 
 r4 fa lab! r4
%105
 r4 sol8.[ lab16] sol4 r4
 r4 lab8[ sol] fa[ mib re do]
 \stemUp \appoggiatura lab'16 \stemDown sol2. s4
%108
 s1
%109
 s2. fa4
 <re sol>4  \IGNCOLL \NOTEHS #-0.5 re <do sol'> <fa si>->
 mib2. s4
%112-121
 s1*10
%122-124
 \TUPNO \times 2/3 { mib8[ re re] } \times 2/3 { \repeat tremolo 3 re8 } \times 4/6 { \repeat tremolo 6 <re sol>8 }
 \times 4/6 { \repeat tremolo 6 <do mib>8 } s2
 s1
%125
 re'16[ re, sol sib] re16[ re, sol sib] re16[ re, fad la] re16[ re, sol sib]
 r16 mib,[sol do] fad,[do' la fad] r re[ sol sib] re,[ sib' sol re]
 r16 do[ mib fad] do[ fad mib do] r sib[ re sol] sib,[ sol' re sib]
 la'16[ la, do sol'] do[ mib, sol la] sib[ sib, re sol] la[ do, re fad]
 r16 sol,[ sib re] mib[ do la mib'] re[ sib re fad] sol[ re sol sib]
%130
 re16[ re, sol sib] re16[ re, sol sib] re16[ re, fad la] re16[ re, sol sib]
 r16 mib,[ sol do] la[ do la fa] r re[ fa sib] fa[ sib fa re]
 r16 do[ mib la] fad[ la fad re] r sib[ re sol] re[ sol re sib]
 sol'16[ mib re do] mib'[ mib, sol do] re [re, fa sib] do[ mib, fa la]
 sib16[ sib, re fa] solb[ mib do solb'] fa[ re fa la] sib[ fa sib re]
%135-156
 s1*22
%157-160
 mi2 s2
 re2 s2
 s2. <do, fad>4
%161-176
 s1*17
%177
 si'4 \rest <fa' lab si> <fad la do> <fad la>
 <fad la>2. <re la'>4
 <re sol>4 <re sol> <do sol'> sol'
%180
 sol2. s4
 r4 <lab, dob re> <lab sib> <lab sib>
 <sol sib>4 <lab re> sol fa8.[ mib16]
 <re sol>4 <re sol> <do sol'> sol'
 sol2. s4
%185-186
 s1*2
%187
 <sol, dod>2. s4
%188
 s1
%189
 <fa si>2. s4
 <la'!>1
 sol2( fa)
%192-204
 s1*13
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A13. NOTES PIANO HAUT:  VOIX 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hautIII = \context Staff \relative do'' \new Voice { \voiceThree
%1-100
 s1*100
%101
 sol2 s2
%102-181
 s1*80
%182
 s2. \NOTEHS #2 lab4
%102-204
 s1*22
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A14. NOTES PIANO HAUT:  VOIX 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hautIV = \context Staff \relative do'' \new Voice { \voiceFour
%1-26
 s1*26
%27
 s2. lab4
%28-101
 s1*74
%102
 s4 \NOTEHS #1.5 sol8.[ lab16] s2
%103-109
 s1*7
%110
 s4 \NOTEHS #1.5 sol8.[ lab16] s2
%111-204
 s1*94
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartHaut = {
 \SLURIN
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \once \override TextScript #'outside-staff-padding = #0.5
 s1*0 ^\MOVEMENT
 << \partHautI \hautII \hautIII \hautIV >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A21. NOTES PIANO BAS VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basI = \context Staff \relative do, \new Voice { \voiceOne

%1
 \oneVoice
 <sol sol'>2. \fermata r4
 R1
 R1
 R1
%5
 r2 r4 sol''8.-.[ sol16-.]
 sol4-. sol4-. sol4-. sol4-.
 sol4-. la8.-.[ si16-.] do4 fa,8.[ fa16]
 sol4.. <fa sol>16 <mib sol>4 <sol, sol'>8.[ <sol sol'>16]
 <do sol'>2. r4
%10
 R1
 R1
 R1
 r2 r4 sib'8.-.[ sib16-.]
 sib4-. sib4-. sib4-. sib8.-.[ sib16-.]
%15
 sib4-. do8.-.[ re16-.] mib4 fa,8.[ fa16]
 sol4.. <fa sol>16 <mib sol>4 <sol, sol'>8.[ <sol sol'>16]
 <do sol'>2. r4
 r4 fa'( fad) <re fad>4
%19
 \voiceOne
 fad2. re4
%20
 \oneVoice
 <sol, re'>4 <fa sol re'>8.[ <fa sol re'>16] <mib sol do>4 <re sol si>8.[ <do sol' do>16]
 <sol' si>2. <sol, sol'>8.[ <sol sol'>16]
 <sol sol'>4 <sol sol'> <sol sol'> <sol sol'>8.[ <sol sol'>16]
 <sol sol'>4 <la la'>8.[ <si si'>16] <do do'>4 <fa, fa'>8.[ <fa fa'>16]
 <sol sol'>4 sol'8.[ <fa sol>16] <mib sol>4 <sol,, sol'>8.[ <sol sol'>16]
%25
 <do sol'>2. r4
 r4 fa''( <re fa> <sib fa'>)
 mib4( <si re fa> <do mib>) fa,
 sol4 sol8.[ <fa sol>16] <mib sol>4 <re sol si>8.[ <do sol' do>16]
 <sol' si>2. <sib,,! sib'!>8.[ <sib sib'>16]
%30
 <sib sib'>4 <sib sib'>4 <sib sib'>4 <sib sib'>8.[ <sib sib'>16]
 <sib sib'>4 <do do'>8.[ <re re'>16] <mib mib'>4 <fa fa'>8.[ <fa fa'>16]
 <sol sol'>4 sol'8.[ <fa sol>16] <mib sol>4 <sol,, sol'>8.[ <sol sol'>16]
 <do sol'>2. r4
 <lab' mib' lab>2. r4
%35
 <mib do' mib>2. <do' do'>4
 <fa, fa'>4 <sol sol'>8.[ <lab lab'>16] <sol sol'>4 <sol, sol'>
 <do sol' do>2. r4
 <lab' mib' lab>2. r4
 <mib do' mib>2. r4
%40
 reb'4 mib8.-.[ fa16-.] mib4-. <mib, mib'>_.
 \TUPNO \times 2/3 { lab8([ do mib] } \times 2/3 { do[ mib lab] } \times 2/3 { si,[ re lab'] } \times 2/3 { do,[ mib lab]) }
 \times 2/3 { lab,[ do lab'] } \times 2/3 { do,[ mib lab] } \times 2/3 { si,[ re lab'] } \times 2/3 { do,[ mib lab] }
 \times 2/3 { reb,8[ fa lab] } \times 2/3 { reb,[ sol sib] } \times 2/3 { do,[ lab' do] } \times 2/3 { do,[ mib lab] }
 \times 2/3 { sib,8[ mib lab] } \times 2/3 { sib,[ mib sol] } \times 2/3 { lab,[ mib' sib'] } \times 2/3 { lab,[ mib' lab] }
%45
 \times 2/3 { reb,8[ lab' sib] } \times 2/3 { fa[ lab reb] } \times 2/3 { mib,[ lab do] } \times 2/3 { mib,[ sol sib] }
 \times 2/3 { lab,8[ do lab'] } \times 2/3 { do,[ mib lab] } \times 2/3 { si,[ re lab'] } \times 2/3 { do,[ mib lab] }
 \times 2/3 { lab,8[ do lab'] } \times 2/3 { do,[ mib lab] } \times 2/3 { si,[ re lab'] } \times 2/3 { do,[ mib lab] }
 \times 2/3 { reb,8[ fab lab] } \times 2/3 { reb,[ fab sib] } \times 2/3 { dob,[ solb' dob] } \times 2/3 { dob,[ solb' dob] }
 \times 2/3 { fab,8[ lab reb] } \times 2/3 { fab,[ solb sib] } \times 2/3 { mib,[ solb dob] } \times 2/3 { mib,[ sol reb'] }
%50
 \times 2/3 { fab,8[ lab dob] } \times 2/3 { lab[ dob fab] } \times 2/3 { solb,[ dob mib] } \times 2/3 { solb,[ sib reb] }
 \times 2/3 { dob,8[ mib dob'] } \times 2/3 { mib,[ solb dob] } \times 2/3 { re,![ fa dob'] } \times 2/3 { mib,[ solb dob] }
 \times 2/3 { dob,8[ mib solb] } \times 2/3 { dob,8[ mib solb] } \times 2/3 { sib,[ reb mib] } \times 2/3 { lab,[ reb mib] }
 \times 2/3 { sol,8[ reb' mib] } \times 2/3 { sol,8[ sib mib] } \times 2/3 { lab,[ dob mib] } \times 2/3 { reb[ fab sib] }
 \times 2/3 { mib,8[ sib' reb] } \times 2/3 { mib,[ sib' reb] } \times 2/3 { mib,[ sib' reb] } \times 2/3 { mib,[ sib' reb] }
%55
 \times 2/3 { lab8[ do mib] } \clef treble \times 2/3 { do[ mib lab] } \times 2/3 { si,[ re lab'] } \times 2/3 { do,[ mib lab] }
 \times 2/3 { lab,8[ do lab'] } \times 2/3 { do,[ mib lab] } \times 2/3 { si,[ re lab'] } \times 2/3 { do,[ mib lab] }
 \times 2/3 { reb,8[ fa lab] } \times 2/3 { reb,[ mib sib'] } \times 2/3 { do,[ mib lab] } \times 2/3 { do,[ mib lab] }
 \times 2/3 { sib,8[ mib sol] } \times 2/3 { sib,[ mib sol] } \times 2/3 { lab,[ mib' lab] } \times 2/3 { lab,[ mib' lab] }
 \times 2/3 { reb,8[ lab' sib] } \times 2/3 { fa[ lab reb] } \times 2/3 { mib,[ lab do] } \times 2/3 { mib,[ sol sib] }
%60
 <lab, do lab'>8 r8 r4 r4 \clef bass lab8.([ do16]
 mib4) mib mib mib(
 fa2) ( mib)
 reb2( do)
 sib4( reb do <mib, sib'>)
%65
 <lab, mib' lab>4 r4 r4 <lab lab'>8.[ <do do'>16]
 <mib mib'>4 <mib mib'> <mib mib'> <mib mib'>
 <fab fab'>2 <mib mib'>
%68
 <reb reb'>2 \voiceOne dob'4. sib8
 \oneVoice <fab lab>4 <reb lab' fab'> <solb mib'> <solb reb'>
%70
 <dob, solb' dob>4 r4 r2
 \times 2/3 { \TUPNO dob8[ mib solb] } \times 2/3 { dob,[ mib solb] } \times 2/3 { sib,[ reb mib] } \times 2/3 { lab,[ reb mib] } 
 \times 2/3 { sol,8[ reb' mib] }  \times 2/3 { sol,[ sib mib] }  \times 2/3 { lab,[ dob mib] }  \times 2/3 { reb[ fab sib] } 
 \times 2/3 { mib,8[ sib' reb] }  \times 2/3 { mib,[ sib' reb] }  \times 2/3 { mib,[ sib' reb] }  \times 2/3 { mib,[ sib' reb] } 
 \times 2/3 { lab,8[ <mib' lab do> <mib lab do>] }  \times 2/3 { <mib lab do>[ <mib lab do> <mib lab do>] } 
  \times 2/3 { <mib lab do>[ <mib lab do> <mib lab do>] }  \times 2/3 { <mib lab do>[ <mib lab do> <mib lab do>] } 
%75
 \times 2/3 { reb,8[ <reb' fa do'> <reb fa do'>] }  \times 2/3 { <reb fa la>[ <reb fa la> <reb fa la>] } 
  \times 2/3 { <reb fa sib>[ <reb fa sib> <reb fa sib>] }  \times 2/3 { <reb fa sib>[ <reb fa sib> <reb fa sib>] } 
 \times 2/3 { do,8[ <do' mib sib'> <do mib sib'>] }  \times 2/3 { <do mib sol>[ <do mib sol> <do mib sol>] } 
  \times 2/3 { <do mib lab!>[ <do mib lab> <do mib lab>] }  \times 2/3 { <do mib lab>[ <do mib lab> <do mib lab>] } 
 \times 2/3 { reb,8[ <reb' fa> <reb fa>] }  \times 2/3 { <reb fa>[ <reb fa> <reb fa>] } 
  \times 2/3 { mib,[ <mib' lab> <mib lab>] }  \times 2/3 { mib,[ <mib' sol> <mib sol>] } 
 \times 2/3 { lab,8[ <mib' lab do> <mib lab do>] }  \times 2/3 { <mib lab do>[ <mib lab do> <mib lab do>] } 
  \times 2/3 { <mib lab do>[ <mib lab do> <mib lab do>] }  \times 2/3 { <mib lab do>[ <mib lab do> <mib lab do>] } 
 \times 2/3 { reb,8[ <reb' fa do'> <reb fa do'>] }  \times 2/3 { <reb fa do'>[ <reb fa do'> <reb fa do'>] } 
  \times 2/3 { <reb fa sib>[ <reb fa sib> <reb fa sib>] }  \times 2/3 { <reb fa sib>[ <reb fa sib> <reb fa sib>] } 
%80
 \times 2/3 { do,8[ <do' mib sib'> <do mib sib'>] }  \times 2/3 { <do mib sib'>[ <do mib sib'> <do mib sib'>] } 
  \times 2/3 { <do mib lab>[ <do mib lab> <do mib lab>] }  \times 2/3 { <do mib lab>[ <do mib lab> <do mib lab>] } 
 \times 2/3 { reb,8[ <reb' fa lab> <reb fa lab>] }  \times 2/3 { <reb fa la>[ <reb fa sib> <reb fa sib>] }
  \times 2/3 { mib,8[ <mib' lab> <mib lab>] }  \times 2/3 { mib,[ <mib' sol sib> <mib sol sib>] } 
 \times 2/3 { <lab,, lab'>8[ <lab' do mib> <lab do mib>] } \times 2/3 { \repeat tremolo 3 <lab do mib>8 }
  \times 4/6 { \repeat tremolo 6 <lab do mib>8 }
 \times 2/3 { <lab, lab'>8[ <lab' do mib> <lab do mib>] } \times 2/3 { \repeat tremolo 3 <lab do mib>8 }
  \times 4/6 { \repeat tremolo 6 <lab do mib>8 }
 \times 2/3 { <sol, sol'>8[ <sol' do mib> <sol do mib>] } \times 2/3 { \repeat tremolo 3 <sol do mib>8 }
  \times 4/6 { \repeat tremolo 6 <sol do mib>8 }
%85
 \times 2/3 { <sol, sol'>8[ <sol' do mib> <sol do mib>] } \times 2/3 { \repeat tremolo 3 <sol do mib>8 }
  \times 4/6 { \repeat tremolo 6 <sol do mib>8 }
 \times 2/3 { <fa, fa'>8[ <fa' do' mib> <fa do' mib>] } \times 2/3 { \repeat tremolo 3 <fa do' mib>8 }
  \times 2/3 { <fad, fad'>8[ <fad' do' mib> <fad do' mib>] } \times 2/3 { \repeat tremolo 3 <fad do' mib>8 }
 <sol si re>2. si8.([ do16]
 re4-.) ( re-. re-.) do8.^([ re16]
 mib4.) ( re8 do4 sib!8.[ lab16])
%90
 sol4-.( sol-.) sol-.( sol-.)
 do2 r4 <si, si'>8.([ <do do'>16]
 <re re'>4) <re re'> <re re'> <do do'>8.([ <re re'>16]
 <mib mib'>4.) ( <re re'>8 <do do'>4) <sib sib'>8.[ <lab lab'>16]
 <sol sol'>4 <sol sol'> <sol sol'> <sol sol'>
%95
 \times 2/3 { <do do'>8[ sol'' sol] } \times 2/3 { \repeat tremolo 3 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
%100
 \times 2/3 { sol8[ sol sol] } \times 2/3 { <fad sol>8[ <fad sol> <fad sol>] }
  \times 2/3 { <fa sol>8[ <fa sol> <fa sol>] } \times 2/3 { <mib sol>8[ <mib sol> <re sol>] }
 \times 2/3 { \repeat tremolo 3 <do sol'>8 }  \times 2/3 { \repeat tremolo 3 <sib! sol'>8 }
  \times 2/3 { \repeat tremolo 3 <la sol'>8 } \times 2/3 { \repeat tremolo 3 <lab fad'>8 }
 \times 2/3 { \repeat tremolo 3 <sol fa'!>8 } \times 2/3 { \repeat tremolo 3 <fa sol>8 }
  \times 2/3 { \repeat tremolo 3 <mib sol>8 } \times 2/3 { \repeat tremolo 3 <sol, sol'>8 }
 \times 2/3 { <do sol'>8[ sol'' sol] } \times 2/3 { \repeat tremolo 3 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 2/3 { \repeat tremolo 3 lab8 } \times 2/3 { \repeat tremolo 3 la8 }  \times 4/6 { \repeat tremolo 6 sib8 }
%105
 \times 2/3 { \repeat tremolo 3 sib8 } \times 2/3 { \repeat tremolo 3 si8 }
  \times 2/3 { do8[ sol sol] } \times 2/3 { \repeat tremolo 3 sol8 }
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 4/6 { \repeat tremolo 6 sol8 } \times 2/3 { sol8([ lab la]) } \times 2/3 { sib[ sib sib] }
 \times 2/3 { sib8[ sib sib] } \times 2/3 { <la sib>[ <la sib> <la sib>] }
  \times 2/3 { <lab sib>[ <lab sib> <lab sib>] } \times 2/3 { <sol sib>[ <sol sib> <fa lab sib>] }
%109
 \times 2/3 { \repeat tremolo 3 <mib sol sib>8 } \times 2/3 { \repeat tremolo 3 <si fa' lab>8 }
  \times 2/3 { \repeat tremolo 3 <do mib sol>8 } \voiceOne \times 2/3 { fa8[ fa fa] }
%110
 \times 2/3 { fa8[ fa fa] } \times 2/3 { sol,[ sol sol] } \times 2/3 { sol[ sol sol] } \times 2/3 { sol[ sol sol] }
 \times 2/3 { <do, sol' do>8[ re' do] } \times 2/3 { sib_>[ do sib] } \times 2/3 { do [ do do] } \times 2/3 { do [ do do] }
 \times 2/3 { do8[ do do] } \times 2/3 { do[ do do] } \times 2/3 { do[ do do] } \times 2/3 { do[ do do] }
 \times 2/3 { do8[ do do] } \times 2/3 { do[ do do] } \times 2/3 { do[ do do] } \times 2/3 { do[ do do] }
 \times 2/3 { lab8[ lab lab] } \times 2/3 { lab[ lab lab] }
  \oneVoice \times 2/3 { <sol, sol'>[ sol' sol] } \times 2/3 { <sol, sol'>[ sol' sol] }
%115
 \times 2/3 { <do, sol' do>8[ mib' re] } \times 2/3 { do->[ re do] } \times 2/3 { si[-> do si] } \times 2/3 { sib->[ do sib] }
%116
 \voiceOne
 \times 4/6 { \repeat tremolo 6 do8 } \times 4/6 { \repeat tremolo 6 do8 }
 \times 4/6 { \repeat tremolo 6 do8 } \times 4/6 { \repeat tremolo 6 do8 }
 \times 4/6 { \repeat tremolo 6 lab8 } \times 2/3 { <sol, sol'>[ sol' sol] } \times 2/3 { <sol, sol'>[ sol' sol] }
 \times 4/6 { \repeat tremolo 6 do8 } \times 4/6 { \repeat tremolo 6 do8 }
%120
 \times 4/6 { \repeat tremolo 6 do8 } \times 4/6 { \repeat tremolo 6 do8 }
 \times 4/6 { \repeat tremolo 6 do8 } \times 2/3 { \repeat tremolo 3 do8 } \times 2/3 { \repeat tremolo 3 do8 }
 \times 2/3 { do8[ re re] } \times 2/3 { \repeat tremolo 3 re8 } \times 4/6 { \repeat tremolo 6 re8 }
%123
 \oneVoice
 \times 4/6 { \repeat tremolo 6 <do mib>8 } \times 4/6 { \repeat tremolo 6 re8 }
%124
 \voiceOne
 \times 2/3 { re8[ re re] } \times 2/3 { re8[ re re] } \times 4/6 { \repeat tremolo 6 re8 }
%125
 \oneVoice
 r8 sol,-. r sol-. r re-. r sol-.
 r8 do, r do r sol' r sol
 r8 lab! r la r sib r re
 r8 mib r do r re r re,
 r8 sol-.[ la-. do-.] sib-.[ sol'-. re-. sib-.]
%130
 r8 sol r sol r re r sol
 r8 do, r fa r sib, r sib'
 r8 la r re, r sol r sol,
 r8 mib' r do r re r fa,
 r8 sib'-.[ do-. mib-.] re-.[ sib'-. fa-. re-.]
%135
 sib16[ re fa re] sib[ re fa re] la[ do re do] sol[ do re do]
 fad,[ do' re do] fad,[ la re la] sol[ sib re sib] do[ mib la mib]
 re16[ la' do la] re,[ la' do la] re,[ la' do la] re,[ la' do la]
 sol16[ sib sol re] sib[sol' re sib] sol r16 r8 <sol sol'>8.[ <sib sib'>16]
 <re re'>4 <re re'> <re re'> <re re'>
%140
 <mib mib'>2 <re re'>
 <do do'>2 <sib sib'>
 <la la'>4 <do do'> <sib sib'> <la la'>
 <sol sol'>2. <sol sol'>8.[ <sib sib'>16]
 <re re'>4 <re re'> <re re'> <re re'>
%145
 <mib mib'>2 <re re'>
 <do do'>2 <sib sib'>4. <la la'>8
 <sol sol'>4 <mib' mib'> <re re'> <do do'>
 <sib sib'>2. r4
 sib16[ re fa re] sib[ re fa re] la[ do re do] sol[ do re do]
%150
 fad,16[ do' re do] fad,[ la re la] sol[ sib re sib] do[ mib la mib]
 re16[ la' do la] re,[ la' do la] re,[ la' do la] re,[ la' do la]
 \key do \major \TUPNO \times 2/3 { sol,8[ <re' sol si> <re sol si>] } \times 2/3 { <re sol si>8[ <re sol si> <re sol si>] }
  \times 2/3 {<re sol si>8[ <re sol si> <re sol si>] } \times 2/3 {<re sol si>8[ <re sol si> <re sol si>] }
 \times 2/3 { do,8[ <do' mi si'> <do mi si'>] } \times 2/3 { <do mi sold>8[ <do mi sold> <do mi sold>] }
  \times 2/3 { <do mi la>8[ <do mi la> <do mi la>] } \times 2/3 { <do mi la>8[ <do mi la> <do mi la>] }
 \times 2/3 { si,8[ <si' re la'> <si re la'>] } \times 2/3 { <si re fad>8[ <si re fad> <si re fad>] }
  \times 2/3 { <si re sol>8[ <si re sol> <si re sol>] } \times 2/3 { <si re sol>8[ <si re sol> <si re sol>] }
%155
 \times 2/3 { do,8[ <do' mi> <do mi>] } \times 2/3 { <do mi>8[ <do mi> <do mi>] }
  \times 2/3 { re,8[ <re' sol> <re sol>] } \times 2/3 { re,8[ <re' fad> <re fad>] }
 \times 2/3 { sol,8[ <re' sol si> <re sol si>] }\times 2/3 { \repeat tremolo 3 <re sol si>8 }
  \times 4/6 { \repeat tremolo 6 <re sol si>8 }
 \times 2/3 { do,8[ <do' mi si'> <do mi si'>] } \times 2/3 { \repeat tremolo 3 <do mi si'>8 }
  \times 4/6 { \repeat tremolo 6 <do mi si'>8 }
 \times 2/3 { si,8[ <si' re la'> <si re la'>] } \times 2/3 { <si re la'>8[ <si re la'> <si re la'>] }
  \times 2/3 { <si re sol>8[ <si re sol> <si re sol>] } \times 2/3 { <si re sol>8[ <si re sol> <si re sol>] }
 \times 2/3 { do,8[ <do' mi sol> <do mi sol>] } \times 2/3 { <do mi sold>8[ <do mi sold> <do mi la>] }
  \times 2/3 { si,8[ <re' sol> <re sol>] } \times 2/3 { si,8[ <re' fad la> <re fad la>] }
%160
 <sol, re' sol>4 r r si8.^([ do16]
 re4-.) ( re-. re-.) do8.^([ re16]
 mib4. re8 do4 sib8.[ lab16])
 sol4-.( sol-.) sol-.( sol-.)
 do2 r4 <si, si'>8.[ <do do'>16]
%165
 <re re'>4 <re re'> <re re'> <do do'>8.[ <re re'>16]
 <mib mib'>4. <re re'>8 <do do'>4 <sib sib'>8.[ <lab lab'>16]
 <sol sol'>4-.( <sol sol'>-.) <sol sol'>-.( <sol sol'>-.)
 \times 2/3 { <do do'>8[ sol''-.( sol-.] } \times 2/3 { sol8-.[ sol-. sol-.] }
  \times 2/3 { sol8-.[ sol-. sol-.] } \times 2/3 { sol8-.[ sol-. sol-.]) }
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
%170
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 2/3 { sol8[ sol sol] } \times 2/3 { sol8 [ sol <fa sol>] }
  \times 2/3 { <mi sol>8 [ sol sol] } \times 2/3 { <do, sol'>8 [ sol' sol] }
 \times 2/3 { <sol, sol'>8 [ sol' sol] } \times 2/3 { sol8[ sol sol] } \times 4/6 { sol8[ sol sol sol sol sol] }
 \times 2/3 { sol8[ sol sol] } \times 2/3 { <fad sol>8[ <fad sol> <fad sol>] }
  \times 2/3 { <fa sol>8[ <fa sol> <fa sol>] } \times 2/3 { <mi sol>8 [ <mi sol> <re fa sol>] }
 \times 2/3 { <do mi sol>8[ <do mi sol> <do mi sol>] } \times 2/3 { <sold re' fa>8[ <sold re' fa> <sold re' fa>] }
  \times 2/3 { <la do mi>8[ <la do mi> <la do mi>] } \times 2/3 { fa8 [ <fa' la> <fa la>] }
%175
 \times 2/3 { sol,8 [ sol' sol] } \times 2/3 { sol,8 [ sol' sol] }
  \times 2/3 { sol,8 [ sol' sol] } \times 2/3 { sol8 [ <sol la> <sol si>] }
 \times 2/3 { <do, sol' do>[ sol' sol] } \times 2/3 { \repeat tremolo 3 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
%177
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 2/3 { sol8[ sol sol] } \times 2/3 { sol8[ sol sol] } \times 2/3 { sol8([ lab la]) } \times 2/3 { sib8[ sib sib] }
%181
 \times 2/3 { sib8[ sib sib] } \times 2/3 { <sib fa'>8[ <sib fa'> <sib fa'>] }
  \times 2/3 { <sib re>8[ <sib re> <sib re>] } \times 2/3 { sib8[ sib sib] }
 \times 2/3 { mib8[ mib mib] } \times 2/3 { <si! re fa>8[ <si re fa> <si re fa>] }
  \times 2/3 { <do mib>8[ <do mib> <do mib>] } \times 2/3 { <fa, lab>8[ <fa lab> <fa lab>] }
 \times 2/3 { sol8[ sol sol] } \times 2/3 { <fa sol>8[ sol sol] } \times 2/3 { <mib sol>8[ sol sol] } \times 2/3 { <do, sol'>8[ sol' sol] }
 \times 2/3 { <sol, sol'>8[ sol' sol] } \times 2/3 { \repeat tremolo 3 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
%185
 \times 2/3 { sol8[ sol sol] } \times 2/3 { <fad sol>8[ <fad sol> <fad sol>] }
  \times 2/3 { <fa sol>8[ <mi sol> <re sol>] } \times 2/3 { <do sol'>8[ <si sol'> <sib sol'>] }
 \times 4/6 { \repeat tremolo 6 <la sol'>8 } \times 2/3 { <la sol'>8[ la la] } \times 2/3 { la8[ la la] }
 \times 2/3 { sib8[( la) la] }\times 2/3 { la8[ la la] } \times 4/6 { \repeat tremolo 6 la8 }
 \times 4/6 { \repeat tremolo 6 lab8 } \times 4/6 { \repeat tremolo 6 lab8 }
 \times 2/3 { sol8[( lab) lab] } \times 2/3 { lab8[ lab lab] }
  \times 2/3 { lab8[ lab lab] } \times 2/3 { sol8[ sol sol] }
%190
 \voiceOne
 do2( re4 mib)
 mi!2( re)
 do1 ~
 do2. \oneVoice r4
%193
 r4 <sol' sol'>2_> r4
%195
 r4 <sol sol'>2_> do8([re]
 mib4) ( re8[ do]) <sol mi'!>4-.( <sol re'>-.)
 <do, sol' do>2. si'8.([do16]
 re4-.) ( re-.re-.) do8.([ re16]
 mib4. re8 do8 [ sol do re])
%200-204
 mib4( re8[ do]) <sol mi'!>4-.( <sol re'>-.)
 <do, sol' do>2 <sol' mi'>4-.( <sol re'>-.)
 <do, sol' do>2 <sol mi'>4( <sol re'>)
 <do, sol' do>2 <do sol' do>2
 <do sol' do>1 _\fermata
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A22. NOTES PIANO BAS VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basII = \context Staff \relative do, \new Voice { \voiceTwo
 \slurDown

%1-18
 s1*18
%19
 do''4.( re8 mib4) fad,4
%20-67
 s1*48
%68
 s2 dob
%69-108
 s1*40
%109
 s2. \TUPNO \times 2/3 { lab8[ sib lab] }
%110
 \times 2/3 { sol8[ lab sol] } \times 2/3 { fa[ sol fa] } \times 2/3 { mib[ fa mib] } \times 2/3 { sol,[ lab sol] }
 s2 \times 2/3 { lab'8->[ sib lab] } \times 2/3 { sol->[ lab sol] }
 \times 2/3 { fa8->[ sol fa] } \times 2/3 { lab->[ sib lab] } \times 2/3 { sol->[ lab sol] } \times 2/3 { fa->[ sol fa] }
 \times 2/3 { mib8[ fa mib] } \times 2/3 { sol[ lab sol] } \times 2/3 { fa[ sol fa] } \times 2/3 { mib[ fa mib] }
 \times 2/3 { reb8[ mib do] } \times 2/3 { reb[ mib fa] } s2
%115
 s1
%116
 \times 2/3 { la8[ sib la] } \times 2/3 { lab[ sib lab] } \times 2/3 { sol[ lab sol] } \times 2/3 { fa[ sol fa] }
 \times 2/3 { mi8[ fa mi] } \times 2/3 { mib[ fa mib] } \times 2/3 { re[ mib re] } \times 2/3 { do[ re mib] }
 \times 2/3 { fa8[ mib reb] } \times 2/3 { reb[ mib fa] } s2
 \times 2/3 { \repeat tremolo 3 do8 } \times 2/3 { \repeat tremolo 3 re8 }
  \times 2/3 { \repeat tremolo 3 mib8 } \times 2/3 { \repeat tremolo 3 mi8 }
%120
 \times 2/3 { \repeat tremolo 3 fa8 } \times 2/3 { \repeat tremolo 3 fad8 }
  \times 2/3 { \repeat tremolo 3 sol8 } \times 2/3 { \repeat tremolo 3 lab8 }
 \times 4/6 { \repeat tremolo 6 lab8 } \times 2/3 { \repeat tremolo 3 lab8 } \times 2/3 { \repeat tremolo 3 la8 }
 \times 4/6 { \repeat tremolo 6 la8 } \times 4/6 { \repeat tremolo 6 sib8 }
%123
 s1
%124
 sol2 r2
%125-189
 s1*65
%190
 \times 2/3 { fad8[ fad fad] } \times 2/3 { fad8[ fad fad] } \times 2/3 { fad8[ fad fad] } \times 2/3 { fad8[ fad fad] }
 \times 4/6 { \repeat tremolo 6 sol8 } \times 4/6 { \repeat tremolo 6 sol8 }
 \times 4/6 { \repeat tremolo 6 do,8 } \times 4/6 { \repeat tremolo 6 do8 }
 \times 4/6 { \repeat tremolo 6 do8 } do4 s4
%194-204
 s1*11
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A23. NOTES PIANO BAS VOIX 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basIII = \context Staff \relative do' \new Voice { \voiceThree

%1-176
 s1*176
%177
 r2 r4 re
 do4.^( re8 mib4 fad)
 sol!4^( fa! mib do)
 sol'2 s2
%181-204
 s1*24
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartBas = {
 \SLURIN
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 << \basI \basII \basIII >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. DYNAMIQUES PARTITION COMMUNES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartCom = {
 \override DynamicTextSpanner #'dash-period = #-1.0
%1-5
 s2. \ff s4 \pp
 s1*3
 s2. s4-\STACCATO
%6-16
 s1*1
 s2. s4-\SFORZATO
 s1*7
 s2. s4-\SFORZATO
 s1
%17-24
 s2. s4 \p
 s2. s8. \cr s16 \!
 s4 \decr s8 \! s8 s2
 s1
 s2. s4 \f
 s1
 s2. s4-\SFORZATO
 s2. s4-\SFORZATO
%25-33
 s2. s4 \p
 s2. s8. \cr s16 \!
 s4 \decr s4 \! s2
 s1
 s2. s4 \ff
 s1
 s2. s4-\SFORZATO
 s2. s4-\SFORZATO
 s1
%34-40
 \DYNEXO #'(1 . 0) s1 \fz
 \DYNEXO #'(1 . 0) s1 \fz
 s1
 s2. s4 \p
 s1
 s2. s4 \pp
 s1
%41-46
 s2. s4 \p
 s4 s2 \cr \times 2/3 { s4 s8 \! }
 s2 \decr \times 2/3 { s4 s8 \! } s4
 s1
 \DYNEXO #'(0.5 . 0) s1 \p
 s1
%47-51
 \times 2/3 { s4 s8 \mf } s2 \cr \times 2/3 { s4 s8 \! }
 s2 \decr \times 2/3 { s8 \! s4 } s4
 \DECRESC s2 \decr s4 s4 \!
 \DYNEXO #'(0.5 . 0) s1 \pp
 s1
%52-58
 s4 s2 \cr \times 2/3 { s8 \! s4 }
 s4 \times 2/3 { s4 s8 \decr } s4 \times 2/3 { s4 s8 \! }
 \DYNEXO #'(1 . 0) s1 \p
 s1
 s4 \times 2/3 { s4 s8 \cr } s4 \times 2/3 { s8 s8 \! s8 }
 s4 \decr \times 2/3 { s8 \! s4 } s2
 s1
%59-64
 s1 \pp
 s2. s4 \mf
 s2. \times 2/3 { s4 \cr s8 \! }
 \times 2/3 { s4 \decr s8 \! } s2.
 s1*2
%65-70
 s2. s4 \f
 s2 s4 \cr \times 2/3 { s4 s8 \! }
 s1*4
%71-75
 s2 \mf s4 \cr \times 2/3 { s8 s8 \! s8 }
 \times 2/3 { s8 \decr s8 s8 \! } s2 s4 \p
 s1
 \DYNEXO #'(1.5 . 0) s1 \pp
 s1
%76-79
 s2 s4 \cr \times 2/3 { s4 s8 \! }
 s4 \decr \times 2/3 { s4 s8 \! } s2
 s1*2
%80-84
 s2 s4 \cr \times 2/3 { s4 s8 \! }
 s1
 s2. s4 \pp
 s1*2
%85-90
 \times 2/3 { s4 \CRESC s8 \cr } s2 s4 \!
 \DYNEXO #'(0.5 . 0) s1 \f
 s2 \p s2 \pp
 s1*3
%91-98
 s4 \CRESC s2 \cr s4 \!
 \DYNEXO #'(1 . 0) s2 \f s4 \cr \times 2/3 { s4 s8 \! }
 \DYNEXO #'(1.5 . 0) \PINEXO #'(1 . 0) s2 \ff \decr s4 \! s4
 s1 \f
 \DYNEXO #'(1 . 0) s2. \p s4 \pp
 s1*3
%99-106
 \CRESC s2. \cr s4 \! \f
 s1
 s4 \CRESC s2 \cr s4 \!
 s2. s4 \fz
 \times 2/3 { s4 \decr s8 \! } s2 s4 \pp
 s1
 s2 \decr s2 \!
 s1
%107-112
 s2 \CRESC s4 \cr s4 \! \f
 s2 \times 2/3 { s4 s8 \cr } \times 2/3 { s4 s8 \! }
 s2 \decr s4 \! s4
 \CRESC s2 \cr s2 \!
 s2. s4 \ff
 s1
%113-116
 s2. s4 \cr
 \times 2/3 { s8 \! s8 s8 \decr } \times 2/3 { s4 s8 \! } s2
 s1*2
%117-130
 s2. s4 \cr
 \times 2/3 { s8 s8 \! s8 } \times 2/3 { s8 \decr s8 s8 \! } s2
 s1
 \DECRESC s4 \decr s4 \! \times 2/3 { s4 \cr s8 \! } \times 2/3 { s4 \decr s8 \! }
 s2. \p \times 2/3 { s8 s4 \pp }
 s2 \DIMIN s2 \decr
 s1 \!
 s2. s4 \pp
 s1*6
%131-134
 s16 \CRESC s16 \cr s2. s8 \!
 s8. \DECRESC s16 \decr s4 s2 \!
 \DYNEXO #'(1 . 0) s1 \pp
 s1
%135-137
 s2 s4 \cr s8. s16 \!
 s4.. \decr s16 \! s2
 s1
%138-147
 s2 s16 s16 \f s8 s4
 s1*9
%148-153
 \DECRESC s2 \decr s4 \! s4 \p
 s4 s2 \cr s8. s16 \!
 s4.. \decr s16 \! s2
 s1
 s1 \pp
 s1
%154-157
 s2 s4 \cr s8 s8 \!
 s4 \decr s8 s8 \! s2
 s1*2
%158-163
 s2 s4 \cr s8 s8 \!
 s4 \decr s8 s8 \! s2
 \times 2/3 { s8 \DYNEXO #'(1 . 0) s4 \pp } s2.
 s1*3
%164-171
 \times 2/3 { s4 \CRESC s8 \cr } s2 s4 \!
 s2. \cr \times 2/3 { s4 s8 \! }
 s2 \f \decr \times 2/3 { s4 s8 \! } \times 2/3 { \DECRESC s4 \decr s8 \! }
 \DYNEXO #'(1 . 0) s1 \p
 s2. s4 \pp
 s1*3
%172-175
 \CRESC s2 \cr s4 \! s4 \f
 s4 s2 \cr s8. s16 \!
 s4 \decr  \times 2/3 { s4 s8 \! } s2
 s1
%176-179
 \DECRESC s2 \decr s4 \! s4 \pp
 s2 s4 \cr s8 s8 \!
 s4 \decr s8 \! s8 s2
 s1
%180-182
 s2 \CRESC s4 \cr \times 2/3 { s4 \! s8 }
 s2 s4 \cr \times 2/3 { s4 s8 \! }
 s4 \decr \times 2/3 { s8 \! s4 } s2
%183-189
 s1 \p
 s2. s4 \f
 s4 s2 \cr \times 2/3 { s4 s8 \! }
 \DYNEXO #'(1.5 . 0) \PINEXO #'(1.5 . 0) s2 \ff \decr \times 2/3 { s8 \! s4 } s4
 s1 \fp
 s2 \ff \decr \times 2/3 { s8 \! s4 } s4
 \DYNEXO #'(1 . 0) s1 \fp
%190-195
 s4 \f \decr \times 2/3 { s4 s8 \! } s4 s4 \p
 s1 \pp
 s1*4
 %196-204
 s1 \fp
 s1
 \DYNEXO #'(2 . 0) s1 \ppp
 s2. s8 \cr s8 \!
 s4. \decr s8 \! s2
 s1
 s2 \CRESC s4 \cr s4 \!
 \DYNEXO #'(1 . 0) s1 \p
 s1
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. DYNAMIQUES PARTITION PORTÉE DU HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartHaut = {
%1-128
 s1*128
%129-134
 s4 \cr s8. s16 \! s4 \decr s8. s16 \!
 s1*4
 s4 \cr s8. s16 \! s4 \decr s8. s16 \!
%135-204
 s1*68
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. DYNAMIQUES PARTITION PORTÉE DU BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartBas = {
%1-98
 s1*98
%99-101
 s1 \cr
 s4 \! \fz s4 \fz s4 \fz s4 \fz
 s4 \fz s4 \fz s4 \fz s4 \fz
%102-204
 s1*103
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES ET VOLUMES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% COMMUNES
dynMidiComA = {
%1
 \TEMPOFERMATA s2. \ff \TEMPOBASE s4 \pp
%2-16
 s1*15
%17-20
 s2. s4 \p
 s2 s2 \cr
 s2 \! \mf \decr s2 \! \p
 s1
%21-24
 s2. s4 \f
 s1*3
%25-33
 s2. s4 \p
 s2 s2 \cr
 s2 \! \mf \decr s2 \! \p
 s1
 s2. s4 \ff
 s1*4
%34-39
 s4 \fff s2. \ff
 s4 \fff s2. \ff
 s1
 s2. s4 \p
 s1
 s2. s4 \pp
 s1
%41-44
 s2. s4 \p
 s4 s2. \cr
 s2. \! \mf \decr s4 \! \p
 s1
%45-51
 s1 \p
 s2. s4 \cr
 s4 s2. \! \mf \cr
 s2 \! \f \decr s2
 s1
 s1 \! \pp
 s1
%52-55
 s4 s2 \cr s4 \! \mp
 s2 s2 \decr
 s1 \! \p
 s1
%56-60
 s4 s2. \cr
 s2 \! \mp \decr s2 \! \p
 s1
 s1 \pp
 s2. s4 \mf
%61-64
 s2. s4 \cr
 s4 \! \f \decr s2. \! \mf
 s1*2
%65-70
 s2. s4 \f
 s2 s2 \cr
 s1 \! \ff
 s1*3
%71-73
 s2 \mf s2 \cr
 s2. \! \f \decr s4 \! \p
 s1
%74-79
 s1 \pp
 s1
 s2 s2 \cr
 s2 \! \mp \decr s2 \! \pp
 s1*2
%80-84
 s2 s2 \cr
 s1 \! \mp
 s2. s4 \pp
 s1*2
%85-90
 s4 s2. \cr
 s1 \! \f
 s2 \p s2 \pp
 s1*3
%91-98
 s4 s2. \cr
 s2 \! \f s2 \cr
 s2. \! \ff \decr s4 \! \f
 s1 \f
 s2. \p s4 \pp
 s1*3
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PIANO HAUT
dynMidiHautB = {
%99-102
 s4 s2 \cr s4 \! \f
 s1
 s4 s2. \cr
 s2. s4 \! \ff
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PIANO BAS
dynMidiBasB = {
%99-102
 s1 \cr
 \times 2/3 { s8 \! \ff s4 \f } \times 2/3 { s8 \ff s4 \f } \times 2/3 { s8 \ff s4 \f } \times 2/3 { s8 \ff s4 \f }
 \times 2/3 { s8 \ff s4 \f }    \times 2/3 { s8 \ff s4 \f } \times 2/3 { s8 \ff s4 \f } \times 2/3 { s8 \ff s4 \f }
 s2. s4 \ff
}

%%%%%%%%%%%%%%%%%%%% COMMUNES
dynMidiComC = {
%103-106
 s4 \decr s4 \! \f s4 s4 \pp
 s1
 s2 \decr s2 \! \ppp
 s1
%107-112
 s2. \cr s4 \! \f
 s2. s4 \cr
 s2 \! \ff \decr s2 \! \f
 s1 \cr
 s2. s4 \! \ff
 s1
%113-116
 s2. s4 \cr
 s4 \! \fff s4 \decr s2 \! \ff
 s1*2
%117-121
 s2. s4 \cr
 s4 s4 \! \fff \decr s2 \! \ff
 s1
 s2 \decr s4 \! \p \cr s4 \! \f \decr
 s2. \! \p s4 \pp
%122-123
 s2. s4 \decr
 s1
%124-128
 s2. \! \ppp s4 \pp
 s1*4
%129-130
 s2 \cr s2 \! \mf \decr
 s1 \! \pp
%131-133
 s1 \cr
 s4 s2. \! \mp \decr
 s1 \! \pp
%134-137
 s2 \cr s4.. \! \mf \decr s16 \! \pp
 s2 s2 \cr
 s2 \! \mp \decr s2 \! \pp
 s1
%138-147
 s2 s16 s16 \f s8 s4
 s1*9
%148-153
 s2. \decr s4 \! \p
 s4 s2. \cr
 s2 \! \mf \decr s2 \! \p
 s1
 s1 \pp
 s1
%154-157
 s2 s2 \cr
 s2 \! \mp \decr s2 \! \pp
 s1*2
%158-163
 s2 s2 \cr
 s2 \! \mp \decr s4 \! \pp s4
 s1*4 \pp
%164-171
 s4 s2. \cr
 s1
 s1 \! \f \decr
 s1 \! \p
 s2. s4 \pp
 s1*3
%172-175
 s2. \cr s4 \! \f
 s4 s2. \cr
 s2 \! \ff \decr s2 \! \f
 s1
%176-182
 s2. \decr s4 \! \pp
 s2 s2 \cr
 s2 \! \mp \decr s2 \! \pp
 s1
 s2 s2 \cr
 s1
 s2 \! \mf \decr s2 \! \p
%183-186
 s1 \p
 s2. s4 \f
 s4 s2. \cr
 s2 \! \ff \decr s2 \! \f
%187-192
 s4. \f s8 \mp s2
 s2 \ff \decr s2 \! \f
 s4. \f s8 \mp s2
 s2 \f \decr s4 \! \mp s4 \p
 s1 \pp
 \TEMPOLENTA s2 \TEMPOLENTB s2
%193-196
 \TEMPOLENTC s1
 s1*2
 \TEMPOLENTD s4 \mf s2. \pp
%197-199
 s2. \fermata s4
 s1 \ppp
 s2. s4 \cr
%200
 \TEMPOLENTE s2 \! \p \decr \TEMPOLENTF s2 \! \ppp
 s1
 s2 s2 \cr
 s2 \! \p \TEMPOLENTG s2
 \TEMPOFERMATA s1
}

dynMidiSomHaut = { \dynMidiComA \dynMidiHautB \dynMidiComC }
dynMidiSomBas  = { \dynMidiComA \dynMidiBasB \dynMidiComC }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. VOLUMES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

volumeHautI = {
%1-59
\VOLMIN #0.2 \VOLMAX #1
s1*59
%60-69
s2. \VOLMIN #0.0 \VOLMAX #0.7  s4
s1*9
%70-86
s8 \VOLMIN #0.2 \VOLMAX #1     s2..
s1*16
%87-94
\VOLMIN #0.1 \VOLMAX #0.7      s1
s1*7
%95-159
\VOLMIN #0.2 \VOLMAX #1        s1
s1*64
%160-167
\VOLMIN #0.1 \VOLMAX #0.7   s1
s1*7
%168-204
s2. \VOLMIN #0.2 \VOLMAX #1    s4
s1*36
}

volumeHautII = {
%1-59
\VOLMIN #0.2 \VOLMAX #0.8
s1*59
%60-69
s2. \VOLMIN #0.0 \VOLMAX #0.7  s4
s1*9
%70-86
s8 \VOLMIN #0.2 \VOLMAX #1     s2..
s1*16
%87-94
\VOLMIN #0.1 \VOLMAX #0.7      s1
s1*7
%95-123
\VOLMIN #0.2 \VOLMAX #1        s1
s1*28
%124-134
\VOLMIN #0.15 \VOLMAX #0.6     s1
s1*10
%135-159
\VOLMIN #0.2 \VOLMAX #1        s1
s1*24
%160-167
\VOLMIN #0.1 \VOLMAX #0.7   s1
s1*7
%168-204
s2. \VOLMIN #0.2 \VOLMAX #1    s4
s1*36
}

volumeBas = {
%1-40
\VOLMIN #0.2 \VOLMAX #0.7
s1*40
%41-59
s2.  \VOLMIN #0.1 \VOLMAX #0.5   s4
s1*18
%60-69
s2.  \VOLMAX #1                  s4
s1*9
%70-73
s4  \VOLMIN #0.2 \VOLMAX #0.6    s2.
s1*3
%74-86
\VOLMIN #0.1 \VOLMAX #0.6        s1 
s1*11
s2.. \VOLMIN #0.2 \VOLMAX #1     s8
%87-94
s1*8
%95-98
\VOLMIN #0.1 \VOLMAX #0.6        s1
s1*3
%99-102
\VOLMIN #0.2 \VOLMAX #0.7        s1
s1*3
%103-106
\VOLMIN #0.1 \VOLMAX #0.6        s1
s1*3
%107-147
\VOLMIN #0.2 \VOLMAX #0.7        s1
s1*40
%148-159
s2. \VOLMIN #0.1 \VOLMAX #0.6    s4
s1*11
%160-167
\VOLMIN #0.2 \VOLMAX #1       s1
s1*7
%168-204
s8 \VOLMIN #0.2 \VOLMAX #0.6     s2..
s1*36
}

dynMidiHautI  = { << \dynMidiSomHaut \volumeHautI >> }
dynMidiHautII = { << \dynMidiSomHaut \volumeHautII >> }
dynMidiBasI   = { << \dynMidiSomBas \volumeBas >> }
dynMidiBasIII = { \dynMidiSomBas }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new PianoStaff <<
   \new Dynamics = "dynhaut"     \dynPartHaut
   \new Staff    = "up"       {  \notePartHaut }
   \new Dynamics = "dynamics"    \dynPartCom
   \new Staff    = "down"     << \notePartBas \dynPartBas >>
   >>
 >>
 \layout {
  \context { \RemoveEmptyStaffContext }
  \context {
   \Score
   \override VerticalAxisGroup #'remove-first = ##t
  \override SpacingSpanner #'spacing-increment = #1
  }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \cresc works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.5 . 0.5)
   \override DynamicLineSpanner #'Y-offset = #-1

   \consists "Script_engraver"
   \consists "Dynamic_engraver"
   \consists "Text_engraver"

   \override DynamicText #'font-size = #-0.7
   \override TextScript #'font-size = #0.6
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
%                                           E. SORTIE MIDI (pas de \layout)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ DES NOTES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%% PIANO HAUT
noteMidiHautI = {
 \set Staff.midiInstrument = "acoustic grand"
 \unfoldRepeats { << \midiHautI \hautIII \hautIV >> }
}
noteMidiHautII = {
 \set Staff.midiInstrument = "acoustic grand"
 \unfoldRepeats { \hautII }
}

%%%%%%%%%%%%%%%%%%%% PIANO BAS SAUF VOIX 3
noteMidiBasI = {
 \set Staff.midiInstrument = "acoustic grand"
 \unfoldRepeats { << \basI \basII >> }
}
%%%%%%%%%%%%%%%%%%%% PIANO BAS VOIX 3
noteMidiBasIII = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \unfoldRepeats { \basIII }
}

%%%%%%%%%%%%%%%%%%%% REDÉFINITION DES VOLUMES RESPECTIFS ATTRIBUÉS AUX DYNAMIQUES 
% volumes par défaut (LilyPond\usr\share\lilypond\current\scm\midi.scm):
% sf    1.00     ff  0.80     mp   0.61     ppp    0.42     fp: 0.50
% ffff  0.92     f   0.75     p    0.55     pppp   0.34
% fff   0.85     mf  0.68     pp   0.49     ppppp  0.25

#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist (append '(
 ("sf" .    1.00)
 ("ffff" .  1.00)
 ("fff" .   1.00)
 ("ff" .    0.90)
 ("f" .     0.75)
 ("mf" .    0.60)
 ("mp" .    0.45)
 ("p" .     0.35)
 ("pp" .    0.25)
 ("ppp" .   0.20)
 ("pppp" .  0.18)
 ("ppppp" . 0.16) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTRÉE PRENDRA LE NOUVEAU VOLUME SPÉCIFIÉ
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \KEYTIME s1 }

\score {
 <<
  \new Staff = "up"      { \SILENCE << \noteMidiHautI  \dynMidiHautI  >> }
  \new Staff = "upII"    { \SILENCE << \noteMidiHautII \dynMidiHautII >> }
  \new Staff = "down"    { \SILENCE << \noteMidiBasI   \dynMidiBasI   >> }
  \new Staff = "downIII" { \SILENCE << \noteMidiBasIII \dynMidiBasIII >> }
 >>
 \midi {
  \context {
   \Score
% ÉCHELLE DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
   tempoWholesPerMinute = #(ly:make-moment 88 4)
  }
 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D899-1-Impromptu.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
