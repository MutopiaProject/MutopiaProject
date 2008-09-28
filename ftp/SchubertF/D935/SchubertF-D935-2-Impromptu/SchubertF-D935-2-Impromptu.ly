%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D935-2-Impromptu.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                      FRANZ SCHUBERT: "Impromptu in As-dur", für Klavier
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
  " " { \italic "♫  Franz Schubert: Impromptu in As-dur (D 935-2)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Impromptu in As-dur (D 935-2)  ♫" } " " }
 #(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup \center-align { \fontsize #1.5 "Impromptu in As-dur" " " }
 subtitle = \markup { \fontsize #2.5 "D 935-2 (Opus 142 No 2.)" }
 composer = \markup \center-align { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 935 (Op. 142 No2., 1827)" }
% MUTOPIA
 mutopiatitle = "Impromptu in As-dur"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.935 (Op. 142, No. 2)"
 mutopiainstrument = "Piano"
 date = "1827"
 source = "Breitkopf & Härtel, 1888"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2007/12/29-1195"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GÉNÉRALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. NOTES: A1. PIANO HAUT: VOIX 1, 2  A2. PIANO BAS: VOIX 1, 2, 3
%  B. DYNAMIQUES PARTITION
%  C. DYNAMIQUES MIDI
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
% 	                BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TONALITÉ ET MESURE
KEYTIME = {  \key lab \major \time 3/4 }
KEYTIMEB = {  \key reb \major \time 3/4 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-4 \italic "Allegretto." } }
TRIO = \markup { \bold \large { \hspace #-4 \italic "Trio" } }
%----- NOTE: IGNORER UNE COLLISION
IGNORECOLL = \once \override NoteColumn #'ignore-collision = ##t
%----- NOLET: CACHER NOMBRE OU CROCHET
TUPNNO = \override TupletNumber #'transparent = ##t
TUPBNO = \override TupletBracket #'transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
%----- OCTAVES: DÉBUT ET FIN
OCTAVEBEG = { #(set-octavation 1) \set Staff.ottavation = #"8" }
OCTAVEEND = #(set-octavation 0)
%----- CHANGER DE PORTÉE
STAFFDO = { \change Staff = down \voiceThree }
STAFFUP = { \change Staff = up   \voiceOne }
%----- POSITIONNER UN SCRIPT
SCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Script #'extra-offset = #$beg-end #})
%----- POSITIONNER UN TEXTSCRIPT
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
TSCRPAD =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override TextScript #'padding = #$beg-end #})
%----- MARKUP
SEMPRELIGATO = \markup { \italic "sempre ligato" }
RITARDANDO = \markup { \italic "ritard." }
SFORZATO     = \markup { \hspace #0.5 \musicglyph #"scripts.sforzato" }
FFZ = #(make-dynamic-script "ffz")
%----- DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
CRESC   = { \set crescendoText = \markup { \fontsize #-0.8 \italic "cresc." } \set crescendoSpanner = #'dashed-line }
DECRESC = { \set decrescendoText = \markup { \fontsize #-0.8 \italic "decresc." } \set decrescendoSpanner = #'dashed-line }
MANUALTRILLSPAN  = \markup { \concat {  \musicglyph #"scripts.trill" "   " \fontsize #-0.7 \raise #1 {
 \musicglyph #"scripts.prallprall" "  " \musicglyph #"scripts.prallprall" "  "
 \musicglyph #"scripts.prallprall" "  " \musicglyph #"scripts.prallprall" "  "
 \musicglyph #"scripts.prallprall" "  " \musicglyph #"scripts.prallprall" "  "
 \musicglyph #"scripts.prallprall" "  " \musicglyph #"scripts.prallprall" } } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A1. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A11. NOTES PIANO HAUT:  VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% hautIA: 1-16

hautIAa = \relative do' { \voiceOne

%0-5
\oneVoice \partial 4 \TSCREXO #'(0 . -5.5) mib4 ^\SEMPRELIGATO
\voiceOne lab4 lab4.( sib8)
lab4 sol4.( sib8)
sib4( lab sib)
do2 mib,4
\oneVoice <do mib do'>4 <do mib do'>4.( <reb mib reb'>8)
%6-10
<do mib do'>4 <sib mib sib'>4.( <do mib do'>8)
<sib mib sib'>4 <lab mib' lab> \voiceOne mib''8.[ reb16]
do2 \oneVoice mib4 \voiceOne
lab4 lab4.( sib8)
lab4 sol4.( sib8)
%11-14
sib4( lab sib)
do2 \oneVoice mib,4 \voiceOne
do'4 do4.( reb8)
do4 sib4.( do8)
}


%%%%%%%%%%%%%%%%%%%% GRUPPETTO POUR LA PARTITION : 15-16
hautIAbPart = \relative do''' { \voiceOne
sib4 \SCREXO #'(2.2 . 0) lab4 ^\turn do8. [sib16]
lab2
}

%%%%%%%%%%%%%%%%%%%% GRUPPETTO POUR LE MIDI : 15-16
hautIAbMidi = \relative do''' { \voiceOne
sib4 \times 4/6 { lab8 sib16 lab sol lab } do8. [sib16]
lab2
}

%%%%%%%%%%%%%%%%%%%% RESUME hautIA : 1-16
hautIAPart = { \hautIAa \hautIAbPart }
hautIAMidi = { \hautIAa \hautIAbMidi }


%%%%%%%%%%%%%%%%%%%% SUITE hautIB: 16-46
hautIBa = \relative do' { \voiceOne
%16-20
\bar ":|:" % ENTRE 2 RÉPÉTITIONS
\oneVoice r8 <mib lab mib'>
<mib lab mib'>4-.^>( <mib lab mib'>4.-.) <do mib do'>8
<do mib do'>4-.^>( <do mib do'>4.-.) <do fa lab>8
<do fa lab>4-. <reb mib sib'>-. <reb mib sol sib reb>-.
<do_~ mib_~ lab^~ do^~>2 <do mib lab do>8[ <fa lab fa'>]
%21-25
<fa lab fa'>4-.( <fa lab fa'>4.-.) <fa lab reb>8
<fa lab reb>4-.( <fa lab reb>4.-.) <fa lab>8
<fa lab>4-. <solb sibb reb>-. <solb sibb reb solb>-.
<fa lab reb fa>2~ <fa lab reb fa>8[ <solb reb' solb>]
<solb reb' solb>2.(
%26
\voiceOne fab'4) ( mib reb8[ lab-|])
}


%%%%%%%%%%%%%%%%%%%% GRACES POUR LA PARTITION : 27-28
hautIBbPart = \relative do' { \voiceOne
\oneVoice << { <reb lab'>2.^( } { s2 \grace { sib'16[ lab sol lab]) } } >>
\grace lab16_( \voiceOne dob4) ( sib lab)
}

%%%%%%%%%%%%%%%%%%%% GRACES POUR LE MIDI : 27-28
hautIBbMidi = \relative do' { \voiceOne
<reb lab'>2 \times 4/6 { sib'16 lab sol lab8 lab16 }
dob4 ( sib lab)
}


%%%%%%%%%%%%%%%%%%%% suite hautIBc: 29-46
hautIBc = \relative do' { \voiceOne
mib4-.( mib2-.)
mib4-.( mib-. \fermata ) mib
%31-35
lab4 lab4.( sib8)
lab4 sol4.( sib8)
sib4 lab sib
do2 mib,4
\oneVoice <do mib do'>4 <do mib do'>4.( <sib reb sib'>8)
%36-40
<sib reb sib'>4( <la do la'>4.) <sib reb sib'>8
<sib reb sib'>4( <lab! do lab'!>) <sol sib sol'>-.
<lab do lab'>2 mib''4
\voiceOne lab4 lab4.( sib8)
lab4 sol4.( sib8)
%41-46
sib4 lab sib
do2 \oneVoice mib,4
<do mib do'>4 <do mib do'>4.( <sib reb sib'>8)
<sib reb sib'>4( <la do la'>4.) <sib reb sib'>8
<sib reb sib'>4( <lab! do lab'!>) <sol sib sol'>-.
<lab do lab'>2 \bar ":|" % FIN D'UNE RÉPÉTITION
}

%%%%%%%%%%%%%%%%%%%% RESUME hautIB : 16-46
hautIBPart = { \hautIBa \hautIBbPart \hautIBc }
hautIBMidi = { \hautIBa \hautIBbMidi \hautIBc }


%%%%%%%%%%%%%%%%%%%% SUITE hautIC: 46
hautIC = \relative do' { \voiceOne
%46
\key reb \major
\oneVoice lab4(
\bar "|:" % DÉBUT D'UNE RÉPÉTITION
}

%%%%%%%%%%%%%%%%%%%% SUITE hautID: 46-58
hautID = \relative do { \voiceOne
%46-50
\TUPNO \oneVoice
\times 6/9 { fa8)[ lab reb]  fa^>[ reb lab]   fa[ lab reb] }
\times 6/9 { lab8[ reb fa]  lab^>[ fa reb]   lab[ reb fa] }
\times 6/9 { re8 [ fa lab]    mib[ solb lab] mib[ solb la] }
\times 6/9 { do,8[ solb' sib] do,[ fa lab!]   do,[ mib solb] }
%51-55
\times 6/9 {  fa8[ lab reb]  fa^>[ reb lab]   fa[ lab reb] }
\times 6/9 { lab8[ reb fa]  lab^>[ fa reb]   lab[ reb fa] }
\times 6/9 { re8 [ fa lab]    mib[ solb lab] mib[ solb la] }
\times 6/9 { do,8[ solb' sib] do,[ fa lab!]  do,[ mib solb] }
\times 6/9 { do,8[ mib fa]   sib,[ reb fa]  lab,[ do fa] }
%56-58
\times 6/9 { lab,8[ sib fa'] solb,[ sib mib]   fa,[ sib reb] }
\times 6/9 { mib,8[ lab do]    fa,[ lab reb] solb,[ lab mib'] }
\times 6/9 { fa,8 [ lab reb] lab[ fa reb] fa[ reb lab] }
\bar ":|:"  % ENTRE 2 RÉPÉTITIONS
}

%%%%%%%%%%%%%%%%%%%% SUITE hautIE: 58-90
hautIE = \relative do { \voiceOne
%59-60
\oneVoice
\times 6/9 { fab8[ lab reb] fab^>[ reb lab] fab[ lab reb] }
\times 6/9 { lab8[ reb fab] lab^>[ fab reb] lab[ reb fab] }
%61-65
\times 6/9 { re8 [ fa! lab]   mib[ solb lab]   re,[ fa lab] }
\times 6/9 { mib8[ solb sibb] do,[ fab lab]   do,[ mib solb] }
\times 6/9 { fab8[ lab reb] fab->[ reb lab]   fab[ lab reb] }
\times 6/9 { lab8[ reb fab] lab->[ fab reb]   lab[ reb fab] }
\times 6/9 { mib8[ solb lab]  mib[ solb sib] mib,[ solb do] }
%66-70
\times 6/9 {  reb,8[ fab reb'] \OCTAVEBEG    mib,[ solb mib']  fab,![ lab fab'] } \bar "||" \key do \major
\times 6/9 {  fad,8[ la! fad'] sold,[ si sold'] la,[ dod la'] }
\times 6/9 { sold,8[ mi' sold]   la,[ fad' la] si,[ sold' si] }
\times 6/9 {  dod,8[ mi la]      dod[ la mi]    la[ mi dod] }
\times 6/9 {    la8[ dod mi]      la[ mi dod]   mi[ dod la] } \OCTAVEEND
%71-75
\times 6/9 { dod,8[ mi la]  dod[ la mi]  la[ mi dod] }
\times 6/9 {  la8[ dod mi]  la[ mi dod] mi[ dod la] }
\times 6/9 { mi'8[ dod la] dod[ la mi] la[ mi dod] }
\times 6/9 { la'8[ mi dod]  mi[ dod la] \STAFFDO dod[ la mi] }
\times 6/9 { dod8[ mi la]  dod[ la mi]  dod[ mi la] }
%76-80
\times 6/9 { dod,8[ fad la]   dod[ la fad]  dod[ fad la] } \bar "||" \key reb \major
\times 6/9 { reb,!8 [ fa! lab] reb[ lab fa]   reb[ fa lab] }
\times 6/9 { mib8[ solb lab]   do[ lab solb] mib[ solb lab] }
\times 6/9 { fa8[ lab reb] fa->[ reb lab]  fa[ lab reb] } \STAFFUP \oneVoice
\times 6/9 { lab8[ reb fa] lab^>[ fa reb]  lab[ reb fa] }
%81-85
\times 6/9 { re8 [ fa lab]    mib[ solb lab] mib[ solb la] }
\times 6/9 { do,8[ solb' sib] do,[ fa lab!]  do,[ mib solb] }
\times 6/9 { fa8[ lab reb] fa->[ reb lab]  fa[ lab reb] }
\times 6/9 { lab8[ reb fa] lab->[ fa reb]  lab[ reb fa] }
\times 6/9 { re8 [ fa lab]    mib[ solb lab] mib[ solb la] }
%86-90
\times 6/9 { do,8[ solb' sib] do,[ fa lab!]  do,[ mib solb] }
\times 6/9 { do,8[ mib fa]   sib,[ reb fa]  lab,[ do fa] }
\times 6/9 { lab,8[ sib fa'] solb,[ sib mib]  fa,[ sib reb] }
\times 6/9 { mib,8[ lab do]    fa,[ lab reb] solb,[ lab mib'] }
\times 6/9 { fa,8 [ lab reb] lab[ fa reb] fa[ reb lab] }
\bar ":|"  % FIN DE RÉPÉTITION
}

%%%%%%%%%%%%%%%%%%%% SUITE hautIF: 91-148 (fin)
hautIFa = \relative do { \voiceOne
%91-95
\STAFFDO
\times 6/9 { fa8[ lab reb] fa[ reb lab]  fa[ lab reb] }
\times 6/9 { fa,8[ lab reb] fa[ reb lab]  fa[ lab reb] }
\times 6/9 { fab,8[ lab reb] fab[ reb lab]  fab[ lab reb] }
\times 6/9 { fab,8[ sib reb] fab[ reb sib]  fab[ sib reb] }
\times 6/9 { mib,8[ sib' reb] mib[ reb sib]  mib,[ sib' reb] }
%96-100
\times 6/9 { mib,8[ sib' reb] mib[ reb sib]  mib,[ sib' reb] } \STAFFUP
mib4-.( mib-. mib-.
mib4-. mib-.) \bar "||" \key lab \major mib ^\SEMPRELIGATO
lab4 lab4.( sib8)
lab4 sol4.( sib8)
%101-105
sib4( lab sib)
do2 mib,4
\oneVoice <do mib do'>4 <do mib do'>4.( <reb mib reb'>8)
<do mib do'>4 <sib mib sib'>4.( <do mib do'>8)
<sib mib sib'>4 <lab mib' lab> \voiceOne mib''8.[ reb16]
%106-110
do2 \oneVoice mib4 \voiceOne
lab4 lab4.( sib8)
lab4 sol4.( sib8)
sib4( lab sib)
do2 \oneVoice mib,4 \voiceOne
%111-112
do'4 do4.( reb8)
do4 sib4.( do8)
}


%%%%%%%%%%%%%%%%%%%% GRUPPETTO POUR LA PARTITION = hautIAbPart : 113-114

%%%%%%%%%%%%%%%%%%%% GRUPPETTO POUR LE MIDI = hautIAbMidi : 113-114

%%%%%%%%%%%%%%%%%%%% SUITE hautIFc : 114-124
hautIFc = \relative do' { \voiceOne
%114-115
 \bar "||"
 \oneVoice r8 <mib lab mib'>
<mib lab mib'>4-.( <mib lab mib'>4.-.) <do mib do'>8
%116-120
<do mib do'>4-.( <do mib do'>4.-.) <do fa lab>8
<do fa lab>4-. <reb mib sib'>-. <reb mib sol sib reb>-.
<do_~ mib_~ lab^~ do^~>2 <do mib lab do>8[ <fa lab fa'>]
<fa lab fa'>4-.( <fa lab fa'>4.-.) <fa lab reb>8
<fa lab reb>4-.( <fa lab reb>4.-.) <fa lab>8
%121-124
<fa lab>4-. <solb sibb reb>-. <solb sibb reb solb>-.
<fa lab reb fa>2~ <fa lab reb fa>8[ <solb reb' solb>]
<solb reb' solb>2.(
\voiceOne fab'4) ( mib reb8[ lab-|])
}

%%%%%%%%%%%%%%%%%%%% GRACES POUR LA PARTITION = hauIBbPart : 125-126

%%%%%%%%%%%%%%%%%%%% GRACES POUR LE MIDI = hautIBbMidi : 125-126

%%%%%%%%%%%%%%%%%%%% SUITE hautIFe : 127-148
hautIFe = \relative do' { \voiceOne
%127-130
mib4-.( mib2-.)
mib4-.( mib-. \fermata ) mib
lab4 lab4.( sib8)
lab4 sol4.( sib8)
%131-135
sib4 lab sib
do2 mib,4
\oneVoice <do mib do'>4 <do mib do'>4.( <sib reb sib'>8)
<sib reb sib'>4( <la do la'>4.) <sib reb sib'>8
<sib reb sib'>4( <lab! do lab'!>) <sol sib sol'>-.
%136-140
<lab do lab'>2 mib''4
\voiceOne lab4 lab4.( sib8)
lab4 sol4.( sib8)
sib4 lab sib
do2 \oneVoice mib,4
%141-145
<do mib do'>4 <do mib do'>4.( <sib reb sib'>8)
<sib reb sib'>4( <la do la'>4.) <sib reb sib'>8
<sib reb sib'>4( <lab! do lab'!>) <sol sib sol'>-.
<lab do lab'>2 r8 <sib, reb sib'>
<sib reb sib'>4( <lab do lab'>) <sol sib sol'>-.
%146-148
<lab do lab'>2~ <lab do lab'>8[ <reb sib' reb>]
<reb sib' reb>4( <do lab' do> ^\RITARDANDO) <sib sol' sib>-.
<lab lab'>2 \fermata
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% RESUME hautIF : 91-148
hautIFPart = { \hautIFa \hautIAbPart \hautIFc \hautIBbPart \hautIFe }
hautIFMidi = { \hautIFa \hautIAbMidi \hautIFc \hautIBbMidi \hautIFe }


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ hautI
hautIPart = \context Staff \new Voice { \voiceOne
 \hautIAPart \hautIBPart \hautIC \hautID \hautIE \hautIFPart
}
hautIMidi = \context Staff \new Voice { \voiceOne
 \hautIAMidi \hautIAMidi \hautIBMidi \hautIBMidi \hautIC
 \hautID \hautID \hautIE \hautIE \hautIFMidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A12. NOTES PIANO HAUT:  VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% hautIIA: 1-16
hautIIA = \relative do' { \voiceTwo
%0-5
\partial 4 s4
<do mib>4 <do mib>2
<reb mib>4 <reb mib>2
r4 mib <reb mib>
<do mib>2 s4
s2.
%6-10
s2.
s2 <mib sib'>4
<mib lab>2 s4
<do' mib>4 <do mib>2
<reb mib>4 <reb mib>2
%11-16
r4 mib <reb mib>
<do mib>2 s4
<do mib>4 <do mib>2
<do mi>4 <do mi>2
<do fa>4 <do fa> <reb sol>
do2
}

%%%%%%%%%%%%%%%%%%%% SUITE hautIIB: 16-46
hautIIBa = \relative do'' { \voiceTwo
%16-25
s4
s2.*9
%26
<sol!~ reb'>2 sol8[ reb]
}


%%%%%%%%%%%%%%%%%%%% GRACES POUR LA PARTITION : 27-28
hautIIBbPart = \relative do' { \voiceTwo
s2.
<re lab'>2.
}

%%%%%%%%%%%%%%%%%%%% GRACES POUR LE MIDI : 27-28
hautIIBbMidi = \relative do' { \voiceTwo
s2.
<re~ lab'>2 re4
}


%%%%%%%%%%%%%%%%%%%% SUITE hautIIBc : 29-46
hautIIBc = \relative do' { \voiceTwo
%29-30
<lab do!>2.
<sol sib reb!>2\fermata s4
%31-35
<do mib>4 <do mib>2
<reb mib>4 <reb mib>2
r4 mib <reb mib>
<do mib>2 s4
s2.
%36-40
s2.*3
<do' mib>4 <do mib>2
<reb mib>4 <reb mib>2
%41-46
r4 mib <reb mib>
<do mib>2 s4
s2.*3
s2
}

%%%%%%%%%%%%%%%%%%%% RESUME hautIIB : 16-46
hautIIBPart = { \hautIIBa \hautIIBbPart \hautIIBc }
hautIIBMidi = { \hautIIBa \hautIIBbMidi \hautIIBc }


%%%%%%%%%%%%%%%%%%%% SUITE hautIIC : 46
hautIIC = \relative do { \voiceTwo
%46
s4
}

%%%%%%%%%%%%%%%%%%%% SUITE hautIID : 47-58
hautIID = \relative do { \voiceTwo
%47-58
s2.*12
}

%%%%%%%%%%%%%%%%%%%% SUITE hautIIE : 59-90
hautIIE = \relative do { \voiceTwo
%59-66
s2.*8 \key do \major
%67-76
s2.*10 \key reb \major
%77-90
s2.*14
}

%%%%%%%%%%%%%%%%%%%% SUITE hautIIF : 91-148
hautIIFa = \relative do' { \voiceTwo
%91-98
s2.*8
%99-100
<do mib>4 <do mib>2
<reb mib>4 <reb mib>2
%101-105
r4 mib <reb mib>
<do mib>2 s4
s2.
s2.
s2 <mib sib'>4
%106-110
<mib lab>2 s4
<do' mib>4 <do mib>2
<reb mib>4 <reb mib>2
r4 mib <reb mib>
<do mib>2 s4
%111-114
<do mib>4 <do mib>2
<do mi>4 <do mi>2
<do fa>4 <do fa> <reb sol>
do2 s4
%115-123
s2.*9
%124
<sol!~ reb'>2 sol8[ reb]
}


%%%%%%%%%%%%%%%%%%%% GRACES POUR LA PARTITION = hautIIBbPart : 125-126

%%%%%%%%%%%%%%%%%%%% GRACES POUR LE MIDI = hautIIBbMidi : 125-126

%%%%%%%%%%%%%%%%%%%% SUITE hautIIFc : 127-148
hautIIFc = \relative do' { \voiceTwo
%127-130
<lab do!>2.
<sol sib reb!>2\fermata s4
<do mib>4 <do mib>2
<reb mib>4 <reb mib>2
%131-135
r4 mib <reb mib>
<do mib>2 s4
s2.*3
%136-140
s2.
<do' mib>4 <do mib>2
<reb mib>4 <reb mib>2
r4 mib <reb mib>
<do mib>2 s4
%141-148
s2.*7
s2
}

%%%%%%%%%%%%%%%%%%%% 91-148: RESUME hautIIF
hautIIFPart = { \hautIIFa \hautIIBbPart \hautIIFc }
hautIIFMidi = { \hautIIFa \hautIIBbMidi \hautIIFc }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ hautII
hautIIPart = \context Staff \new Voice { \voiceTwo
 \hautIIA \hautIIBPart \hautIIC \hautIID \hautIIE \hautIIFPart
}
hautIIMidi = \context Staff \new Voice { \voiceTwo
 \hautIIA \hautIIA \hautIIBMidi \hautIIBMidi \hautIIC
 \hautIID \hautIID \hautIIE \hautIIE \hautIIFMidi
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
hautNotePart = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 \once \override TextScript #'outside-staff-padding = #0.5
 \TSCRPAD #'4 s1*0 ^\MOVEMENT
 << \hautIPart \hautIIPart >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
hautNoteMidi = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
 << \hautIMidi \hautIIMidi >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A21. NOTES PIANO BAS VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% basIA: 1-16
basIA = \relative do { \voiceOne
%0-5
\oneVoice \partial 4 mib4
\voiceOne mib4 mib2
mib4 mib2
mib4 mib mib
mib2 mib4
mib4 mib2
%6-10
mib4 mib2
mib4 mib mib
mib2 \stemDown mib4 \stemUp
mib4 mib2
mib4 mib2
%11-16
mib4 mib mib
mib2 \stemDown mib4 \stemUp
mib4 mib2
do4 do2
do4 do mib!
mib2
}

%%%%%%%%%%%%%%%%%%%% SUITE basIb : 16-46

basIB = \relative do { \voiceOne
%16-20
\oneVoice r8 <do lab' do>
<do lab' do>4-.( <do lab' do>4.-.) <lab mib' lab>8
<lab mib' lab>4-.( <lab mib' lab>4.-.) <fa fa'>8
<fa fa'>4-. <sol sol'>-. <mib mib'>-.
<lab mib' lab>2~<lab mib' lab>8[ <reb, lab' reb>]
%21-25
<reb lab' reb>4-.( <reb lab' reb>4.-.) <reb lab' reb>8
<reb lab' reb>4-.( <reb lab' reb>4.-.) <reb reb'>8
<reb reb'>4-. <sibb sibb'>-. <solb solb'>-.
<reb' reb'>2~ <reb reb'>8[ <sibb sibb'>]
<sibb sibb'>2.~
%26-30
<sibb sibb'>2~ <sibb sibb'>8[ <fab' fab'>-|]
<fab fab'>2.~
<fab fab'>2.
\voiceOne mib'4-.( mib2-.)
mib4-.( mib-.) mib-.
%31-35
mib4 mib2
mib4 mib2
mib4 mib mib
mib2 \oneVoice mib4
\voiceOne mib4 mib2
%36-40
mib4 mib4. reb8
\oneVoice <fab, reb'>4( <mib mib'>) <mib reb' mib>-.
<lab do mib>2 mib'4
\voiceOne mib4 mib2
mib4 mib2
%41-46
mib4 mib mib
mib2 \oneVoice mib4
\voiceOne mib4 mib2
mib4 mib4. reb8
reb4( mib) <reb mib>-.
<do mib>2
}

%%%%%%%%%%%%%%%%%%%% SUITE basIC : 46
basIC = \relative do { \voiceOne
%46
\key reb \major
s4
}

%%%%%%%%%%%%%%%%%%%% SUITE basID : 47-58
basID = \relative do { \voiceOne
%47-50
re4 \rest lab2_>~
lab4 lab2_>~
lab4 lab2_>~
lab4 lab2_>~
%51-55
lab4 lab2_>~
lab4 lab2_>~
lab4 lab2_>~
lab4 lab2_>
\oneVoice \set doubleSlurs = ##t sib,4 ( <sib sib'>2) \set doubleSlurs = ##f
%56-58
\voiceOne mib4( mib' solb)
lab,4( lab'2)~
\oneVoice \IGNORECOLL lab2 r4
}

%%%%%%%%%%%%%%%%%%%% SUITE basIE : 59-90
basIE = \relative do { \voiceOne
%59-60
re4 \rest lab2_>~
lab4 lab2_>~
%61-65
lab4 lab2_>~
lab4 lab2_>~
lab4 lab2_>~
lab4 lab2_>~
lab4 lab2_>~
%66
lab4 lab2_> \key do \major
%67-76
s2.*10 \key reb \major
%77-78
s2.*2
%79-80
si4 \rest lab2_>~
lab4 lab2~
%81-85
lab4 lab2~
lab4 lab2~
lab4 lab2~
lab4 lab2~
lab4 lab2~
%86-90
lab4 lab2
\oneVoice \set doubleSlurs = ##t sib,4 ( <sib sib'>2) \set doubleSlurs = ##f
\voiceOne mib4( mib' sol)
lab,4( lab'2)~
lab2 \oneVoice r4
}

%%%%%%%%%%%%%%%%%%%% SUITE basIF : 91-148
basIF = \relative do { \voiceOne
%91-96
s2.*6
%97-100
<mib sib' reb>2 \oneVoice mib4-.(
mib4-. mib-.) \key lab \major mib4
\voiceOne mib4 mib2
mib4 mib2
%101-105
mib4 mib mib
mib2 \oneVoice mib4
\voiceOne mib4 mib2
mib4 mib2
mib4 mib mib
%106-110
mib2  \oneVoice mib4
\voiceOne mib4 mib2
mib4 mib2
mib4 mib mib
mib2 \oneVoice mib4
%111-115
\voiceOne mib4 mib2
do4 do2
do4 do mib
mib2 \oneVoice r8 <do lab' do>
<do lab' do>4-.( <do lab' do>4.-.) <lab mib' lab>8
%116-120
<lab mib' lab>4-.( <lab mib' lab>4.-.) <fa fa'>8
<fa fa'>4-. <sol sol'>-. <mib mib'>-.
<lab mib' lab>2~<lab mib' lab>8[ <reb, lab' reb>]
<reb lab' reb>4-.( <reb lab' reb>4.-.) <reb lab' reb>8
<reb lab' reb>4-.( <reb lab' reb>4.-.) <reb reb'>8
%121-125
<reb reb'>4-. <sibb sibb'>-. <solb solb'>-.
<reb' reb'>2~ <reb reb'>8[ <sibb sibb'>]
<sibb sibb'>2.~
<sibb sibb'>2~ <sibb sibb'>8[ <fab' fab'>-|]
<fab fab'>2.~
%126-130
<fab fab'>2.
\voiceOne mib'4-.( mib2-.)
mib4-.( mib-.) mib-.
mib4 mib2
mib4 mib2
%131-135
mib4 mib mib
mib2 s4
mib4 mib2
mib4 mib4. reb8
\oneVoice <fab, reb'>4( <mib mib'>) <mib reb' mib>-.
%136-140
<lab do mib>2 mib'4
\voiceOne mib4 mib2
mib4 mib2
mib4 mib mib
mib2 s4
%141-145
mib4 mib2
mib4 mib4. reb8
reb4( mib) <reb mib>-.
\oneVoice <lab do mib>2 r8 <fab reb'>
<fa reb'>4( <mib mib'>) <mib reb' mib>-.
%146-148
<lab do mib>2~ <lab do mib>8[ <fab sib reb>]
<fab sib reb>4( <mib do' mib>) <mib reb' mib>-.
<lab do mib>2 \fermata
}

basIPart = \context Staff \new Voice { \voiceOne
 \basIA \basIB \basIC \basID \basIE \basIF
}

basIMidi = \context Staff \new Voice { \voiceOne
 \basIA \basIA \basIB \basIB \basIC
 \basID \basID \basIE \basIE \basIF
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A22. NOTES PIANO BAS VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% basiIA: 1-16
basIIA = \relative do { \voiceTwo
%0-5
\partial 4 s4 \voiceTwo
lab2.(
sib2.)
do2( sol4)
lab2 s4
lab2.(
%6-10
reb2.)
do2( sol4)
lab2 s4
lab2.(
sib2.)
%11-16
do2( sol4
lab2) s4
lab2.(
sol2.)
fa2( mib!4
lab2)
}

%%%%%%%%%%%%%%%%%%%% SUITE basIIb : 16-46

basIIB = \relative do, { \voiceTwo
%16-28
s4
s2.*12
%29-30
mib2.
mib2 \fermata s4
%31-35
lab2.(
sib2.)
do2( sol4
lab2) s4
solb2.
%36
fa2~ fa8[ fab]
s2.*2
lab2.
sib2.
%41
do2 sol4
lab2 s4
solb2.
fa2~ fa8[ fab]
fab4 mib mib
lab2
}

%%%%%%%%%%%%%%%%%%%% SUITE basIIC : 46
basIIC = \relative do { \voiceTwo
%46
\key reb \major
\stemUp lab4(
}

%%%%%%%%%%%%%%%%%%%% SUITE basIID : 47-58
basIID = \relative do, { \voiceTwo
%47-50
reb2.)
fa2.
do2.
lab2.
%51-55
reb2.
fa2.
do2.
lab2.
s2.
%56-58
mib'2( solb4)
lab4~ lab2(
reb2) s4
}

%%%%%%%%%%%%%%%%%%%% SUITE basIIE : 59-90
basIIEa = \relative do, { \voiceTwo
%59-60
reb2.
fab2.
%61-65
do2.
lab2.
reb2.
fab2.
lab,2.
%66
reb2. \key do \major
%67-76
\oneVoice fad,4( <fad fad'>2^>)
mi'!4( <mi mi'>2^>)
<la, mi' la>8 r8 <la mi' la>2^>
<la mi' la>8 r8 <la mi' la>2
%71-74
<la mi' la>8 r8 <la mi' la>2
<la mi' la>8 r8 <la mi' la>2~
<la mi' la>4 <la mi' la> <la mi' la>
<la mi' la>4 <la mi' la> \voiceTwo <la mi' la>
}

%%%%%%%%%%%%%%%%%%%% TRILLE POUR LA PARTITION : 75-76
basIIEbPart = \relative do, { \voiceTwo
<< { la2._( | \TSCREXO #'(1.5 . 1) fad2.)_\MANUALTRILLSPAN } { s2. | s2 s8. \grace { mid16[ fad] } } >>
}
%%%%%%%%%%%%%%%%%%%% TRILLE POUR LE MIDI : 75-76
basIIEbMidi = \relative do, { \voiceTwo
la2.
fad16[ sol fad sol] fad [ sol fad sol] \times 2/3 { fad8 mid fad }
}

%%%%%%%%%%%%%%%%%%%% SUITE basIIEc : 77-90
basIIEc = \relative do, { \voiceTwo
\key reb \major

%77-80
lab!2._~
lab2.
reb2.
fa2.
%81-85
do2.
lab2.
reb2.
fa2.
do2.
%86-90
lab2.
s2.
mib'2( solb4)
lab4~ lab2(
reb2) s4
}

%%%%%%%%%%%%%%%%%%%% 91-148: RESUME hautIIF
basIIEPart = { \basIIEa \basIIEbPart \basIIEc }
basIIEMidi = { \basIIEa \basIIEbMidi \basIIEc }

%%%%%%%%%%%%%%%%%%%% SUITE basIIF : 91-148
basIIF = \relative do, { \voiceTwo
%91-95
<reb lab' reb>2.~
<reb lab' reb>2.
<reb reb'>2.(
<sib sib'>2.)
<sol mib' sol>2.
%96-100
<sol mib' sol>2.
<sol mib' sol>2 s4
s2.
lab'2.(
sib2.)
%101-105
do2( sol4)
lab2 s4
lab2.(
reb2.)
do2( sol4)
%106-110
lab2 s4
lab2.(
sib2.)
do2( sol4)
lab2 s4
%111-114
lab2.(
sol2.)
fa2( mib4)
lab2 s4
%115-126
s2.*12
%127-130
mib2.
mib2 \fermata s4
lab2.(
sib2.)
%131-135
do2( sol4)
lab2 mib'4
solb,2.
fa2~ fa8[ fab]
s2.
%136-140
s2.
lab2.
sib2.
do2 sol4
lab2 mib'4
%141-148
solb,2.
fa2~ fa8[ fab]
fab4 mib mib
s2.*4
s2
}

basIIPart = \context Staff \new Voice { \voiceTwo
 \basIIA \basIIB \basIIC \basIID \basIIEPart \basIIF
}
basIIMidi = \context Staff \new Voice { \voiceTwo
 \basIIA \basIIA \basIIB \basIIB \basIIC
 \basIID \basIID \basIIEMidi \basIIEMidi \basIIF
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A23. NOTES PIANO BAS VOIX 3 (POUR LE CHANGEMENT DE PORTÉE)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
basIIIA = { \voiceThree
%0-16
s4
s2.*15
s2
}
basIIIB = { \voiceThree
%16-46
s4
s2.*29
s2
}
basIIIC = { \voiceThree
%46
s4
}
basIIID = { \voiceThree
%47-58
s2.*12
}
basIIIE = { \voiceThree
%59-90
s2.*32
}
basIIIF = { \voiceThree
%91-148
s2.*57
s2
}

basIIIPart = \context Staff \new Voice { \voiceThree
 \basIIIA \basIIIB \basIIIC \basIIID \basIIIE \basIIIF
}
basIIIMidi = \context Staff \new Voice { \voiceThree
 \basIIIA \basIIIA \basIIIB \basIIIB \basIIIC
 \basIIID \basIIID \basIIIE \basIIIE \basIIIF
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
basNotePart = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 << \basIPart \basIIPart \basIIIPart >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
basNoteMidi = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.9
 << \basIMidi \basIIMidi \basIIIMidi >>
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. DYNAMIQUES PARTITION COMMUNES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% dynPartA
dynPartA = {
%0-5
\partial 4 s4 \pp
s2.*5
%6-10
s2.
s4 \cr s4 \! s8. \decr s16 \!
s2.*3 
%11-16
s2.*2
s4 s4. \cr s8 \!
s4 \decr s4 s4 \!
s2.
s2
}

%%%%%%%%%%%%%%%%%%%% dynPartB
dynPartB = {
%16
s8 s8 \f
%17-19
s2.*3
%20-22
s2 s8 s8 \ff
s4 -\SFORZATO s2
s4 -\SFORZATO s2
%23-24
s2.*2
%25-30
s2.-\FFZ \decr
s2. \! \p
s2 -\FFZ \decr s4 \!
s2. \p
s2. \pp
s2 s4 \pp
%31-35
s2.*5
%36
s4 s4. \cr s8 \!
%37-42
s2.*6
%43-44
s4 s4. \cr s8 \!
s4 \decr s4 \! s4
%45-46
s2.
s2
}

%%%%%%%%%%%%%%%%%%%% dynPartC
dynPartC = {
%46
s4 \p
}

%%%%%%%%%%%%%%%%%%%% dynPartD
dynPartD = {
%47-48
s2.*2
%49-50
s2 \times 2/3 { s4 \cr s8 \! }
\times 2/3 { s4 \decr s8 \! } s2
%51-52
s2.*2
%53-58
s4 \times 4/6 { s4. \cr s4 s8 \! }
\times 4/6 { s4. \decr s8 s8 \! s8 } s4
s4 \DECRESC s2 \decr
s2. \!
s4 s2 \pp
s2.
}

%%%%%%%%%%%%%%%%%%%% dynPartE
dynPartE = {
%59-60
s2. \f
s2.
%61-64
\times 6/9 { s4. s4. \cr s4 s8 \! }
\times 6/9 { s4 \decr s8 \! s4. s4. }
s2.*2
%65-70
s2 \CRESC s4 \cr
s2.*3
s4 \! \ff s4 \fz s4
s4 s4 \fz s4
%71-75
s4 s4 \fz s4
s4 s4 \fz s4
\DYNEXO #'(1 . 0) s4 \fz \DYNEXO #'(1 . 0) s4 \fz \DYNEXO #'(1 . 0) s4 \fz
s2.
s2. \p
%76-80
s2.
\DECRESC s2. \decr
s2.
s2. \!
s2.
%81-86
\times 6/9 { s4. s4. \cr s4 s8 \! }
\times 6/9 { s4. \decr s8 s8 \! s8 s4. }
s2.*2
\times 6/9 { s4. s8 s4 \cr s4 s8 \! }
\times 6/9 { s4. \decr s8 s8 \! s8 s4. }
%87-90
\times 6/9 { s4. s4 \DECRESC s8 \decr s4. }
s2.
\DYNEXO #'(1 . 0) s2. \! \pp
s2.
}

%%%%%%%%%%%%%%%%%%%% dynPartF
dynPartF = {
%91-97
s2.*2
\DECRESC s2. \decr
s2.*4
%98-104
s2 s4 \! \pp
s2.*6
%105-110
s4 \cr s4 \! s8. \decr s16 \!
s2.*5 
%111-114
s4 s4. \cr s8 \!
s4 \decr s4 s4 \!
s2.
s2 s8 s8 \f
%115-117
s4 -\SFORZATO s2
s2.*2
%118-120
s2 s8 s8 \ff
s4 -\SFORZATO s2
s4 -\SFORZATO s2
%121-122
s2.*2
%123-128
s2. -\FFZ \decr
s2. \! \p
s2 -\FFZ \decr s4 \!
s2. \p
s2. \pp
s2 s4 \pp
%129-132
s2.*4
%133-134
s4 s4. \cr s8 \!
s4 \decr s4 \! s4
%135-140
s2.*6
%141-148
s4 s4. \cr s8 \!
s4 \decr s4 \! s4
s2.
s2 s8 s8 \decr
s4 \! s2
s2 \CRESC s4 \cr
\PINEXO #'(-1 . 0) s2 \! \decr s4 \! \p
s2
}

dynPart = { \override DynamicTextSpanner #'dash-period = #-1.0
 \dynPartA \dynPartB \dynPartC \dynPartD \dynPartE \dynPartF }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% dynMidiA
dynMidiA = {
%0-5
\partial 4 s4 \pp
s2.*5
%6-10
s2.
s2 \cr s4 \! \mp \decr
s2. \! \pp
s2.*2 
%11-16
s2.*2
s4 s2 \cr
s4 \! \mp \decr s4. s8 \! \pp
s2.
s2
}

%%%%%%%%%%%%%%%%%%%% dynMidiB
dynMidiB = {
%16
s8 s8 \f
%17-19
s2.*3
%20
s2 s8 s8 \ff
%21-24
s2.*4
%25-30
s2. \fff \decr
s2. \! \p
s2. \fff \decr
s2. \! \p
s2. \pp
\tempo 4=90 s4 \tempo 4=80 s4 \tempo 4=100 s4 \pp
%31-35
s2.*5
%36
s4 s4. s8 \mp
%37-42
s2.*6
%43-44
s4 s2 \cr
s2 \! \mf \decr s4 \! \mp
%45-46
s2.
s2
}

%%%%%%%%%%%%%%%%%%%% dynMidiC
dynMidiC = {
%46
s4 \p
}

%%%%%%%%%%%%%%%%%%%% dynMidiD
dynMidiD = {
%47-48
s2. \p
s2.
%49-50
s2 s4 \cr
s4 \! \mf \decr s4 \! \p s4
%51-52
s2.*2
%53-58
s4 s2 \cr
s4 \! \mf \decr s8 s8 \! \p s4
s4 s2 \decr
s2.
s4 s2 \! \pp
s2.
}

%%%%%%%%%%%%%%%%%%%% dynMidiE
dynMidiE = {
%59-60
s2. \f
s2.
%61-64
s4 s2 \cr
s4 \! \ff \decr s4 \! \f s4
s2.*2
%65-70
s2 s4 \cr
s2.*3
\times 6/9 { s4. \! \ff s8 \fff s4 \ff s4. }
\times 6/9 { s4. s8 \fff s4 \ff s4. }
%71-75
\times 6/9 { s4. s8 \fff s4 \ff s4. }
\times 6/9 { s4. s8 \fff s4 \ff s4. }
\times 6/9 { s8 \fff s4 \ff s8 \fff s4 \ff s8 \fff s4 \ff }
s2.
s2. \p
%76-80
s2.
s2. \decr
s2.
s2. \! \pp
s2.
%81-86
\times 6/9 { s4. s4. \cr s4. }
\times 6/9 { s4. \! \mp \decr s8 s8 \! \p s8 s4. }
s2.*2
\times 6/9 { s4. s8 s4 \cr s4. }
\times 6/9 { s4. \! \mp \decr s8 s8 \! \p s8 s4. }
%87-90
\times 6/9 { s4. s4 s8 \decr s4. }
s2.
s2. \! \pp
s2.
}

%%%%%%%%%%%%%%%%%%%% dynMidiF
dynMidiF = {
%91-98
s2.*2
\DECRESC s2. \decr
s2.
s2. \! \ppp
s2.*2
s2 s4 \pp
%99-104
s2.*6
%105-110
s2 \cr s4 \! \mp \decr
s2. \! \pp
s2.*2 
s2.*2
%111-114
s4 s2 \cr
s4 \! \mp \decr s4. s8 \! \pp
s2.
s2 s8 s8 \f
%115-117
s2.*3
%118
s2 s8 s8 \ff
%119-122
s2.*4
%123-128
s2. \fff \decr
s2. \! \p
s2. \fff \decr
s2. \! \p
s2. \pp
\tempo 4=90 s4 \tempo 4=80 s4 \tempo 4=100 s4 \pp
%129-132
s2.*4
%133-134
s4 s2 \cr
s2 \! \mp \decr s4 \! \pp
%135-140
s2.*6
%141-148
s4 s2 \cr
s2 \! \mp \decr s4 \! \pp
s2.
s2 s8 s8 \decr
s4 \! \ppp s2
s2 \CRESC s4 \cr
\tempo 4=90 s4 \! \mp \decr \tempo 4=80 s4 \tempo 4=68 s4 \!\p
\tempo 4=40 s2
}

dynMidi = {
 \dynMidiA \dynMidiA \dynMidiB \dynMidiB \dynMidiC
 \dynMidiD \dynMidiD \dynMidiE \dynMidiE \dynMidiF
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new PianoStaff <<
   \new Staff    = "up"       { \hautNotePart }
   \new Dynamics = "dynamics" \dynPart
   \new Staff    = "down"     { \basNotePart }
   >>
 >>
 \layout {
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
 ("ff" .    0.85)
 ("f" .     0.70)
 ("mf" .    0.59)
 ("mp" .    0.51)
 ("p" .     0.43)
 ("pp" .    0.36)
 ("ppp" .   0.28)
 ("pppp" .  0.25)
 ("ppppp" . 0.20) )
 my-absolute-volume-alist))

% DANS LE BLOC MIDI, CHAQUE DYNAMIQUE RENCONTRÉE PRENDRA LE NOUVEAU VOLUME SPÉCIFIÉ
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \KEYTIME s2 }

\score {
 <<
  \new Staff = "up"    { \SILENCE << \hautNoteMidi \dynMidi >> }
  \new Staff = "down"  { \SILENCE << \basNoteMidi \dynMidi >> }
 >>
 \midi {
  \context {
   \Score
% CHANGEMENT DU VOLUME DE SORTIE MIDI
    dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
    tempoWholesPerMinute = #(ly:make-moment 100 4)
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D935-2-Impromptu.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
