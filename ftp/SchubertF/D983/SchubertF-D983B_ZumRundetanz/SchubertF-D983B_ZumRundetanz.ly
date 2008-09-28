%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                        FICHIER SchubertF-D983A-ZumRundetanz.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%             FRANZ SCHUBERT: Gesang "Zum Rundetanz", für eine Singstimme mit Klavierbegleitung
%                                       AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.11.57"
\include "italiano.ly"
#(set-global-staff-size 17)

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")

line-width = 186\mm
#(define left-margin (/ (- paper-width  (* 186 mm)) 2))
 indent = 22\mm
 oddHeaderMarkup  = \markup \fontsize #2 \fill-line {
  " " { \italic "♫  Franz Schubert: Zum Rundetanz (D.983A)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup =  \markup \fontsize #2 \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Zum Rundetanz (D.983A)  ♫" } " " }
#(ly:set-option 'point-and-click #f)
}

\header {
 title = \markup { \center-column { \fontsize #1.5 "Vier Gesänge" \fontsize #-1.5 "für vier Männerstimmen" "Op. 17" " " } }
 subtitle = \markup { \center-column { \fontsize #7 "3. Zum Rundetanz" " " } }
 subsubtitle = \markup { \center-column { \fontsize #3 "(D.983B, Op. 17 No 3)" " " " " " " } }
 poet = \markup { \column {
  \line { \bold \fontsize #2 "Johann Gaudenz Freiherr" }
  \line { \bold \fontsize #2 "von Salis-Seewis" \small "(1762-1834)" } } }
 composer = \markup \center-column { \fontsize #4 \bold "Franz Schubert" \small "(1797-1828)" "(Veröffentlichungsjahr: 1823)" }
% MUTOPIA
 mutopiatitle = "Zum Rundetanz"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann von Salis-Seewis"
 mutopiaopus = "D.983B (Op. 17/3)"
 mutopiainstrument = "Voice"
 date = "1823"
 source = "Breitkopf & Härtel (1884-1897)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2008/09/28-1560"
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
%  B. CHANT: B1 à B4: Notes et dynamiques TENORS I et II, BASSES I et II
%  C. SORTIE PARTITION
%  D. SORTIE MIDI : les "choir aahs", pas satisfaisants, ont été remplacés par un quatuor à vent: hautbois, clarinette,
%                   cor d'harmonie (french horn) et basson.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- TEMPI
TEMPOBASE    = \tempo 8=220
TEMPOFERMATA = \tempo 8=180
TEMPOFIN     = \tempo 8=40
%----- TONALITÉS ET MESURES
KEY   = { \key mi \major }
TIME  = { \time 6/8 }
%----- MOUVEMENTS
MOVEMENT = \markup { \bold \large { \hspace #-5 "Vivace." } }
%----- INSTRUMENTS
ITENOREI = {
 \set Staff.midiInstrument = "oboe"
 \set Staff.midiMinimumVolume = #0   %défaut: 0
 \set Staff.midiMaximumVolume = #0.95   %défaut
}
ITENOREII = {
 \set Staff.midiInstrument = "clarinet"
 \set Staff.midiMinimumVolume = #0   %défaut: 0
 \set Staff.midiMaximumVolume = #1  %défaut: 0.7
}
IBASSOI = {
 \set Staff.midiInstrument = "french horn"
 \set Staff.midiMinimumVolume = #0   %défaut: 0.1
 \set Staff.midiMaximumVolume = #0.9     %défaut: 0.7
}
IBASSOII = {
 \set Staff.midiInstrument = "bassoon"
 \set Staff.midiMinimumVolume = #0   %défaut: 0
 \set Staff.midiMaximumVolume = #0.9     %défaut: 0.6
}
%----- REPOSITIONNEMENT DES DYNAMIQUES
DYNEXO =
 #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override DynamicText #'extra-offset = #$beg-end #})

 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poemeI = \lyricmode {
\set fontSize = #-.5
\set stanza = "1. "

Auf! es dun -- kelt, sil -- bern fun -- kelt
dort der Mond ob Tan -- nen -- höh’n.
Auf! und tanzt in fro -- her Run -- de; 
die -- se Stun -- de däm -- mert un -- be -- wölkt __ und schön,
die -- se Stun -- de __ däm -- mert schön, __
däm -- mert __ un -- be -- wölkt __ und schön,
Auf! es dun -- kelt, auf! es dun -- kelt! 
}

poemeII = \lyricmode {
\set fontSize = #-.5
\set stanza = "2. "

Hüpft ge -- schwin -- de um die Lin -- de,
die uns gel -- be Blü -- then streut.
Lasst uns fro -- he Lie -- der sin -- gen,
Ket -- ten schlin -- gen, wo man traut die Hand sich beut,
wo man traut die __ Hand __ sich beut,
wo man traut die __ Hand __ sich beut.
Hüpft ge -- schwin -- de um die Lin -- de!
}

poemeIII = \lyricmode {
\set fontSize = #-.5
\set stanza = "3. "

Al -- so schwe -- ben wir durch’s Le -- ben
leicht wie Ro -- sen -- blät -- ter hin.
An den Jüng -- ling, dun -- kelt’s bän -- ger,
schliesst sich en -- ger sei -- ne trau -- te Nach -- ba -- rin,
schliesst sich sei -- ne Nach -- ba -- rin,
sei -- ne trau -- te Nach -- ba -- rin.
Al -- so schwe -- ben wir durch’s Le -- ben!
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1.	TENORE I : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenoreI = \relative do'' {
%--- 1
mi4^> si8 dod dod r
dod4^> dod8 red red r
red4 red8 mi4 sold16([ fad])
si,4.( \grace mi16 red8[ dod]) red
mi2.\fermata
mi4^> dod8 mi4^> dod8
%--- 7
mi4^> dod8 mi4^> dod8
dod4 dod8 dod([ red]) red
red4 red8 red([ mi]) dod
fad8.([ sold16]) mi8 red4 r8
mi4 mi8 mi4 red16([ dod])
%--- 12-16
dod8([ si]) la la4( sold8)
mi'8([ sold]) fad16([ mi]) mi4 red16([ dod])
dod8([ si]) red mi4 r8
mi4^> si8 dod dod r
la'4^> red,8 mi mi r8^\fermataMarkup
\bar ":|"
}

tenoreIPart = { \tenoreI }
tenoreIMidi = \repeat unfold 3 { \tenoreI }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartTenoreI = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 s1*0 ^\MOVEMENT
 \set Staff.instrumentName = "Tenore I. "
 \tenoreIPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiTenoreI = {
 \KEY \TIME
 \ITENOREI
 \TEMPOBASE
 \tenoreIMidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1a. TENORE I : DYNAMIQUES PARTITION / MIDI POUR TOUS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTITION
dynPartTenoreI = {
\dynamicUp
%--- 1
\DYNEXO #'(-1.5 . 0) s2.\f
s2.
s2.\p
s2.*2
\DYNEXO #'(-2 . -1) s2.\ff
%--- 7
s2.*4
s4\mf\cr s8\! s8..\decr s32\! s8
%--- 12-16
s2.
s4\cr s8\! s8..\decr s32\! s8
s2.
\DYNEXO #'(-2 . -1) s2.\ff
s2.
}

%%%%%%%%%%%%%%%%%%%% MIDI
dynMidiTenoreI = \repeat unfold 3 {
%--- 1
\TEMPOBASE s2.\f
s2.
s2.\p
s2.
\TEMPOFERMATA s2 s4\ppppp
\TEMPOBASE s2.\ff
%--- 7
s2.*4
s4\mf\cr s8\!\f s8..\decr s32\!\mf s8
%--- 12-16
s2.
s4\cr s8\!\f s8..\decr s32\!\mf s8
s2.
s2.\ff
s2 s8 \TEMPOFIN mi8\ppppp
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. TENORE II : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenoreII = \relative do'' {
%--- 1
si4^> sold8 la la r
lad4^> lad8 si si r
la!4 la8 sold4 dod8
si4.( la4) la8
sold2.\fermata
dod4^> la8 dod4^> la8
%--- 7
dod4^> la8 dod4^> la8
fad4 fad8 fad4 fad8
sold4 sold8 sold4 lad8
si4 lad8 si4 r8
si4 sid8 dod4 si16([ la])
%--- 12-16
la8([ sold]) fad mi4.
si'4 sid8 dod4 si16([ la])
la8([ sold]) la sold4 r8
si4^> sold8 la la r
red!4^> la8 sold sold r8^\fermataMarkup
}

tenoreIIPart = { \tenoreII }
tenoreIIMidi = \repeat unfold 3 { \tenoreII }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartTenoreII = {
 \clef treble
 \KEY \TIME
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Tenore II. "
 \tenoreIIPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiTenoreII = {
 \KEY \TIME
 \ITENOREII
 \tenoreIIMidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3.	BASSO I : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassoI = \relative do' {
%--- 1
sold4^> mi8 mi mi r
fad4^> fad8 fad fad r
fad4 fad8 mi4 la8
sold4.( fad4) fad8
mi2.\fermata
mi4-> mi8 mi4-> mi8
%--- 7
mi4-> mi8 mi4-> mi8
mi4 mi8 mi([ red]) red
fad4 fad8 fad([ mi]) mi
fad4 fad8 fad4 r8
mi4 mi8 mi4 mi8
%--- 12-16
red4 red8 mi4.
mi4 mi8 mi4 mi8
si4 fad'8 mi4 r8
sold4^> mi8 mi mi r
fad4^> fad8 mi mi r8^\fermataMarkup
}

bassoIPart = { \bassoI }
bassoIMidi = \repeat unfold 3 { \bassoI }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartBassoI = {
 \clef bass
 \KEY \TIME
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Basso I. "
 \bassoIPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiBassoI = {
 \KEY \TIME
 \IBASSOI
 \bassoIMidi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B4.	BASSO II : NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassoII = \relative do {
%--- 1
mi4^> mi8 la, la r
fad'4^> fad8 si, si r
sid4 sid8 dod4 la8
si!4.~ si4 si8
mi2.\fermata
la,4^> la8 la4^> la8
%--- 7
la4^> la8 la4^> la8
lad4 lad8 lad([ si]) si
sid4 sid8 sid([ dod]) mi
red4 dod8 si4 r8
sold4 sold8 la4 la8
%--- 12-16
si4 si8 dod4.
sold4 sold8 la4 la8
si4 si8 mi4 r8
mi4^> mi8 la, la r 
si4^> si8 mi mi r8^\fermataMarkup
}

bassoIIPart = { \bassoII }
bassoIIMidi = \repeat unfold 3 { \bassoII }

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ PARTITION
notePartBassoII = {
 \clef bass
 \KEY \TIME
 \set autoBeaming = ##f
 \set Staff.instrumentName = "Basso II. "
 \bassoIIPart
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ MIDI
noteMidiBassoII = {
 \KEY \TIME
 \IBASSOII
 \bassoIIMidi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. SORTIE PARTITION SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ --------------------
-------------------- %}

\score {
 <<
  \new ChoirStaff
  \relative <<
   \new Voice = "tenoreI"   << \notePartTenoreI  \dynPartTenoreI >>
   \new Lyrics \lyricsto "tenoreI"  \poemeI
   \new Voice = "tenoreII"  << \notePartTenoreII \dynPartTenoreI >>
   \new Lyrics \lyricsto "tenoreII" \poemeII
   \new Voice = "bassoI"    << \notePartBassoI   \dynPartTenoreI >>
   \new Lyrics \lyricsto "bassoI"   \poemeIII
   \new Voice = "bassoII"   << \notePartBassoII  \dynPartTenoreI >>
  >>
 >>
 \layout { }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE MIDI SEULE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%% REDEFINITION DES VOLUMES RESPECTIFS ATTRIBUES AUX DYNAMIQUES 
% volumes par défaut (LilyPond\usr\share\lilypond\current\scm\midi.scm):
% sf     1.00     fff  0.85     mf  0.68     pp    0.49     ppppp  0.25
% fffff  0.95     ff   0.80     mp  0.61     ppp   0.42
% ffff   0.92     f    0.75     p   0.55     pppp  0.34

#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist (append '(
 ("sf" .    1.00)
 ("fffff" . 1.00)
 ("ffff" .  1.00)
 ("fff" .   1.00)
 ("ff" .    1.00)
 ("f" .     0.75)
 ("mf" .    0.70)
 ("mp" .    0.64)
 ("p" .     0.60)
 ("pp" .    0.49)
 ("ppp" .   0.42)
 ("pppp" .  0.34)
 ("ppppp" . 0.01) )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTREE PRENDRA LE NOUVEAU VOLUME SPECIFIE
#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \TIME s2. }

\score {
 <<
  \new Staff = "tenoreI"   { \SILENCE << \noteMidiTenoreI   \dynMidiTenoreI >> }
  \new Staff = "tenoreII"  { \SILENCE << \noteMidiTenoreII  \dynMidiTenoreI >> }
  \new Staff = "bassoI"    { \SILENCE << \noteMidiBassoI    \dynMidiTenoreI >> }
  \new Staff = "bassoII"   { \SILENCE << \noteMidiBassoII   \dynMidiTenoreI >> }
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
%                                         FIN DU FICHIER SchubertF-D983A-ZumRundetanz.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
