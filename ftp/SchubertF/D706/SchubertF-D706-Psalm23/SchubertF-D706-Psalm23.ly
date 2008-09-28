%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D706-Psalm23.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                        FRANZ SCHUBERT: "Psalm 23", für Chor SSAA mit Klavierbegleitung
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.34"
\include "italiano.ly"

\paper {
#(set-paper-size "a4" 'landscape)
%#(set-paper-size "letter" 'landscape)
 line-width = 250\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Psalm 23 (D 706)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Psalm 23 (D 706)  ♫" } " " }
 #(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \fontsize #1.5 "Psalm 23" }
 subtitle = "(Nach einer Reinschrift von Franz Schubert)"
 subsubtitle = "(Wienbibliothek im Rathaus)"
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 706 (Op. pos., 1820)" }
 poet = \markup { \column {
  \line { "Deutsche Übersetzung des" \bold " 23. Psalms Davids" }
  \line { "von" \bold " Moses Mendelssohn " "(1729-1786)" } } }

% MUTOPIA
 mutopiatitle = "Psalm 23"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.706"
 mutopiainstrument = "Choir SSAA, Piano"
 date = "1820"
 source = "Handschrift von Franz Schubert"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = "A source is freely available at http://www.schubert-online.at/"
 footer = "Mutopia-2007/12/29-1135"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME: A1. SOPRANOS  A2. ALTOS
%  B. NOTES: B11. SOPRANO I  B12. SOPRANO II  B21. ALTO I  B22. ALTO II
%            B3. PIANO HAUT: VOIX I, II et IV   B4. PIANO BAS: VOIX I ET II
%  C. DYNAMIQUES PARTITION:  C1. MÉLODIE  C2. PIANO
%  D. DYNAMIQUES MIDI: D1. MÉLODIE D2. PIANO
%  E. SORTIE PARTITION
%  F. SORTIE MIDI
%
%                  BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% TONALITÉ ET MESURE
KEYTIME = { \key lab \major \time 2/2 }
% MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-3 \italic Adagio. } }
%----- SILENCE MANUEL POUR ÉVITER UNE COLLISION
MUREST     = \markup { \musicglyph #"rests.3" }
TSCREXO  =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
RESTEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Rest #'extra-offset = #$beg-end #})
% CACHER UNE NOTE, CACHER UNE BARRE DE LIAISON
NOTEHIDE = {
 \once \override NoteHead #'transparent = ##t
 \once \override Stem #'transparent = ##t
 \once \override Tie #'transparent = ##t
 \once \override Stem #'beaming = #(cons (list 0) (list 0)) }
FLAGHIDE = \once \override Stem #'beaming = #(cons (list 0) (list ))
% AUGMENTER LA HAUTEUR D'UNE LIAISON
SLURHLIM =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override Slur #'height-limit = #$beg-end #})
% DÉPLACER UNE DYNAMIQUE OU MODIFIER SON LIBELLÉ
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
CRESC = { \set crescendoText = \markup { \bold \italic "cresc." } \set crescendoSpanner = #'dashed-line }
DIMIN = { \set decrescendoText = \markup { \bold \italic "dimin." } \set decrescendoSpanner = #'dashed-line }
%------ DÉPLACER UN POINT
DOTEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Dots #'extra-offset = #$beg-end #})
% DÉPLACER UNE NOTE
NOTEHS =
 #(define-music-function (parser location beg-end) (number?)
 #{ \override NoteColumn #'force-hshift = #$beg-end #})
IGNCOLL = \override NoteColumn #'ignore-collision = ##t
NOTEHSNO = { \revert NoteColumn #'force-hshift
 \override NoteColumn #'ignore-collision = ##f } 
% CACHER OU AFFICHER LE NOMBRE OU LE CROCHET D'UN NOLET
TUPNNO = \override TupletNumber #'transparent = ##t
TUPBNO = \override TupletBracket #'transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
TUPNOK = \override TupletNumber #'transparent = ##f
TUPBOK = \override TupletBracket #'transparent = ##f
TUPOK  = { \TUPNOK \TUPBOK }
%----- CHANGER DE PORTÉE
STAFFDO = { \change Staff = down }
STAFFUP = { \change Staff = up }
% HAMPE SUR DEUX PORTÉES
STEMCR = {
 \once \override Stem #'length = #24
 \once \override Stem #'cross-staff = ##t
 \once \override Stem #'flag-style = #'no-flag }
% HAMPE LONGUE
STEML =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override Stem #'length = #$beg-end #})
% MARKUP
TSCRPAD =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override TextScript #'padding = #$beg-end #})
LIGATO     = \markup { \hspace #-4 \large \bold \italic "ligato" }
EMORIENDO  = \markup { \large \bold \italic "emoriendo" }
CRESCENDO  = \markup { \large \bold \italic "cresc." }
DECRESCENDO  = \markup { \hspace #-3 \large \bold \italic "decresc." }
DIMINUENDO = \markup { \large \bold \italic "dimin." }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POÈME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A1. POÈME POUR LES SOPRANOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poemeSopranoH = \lyricmode {
 \set fontSize = #-1 
%5-8
 Gott ist mein Hirt, mir wird nichts man -- geln,
%9-12
 Gott ist mein Hirt, mir wird nichts man -- geln, er
%13-16
 la -- gert mich auf grü -- ne Wei -- de, er lei -- tet mich an stil -- len Bä -- chen, er
%17-20
 lei -- tet mich, er lei -- tet mich an stil -- len Bä --
%21-24
 chen. Er labt mein schmach -- ten -- des Ge -- müt, er
%25-29
 führt mich auf ge -- rech -- tem Stei -- ge zu sei -- nes Na -- mens Ruhm.
%30-34
 Und wall' ich auch im To -- des -- schat -- ten --ta -- le, so wall' ich oh -- ne
%35-39
 Furcht, denn Du be -- schüt -- zest mich, und wall' ich auch im To -- des -- schat -- ten --
%40-44
 ta -- le, so wall' ich oh -- ne Furcht, denn Du be -- schüt -- zest mich, dein
%45-49
 Stab und dei -- ne Stüt -- ze sind mir im -- mer -- dar mein
%50-54
 Trost, sind mir im -- mer -- dar mein Trost, mein Trost.
%55-58
 Du rich -- test mir ein Freu -- den -- mahl im An -- ge -- sicht der
%59-62
 Fein -- de zu, du salbst mein Haupt mit Ö -- le und schenkst mir vol -- le
%63-66
 vol -- le Be -- cher ein, mir fol -- get Heil und Se -- lig -- keit in die -- sem
%66-70
 Le -- ben nach, einst Ruh' ich ew' -- ge Zeit dort in des
%71-74
 Ew' -- gen Haus, mir fol -- get Heil und Se -- lig -- keit in
%75-78
 die -- sem Le -- ben nach, einst Ruh' ich
%79-82
 ew' -- ge Zeit dort in des Ew' -- gen
%83-86 
 Haus.
}

poemeSopranoB = \lyricmode {
 \set fontSize = #-1 
%5-8
 Gott ist mein Hirt, mir wird nichts man -- geln,
%9-12
 Gott ist mein Hirt, mir wird nichts man -- geln, er
%13-16
 la -- gert mich auf grü -- ne Wei -- de, er lei -- tet mich an stil -- len Bä -- chen, er
%17-20
 la -- gert mich auf grü -- ne Wei -- de, er lei -- tet mich an stil -- len Bä --
%21-24
 chen. Er labt mein schmach -- ten -- des Ge -- müt, er
%25-29
 führt mich auf ge -- rech -- tem Stei -- ge zu sei -- nes Na -- mens Ruhm.
%30-34
 Und wall' ich auch im To -- des -- schat -- ten --ta -- le, so wall' ich oh -- ne
%35-39
 Furcht, denn Du be -- schüt -- zest mich, und wall' ich auch im To -- des -- schat -- ten --
%40-44
 ta -- le, so wall' ich oh -- ne Furcht, denn Du be -- schüt -- zest mich, dein
%45-49
 Stab und dei -- ne Stüt -- ze sind mir im -- mer -- dar mein
%50-54
 Trost, sind mir im -- mer -- dar mein Trost, mein Trost.
%55-58
 Du rich -- test mir ein Freu -- den -- mahl im An -- ge -- sicht der
%59-62
 Fein -- de zu, du salbst mein Haupt mit Ö -- le und schenkst mir vol -- le
%63-66
 vol -- le Be -- cher ein, mir fol -- get Heil und Se -- lig -- keit in die -- sem
%66-70
 Le -- ben nach, einst Ruh' ich ew' -- ge Zeit dort in des
%71-74
 Ew' -- gen Haus, mir fol -- get Heil und Se -- lig -- keit in
%75-78
 die -- sem Le -- ben nach, einst Ruh' ich
%79-82
 ew' -- ge Zeit dort in des Ew' -- gen
%83-86 
 Haus.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. POÈME POUR LES ALTOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poemeAltoH = \lyricmode {
 \set fontSize = #-1 
%5-8
 Gott ist mein Hirt, mir wird nichts man -- geln,
%9-12
 Gott ist mein Hirt, mir wird nichts man -- geln,
%13-16
 er lei -- tet mich an stil -- len Bä -- chen, er
%17-20
 la -- gert mich auf grü -- ne Wei -- de, er lei -- tet mich an stil -- len Bä --
%21-24
 chen. Er labt mein schmach -- ten -- des Ge -- müt, er
%25-29
 führt mich auf ge -- rech -- tem Stei -- ge zu sei -- nes Na -- mens Ruhm.
%30-34
 Und wall' ich auch im To -- des -- schat -- ten --ta -- le, so wall' ich oh -- ne
%35-39
 Furcht, denn Du be -- schüt -- zest mich, und wall' ich auch im To -- des -- schat -- ten --
%40-44
 ta -- le, so wall' ich oh -- ne Furcht, denn Du be -- schüt -- zest mich,
%45-49
 dein Stab und dei -- ne Stüt -- ze sind mir im -- mer -- dar mein
%50-54
 Trost, sind mir im -- mer -- dar mein Trost, mein Trost.
%55-58
 Du rich -- test mir ein
%59-62
 Freu -- den -- mahl, du salbst mein Haupt mit Ö -- le und schenkst mir vol -- le
%63-66
 vol -- le Be -- cher ein, mir fol -- get Heil und Se -- lig -- keit in die -- sem
%66-70
 Le -- ben nach, einst Ruh' ich ew' -- ge Zeit dort in des
%71-74
 Ew' -- gen Haus, mir fol -- get Heil und Se -- lig -- keit
%76-80
 in Le -- ben nach, einst Ruh' ich
%79-82
 ew' -- ge Zeit in des Ew' -- gen
%83-86
 Haus.
}

poemeAltoB = \lyricmode {
 \set fontSize = #-1 
%5-8
 Gott ist mein Hirt, mir wird nichts man -- geln,
%9-12
 Gott ist mein Hirt, mir wird nichts man -- geln,
%13-16
 er lei -- tet mich an stil -- len Bä -- chen, er
%17-20
 la -- gert mich auf grü -- ne Wei -- de, er lei -- tet mich an stil -- len Bä --
%21-24
 chen. Er labt mein schmach -- ten -- des Ge -- müt, er
%25-29
 führt mich auf ge -- rech -- tem Stei -- ge zu sei -- nes Na -- mens Ruhm.
%30-34
 Und wall' ich auch im To -- des -- schat -- ten --ta -- le, so wall' ich oh -- ne
%35-39
 Furcht, denn Du be -- schüt -- zest mich, und wall' ich auch im To -- des -- schat -- ten --
%40-44
 ta -- le, so wall' ich oh -- ne Furcht, denn Du be -- schüt -- zest mich,
%45-49
 dein Stab und dei -- ne Stüt -- ze sind mir im -- mer -- dar mein
%50-54
 Trost, sind mir im -- mer -- dar mein Trost, mein Trost.
%55-58
 Du rich -- test mir ein
%59-62
 Freu -- den -- mahl, du salbst mein Haupt mit Ö -- le und schenkst mir vol -- le
%63-66
 vol -- le Be -- cher ein, mir fol -- get Heil und Se -- lig -- keit in die -- sem
%66-70
 Le -- ben nach, einst Ruh' ich ew' -- ge Zeit dort in des
%71-74
 Ew' -- gen Haus, mir fol -- get Heil und Se -- lig -- keit in
%75-78
 die -- sem Le -- ben nach, einst Ruh' ich
%79-82
 ew' -- ge Zeit dort in des Ew' -- gen
%83-86 
 Haus.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B11. NOTES SOPRANO I
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoH = \relative do'' {

%1-4
 R1 R1 R1 R1
%5-8
 \stemDown mib2 mib4. mib8
 fa4( mib) r8 reb8 do sib
 lab2( mib'4. reb8)
 do2 r2
%9-12
 mib2 mib4. mib8
 lab4( do,) r8 reb8 mib fa
 \stemUp lab,2_( do4. sib8)
 lab2 r4 r8 mib8
%13-16
 \stemDown reb'8.[ do16] do8.[ sib16] sib4. sib8
 lab8.[ sib16] sib8.[ mib16] mib4 do8 \stemNeutral mib,
 \stemDown reb'8.[ do16] do8.[ sib16] sib4. sib8
 lab8.[ sib16] sib8.[ mib16] mib4 do8 do
%17-20
 fa2. fa4
 mib2. mib4
 mib8[ reb] reb[ do] mib[ reb] reb[ do]
 fa8[ mib] fa[ mib] reb([ do \TUPBNO \tupletUp \times 2/3 { mib8 reb do]) }
%21-24
 sib2 r2
 r2 r4 r8 sib8
 sib4. sib8 sib8. sib16 sib8. sib16
 do4( sib) r4 do
%25-29
 reb4. reb8 mib8. mib16 mib8. mib16
 fab8.[ mib16] mib4 r4 mib
 solb2 fab
 mib2 reb
 dob1~
%30-34
 dob4 r4 r4 si
 si4. si8 si4. si8
 si4 si si lad
 si4 si r si
 \stemUp si4. la8 la4. \stemDown mi'8
%35-39
 mi4( re) r mi8([ do])
 si4. si8 si4 do8[ la]
 \stemUp sol2 r4 \stemDown re'4
 re4. re8 re4. re8
 re4 re re dod
%40-44
 re4 re r re
 re4. do!8 do4. sol'8
 sol4( fa) r4 sol8[ mib]
 re4. re8 re4 mib8[ do]
 sib2 r4 sib
%45-49
 reb1 ~
 reb2. reb4
 do2. do4
 do4. do8 reb4 mib
 fa4. mib8 reb4 do
%50-54
 sib2 do4 reb
 mib4. reb8 do4 sib
 \stemUp la2 la8([ sib reb sib])
 lab!2( sol4) r4
 R1
%55-58
 r2 r4 r8 mib8
 \stemDown reb'8.[ do16] do8.[ sib16] sib4. sib8
 \stemNeutral lab8.[ sib16] sib8.[ mib16] mib4. mib,8
 \stemDown reb'8.[ do16] do8.[ sib16] sib4. sib8
%59-62
 lab8.[ sib16] sib8.[ mib16] mib4. do8
 fa4. fa8 fa4 fa
 mib2 mib4. mib8
 mib8[ reb] reb[ do] mib[ reb] reb[ do]
%63-66
 fa8[ mib] fa[ mib] reb[ do \TUPBNO \tupletUp \times 2/3 { mib8 reb] do }
 sib2 r4 \stemNeutral mib4
 mib4. mib8 mib4. mib8
 fa4. mib8 mib8 reb do sib
%67-70
 lab2( mib'4.) reb8
 do2 r2
 mib2 mib4. mib8
 lab4. do,8 do8 reb mib fa
%71-74
 lab,2( do4.) \stemUp sib8 \stemNeutral
 lab2 r4 mib'4
 mib4. reb8 reb4 fa8[ mib]
 reb4. do8 do4 do
%75-78
 sib4( do mib8[ reb]) do8[ sib]
 lab2\( reb\)
 do2. mib4
 mib4( reb ~ reb8[ fa]) mib8[ reb]
%79-82
 reb4. do8 do2
 sib4( do) mib8[ reb] do[ sib]
 mib1 ~
 mib2 mib
%83-86
 mib1 ~
 mib2 r2
 R1
 R1-\fermataMarkup
 \bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartSopranoH = {
 \clef treble
 \KEYTIME
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Soprano I "
 \set Staff.shortInstrumentName = "S.I "
 \sopranoH
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI: Voir SORTIE MIDI


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B12. NOTES SOPRANO II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoB = \relative do'' {

%1-4
 R1 R1 R1 R1 
%5-8
 do2 reb4. reb8
 do2 r8 \stemUp lab8 la sib
 lab!2( sol)
 lab2 r2
%9-12
 \stemNeutral do2 reb4. reb8
 do4( mib) r8 lab,8 lab lab
 mib2( lab4. sol8)
 lab2 r4 r8 mib8
%13-16
 sib'8.[ lab16] lab8.[ sol16] sol4. sol8
 lab8.[ sol16] sol8.[ lab16] lab4 lab8 mib
 sib'8.[ lab16] lab8.[ sol16] sol4. sol8
 lab8.[ sol16] sol8.[ lab16] lab4 lab8 do
%17-20
 do4 reb8[ mib] mib4 reb8[ do]
 sib4 do8[ reb] reb4 do8 sib
 \stemUp lab4 sibb lab sibb
 lab4 lab sol8([ lab sol lab])
%21-24
 sol2 r2
 r2 r4 r8 sol8
 sol4. sol8 lab8. lab16 lab8. lab16
 sol2 r4 sib
%25-29
 \stemNeutral lab4. reb8 reb8. reb16 reb8. reb16
 dob4 dob4 r4 dob
 mib2 reb
 dob2 sib
 solb1~
%30-34
 solb4 r4 r4 fad
 fad4. la8 la4( sol8) sol8
 fad4 fa mi mi
 red4 red r red
 mi4. la8 la4 la
%35-39
 \stemUp si2 \stemNeutral r4 sol
 sol4. sol8 sol4 fad
 \stemUp sol2 r4 re4
 la'4. do8 do4( sib!8) sib
 la4 lab sol sol
%40-44
 fad4 fad r fad
 sol4. do8 do4 do
 \stemDown re2 r4 sib
 sib4. sib8 sib4 la
 sib2 r4 sib
%45-49
 sib1 ~
 sib2. sib4
 sib2. sib4
 lab4. lab8 lab4 lab
 lab4. lab8 lab4 lab
%50-54
 lab2 \stemUp lab4 lab
 lab4. lab8 lab4 solb
 fa2 fa
 mib2. r4
 R1
%55-58
 \stemNeutral r2 r4 r8 mib8
 sib'8.[ lab16] lab8.[ sol16] sol4. sol8
 mib8.[ sol16] sol8.[ lab16] lab4. mib8
 sib'8.[ lab16] lab8.[ sol16] sol4. sol8
%59-62
 mib8.[ sol16] sol8.[ lab16] lab4. do8
 do4 reb8[ mib] mib4 reb8[ do]
 sib4( do8[ reb]) reb4 do8[ sib]
 lab4 lab lab lab
%63-66
 lab4 lab sol8[ lab] sol8[ lab]
 sol2 r4 reb'4
 do4. do8 reb4. reb8
 do4. do8 do8 \stemUp lab la sib
%67-70
 lab!2( sol4.)sol8
 lab2 r2
 \stemNeutral do2 reb4. reb8
 do4. mib8 mib8 lab, lab lab
%71-74
 lab2( lab4.) sol8
 lab2 r4 do4
 do4. sib8 sib4 reb8[ do]
 \stemUp sib4. \stemNeutral lab8 lab4 lab
%75-78
 lab2. lab4
 lab2\( \stemUp sib\) \stemNeutral
 lab2. do4
 do4( sib ~ sib8[ reb]) do8[ sib]
%79-82
 \stemUp sib4. \stemNeutral lab8 lab2
 lab2 lab4 lab
 lab2( la
 \stemUp sib2) si \stemNeutral
%83-86
 do1 ~
 do2 r2
 R1
 R1 -\fermataMarkup
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartSopranoB = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Soprano II "
 \set Staff.shortInstrumentName = "S.II "
 \sopranoB
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI: Voir SORTIE MIDI


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B21. NOTES ALTO I
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoH = \relative do'' {

%1-4
 R1 R1 R1 R1
%5-8
 lab2 sib4. sib8
 lab2 r8 fa8 fa fa
 mib1
 lab2 r2
%9-12
 lab2 sib4. sib8
 lab2 r8 lab8 solb fa
 do2( mib)
 mib2 r2
%13-16
 r2 r4 r8 mib8
 \stemUp do'8.[ sib16] sib8.[ lab16] lab4. r8 \stemNeutral
 r2 r4 r8 mib8
 \stemUp do'8.[ sib16] sib8.[ lab16] lab4 lab8 lab \stemNeutral
%17-20
 la4 \stemUp sib8[ do] \stemNeutral do4 sib8[ lab]
 sol4 lab8[ sib] \stemUp sib4 \stemNeutral lab8 sol
 fa4 solb fa solb
 fa8[ mib] fa[ lab] mib2
%21-24
 mib2 r2
 r2 r4 r8 mib8
 mib4. mib8 fa8. fa16 fa8. fa16
 mib2 r4 sol
%25-29
 fa4. lab8 \stemUp sib8. sib16 sib8. sib16 \stemNeutral
 lab4 lab r4 lab
 solb2 lab
 solb2 fab
 mib1 ~
%30-34
 mib4 r4 r4 red
 red4. fad8 fad4( mi8) mi8
 red4 re dod do
 si4 si r si
 do4. mi8 mi4 fad
%35-39
 sol2 r4 mi
 re4. re8 re4 re
 re2 r4 re
 fad4. la8 la4( sol8) sol
 fad4 fa mi mib
%40-44
 re4 re r re
 mib!4. sol8 sol4 la
 sib2 r4 sol
 fa4. fa8 fa4 fa
 fa2 r2
%45-49
 R1
 r2 r4 fa4
 sol4. sol8 fa4 sol
 fa4. fa8 fa4 fa
 fa4. fa8 fa4 fa
%50-54
 fa2 lab4 fa
 mib4. mib8 mib4 mib
 mib2 reb
 mib2. r4
 R1
%55-58
 R1
 r2 r4 r8 mib8
 do'8.[ sib16] sib8.[ lab16] lab4. r8
 r2 r4 r8 mib8
%59-62
 \stemUp do'8.[ sib16] \stemNeutral sib8.[ lab16] lab4. lab8
 la4 sib8[ do] do4 sib8[ lab]
 sol4( lab8[ sib]) sib4 lab8[ sol]
 fa4 solb fa solb
%63-66
 fa8[ mib] fa[ lab] mib4. mib8
 mib2 r4 sol4
 lab4. lab8 sib4. sib8
 lab4. lab8 lab8 fa fa fa
%67-70
 mib2 ~ mib4. mib8
 mib2 r2
 lab2 \stemUp sib4. sib8 \stemNeutral
 lab4. lab8 lab8 lab solb fa
%71-74
 do2( mib4.) mib8
 mib2 r4 mib4
 fa4. fa8 sol4 sol
 sol4. lab8 lab4 r4
%75-78
 r2 r4 lab4
 mib2\( sol\)
 lab2. mib4
 fa2 sol
%79-82
 sol4. lab8 lab2
 r2 r4 lab8 lab
 mib1(
 sol2) sol
%83-86
 lab1 ~
 lab2 r2
 R1
 R1 -\fermataMarkup
 \bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartAltoH = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Alto I "
 \set Staff.shortInstrumentName = "A.I "
 \altoH
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI: Voir SORTIE MIDI


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B22. NOTES ALTO II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoB = \relative do'' {

%1-4
 R1 R1 R1 R1
%5-8
 lab2 sol4. sol8
 lab2 r8 fa8 mib reb
 do2( sib4. mib8)
 mib2 r2
%9-12
 lab2 sol4. sol8
 solb2 r8 fa8 do reb
 mib2 ~ mib4.( reb8)
 do2 r2
%13-16
 r2 r4 r8 mib8
 lab8.[ mib16] mib8.[ do16] do4. r8
 r2 r4 r8 mib8
 lab8.[ mib16] mib8.[ do16] do4 mib8 lab
%17-20
 fa4. fa8 sib,4. do16[ reb]
 mib4. mib8 lab4 lab,8 sib16[ do]
 reb4 reb reb reb
 reb8[ do] reb[ do] sib([ do sib do])
%21-24
 mib2 r2
 r2 r4 r8 mib8
 mib4. mib8 re8. re16 re8. re16
 mib2 r4 mi
%25-29
 fa4. fa8 sol8. sol16 sol8. sol16
 lab4 lab r4 lab
 mib2 fab
 solb2 solb
 dob,1~
%30-34
 dob4 r4 r4 si
 si4. si8 si4. si8
 si4 si si si
 si4 si r si
 do4. do8 do4 do
%35-39
 si2 r4 do
 re4. re8 re4 re8[ do]
 si2 r4 re
 re4. re8 re4. re8
 re4 re re re
%40-44
 re4 re r re
 mib!4. mib8 mib4 mib
 re2 r4 mib
 fa4. fa8 fa4 fa8[ mib]
 re2 r2
%45-49
 r2 r4 fa4
 solb2. fa4
 mi2( re4) mi
 fa4. fa8 fa4 fa
 fa4. fa8 fa4 mib
%50-54
 re2 mib4 fa
 do4. do8 do4 do
 do2 reb
 mib2. r4
 R1
%55-58
 R1
 r2 r4 r8 mib8
 lab8.[ mib16] mib8.[ do16] do4. r8
 r2 r4 r8 mib8
%59-62
 lab8.[ mib16] mib8.[ do16] do4. lab'8
 fa4. fa8 \stemUp sib4 \stemNeutral sib,8[ do16 reb]
 mib2 lab4 lab,8[ sib16 do]
 reb4 reb reb reb
%63-66
 reb8[ do] reb[ do] sib[ do] sib[ do]
 mib2 r4 sol4
 lab4. lab8 sol4. sol8
 lab4. lab8 lab8 fa mib reb
%67-70
 do2( sib4.) mib8
 mib2 r2
 lab2 sol4. sol8
 solb4. solb8 solb8 fa do reb
%71-74
 mib2 ~ mib4. reb8
 do2 r4 do4
 reb4. reb8 mib4 mib
 fa4. fa8 fa4 do
%75-78
 reb4( mib fa) mib8[ reb]
 do2\( mib\)
 lab2. do,4
 reb2 mib
%79-82
 fa4. fa8 fa2
 reb4( mib) solb8[ fa] mib8[ reb]
 do1(
 mib2) mib
%83-86
 lab1 ~
 lab2 r2
 R1
 R1-\fermataMarkup
 \bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartAltoB = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Alto II "
 \set Staff.shortInstrumentName = "A.II "
 \altoB
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI: Voir SORTIE MIDI


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B31. NOTES PIANO HAUT VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHIa = \relative do'' { \voiceOne

%1-4: 3 VOIX
 \TUPNO \NOTEHS #-0.5
 \times 2/3 { \SLURHLIM #'5 mib8([ do' mib] } \times 2/3 { mib,[ do' mib] }
  \times 2/3 { fa,[ do' mib] } \times 2/3 { sol,[ do mib] }
 \times 2/3 { lab,8[ do mib] } \times 2/3 { sol,[ do mib] } \times 2/3 { sib[ do mib] } \times 2/3 { lab,[ do mib] }
 \times 2/3 { sol,8[ reb' mib] } \times 2/3 { fa,[ reb' mib] } \times 2/3 { mib,[ reb' mib] } \times 2/3 { reb,[ sib' mib] }
 \times 2/3 { do,8[ lab' mib'] } \times 2/3 { do,[ lab' mib'] }
  \stemDown \times 2/3 { mib,[ lab do] } \times 2/3 { do,[ mib lab]) } \NOTEHSNO
%5-6: 2 VOIX
 \stemUp \times 2/3 { lab,8[ do mib] } \times 2/3 { lab,[ do mib] } \times 2/3 { sol,[ reb' mib] } \times 2/3 { sol,[ reb' mib] }
 \times 2/3 { lab,8[ do fa] } \times 2/3 { lab,[ do mib] } \times 2/3 { fa,[ lab reb] } \times 2/3 { <mib, fa>[ do' <reb, fa sib>] }
%7-18: 1 VOIX
 \oneVoice \stemUp
 \times 2/3 { do8[ mib lab] } \times 2/3 { mib[ lab do] } \times 2/3 { sol[ sib mib] } \times 2/3 { sol,[ sib reb] }
 \times 2/3 { mib,8[ lab do] } \times 2/3 { mib,[ lab do] } \times 2/3 { mib,[ sib' reb] } \times 2/3 { mib,[ si' re] }
 \times 2/3 { mib,8[ do' mib] } \times 2/3 { lab,[ do mib] } \times 2/3 { sol,[ reb' mib] } \times 2/3 { sol,[ reb' mib] }
%10
 \times 2/3 { solb,8[ do lab'] } \times 2/3 { solb,[ lab do] }
  \times 2/3 { fa,[ lab reb] } \times 2/3 { <solb, mib'>[ lab ^~ <lab fa'>] }
 \stemNeutral \repeat "percent" 2 { \times 2/3 { do,8[ mib lab] } } \times 2/3 { mib[ lab do] } \times 2/3 { reb,[ sol sib] }
 \times 2/3 { do,8[ mib lab] } \times 2/3 { mib[ lab do] } \times 2/3 { mib[ do lab'] } \times 2/3 { mib[ reb do] }
 \times 2/3 { reb8[ mib fa] } \times 2/3 { do[ reb mib] } \stemUp \times 2/3 { sib[ do sib] } \stemNeutral \times 2/3 { sol[ fa mib] }
 \times 2/3 { do'[ reb mib] } \times 2/3 { sib[ do sib] } \stemUp \times 2/3 { lab[ do sib] } \times 2/3 { lab[ sib do] } \stemNeutral
%15
 \times 2/3 { reb8[ mib fa] } \times 2/3 { do[ reb mib] } \stemUp \times 2/3 { sib[ do sib] } \stemNeutral \times 2/3 { sol[ fa mib] }
 \times 2/3 { do'8[ reb mib] } \times 2/3 { sib[ do sib] } \times 2/3 { lab[ do mib] } \times 2/3 { lab[ do mib] }
 \times 2/3 { fa,8[ fa' fa,] } \times 2/3 { fa'[ fa, fa'] } <fa, fa'>2
 \times 2/3 { mib8[ mib' mib,] } \times 2/3 { mib'[ mib, mib'] } <mib, mib'>2
%19-22: 2 OU 3 VOIX
 \voiceOne
 \times 2/3 { lab8[ do reb] } \times 2/3 { sibb[ fa' mib] } \times 2/3 { lab,[ do reb] } \times 2/3 { sibb[ fa' mib] }
%20
 \times 2/3 { la,8\rest lab4 } \times 2/3 { la8\rest lab4 } \repeat "percent" 2 { \times 2/3 { \TSCREXO #'(0 . -2) s8-\MUREST mib4 } }
 sib8[ mib] sib[ mib] reb[ do] \times 2/3 { mib8[ reb do] }
 sib8[ la] \times 2/3 { do8[ sib lab] } \times 2/3 { lab[ sol fa] } \times 2/3 { mib[ sol sib] }
%23-45: 1 VOIX
 \oneVoice
 \repeat "percent" 2 { \times 2/3 { mib,8[ sol sib] } }  \repeat "percent" 2 { \times 2/3 { re,[ lab' sib] } }
 \times 2/3 { mib,8[ sol do] } \repeat "percent" 2 { \times 2/3 { mib,[ sol sib] } } \times 2/3 { sol[ sib do] }
%25
 \repeat "percent" 2 { \times 2/3 { fa,8[ lab reb] } } \repeat "percent" 2 { \times 2/3 { sib[ reb mib] } }
 \times 2/3 { lab,8[ dob fab] } \repeat "percent" 3 { \times 2/3 { lab,[ dob mib] } }
 \times 2/3 { \TUPNO r8 <solb, dob mib solb>[ <solb dob mib solb>] } \times 2/3 { \repeat tremolo 3 <solb dob mib solb>8 }
  \times 2/3 { r8 <fab lab reb fab>[ <fab lab reb fab>] } \times 2/3 { \repeat tremolo 3 <fab lab reb fab>8 }
 \times 2/3 { r8 <mib solb dob mib>[ <mib solb dob mib>] } \times 2/3 { \repeat tremolo 3 <mib solb dob mib>8 }
  \times 2/3 { r8 <fab solb sib reb>[ <fab solb sib reb>] } \times 2/3 { \repeat tremolo 3 <fab solb sib reb>8 }
 \times 2/3 { r8 <dob mib solb dob>[ <dob mib solb dob>] } \times 2/3 { \repeat tremolo 3 <dob mib solb dob>8 }
  \times 4/6 { \repeat tremolo 6 <dob mib solb dob>8 }
%30
 \times 2/3 { <dob mib solb dob>8[ si si] } \times 2/3 { \repeat tremolo 3 si8 } \times 4/6 { \repeat tremolo 6 si!8 }
 <red fad>4.( <fad la>8)  <fad la>4( <mi sol>)
 <red fad>4( <re fa> <dod mi> <do mi lad>)
 <si red si'>2.  \times 2/3 { si8[ red si'] }
 \times 2/3 { do,8[ mi si'] } \times 2/3 { do,[ mi la] } \times 2/3 { do,[ mi si'] } \times 2/3 { fad[ la mi'] }
%35
 \stemUp \times 2/3 { sol,8[ si mi] } \repeat "percent" 2 { \times 2/3 { sol,[ si re] } }  \times 2/3 { mi,[ sol do] }
 \stemNeutral \repeat "percent" 3 { \times 2/3 { re,8[ sol si] } }  \times 2/3 { do,[ fad la] }
 \times 2/3 { <si, sol'>8[ re re] } \times 2/3 { \repeat tremolo 3 re8 } \times 4/6 { \repeat tremolo 6 re8 }
 \stemUp \set doubleSlurs = ##t <fad la>4.( <la do>8) \set doubleSlurs = ##f  <la do>4( <sol sib!>)
 \stemNeutral <fad la>4( <fa lab> <mi sol> <mib sol dod>)
%40
 <re fad re'>2.  \times 2/3 { re8[ fad re'] }
 \times 2/3 { mib,!8[ sol re'] }  \repeat "percent" 2 { \times 2/3 { mib,[ sol do] } }  \times 2/3 { la[ do sol'] }
 \times 2/3 { sib,8[ re sol] } \repeat "percent" 2 { \times 2/3 { sib,[ re fa] } }  \stemUp \times 2/3 { sol,[ sib mib] }
 \repeat "percent" 3 { \times 2/3 { fa,8[ sib re] } }  \times 2/3 { mib,[ la do] }
 \times 2/3 { re,8([ fa sib]) } \times 2/3 { \repeat tremolo 3 sib8 } \times 4/6 { \repeat tremolo 6 sib8 }
%45
 \times 2/3 { reb,!8([ sib' reb]) } \times 2/3 { \repeat tremolo 3 <sib reb>8 } \times 4/6 { \repeat tremolo 6 <sib reb>8 }
%46-54: 2 VOIX
 \voiceOne
 \times 2/3 { reb,8_([ sib' reb]) } \times 2/3 { \repeat tremolo 3 <reb, sib' reb>8 }
  \times 4/6 { \repeat tremolo 6 <sib' reb>8 }
 \times 4/6 { \repeat tremolo 6 <mi, sib' do>8 }  \times 4/6 { \repeat tremolo 6 <sib' do>8 }
 \times 4/6 { \repeat tremolo 6 <fa lab do>8 }
  \times 2/3 { \repeat tremolo 3 <fa lab reb>8 } \times 2/3 { \repeat tremolo 3 <fa lab mib'> } 
 \times 2/3 { \repeat tremolo 3 fa'8 } \times 2/3 { fa8[ fa mib] }
  \times 2/3 { \repeat tremolo 3 reb8 } \times 2/3 { \repeat tremolo 3 <mib, do'>8 }
%50
 \stemUp \times 4/6 { \repeat tremolo 6 <re lab' sib>8 }
  \times 2/3 { \repeat tremolo 3 <mib lab do>8 } \times 2/3 { \repeat tremolo 3 <fa lab reb!>8 }
 \times 2/3 { \repeat tremolo 3 mib'8 } \times 2/3 { mib8[ mib reb] }
  \times 2/3 { \repeat tremolo 3 <lab do>8 } \times 2/3 { \repeat tremolo 3 <solb sib>8 }
 \times 4/6 { \repeat tremolo 6 <mib fa la>8 } \times 2/3 { la8[ la sib] } \times 2/3 { reb8[ reb sib] }
 \times 4/6 { \repeat tremolo 6 <do, mib lab>8 }
  \times 2/3 { \repeat tremolo 3 <sib mib sol>8 } \times 2/3 { \repeat tremolo 3 <reb mib sib'>8 }
 \times 4/6 { \repeat tremolo 6 <mib lab>8 }
  \times 2/3 { \repeat tremolo 3 <sib mib sol>8 } \times 2/3 { \repeat tremolo 3 <lab dob re fa>8 }
%55-59: 1 VOIX
%55
 \oneVoice
 \times 2/3 { <sol sib mib>8^([ fa' re] } \times 2/3 { mib[ sol lab] } \times 2/3 { la[ sib fad] } \times 2/3 { sol[ sib do]) }
 \times 2/3 { reb!8[ mib fa] } \times 2/3 { do[ reb mib] } \stemUp \times 2/3 { sib[ do sib] } \times 2/3 { sol[ fa mib] }
 \times 2/3 { do'[ reb mib] } \times 2/3 { sib[ do sib] } \times 2/3 { lab[ do sib] } \times 2/3 { lab[ sib do] }
 \times 2/3 { reb8[ mib fa] } \times 2/3 { do[ reb mib] } \times 2/3 { sib[ do sib] } \times 2/3 { sol[ fa mib] }
 \times 2/3 { do'8[ reb mib] } \times 2/3 { sib[ do sib] } \times 2/3 { lab[ do mib] } \stemNeutral \times 2/3 { lab[ do mib] }
 \times 2/3 { fa,8[ fa' fa,] } \times 2/3 { fa'[ fa, fa'] } \IGNCOLL \NOTEHS #-0.5 <fa, fa'>2 \NOTEHSNO
 \times 2/3 { mib8[ mib' mib,] } \times 2/3 { mib'[ mib, mib'] } \IGNCOLL \NOTEHS #-0.5 <mib, mib'>2 \NOTEHSNO
%62-64: 2 OU 3 VOIX
 \voiceOne
 \times 2/3 { lab8[ do reb] } \times 2/3 { sibb[ fa' mib] } \times 2/3 { lab,[ do reb] } \times 2/3 { sibb[ fa' mib] }
 \times 2/3 { la,8\rest lab4 } \times 2/3 { la8\rest lab4 } \repeat "percent" 2 { \times 2/3 { mi8\rest mib4 } }
 sib8[ mib] sib[ mib] reb[ do] \times 2/3 { mib8[ reb sib] }
%65: 1 VOIX
 \oneVoice
  \stemUp \repeat "percent" 2 { \times 2/3 { lab8[ do mib] } }  \repeat "percent" 2 { \times 2/3 { sol,[ reb' mib] } } \stemNeutral 
%66: 2 VOIX
 \voiceOne
 \times 2/3 { lab,8[ do fa] } \times 2/3 { lab,[ do mib] } \times 2/3 { lab,[ mib' reb] } \times 2/3 { fa,[ do' sib] }
%67-69: 1 VOIX
 \oneVoice \stemUp
 \times 2/3 { do,8[ mib lab] } \times 2/3 { mib[ lab do] } \times 2/3 { sol[ sib mib] } \times 2/3 { sol,[ sib reb] }
 \repeat "percent" 2 { \times 2/3 { mib,[ lab do] } }  \times 2/3 { mib,[ sib' reb] } \times 2/3 { mib,[ si' re] }
 \times 2/3 { mib,[ do' mib] } \times 2/3 { lab,[ do mib] }  \repeat "percent" 2 { \times 2/3 { sol,[ reb' mib] } } \stemNeutral
%70: 2 VOIX
 \voiceOne
 \times 2/3 { solb,8[ do lab'] } \times 2/3 { solb,[ lab do] } \times 2/3 { lab[ do reb] } \times 2/3 { lab[ mib' fa] }
%71-72: 1 VOIX
 \oneVoice
 \repeat "percent" 2 { \times 2/3 { do,8[ mib lab] } } \times 2/3 { mib[ lab do] } \times 2/3 { reb,[ sol sib] }
 \times 2/3 { do,8[ lab' mib] } \times 2/3 { do[ mib lab] } \times 2/3 { mib[ do' lab] } \times 2/3 { mib[ do' mib] }
%73: 2 VOIX
 \voiceOne
 \times 2/3 { fa,8[ do' mib] } \times 2/3 { fa,[ <do' mib> <sib reb>] }
  \times 2/3 { sol[ sib reb] } \times 2/3 { sol,[ <reb' fa> <do mib>] }
%74: 1 VOIX
 \oneVoice
 \stemUp \times 2/3 { sol8[ sib reb] } \times 2/3 { sol,[ <sib reb> <lab do>] } \times 2/3 { fa[ lab do] } \times 2/3 { mib,[ lab do] } \stemNeutral
%75: 2 VOIX
 \voiceOne
 \times 2/3 { fa,8[ lab sib] } \times 2/3 { r lab[ do] } \times 2/3 { r lab[ reb] } \times 2/3 {r do[ sib] }
%76-77: 1 VOIX
 \oneVoice
 \stemUp \repeat "percent" 2 { \times 2/3 { mib,8[ lab mib'] } }  \repeat "percent" 2 { \times 2/3 { sol,[ reb' mib] } }
 \times 2/3 { lab,8[ do mib] } \times 2/3 { fa[ mib do] } \times 2/3 { lab[ do mib] } \stemNeutral \times 2/3 { lab[ do mib] }
%78-80: 2 VOIX
 \voiceOne
 \times 2/3 { fa,8[ do' mib] } \times 2/3 { fa,[ sib reb] } \times 2/3 { sol,[ reb' fa] } \times 2/3 { sol,[ mib' reb] }
 \times 2/3 { sol,8[ sib reb] } \times 2/3 { sol,[ reb' <lab do>] } \times 2/3 { <lab do>[ do, fa] } \times 2/3 { lab[ do lab] }
 \times 2/3 { sib,8[ sib' sib,] } \times 2/3 { do[ do' do,] } \times 2/3 { mib[ mib' reb] } \times 2/3 { do,[ do' sib] }
%81-83: 1 VOIX
 \oneVoice
 \stemUp \times 2/3 { mib,8[ mib' do] } \times 2/3 { lab[ mib do] } \times 2/3 { r8 mib'[ do] } \times 2/3 { la[ fad mib] }
 \times 2/3 { r8 mib'[ reb] } \times 2/3 { sib[ sol mib] } \times 2/3 { r8 mib'[ mib,] } \times 2/3 { fa'[ mib sol] }
 \times 2/3 { lab8[ mib do] } \times 2/3 { mib[ do lab] } \times 2/3 { do[ lab mib] } \times 2/3 { lab[ mib do] }
%84-85: 3 VOIX
 \voiceOne
 \NOTEHS #-0.5 \times 2/3 { mib8[ do' mib] } \times 2/3 { mib,[ do' mib] } \times 2/3 { fa,[ do' mib] } \times 2/3 { sol,[ do mib] }
 \times 2/3 { lab,8[ do mib] } \times 2/3 { sol,[ do mib] } \times 2/3 { sib[ do mib] } \times 2/3 { lab,[ do mib] } \NOTEHSNO
}

%%%%%%%%%%%%%%%%%%%%% 86: ARPÈGE POUR LA PARTITION: 1 VOIX
arpegePartPianoHI = \relative do'' { \voiceOne
 \oneVoice
 <lab mib'lab do mib>1 \arpeggio ^\fermata

 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%% 86: ARPÈGE POUR LE MIDI: REGROUPÉ AVEC CELUI DE LA PORTÉE DU BAS
arpegeMidiPianoHI = \relative do'' {
 s1
}

pianoPartHI = \context Staff \new Voice { \voiceOne
 \pianoHIa \arpegePartPianoHI }
pianoMidiHI = \context Staff \new Voice { \voiceOne
 \pianoHIa \arpegeMidiPianoHI }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B32. NOTES PIANO HAUT VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHII = \context Staff \relative do'' \new Voice { \voiceTwo
%1-4: 2 VOIX
 \IGNCOLL \NOTEHS #-0.5 mib4 mib fa sol
 lab4 sol sib lab
 sol4 fa mib reb
 do4 do \stemUp mib do \stemDown \NOTEHSNO
%5-6: 2 VOIX
 \STEMCR <do, mib>2  \STEMCR <reb mib>
 fa4( mib) s2
%7-18: 1 VOIX
 s1*12
%19-22: 2 OU 3 VOIX
 lab'4 sibb lab sibb
%20
 \TUPNO \times 2/3 { s8 fa[ mib] } \times 2/3 { s8 fa[ mib] } \repeat "percent" 2 { \times 2/3 { \RESTEXO #'(1 . 0) do8\rest reb[ do] } }
 sol4 sol sol8[ lab] sol[lab]
 mib4 mib8[ re] mib[ re] mib4
%23-45: 1 VOIX
 s1*23
%46-54: 2 VOIX
 s2 \times 2/3 { \NOTEHS #-2 \DOTEXO #'(-3 . 0) \repeat tremolo 3 solb8 \NOTEHSNO }  \times 2/3 { \repeat tremolo 3 fa8 }
 s2 \times 2/3 { \NOTEHS #-2 \DOTEXO #'(-3 . 0) \repeat tremolo 3 re8 \NOTEHSNO }  \times 2/3 { \repeat tremolo 3 mi8 }
 s1
 \times 4/6 { \repeat tremolo 6 <fa lab>8 }  \times 4/6 { \repeat tremolo 6 <fa lab>8 }
%50
 s1
 \times 4/6 { \repeat tremolo 6 <mib lab>8 } \times 2/3 { \repeat tremolo 3 mib8 } \times 2/3 { \repeat tremolo 3 mib8 }
 s2 \times 4/6 { \repeat tremolo 6 <reb fa>8 }
 s1
 \times 2/3 { \repeat tremolo 3 do8 } \times 2/3 { \repeat tremolo 3 dob8 } s2
%55-61: 1 VOIX
 s1*7
%62-64: 2 VOIX
 lab''4 sibb lab sibb
 \TUPNO \times 2/3 { s8 fa[ mib] } \times 2/3 { s8 fa[ mib] } \repeat "percent" 2 { \times 2/3 { s8 reb[ do] } }
 sol4 sol sol8[ lab] sol4
%65: 1 VOIX
 s1
%66: 2 VOIX
 s2 lab4 \TUPNO \times 2/3 { mib4 <reb fa>8 }
%67-69: 1 VOIX
 s1*3
%70: 2 VOIX
 s2 \times 2/3 { lab'4 lab8 } \times 2/3 { solb4 <fa lab>8 }
%71-72: 1 VOIX
 s1*2
%73: 2 VOIX
 fa4 fa sol sol
%74: 1 VOIX
 s1
%75: 2 VOIX
 s2. \times 2/3 { s8 lab4 }
%76-77: 1 VOIX
 s1*2
%78-80: 2 VOIX
 fa'4 fa sol sol
 sol4 sol s2
 s2 \times 2/3 { mib4 reb8 } \times 2/3 { do4 sib8 }
%81-83: 1 VOIX
 s1*3
%84-85: 2 VOIX
 \IGNCOLL \NOTEHS #-0.5 mib4 s4 fa4 sol
 lab4 sol sib lab \NOTEHSNO
%86: 1 VOIX
 s1
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B33. NOTES PIANO HAUT VOIX 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHIII = \context Staff \relative do'' \new Voice { \voiceThree
%1-83
s1*83
%84
mib1
%85-86
s1*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B34. NOTES PIANO HAUT VOIX 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHIV =\context Staff \relative do'' \new Voice { \voiceFour
%1-4: VOIX 4
 \NOTEHS #0.5 mib,2 fa4 sol
 lab4 sol sib lab
 sol4 fa mib sol
 lab1 \NOTEHSNO
%5-18 ----
 s1*14
%19-20: VOIX 4
 \NOTEHS #0.5 <reb, fa lab>4 <reb solb sibb> <reb fa lab> <reb solb sibb> \NOTEHSNO
%20
 lab'4 lab  \repeat "percent" 2 { sol8[ \NOTEHIDE lab16 ~ \FLAGHIDE lab] }
%21-61 ----
 s1*41
%62-63: VOIX 4
 \NOTEHS #0.5 <reb, fa lab>4 <reb solb sibb> <reb fa lab> <reb solb sibb> \NOTEHSNO
 lab'4 lab  \repeat "percent" 2 { sol8[ \NOTEHIDE lab16 ~ \FLAGHIDE lab] }
%64-83 ----
 s1*20
%84-85: VOIX 4
 \NOTEHS #1 mib2 \NOTEHS #0.5 fa4 sol
 lab4 sol sib lab \NOTEHSNO
%86 ---
 s1
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartPianoH = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 << \pianoPartHI \pianoHII\pianoHIII \pianoHIV >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI: Voir SORTIE MIDI


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B4. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B41. NOTES PIANO BAS VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBIa = \relative do' { \voiceOne

%1-6: 1 VOIX
 \oneVoice
 <lab do>1 ~ 
 <lab do>1
 <lab reb>1(
 <lab do>1)
%5
 lab2 <lab sib>
% <lab do mib>2 <lab sib reb mib>2
 <lab do>2_( <fa lab reb>4 <fa la>8[ <sib, sib'>])
%7-9: 2 VOIX
 \voiceOne
 s2 sib'4.(mib8)
 <lab, do>2_( <sib reb>4 <si re>)
 mib2 mib
%10-12: 1 VOIX
 \oneVoice
 <lab, do mib>2_( \STAFFUP \stemDown \STEML #10 fa'4 do8[ <reb fa>]) \STAFFDO
 mib,1
 <lab, mib' lab>2 r8 do' ~ \times 2/3 { \TUPNO do8[ reb mib] }
%13-16: 2 VOIX
 \voiceOne
 <sib reb>4 <lab do> <sol sib>4. reb'8
 <do mib>4 <reb mib> <do mib> s4
 <sib reb>4 <lab do> <sol sib>4. reb'8
 <do mib>4 <reb mib> <do mib>2
%17-19: 1 VOIX
 \oneVoice
%17
 <fa, fa'>2
 \stemDown \times 2/3 { sib8[ \STEMCR \STAFFUP sib' \STAFFDO sib,] }
 \times 2/3 { \STEMCR \STAFFUP sib'[ \STAFFDO sib, do16 reb] } 
%18
 <mib, mib'>2
 \times 2/3 { lab8[ \STEMCR \STAFFUP lab' \STAFFDO lab,] }
 \times 2/3 { \STEMCR \STAFFUP lab'[ \STAFFDO lab, sib16 do] } \stemNeutral
%19
 s1
%20-22: 2 VOIX
 \voiceOne
 s2 \NOTEHS #1.5 \repeat "percent" 2 { mib4} \NOTEHSNO
 \times 2/3 { r8 mib4 } \times 2/3 { r8 mib4 } \times 2/3 { r8 mib4 } \times 2/3 { r8 mib4 }
 \times 2/3 { r8 sib4 } \times 2/3 { r8 sib4 } \times 2/3 { r8 sib[ lab] } sol4
%23: 1 VOIX
 \oneVoice
 <mib sol sib>2 <mib lab sib>
%24: 2 VOIX
 \voiceOne
 do'4 sib2 do4
%25: 1 VOIX
 \oneVoice
 <fa, lab reb>2 <sol reb' mib>
%26: 2 VOIX
 \voiceOne
 fab'4 mib2 s4
%27-46: 1 VOIX
 \oneVoice
 \times 2/3 { <mib,, mib'>8 <mib' solb dob>8[ <mib solb dob>] } \times 2/3 { \repeat tremolo 3 <mib solb dob>8 }
  \times 2/3 { <fab, fab'>8 <fab' lab reb>8[ <fab lab reb>] } \times 2/3 { \repeat tremolo 3 <fab lab reb>8 }
 \times 2/3 { \stemDown <solb, solb'>8 \stemNeutral <solb' dob>[ <solb dob>] } \times 2/3 { \repeat tremolo 3 <solb dob>8 }
  \times 2/3 { <solb,, solb'>8 <solb'' sib reb>[ <solb sib reb>] } \times 2/3 { \repeat tremolo 3 <solb sib reb>8 }
 \times 2/3 { <dob,, dob'>8 <dob' mib solb>[ <dob mib solb>] } \times 2/3 { \repeat tremolo 3 <dob mib solb>8 }
  \times 4/6 { \repeat tremolo 6 <dob mib solb>8 }
%30
 \times 2/3 { <dob mib solb>8[ <si, si'> <si si'>] } \times 2/3 { \repeat tremolo 3 <si si'>8 }
  \times 4/6 { \repeat tremolo 6 <si si'>8 }
 \times 4/6 { \repeat tremolo 6 <si si'>8 } \times 4/6 { \repeat tremolo 6 <si si'>8 }
 \times 4/6 { \repeat tremolo 6 <si si'>8 } \times 4/6 { \repeat tremolo 6 <si si'>8 }
 \times 4/6 { \repeat tremolo 6 <si si'>8 } \times 2/3 { <si si'>[ <si si'> <si si'>] } r4
 r2 r4 do''4
%35
 si2. do,4
 re2. <re, re'>4
 <sol re'>2 r4 \times 2/3 { <re re'>8[ <re re'> <re re'>] }
 \times 4/6 { \TUPNOK \repeat tremolo 6 <re re'>8 \TUPNO } \times 4/6 { \repeat tremolo 6 <re re'>8 }
 \times 4/6 { \repeat tremolo 6 <re re'>8 } \times 4/6 { \repeat tremolo 6 <re re'>8 }
%40
 \times 4/6 { \repeat tremolo 6 <re re'>8 } \times 2/3 { \repeat tremolo 3 <re re'> } r4
 r2 r4 mib''4(
 re2.) mib,4
 fa1
 sib1_>
%45
 sib1_>
 solb1_>
%47: 2 VOIX
 \voiceOne
 sol!2_>( fa4 sol)
%48-49: 1 VOIX
 \oneVoice
 <fa lab>1
 <fa lab>1
%50-51: 2 VOIX
%50
 \voiceOne
 \NOTEHS #2 lab1 \NOTEHSNO
 lab2.( solb4)
%52-55: 1 VOIX
 \oneVoice
 \stemUp <do, fa>2( reb) \stemNeutral
 mib1
 <mib, mib'>1 ~
%55
 <mib mib'>4 r4  \times 2/3 { r8( sol'[ re] } \times 2/3 { mib[ sol la]) }
%56-59: 2 VOIX
 \voiceOne
 <sib reb>4 <lab do> <sol sib>4. reb'8
 <do mib>4 <reb mib> <do mib> \times 2/3 { do8[ reb mib] }
 <sib reb>4 <lab do> <sol sib>4. reb'8
 <do mib>4 <reb mib> <do mib>2
%60-62: 1 VOIX
%60
 \oneVoice <fa, fa'>2
 \voiceTwo \STAFFUP \NOTEHS #0.5 \times 2/3 { sib8[ \STEMCR sib' \STEMCR sib,] }
 \times 2/3 { \STEMCR sib'[ \STEMCR sib, \STEMCR do16 \STEMCR reb] } \NOTEHSNO \STAFFDO
%61
 \oneVoice
 <mib, mib'>2
 \voiceTwo \STAFFUP \NOTEHS #0.5 \times 2/3 { \STEMCR lab8[ \STEMCR lab' \STEMCR lab,] }
 \times 2/3 { \STEMCR lab'[  \STEMCR lab, \STEMCR sib16 \STEMCR do] } \NOTEHSNO \STAFFDO
%62
 \oneVoice
 s1
%63-64: 2 VOIX
 \voiceOne
 s2 \NOTEHS #2 \repeat "percent" 2 { mib4} \NOTEHSNO
 \times 2/3 { r8 mib[ sib] } \times 2/3 { r8 mib[ sib] } \times 2/3 { r8 sib[ do] } \times 2/3 { r8 sib[ reb] }
%65: 1 VOIX
%65
 \oneVoice
 <lab do mib>2 <lab sib reb mib>
%66-68: 2 VOIX
 \voiceOne
 fa'4. mib8 s2
 s2 sib4. mib8
 do2 <sib reb>4 <si re>
%69-75: 1 VOIX
 \oneVoice
 <lab do mib>2 <lab sib reb mib>
%70
 <lab do mib>2 solb'8[ fa do reb]
 mib,1
 <lab, lab'>2. do'4
 reb2 mib
 fa2. do4
%75
 reb4( mib fa mib8[ reb])
%76-82: 2 VOIX
 \voiceOne
 do2( mib)
 <lab, do mib>2. \clef treble do'4
 do4\( sib ~ sib8[ reb do sib]\)
 sib4.( lab8) lab2
%80
 lab2. lab4
 lab2 la
 sib2 si
%83-86: 1 VOIX
 \oneVoice
 <lab do>1
 \clef bass <lab, do>1
 <lab do>1
}

%%%%%%%%%%%%%%%%%%%%% 86: ARPÈGE POUR LA PARTITION: 1 VOIX
arpegePartPianoBI = \relative do' { \voiceOne
 \oneVoice <lab do>1 \arpeggio _\fermata
 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%% 86: ARPÈGE POUR LE MIDI: ICI, REGROUPÉ AVEC CELUI DE LA PORTÉE DU HAUT
arpegeMidiPianoBI = \relative do' {\voiceOne
 \oneVoice
 << { lab1 \fermata } \\ { s16 do16~ do2.. } \\ { s8 lab'8~ lab2. } \\ { s8. mib'16~ mib2. } \\
    { s4 lab2. } \\ { s4 s16 do8.~ do2 } \\ { s4. mib8~ mib2 } >>
}

pianoPartBI = \context Staff \new Voice { \voiceOne
 \pianoBIa \arpegePartPianoBI }
pianoMidiBI = \context Staff \new Voice { \voiceOne
 \pianoBIa \arpegeMidiPianoBI }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B42. NOTES PIANO BAS VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBII = \context Staff \relative do' \new Voice { \voiceTwo
%1-6: 1 VOIX
 s1*6
%7-9: 2 VOIX
 <mib, lab! do>2 mib
 \NOTEHS #0.5 lab1 \NOTEHSNO
 <lab do>2 <lab sib reb>
%10-12: 1 VOIX
 s1*3
%13-16: 2 VOIX
 mib1
 mib2 lab4 \TUPNO \times 2/3 { do8[ reb mib] }
 mib,1
 mib2 lab
%17-19: 1 VOIX
 s1*3
%20-22: 2 VOIX
 <reb fa>8[ <do mib>] <reb fa>8[ <do mib>] \repeat "percent" 2 { sib8[ \NOTEHIDE lab16 ~ \FLAGHIDE lab] }
 mib4 mib sib'8[ lab] sib[ lab]
 sol8[ fad] sol8[ fa] mib[ sib] mib4
%23: 1 VOIX
 s1
%24: 2 VOIX
 <mib sol>2. <mi sib'>4
%25: 1 VOIX
 s1
%26: 2 VOIX
 <lab dob>2. <lab dob mib>4
%27-46: 1 VOIX
 s1*20
%47: 2 VOIX
 \NOTEHS #2 do,1 \NOTEHSNO
%48-49: 1 VOIX
 s1*2
%50-51: 2 VOIX
 fa2( mib4 reb!)
 do1
%52-55: 1 VOIX
 s1*4
%56-59: 2 VOIX
 mib1_>
 mib2 lab4 s4
 mib1
 mib2 lab
%60-62: 1 VOIX
 s1*3
%63-64: 2 VOIX
 \voiceTwo
 \repeat "percent" 2 { <reb fa>8[ <do mib>] } \repeat "percent" 2 { sib8[ \NOTEHIDE lab16 ~ \FLAGHIDE lab] }
 mib4 mib mib mib
%65: 1 VOIX
 s1
%66-68: 2 VOIX
 <lab do>2 <lab do mib>8[ <fa lab reb> <fa la> <sib, fa' sib>]
 <mib lab! do>2 mib
 lab2 lab
%69-75: 1 VOIX
 s1*7
%76-82: 2 VOIX
 mib1
 s2. \clef treble do'4
 reb2 mib
 fa2 fa
%80
 reb4 mib solb8[ fa mib reb]
 <do mib>2 <do mib>
 <mib sol>2 <mib sol>
%83-86: 1 VOIX
 s1*4
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartPianoB = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 << \pianoPartBI \pianoBII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI: Voir SORTIE MIDI


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. DYNAMIQUES PARTITION MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% SOPRANOS
dynPartSoprano = {
 \override DynamicTextSpanner #'dash-period = #-1
 \dynamicUp
%1-4
 s1*4
%5-8
 s2 \p \PINEXO #'(0 . 1.7) s4. \cr s8 \!
 s4  \decr s4 \! s2
 s1*2
%9-12
 s2 \PINEXO #'(0 . 2.1) s4. \cr s8 \!
 s8 \decr s8 \! s4 s2
 s8 s4. \cr s4 \! \decr s8 \! s8
 s2.. \DYNEXO #'(0 . 1) s8 \pp
%13-16
 s8 \decr s8 \! s4 s2
 s8 \decr s8 \! s4 s2
 s8 \decr s8 \! s4 s2
 s8 \decr s8 \! s4 s2
%17-20
 s4. \cr s8 \! s4. \decr s8 \!
 \PINEXO #'(0 . 0.5) s4. \cr s8 \! \PINEXO #'(0 . 0.5) s4. \decr s8 \!
 \DYNEXO #'(0 . 0.5) s1 \ppp
 s1
%21-24
 s1
 s2.. s8 \p
 s2 s4.. \cr s16 \!
 s8 \decr s8 \! s2 s4 ^\CRESCENDO
%25-29
 s4 s4 \PINEXO #'(0 . 2.7) s4.. \cr s16 \!
 \PINEXO #'(0 . 2) s8. \decr s16 \! s2 s4 \cr
 s4. \! \ff \decr s8 \! s2 \fz
 \DYNEXO #'(0 . 2) s2 \fz \DYNEXO #'(0 . 2) s2 \fz
 \DYNEXO #'(0 . 2) \PINEXO #'(0 . 2) s4. \fz \cr s8 \! \PINEXO #'(0 . 2.7) s4. \decr s8 \!
%30-34
 s2. \DYNEXO #'(-3 . 0) s4 \pp
 s1
 s1 ^\DIMINUENDO
 s1
 s2 s4. \cr s8 \!
%35-39
 s8 \decr s8 \! s4 s4 \mf s8 \decr s8 \!
 s4. s8 \p s4 s8 \decr s8 \!
 s2. s4 \pp
 s1
 s1 ^\DIMINUENDO
%40-44
 s1
 \PINEXO #'(0 . 1) s2.. \cr s8 \!
 s8 \decr s8 \! s2 s4 \f
 \PINEXO #'(0 . 2) s8 \decr s8 \! s2 \DYNEXO #'(0 . 2) s4 \p
 s2. \DYNEXO #'(0 . 2) s4 \p
%45-49
 \PINEXO #'(0 . 2) s2.. \cr s8 \!
 \PINEXO #'(0 . 2) s2 \decr s4 \! s4
 s1
 s4. \PINEXO #'(0 . 2) s8 \cr s4. s8 \!
 \PINEXO #'(0 . 1.5) s4. \decr s8 \! s2
%50-54
 s2 \PINEXO #'(0 . 2) s4 \cr s4 \!
 \PINEXO #'(0 . 2) s4. \decr s8 \! s2
 s1*3
%55-58
 s2.. \DYNEXO #'(0 . 1) s8 \p
 \PINEXO #'(0 . 1) s4. \decr s8 \! s2
 s8 \decr s8 \! s4 s2
 \PINEXO #'(0 . 1.5) s8 \decr s8 \! s4 s2
%59-62
 \PINEXO #'(0 . 2) s8 \decr s8 \! s4 s2
 \PINEXO #'(0 . 1) s2 \cr \PINEXO #'(0 . 1) s4. \! \decr s8 \!
 \PINEXO #'(0 . 1.5) s4. \cr s8 \! \PINEXO #'(0 . 1.5) s4. \decr \DYNEXO #'(0 . 1.5) s8 \! \pp
 s1
%63-66
 \DYNEXO #'(0 . 0.5) \PINEXO #'(0 . 0.5) s8 \f \decr s8 \! s4 \DYNEXO #'(0 . 1) s2 \pp
 s2. \DYNEXO #'(0 . 1) s4 \p
 s2 \PINEXO #'(0 . 1.5) s4. \cr s8 \!
%66-70
 \PINEXO #'(0 . 1) s8 \decr s8 \! s4 s2
 \PINEXO #'(0 . 1) s2 \cr \PINEXO #'(0 . 1) s4. \! \decr s8 \!
 s1
 s2 \PINEXO #'(0 . 1.5) s4. \cr s8 \!
 s8 \decr s8 \! s4 s2
%71-74
 s4. \PINEXO #'(0 . 1.5) s8 \cr s8 \! \PINEXO #'(0 . 1.5) s8 \decr s8 \! s8
 s2. \DYNEXO #'(0 . 1.5) s4 \ppp
 s1*2
%75-78
 s4 s4 \cr s8 \! \decr s8 \! s4
 s1
 s2 s2 ^\EMORIENDO
 s1
%79-82
 s1
 s8 \PINEXO #'(0 . 1.5) s4. \cr \PINEXO #'(0 . 1.5) s8 \! \decr s8 \! s4
 \PINEXO #'(0 . 1) s1 \cr
 s2.. \DYNEXO #'(0 . 1) \PINEXO #'(0 . 1) s8 \! \f \decr
%83-86
 s1
 \DYNEXO #'(0 . 1) s2 \! \pp s2
 s1*2
}


%%%%%%%%%%%%%%%%%%%% ALTOS
dynPartAlto = {
 \override DynamicTextSpanner #'dash-period = #-1
 \dynamicUp
%1-4
 s1*4
%5-8
 s2 \p \PINEXO #'(0 . 0.5) s4. \cr s8 \!
 s4 \decr s4 \! s2
 s1*2
%9-12
 s1
 s8 \decr s8 \! s4 s2
 s8 s4. \cr s4 \! \decr s8 \! s8
 s1
%13-16
 s2.. s8 \pp
 s8 \decr s8 \! s4 s2
 s1
 s8 \decr s8 \! s4 s2
%17-20
 \PINEXO #'(0 . 0.5) s4. \cr s8 \! \PINEXO #'(0 . 0.5) s4. \decr s8 \!
 \PINEXO #'(0 . 1) s4. \cr s8 \! s4. \decr s8 \!
 \DYNEXO #'(0 . 0.5) s1 \ppp
 s1
%21-24
 s1
 s2.. s8 \p
 s2 s4.. \cr s16 \!
 s4 \decr s4 \! s4 s4 ^\CRESCENDO
%25-29
 s2 \PINEXO #'(0 . 0.5) s4.. \cr s16 \!
 s8. \decr s16 \! s2.
 s2 \ff s2 \fz
 s2 \fz s2 \fz
 s4. \fz \cr s8 \! \PINEXO #'(0 . 0.7) s4. \decr s8 \!
%30-34
 s2. \DYNEXO #'(-3 . 0) s4 \pp
 s1
 s1 ^\DIMINUENDO
 s1
 s2 s4. \cr s8 \!
%35-39
 s8 \decr s8 \! s4 s4 \mf s8 \decr s8 \!
 s4. s8 \p s4 s8 \decr s8 \!
 s2. s4 \pp
 s1
 s4 s2. ^\DIMINUENDO
%40-44
 s1
 s2.. \cr s8 \!
 s8 \decr s8 \! s2 s4 \f
 s8 \decr s8 \! s2 s4 \p
 s1
%45-49
 s2 s8 s4 \p \cr s8 \!
 s2 \decr s4 \! s4
 s1
 s4. s8 \cr s4. s8 \!
 s4. \decr s8 \! s2
%50-54
 s2 s4 \cr s4 \!
 s4. \decr s8 \! s2
 s1*3
%55-58
 s1*2
 s8 \decr s8 \! s4 s2
 s1
%59-62
 s8 \decr s8 \! s4 s2
 \PINEXO #'(0 . 1) s2 \cr \PINEXO #'(0 . 1) s4. \! \decr s8 \!
 \PINEXO #'(0 . 1) s4. \cr s8 \! s4. \decr s8 \! \pp
 s1
%63-66
 s8 \f \decr s8 \! s4 s2 \pp
 s2. s4 \p
 s2 \PINEXO #'(0 . 0.3) s4. \cr s8 \!
 s8 \decr s8 \! s4 s2
%67-70
 s2 \cr s4. \! \decr s8 \!
 s1
 s2 s4. \cr s8 \!
 s8 \decr s8 \! s4 s2
%71-74
 s4. s8 \cr s8 \! s8 \decr s8 \! s8
 s2. s4 \ppp
 s1*2
%75-78
 s4 s4 \cr s8 \! \decr s8 \! s4
 s1
 s2 s2 ^\EMORIENDO
 s1
%79-82
 s1
 s8 s4. \cr s8 \! \decr s8 \! s4
 s1*2
%83-86
 s4. \cr s8 \! s4. \decr s8 \!
 s1*3
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2.  DYNAMIQUES PARTITION PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% COMMUNES AUX DEUX PORTÉES
dynPartPianoCom = {
 \override DynamicTextSpanner #'dash-period = #-1
%1-4
 \DYNEXO #'(-3 . 0) s1 \pp
 s1*2
 s4 \DIMIN s4 \decr s2
%5-9
 \DYNEXO #'(-2 . 0) s1 \pp
 s1*2
 s2. \times 2/3 { s4 s8 \p }
 s1
%10-14
 s1*5
%15-18
 s1*4
%19-23
 \DYNEXO #'(1.5 . 0) s1 \ppp
 s1*2
 s2. \times 2/3 { s4 s8 \p }
 s1
%24-27
 s1*4
%28-32
 s2 \fz s2 \fz
 s1 \fz
 s1 \p
 s1*2
%33-36
 s1*4
%37-41
 s4 s2. \pp
 s1*4
%42-46
 \times 2/3 { \PINEXO #'(2 . 0) s4 \decr s8 \! }  s2 s4 \f
 \times 2/3 { s4 \decr s8 \! }  s4 s2 \p
 s1*3
%47-51
 s1*5
%52-56
 s1*5
%57-60
 s1*4
%61-65
 s1
 \DYNEXO #'(1.5 . 0) s1 \pp
 s1*3
%66-70
 s1*3
 \DYNEXO #'(1.5 . 0) s1 \pp
 s1
%71-75
 s1
 s2 s2 \ppp
 s1*3
%76-80
 s1*4
 s4 s4 \cr \times 2/3 { s8 \! \decr s4 } \times 2/3 { s8 s8 \! s8 }
%81-86
 s2 s2 \cr
 s2.  \times 2/3 { s4 s8 \! }
 \DYNEXO #'(1 . 0) \PINEXO #'(1 . 0) s2 \f \decr  \times 2/3 { s4 s8 \! }  s4
 \DYNEXO #'(1.5 . 0) s2 \pp  s4 \cr  \times 2/3 { s4 s8 \! }
 \times 2/3 { s4 \decr s8 \! } s2.
 s1
}

%%%%%%%%%%%%%%%%%%%% PARTICULIÈRES À LA PORTÉE DU HAUT
dynPartPianoH = {
%1-4
 s1
 \PINEXO #'(0 . -3) s2 \cr \times 2/3 { s4 s8 \! } \times 2/3 { s4 \PINEXO #'(0 . -3) s8 \decr }
 s4 \times 2/3 { s4 s8 \! } s2
 s1
%5-9
 \TSCRPAD #8 s2 -\LIGATO \PINEXO #'(0 . -9) s4 \cr \times 2/3 { s4 s8 \! }
 \PINEXO #'(0 . -9) s4 \decr \times 2/3 { s4 s8 \! } s2
 s1
 s2 \PINEXO #'(0 . -9) s4 \cr \times 2/3 { s4 s8 \! }
 s1
%10-14
 \times 2/3 { \PINEXO #'(0 . -3) s8 \decr s8 s8 \! } s4 s2
 s1*4
%15-18
 s1*4
%19-23
 s1*4
 s4 \PINEXO #'(0 . -2) s4 \cr s4 \times 2/3 { s4 s8 \! }
%24-27
 \times 2/3 { \PINEXO #'(0 . -2) s4 \decr s8 \! } s2.
 \TSCRPAD #2.5 s4 -\CRESCENDO s4 s4 \times 2/3 { \PINEXO #'(0 . -3) s4 \cr s8 \! }
 \times 2/3 { \PINEXO #'(0 . -3) s4 \decr s8 \! }  s4 \PINEXO #'(0 . -3) s4 \cr \times 2/3 { s4 s8 \! }
 \times 2/3 { \DYNEXO #'(0 . -3) \PINEXO #'(0 . -3) s4 \ff \decr s8 \! } s4 \DYNEXO #'(0 . -3) s2 \fz
%28-32
 s1*2
 s4  \TSCRPAD #3.5 s4 -\DECRESCENDO s4 \times 2/3 { s4 \DYNEXO #'(0 . -5) s8 \pp }
 s1
 \TSCRPAD #3.5 s1  -\DIMINUENDO
%33-36
 s1
 s2 \PINEXO #'(0 . -4.5) s4 \cr  \times 2/3 { s4 s8 \! }
 \times 2/3 { \PINEXO #'(0 . -3) s4 \decr s8 \! } \times 2/3 { s4 \DYNEXO #'(0 . -3) s8 \mf } s4 \times 2/3 { \PINEXO #'(0 . -3) s4 \decr s8 \! }
 s2  \DYNEXO #'(0 . -3) s4 \p  \times 2/3 { \PINEXO #'(0 . -3) s4 \decr s8 \! }
%37-41
 s1*2
 s4 \TSCRPAD #2.5 s2. -\DIMINUENDO
 s1

 s4 \PINEXO #'(0 . -3) s2 \cr  \times 2/3 { s4 s8 \! }
%42-46
 s1*3
 s2 \PINEXO #'(0 . -3) s4 \cr  \times 2/3 { s4 s8 \! }
 \times 2/3 { \PINEXO #'(0 . -3) s4 \decr s8 \! }  s2.
%47-51
 s1
 s2 \PINEXO #'(0 . -3) s4 \cr  \times 2/3 { s4 s8 \! }
 \PINEXO #'(0 . -3) s4 \decr \times 2/3 { s4 s8 \! }  s2
 s2 \PINEXO #'(0 . -3)  s4 \cr  \times 2/3 { s4 s8 \! }
 \PINEXO #'(0 . -3) s4 \decr \times 2/3 { s4 s8 \! }  s2
%52-56
 s1
 s2.  \times 2/3 { \PINEXO #'(0 . -3) s4 \cr s8 \! }
 \times 2/3 { \PINEXO #'(0 . -3) s4 \decr s8 \! } s2.
 \DYNEXO #'(0 . -3) s1 \pp
 \PINEXO #'(0 . -3) s4 \decr \times 2/3 { s4 s8 \! }  s2
%57-60
 s1*4
%61-65
 s1*5
%66-70
 s1*2
 s4 \PINEXO #'(0 . -3) s2 \cr \times 2/3 { s4 s8 \! }
 s1*2
%71-75
 s1*4
 \PINEXO #'(0 . -3) s4 \cr \times 2/3 { s4 s8 \! } \PINEXO #'(0 . -3) s4 \decr \times 2/3 { s4 s8 \! }
%76-80
 s1*5
%81-86
 s1*6
}

%%%%%%%%%%%%%%%%%%%% PARTICULIÈRES À LA PORTÉE DU BAS
dynPartPianoB = {
%1-4
 s2. s4 \cr
 s2 \times 2/3 { s4 s8 \! } \times 2/3 {s4 s8 \decr }
 s2 s4 \times 2/3 { s8 \! s4 }
 s1
%5-9
 s1*5
%10-14
 s1*3
 \times 2/3 { \PINEXO #'(0 . 3) s8 \decr s8 s8 \! } s4 s2
 \times 2/3 { \PINEXO #'(0 . 3) s8 \decr s8 s8 \! } s4 s2
%15-18
 \times 2/3 { \PINEXO #'(0 . 3) s8 \decr s8 s8 \! } s4 s2
 \times 2/3 { \PINEXO #'(0 . 3) s8 \decr s8 s8 \! } s4 s2
 s1*2
%19-23
 s1*5
%24-27
 s1*3
 s2 \fz s2 \fz
%28-32
 s1*5
%33-36
 s1*4

%37-41
 s1*5
%42-46
 s1*5
%47-51
 s1*5
%52-56
 s1*5
%57-60
 s1*4
%61-65
 s1*2
 \PINEXO #'(0 . 2) s8 \decr s8 \! s4 \DYNEXO #'(0 . 2) s2 \p
 s1
 \DYNEXO #'(0 . 2) s2 \pp \PINEXO #'(0 . 2) s4 \cr  \times 2/3 { s4 s8 \! }
%66-70
 \times 2/3 { \PINEXO #'(0 . 2) s4 \decr s8 \! } s2.
 s1
 s1
 s2 \PINEXO #'(0 . 2) s4 \cr \times 2/3 { s4 s8 \! }
 \times 2/3 { \PINEXO #'(0 . 2) s4 \decr s8 \! } s2.
%71-75
 s1*4
 \PINEXO #'(0 . 2) s4 \cr \times 2/3 { s4 s8 \! } \PINEXO #'(0 . 2) s4 \decr \times 2/3 { s4 s8 \! }
%76-80
 s1*5
%81-86
 s1*6
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. DYNAMIQUES POUR MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D1. DYNAMIQUES MIDI MÉLODIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% SOPRANOS
dynMidiSoprano = {
%1-4
 s1*4
%5-8
 s2 \p s2 \cr
 s4 \! \mf \decr s4 \! \p s2
 s1*2
%9-12
 s2 s2 \cr
 s4 \! \mf \decr s4 \! \p s2
 s2 \cr s4. \! \mf \decr s8 \! \p
 s2.. s8 \pp
%13-16
 s8 \mp \decr s8 \! \pp s4 s2
 s8 \mp \decr s8 \! \pp s4 s2
 s8 \mp \decr s8 \! \pp s4 s2
 s8 \mp \decr s8 \! \pp s4 s2
%17-20
 s2 \cr s2 \! \mp \decr
 s2 \! \pp \cr s2 \! \mp \decr
 s1 \! \ppp
 s1
%21-24
 s1
 s2.. s8 \p
 s2 s2 \cr
 s4 \! \mf \decr s4 \! \p s4 s4 \cr
%25-29
 s1
 s4 \! \mf \decr s4 \! \p s4 s4 \cr
 s4. \! \ff \decr s8 \! s2 \mf
 s1
 s2 \cr s4. \! \f \decr s8 \! \mf
%30-34
 s2. s4 \pp
 s1
 s1 \decr
 s1 \! \ppp
 s2 s2 \cr
%35-39
 s4 \! \p \decr s4 \! \ppp s4 s8 \mf \decr s8 \! \mp
 s4. s8 \p s4 s8 \mf \decr s8 \! \p
 s2. s4 \pp
 s1
 s1 \decr
%40-44
 s1
 s1 \! \pppp \cr
 s4 \! \p \decr s4 \! \ppp s4 s4 \f
 s8 \decr s8 \! \mp s2 s4 \p
 s2. s4 \p
%45-49
 s1 \cr
 s2 \! \mf \decr s4 \! \p s4
 s1
 s4. s8 \cr s2
 s4. \! \mf \decr s8 \! \p s2
%50-54
 s2 s2 \cr
 s4. \! \mf \decr s8 \! \p s2
 s1*3
%55-58
 s2.. s8 \p
 s4. \decr s8 \! \pp s2
 s8 \mp \decr s8 \! \pp s4 s2
 s8 \mp \decr s8 \! \pp s4 s2
%59-62
 s8 \mp \decr s8 \! \pp s4 s2
 s2 \cr s4. \! \mp \decr s8 \! \pp
 s2 \cr s4. \! \mp \decr s8 \! \pp
 s1
%63-65
 s2 \f \decr s2 \! \pp
 s2. s4 \p
 s2 s2 \cr
%66-70
 s4 \! \mf \decr s4 \! \p s2
 s2 \cr s4. \! \mf \decr s8 \! \p
 s1
 s2 s2 \cr
 s4 \! \mf \decr s4 \! \p s2
%71-74
 s4. s8 \cr s8 s8 \! \mf \decr s8 \! \p s8
 s2. s4 \ppp
 s1*2
%75-78
 s4 s4 \cr s4 \! \p \decr s4 \! \pp
 s1
 s2 s2 \decr
 s1
%79-82
 s1
 s4 \! \ppp s4 \cr s4 \! \p \decr s4 \! \ppp
 s1 \cr
 s2.. s8 \! \f \decr
%83-86
 s1
 s2 \! \pp s2
 s1*2
}

%%%%%%%%%%%%%%%%%%%% ALTOS
dynMidiAlto = {
%1-4
 s1*4
%5-8
 s2 \p s2 \cr
 s4 \! \mf \decr s4 \! \p s2
 s1*2
%9-12
 s2 s2 \cr
 s4 \! \mf \decr s4 \! \p s2
 s2 \cr s4. \! \mf \decr s8 \! \p
 s1
%13-16
 s2.. s8 \pp
 s8 \mp \decr s8 \! \pp s4 s2
 s1
 s8 \mp \decr s8 \! \pp s4 s2
%17-20
 s2 \cr s2 \! \mp \decr
 s2 \! \pp \cr s2 \! \mp \decr
 s1 \! \ppp
 s1
%21-24
 s1
 s2.. s8 \p
 s2 s2 \cr
 s4 \! \mf \decr s4 \! \p s4 s4 \cr
%25-29
 s1
 s4 \! \mf \decr s4 \! \p s4 s4 \cr
 s4. \! \ff \decr s8 \! s2 \mf
 s1
 s2 \cr s4. \! \f \decr s8 \! \mf
%30-34
 s2. s4 \pp
 s1
 s1 \decr
 s1 \! \ppp
 s2 s2 \cr
%35-39
 s4 \! \p \decr s4 \! \ppp s4 s8 \mf \decr s8 \! \mp
 s4. s8 \p s4 s8 \mf \decr s8 \! \p
 s2. s4 \pp
 s1
 s1 \decr
%40-44
 s1
 s1 \! \pppp \cr
 s4 \! \p \decr s4 \! \ppp s4 s4 \f
 s8 \decr s8 \! \mp s2 s4 \p
 s1
%45-49
 s2 s2 \p \cr
 s2 \! \mf \decr s2 \! \p
 s1
 s4. s8 \cr s2
 s4. \! \mf \decr s8 \! \p s2
%50-54
 s2 s2 \cr
 s4. \! \mf \decr s8 \! \p s2
 s1*3
%55-58
 s1
 s1 \pp
 s8 \mp \decr s8 \! \pp s4 s2
 s8 \mp \decr s8 \! \pp s4 s2
%59-62
 s8 \mp \decr s8 \! \pp s4 s2
 s2 \cr s4. \! \mp \decr s8 \! \pp
 s2 \cr s4. \! \mp \decr s8 \! \pp
 s1
%63-65
 s2 \f \decr s2 \! \pp
 s2. s4 \p
 s2 s2 \cr
%66-70
 s4 \! \mf \decr s4 \! \p s2
 s2 \cr s4. \! \mf \decr s8 \! \p
 s1
 s2 s2 \cr
 s4 \! \mf \decr s4 \! \p s2
%71-74
 s4. s8 \cr s8 s8 \! \mf \decr s8 \! \p s8
 s2. s4 \ppp
 s1*2
%75-78
 s4 s4 \cr s4 \! \p \decr s4 \! \pp
 s1
 s2 s2 \decr
 s1
%79-82
 s1
 s4 \! \ppp s4 \cr s4 \! \p \decr s4 \! \ppp
 s1*2
%83-86
 s2 \cr s4. \! \mp \decr s8 \! \pp
 s1*3
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D2. DYNAMIQUES MIDI PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%1-4
 s2 \pp s2 \cr
 s2. s4 \! \mf
 s2. \decr s4
 s2. s4 \! \ppp
%5-9
 s2 \pp s4 \cr s4 \! \mf \decr
 s4 s4 \! \pp s2
 s1
 s2 s4 \cr s4 \! \p
 s1 
%10-14
 s4 \mp \decr s4 \! \p s2
 s1*2
 s4 \mp \decr s4 \! \p s2
 s4 \mp \decr s4 \! \p s2
%15-18
 s4 \mp \decr s4 \! \p s2
 s4 \mp \decr s4 \! \p s2
 s1 \mp
 s1
%19-24
 s1 \pp
 s1*3
 s4 \p s4 \cr s4 \times 2/3 { s4 s8 \! \mf }
%24-27
 \times 2/3 { s4 \decr s8 \! \p } s2.
 s4 \cr s2 \times 2/3 { s4 s8 \! \mf }
 \times 2/3 { s4 \decr s8 \! \p } s4 s2 \cr
 \times 2/3 { s8 \! \ff \decr s4 \!  \mp } s4 \times 2/3 { s8 \f s4  \mp } s4
%28-32
 \times 2/3 { s8 \f s4  \mp } s4 \times 2/3 { s8 \f s4  \mp } s4
 \times 2/3 { s8 \f s4  \mp } s2.
 s2 s2 \decr
 s1 \! \pp
 s1 \decr
%33-36
 s1
 s2 \! \ppp s2 \cr
 \times 2/3 { s4 \! \p \decr s8 \! \pp }  s2  \times 2/3 { s4 \mf \decr s8 \!  \mp }
 s2 s4 \p \times 2/3 { s4 \mp \decr s8 \! \p }
%37-41
 s4 s4 \pp s2
 s1
 s1 \decr
 s2. s4 \ppp
 s4 s2. \cr
%42-46
 \times 2/3 { s4 \! \mf \decr s8 \! \p } s2 s4 \f
 \times 2/3 { s4 \decr s8 \! \mp } s2 s4 \p
 s1
 s2 s2 \cr
 \times 2/3 { s4 \! \mf \decr s8 \! \p }  s2.
%47-51
 s1
 s2 s2 \cr
 s2 \! \mf \decr s2 \! \p
 s2 s2 \cr
 s2 \! \mf \decr s2 \! \p
%52-56
 s1
 s2. s4 \cr
 \times 2/3 { s4 \! \mf \decr s8 \! \mp }  s2.
 s1 \p
 s4 \decr \times 2/3 { s4 s8 \! \pp } s2
%57-60
 s1*4
%61-65
 s1
 s1 \pp
 s8 \mp \decr s8 \! \pp s4 s2 \p
 s1
 s2 \pp s4 \cr \times 2/3 { s4 s8 \! \mp }
%66-70
 \times 2/3 { s4 \decr s8 \! \pp } s2.
 s1
 s4 s2 \cr \times 2/3 { s4 s8 \! \mp }
 s2 \pp  s4 \cr \times 2/3 { s4 s8 \! \mp }
 \times 2/3 { s4 \decr s8 \! \pp } s2.
%71-75
 s1
 s2 s2 \ppp
 s1*2
 s4 \cr \times 2/3 { s4 s8 \! \p }  s4 \decr \times 2/3 { s4 s8 \! \ppp }
%76-80
 s1*4
 s4 \cr \times 2/3 { s4 s8 \! \p }  s4 \decr \times 2/3 { s4 s8 \! \ppp }
%81-86
 s2 s2 \cr
 s1
 s2 \! \f  \decr s2
 s2 \! \pp  s2 \cr
 s4 \! \mp \decr s4 \! \pp  \tempo 4=60 s4 \tempo 4=50 s4
 \tempo 8=68 s4 \tempo 8=56 s16 \tempo 8=44 s8. s2
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new ChoirStaff
  \relative <<
   \new Voice = "sopranohaut" << \notePartSopranoH \dynPartSoprano >>
   \new Lyrics \lyricsto "sopranohaut" \poemeSopranoH
   \new Voice = "sopranobas" << \notePartSopranoB >>
   \new Lyrics \lyricsto "sopranobas" \poemeSopranoB
   \new Voice = "altohaut" << \notePartAltoH >>
   \new Lyrics \lyricsto "altohaut" \poemeAltoH
   \new Voice = "altobas" << \notePartAltoB \dynPartAlto >>
   \new Lyrics \lyricsto "altobas" \poemeAltoB
  >>
  \new PianoStaff <<
   \set PianoStaff.instrumentName = "Pianoforte "
   \set PianoStaff.shortInstrumentName = "Pf. "
   \set PianoStaff.connectArpeggios = ##t
   
   \new Dynamics = "updyn" \dynPartPianoH
  \new Staff = "up" << \notePartPianoH >>
   \new Dynamics = "dynamics" \dynPartPianoCom
   \new Staff = "down" << \notePartPianoB >>
   \new Dynamics = "downdyn" \dynPartPianoB
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

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ DES NOTES POUR LE MIDI 
noteMidiSopranoH = {
 \KEYTIME
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \sopranoH
}

noteMidiSopranoB = {
 \KEYTIME
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMaximumVolume = #1
 \sopranoB
}

noteMidiAltoH = {
 \KEYTIME
 \set Staff.midiInstrument = "flute"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.8
 \altoH
}

noteMidiAltoB = {
 \KEYTIME
 \set Staff.midiInstrument = "flute"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.8
 \altoB
}

noteMidiPianoH = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \unfoldRepeats { << \pianoMidiHI \pianoHII \pianoHIII \pianoHIV >> }
}

noteMidiPianoB = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \unfoldRepeats { << \pianoMidiBI \pianoBII >> }
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
 ("ff" .    0.70)
 ("f" .     0.60)
 ("mf" .    0.50)
 ("mp" .    0.40)
 ("p" .     0.32)
 ("pp" .    0.26)
 ("ppp" .   0.22)
 ("pppp" .  0.16)
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
  \new Voice = "sopranohaut" { \SILENCE << \noteMidiSopranoH \dynMidiSoprano >> }
  \new Voice = "sopranobas"  { \SILENCE << \noteMidiSopranoB \dynMidiSoprano >> }
  \new Voice = "altohaut"    { \SILENCE << \noteMidiAltoH    \dynMidiAlto    >> }
  \new Voice = "altobas"     { \SILENCE << \noteMidiAltoB    \dynMidiAlto    >> }
  \new Staff = "up"          { \SILENCE << \noteMidiPianoH   \dynMidiPiano   >> }
  \new Staff = "down"        { \SILENCE << \noteMidiPianoB   \dynMidiPiano   >> }
 >>
 \midi {
 \context {
   \Score
% ÉCHELLE DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
   tempoWholesPerMinute = #(ly:make-moment 68 4)
  }
 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D706-Psalm23.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
