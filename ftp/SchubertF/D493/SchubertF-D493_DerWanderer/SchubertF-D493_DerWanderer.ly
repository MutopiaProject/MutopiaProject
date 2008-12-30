%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D493-DerWanderer.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Der Wanderer", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
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
  " " { \italic "♫  Franz Schubert: Der Wanderer (D.493)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Der Wanderer (D.493)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 dedication = \markup \center-column { \fontsize #0.5 \bold "Dem Patriarchen Johann Ladislaus Pyrker von Felsö-Eör gewidmet." " " }
 title = \markup { \fontsize #1.5 "Der Wanderer" }
 subsubtitle = " "
 poet = \markup { \column {
  \line { \bold "Georg Philipp Schmidt (“von Lübeck”)" }
  \line { \small "(1766-1849)" } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.493 (Op. 4, No 1, Oktober 1816)" }
% MUTOPIA
 mutopiatitle = "Der Wanderer"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Georg Philipp Schmidt (“von Lübeck”)"
 mutopiaopus = "D.493 (Op. 4, No. 1)"
 mutopiainstrument = "Voice and Piano"
 date = "1816"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1556"
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
TEMPOBASE = \tempo 4=63
TEMPOA    = \tempo 4=42
TEMPOB    = \tempo 4=90
TEMPOC    = \tempo 4=120
TEMPOD    = \tempo 4=20
%----- TONALITÉS ET MESURES
KEY   = { \key mi \major }
TIMEA = { \time 2/2 }
TIMEB = { \time 6/8 }
%----- MOUVEMENTS
MOVEMENT = \markup {
  { \bold \large { \hspace #-4.0 "Sehr langsam. " } }
  { \smaller \general-align #Y #DOWN \note #"4" #1 = 63. }
}
MOVEMENTA = \markup { \bold \large { "Etwas geschwinder." } }
MOVEMENTB = \markup { \bold \large { \hspace #-4.0 "Geschwind." } }
MOVEMENTC = \markup { \bold \large { \hspace #-5.5 "Wie anfangs, sehr langsam." } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "harmonica"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
}
IPIANOHAUT = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.7
}
IPIANOBAS = {
 \set Staff.midiInstrument = "bright acoustic"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
}
%----- NOLET: CACHER OU AFFICHER LE NOMBRE OU LE CROCHET 
TUPNNO = \override TupletNumber #'transparent = ##t
TUPBNO = \override TupletBracket #'transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
TUPNOK = \override TupletNumber #'transparent = ##f
TUPBOK = \override TupletBracket #'transparent = ##f
TUPOK  = { \TUPNOK \TUPBOK }
%----- DYNAMIQUES MANUELLES
CRESC  = \markup { \large \bold \italic "cresc." }
DIMIN  = \markup { \large \bold \italic "dimin." }
DIM    = \markup { \large \bold \italic "dim." }
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
%----- REPOSITIONNEMENT D'UNE NOTE
NOTEHS =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override NoteColumn #'force-hshift = #$beg-end #})
IGNCOLL = \once \override NoteColumn #'ignore-collision = ##t
%----- REPOSITIONNEMENT D'UNE ALTERATION
ACCIEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Accidental #'extra-offset = #$beg-end #})


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

%--- 8 : Das Mädchen:

Ich kom -- me vom Ge -- bir -- ge her,
es dampft das Thal, es braust das Meer, es braust das Meer.
Ich wan -- dle __ still, bin we -- nig froh,
und im -- mer fragt der Seuf -- zer, wo? im -- mer wo?

Die Son -- ne dünkt __ mich hier so __ kalt,
die Blü -- the welk, das Le -- ben alt,
und was sie re -- den, lee -- rer Schall;
ich bin ein Fremd -- ling ü -- ber -- all.

Wo bist du, wo bist du, mein ge -- lieb -- tes Land?
ge -- sucht, __ ge -- ahnt, __ und nie __ ge -- kannt!
Das Land, das Land so hoff -- nungs -- grün, so hoff -- nungs -- grün,
das Land, wo mei -- ne Ro -- sen blühn,

wo mei -- ne Freun -- de wan -- delnd gehn,
wo mei -- ne To -- dten auf -- er -- stehn,
das Land, das mei -- ne Spra -- che spricht,
o Land, __ wo bist du?

Ich wan -- dle __ still, bin we -- nig froh,
und im -- mer fragt der Seuf -- zer, wo? im -- mer wo?
Im Gei -- ster -- hauch tönt’s mir zu -- rück:
“Dort, wo du nicht bist, dort __ ist das Glück.”

}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chantA = \relative do' {
%--- 1
R1*4
%--- 5
R1*2
r8. dod16 dod8. red16 mid8. fad16 sold8. la16
}

%%%%%%%%%%%%%%%%%%%% APPOGGIATURA PARTITION
chantABP = \relative do'' {
\appoggiatura sold4 fad2 r2
}

%%%%%%%%%%%%%%%%%%%% APPOGGIATURA PARTITION
chantABM = \relative do'' {
sold4 fad4 r2
}

%%%%%%%%%%%%%%%%%%%% suite
chantB = \relative do' {
r4 r8 fad fad4. fad8 
%--- 10
si2. r4
r4 r8 si si4. mid,8
fad2 r4 fad
sold2. sold4
dod,2 r2
R1
%--- 16
r4 si'4 dod8[ si] sold[ mi]
la4. lad8 si4. fad8
sold2 r2
r4 fad si4. la8
%--- 20
sold4. sold8 mi'4 ~  \tupletUp \TUPBNO \times 2/3 { mi8[ red] dod }
red2 red4 ~ \times 2/3 { red8[ mi] red }
red2.\fermata r8 sold,
sold4. sold8 sold8.[ si32 la] sold4
mi4 \grace sold16 \times 2/3 { fad8[ mi fad] } sold4. sold8
%--- 25
sold4( \grace la16 \times 2/3 { sold8[ fad]) sold } si4( la8) fad
mi8( sold4) sold8 dod,4. sold'8
sold4. sold8 sold8.[ si32 la] sold4
mi4( \grace sold16 \times 2/3 { fad8[ mi]) fad } sold4. sold8
sold4. sold8 dod4( la8) fad \break
%--- 30
si4. red,8 mi4 r4
r2 r4 r8 si'8^\MOVEMENTA \bar "||"
%--- 32
si2 sold4 r8 mi'
mi2 dod4 r
si4. \grace red16 dod8 si4. fad8
sold2 r4 r8 si
%--- 36
si2( sold4) r8 mi'
mi2( dod4) r
r2 mi
si1 ~
si2. red,4 \bar "||" \TIMEB
%--- 41
mi4^\MOVEMENTB r8 r4 sold8
sold4 la8 si4 dod8
dod8([ si]) la sold4 r8 \break
r4 r8 r4 mi'8
mi8[ red] dod si4 si8
dod4 fad,8 fad4 fad8
%--- 47
si4 sold8 mi4 si'8 \break
si4 si8 \grace dod16 si8[ lad] si
dod4 si8 sold4 dod8
dod4 dod8 \grace re16 dod8[ sid] dod
re4 dod8 la4 mi'8
%--- 52
mi4 mi8 mi4 re8
re8[ do] si la4 la8
la4.\fermata ~ la8[ sold] la  \bar "||" \TIMEA
%--- 55
\grace do16 si8^\MOVEMENTC si r4 r2
R1*2
%--- 58
r4 si dod8[ si] sold[ mi]
la4. lad8 si4. fad8
sold2 r
r4 fad si4. la8
%--- 62
sold4. sold8 mi'4 ~ \times 2/3 { mi8[ red] dod }
red2 red4 ~ \times 2/3 { red8[ mi] red }
red2.\fermata r8 red,
mi4. red8 dod4 si
%--- 66-72
la4 sold dod2
fad2 red4 si
fad'4 mi r sol8.[ lad,16]
si2. si4
<mi, mi'>2 r2
R1*2
\bar "|."
}

chantPart = { \chantA \chantABP \chantB }
chantMidi = { \chantA \chantABM \chantB }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEY \TIMEA
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chantPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEY \TIMEA
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

pianoHautA = \relative do' {
%--- 1
\tupletDown \TUPBNO \repeat unfold 4 { \times 2/3 { dod8[ dod dod] } } \TUPNO
\repeat unfold 4 { \times 2/3 { \repeat tremolo 3 <dod re>8 } }
\repeat unfold 4 { \times 2/3 { \repeat tremolo 3 <si re mid>8 } }
\repeat unfold 4 { \times 2/3 { \repeat tremolo 3 <la dod fad>8 } }
%--- 5
\times 2/3 { <la! sid red! fad>8[ <la sid red fad> <la sid red fad>] }
 \repeat unfold 3 { \times 2/3 { \repeat tremolo 3 <la sid red fad>8 } }
\repeat unfold 4 { \times 2/3 { \repeat tremolo 3 <sold dod mid>8 } }
<sold dod mid>1
\times 2/3 { fad'8[ fad fad] } \repeat unfold 3 { \times 2/3 { \repeat tremolo 3 fad8 } }
\times 2/3 { <mi! fad>8[ <mi fad> <mi fad>] } \repeat unfold 3 { \times 2/3 { \repeat tremolo 3 <mi fad>8 } }
%--- 10
\repeat unfold 4 { \times 2/3 { \repeat tremolo 3 <re fad>8 } }
\repeat unfold 4 { \times 2/3 { \repeat tremolo 3 <si re mid sold>8 } } \clef bass
\repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <la dod fad>8 } }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <fad dod' fad>8 } }
%--- 13
\repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <sold dod mi>8 } }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <fad sold sid red>8 } }
\repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <mi sold dod>8 } }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <mi sol dod>8 } }
\repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <mi fad si>8 } }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <red fad si>8 } }
%--- 16
\times 2/3 { <mi sold>8[ \clef treble <mi' sold> <mi sold>] } \times 2/3 { <mi sold>8[ <mi sold> <mi sold>] }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <mi sold>8 } }
\times 2/3 { \repeat tremolo 3 <mi fad>8 } \times 2/3 { \repeat tremolo 3 <dod fad>8 }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <red fad>8 } }
\times 2/3 { <mi sold>8[ <sold, mi'> <sold mi'>] } \repeat unfold 3 { \times 2/3 { \repeat tremolo 3 <sold mi'>8 } } \clef bass
\times 2/3 { \repeat tremolo 3 <fad la si mi>8 } \times 2/3 { \repeat tremolo 3 <fad la si dod>8 }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <fad la si red>8 } }
%--- 20
\times 2/3 { \repeat tremolo 3 <fad sold red'>8 } \times 2/3 { \repeat tremolo 3 <mi sold mi'>8 }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <dod' fadd>8 } } \clef treble
\repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <sid sold'>8 } } \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <dod fadd>8 } } 
\repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <sid sold'>8 } } <sid sold'>4\fermata r
<dod mi>4-.( <dod mi>8-.[ <dod mi>-.]) <red fad>2
<dod mi>4 <dod fad>8[ <dod fad>] <sid sold'>2 \clef bass
%--- 25
<sold dod mi>4 <sold dod mi>8[ <sold dod mi>] <la dod fad>4. <fad dod' fad>8
<sold dod mi>4 <fad sold sid red> <mi sold dod>2 \clef treble
<dod' mi>4 <dod mi>8[ <dod mi>] <red fad>2
<dod mi>4 <dod fad>8[ <dod fad>] <sid sold'>2
<sold dod mi>4 <sold si dod mid>8[ <sold si dod mid>] <la dod fad>4. <la do fad>8
%--- 30-31
<sold si mi!>4( <la si red>  <sold si mi>)
 << { \voiceOne \IGNCOLL <mi' sol mi'>4( | si'2) ( <mi, sold>4) }
 \\ { \voiceTwo \stemUp <mi sol>4( | \stemDown <mi sold!>4) <red fad> s4 }
 \\ { \voiceFour s4 | \NOTEHS #'1 si2 ~ si4 } >>
 \oneVoice \stemNeutral r4
%--- 32
r4 <mi sold>8.-.[ <sold si>16-.] <sold si>4( <mi sold>8) r
r4 <la dod>8.-.[ <dod mi>16-.] <dod mi>4( <la dod>8) r
r4 <red, la'>8.-.[ <la' si>16-.] <la si>4( <red, la'>8) r
r4 <mi sold>8.-.[ <sold si>16-.] <sold si>4( <mi sold>8) r
%--- 36
r4 <mi sold>8.-.[ <sold si>16-.] <sold si>4( <mi sold>8) r
r4 <la dod>8.-.[ <dod mi>16-.] <dod mi>4( <la dod>8) r
r4 <la do>8.-.[ <do mi>16-.] <do mi>4( <la do>8) r
r4 <mi sol>8.-.[ <sol si>16-.] <sol si>4( <mi sol>8) r
r4 <red la'>8.-.[ <la' si>16-.] <la si>4( <red, la'>8) r \TIMEB
%--- 41
mi8[ mi mi] mi[ mi <mi sold!>]
<mi sold>4 <mi fad la>8 <mi sold si>4 <mi la dod>8
%--- 43-45
<< { <la dod>8([ <sold si> <fad la>]) sold4 s8 | <la' dod>8([ <sold si> <fad la>]) sold4 <dod, mi>8 |
 <dod mi>([ <si red> <la dod>]) <sold si>4 }
\\ { mi4. ~ mi4 <mi' la dod>8 | mi4. ~ mi4 mi,8 | mi4. ~ mi4 } >>
r8
%--- 46
r8 <red fad dod'>[ <red fad dod'>] r <red fad dod'>[ <red fad dod'>]
%--- 47
r8 <mi sold si>[ <mi sold si>] r <mi sold si>[ <mi sold si>]
r8 <red fad si>-.([ <mi sold si>-.] <fad la si>-.[ <mi sold si>-. <red fad si>-.])
r8 <mi sold si>-.([ <fad la si>-.] <sold si>-.[ <fad la si>-. <mi sold si>-.])
r8 <mid sold dod>-.([ <fad la dod>-.] <sold si dod>-.[ <fad la dod>-. <mid sold dod>-.])
r8 <fad la dod>-.([ <sold si dod>-.] <la dod>-.[ <sold si dod>-. <fad la dod>-.])
%--- 52
r8 <sold si mi>-.([ <la do mi>-.] <si re mi>-.[ <la do mi>-. <sold si mi>-.])
r8 <la do mi>([ <si re mi>-.] <do mi>-.[ <si re mi>-. <la do mi>-.])
<red,! la' red!>2.\fermata \TIMEA
%--- 55
\grace s16 << { mi'2.( re4) } \\ { mi,2.( re4) } \\ { sold1 } >>
<dod,~ sold' si dod~ >2^( <dod fad la dod>4 <dod fad la>)
<< { <si mi sold>2( \NOTEHS #'-1 <la red fad>) } \\ { s2 \NOTEHS #'1.5 \ACCIEXO #'(3 . 0) do4. si8} >>
%--- 58
\times 2/3 { <sold si mi>8[ <mi' sold> <mi sold>] }
 \repeat unfold 3 { \times 2/3 { <mi sold>[ <mi sold> <mi sold>] } }
\times 2/3 { <mi fad>8[ <mi fad> <mi fad>] } \times 2/3 { \repeat tremolo 3 <dod fad>8 }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <red fad>8 } }
\times 2/3 { <mi sold>8[ <sold, mi'> <sold mi'>] } \repeat unfold 3 { \times 2/3 { \repeat tremolo 3 <sold mi'>8 } } \clef bass
\times 2/3 { \repeat tremolo 3 <fad la si mi>8 } \times 2/3 { \repeat tremolo 3 <fad la si dod>8 }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <fad la si red>8 } } 
%--- 62
\times 2/3 { \repeat tremolo 3 <fad sold red'>8 } \times 2/3 { \repeat tremolo 3 <mi sold mi'>8 }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <dod' fadd>8 } } \clef treble
\repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <sid sold'>8 } }
 \repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <dod fadd>8 } }
\repeat unfold 2 { \times 2/3 { \repeat tremolo 3 <sid sold'>8 } } <sid sold'>4\fermata r
mi4.( red8 dod4 si
%--- 66 début
la4 sold) \clef bass 
}

%%%%%%%%%%%%%%%%%%%%% ARPÈGE POUR LA PARTITION
pianoHautB = \relative do {
%--- 66 fin
<mi fad dod'>2\arpeggio
}

%%%%%%%%%%%%%%%%%%%%% ARPÈGE POUR LE MIDI: REGROUPÉ AVEC CELUI DE LA PORTÉE DU BAS
pianoHautC = \relative do {
%--- 66 fin
s2
}

%%%%%%%%%%%%%%%%%%%%% suite
pianoHautD = \relative do {
%--- 67-72
<fad si red>2. r4
<mi si' mi>2 <sol lad mi'> \clef treble
<sold! si mi>4 r <la si red> r
<sold si mi>2 mi''8([ dod sold <mi sol dod>])
<mi fad si>2 << { dod'4( si8[ la]) } \\ { <red, fad>2 } >>
<si~ red fad la>2^( <si mi sold>4) r
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIMEA
% \set autoBeaming = ##f
 \pianoHautA \pianoHautB \pianoHautD
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIMEA
 \IPIANOHAUT
 \unfoldRepeats { \pianoHautA \pianoHautC \pianoHautD }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoBasIA = \relative do, { \voiceOne
%--- 1
dod2_>( mid4 sold)
dod,2_>( fad4 la)
dod,2_>( sold'4 si)
dod,2_>( la'4 dod)
%--- 5
dod,2_>( la'4 sid)
dod,2_>( mid4 sold
dod1)
fad,2_>( la4 dod)
fad,2_>( lad4 dod)
%--- 10
fad,2_>( si4 re)
fad,2_>( si4 re)
fad,2 <la, la'> \oneVoice
<sold sold'>2 <sold sold'>
<dod dod'>2 <lad lad'>
<si si'>2 <si si'>
%--- 16
mi8 r8 r4 r2
<si si'>1(
mi8) r8 si'4( dod8[ si sold mi])
<si si'>1
%--- 20
<sid sid'>4 <dod dod'> <la la'>2(
<sold sold'>2) <la la'>(
<sold sold'>2.\fermata) r4
<dod' sold'>4-.( <dod sold'>8-.[ <dod sold'>-.]) <sid sold'>2
<dod sold'>4 <la fad'>8[ <la dod>] <sold red'>2
%--- 25
dod4 dod8[ dod] fad,4. <la, la'>8
<sold sold'>4 <sold sold'> <dod dod'>2
<dod' sold'>4 <dod sold'>8[ <dod sold'>] <sid sold'>2
<dod sold'>4 <la fad'>8[ <la dod>] <sold red'>2
dod4 dod8[ dod] fad,4. la8
%--- 30-31
<si, si'>2( mi4)
 << { \voiceOne \stemDown \IGNCOLL sol'4( | \stemUp sold!4) ( la sold) }
 \\ { \voiceTwo \stemDown lad,4( | si2) ( mi4) } >>
 \oneVoice \stemNeutral r4
%--- 32
mi,4-| <mi' sold>8.-.[ <sold si>16-.] <sold si>4( <mi sold>8) r
<la,, la'>4-| <la'' dod>8.-.[ <dod mi>16-.] <dod mi>4( <la dod>8) r
<si,, si'>4-| <si' fad'>8.-.[ <fad' si>16-.] <fad si>4( <si, fad'>8) r
mi,4-| <mi' sold>8.-.[ <sold si>16-.] <sold si>4( <mi sold>8) r
%--- 36
mi,4-| <mi' sold>8.-.[ <sold si>16-.] <sold si>4( <mi sold>8) r
<la,, la'>4-| <la'' dod>8.-.[ <dod mi>16-.] <dod mi>4( <la dod>8) r
<la,, la'>4-| <la'' do>8.-.[ <do mi>16-.] <do mi>4( <la do>8) r
<si,, si'>4-| <si' sol'>8.-.[ <sol' si>16-.] <sol si>4( <si, sol'>8) r
<si, si'>4-| <si' fad'>8.-.[ <fad' si>16-.] <fad si>4( <si, fad'>8) r \TIMEB
%--- 41
<mi, mi'>8[ mi' mi] mi[ mi <mi sold!>]
<mi sold>4 <mi fad la>8 <mi sold si>4 <mi la dod>8
%--- 43-45
<< { <la dod>8([ <sold si> <fad la>]) sold4 \clef treble <mi' la dod>8 |
 <la dod>8([ <sold si> <fad la>]) sold4 \clef bass <dod, mi>8 | <dod mi>([ <si red> <la dod>]) <sold si>4 }
\\ { mi4. ~ mi4 \clef treble s8 | mi'4. ~ mi4 \clef bass mi,8 | mi4. ~ mi4 } >>
r8
%--- 46
la4 r8 la4 r8
%--- 47
sold4 r8 sold4 r8
<si,, si'>2.
<mi si'>2.
<dod dod'>2.
<fad dod'>2.
%--- 52
<mi mi'>2.
<la mi'>2.
<fa fa'>2._\fermata \TIMEA
%--- 55
\grace s16 <mi mi'>1
\set doubleSlurs = ##t <mid mid'>2( <fad fad'>4) \set doubleSlurs = ##f <la, la'>
<si si'>2 <si si'>
%--- 58
mi4 r4 r2
<si si'>1(
mi8) r si'4( dod8[ si sold mi])
<si si'>1
%--- 62
<sid sid'>4 <dod dod'> <la la'>2(
<sold sold'>2) <la la'>2(
<sold sold'>2.\fermata) r4
<mi' mi'>4.( <red red'>8 <dod dod'>4 <si si'>
%--- 66 début
<la la'>4 <sold sold'>) 
}

%%%%%%%%%%%%%%%%%%%%% ARPÈGE POUR LA PARTITION
pianoBasIB = \relative do, {
%--- 66 fin
<la la'>2\arpeggio
}

%%%%%%%%%%%%%%%%%%%%% ARPÈGE POUR LE MIDI: ICI, REGROUPÉ AVEC CELUI DE LA PORTÉE DU HAUT
pianoBasIC = \relative do, {
%--- 66 fin
<< { la2 } \\ { s16 la'4.. } \\ { s8 mi'4. } \\ { s8. fad16 ~ fad4 } \\ { s4 dod' } >>
}

%%%%%%%%%%%%%%%%%%%%% suite
pianoBasID = \relative do, {
%--- 67-72
<la la'>2. r4
<sold sold'>2 <do do'>
<si si'>4 r <si si'> r
mi2 mi''8([ dod sold lad])
si2 <si, si'>
<< { mi4( si mi,) } \\ { mi2 mi4 } >> r4
}

pianoBasIPart  = \context Staff \new Voice { \voiceOne
 \pianoBasIA \pianoBasIB \pianoBasID
}

pianoBasIMidi  = \context Staff \new Voice { \voiceOne
 \pianoBasIA \pianoBasIC \pianoBasID
}


pianoBasII = \context Staff \relative do, \new Voice { \voiceTwo
%--- 1
dod1 dod dod dod
%--- 5
dod1 dod ~ dod fad fad
%--- 10-11
fad1 fad
%--- 12-40
s1*29
%--- 41-54
s2.*14
%--- 55-72
s1*18
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEY \TIMEA
% \set autoBeaming = ##f
 << \pianoBasIPart \pianoBasII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEY \TIMEA
 \IPIANOBAS
 \unfoldRepeats { << \pianoBasIMidi \pianoBasII >> }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
%--- 1
s1\pp
s1
s1-\CRESC
s1
%--- 5
s2\fz\decr s4\! s4
s1\p
s1
s1\pp
s1
%--- 10
s1
s1\f
s1-\CRESC
s1\ff
\DYNEXO #'(0.5 . 0) s2\fp s2\pp
s1
%--- 16
\times 2/3 { s8 s8\pp s8 } s2.
s1*3
%--- 20
s4\cr s4\! s4\decr s4\!
s2 s2\ppp
s1
\DYNEXO #'(1 . 0) s1\pp
s1
%--- 25
s1*5
%--- 30
\DYNEXO #'(0.5 . 0) s2.\pp s8\decr s8\!
s1
%--- 32
\DYNEXO #'(1 . 0) s2\mf s4\decr s8\! s8
s2 s4\decr s8\! s8
s2 s4\decr s8\! s8
s2 s4\decr s8\! s8
%--- 36
s2 s4\decr s8\! s8
s2 s4\decr s8\! s8
\DYNEXO #'(1 . 0) s2\p s4\decr s8\! s8
\DYNEXO #'(1.5 . 0) s1\pp
s1
%--- 41 \TIMEB
s2.\fp
\PINEXO #'(3.5 . 0) s4.\cr s8 s8\! s8
s4.\decr s16 s16\! s4
s4.\decr s16 s16\! s8 \DYNEXO #'(0 . -0.5) s8\f
s8\decr s16\! s16 s8 s4.
s2.\p
%--- 47
s2.
s8 s4-\CRESC s4.
s2.
s2.\f
s2.
%--- 52
s2.*2
s2.\fp 
%--- 55 \TIMEA
s1\fp
s1\pp
s2 \TSCREXO #'(3 . 0) s2-\DIM
%--- 58
s1*4
%--- 62
s4\cr s4\! s4\decr s4\!
s2 s2\ppp
s1
\PINEXO #'(1.5 . 0) s4\decr s8\! s8 s2
%--- 66-72
s1*2
s2 s2\fp
s1
s2 s8\decr s8\! s4
s4.\cr s8\! s4.\decr s8\!
s1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1
\TEMPOBASE s1\pp
s1
s1\cr
s1
%--- 5
s1\!\f\decr
s1\!\p
s1
s1\pp
s1
%--- 10
s1
s1\f
s1\cr
s1\!\ff
s2\f\decr s2\!\pp
s1
%--- 16
s1\pp
s1*3
%--- 20
s4\cr s4\!\mp s4\decr s4\!\pp
s2 s2\ppp
s2 \TEMPOA s4. \TEMPOBASE s8
s1\pp
s1
%--- 25
s1*5
%--- 30
s2.\pp s4\p\decr
s2..\!\pp \TEMPOB s8
%--- 32
s2\mf s4\f\decr s8\!\mf s8
s2 s4\f\decr s8\!\mf s8
s2 s4\f\decr s8\!\mf s8
s2 s4\f\decr s8\!\mf s8
%--- 36
s2 s4\f\decr s8\!\mf s8
s2 s4\f\decr s8\!\mf s8
s2\p s4\mp\decr s8\!\p s8
s1\pp
s1
%--- 41 \TIMEB
\TEMPOC s8\mp s4\p s4.
s2.\cr
s4\!\mf\decr s8\!\p s4.
s4\mp\decr s8\!\p s4 s8\f
s8\decr s16\!\mp s16 s8 s4.
s2.\p
%--- 47
s2.
s8 s4\cr s4.
s2.
s2.\!\f
s2.
%--- 52
s2.*2
\TEMPOBASE s2\ff s8\decr s8\!\p 
%--- 55 \TIMEA
s4\ff s2\decr s4\!\p 
s1\pp
s2 s4.\decr s8\!\ppp
%--- 58
s1*4
%--- 62
s4\cr s4\!\p s4\decr s4\!\pp
s2 s2\ppp
s1
s4\pp\decr s8\!\ppp s8 s2
%--- 66-72
s1*2
s2 s4\mp s4\pp
s1
s2 s8\decr s8\!\ppp s4
s4.\cr s8\!\pp s4.\decr s8\!\ppp
s2 \TEMPOD s2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new Voice = "chant"  << \notePartChant \dynPartChant >>
  \new Lyrics \lyricsto "chant" \poeme

  \new PianoStaff <<
   \set PianoStaff.instrumentName = "PianoForte "
   \set PianoStaff.connectArpeggios = ##t
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

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIMEA s1 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiPiano >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
 >>
 \midi { }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         FIN DU FICHIER SchubertF-D493-DerWanderer.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
