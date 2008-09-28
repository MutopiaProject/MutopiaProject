%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D962-TantumErgo.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                              FRANZ SCHUBERT: "Tantum Ergo", für SATB, gemischter Chor und Orchester
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.57"
\include "italiano.ly"
#(set-global-staff-size 14)

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")

line-width = 176\mm
#(define left-margin (/ (- paper-width  (* 166 mm)) 2))

indent = 5\mm
 oddHeaderMarkup  = \markup \fontsize #3 \fill-line {
  " " { \italic "♫  Franz Schubert: Tantum ergo in Es-Dur (D.962)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fontsize #3 \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Tantum ergo in Es-Dur (D.962)  ♫" } " " }
 #(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup \center-column { \fontsize #6 "Tantum ergo in Es-Dur" \fontsize #2 "für SATB, gemischter Chor und Orchester" " " }
 subtitle = \markup { \fontsize #2  "(Nach einer Reinschrift von Franz Schubert)" }
 subsubtitle = \markup { \fontsize #3  "(Wienbibliothek im Rathaus)" }
 composer = \markup \center-column { \fontsize #6 \bold "Franz Schubert" \small "(1797-1828)" "D.962 (Oktober 1828)" }

% MUTOPIA
 mutopiatitle = "Tantum ergo"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.962"
 mutopiainstrument = "Voice (Choir SATB), Orchestra"
 date = "1828"
 source = "Handschrift von Franz Schubert"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = "A source is freely available at http://www.schubert-online.at/"
 footer = "Mutopia-2008/09/28-1553"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été équilibré).
%
%  La partition a été organisée dans l'ordre des instruments, le poème est placé en premier:
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. POÈME: 2 strophes
%  B. NOTES ET DYNAMIQUES PARTITION/MIDI
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%  B01. VIOLON 1 (Violino 1)                  1 voix - DYNAMIQUES PARTITION/MIDI VIOLONS 1, 2 ET ALTO
%  B02. VIOLON 2 (Violino 2)                  1 voix  
%  B03. ALTO (Viola 2)                        1 voix 
%  B04. HAUTBOIS (Oboe)                       2 voix - DYNAMIQUES PARTITION/MIDI
%  B05. CLARINETTES (Clarinetti in B)         2 voix - DYNAMIQUES PARTITION/MIDI [en Si bémol]
%  B06. BASSONS (Fagotti)                     2 voix - DYNAMIQUES PARTITION/MIDI
%  B07. CORS D'HARMONIE (Corni in Es)         2 voix - DYNAMIQUES PARTITION/MIDI [en Mi bémol]
%  B08. TROMPETTES (Clarini in Es)            2 voix - DYNAMIQUES PARTITION/MIDI [en Mi bémol]
%  B09. TIMBALES (Tympani in Es u B)          1 voix - DYNAMIQUES PARTITION/MIDI [en Mi bémol et Si bémol]
%  B10. TROMBONES ALTO ET TENOR (3 Tromboni)  2 voix - DYNAMIQUES PARTITION/MIDI
%  B11. TROMBONE BASSE                        1 voix - DYNAMIQUES PARTITION/MIDI
%  B12. SOPRANO                               1 voix - DYNAMIQUES PARTITION/MIDI CHOEUR
%  B13. ALTO                                  1 voix
%  B14. TENOR (Tenore)                        1 voix
%  B15. BASSE (Basso)                         1 voix
%  B16. VIOLONCELLE (Violoncello)             1 voix - DYNAMIQUES PARTITION/MIDI VIOLONCELLE ET CONTREBASSE
%  B17. CONTREBASSE (Contrabasso)             1 voix
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TONALITÉ ET MESURE
KEYTIME = { \key mib \major \time 4/4 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large { \hspace #-3 "Andante sostenuto." } }
%----- DYNAMIQUES
CRESC = \markup { \large \bold \italic "cresc." }
DECRESC = \markup { \large \bold \italic "decresc." }
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})
PINEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Hairpin #'extra-offset = #$beg-end #})
%----- HAUTEUR D'UNE BARRE DE LIGATURE
BEAMPOS = #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Beam #'positions = #$beg-end #})
%----- HAUTEUR D'UNE LIAISON
SLURINSIDE = \once \override Script #'avoid-slur = #'inside
%----- SCRIPT / MARKUP
SCRPAD =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override Script #'padding = #$beg-end #})
TSCRPAD =
 #(define-music-function (parser location beg-end) (number?)
 #{ \once \override TextScript #'padding = #$beg-end #})
TSCREXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override TextScript #'extra-offset = #$beg-end #})
PIZZ  = \markup { \bold \italic "pizz." }
ARCO  = \markup { \bold \italic "arco" }
SOLI  = \markup { \bold \italic "SOLI" }
SOLO  = \markup { \bold \italic "SOLO" }
TUTTI = \markup { \bold \italic "TUTTI" }
FPP   = #(make-dynamic-script "fpp")
%----- CORDES & PIZZICATO
VIOLINO   = \set Staff.midiInstrument = "violin"
VIOLA     = \set Staff.midiInstrument = "viola"
CELLO     = \set Staff.midiInstrument = "cello"
BASSO     = \set Staff.midiInstrument = "contrabass"
PIZZICATO = \set Staff.midiInstrument = "pizzicato strings"



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POÈME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%% STROPHE 1

poemeA = \lyricmode {
 \set fontSize = #-1
 \set stanza = "1. "

%1 1-8 SOLO
 Tan -- tum er -- go sa -- cra -- men -- tum
 Ve -- ne -- re -- mur cer -- nu -- i,
 Et an -- ti -- quum do -- cu -- men -- tum
 No -- vo ce -- dat ri -- tu -- i.
%1 10- 17 TUTTI
 Tan -- tum er -- go sa -- cra -- men -- tum
 Ve -- ne -- re -- mur cer -- nu -- i,
 Et an -- ti -- quum do -- cu -- men -- tum
 No -- vo, "no - vo" cedat ri -- tu -- i;
%1 19- 22 SOLO
 Prae -- stet fi -- des sup -- ple -- men -- tum
 Sen -- su -- um de -- fec -- tu -- i,
%1 23- 33 TUTTI
 Prae -- stet fi -- des sup -- ple -- men -- tum
 Sen -- su -- um de -- fec -- tu -- i,
 Sen -- su -- um de -- fec -- tu -- i.
 Tan -- tum er -- go sa -- cra -- men -- tum
 Ve -- ne -- re -- mur cer -- nu -- i.
}

%%%%%%%%%%%% STROPHE 2

poemeB = \lyricmode {
 \set fontSize = #-1 
 \set stanza = "2. "

%2 1-8 SOLO
 Ge -- ni -- to -- ri ge -- ni -- to -- que
 Laus et ju -- bi -- la -- ti -- o,
 Sa -- lus, ho -- nor, vir -- tus quo -- que,
 Sit et be -- ne -- dic -- ti -- o.
%2 10- 17 TUTTI
 Ge -- ni -- to -- ri ge -- ni -- to -- que
 Laus et ju -- bi -- la -- ti -- o,
 Sa -- lus, ho -- nor, vir -- tus quo -- que,
 Sit et be -- ne -- dic -- ti -- o.
%2 19- 22 SOLO
 Pro -- ce -- den -- ti ab u -- tro -- que
 Com -- par sit lau -- da -- ti -- o,
%2 23- 33 TUTTI
 Pro -- ce -- den -- ti ab u -- tro -- que
 Com -- par sit lau -- da -- ti -- o,
 Com -- par sit lau -- da -- ti -- o.
 Ge -- ni -- to -- ri ge -- ni -- to -- que
 Laus et ju -- bi -- la -- ti -- o.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B01. NOTES VIOLON 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinoA = \relative do'' {

%--- 1-4
r16 sib([sol sib])   r16 sib([sol sib]) r16 sib([sol sib])  r16 sib([sol do]) 
r16 sib([solb sib])  r16 la([do, la'])  r16 sib([solb sib]) r16 la([do, la']) 
r16 lab!([fa lab])   r16 lab([fa lab])  r16 lab([sol! sib]) r16 lab([sol fa]) 
r16 sib,([mib fa])   r16 re([fa la])    sib8 do16([ sib])   do[( sib) do( sib)] 
%--- 5-9
r16 sib([sol sib])   r16 sib([sol sib]) r16 sib([sol sib]) r16 sol([mib' do]) 
r16 sib([solb sib])  r16 la([do, la'])  r16 do([solb do])  r16 do([fa, do']) 
r16 re([fa, re'])    r16 re([fa, re'])  r16 do([sol do])   fa,[( re') mib,( mib')] 
r16 re([fa, re'])    r16 re([mib, do']) r16 sib([re fa]    mib[ fa solb sib] )
r16 sib([fa re]      fa[ mib re \grace fa32 mib16] ) re re,([ fa sib] \SLURINSIDE lab8_>[ sol16 fa])
%--- 10-13
mib16_. sib'([sol sib]) r16 sib([sol sib])   r16 sib([sol sib])  r16 sib([sol do]) 
r16 do([solb do])       r16 do([solb do]))   r16 do([solb do])   r16 do([fa, do']) 
r16 dob([lab dob])      r16 dob([fa, dob'])  r16 sib8([sol16])   r16 do([sib lab]) 
r16 sib,([sol' lab])    fa16([ re fa la])    sib8 do16([ sib]) do[( sib) do( sib)] 
%--- 14-18
r16 sib([sol sib])  r16 sib([sol sib]) r16 sib([sol sib])   r16 sib([do sol]) 
r16 do([solb do])   r16 do([solb do])) r16 do([solb do])    r16 do([fa, do']) 
r16 re([sib fa'])   r16 fa([sib, fa']) r16 sol([sib, sol']) sib,[( fa') sib,( mib)] 
r16 re([fa, re'])   r16 re([mib, do']) r16 sib([re fa]      mib[ fa solb sib] ) 
r16 sib([fa re]     fa[ mib re \grace fa32 mib16] )   re^. sib([ fa re] fa[ re fa sib])
%--- 19-22
r16 sib([solb sib])  r16 sib([solb sib])   r16 reb([fa, reb'])  r16 dob([fa, dob']) 
r16 sib([solb sib])  r16 reb([solb sib,])  r16 sib([solb sib])  r16 lab([fa lab]) 
r16 solb([mib solb]) r16 solb([fab solb])  r16 solb([mib mib'] reb[ mib, dob' mib,)] 
r16 sib'([solb sib]  reb[ dob sib dob])    r16 sib([ reb solb]  reb[ dob mib dob])
%--- 23-26
r16 sib([solb sib])  r16 sib([solb sib])   r16 reb([fa, reb'])  r16 dob([fa, dob']) 
r16 sib([solb sib])  r16 sib([solb sib])   r16 mib([lab, mib']) r16 re!([lab re]) 
r16 mib([sib mib])   r16 mib([sib mib])    do([ mib re si]      do[ lab do fa]) 
r16 sol,([ sib mib]) mib([ re do re])      mib8 mib,[ re do] 
%--- 27-29
si16([ re sol re]     sol[ si re fad])  sol([ re sol fa]) mib([ re do fa]) 
r16 sol,([ sib! mib]) mib([ re do re]) mib([ sib sol sib]  sol[ mib sib sol]) 
mib'4 r4 r2 
%--- 30-33
mib2^> ~ mib8 \PIZZICATO r mib ^\PIZZ \VIOLINO r 
mib2_> ^\ARCO ~ mib8 \PIZZICATO r mib ^\PIZZ \VIOLINO r 
mib2. ^\ARCO  ~ mib8([ re])
%\override Score.BarNumber #'break-visibility = #'#(#f #t #t)
%\set Score.currentBarNumber = #33
%\set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)
mib2   ~ mib2 \fermata 

\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
noteViolinoA = {
 \clef violin
 \KEYTIME
 s1*0 ^\MOVEMENT
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "violin"
 \set Staff.instrumentName = "Violino I "
 \set Staff.shortInstrumentName = "Violino I "
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
 \violinoA
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B01a. DYNAMIQUES PARTITION/MIDI VIOLON 1, 2 ET VIOLA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%% PARTITION

dynPartViolino = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicDown
 
%--- 1-4
s1*3 \pp 
s2 s8 s8 \decr s8 \! s8
%--- 5-9
s1*2
s2 s4.. \cr s16 \!
s4.. \decr s16 \! s8 s4\cr s16 s16 \!
s8. \decr s16 \! s2.
%--- 10-13
\DYNEXO #'(-3.5 . 0) s1 \mf
s2 s16 s8. \fz \decr s16 \! s8.
s1 \mf
s2 s8 s8 \decr s8 \! s8
%--- 14-18
s1
s2 s8. \decr s16 \! s4
\DYNEXO #'(-2.5 . 0) s4.. \f \cr s16 \! s4.. \decr s16 \! 
s2 s16 s4. \cr s16 \! 
s8. \decr s16 \! s4 s16 s4.. ^\DECRESC
%--- 19-22
s16 s4.. \pp s2 
s1
s4.. \cr s16 \! s4.. \decr s16 \! 
s1
%--- 23-26
s1 \p 
s2 \TSCREXO #'(-3 . 0) s16 -\CRESC s4.. 
s16 s4.. \f s4.. \cr s16 \! 
s4.. \decr s16 \!   s8 s4 \ff \cr s8 \!
%--- 27-29
s2 \decr s8. s16 \! s4 
s2 s2 ^\DECRESC 
\DYNEXO #'(1.5 . 0) s1 \pp
%--- 30-33
\DYNEXO #'(-4.5 . 0) s1 \pp \break
s1*3
}

%%%%%%%%%% MIDI

dynMidiViolino = {
 
%--- 1-4
s1*3 \pp 
s2 s8 s8 \decr s8 \! \ppp s8
%--- 5-9
s1*2
s2 s8. \cr s16 \! \mp s4
s4.. \decr s16 \! \pp s8 s4\cr s16 s16 \! \mp
s8. \decr s16 \! \pp s2.
%--- 10-13
s1 \mf
s2 s4.. \ff \decr s16 \! \mf
s1
s2 s8 s8 \decr s8 \! \p s8
%--- 14-18
s1
s2 s8. \mf \decr s16 \! \p s4
s4 \f s8. \cr s16 \! \ff s4.. \decr s16 \! \f 
s2 s4.. \cr s16 \! \ff 
s4.. \decr s16 \! \f s16 s16 \decr s4.
%--- 19-22
s1 \! \pp 
s1
s2 \cr s2 \! \mf \decr 
s1 \! \pp
%--- 23-26
s1 \p 
s2 s2 \cr
s2 \! \f s2 \cr
s2 \! \ff \decr s8 \! \f   s4. \ff \cr
%--- 27-29
s2 \! \fff \decr s8. s16 \! \ff s4 
s2 s2 \decr
s1 \! \pp
%--- 30-33
\DYNEXO #'(-4.5 . 0) s2. \pp s8 \f s8 \pp
s2. s8 \f s8 \pp
s1
s2 \tempo 4=37 s2
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B02. NOTES VIOLON 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinoB = \relative do'' {

%--- 1-4
r16 sol([mib sol])   r16 sol([mib sol])   r16 sol([mib sol])   r16 sol([mib sol]) 
r16 solb([sib solb]) r16 solb([mib solb]) r16 solb([sib solb]) r16 solb([mib solb])  
r16 fa([dob fa])     r16 fa([dob fa])     r16 fa([mib sol!])   r16 do,8[ do16] 
r16 sib8[ sib16]     r16 sib([re mib])    re8 fa([ sol lab]) 
%--- 5-9
r16 sol([mib sol])   r16 sol([mib sol])   r16 sol([mib sol])   r16 sol([mib sol]) 
r16 solb([sib solb]) r16 solb([mib solb]) r16 solb([do solb])  r16 fa([do fa]) 
r16 sib([fa sib])    r16 sib([fa sib])    r16 sib([mib, sib']) fa[( sib) sol!( sib)] 
r16 sib([fa sib])    r16 la([mib la])     r16 sib([re, fa]     mib[ fa solb sib] ) 
r16 re,([fa sib])    r16 la8[ la16]       sib sib,([ re fa]) re4 ( 
%--- 10-13
mib16) sol([mib sol]) r16 sol([mib sol])    r16 sol([mib sol])    r16 sol([mib sol]) 
r16 solb([do, solb']) r16 solb([do, solb']) r16 solb([do, solb']) r16 fa([do fa]) 
r16 lab([fa lab])     r16 fa([dob fa])      r16 fa([mib sol])     r16 do,8[do16] 
r16 mib8[sib16]       r16 sib([re mib])     re8 fa([ sol lab]) 
%--- 14-18
r16 sol([mib sol])    r16 sol([mib sol])    r16 sol([mib sol])    r16 sol([mib sol]) 
r16 solb([do, solb']) r16 solb([do, solb']) r16 solb([do, solb']) r16 fa([do fa]) 
r16 sib([fa sib])     r16 sib([fa sib])     r16 sib([sol sib])    fa[( sib) mib,( sib')] 
r16 sib([fa sib])     r16 la([mib la])      r16 sib([re, fa]      mib[ fa solb sib] ) 
r16 re,([fa sib])     r16 la8[ la16]        sib fa([ re sib]      re[ sib re fa]) 
%--- 19-22
r16 solb([reb solb])  r16 solb([reb solb])  r16 fa([reb fa])     r16 fa([reb fa]) 
r16 solb([reb solb])  r16 sib8([ solb16])   r16 solb([reb solb]) r16 fa([dob fa]) 
r16 mib([sib mib])    r16 fab([sib, fab'])  r16 mib([solb mib])  sol([ mib lab mib]) 
r16 solb([reb solb]   fa[ lab solb fa] )    r16 solb8[ solb16]   mib8([ fa]) 
%--- 23-26
r16 solb([reb solb])  r16 solb([reb solb])    r16 fa([reb fa])    r16 fa([reb fa]) 
r16 solb([reb solb])  r16 solb([sib, solb'])  r16 lab([mib lab])  r16 lab([re, lab']) 
r16 sol!([mib sib'])  r16 sib([mib, sib'])    mib,([ do' si re])  do([ fa, lab do]) 
r16 sib,([sol' sib])  lab4  sol8  mib[ re do] 
%--- 27-29
si16([ re sol re]      sol[ si re fad])  sol([ re sol fa]) mib([ re do lab]) 
r16 sib,!([ sol' sib]) lab4  sol8[ mib16( sib] sol[ sib mib sib]) 
sol4 r4 r2
%--- 30-33
la2^>( sib8)  \PIZZICATO r mib ^\PIZZ \VIOLINO r 
la,2_> ^\ARCO ( sib8) \PIZZICATO r mib ^\PIZZ \VIOLINO r 
dob2 ^\ARCO ( reb4 dob ~) 
dob4( sib8[ lab]) sib2 \fermata 

\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
noteViolinoB = {
 \clef violin
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "violin"
 \set Staff.instrumentName = "Violino II "
 \set Staff.shortInstrumentName = "Violino II "
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
 \violinoB
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B03. NOTES VIOLA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

viola = \relative do' {

%--- 1-4
r16 sib8[ sib16]   r16 sib8[ sib16]  r16 sib8[ sib16] r16 sol8[ sol16] 
r16 do8[ do16]     r16 do8[ do16]    r16 do8[ do16]   r16 do8[ do16] 
r16 dob8[ dob16]   r16 dob8[ dob16]  r16 sib8[ sib16] r16 do([ sib lab]) 
r16 sol8([ lab16]) r16 fa8([solb16]) fa8 re'([ mib re]) 
%--- 5-9
r16 sib8[ sib16]  r16 sib8[ sib16]  r16 sib8[ sib16]  r16 sib[( do) do_.] 
r16 do8[ do16]    r16 do8[ do16]    r16 sib8[ sib16]  r16 la8[ la16] 
r16 sib8[ sib16]  r16 sib8[ sib16]  r16 sib8[ sib16]  r16 sib8[ sib16] 
r16 fa'8[ fa16]   r16 fa8[ fa16]    fa8 sib,[ sib sib] 
r16 <sib re>8[ <sib re>16]          r16 do8[ do16]    r16 sib([ fa re]  fa8^>[ sol16 lab]) 
%--- 10-13
sol16 sib8[ sib16] r16 sib8[ sib16]  r16 sib8[ sib16]     r16 sib[( do) do_.] 
r16 sib8[ sib16]   r16 la8[ la16]    r16 sib8[ sib16]     r16 la8[ la16] 
r16 lab!8[ lab16]  r16 lab8[ lab16]  r16 lab[(sol )sol_.] r16 lab[(sol fa)]
r16 mib8[ fa16]    re16 fa8[ solb16] fa8_. re'([( mib re)]
%--- 14-18
r16 sib8[ sib16]  r16 sib8[ sib16]  r16 sib8[ sib16]  mib8([ do]) 
r16 sib8[ sib16]  r16 la8[ la16]    r16 sib8[ sib16]  r16 la8[ la16] 
r16 sib8[ sib16]  r16 re8[ re16]    re8[ do re sol] 
r16 fa8[ fa16]    r16 fa8[ fa16]    fa8 sib,[ sib sib] 
r16 <sib re>8[ <sib re>16]          r16 do8[ do16]    r16 re([ sib fa] sib[ fa sib re]) 
%--- 19-22
r16 reb8[ reb16]  r16 reb8[ reb16]    r16 reb8[ reb16] r16 reb8[ reb16] 
r16 reb8[ reb16]  r16 reb([ sib reb]) r16 reb8[ reb16] r16 dob8[ dob16] 
r16 sib8[ sib16]  r16 sib8[ sib16]    r16 dob8[ dob16] mib8[ mib] 
r16 reb8[ reb16]  r16 reb8[ reb16]    r16 reb8[ reb16] reb8^.([ reb^.]) 
%--- 23-26
r16 reb8[ reb16]  r16 reb8[ reb16]  r16 reb8[ reb16] r16 reb8[ reb16] 
r16 reb8[ reb16]  r16 sib8[ sib16]  r16 dob8[ dob16] r16 sib8[ sib16] 
r16 sib8[ sib16]  r16 mib8[ mib16]  mib8[ fa mib do] 
mib4 fa mib8 mib[ re do] 
%--- 27-29
si16[ <sol re'>8 <sol re'>16]  <sol re'>4. re'8[ do do] 
mib4 fa mib r 
R1 
%--- 30-33
fad,2^>( sol8) \PIZZICATO r mib ^\PIZZ \VIOLA r 
fad2_> ^\ARCO ( sol8)  \PIZZICATO r mib ^\PIZZ \VIOLA r 
solb2 ^\ARCO ( sol4 lab ~)
lab4( sol8[ fa]) sol2 \fermata 

\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
noteViola = {
 \clef alto
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "viola"
 \set Staff.instrumentName = "Viola "
 \set Staff.shortInstrumentName = "Viola "
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
 \viola
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B04. NOTES HAUTBOIS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%% VOIX 1
oboeA = \context Staff \relative do'' \new Voice { \voiceOne

%--- 1-3
\oneVoice R1
r2 \stemUp sib4^> ^\SOLO ( la!)(
lab!4) r4 r2
%--- 4-7
r2 sib4._> sib8
sib4 r4 r2 \stemNeutral
r2 \voiceOne do2
\oneVoice R1
%--- 8-11
r2 r8 \voiceOne sib([ mib solb])
fa4 ~ \BEAMPOS #'(6.2 . 5.8) fa16([ mib re \grace fa32 mib16] re8) sib[ lab!^>( sol16 fa)]
mib8 sib'4 sib8( sib[ sib sib sol])
do4 ~ do8 \oneVoice r8 \voiceOne solb'4(fa8) \oneVoice r8
%--- 12-15
\voiceOne fa4.( dob8) sib4( do8[ sib16 lab])
sol8.[ lab16] fa8 \oneVoice r8 \voiceOne sib4. sib8
sib4. sib8 sib[ sib sib do]
do4 do8 \oneVoice r8 \voiceOne solb'4( fa8) \oneVoice r8
%--- 16-19
\voiceOne fa4. fa8 sol![ sol fa mib]
re4.( do8 sib) sib[sib' solb]
fa4 ~ \BEAMPOS #'(6.2 . 5.8) fa16([ mib re \grace fa32 mib16]) re8 sib4^.( sib8^.)
sib4 r4 r2
%--- 20-26
\oneVoice r2 r8 solb'8 ^\SOLO (fa16([ dob' lab fa]
solb8) r8 r4 r8 solb,([ sol lab])
\voiceOne solb4( fa16[ lab solb fa] solb8) reb'8([ reb mib16 dob])
sib4. sib8 reb4( dob)
sib4. sib8 mib4( re!16) ([ fa lab re,])
mib2 ~ mib8[ re do fa]
mib4 ~ mib16([ re do re]) mib8 \oneVoice r8 r4
%--- 27-29
r4 \voiceOne sol4. fa8[ mib do]
sib!4 mib16([ re do re]) mib2
R1
%--- 30-33
mib,1^>
mib1^>
mib2. ~ mib8([ re])
mib2 ~ mib \fermata

\bar "|."
}

%%%%%%%%%%%% VOIX 2
oboeB = \context Staff \relative do'' \new Voice { \voiceTwo

%--- 1-3
s1*3
%--- 4-7
s1*2
s2 sib4_>( la) 
s1
%--- 8-11
s2 s8 sib_.([ sib_. sib_.])
sib4( la) ( sib8) r8 r4
r8 sol4 sol8 sol[ sol sol sol]
solb4 ~ solb8 s8 do4_> ~ do8 s8
%--- 12-15
lab4.( fa8) ~ fa[ mib] do!16[do'( sib lab)]
sol8.([ lab16]) fa8 s8 sib4._> sib8
sol4. sol8 sol[ sol sol sol]
solb4 solb8 s8 do4 ~ do8 s8
%--- 16-19
sib4. sib8 sib[ sib sib do]
sib4( la sib8) sib[ mib mib]
re4(la sib8) r8 r4
R1
%--- 20-26
s1*2
s2 r8 solb([ mib fa])
solb4. solb8 fa4 fa
solb4. solb8 lab4 lab
r4 sib( do8) [ si do lab]
sol4 lab sol8 s8 s4
%--- 27-29
s4 re'4. si8[ do fa,]
sol4 lab sol2
s1
%--- 30-33
mib1
mib1
mib2. ~ mib8[ re]
mib2 ~ mib
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
noteOboe = {
 \clef violin
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "oboe"
 \set Staff.instrumentName = "Oboe "
 \set Staff.shortInstrumentName = "Oboe "
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.9
 << \oboeA \oboeB >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B04a. DYNAMIQUES PARTITION/MIDI HAUTBOIS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION

dynPartOboe = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicDown

%--- 1-3
s1
s2 \DYNEXO #'(-2.5 . 0) s2 \pp
s1
%--- 4-7
s1*2
s2 \DYNEXO #'(-3.5 . 2) s2 \fp
s1
%--- 8-11
s2 \DYNEXO #'(2 . -2.5) s8 \mf s4 \cr s8 \!
s8 \decr s8 \! s2.
\DYNEXO #'(-3.5 . 2) s1 \mf
s2 \DYNEXO #'(-2.5 . 1.5) s2 \fz
%--- 12-15
s1 \mf
s1*2
s4. \DYNEXO #'(2.5 . 0) s8 \fz s8 \decr s8 \! s4
%--- 16-19
\DYNEXO #'(-2.5 . 0) s4. \f \cr s8 \! s4. \decr s8 \!
s2 s8 s4 \cr s8 \!
s4 \decr s8 \! s8 s8 \DYNEXO #'(-1.5 . 1) s4. \p
s1
%--- 20-26
s1*3
\DYNEXO #'(-1.5 . 0) s1 \p
s4. \TSCREXO #'(3 . 0) s8 _\CRESC s2
\DYNEXO #'(-2.5 . 0) s2 \f s4. \cr s8 \!
s8 \decr s8 \! s2.
%--- 27-29
s8 \DYNEXO #'(1 . 0) s8 \ff s8 \decr s8 \! s2
s1*2
%--- 30-33
\DYNEXO #'(-4.5 . 0) s1 \pp
s1*3
}

%%%%%%%%%%%%%%%%%%%% MIDI

dynMidiOboe = {
%--- 1-3
s1
s2 s2 \pp
s1
%--- 4-7
s1*2
s2 s4 \mp s4 \pp
s1
%--- 8-11
s2 s8 s4 \mf \cr s8 \! \f
s4 \decr s8 \! \mf s8 s2
s1 \mf
s2 s4 \f s4 \mf
%--- 12-15
s1 \mf
s1*2
s2 s4 \f s4 \mf
%--- 16-19
s4. \f \cr s8 \! \ff s4. \decr s8 \! \mf
s2 s8 s4 \cr s8 \! \f
s4 \decr s8 \!\mf s8 s8 s4. \p
s1
%--- 20-26
s1*3
s1 \p
s2 s2 \cr
s4 \! \f s4 s2 \cr
s8 \! \ff \decr s8 \! \f s2.
%--- 27-29
s4 s4. \ff s8 \f s4
s1*2
%--- 30-33
s1*4 \pp
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B05. NOTES CLARINETTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%% VOIX 1
clarinettiA = \context Staff \relative do' \new Voice { \voiceOne

%--- 1-8
\oneVoice R1*8
%--- 9-13
r2 r4 \voiceOne mi^>(
fa8) do'4 do8 do[ do do la]
re4 ~ re8 \oneVoice r8 \voiceOne re4 ~ re8 \oneVoice r8 \voiceOne
reb4. reb8 do4 re8([re,])
fa8.([ do16]) do8 \oneVoice r8 r2 \voiceOne
%--- 14-18
do'4. do8 do[ do do re]
re4 re8 \oneVoice r8 \voiceOne re4 ~ re8 \oneVoice r8 \voiceOne
sol4. sol8 la[ la sol fa]
mi4.( re8 do) do[ do' lab]
sol4 ~ \BEAMPOS #'(6.2 . 5.8) sol16[ fa mi \grace sol32 fa16] mi8 \oneVoice r8 r4
%--- 19-22
r2 r8 mib8 ^\SOLO ~ mib16([ sib'! sol reb]
do8) r8 r4 r2
lab'2 ~ lab8([ fa mib reb])
do4( mib16[ reb do reb] do8) r8 r4
%--- 23-29
r2 r4 \voiceOne mib16([ sib' sol reb])
do4. do8 fa4( mi!16) ([ sol sib mi,])
fa2 ~ fa8[ mi re sol]
fa4 fa16([ mi re mi]) fa8 \oneVoice r8 r4
r4 \voiceOne la4. sol8[ fa re]
do!4 fa16([ mi re mi]) fa2
\oneVoice R1 \voiceOne
%--- 30-33
si,,2^>( do)
si2^>( do)
reb2 mib4 reb ~
reb4 do8[ sib] do2 \fermata

\bar "|."
}

%%%%%%%%%%%% VOIX 2
clarinettiB = \context Staff \relative do' \new Voice { \voiceTwo

%--- 1-8
s1*8
%--- 9-13
s2 s4 mi(
fa8) la4 la8_.( la_.[ la_. la_. la_.])
lab4 ~ lab8 s8 lab4_>( sol8) s8
sol4. sol8 ~ sol[ fa] re!4
fa8.[ do16] do8 s8 s2
%--- 14-18
la'4. la8 la[ la la la]
lab4 lab8 s8 lab4( sol8) s8
sol8( do4) do8 do[ do do do]
do4( si do8) do[ fa fa]
mi4( si do8) s8 s4
%--- 19-22
s1*4
%--- 23-29
R1
lab4. lab8 sib4 sib
r4 do( re8) ([ dod re sib])
la4 sib la8 s8 s4
s4 mi'4. dod8[ re sol,]
la4 sib la2
s1
%--- 30-33
sold,2( la)
sold2( la)
lab2( la4 sib) ~
sib4( la8) ([ sol] la2)
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉS
notePartClarinetti = {
 \clef violin
 \key fa \major \time 4/4
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "clarinet"
 \set Staff.instrumentName = \markup \center-column { "Clarinetti " "in B " }
 \set Staff.shortInstrumentName = \markup \center-column { "Clarinetti " "in B " }
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.8
 << \clarinettiA \clarinettiB >>
}

noteMidiClarinetti = { \transpose fa mib \notePartClarinetti }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B05a. DYNAMIQUES PARTITION/MIDI CLARINETTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION

dynPartClarinetti = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicDown

%--- 1-8
s1*8
%--- 9-13
s1
\DYNEXO #'(-3.5 . 1) s1 \mf
s2 \DYNEXO #'(-2.5 . 1.5) s2 \fz
s1 \mf
s1
%--- 14-18
s1
s4. \DYNEXO #'(2.5 . 0) s8 \fz s8 \decr s8 \! s4
\DYNEXO #'(-2.5 . 0) s4. \f \cr s8 \! s4. \decr s8 \!
s2 s8 s4 \cr s8 \!
s4 \decr s8 \! s8 s2
%--- 19-22
s2 s8 s4. \p
s1
s4. \cr s8 \! s4. \decr s8 \!
s1
%--- 23-29
s1
s4. \TSCREXO #'(3 . 0) s8 _\CRESC s2
\DYNEXO #'(-2.5 . 0) s2 \f s4. \cr s8 \!
s8 \decr s8 \! s2.
s8 \DYNEXO #'(1 . 0) s8 \ff s8 \decr s8 \! s2
s1*2
%--- 30-33
\DYNEXO #'(-4.5 . 2.5) s1 \pp
s1*3
}

%%%%%%%%%%%%%%%%%%%% MIDI

dynMidiClarinetti = {
%--- 1-8
s1*8
%--- 9-13
s1
s1 \mf
s2 s4 \f s4 \mf
s1 \mf
s1
%--- 14-18
s1
s2 s4 \f s4 \mf
s4. \f \cr s8 \! \ff s4. \decr s8 \! \mf
s2 s8 s4 \cr s8 \! \f
s4 \decr s8 \! \mf s8 s2
%--- 19-22
s2 s2 \p
s1
s4. \cr s8 \! \mf s4. \decr s8 \! \p
s1
%--- 23-29
s1
s2 s2 \cr
s4 \! \f s4 s2 \cr
s8 \! \ff \decr s8 \! \f s2.
s4 s4. \ff s8 \f s4
s1*2
%--- 30-33
s1*4 \pp
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B06. NOTES BASSON
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%% VOIX 1
fagottiA = \context Staff \relative do' \new Voice { \voiceOne

%--- 1-3
\oneVoice R1*3
%--- 4-7
r2 r8 \voiceOne lab8([ sol lab])
sol4 \oneVoice r4 r2
s2 \voiceOne do2 \oneVoice
R1
%--- 8-11
r2 r8 \voiceOne sib^.([sib^. mib^.])
re4 mib re8 fa,4( sol16[ lab])
sol8 sib4 sib8 sib[ sib sib do]
sib4( la8) \oneVoice r8 \voiceOne solb4( fa8) \oneVoice r8 \voiceOne
%--- 12-15
lab4. lab8 lab[ sol] lab[ sol16 fa]
mib8.([ fa16] re8) \oneVoice r8 r8 \voiceOne lab'([ sol lab])
sol8( sib4) sib8 sib[ sib mib do]
sib4 la8 \oneVoice r8 \voiceOne solb4( fa8) \oneVoice r8 \voiceOne
%--- 16-20
sib4. re8 re[ do re sol]
fa4( mib re8) sib[sib sib]
sib4( do) sib8 \oneVoice r8 r4
R1*2
%--- 21-23
r2 r8 mib4 ^\SOLO mib8(
reb2) ~ reb8 \voiceOne reb([ reb reb])
reb4 \oneVoice r4 r2 \voiceOne
%--- 24-29
reb4. sib8 dob4 sib
\oneVoice r4 \voiceOne mib4 ~ mib8[ fa mib do]
mib4 fa mib8 mib,[ re do]
si4 re'4. re8[ do do]
mib4 fa mib2
\oneVoice R1 \voiceOne
%--- 30-33
dob,2^>( sib)
dob2^>( sib)
mib1 ~
mib8([ lab, sib dob]) sib2 \fermata
\bar "|."
}

%%%%%%%%%%%% VOIX 2
fagottiB = \context Staff \relative do \new Voice { \voiceTwo

%--- 1-3
s1*3
%--- 4-7
s2 s8 sib4_>( sib8)
mib4 s4 s2
s2 solb4_>( fa)
s1
%--- 8-11
s2 s8 sib([solb mib])
fa4 fa sib8 sib,8([dob^> sib])
mib,8 mib'4 mib8 mib[ mib mib mib]
mib4 ~ mib8 s8 mib4_> ~ mib8 s8 
%--- 12-15
re4. re8 mib4( lab,)
sib4. s8 s8 sib4_> sib8
mib4. mib8 mib[ mib mib mib]
mib4 mib8 s8 mib4 ~ mib8 s8 
%--- 16-20
re4. re8 mib[ mib re do]
fa4 fa, sib8 sib'[ solb mib]
fa4 fa, sib8 s8 s4
s1*2
%--- 21-23
s1
s2 s8 sib'([ lab reb,])
solb4 s4 s2
%--- 24-29
solb4. solb8 fa4 fa
s4 sol!( lab8)[ lab lab lab]
sib4 sib, mib8 mib[ re do]
si4 si'4. sol8[ lab la]
sib!4 sib, mib2
s1
%--- 30-33
mib,1
mib1
dob'2( sib4 lab)
mib1 \fermata
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
noteFagotti = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "bassoon"
 \set Staff.instrumentName = "Fagotti "
 \set Staff.shortInstrumentName = "Fagotti "
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.6
 << \fagottiA \fagottiB >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B06a. DYNAMIQUES PARTITION/MIDI BASSON
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION

dynPartFagotti = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicDown

%--- 1-3
s1*3
%--- 4-7
s2 s8 \DYNEXO #'(-2.5 . 1.5) s4. \pp
s1
s2 \DYNEXO #'(-3.5 . 0) s2 \fp
s1
%--- 8-11
s2 \DYNEXO #'(2 . -0.5) s8 \mf s4 \cr s8 \!
s8 \decr s8 \! s2.
\DYNEXO #'(-3.5 . 3) s1 \mf
s2 \DYNEXO #'(-2.5 . 1.5) s2 \fz
%--- 12-15
s1 \mf
s1*2
s4. \DYNEXO #'(2.5 . 0) s8 \fz s8 \decr s8 \! s4
%--- 16-20
\DYNEXO #'(-2.5 . 0) s4. \f \cr s8 \! s4. \decr s8 \!
s2 s8 s4 \cr s8 \!
s4 \decr s8 \! s8 s2
s1*2
%--- 21-23
s2 s8 s4. \p
s1
s1 \p
%--- 24-29
s4. \TSCREXO #'(3 . 0) s8 _\CRESC s2
s4 s4 \f s4. \cr s8 \!
s8 \decr s8 \! s4 s8 s4 \cr s8 \!
s4 \decr s8 s8 \! s2 
s1*2
%--- 30-33
\DYNEXO #'(-4.5 . 1) s1 \pp
s1*3
}

%%%%%%%%%%%%%%%%%%%% MIDI

dynMidiFagotti = {
%--- 1-3
s1*3
%--- 4-7
s1*2 \pp
s2 s4 \mp \decr s4 \! \p
s1
%--- 8-11
s2 s8 s4 \mf \cr s8 \! \f
s4 \decr s8 \! \mf s8 s2
s1 \mf
s2 s4 \f \decr s8 \! \mf s8
%--- 12-15
s1 \mf
s1*2
s2 s4 \f \decr s8 \! \mf s8
%--- 16-20
s4. \f \cr s8 \! \ff s4. \decr s8 \! \mf
s2 s8 s4 \cr s8 \! \f
s4 \decr s8 \! \mf s8 s2
s1*2
%--- 21-23
s2 s8 s4 \p \decr s8 \! \pp
s2 s8 s4. \p
s1 \p
%--- 24-29
s2 s2 \cr
s2 \f s4. \cr s8 \! \ff
s8 \decr s8 \! \f s4  s8 s4\cr s8 \! \ff
s2 \decr s8. s16 \! \f s4 
s1*2
%--- 30-33
s1*4 \pp
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B07. NOTES CORS D'HARMONIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%% VOIX 1
corniA = \context Staff \relative do'' \new Voice { \voiceOne

%--- 1-3
\oneVoice R1*3
%--- 4-7
r2 r8 \voiceOne sol[ sol sol]
sol4 \oneVoice r4 r2
R1*2
%--- 8-14
r2 r8 \voiceOne sol'^.([ sol^. sol^.])
re4 re re8 \oneVoice r8 r4
\voiceOne sol,4 \oneVoice r4 r2
r2 \voiceOne mib'4( re8) \oneVoice r8
\voiceOne fa4 \oneVoice r4 r2
r2 r8 \voiceOne sol,[ sol sol]
sol4 \oneVoice r4 r2
%--- 15-24
r2 \voiceOne mib'4( re8) \oneVoice r8 \voiceOne 
re4. re8 mi[ mi re mi]
re4 re re8 sol[ sol sol]
sol4 re re8 \oneVoice r8 r4
R1*6
%--- 25-33
\voiceOne do2 do8[ re do fa]
mi4 re do8 mi16.[ mi32] mi8[ mi]
mi4 mi4. mi8[ do re]
mi4 re do2
\clef bass do,,4. do8 do4 do
do1
do1
do1 ~
do2 ~ do \fermata

\bar "|."
}

%%%%%%%%%%%% VOIX 2
corniB = \context Staff \relative do' \new Voice { \voiceTwo

%--- 1-3
s1*3
%--- 4-7
s2 s8 sol_.([ sol_. sol_.])
do4 s4 s2
s1*2
%--- 8-14
s2 s8 sol'[ sol sol]
re'4 re sol,8 s8 s4
do,4 s4 s2
s2 la'4_> ~ la8 s8
re4 s4 s2
s2 s8 sol,,_>[ sol sol]
do4 s4 s2
%--- 15-24
s2 la'4 ~ la8 s8
sol4. re'8 mi[ mi re mi]
re4 re sol,8 sol[ sol sol]
re'4 re sol,8 s8 s4
s1*6
%--- 25-33
do,2 do'8[ re do re]
do4 sol mi8 mi16.[ mi32] mi8[ mi]
mi4 mi4. mi'8[ do re]
do4 sol mi2
\clef bass do,,4. do8 do4 do
do1
do1
do'1(
do,2) ~ do
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉS
notePartCorni = {
 \clef violin
 \key do \major \time 4/4
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "french horn"
 \set Staff.instrumentName = \markup \center-column { "Corni " "in Es " }
 \set Staff.shortInstrumentName = \markup \center-column { "Corni " "in ES " }
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.6
 << \corniA \corniB >>
}

noteMidiCorni = { \transpose do mib \notePartCorni }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B07a. DYNAMIQUES PARTITION/MIDI CORS D'HARMONIE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION

dynPartCorni = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicDown

%--- 1-3
s1*3
%--- 4-7
s2 s8 \DYNEXO #'(-2.5 . 3.5) s4. \pp
s1*3
%--- 8-14
s2 \DYNEXO #'(2 . -0.5) s8 \mf s4 \cr s8 \!
s8 \decr s8 \! s2.
\DYNEXO #'(-3.5 . 3) s1 \mf
s2 \DYNEXO #'(-2.5 . 1.5) s2 \fz
s1 \mf
s1*2
%--- 15-24
s4. \DYNEXO #'(2.5 . 0) s8 \fz s8 \decr s8 \! s4
\DYNEXO #'(-2.5 . 0) s4. \f \cr s8 \! s4. \decr s8 \!
s2 s8 s4 \cr s8 \!
s4 \decr s8 \! s8 s2
s1*6
%--- 25-33
\DYNEXO #'(-2.5 . 3) s2 \f s4. \cr s8 \!
s8 \decr s8 \! s4 s8 s4 \cr s8 \!
s4 \decr s8 s8 \! s2 
s1
\DYNEXO #'(-3 . 2) s1 \p
\DYNEXO #'(-4.5 . 0) s1 \pp
s1*3
}

%%%%%%%%%%%%%%%%%%%% MIDI

dynMidiCorni = {
%--- 1-3
s1*3
%--- 4-7
s2 s8 s4. \pp
s1*3
%--- 8-14
s2 s8 s4 \mf \cr s8 \! \f
s4 \decr s8 \! \mf s8 s2
s1 \mf
s2 s4 \f \decr s8 \! \mf s8
s1 \mf
s1*2
%--- 15-24
s2 s4 \f \decr s8 \! \mf s8
s4. \f \cr s8 \! \ff s4. \decr s8 \! \mf
s2 s8 s4 \cr s8 \! \f
s4 \decr s8 \! \mf s8 s2
s1*6
%--- 25-33
s2 \f s4. \cr s8 \! \ff
s8 \decr s8 \! \f s4  s8 s4\cr s8 \! \ff
s2 \decr s8. s16 \! \f s4 
s1
s1 \p
s1 \pp
s1*3
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B08. NOTES TROMPETTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%% VOIX 1
clariniA = \context Staff \relative do'' \new Voice { \voiceOne

%--- 1-15
\oneVoice R1*15
%--- 16-18
\voiceOne sol4. sol8 sol[ sol sol sol]
sol4 \oneVoice r4 \voiceOne sol8[ sol16. sol32] sol8[ sol]
sol4 \oneVoice r4 r2
%--- 19-25
R1*7
%--- 26-33
r2 r8 \voiceOne mi16.[ mi32] mi8[ mi]
mi4 mi4. mi8[ do] \oneVoice r8
sol'4 sol mi8[ do16. do32] do8[ do]
do4 \oneVoice r4 r2 \voiceOne 
do2 ~ do8 \oneVoice r8 r4 \voiceOne 
do2 ~ do8 \oneVoice r8 r4
R1
\voiceOne do2 ~ do \fermata

\bar "|."
}

%%%%%%%%%%%% VOIX 2
clariniB = \context Staff \relative do' \new Voice { \voiceTwo

%--- 1-15
s1*15
%--- 16-18
sol4. sol'8 sol[ sol sol sol]
sol4 s4 sol8[ sol16. sol32] sol8[ sol]
sol4 s4 s2
%--- 19-25
s1*7
%--- 26-33
s2 s8 mi16.[ mi32] mi8[ mi]
mi4 mi4. mi8[ do] s8
sol4 sol do8[ do16. do32] do8[ do]
do4 s4 s2 
do2 ~ do8 s8 s4 
do2 ~ do8 s8 s4
s1
do2 ~ do
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartClarini = {
 \clef violin
 \key do \major \time 4/4
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "trumpet"
 \set Staff.instrumentName = \markup \center-column { "Clarini " "in Es " }
 \set Staff.shortInstrumentName = \markup \center-column { "Clarini " "in ES " }
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.6
 << \clariniA \clariniB >>
}

noteMidiClarini = { \transpose do mib \notePartClarini }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B08a. DYNAMIQUES PARTITION/MIDI TROMPETTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION

dynPartClarini = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicDown

%--- 1-15
s1*15
%--- 16-18
\DYNEXO #'(-2.5 . 1.5) \PINEXO #'(0 . 1.5) s4. \f \cr s8 \! s4. \decr s8 \!
s2 s8 s4 \cr s8 \!
s1
%--- 19-25
s1*7
%--- 26-33
s2 s8 s4 \cr s8 \!
s4 \decr s8 s8 \! s2 
s2 \DYNEXO #'(-2.5 . 3.5) s2 \p
s1
\DYNEXO #'(-4.5 . 2.5) s1 \pp
s1*3
}

%%%%%%%%%%%%%%%%%%%% MIDI

dynMidiClarini = {
%--- 1-15
s1*15
%--- 16-18
s4. \f \cr s8 \! \ff s4. \decr s8 \! \f
s2 s8 s4 \cr s8 \! \ff
s1
%--- 19-25
s1*7
%--- 26-33
s2 s8 s4 \f \cr s8 \! \ff
s2 \decr s8. s16 \! \f s4 
s2 s2 \p
s1
s1 \pp
s1*3
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B09. NOTES TIMBALES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tympani = \relative do { 

%--- 1-15
R1*15
%--- 16-18
\repeat tremolo 8 sib32 sib8 r8 r8 sib[ sib sib]
sib r8 r4 sib8[ sib16. sib32] sib8[ sib]
sib8 r8 r4 r2
%--- 19-27
R1*9
%--- 28-33
sib8 r8 sib r8 mib mib16.[ mib32 mib8 mib]
mib4 r4 r2
\repeat tremolo 32 mib64 mib8 r8 r4
\repeat tremolo 32 mib64 mib8 r8 r4
R1
\repeat tremolo 64 mib64 \fermata
\bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartTympani = {
 \clef bass
 \key sib \major \time 4/4
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "timpani"
 \set Staff.instrumentName = \markup \center-column { "Tympani " "in Es u B " }
 \set Staff.shortInstrumentName = \markup \center-column { "Tympani " "in Es u B " }
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \tympani
}

noteMidiTympani = { \unfoldRepeats { \transpose sib mib \notePartTympani } }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B09a. DYNAMIQUES PARTITION/MIDI TIMBALES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION

dynPartTympani = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicDown

%--- 1-15
s1*15
%--- 16-18
\DYNEXO #'(-2.5 . 0) s1 \f
s1*2
%--- 19-27
s1*9
%--- 28-33
s2 s8 \DYNEXO #'(-1.5 . 0) s4. \p
s1
\DYNEXO #'(-4.5 . 1) s1 \pp
s1*3
}

%%%%%%%%%%%%%%%%%%%% MIDI

dynMidiTympani = {
%--- 1-15
s1*15
%--- 16-18
s1 \f
s1*2
%--- 19-27
s1*9
%--- 28-33
s2 s8 s4. \p
s1
s1 \p
s1*3
s8... \ppppp  mib64
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B10. NOTES TROMBONES ALTO ET TENOR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%% VOIX 1
tromboniATA = \context Staff \relative do'' \new Voice { \voiceOne

%--- 1-3
\oneVoice R1
r2 \voiceOne solb4^. ( solb^.
fa4^.) \oneVoice r4 r2
%--- 4-9
r2 r8 \voiceOne fa ([ sol lab])
sol4 \oneVoice r4 r2
r2 \voiceOne solb4( fa)
\oneVoice r4 \voiceOne fa mib8[ mib fa sol]
fa4 fa fa8 sib,([ mib solb])
sib,4 do sib8 \oneVoice r8 r4
%--- 10-15
\voiceOne sol'4. sol8^.( sol^.[ sol^. sol^. sol^.])
solb4 ~ solb8 \oneVoice r8 \voiceOne do,4 ~ do8 \oneVoice r8 \voiceOne
fa4. fa8 ~ fa[ mib] do4
mib8 sib4 \oneVoice r8 r8 \voiceOne fa'([ sol lab])
sol4. sol8 sol[ sol sol sol]
solb4 solb8 \oneVoice r8 \voiceOne do,4 ~ do8 \oneVoice r8 \voiceOne
%--- 16-22
fa4. re8 re[ do re sol]
fa4 la sib8 sib,[ mib solb]
fa4 fa fa8 fa4( fa8)
solb4 \oneVoice r4 r2
R1*3
%--- 23-29
\voiceOne R1
R1 \oneVoice
r4 \voiceOne sib4 do8[si do lab]
sol4 lab sol8 \oneVoice r8 r4
r4 \voiceOne sol4. si8[ do fa,]
sol4 lab sol \oneVoice r4
R1 
%--- 30-33
\voiceOne la,2^>( sib4) \oneVoice r4
\voiceOne la2^>( sib8) \oneVoice r8 r4
\voiceOne dob2( reb4 dob) ~
dob4 sib8[ lab] sib2

\bar "|."
}

%%%%%%%%%%%% VOIX 2
tromboniATB = \context Staff \relative do' \new Voice { \voiceTwo

%--- 1-3
s1
s2 do4_> do
dob4 s4 s2
%--- 4-9
s2 s8 re_> [ mib re]
mib4 s4 s2
s2 sib4_>( la)
s4 sib4 sib8[ sib sib sib]
sib4 mib re8 sib[ sib sib]
re4 fa, fa8 s8 s4
%--- 10-15
sib4. sib8 sib[ sib sib sib]
sib4( la8) s8 sib4_>( la8) s8
lab4. lab8 ~ lab[ sol] lab[ sol16 fa]
mib8.[ fa16] re8 s8 s8 re'_>[ mib re]
mib4. sib8 sib[ sib mib do]
sib4 la8 s8 sib4( la8) s8
%--- 16-22
sib4. re8 re[ do re sol]
fa4. mib8 re sib[ sib mib]
re4 do sib8 re4 re8
reb4 s4 s2
s1*3
%--- 23-29
reb4. reb8 reb4 reb
reb4. sib8 dob4 sib
s4 mib4 mib8[ fa mib do]
mib4 fa mib8 s8 s4
s4 re4. re8[ do do]
mib4 fa mib s4
s1
%--- 30-33
fad,2( sol4) s4
fad2( sol8) s8 s4
solb2( sol4 lab) ~
lab4( sol8[ fa]) sol2 \fermata
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
noteTromboniAT = {
 \clef alto
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "trombone"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.8
 << \tromboniATA \tromboniATB >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B10a. DYNAMIQUES PARTITION/MIDI TROMBONES ALTO ET TENOR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION

dynPartTromboniAT = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicDown

%--- 1-3
s1
s2 \DYNEXO #'(-2.5 . 2) s2 \pp
s1
%--- 4-9
s1*2
s2 \DYNEXO #'(-3.5 . 2) s2 \fp
s2 s4. \cr s8 \!
s4 \decr s8 \! s8 \DYNEXO #'(2 . 0) s8 \mf s4 \cr s8 \!
s8 \decr s8 \! s2.
%--- 10-15
\DYNEXO #'(-3.5 . 0) s1 \mf
s2 \DYNEXO #'(-2.5 . 1.5) s2 \fz
s1 \mf
s1*2
s4. \DYNEXO #'(2.5 . 0) s8 \fz s8 \decr s8 \! s4
%--- 16-22
\DYNEXO #'(-2.5 . 0) s4. \f \cr s8 \! s4. \decr s8 \!
s2 s8 s4 \cr s8 \!
s4 \decr s8 \! s8 s8 s4. \p
s1 \pp
s1*3
%--- 23-29
s1 \p
s4. \TSCREXO #'(-3 . 0) s8 _\CRESC s2
s4 s4 \f s4. \cr s8 \!
s8 \decr s8 \! s2.
s8 \DYNEXO #'(1 . 0) s8 \ff s8 \decr s8 \! s2
s1*2
%--- 30-33
\DYNEXO #'(-4.5 . 2) s1 \pp
s1*3
}


%%%%%%%%%%%%%%%%%%%% MIDI

dynMidiTromboniAT = {
%--- 1-3
s1
s2 s2 \pp
s1
%--- 4-9
s1*2
s2 s4 \mp s4 \pp
s2 s4. \cr s8 \! \mp
s2 \decr s8 \! \pp s4 \mf \cr s8 \! \f
s4 \decr s8 \! \mf s8 s2
%--- 10-15
s1 \mf
s2 s4 \ff s4 \mf
s1 \mf
s1*2
s2 s4 \f \decr s8 \! \p s8
%--- 16-22
s4. \f \cr s8 \! \ff s4. \decr s8 \! \f
s2 s8 s4 \cr s8 \! \ff
s4 \decr s8 \!\f s8 s8 s4. \p
s1 \pp
s1*3
%--- 23-29
s1 \p
s2 s2 \cr
s4 s4 \! \f s2 \cr
s8 \! \ff \decr s8 \! \f s2.
s4 s4. \ff s8 \f s4
s1*2
%--- 30-33
s1*4 \pp
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B11. NOTES TROMBONE BASSE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboniB = \relative do { 

%--- 1-3
R1
r2 mib4^. ( mib^.
re4^.) r4 r2
%--- 4-9
r2 r8 sib4_.( sib8_.)
mib4 r4 r2
r2 mib4^. ( mib^. )
r4 re mib8[ mib re do]
fa4 fa, sib8 sib'[ solb mib]
fa4 fa, sib8 r8 r4
%--- 10-15
mib4. mib8^.( mib^.[ mib^. mib^. mib^.])
mib4 ~ mib8 r8 mib4_> ~ mib8 r8
re4. re8 mib4 lab,
sib4. r8 r8 sib4 sib8
mib4. mib8 mib[ mib mib mib]
mib4 mib8 r8 mib4 ~ mib8 r8
%--- 16-22
re4. re8 mib[ mib re do]
fa4 fa sib,8 sib'[ solb mib]
fa4 fa, sib8 r8 r4
R1*4
%--- 23-29
R1
solb'4. solb8 fa4 fa
r4 sol!4 lab8[ lab lab lab]
sib4 sib, mib8 mib[ re do]
si4 si'4. sol8[ lab! la]
sib!4 sib, mib r4
mib4. mib8 mib4 mib 
%--- 30-33
dob2^>( sib4) r4
dob2^>( sib8) r8 r4
dob2( sib4 lab) ~
lab4( sib8[ dob]) sib2 _\fermata

\bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
noteTromboniB = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "trombone"
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #0.8
 \tromboniB
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B11a. DYNAMIQUES PARTITION/MIDI TROMBONE BASSE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION

dynPartTromboniB = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicDown

%--- 1-3
s1
s2 \DYNEXO #'(-2.5 . 0) s2 \pp
s1
%--- 4-9
s1*2
s2 \DYNEXO #'(-3.5 . 0) s2 \fp
s2 s4. \cr s8 \!
s4 \decr s8 \! s8 \DYNEXO #'(2 . 0) s8 \mf s4 \cr s8 \!
s8 \decr s8 \! s2.
%--- 10-15
\DYNEXO #'(-3.5 . 0) s1 \mf
s2 \DYNEXO #'(-2.5 . 0) s2 \fz
s1 \mf
s1*2
s4. \DYNEXO #'(2.5 . 0) s8 \fz s8 \decr s8 \! s4
%--- 16-22
\DYNEXO #'(-2.5 . 0) s4. \f \cr s8 \! s4. \decr s8 \!
s2 s8 s4 \cr s8 \!
s4 \decr s8 \! s8 s2
s1*4
%--- 23-29
s1
s4. \p \TSCREXO #'(-3 . 0) s8 _\CRESC s2
s4 s4 \f s4. \cr s8 \!
s8 \decr s8 \! s2.
s8 \DYNEXO #'(1 . 0) s8 \ff s8 \decr s8 \! s2
s1
s1 \p
%--- 30-33
\DYNEXO #'(-4.5 . 0) s1 \pp
s1*3
}


%%%%%%%%%%%%%%%%%%%% MIDI

dynMidiTromboniB = {
%--- 1-3
s1
s2 s2 \pp
s1
%--- 4-9
s1*2
s2 s4 \mp s4 \pp
s2 s4. \cr s8 \! \mp
s2 \decr s8 \! \pp s4 \mf \cr s8 \! \f
s4 \decr s8 \! \mf s8 s2
%--- 10-15
s1 \mf
s2 s4 \ff s4 \mf
s1 \mf
s1*2
s2 s4 \f \decr s8 \! \p s8
%--- 16-22
s4. \f \cr s8 \! \ff s4. \decr s8 \! \f
s2 s8 s4 \cr s8 \! \ff
s4 \decr s8 \!\f s8 s2
s1*4
%--- 23-29
s1
s2 \p s2 \cr
s4 s4 \! \f s2 \cr
s8 \! \ff \decr s8 \! \f s2.
s4 s4. \ff s8 \f s4
s1
s1 \p
%--- 30-33
s1*4 \pp
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B12. NOTES SOPRANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative do'' {

%--- 1-4
sib4. ^\SOLI sib8 sib sib sib do
sib4 la r2
lab!4. lab8 lab([ sol] sib16[ lab]) sol[ fa]
mib8. fa16 re4 r2
%--- 5-9
sib'4. sib8 sib sib mib do
sib4 la r2
re2 ~re8 do re mib
re4. do8 sib4 r4
R1
%--- 10-13
sib4. ^\TUTTI sib8 sib sib sib sol
do4 do r2
dob4. dob8 sib4( do8) sib16[ lab]
sol8. lab16 fa4 r2
%--- 14-18
sib4. sib8 sib sib sib do
do4 do r2
fa4. fa8 \tieDashed sol8 ~ sol \tieSolid \slurDashed fa( mib) \slurSolid
re4. do8 sib4 r4
R1
%--- 19-22
sib4. ^\SOLI sib8 reb4 dob
sib4. reb8 sib4 lab
solb2 ~ solb8 mib' reb dob
sib4( reb16) [ dob] sib[ dob] sib4 r4
%--- 23-26
sib4. ^\TUTTI sib8 reb4 dob
sib4. sib8 mib4 re!
mib2 ~ mib8 re do fa
mib4 ~mib16[ re] do[ re] mib4 r4
%--- 27-29
r4 sol4. fa8 mib do
sib4( mib16) [ re] do[ re] mib4 r4
R1
%--- 30-33
mib,4.^> mib8 mib4 mib
mib4.^>  mib8 mib4 mib
mib4.    mib8 mib4. re8
mib4.    mib8 mib2 \fermata

\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
noteSoprano = {
 \clef soprano
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "choir aahs"
 \set Staff.instrumentName = "Soprano "
 \set Staff.shortInstrumentName = "Soprano "
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \soprano
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B12a. DYNAMIQUES PARTITION/MIDI CHOEUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%% PARTITION

dynPartCoro = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicUp
 
%--- 1-4
s1*4 \pp
%--- 5-9
s1*2
s2 s4. \cr s8 \!
s4 \decr s8 \! s8 s2
s1 
%--- 10-13
\DYNEXO #'(-4 . 0) s1*4 \mf
%--- 14-18
s1*2
\DYNEXO #'(-3 . 0) s4. \f \cr s8 \! s4. \decr s8 \! 
s1*2
%--- 19-22
s1*2 \p
s2 \cr s8 \! s4 \decr s8 \!
s1
%--- 23-26
s1 \p
s4. \TSCREXO #'(-3 . 0) s8 ^\CRESC s2
\DYNEXO #'(-2.5 . 0) s2 \f s4. \cr s8 \! 
s2 \decr s4 \! s4
%--- 27-29
s8 \DYNEXO #'(1 . 0) s8 \ff s2.
s1*2
%--- 30-33
\DYNEXO #'(-5 . -2) s1*4 \pp
}

%%%%%%%%%% MIDI

dynMidiCoro = {
 
%--- 1-4
s1*4 \pp
%--- 5-9
s1*2
s2 s4. \cr s8 \! \mf
s4 \decr s4 \! \pp s2
s1 
%--- 10-13
s1*4 \mf
%--- 14-18
s1*2
s4. \f \cr s8 \! \fff s4. \decr s8 \! \ff
s1*2
%--- 19-22
s1*2 \p
s2 \cr s8 \! \f s4 \decr s8 \! \p
s1
%--- 23-26
s1 \p
s2 s2 \cr
s2 \! \f s4. \cr s8 \! \ff
s2 \decr s4 \! \f s4
%--- 27-29
s4 s4 \ff s2
s1*2
%--- 30-33
s1 \pp
s1*3
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B13. NOTES ALTO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative do'' {

%--- 1-4
sol4. sol8 sol sol sol sol
solb4 solb r2
fa4. fa8 fa([ mib do]) do
sib8. sib16 sib4 r2
%--- 5-9
sol'4. sol8 sol sol sol sol
solb4 solb r2
fa4. sib8 \tieDashed sib8 ~ sib sib ~ sib  \tieSolid
sib4 la sib r4
R1
%--- 10-13
sol4. sol8 sol sol sol sol
solb4 solb r2
fa4. fa8 fa[ mib do] do
mib8. sib16 sib4 r2
%--- 14-18
sol'4. sol8 sol sol sol sol
solb4 solb r2
fa4. sib8 \tieDashed sib8 ~ sib sib ~ sib \tieSolid
sib4 la sib r4
R1
%--- 19-22
solb4. solb8 fa4   fa
solb4. solb8 solb4 fa
r8 mib( fab4) ( mib8) solb sol lab
solb4( fa16) [ lab] solb[ fa] solb4 r4
%--- 23-26
solb4. solb8 fa4  fa
solb4. solb8 lab4 lab
r4 sib( do8) si do lab
sol4 lab sol r4
%--- 27-29
r4 sol4. si8 do fa,
sol4 lab sol r4
R1
%--- 30-33
la,4.^> la8 sib4 sib
la4.^>  la8 sib4 sib
dob4. dob8 reb4 dob
dob4( sib8) lab sib2 \fermata

\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
noteAlto = {
 \clef alto
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "choir aahs"
 \set Staff.instrumentName = "Alto "
 \set Staff.shortInstrumentName = "Alto "
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \alto
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B14. NOTES TÉNOR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenore = \relative do' {

%--- 1-4
sib4. sib8 sib sib sib sol
do4 do r2
dob4. dob8 sib4( do8) sib16[ lab]
sol8. lab16 fa4 r2
%--- 5-9
sib4. sib8 sib sib sib do
do4 do r2 \tieDashed
sib4 _\markup { \hspace #-1.5 No }
 \TSCRPAD #2 fa' _\markup { \hspace #-1 "vo," }
 \TSCRPAD #2 sol8 _\markup { no } ~ 
 \TSCRPAD #2 sol _\markup { vo }  \tieSolid \slurDashed 
 \TSCRPAD #2 fa _\markup { ce }(
 \TSCRPAD #1.5 mib _\markup { dat }) \slurSolid  
fa4 mib re r4
R1
%--- 10-13
sib4. sib8 sib sib sib do
sib4 la r2
lab4. lab8 lab[sol lab] sol16[ fa]
mib8. fa16 re4 r2
%--- 14-18
sib'4. sib8 sib sib mib do
sib4 la r2
sib4. re8 \slurDashed re8( do) re( sol) \slurSolid
fa4 mib re r4
R1
%--- 19-22
reb4. reb8 reb4 reb
reb4. sib8 reb4 dob
r8 sib ~sib4( dob8) mib mib mib
reb4. reb8 reb4 r4
%--- 23-26
reb4. reb8 reb4 reb
reb4. sib8 dob4 sib
r4 mib ~ mib8 fa mib do
mib4 fa mib r4
%--- 27-29
r4 re4. re8 do do
mib4 fa mib r4
R1
%--- 30-33
fad,4.^> fad8 sol4 sol
fad4.^>  fad8 sol4 sol
solb4. solb8 sol4 lab
lab4( sol8) fa sol2 \fermata

\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
noteTenore = {
 \clef tenor
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "choir aahs"
 \set Staff.instrumentName = "Tenore "
 \set Staff.shortInstrumentName = "Tenore "
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \tenore
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B15. NOTES BASSE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basso = \relative do {

%--- 1-4
mib4. mib8 mib mib mib mib
mib4 mib r2
re4. re8 mib4 lab,
sib8. sib16 sib4 r2
%--- 5-9
mib4. mib8 mib mib mib mib
mib4 mib r2
re4. re8 \tieDashed mib8 ~ mib \tieSolid \slurDashed re( do) \slurSolid
fa4 fa sib, r4
R1
%--- 10-13
mib4. mib8 mib mib mib mib
mib4 mib r2
re4. re8 mib4 lab,
sib8. sib16 sib4 r2
%--- 14-18
mib4. mib8 mib mib mib mib
mib4 mib r2
re4. re8 \tieDashed mib8 ~ mib \tieSolid \slurDashed re( do) \slurSolid
fa4 fa sib, r4
R1
%--- 19-22
solb'4. solb8 lab4 lab
solb4.  solb8 reb4 re
r8 mib( reb4) ( dob8) dob sib lab
reb4. reb8 solb4 r4
%--- 23-26
solb4. solb8 lab4 lab
solb4. solb8 fa4 fa
r4 sol!( lab8) lab lab lab
sib4 sib, mib r4
%--- 27-29
r4 si'4. sol8 lab! la
sib!4 sib, mib r4
mib4. ^\p _\markup { \column { "Tan    -" "Ge      -" } }
 mib8 _\markup { \column { "tum" "ni -" } }
 \TSCRPAD #2 mib4 _\markup { \column { "er   -" "to   -" } }
 \TSCRPAD #2 mib _\markup { \column { "go" "ri" } }
%--- 30-33
\DYNEXO #'(-5 . 0) mib4.^> ^\pp _\markup { \column { "Tan   -" "Ge     -" } }
 mib8 _\markup { \column { "tum" "ni  -" } }
 \TSCRPAD #2 mib4 _\markup { \column { "er     -" "to     -" } }
 \TSCRPAD #2 mib _\markup { \column { "go" "ri" } }
mib4.^> mib8 mib4 mib
dob4.   dob8 sib4 lab
mib'4.  mib8 mib2 \fermata

\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
noteBasso = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "choir aahs"
 \set Staff.instrumentName = "Basso "
 \set Staff.shortInstrumentName = "Basso "
 \set Staff.midiMinimumVolume = #0.2
 \set Staff.midiMaximumVolume = #1
 \basso
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B16. NOTES VIOLONCELLE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cello = \relative do {

%1-4
mib8 r mib r mib r mib  r 
mib8 r mib r mib r mib  r 
re8  r re  r mib r lab, r 
sib8 r sib r r   lab'_>([ sol fa]) 
%--- 5-9
mib8 r mib r mib r mib  r 
mib8 r mib r mib r mib  r 
re8  r re  r mib r re_.[ do_.]
fa8  r fa, r sib[ sib' solb mib]
fa8  r fa, r sib sib([ \SLURINSIDE dob_> sib]) 
%--- 10-13
mib8 r mib r mib r mib  r 
mib8 r mib r mib_> r mib  r 
re8  r re  r mib r lab, r 
sib8 r sib r r   lab'^>([ sol fa]) 
%--- 14-18
mib8 r mib r mib   r mib  r 
mib8 r mib r mib_> r mib  r 
re8  r re  r mib   r re_.[ do_.] 
fa8  r fa, r sib   sib'[ solb mib] 
fa8  r fa, r sib   r sib([ lab!] 
%--- 19-22
solb8) r solb r lab  r lab r 
solb8  r solb r reb' r re  r 
mib8   r reb  r dob  r sib_.[ lab_.] 
reb8   r reb  r solb,_. sib([ lab reb])
%--- 23-26
solb,8 r solb r lab  r lab r 
solb8 r solb r fa   r fa' r 
sol!8 r sol  r lab  r lab8[ lab] 
sib4 sib, mib8 mib[ re do]
%--- 27-29
si4 si'4. sol8[ lab! la]
sib!4 sib, mib r
R1
%--- 30-33
dob2_>( sib8)  \PIZZICATO r mib, ^\PIZZ \CELLO r 
dob'2_> ^\ARCO ( sib8) \PIZZICATO r mib, ^\PIZZ \CELLO r 
dob'2 ^\ARCO ( sib4 lab ~)
lab4( sib8[ dob]) sib2 \fermata 

\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
noteCello = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "cello"
 \set Staff.instrumentName = "Violoncello "
 \set Staff.shortInstrumentName = "Violoncello "
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
 \cello
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B16a. DYNAMIQUES PARTITION/MIDI VIOLONCELLE ET CONTREBASSE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%% PARTITION

dynPartCello = {
\override DynamicTextSpanner #'dash-period = #-1
\dynamicDown
 
%--- 1-4
s1*4 \pp 
%--- 5-9
s1*2
s4. \cr s8 \! s4. \decr s8 \!
s2 s8 s4\cr s8 \!
s8 \decr s8 \! s2.
%--- 10-13
\DYNEXO #'(-3.5 . 0) s1 \mf
s1*3
%--- 14-18
s1*2
\DYNEXO #'(-2.5 . 0) s4. \f \cr s8 \! s4. \decr s8 \!
s2 s8 s4 \cr s8 \!
s4 \decr s8 \! s8   s4 \p s4 -\DECRESC
%--- 19-22
s1 \pp 
s1
s4. \cr s8 \! s4. \decr s8 \!
s1
%--- 23-26
s1 
s4 s4 -\CRESC s2 
\DYNEXO #'(-2.5 . 0) s2 \f s4.. \cr s16 \! 
s4 \decr s4 \!   s8 s4. \cr
%--- 27-29
s4 s4 \! \ff \decr  s4. s8 \! 
s1*2
%--- 30-33
\DYNEXO #'(-4.5 . 1) s1*4 \pp
}

%%%%%%%%%% MIDI
dynMidiCello = {
 
%--- 1-4
s1*4 \pp 
%--- 5-9
s1*2
s4. \cr s8 \! \mp s4. \decr s8 \! \p
s4.. \decr s16 \! \pp  s8 s4\cr s16 s16 \! \mf
s8 \decr s8 \! \pp s2.
%--- 10-13
s1 \mf
s1*3
%--- 14-18
s1*2
s4. \cr s8 \! \f s4. \decr s8 \! \mf
s2 s4.. \cr s16 \! \f 
s4 \decr s8 \! \mf s8   s4 \p s4 \decr
%--- 19-22
s1 \! \pp 
s1
s4. \cr s8 \! \mp s4. \decr s8 \! \pp
s1
%--- 23-26
s1
s4 s2. \cr
s2 \! \f s2 \cr
s4 \! \ff \decr s4 \! \f   s8 s4. \cr
%--- 27-29
s4 s4 \! \ff \decr  s2
s1 \! \f
s1
%--- 30-33
s2. \pp s8 \f s8 \pp
s2. s8 \f s8 \pp
s1*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B17. NOTES CONTREBASSE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

contra = \relative do {

%1-4
mib8 r mib r mib r mib  r 
mib8 r mib r mib r mib  r 
re8  r re  r mib r lab, r 
sib8 r sib r sib r sib  r 
%--- 5-9
mib8 r mib r mib r mib  r 
mib8 r mib r mib r mib  r 
re8  r re  r mib r re_.[ do_.] 
fa8  r fa, r sib[ sib' solb mib]
fa8  r fa, r sib sib([ \SLURINSIDE dob_> sib]) 
%--- 10-13
mib8 r mib r mib r mib  r 
mib8 r mib r mib_> r mib  r 
re8  r re  r mib r lab, r 
sib8 r sib r sib r sib  r 
%--- 14-18
mib8 r mib r mib   r mib  r 
mib8 r mib r mib_> r mib  r 
re8  r re  r mib   r re_.[ do_.] 
fa8  r fa, r sib   sib'[ solb mib] 
fa8  r fa, r sib   r sib([ lab!] 
%--- 19-22
solb8) r solb r lab  r lab r 
solb8  r solb r reb' r re  r 
mib8   r reb  r dob  r sib_.[ lab_.] 
reb8   r reb  r solb,_. sib([ lab reb])
%--- 23-26
solb,8 r solb r lab  r lab r 
solb8  r solb r fa   r fa' r 
sol!8  r sol r lab  r lab8[ lab] 
sib4 sib, mib8 mib[ re do]
%--- 27-29
si4 si'4. sol8[ lab! la]
sib!4 sib, mib r
R1
%--- 30-33
mib,2_> ~ mib8 \PIZZICATO r mib ^\PIZZ \BASSO r 
mib2_> ^\ARCO ~ mib8  \PIZZICATO r mib ^\PIZZ \BASSO r 
dob'2 ^\ARCO ( sib4 lab)
mib1 \fermata 

\bar "|."
}


%%%%%%%%%%%%%%%%%%%% RÉSUMÉ
noteContra = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 \set Staff.midiInstrument = "contrabass"
 \set Staff.instrumentName = "Contrabasso "
 \set Staff.shortInstrumentName = "Contrabasso "
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
 \contra
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<

  \new Staff << \noteViolinoA \dynPartViolino >>
  \new Staff << \noteViolinoB >>
  \new Staff << \noteViola >>
  \new Staff << \noteOboe \dynPartOboe >>
  \new Staff << \notePartClarinetti \dynPartClarinetti >>
  \new Staff << \noteFagotti \dynPartFagotti >>
  \new Staff << \notePartCorni \dynPartCorni >>
  \new Staff << \notePartClarini \dynPartClarini >>
  \new Staff << \notePartTympani \dynPartTympani >>
  \new PianoStaff
  <<
   \set PianoStaff.instrumentName = \markup \center-column { "3 " " " "Tromboni " }
   \set PianoStaff.shortInstrumentName = \markup \center-column { "3 " " " "Tromboni " }
   \new Staff << \noteTromboniAT \dynPartTromboniAT >>
   \new Staff << \noteTromboniB \dynPartTromboniB >>
  >>
  \new ChoirStaff
  \relative <<
   \new Voice = "soprano" << \noteSoprano \dynPartCoro >>
   \new Lyrics \lyricsto "soprano" \poemeA
   
   \new Voice = "alto" << \noteAlto >>
   
   \new Voice = "tenor" << \noteTenore >>
   \new Lyrics \lyricsto "tenor" \poemeB
   
   \new Voice = "basse" << \noteBasso >>
  >>

  \new Staff << \noteCello \dynPartCello >>
  \new Staff << \noteContra >>

 >>
 \layout { }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           F. SORTIE MIDI SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% REMARQUE: Faute de pistes Midi (il en manque 3) , 2 regroupements sur une même piste ont été faits:
% - les 2 violons et l'alto sur la piste du violon 1
% - le violoncelle et la contrebasse sur la piste du violoncelle

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \time 2/4 s2 }

\score {
 <<
  \new Staff { \SILENCE << \noteViolinoA \noteViolinoB \noteViola \dynMidiViolino >> }
  \new Staff { \SILENCE << \noteOboe \dynMidiOboe >> }
  \new Staff { \SILENCE << \noteMidiClarinetti \dynMidiClarinetti >> }
  \new Staff { \SILENCE << \noteFagotti \dynMidiFagotti >> }
  \new Staff { \SILENCE << \noteMidiCorni \dynMidiCorni >> }
  \new Staff { \SILENCE << \noteMidiClarini \dynMidiClarini >> }
  \new Staff { \SILENCE << \noteMidiTympani \dynMidiTympani >> }

  \new Staff { \SILENCE << \noteTromboniAT \dynMidiTromboniAT >> }
  \new Staff { \SILENCE << \noteTromboniB \dynMidiTromboniB >> }

  \new Staff { \SILENCE << \noteSoprano \dynMidiCoro >> }
  \new Staff { \SILENCE << \noteAlto \dynMidiCoro >> }
  \new Staff { \SILENCE << \noteTenore \dynMidiCoro >> }
  \new Staff { \SILENCE << \noteBasso \dynMidiCoro >> }
  
  \new Staff { \SILENCE << \noteCello \noteContra \dynMidiCello >> }
 >>
 \midi {
 \context {
   \Score
   tempoWholesPerMinute = #(ly:make-moment 50 4)
  }
 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D962-TantumErgo.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
