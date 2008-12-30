%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D717-Suleika-2.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                 FRANZ SCHUBERT: Gesang "Suleika 2", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.60"
\include "italiano.ly"
#(set-global-staff-size 19)

\paper {
after-title-space = 60\mm
between-system-padding = 10\mm
line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
#(define top-margin (/ (- paper-height (* 259 mm)) 2))
#(define bottom-margin (/ (- paper-height (* 253 mm)) 2))

 indent = 28\mm
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Suleika 2 (D.717)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Suleika 2 (D.717)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 dedication = \markup \center-column { \fontsize #0.5 \bold "Frau Anna Milder gewidmet." " " }
 title = \markup { \fontsize #1.5 "Suleika 2" }
 subsubtitle = " "
 poet = \markup { \hspace #19  \column { \center-column {
  \line { \fontsize #2 \bold "Johann Wolfgang von Goethe" }
  \line { \small "(1787-1862)" }
  \line { \fontsize #1 \bold "„West-östlicher Diwan“" }
  } } }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D.720 (Op. 31, 1821)" }
% MUTOPIA
 mutopiatitle = "Suleika 2"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Wolfgang von Goethe"
 mutopiaopus = "D.717 (Op. 31)"
 mutopiainstrument = "Voice and Piano"
 date = "1821"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/10/30-1583"
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
TEMPOBASE = \tempo 4=110
TEMPODIMA = \tempo 4=105
TEMPODIMB = \tempo 4=100
TEMPODIMC = \tempo 4=95
TEMPODIMD = \tempo 4=90
TEMPORAP = \tempo 4=115
TEMPODIME = \tempo 4=110
TEMPOFIN = \tempo 4=30
%----- TONALITÉS ET MESURES
KEY   = { \key sib \major }
TIMEA = { \time 2/4 }
TIMEB = { \time 3/4 }
%----- MOUVEMENTS
MOVEMENT  = \markup { \bold \large { \hspace #-4.0 "Mässige Bewegung. " } }
MOVEMENTB = \markup { \bold \large { \hspace #-4.0 "Etwas geschwinder. " } }
%----- INSTRUMENTS
ICHANT = {
 \set Staff.midiInstrument = "trombone"
 \set Staff.midiMinimumVolume = #0
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
 \set Staff.midiMaximumVolume = #0.7
}
%----- NOLET: CACHER OU AFFICHER LE NOMBRE OU LE CROCHET 
TUPBNO = \override TupletBracket #'transparent = ##t
%----- SUBDIVISION DES BARRES DE LIAISON
SUBDBEAM = {
 \set subdivideBeams = ##t
 \set beatLength = #(ly:make-moment 1 4) }
SUBDBEAMNO = \set subdivideBeams = ##f
%----- OCTAVES: DEBUT ET FIN
OCTAVEBEG = { #(set-octavation 1) \set Staff.ottavation = #"8" }
OCTAVEEND = #(set-octavation 0)
%----- CRESCENDOS
CRESC      = \markup { \bold \italic "cresc." }
DECRESC    = \markup { \bold \italic "decresc." }
RITARDDECR = \markup { \bold \italic "ritard. decresc." }
DIMIN      = \markup { \bold \italic "dimin." }
POCOA      = \markup { \bold \italic "poco    a" }
POCODIMIN  = \markup { \bold \italic "poco   dimin." }
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
TSCREXOB =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \override TextScript #'extra-offset = #$beg-end #})
%----- LONG STACCATO
LONGSFOR = \markup { \hspace #1 \fontsize #4.5 \musicglyph #"scripts.sforzato" }
%----- MARKUP
MITHALBER   = \markup { \bold \italic "mit halber Stimme" }
STACCATO    = \markup { \bold \italic "staccato" }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
\set fontSize = #-.5

%--- 9
Ach, um dei -- ne feuch -- ten __ Schwin -- gen,
West, wie sehr ich dich __ be -- nei -- de:
denn __ du __ kannst ihm Kun -- de __ brin -- gen,
was ich in der Tren -- nung __ lei -- de,
denn __ du __ kannst ihm Kun -- de __ brin -- gen,
was ich in der Tren -- nung __ lei -- de!

%--- 39
Die Be -- we -- gung dei -- ner __ Flü -- gel
weckt im __ Bu -- sen stil -- les __ Seh -- nen;
Blu -- men, Au -- en, Wald __ und __ Hü -- gel
stehn bei __ dei -- nem Hauch __ in __ Trä -- nen.
Blu -- men, Au -- en, __ Wald __ und __ Hü -- gel
stehn bei __ dei -- nem __ Hauch __ in __ Trä -- nen,
stehn bei dei -- nem __ Hauch __ in Trä -- nen.

%--- 84
Doch dein mil -- des sanf -- tes __ We -- hen
kühlt die wun -- den Au -- gen -- li -- der;
ach, __ für __ Leid müßt’ ich __ ver -- ge -- hen,
hofft’ ich nicht zu sehn __ ihn __ wie -- der.
ach, __ für __ Leid müßt’ ich __ ver -- ge -- hen,
hofft’ __ ich nicht zu sehn ihn wie -- der,
ach, __ für __ Leid müßt’ ich __ ver -- ge -- hen,
hofft’ __ ich nicht zu sehn ihn __ wie -- der.

%--- 131
Ei -- le denn zu mei -- nem Lie -- ben,
spre -- che sanft zu sei -- nem Her -- zen;
doch ver -- meid’ ihn zu be -- trü -- ben
und ver -- birg ihm mei -- ne Schmer -- zen; 
ei -- le denn zu mei -- nem Lie -- ben,
spre -- che sanft zu sei -- nem Her -- zen;
doch ver -- meid’ ihn zu be -- trü -- ben
und ver -- birg __ ihm mei -- ne Schmer -- zen. 

%--- 147
Sag’ ihm, a -- ber sag’s be -- schei -- den:
sei -- ne Lie -- be sei __ mein Le -- ben;
freu -- di -- ges Ge -- fühl von bei -- den,
freu -- di -- ges Ge -- fühl von bei -- den
wird mir sei -- ne __ Nä -- he __ ge -- ben;
sag’ ihm, a -- ber sag’s be -- schei -- den:
sei -- ne Lie -- be sei __ mein Le -- ben;
freu -- di -- ges Ge -- fühl von bei -- den,
freu -- di -- ges Ge -- fühl von bei -- den
wird mir sei -- ne __ Nä -- he __ ge -- ben;
sag’ ihm, a -- ber be -- schei -- den:
sei -- ne __ Lie -- be sei __ mein Le -- ben;
sei -- ne Lie -- be sei mein Le -- ben.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. CHANT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chant = \relative do'' {
%--- 1
R2*8
%--- 9
\repeat unfold 2 { re4. fa,8   fa4 fa   fa8[ do'] sib[ la]   sib4 re8 r }
%--- 17
\repeat unfold 2 { la8[ do] mib[ do]   sib4. sib8   la8[ do] mib[ do]   sib8.[ do16] re8 r
mib4. mib8   mi4. mi8   fa2~   fa4 mib8[ do]   \grace do8 sib4 sib R2 }
%--- 36
R2*3
%--- 40
la4. la8   do4 sib   la8[ do] fa[ la,]   do4 sol8 r   la4 fa8[ la]   do4 do   sib( fa')~   fa mib8[ reb]   do2   la4 r
%--- 50
la4. la8   do4 sib8 r   la8[ do] fa[ la,]   do4 sol8 r   la4 fa8[ la]   do4 do   sib( fa')~   fa mib8[ reb]
%--- 58
reb2(   fa4. mib8)   reb4 r   R2
%--- 62
\repeat unfold 2 { mib4. do8   reb[ do] sib[ lab]   solb[ lab]   \grace do16 sib8[ lab]   lab4 fa8 r }
%--- 70
reb'4. lab8   fa8.[ lab16] lab8.[ reb16]   reb2~   reb4 fab   mib2(   solb4. do,8)   reb4 r
%--- 77
R2*7
%--- 84
\repeat unfold 2 { re4. fa,8   fa4 fa   fa8[ do'] sib[ la]   sib4 re8 r }
%--- 92
la8[ do] mib[ do]   sib4. sib8   la8[ do] mib[ do]   sib8.[ do16] re8 r
mib4. mib8   mi4. mi8   fa2~   fa4 mib8[ do]   \grace mib8 re4 re R2
%--- 102
re8[ mib!] re[ la]   si4. re8   re8[ mib!] re[ la]   si4 re8 r
fa2~   fa8 mi re do   si4 do   re2   si4 r   R2
%--- 112
re8[ mib!] re[ la]   si4. re8   re8[ mib!] re[ do]   si4 re8 r
fa2~   fa8 mi re do   si4 do8[ mi]   re4.( fad,8)   sol4 r
%--- 121
R2*7
R2^\fermataMarkup
%--- 129
\bar "||"  \TIMEB
R2.*2
%--- 131
\tupletUp \TUPBNO \repeat unfold 2 { re'8. do16 sib8 la sol la   sib4 fa8 r re' sib
la4. fa'8 \times 2/3 { mib8[ re] do }   \grace do8 sib4 sib r }
%--- 139
mib8. reb16 do8 mib reb sib   la4 do8 r la do   fa4. mib8 \times 2/3 { reb8[ do] sib }   la4 do r
%--- 143
re!8. do16 sib8 la sol la   sib4 fa8 r re' sib
la4^~ \times 2/3 { la8[ sol'] fa } \times 2/3 { mib[ re] do }   \grace do8 sib4 sib r
%--- 147
re8. re16 do8 sib do mib   re4 sib8 r sib8. do16   re4. sib8 \times 2/3 { do8[ re] mib }   re4 sib r
%--- 151
si8. si16 si8 si do re   re4 do r    do8. do16 do8 do reb mib   mib4 reb r
%--- 155
fa2 fa4   sol4.( fa8) re[ sib]   fa'4.( mib8) do[ la]   \grace do8 sib4 sib r   R2.
%--- 160
re8. re16 re8 re re re   re8.[ sib16] sol8 r sol sib
re4~ \times 2/3 { re8[ mib] re } \times 2/3 { re[ mib] re }   re8.[ sib16] sol4 r
%--- 164
re'8. re16 re8 re dod re   fa4 re r
re8. re16 re8 re mib fa   fa4 mib fa8 sol   sib4.( fa8) re[ sib]   fa'4.( mib8) do[ la]   do4 sib r   R2.
%--- 172
r4 re sib   r4 fa fa8 fa   re'4 sib r
\repeat unfold 2 { la4.( mib'8) re[ do]   \grace do8 sib4 sib r }
%--- 179-186
r4 fa'4. fa8   fa2 re4   r4 re4. re8   re2.~   re   sib2 r4   R2.   R2.^\fermataMarkup
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartChant = {
 \clef treble
 \KEY \TIMEA
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Singstimme "
 \chant
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiChant = {
 \KEY \TIMEA
 \ICHANT
 \chant
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. CHANT : DYNAMIQUES PARTITION/MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartChant = {
%--- 1 (time 2/4)
s2*128
%--- 129 (time 3/4)
s2.^\MOVEMENTB
s2.*42
%--- 172
s2.^\MITHALBER
s2.*8
%--- 181
s4 s2^\pp
s2.*5
}

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiChant = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoHautII = \context Staff \relative do' \new Voice { \voiceTwo
%--- 1
\oneVoice \stemDown \SUBDBEAM \repeat unfold 3 { r16 fa( fa' fa,   fa' fa, fa' fa,  ) }
mi'( fa, fa' fa,    sol' fa, fa' fa, )
r fa( fa' fa,       fa' fa, fa' fa, )
fad'( fad, fad'     fad,   sol' sol, sol' sol, )
la'( la, la' la,    sib' sib, do' do, )
do'( do, sib' sib,  fa' fa, re' re, )
%--- 9
\repeat unfold 2 { r fa( fa' fa,  fa' fa, fa' fa,  ) }
\repeat unfold 6 { r fa fa' fa,  fa' fa, fa' fa, }
%--- 17
\repeat unfold 2 { 
 r fad fad' fad,  fad' fad, fad' fad,  r sol sol' sol,   sol' sol, sol' sol,
 r fad fad' fad,  fad' fad, fad' fad,  r sol sol' sol,   sol' sol, sol' sol,
 r sib sib' sib,  sib' sib, sib' sib,  r do do' do,      do' do, do' do, 
 re' re, re' re,  do' do, do' do,      sib' sib, sib' sib,  la' la, la' la, 
 r sib sib' sib,  sib' sib, re' re,    do' do, sib' sib,  la' la, sol' sol,
 } 
%--- 37
fad' fad, fad' fad,  fad' fad, sib' sib,  la' la, sol' sol, fad' fad, <re' sol> sol,
<la fa'!> fa <la fa'> fa  \stemUp <sol do> mi <sol do> mi
%--- 40
<fa la>( do' <fa, la> do'  <fa, la> do' re do)   <sol sib>( do <sol sib> do <sol sib> do re do)
<fa, la>( do' <fa, la> do'  <fa, la> do' re do)  <mi, sol> do' <mi, sol> do'  <mi, sol> do' re do
<fa, la> do' <fa, la> do'  <fa, la> do' re do    <fa, lab> do' <fa, lab> do'  <fa, lab> do' re do 
%--- 46
<fa, sol> sib <fa sol> sib   <fa sol> sib do sib   <fa sol> reb' <fa, sol> reb'   <fa, sol> mib' <fa, sol> fa'
<fa, sol> do' <fa, sol> do'   <mi, la!> do' <mi, sib'> do'   <fa, la> do' re do   <fa, la> do' <mi, sib'> do'
%--- 50
<fa, la> do' <fa, la> do'  <fa, la> do' re do  <sol sib> do <sol sib> do <sol sib> do re do
<fa, la> do' <fa, la> do'  <fa, la> do' re do  <mi, sol> do' <mi, sol> do'  <mi, sol> do' re do
<fa, la> do' <fa, la> do'  <fa, la> do' re do  <fa, lab> do' <fa, lab> do'  <fa, lab> do' re do 
%--- 56
<fa, sol> sib <fa sol> sib  <fa sol> sib do sib   <fa sol> reb' <fa, sol> reb'  <fa, sol> mib' <fa, sol> fa'
<fa, lab> reb' <fa, lab> reb'  <fa, lab> reb' mib reb   <solb, lab> do <solb lab> do  <solb lab> do mib do
<fa, reb'> lab fa lab  fa lab sib lab   sol( lab sib lab  solb lab fa lab)
%--- 62
<solb lab> do <solb lab> do  <solb lab> do mib solb,   fa reb' lab reb  solb, reb' fa, reb'
mib, do' fa, do'  solb do lab do   <fa, lab> reb' <fa, lab> reb'  <fa, lab> reb' fa reb
<solb, lab> do <solb lab> do  <solb lab> do mib solb,   fa reb' lab reb  solb, reb' fa, reb'
mib, do' fa, do'  solb do lab do   
%--- 69
\repeat unfold 3 { <fa, lab> reb' <fa, lab> reb'  <fa, lab> reb' fa reb }
\repeat unfold 2 { <fab, lab> reb' <fab, lab> reb'  <fab, lab> reb' fab reb }
<mib, sib'> reb' <mib, sib'> reb'  <mib, sib'> reb' mib reb   <solb, lab> do <solb lab> do  <solb lab> do mib do
%--- 76
\stemDown fa,_( lab fa lab  fa lab sib lab)   fa lab fa lab  fa lab fa lab 
la! fa la fa  <fa sib> re! <fa sib> re   <fa la> do <fa la> do  <mi sol> do <mi sol> do
%--- 80
reb_( mi reb mi  reb mi sib' mi,)   reb mi reb mi  reb mi reb mi
re! fa re fa  mib! sol! mib sol   re fa re fa  mib fa mib fa
%--- 84
\SUBDBEAMNO \stemUp <re sib'> \stemDown fa[ fa' fa,] \SUBDBEAM fa' fa, fa' fa,  r fa fa' fa,  fa' fa, fa' fa,
\repeat unfold 6 { r fa fa' fa,  fa' fa, fa' fa, }
%--- 92
\repeat unfold 2 { r fad fad' fad,  fad' fad, fad' fad,  r sol sol' sol,   sol' sol, sol' sol, }
r sib sib' sib,  sib' sib, sib' sib,  r do do' do,      do' do, do' do, 
re' re, re' re,  do' do, do' do,   sib' sib, sib' sib,  la' la, la' la, 
r la la' la,  la' la, la' la,   la' la, la' la,  si' si, do' do,
%--- 102
\repeat unfold 2 { r la la' la,  la' la, la' la,   r si si' si, re' re, si' si, }
r si si' si,  si' si, si' si,    si' si, do' do,  re' re, mi' mi,
sol' sol, sol' sol,  mi' mi, mi' mi,   si' si, si' si,  do' do, do' do,
r si si' si,  si' si, re' re,   mi' mi, re' re,  do' do, si' si,
%--- 112
\repeat unfold 2 { r la la' la,  la' la, la' la,   r si si' si, re' re, si' si, }
r si si' si,  si' si, si' si,    si' si, do' do,  re' re, mi' mi,
sol' sol, sol' sol,  mi' mi, do' do,   si' si, si' si,  do' do, la' la,
%--- 120
r sol sol' sol,  sol' sol, sol' sol,   si' si, re' re, si' si, sol' sol,
r sol sol' sol,  sol' sol, sol' sol,   sib'! sib,! re' re, sib' sib, sol' sol,
r fa fa' fa,  fa' fa, fa' fa,   do'' do, mib' mib,  do' do, fa fa,
%--- 126
\repeat unfold 4 { sol' sol, fa' fa, }
R2^\fermataMarkup
%--- 129
\bar "||" \TIMEB
\repeat unfold 6 { fa16-. fa( fa') r }
%--- 131
\repeat unfold 2 {
fa,-. fa( fa') r  fa,-. fa( fa') r  sol,-. sol( sol') r
fa,16-. fa( fa') r  fa,-. fa( fa') r  <sib, sib'>8 <re re'>
\OCTAVEBEG fa16-. fa( fa') r  fa,-. fa( fa') r  <sol, sol'>8 <la la'>
sib16-. sib( sib') r  \OCTAVEEND fa,,-. fa( fa') r  fa,-. fa( fa') r  }
%--- 139
fa,-. fa( fa') r  fa,-. fa( fa') r  <sib, sib'>8 <reb reb'>
fa16-. fa( fa') r  fa,-. fa( fa') r  <do, do'>8-. <la la'>
fa16-. fa( fa') r  fa,-. fa( fa') r  <sib, sib'>8 <reb reb'>
fa16-. fa( fa') r  fa,-. fa( fa') r  <mib, mib'>8-. <do do'>-.
sib16-. sib( sib') r  fa,-. fa( fa') r  sol,-. sol( sol') r
fa,-. fa( fa') r  fa,-. fa( fa') r  <sib, sib'>8-. <re re'>-.
%--- 145
\OCTAVEBEG fa16-. fa( fa') r  fa,-. fa( fa') r  <sol, sol'>8-. <la la'>-.
sib16-. sib( sib') r  sib,-. sib( sib') r  \OCTAVEEND re,,-. re( re') r
re,-. re( re') r  re,-. re( re') r  <mib, mib'>8-. <do do'>-.
re16-. re( re') r  re,-. re( re') r  <sol,, sol'>8-. <la la'>-.
%--- 149
sib16-. sib( sib') r  \SUBDBEAMNO <sib, sib'>8-.[ <re re'>-. <mib mib'>-. <do do'>-.]
\SUBDBEAM re16-. re( re') r  re,-. re( re') r  <sib, sib'>8-. <do do'>-.
re16-. re( re') r  re,-. re( re') r  <mib, mib'>8-. <fa fa'>-.
fa16-. fa( fa') r  mib,-. mib( mib') r  mib,-. mib( mib') r  
mib,-. mib( mib') r  mib,-. mib( mib') r  <fa, fa'>8-. <solb solb'>-.
solb16-. solb( solb') r  fa,-. fa( fa') r  fa,-. fa( fa') r  
%--- 155
fa,,-. fa( <lab reb fa>) r  fa-. fa( <la mib' fa>) r   fa-. fa( <sib re! fa>) r  \stemNeutral
re,-. re( <fa sib re>8)  \SUBDBEAMNO r8 <fa fa'>-.[ <sib sib'>-. <re re'>-.]
\OCTAVEBEG fa16-.[ fa( fa')] r   r8 <fa, fa'>-.[ <la la'>-. <do do'>-.]
sib16-.[ sib( sib')] r  \OCTAVEEND sib,,-.[ sib( sib')] r  sib,-.[ sib( sib')] r 
<sib, sib'>8-.([ <re re'>-. <do do'>-. <sib sib'>-. <la la'>-. <sol sol'>-.])
%--- 160
\repeat unfold 2 { fad16-.[ fad( fad')] r  fad,-.[ fad( fad')] r  fad,-.[ fad( fad')] r    
 <sol, sol'>8-.([ <re' re'>-. <do do'>-. <sib sib'>-. <la la'>-. <sol sol'>-.])
 }
\SUBDBEAM \repeat unfold 3 { sold16-. sold( sold') r } \repeat unfold 3 { la,-. la( la') r }
si,16-. si( si') r  si,-. si( si') r  <do, do'>8-. <re re'>-.
%--- 167
re16-. re( re') r do,-. do( do') r  <re, re'>8-. <mib mib'>-.
\SUBDBEAMNO fa16-.[ fa( fa')] r r8 <fa,, fa'>-.[ <sib sib'>-. <re re'>-.]
\OCTAVEBEG fa16-.[ fa( fa')] r r8 <fa, fa'>-.[ <la la'>-. <re re'>-.]
sib16-.[ sib( sib')] r  \OCTAVEEND fa,,-.[ fa( <sib re>)] r fa-.[ fa( <sib re>)] r
fa-._\LONGSFOR [ fa( <la fa'>)] r r8 <fa sol mib'>-.[ <fa sib re>-. <fa la do>-.]
%--- 172
\repeat unfold 3 {
 fa16-.[ fa( <sib re>)] r  fa-.[ fa( <sib re>)] r  fa-.[ fa( <sib re>)] r  
 fa-._\LONGSFOR [ fa( <la fa'>)] r r8 <fa sol mib'>-.[ <fa sib re>-. <fa la do>-.]
 }
fa16-.[ fa( <sib re>)] r  fa-.[ fa( <sib re>)] r  fa-.[ fa( <sib re>)] r  
fa-.[ fa( <la fa'>)] r r8 <fa sol mib'>-.[ <fa sib re>-. <fa la do>-.]
%--- 180
\SUBDBEAM \repeat unfold 3 { fa16-. fa( <sib re>) r }
\repeat unfold 3 { re,-. re( <fa sib>) r }
\repeat unfold 3 { sib,-. sib( <re fa>) r } \clef bass
\repeat unfold 9 { fa,-. fa( <sib re>) r }
<fa sib re>2.\fermata
}

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoHautI = \context Staff \relative do'' \new Voice { \voiceOne
%--- 1
s2*75
%--- 76
reb2(   <do mib>4 <si fa'>)   do2~   do   reb(   do4 sib)   sib2~   sib4( la)
%--- 84-128
s2*45
%--- 129-186
s2.*58
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoHaut = {
 \clef treble
 \KEY \TIMEA
 \set autoBeaming = ##f
 << \pianoHautI \pianoHautII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoHaut = {
 \KEY \TIMEA
 \IPIANOHAUT
 \unfoldRepeats { << \pianoHautI \pianoHautII >> }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% VOIX I
pianoBasI = \context Staff \relative do \new Voice { \voiceOne
%--- 1
\oneVoice
\repeat unfold 2 { sib8 <fa' re'>[ <sib re> <fa re'>] }
la, <fa' mib'>[ <do' mib> <fa, mib'>]
fa, <fa' mib'>[ <la mib'> <fa mib'>]
sib, <fa' re'>[ <sib re> <fa re'>]
la,[ <do' re>] sol,[ <sib' re>]
%--- 7
fa, <fa' do' fa>[ <fa re' fa> <fa do' fa>]
sib, <fa' re'>[ <sib re> fa]
\repeat unfold 2 { sib, <fa' re'>[ <sib re> <fa re'>] }
fa, <fa' mib'>[ <fa re'> <fa dod'>]
\repeat unfold 3 { sib, <fa' re'>[ <sib re> <fa re'>] }
%--- 15
fa, <fa' mib'>[ <fa re'> <fa dod'>]
sib, <fa' re'>[ <sib re> <fa re'>]
%--- 17 et 27
\repeat unfold 2 { re <la' re>[ <do re> <la re>]
 re, <sol re'>[ <sib re> <sol re'>]
 re <la' re>[ <do re> <la re>]
%--- 20 et 30
 sol, <sol' re'>[ <sib re> <sol re'>]
 sol, <sol' mib'>[ <sib mib> <sol mib'>]
 solb, <solb' mi'>[ <sib mi> <solb mi'>]
 fa, <fa' re' fa>[ <fa mib' sol> <fa mib' sol>]
 <fa re' fa>[ <fa re' fa> <fa do' mib> <fa do' mib>]
%--- 25 et 35
 sib, <fa' re'>[ re' <sib re>]
 <la re>[ <sol re'> <fad re'> <mib! re'>]
 }
%--- 37
<re re'> <la' re>[ re <sol, re'>]
<fad re'>[ <mib sol re'> <re la' re> <sib sib'>]
<do la' do> r <do sib' do> r
%--- 40
<fa la do> do'4^._>( do8^.)
mi,8^. do'4^._>( do8^.)
fa,8^. do'4^._>( do8^.)
do,8 do'4 do8
fa,8 do'4 do8
fa,8 do'4 do8
%--- 46
reb,8 reb'4 reb8
sib,8 sib'([ do reb])
do,8 do'4 do8
fa,,8 fa'-.[ la-. do-.]
%--- 50
fa,8^. do'4^._>( do8^.)
mi,8^. do'4^._>( do8^.)
fa,8^. do'4^._>( do8^.)
do,8 do'4 do8
fa,8 do'4 do8
fa,8 do'4 do8
%--- 56
reb,8 reb'4 reb8
sib,8 sib'([ do reb])
lab,8 lab'4 lab8
lab,8 lab'4 lab8
<reb, lab'> lab'4 <fa lab>8
<mi lab>8-.([ <fa lab>-. <mib lab>-. <reb lab'>-.])
%--- 62
\repeat unfold 3 { lab8 lab'4 lab8 }
reb,8 lab'4 lab8
\repeat unfold 3 { lab,8 lab'4 lab8 }
\repeat unfold 5 { reb,8 lab'4 lab8 }
%--- 74
sol,!8 <mib' sib' reb>4 <mib sib' reb>8
lab,8 <lab' do>4 <lab do>8
%--- 76
\voiceOne r8 lab4 lab8
lab4 lab
la! sib
do sib
\oneVoice solb,8 solb'4 solb8
solb4 solb
\voiceOne s2
r4 do
%--- 84
\oneVoice
\repeat unfold 2 { sib,8 <fa' re'>[ <sib re> <fa re'>] }
fa, <fa' mib'>-.([ <fa re'>-. <fa dod'>-.])
\repeat unfold 3 { sib, <fa' re'>[ <sib re> <fa re'>] }
%--- 90
fa, <fa' mib'>[ <fa re'> <fa dod'>]
sib, <fa' re'>[ <sib re> <fa re'>]
re <la' re>[ <do re> <la re>]
re, <sol re'>[ <sib re> <sol re'>]
re <la' re>[ <do re> <la re>]
%--- 95
sol, <sol' re'>[ <sib re> <sol re'>]
sol, <sol' mib'>[ <sib mib> <sol mib'>]
solb, <solb' mi'>[ <sib mi> <solb mi'>]
fa, <fa' re' fa>[ <fa mib' sol> <fa mib' sol>]
<fa re' fa>[ <fa re' fa> <fa mib' fa> <fa mib' fa>]
%--- 100
\repeat unfold 2 { fad, <fad' re'>[ <la re> <fad re'>] }
re, <re' fad>[ <re do'> <re fad>]
re, <re' sol>[ <re si'> <re sol>]
re, <re' fad>[ <re do'> <re fad>]
sol, <re' sol>[ <re si'> <re sol>]
%--- 106
sold, <sold' re'>[ <si re> <sold re'>]
la, <la' do>[ <si re> <do mi>]
re, \clef treble <si' re sol>[ <do mi sol> <do mi sol>] \clef bass
re, \clef treble <si' re sol>[ <la re fad> <la re fad>] \clef bass
%--- 110
sol, re'[ <re sol> <re si'>]
<re do'>[ <re si'> <re la'> <re sol>]
%--- 112
re, <re' fad>[ <re do'> <re fad>]
re, <re' sol>[ <re si'> <re sol>]
re, <re' fad>[ <re do'> <re fad>]
sol, <re' sol>[ <re si'> <re sol>]
%--- 116
sold, <sold' re'>[ <si re> <sold re'>]
la, <la' do>[ <si re> <do mi>]
re, \clef treble <si' re sol>[ <do mi sol> <do mi sol>] \clef bass
re, \clef treble <si' re sol>[ <la re fad> <do re fad>] \clef bass
%--- 120
\repeat unfold 2 { sol, <re' si'>[ <sol si> <re si'>] }
sol, <re' sib'!>[ <sol sib> <re sib'>]
sol, <re' sib'>[ <sol sib> <re sib'>]
%--- 124
\repeat unfold 2 { la <fa' mib'>[ <do' mib> <fa, mib'>] }
\repeat unfold 2 { fa, <fa' mib'>[ <la mib'> <fa mib'>] }
R2^\fermataMarkup
%--- 129
\bar "||" \TIMEB
\repeat unfold 8 { sib,8[ <fa' sib re>] } sib,[ <sol' sib mib>]
%--- 132
\repeat unfold 3 { sib,[ <fa' sib re>] }
\repeat unfold 3 { sib,[ <fa' la mib'>] }
\repeat unfold 3 { sib,[ <fa' sib re>] }
sib,[ <fa' sib re>]  sib,[ <fa' sib re>]  sib,[ <sol' sib mib>] 
%--- 136
\repeat unfold 3 { sib,[ <fa' sib re>] }
\repeat unfold 3 { sib,[ <fa' la mib'>] }
\repeat unfold 3 { sib,[ <fa' sib re>] }
la,[ <fa' do' mib>] la,[ <fa' do' mib>]  sib,[ <fa' sib reb>] 
%--- 140
\repeat unfold 3 { fa,[ <fa' la do>] ] }
la,[ <fa' do' mib>]  la,[ <fa' do' mib>]  sib,[ <fa' sib reb>] 
fa,[ <fa' la do>] fa,[ <fa' la do>] <fa sol sib>[ <fa la mib'>]
sib,[ <fa' sib re>] sib,[ <fa' sib re>] sib,[ <sol' sib mib>] 
\repeat unfold 3 { sib,[ <fa' sib re>] }
\repeat unfold 3 { sib,[ <fa' la mib'>] }
\repeat unfold 3 { sib,[ <fa' sib re>] } \clef treble
%--- 147
sol[ <sib re sol>] sol[ <sib re sol>] sol[ <la mib' sol>] 
\repeat unfold 3 { sol[ <sib re sol>] }
sol[ <sib re sol>] sol[ <sib re sol>] sol[ <la mib' sol>] 
\repeat unfold 3 { sol[ <sib re sol>] } \clef bass
%--- 151
\repeat unfold 3 { sol,[ <sol' si fa'>] }
\repeat unfold 3 { do,[ <sol' do mib>] }
\repeat unfold 3 { lab,[ <lab' do solb'>] }
\repeat unfold 3 { reb,[ <lab' reb fa>] }
reb,[ <lab' reb>] do,[ <fa la mib'>] sib,[ <fa' sib re>] 
%--- 156
fa,[ <fa' sib re>]  r <fa sib re>[ fa, <fa' sib re>]
fa,[ <fa' la mib'>]  r <fa la mib'>[ fa, <fa' la mib'>]
\repeat unfold 4 { sib,[ <sib' re>] } <sib re>[ <sib re> <sib re> <sib re>]
\repeat unfold 4 { sib,[ <sib' re>] } <sib re>[ <sib re> <sib re> <sib re>]
\repeat unfold 4 { sib,[ <sib' re>] } <sib re>[ <sib re> <sib re> <sib re>]
%--- 164
\repeat unfold 3 { sib,[ <sib' re>] }
\repeat unfold 3 { la,[ <la' re fa>] }
sol,[ <sol' re' fa>] sol,[ <sol' re' fa>] sol,[ <sol' si fa'>] 
\repeat unfold 3 { do,[ <sol' do mib>] }
%--- 168
re[ <sib' re fa>]  r <sib re fa>[ fa <sib re fa>]
fa,[ <fa' la mib'>]  r <fa la mib'>[ fa, <fa' la fa'>]
sib,[ <fa' sib re>] sib,-.[ fa'-.] sib,-.[ fa'-.]
\repeat unfold 4 { sib,-.[ fa'-. sib,-. fa'-. sib,-. fa'-.] }
%--- 175-186
\repeat unfold 2 { fa,-.[ fa'-.] r fa-.[ fa,-. fa'-.]   sib,-.[ fa'-. sib,-. fa'-. sib,-. fa'-.] }
fa,-.[ fa'-.] r fa-.[ fa,-. fa'-.]
\repeat unfold 3 { sib,[ fa' sib, fa' sib, fa'] }
\repeat unfold 9 { sib,,[ sib'] }
<sib, sib'>2.^\fermata
}

%%%%%%%%%%%%%%%%%%%% VOIX II
pianoBasII = \context Staff \relative do \new Voice { \voiceTwo
%--- 1
s2*75
%--- 76
reb2~   reb   do~   do   s2*2   fa2~   fa
%--- 84-128
s2*45
%--- 129-186
s2.*58
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartPianoBas = {
 \clef bass
 \KEY \TIMEA
 \set autoBeaming = ##f
 << \pianoBasI \pianoBasII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiPianoBas = {
 \KEY \TIMEA
 \IPIANOBAS
 \unfoldRepeats { << \pianoBasI \pianoBasII >> }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO : DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartPiano = { 
\TSCREXOB #'(0 . 1.5)
%--- 1
s2\pp
s2*4
%--- 5
s8.-\CRESC s16\cr s8. s16\!
s4\decr s16 s16\! s8
s2
\DYNEXO #'(1.5 . 0) s2\pp
s2*7
%--- 17
s16 s8\cr s16\! s8.\decr s16\!
s2
s16 s8\cr s16\! s8.\decr s16\!
s2*2
%--- 22
s16 s8.\cr s8. s16\!
\DYNEXO #'(0.5 . 0) s4\f\cr s8. s16\!
s4..\decr s16\!
s4\p s8.\cr s16\!
s8.\decr s16\! s4
%--- 27
s16 s8\cr s16\! s8.\decr s16\!
s2
s16 s8\cr s16\! s8.\decr s16\!
s2*2
%--- 32
s8 s8\cr s8. s16\!
\DYNEXO #'(0.5 . 0) s4\f s8.\cr s16\!
s8.\decr s16\! s4
s4\p\cr s8. s16\!
s4..\decr s16\!
s2
%--- 38
s2-\DECRESC
s2
s2\pp
s2*5
%--- 46
s8 s4\cr s16\! s16
s4.\decr s8\!
s2*8
%--- 56
s4 s8.\cr s16\!
s8.\decr s16\! s4
s2-\CRESC
s2*3
%--- 62
s2\pp
s2*7
%--- 70
s2-\DECRESC
s2
s2-\CRESC
s2
s2\f
s2
%--- 76
s2\fp
s2
s4 s8.\cr s16\!
s8.\decr s16\! s4
%--- 80
s2\fp
s2
s8 s4\cr s16 s16\!
s4\decr s16 s16\! s8
s2\pp
s2*7
%--- 92
s16 s8\cr s16\! s8.\decr s16\!
s2
s16 s8\cr s16\! s8.\decr s16\!
s2*2
%--- 97
s2-\CRESC
s4\f\cr s8 s16\! s16
s4..\decr s16\!
s2
s2\p
\DYNEXO #'(1.5 . 0) s2\pp
s2*4
%--- 107
s8 s8\cr s8. s16\!
s4\f\decr s8. s16\!
s2
s4\p\cr s8 s8\!
s4\decr s16 s16\! s8
s2\pp
s2*3
%--- 116
s16 s8.\cr s8. s16\!
s8 s8\cr s8. s16\!
s4\f\decr s8 s8\!
s2
s2\p
s2
%--- 122
s2-\DECRESC
s2
s16 s8.\cr s8. s16\!
s8.\decr s16\! s4
s2-\DIMIN
s2*2
%--- 129 (time 3/4)
s2.\pp
s2.*17
%--- 147
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*5
%--- 153
s2.-\CRESC
s2.*2
\DYNEXO #'(0.5 . 0) s4.\f s4.\p
s4.\f s4.\p
s4\f s8\p s4.-\DECRESC
s2.
%--- 160
s2.\pp
s2.*3
s2.-\CRESC
s2.*3
%--- 168
\DYNEXO #'(1 . 0) s4.\fz s4.\p
s4.\fz s4.\p
\DYNEXO #'(0.5 . 0) s4\fz s2\p
%--- 171
s2.-\STACCATO
s8\pp s4-\RITARDDECR s4.
s2.
s2 s4-\POCOA
s2.-\POCODIMIN
s2.*3
%--- 179
\DYNEXO #'(1.5 . 0) s2.\fp
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*2
s2.-\DIMIN
s2.*3
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO : DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiPiano = {
%--- 1
\TEMPOBASE
%--- 1
s2\pp
s2*4
%--- 5
s2\cr
s4\!\mp\decr s8 s8\!\pp
s2
s2\pp
s2*7
%--- 17
s4\cr s4\!\mp\decr
s2\!\pp
s4\cr s4\!\mp\decr
s2\!\pp
s2
%--- 22
s2\cr
s2\!\f\cr
s2\!\ff\decr
s4\!\p s4\cr
s4\!\mp\decr s4\!\p
%--- 27
s4\cr s4\!\mf\decr
s2\!\p
s4\cr s4\!\mf\decr
s2\!\p
s2
%--- 32
s2\cr
s4\!\f s4\cr
s4\!\ff\decr s4\!\f
s2\p\cr
s2\!\mf\decr
s2\!\p
%--- 38
s2\decr
s2
s2\!\pp
s2*5
%--- 46
s2\cr
s2\!\mp\decr
s2\!\pp
s2*7
%--- 56
s4 s4\cr
s4\!\mp\decr s4\!\pp
s2\cr
s2*2
s2\!\mf
%--- 62
s2\pp
s2*7
%--- 70
s2\decr
s2
s2\!\ppp\cr
s2
s2\!\f
s2
%--- 76
s4\decr s4\!\mp     %fp
s2
s2\cr
s4\!\f\decr s4\!\mp
%--- 80
s4\f\decr s4\!\mp     %fp
s2
s8 s4.\cr 
s4.\!\f\decr s8\!\mp
s2\pp
s2*7
%--- 92
s4\cr s4\!\mp\decr
s2\!\pp
s4\cr s4\!\mp\decr
s2\!\pp
s2
%--- 97
s2\cr
s2\!\f\cr
s2\!\ff\decr
s2\!\f
s2\p
s2\pp
s2*4
%--- 107
s8 s4.\cr
s2\!\f\decr
s2\!\mp
s2\p\cr
s4\!\mf\decr s8\!\p s8
s2\pp
s2*3
%--- 116
s2\cr
s2
s2\!\f\decr
s2\!\mp
s2\p
s2
%--- 122
s2\decr
s4. s8\!\ppp
s2\cr
s4\!\p\decr s4\!\pp
\TEMPODIMA s4\decr \TEMPODIMB s4
\TEMPODIMC s4 \TEMPODIMD s8 s8\!\ppp
s2
%--- 129 (time 3/4)
\TEMPORAP s2.\pp
s2.*17
%--- 147
s2.\pp
s2.*5
%--- 153
s2.\cr
s2.*2
s4.\!\f s4.\p
s4.\f s4.\p
s4\f s8\p s4.\decr
s2.
%--- 160
s2.\!\pp
s2.*3
s2.\cr
s2.*3
%--- 168
s4.\!\mf s4.\p
s4.\mf s4.\p
s4\mf s2\p
%--- 171
s2.
\TEMPODIME s2\pp\decr s4\!\ppp
s2.\pp 
s2 \TEMPOBASE s4\decr
s2.
\TEMPODIMA s2.*2
s4 s2\!\ppp
%--- 179
s16\mp s16\p s8 s2
s2.\pp
s2.*2
\TEMPODIMB s2.\decr
s2.
\TEMPODIMC s2 s8. \TEMPOFIN s16
s2.\!\ppp
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\score {
 <<
  \new Voice = "chant"  << \notePartChant \dynPartChant >>
  \new Lyrics  \with { \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.5 . 0.5) }
  \lyricsto "chant" \poeme

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
   \override SpacingSpanner #'spacing-increment = #2
   \override TextScript #'font-size = #1
  }
  \context {
   \type "Engraver_group"
   \name Dynamics
   \alias Voice % So that \CRESC works, for example.
   \consists "Output_property_engraver"

   \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1.5)
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

%{ --------------------
-------------------- %}

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
 ("f" .     0.90)
 ("mf" .    0.82)
 ("mp" .    0.78)
 ("p" .     0.70)
 ("pp" .    0.60)
 ("ppp" .   0.50)
 ("pppp" .  0.35)
 ("ppppp" . 0.30) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIMEA \partial 2 s2 }

\score {
 <<
  \new Staff = "chant"      { \SILENCE << \noteMidiChant      \dynMidiPiano >> }
  \new Staff = "pianoUp"    { \SILENCE << \noteMidiPianoHaut  \dynMidiPiano >> }
  \new Staff = "pianoDown"  { \SILENCE << \noteMidiPianoBas   \dynMidiPiano >> }
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
%                                         FIN DU FICHIER SchubertF-D717-Suleika-2.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
