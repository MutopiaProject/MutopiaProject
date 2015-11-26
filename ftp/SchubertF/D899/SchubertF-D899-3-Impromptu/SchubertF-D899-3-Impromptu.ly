%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           FICHIER SchubertF-D899-3-Impromptu.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                      FRANZ SCHUBERT: "Impromptu in Ges-dur", für Klavier
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.18.2"
\include "italiano.ly"

#(set-global-staff-size 18)

\paper {
%#(set-paper-size "a4")
%#(set-paper-size "letter")
 line-width = 190\mm
 top-system-spacing #'minimum-distance = #15
 oddHeaderMarkup  = \markup \fill-line {
  " " { \italic "♫  Franz Schubert: Impromptu in Ges-dur (D 899-3)  ♫" }  \fromproperty #'page:page-number-string }
 evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string { \italic "♫  Franz Schubert: Impromptu in Ges-dur (D 899-3)  ♫" } " " }
 #(ly:set-option 'point-and-click #f)
}


\header {
 title = \markup \center-column { \fontsize #1.5 "Impromptu in Ges-dur" " " }
 subtitle = \markup { \fontsize #2.5 "D 899-3 (Opus 90 No 3.)" }
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 899 (Op. 90 No3., 1827)" }
% MUTOPIA
 mutopiatitle = "Impromptu in Ges-dur"
 mutopiacomposer = "SchubertF"
 mutopiapoet = ""
 mutopiaopus = "D.899 (Op. 90, No. 3)"
 mutopiainstrument = "Piano"
 date = "1827"
 source = "Breitkopf & Härtel, 1888"
 style = "Romantic"
 license = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = ""
 footer = "Mutopia-2015/11/26-1193"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GÉNÉRALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  -  IDENTIFICATEURS DE FONCTIONS
%  A. NOTES: A1. PIANO HAUT: VOIX 1, 2  A2. PIANO BAS: VOIX 1, 2, 3
%  B. DYNAMIQUES PARTITION: B1. COMMUNES  B2. PIANO HAUT  B3. PIANO BAS
%  C. DYNAMIQUES MIDI: C1. COMMUNES SAUF PIANO HAUT VOIX 1 ET PIANO BAS VOIX 3
%                      C2. PIANO HAUT VOIX 1 ET PIANO BAS VOIX 3 (même ligne mélodique)
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
%                  BIENVENUE A TOUTE SUGGESTION POUR AMÉLIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           IDENTIFICATEURS DE FONCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----- ABRÉVIATIONS
STAFFDO = { \change Staff = downIII \voiceThree }
STAFFUP = { \change Staff = upII    \voiceTwo }
%----- CACHER OU AFFICHER LE NOMBRE OU LE CROCHET D'UN NOLET
TUPNNO = \override TupletNumber.transparent = ##t
TUPBNO = \override TupletBracket.transparent = ##t
TUPNO  = { \TUPNNO \TUPBNO }
% VARIER LA HAUTEUR D'UNE BARRE DE LIGATURE
BEAMPOS = #(define-music-function (parser location beg-end) (pair?)
 #{ \once \override Beam.positions = #beg-end #})
% DÉPLACER UNE DYNAMIQUE OU MODIFIER SON LIBELLÉ
dimin = #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text 'span-text "dimin.")
%----- CRESCENDO SPÉCIAL
CREScendo = { \set crescendoText = \markup { \italic "cres    " } \set crescendoSpanner = #'text }
cresCENdo = { \set crescendoText = \markup { \italic "cen    " }  \set crescendoSpanner = #'text }
crescenDO = { \set crescendoText = \markup { \italic "do" }   \set crescendoSpanner = #'text }
%----- REMPLACEMENT DE LA MESURE 4/2
KEYTIME = { \key solb \major
\override Staff.TimeSignature.stencil = #ly:text-interface::print
\override Staff.TimeSignature.text = \markup { \musicglyph #"timesig.C22" \musicglyph #"timesig.C22" }
\time 4/2 }
%----- MOUVEMENT
MOVEMENT = \markup { \bold \large  { \hspace #-5 \italic "Andante." } }
%----- RÉTABLISSEMENT DU "dash"
DTSDASHOK = \once \override DynamicTextSpanner.style = #'dashed-line
%----- MARKUP
SFORZATO = \markup { \musicglyph #"scripts.sforzato" }
FFZ = #(make-dynamic-script "ffz")


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A. NOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A1. NOTES PIANO HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A11. NOTES PIANO HAUT:  VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hautI = \context Staff \relative do'' \new Voice { \voiceOne
%1-4
 sib1 ^\MOVEMENT ( sib2-. sib2-.)
 sib1 ( solb1)
 lab1( solb4 fa mib reb)
 solb2 sib lab2. la4
%5-8
 sib1( sib2 sib2)
 sib1( solb2 fa)
 mib2( lab2 solb4 fa mib fa)
 lab1( solb)
%9-12
 lab1( sib)
 reb2.( dob4) dob1
 dob1 dob2( reb)
 fab2.( mib4) mib1
%13-16
 mib1 mib4( dob sib lab)
 reb1 reb4( dob lab mib)
 solb1 solb4( fa sib lab)
 solb1 solb2 sol
%17-20
 lab1( sib)
 reb2.( dob4) dob1
 dob1 dob2( reb)
 fab2.( mib4) mib1
%21-24
 mib1 mib4( mibb dob lab)
 reb1 reb4( dob lab mib)
 solb1 solb4( fa sib lab)
 solb1 ~ solb1
%25-28
 sib1-> sib1->
 sib4( fa' re dob) dob( sib) sib( lab)
 lab4( solb fa lab) mib2( re4. \tuplet 3/2 { s16 sib'8) }
 sib1-> sib2.->( dob4)
%29-32
 sib4( fa' re dob sib dob sib lab)
 lab4( solb fa dob') mib,2( re4 sib')
 lab4( solb fab dob') mib,2( reb) (
 solb1) solb2( lab4 solb)
%33-36
 mib'2.( reb4) reb( dob lab fab)
 mib2. mib4( lab solb fab reb)
 dob1 dob1
 dob1 dob2_( sib)
%37-40
 dob1 dob1
 dob1 dob2( sib)
 dob1 dob4( mib solb dob)
 dob1-> sib4->( lab2.)
%41-44
 solb4->( fa2.) mib4->( re2.)
 fa4( mib solb fa lab solb fa lab)
 mib1 re2 fa4( sib)
 dob1 sib4->( lab2.)
%45-48
 solb4->( fa2.) mib4->( re2.)
 fa4( mib solb fa) lab( solb fab dob')
 mib,1( re)
 sib'1 sib2( do4 sib)
%49-52
 sol'2.( fa4) fa( mib do lab)
 sol2. sol4 do( sib lab fa)
 mib1 mib1
 mib1 mib1
%53-56
 mib1 lab1
 dob1 ~ dob1
 sib1( sib2-. sib2-.)
 sib1( solb1)
%57-60
 lab1( solb4 fa mib reb)
 solb2( sib) lab2.( la4)
 sib1( sib2-. sib2-.)
 sib1 solb2 fa
%61-62
 mib2( lab2 solb4 fa mib fa)
 lab1( solb)
 lab1( sib)
 reb2.( dob4) dob1
%65-68
 dob1 dob2( reb)
 fab2.( mib4) mib1
 mib1 mib4( dob sib lab)
 reb1 reb4( dob lab mib)
%69-72
 solb1 solb4( fa sib lab)
 dob1( reb2 re)
 mib1-> mib4( mibb dob lab)
 reb1 reb4( dob lab mib)
%73-76
 solb1 solb4( fa sib lab)
 solb1 solb1
 solb1 solb2 labb4 solb
 solb1 do,1_(
%77-80
 reb1) reb4( dob' lab fa)
 solb1 solb1  \key do \major
 fad1 fad1
 sol1 \key solb \major do,1
%81-84
 reb1 reb4( dob' lab fa)
 solb1( fa4 dob' lab fa)
 solb1( fa4 mib' dob lab)
 solb1( solb2-. solb2-.)
%85-86
 <solb, sib solb'>1( <solb sib solb'>2-. <solb sib solb'>2-.)
 <solb_~ sib_~ solb'^~>1 <solb sib solb'>1\fermata
 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A12. NOTES PIANO HAUT:  VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hautII = \context Staff \relative do' \new Voice { \voiceTwo
%1-4
 \TUPNO
 \tuplet 6/4  { r8 sib[ reb solb reb sib] }   \tuplet 6/4 { reb[ sib reb solb reb sib] }
  \tuplet 6/4 { r8 sib[ reb solb reb sib] }   \tuplet 6/4 { r8 sib[ reb solb reb sib] } 
 \tuplet 6/4  { r8 sib[ mib solb mib sib] }   \tuplet 6/4 { mib[ sib mib solb mib sib] }
  \tuplet 6/4 { r8 solb[ sib mib sib solb] }  \tuplet 6/4 { sib[ solb sib mib sib solb] } 
 \tuplet 6/4  { r8 lab[ dob mib dob lab] }    \tuplet 6/4 { dob[ lab dob mib dob lab] }
  \tuplet 3/2 { r8 lab[ dob] }  \tuplet 3/2 { r8 lab[ dob] }  \tuplet 3/2 { r8 lab[ dob] }  \tuplet 3/2 { r8 fa,[ lab]}
 \tuplet 6/4  { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { r8 do[ mib solb mib do] }
  \tuplet 6/4 { r8 lab[ reb fa reb lab] }     \tuplet 6/4 { reb[ lab reb fa reb lab] }
%5-8
 \tuplet 6/4  { r8 sib[ reb solb reb sib] }   \tuplet 6/4 { reb[ sib reb solb reb sib] }
  \tuplet 6/4 { r8 sib[ reb solb reb sib] }   \tuplet 6/4 { r8 sib[ reb solb reb sib] } 
 \tuplet 6/4  { r8 sib[ mib solb mib sib] }   \tuplet 6/4 { mib[ sib mib solb mib sib] }
  \tuplet 6/4 { r8 solb[ sib mib sib solb] }  s2
 s2 \tuplet 6/4 { r8 lab[ dob mib dob lab] }
  \tuplet 3/2 { r8 dob[ lab] }  \tuplet 3/2 { r8 dob[ lab] }  \tuplet 3/2 { r8 dob[ lab] }  \tuplet 3/2 { r8 dob[ lab]}
 \tuplet 6/4  { r8 dob[ reb fa reb dob] }     \tuplet 6/4 { reb[ dob reb fa reb dob] }
  \tuplet 6/4 { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] } 
%9-12
 \tuplet 6/4  { r8 lab[ reb fa reb lab] }     \tuplet 6/4 { reb[ lab reb fa reb lab] }
  \tuplet 6/4 { r8 reb[ mib sol mib reb] }    \tuplet 6/4 { mib[ reb mib sol mib reb] }
 \tuplet 6/4  { r8 reb[ mib lab mib reb] }    \tuplet 6/4 { mib[ reb mib lab mib dob] }
  \tuplet 6/4 { r8 dob[ mib lab mib dob] }    \tuplet 6/4 { mib[ dob mib lab mib dob] }
 \tuplet 6/4  { r8 dob[ fab lab fab dob] }    \tuplet 6/4 { fab[ dob fab lab fab dob] }
  \tuplet 6/4 { r8 dob[ mib solb mib dob] }   \tuplet 6/4 { r8 fab[ solb sib solb fab] }
 \tuplet 6/4  { r8 fab[ solb dob solb fab] }  \tuplet 6/4 { solb[ fab solb dob solb mib] }
  \tuplet 6/4 { r8 mib[ solb dob solb mib] }  \tuplet 6/4 { solb[ mib solb dob solb mib] }
%13-16
 \tuplet 6/4  { r8 mib[ solb dob solb mib] }  \tuplet 6/4 { solb[ mib solb dob solb mib] }
  \tuplet 3/2 { r8 lab[ fa] }  \tuplet 3/2 { r8 lab[ fa] }  \tuplet 3/2 { r8 fa[ reb] }  \tuplet 3/2 { r8 fa[ reb] }
 \tuplet 6/4  { r8 reb[ solb sib solb reb]}   \tuplet 6/4  { solb[ reb solb sib solb reb] }
  \tuplet 3/2 { reb'8[ solb, mib] }  \tuplet 3/2 { dob'8[ solb mib] }  \tuplet 3/2 { lab8[ mib dob] }  \tuplet 3/2 { mib8[ dob lab] }
 \tuplet 6/4  { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] } 
  \tuplet 3/2 { solb'8[ dob, lab] }  \tuplet 3/2 { fa'8[ dob lab] }  \tuplet 3/2 { sib'8[ reb, dob] }  \tuplet 3/2 { lab'8[ reb, dob] }
 \tuplet 6/4  { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] } 
  \tuplet 6/4 { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { r8 sol[ sib reb sib sol] }
%17-20
 \tuplet 6/4  { r8 lab[ reb fa reb lab] }     \tuplet 6/4 { reb[ lab reb fa reb lab] }
  \tuplet 6/4 { r8 reb[ fab sol fab reb] }      \tuplet 6/4 { mib[ reb mib sol mib reb] }
% \tuplet 6/4 { r8 reb[ fa sol fa reb] }      \tuplet 6/4 { mib[ reb mib sol mib reb] }
 \tuplet 6/4  { r8 reb[ mib sib' mib, reb] }    \tuplet 6/4 { mib[ reb mib lab mib dob] }
  \tuplet 6/4 { r8 dob[ mib lab mib dob] }    \tuplet 6/4 { mib[ dob mib lab mib dob] }
 \tuplet 6/4  { r8 dob[ fab lab fab dob] }    \tuplet 6/4 { fab[ dob fab lab fab dob] }
  \tuplet 6/4 { r8 dob[ mib solb mib dob] }   \tuplet 6/4 { r8 fab[ solb sib solb fab] }
 \tuplet 6/4  { r8 fab[ solb reb' solb, fab] }  \tuplet 6/4 { solb[ fab solb dob solb mib] }
  \tuplet 6/4 { r8 mib[ solb dob solb mib] }  \tuplet 6/4 { solb[ mib solb dob solb mib] }
%21-24
 \tuplet 6/4  { r8 mib[ solb dob solb mib] }  \tuplet 6/4 { solb[ mib solb dob solb mib] }
  \tuplet 3/2 { mib'8[ lab, fa] }  \tuplet 3/2 { mibb'8[ lab, fa] }  \tuplet 3/2 { dob'8[ fa, mibb] }  \tuplet 3/2 { lab8[ fa reb] }
 \tuplet 6/4  { r8 reb[ solb sib solb reb]}   \tuplet 6/4  { solb[ reb solb sib solb reb] }
  \tuplet 3/2 { reb'8[ sol, mib] }  \tuplet 3/2 { dob'8[ lab mib] }  \tuplet 3/2 { lab8[ mib dob] }  \tuplet 3/2 { mib8[ do lab] }
 \tuplet 6/4  { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] } 
  \tuplet 3/2 { solb'8[ dob,! lab] }  \tuplet 3/2 { fa'8[ dob lab] }  \tuplet 3/2 { sib'8[ reb, dob] }  \tuplet 3/2 { lab'8[ reb, dob] }
 \tuplet 6/4  { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] } 
  \tuplet 6/4 { sib[ solb sib reb sib solb] } \tuplet 6/4 { sib[ solb sib re sib solb] }
%25-28
 \tuplet 6/4  { r8 sib[ mib solb mib sib] }   \tuplet 6/4 { mib[ sib mib solb mib sib] }
  \tuplet 6/4 { r8 sib[ mib solb mib sib] }   \tuplet 6/4 { mib[ sib mib solb mib sib] }
 \tuplet 3/2 { sib'8[ re, fa] } \tuplet 3/2 { fa'8[ fa, lab] } \tuplet 3/2 { re8[ fa, lab] } \tuplet 3/2 { dob8[ fa, lab] }
  \tuplet 3/2 { dob8[ fa, lab] } \tuplet 3/2 { sib8[ fa lab] } \tuplet 3/2 { sib8[ sib, fa'] } \tuplet 3/2 { lab8[ sib, fa'] }
 \tuplet 3/2 { lab8[ sib, mib] } \tuplet 3/2 { solb8[ sib, mib] } \tuplet 3/2 { fa8[ lab, dob] } \tuplet 3/2 { lab'8[ lab, dob] }
  s1 
 \tuplet 6/4  { r8 sib[ mib solb mib sib] }   \tuplet 6/4 { mib[ sib mib solb mib sib] }
  \tuplet 6/4 { r8 sib[ mib solb mib sib] }   \tuplet 6/4 { mib[ sib mib solb mib sib] }
%29-32
 \tuplet 3/2  { sib'8[ re, fa] } \tuplet 3/2 { fa'8[ fa, lab] } \tuplet 3/2 { re8[ fa, lab] }   \tuplet 3/2 { dob8[ fa, lab] }
  \tuplet 3/2 { sib8[ fa lab] }  \tuplet 3/2 { dob8[ fa, lab] } \tuplet 3/2 { sib8[ sib, fa'] } \tuplet 3/2 { lab8[ sib, fa'] }
 \tuplet 3/2 { lab8[ sib, mib] } \tuplet 3/2 { solb8[ sib, mib] } \tuplet 3/2 { fa8[ lab, dob] } \tuplet 3/2 { dob'8[ dob, fa] }
  s2 s4 \tuplet 3/2 { sib8[ sib, fa'] } 
%\tuplet 3/2 { lab8[ sib, mib] } \tuplet 3/2 { solb8[ sib, mib] } \tuplet 3/2 { fab8[ lab, dob] } \tuplet 3/2 { dob'8[ dob, fa] }
 \tuplet 3/2 { lab8[ sib, mib] } \tuplet 3/2 { solb8[ sib, mib] } \tuplet 3/2 { fab8[ lab, dob] } \tuplet 3/2 { dob'8[ dob, fab] }
  s1
 \tuplet 6/4  { r8 solb,[ dob mib dob solb] }  \tuplet 6/4 { dob[ solb dob mib dob solb] } 
  \tuplet 6/4 { r8 solb[ sib fab' sib, solb] }  \tuplet 6/4 { lab'[ sib, reb solb fab sib,] } 
%33-36
 \tuplet 6/4  { r8 mib[ solb dob solb mib] }  \tuplet 3/2 { solb[ mib solb] } \tuplet 3/2 { r8 sol[ mib] }
  \tuplet 3/2 { reb'8[ lab dob,] } \tuplet 3/2 { dob'8[ lab dob,] } \tuplet 3/2 { lab'8[ fab dob] } \tuplet 3/2 { fab8[ reb lab] }
 s1  \tuplet 3/2 { lab'8[ sib, reb] } \tuplet 3/2 { solb8[ sib, reb] } \tuplet 3/2 { fab[ solb, sib] } \tuplet 3/2 { reb[ solb, sib] }
 s1*4
%37-40
 s1*4
 s1 s2 \tuplet 3/2 { solb'8[ dob, mib] } \tuplet 3/2 { dob'[ mib, solb] }
 \tuplet 6/4  { r8 dob,[ re fa re dob] } \tuplet 6/4 { re8[ dob re fa re dob] }
  \tuplet 6/4 { r8 lab[ re fa re lab] } \tuplet 6/4 { re8[ lab re fa re lab] }
%41-44
 \tuplet 6/4  { r8 lab8[ sib dob sib lab] } \tuplet 6/4 { sib8[ lab8 sib dob sib lab] }
  \tuplet 6/4 { r8 lab8[ sib dob sib lab] } \tuplet 6/4 { sib8[ lab8 sib dob sib lab] }
 \tuplet 3/2  { fa'8[ solb, sib] } \tuplet 3/2 { mib8[ solb, sib] } \tuplet 3/2 { solb'8[ lab, dob] } \tuplet 3/2 { fa8[ lab, dob] }
  \tuplet 3/2 { lab'8[ sib, mib] } \tuplet 3/2 { solb8[ sib, mib] } \tuplet 3/2 { fa8[ lab, dob] } \tuplet 3/2 { lab'8[ lab, dob] }
 s1 s2 \tuplet 3/2 { fa8[ sib, re] } \tuplet 3/2 { sib'8[ re, fa] }
 \tuplet 6/4  { r8 dob[ re fa re dob] } \tuplet 6/4 { re8[ dob re fa re dob] }
  \tuplet 6/4 { r8 lab[ re fa re lab] } \tuplet 6/4 { re8[ lab re fa re lab] }
%45-48
 \tuplet 6/4  { r8 lab8[ sib dob sib lab] } \tuplet 6/4 { sib8[ lab8 sib dob sib lab] }
  \tuplet 6/4 { r8 lab8[ sib dob sib lab] } \tuplet 6/4 { sib8[ lab8 sib dob sib lab] }
 \tuplet 3/2  { fa'8[ solb, sib] } \tuplet 3/2 { mib8[ solb, sib] } \tuplet 3/2 { solb'8[ lab, dob] } \tuplet 3/2 { fa8[ lab, dob] }
  \tuplet 3/2 { lab'8[ sib, mib] } \tuplet 3/2 { solb8[ sib, mib] } \tuplet 3/2 { fab8[ lab, dob] } \tuplet 3/2 { dob'8[ dob, fab] }
 s1*2
 \tuplet 6/4  { r8 sib,[ mib sol mib sib] }   \tuplet 6/4 { mib[ sib mib sol mib sib] }
  \tuplet 6/4 { r8 sib[ re lab' re, sib] }     \tuplet 6/4 { r8 re[ lab' sib lab re,] }
%49-52
 \tuplet 6/4  { r8 sol[ sib mib sib sol] }     \tuplet 3/2 { sib8[ sol sib] } \tuplet 3/2 { r8 si[ sol] }
  \tuplet 3/2 { fa'8[ do mib,] } \tuplet 3/2 { mib'8[ do mib,] } \tuplet 3/2 { do'8[ lab mib] } \tuplet 3/2 { lab8[ fa do] }
 \tuplet 6/4 { r8 sol[ sib mib sib sol] }   \tuplet 6/4 { sib[ sol sib mib sib sol] }
  \tuplet 3/2 { do'8[ re, fa] } \tuplet 3/2 { sib8[ re, fa] } \tuplet 3/2 { lab8[ sib, re] } \tuplet 3/2 { fa8[ sib, re] }
 s1*4
%53-56
 s1  \tuplet 6/4 { r8 lab[ dob mibb dob lab] } \tuplet 6/4 { dob[ lab dob mibb dob lab] }
 \tuplet 6/4  { r8 dob[ reb lab' reb, dob] }   \tuplet 6/4 { reb[ dob reb lab' reb, dob] }
 \tuplet 6/4  { mibb[ dob mibb lab mibb dob] } \tuplet 6/4 { reb[ dob reb lab' ^\fermata reb, dob] }
 \tuplet 6/4  { r8 sib[ reb solb reb sib] }    \tuplet 6/4 { reb[ sib reb solb reb sib] }
  \tuplet 6/4 { r8 sib[ reb solb reb sib] }    \tuplet 6/4 { r8 sib[ reb solb reb sib] } 
 \tuplet 6/4  { r8 sib[ mib solb mib sib] }    \tuplet 6/4 { mib[ sib mib solb mib sib] }
  \tuplet 6/4 { r8 solb[ sib mib sib solb] }   \tuplet 6/4 { sib[ solb sib mib sib solb] } 
%57-60
 \tuplet 6/4  { r8 lab[ dob mib dob lab] }    \tuplet 6/4 { dob[ lab dob mib dob lab] }
  \tuplet 3/2 { solb'8[ lab, dob] }  \tuplet 3/2 { fa8[ lab, dob] }  \tuplet 3/2 { mib8[ lab, dob] }  \tuplet 3/2 { reb8[ fa, lab]}
 \tuplet 6/4  { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { r8 do[ mib solb mib do] }
  \tuplet 6/4 { r8 lab[ reb fa reb lab] }     \tuplet 6/4 { reb[ lab reb fa reb la] }
 \tuplet 6/4  { r8 sib[ reb solb reb sib] }   \tuplet 6/4 { reb[ sib reb solb reb sib] }
  \tuplet 6/4 { r8 sib[ reb solb reb sib] }   \tuplet 6/4 { r8 sib[ reb solb reb sib] } 
 \tuplet 6/4  { r8 sib[ mib solb mib sib] }   \tuplet 6/4 { mib[ sib mib solb mib sib] }
  \tuplet 6/4 { r8 solb[ sib mib sib solb] }  s2
%61-62
 s2 \tuplet 6/4 { r8 lab[ dob mib dob lab] }
  \tuplet 3/2 { solb'8[ lab, dob] }  \tuplet 3/2 { fa8[ lab, dob] }  \tuplet 3/2 { mib8[ lab, dob] }  \tuplet 3/2 { fa8[ lab, dob] }
 \tuplet 6/4  { r8 dob[ reb fa reb dob] }     \tuplet 6/4 { reb[ dob reb fa reb dob] }
  \tuplet 6/4 { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] } 
 \tuplet 6/4  { r8 lab[ reb fa reb lab] }     \tuplet 6/4 { reb[ lab reb fa reb lab] }
  \tuplet 6/4 { r8 reb[ fab sol fab reb] }    \tuplet 6/4 { mib[ reb mib sol mib reb] }
 \tuplet 6/4  { r8 reb[ mib sib' mib, reb] }    \tuplet 6/4 { mib[ reb mib lab mib dob] }
  \tuplet 6/4 { r8 dob[ mib lab mib dob] }    \tuplet 6/4 { mib[ dob mib lab mib dob] }
%65-68
 \tuplet 6/4  { r8 dob[ fab lab fab dob] }    \tuplet 6/4 { fab[ dob fab lab fab dob] }
  \tuplet 6/4 { r8 dob[ mib solb mib dob] }   \tuplet 6/4 { r8 fab![ solb sib solb fab] }
 \tuplet 6/4  { r8 fab[ solb reb' solb, fab] }  \tuplet 6/4 { solb[ fab solb dob solb mib] }
  \tuplet 6/4 { r8 mib[ solb dob solb mib] }  \tuplet 6/4 { solb[ mib solb dob solb mib] }
 \tuplet 6/4  { r8 mib[ solb dob solb mib] }  \tuplet 6/4 { solb[ mib solb dob solb mib] }
  \tuplet 3/2 { mib'8[ lab, fa] }  \tuplet 3/2 { dob'8[ lab fa] }  \tuplet 3/2 { sib8[ fa reb] }  \tuplet 3/2 { lab'8[ fa reb] }
 \tuplet 6/4  { r8 reb[ solb sib solb reb]}   \tuplet 6/4  { solb[ reb solb sib solb reb] }
  \tuplet 3/2 { reb'8[ solb, mib] }  \tuplet 3/2 { dob'8[ solb mib] }  \tuplet 3/2 { lab8[ mib dob] }  \tuplet 3/2 { mib8[ dob lab] }
%69-72
 \tuplet 6/4  { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] } 
  \tuplet 3/2 { solb'8[ dob, lab] }  \tuplet 3/2 { fa'8[ dob lab] }  \tuplet 3/2 { sib'8[ reb, dob] }  \tuplet 3/2 { lab'8[ reb, dob] }
 \tuplet 6/4  { r8 dob[ mib solb mib dob] }   \tuplet 6/4 { mib[ dob mib solb mib dob] }
  \tuplet 6/4  { r8 fab[ solb sib solb fab] } \tuplet 6/4  { r8 fab[ solb sib solb fab] }
 \tuplet 6/4  { r8 mib[ solb dob solb mib] }  \tuplet 6/4 { solb[ mib solb dob solb mib] }
  \tuplet 3/2 { mib'8[ lab, fa] }  \tuplet 3/2 { mibb'8[ lab, fa] }  \tuplet 3/2 { dob'8[ fa, mibb] }  \tuplet 3/2 { lab8[ fa reb] }
 \tuplet 6/4  { r8 reb[ solb sib solb reb]}   \tuplet 6/4  { solb[ reb solb sib solb reb] }
  \tuplet 3/2 { reb'8[ sol, mib] }  \tuplet 3/2 { dob'8[ lab mib] }  \tuplet 3/2 { lab8[ mib dob] }  \tuplet 3/2 { mib8[ do lab] }
%73
 \tuplet 6/4  { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] }
  \tuplet 3/2 { solb'8[ dob,! lab] }  \tuplet 3/2 { fa'8[ dob lab] }  \tuplet 3/2 { sib'8[ reb, dob] }  \tuplet 3/2 { lab'8[ reb, dob] }
 \tuplet 6/4  { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] }
  \tuplet 6/4 { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] }
 \tuplet 6/4  { r8 solb[ dob mibb dob solb] }  \tuplet 6/4 { dob[ solb dob mibb dob solb] }
  \tuplet 6/4 { r8 solb[ sib fab' sib, solb] }  \tuplet 6/4 { sib[ solb sib fab' sib, solb] }
 \tuplet 6/4  { r8 solb[ dob mibb dob solb] }  \tuplet 6/4 { dob[ solb dob mibb dob solb] } s1
%77-80
 s1  \tuplet 3/2 { reb'8[ fa, lab] } \tuplet 3/2 { dob'8[ dob, reb] } \tuplet 3/2 { lab'8[ dob, reb] } \tuplet 3/2 { fa8[ dob reb] }
 \tuplet 6/4  { r8 solb,[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] }
  \tuplet 6/4 { r8 solb[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] }  \key do \major
 \tuplet 6/4  { r8 fad[ si! re! si fad] } \tuplet 6/4 { si8[ fad si re si fad] }
  \tuplet 6/4 { r8 fad[ la! re la fad] } \tuplet 6/4 { la8[ fad la re la fad] }
 \tuplet 6/4  { r8 sol[ sib re sib sol] }  \tuplet 6/4 { sib[ sol sib re sib sol] }  \key solb \major s1
%81-84
 s1  \tuplet 3/2 { reb'8[ fa, lab] } \tuplet 3/2 { dob'8[ dob, reb] } \tuplet 3/2 { lab'8[ dob, reb] } \tuplet 3/2 { fa8[ dob reb] }
 \tuplet 6/4  { r8 solb,[ sib reb solb, sib] }  \tuplet 6/4 { mib[ solb, dob reb solb, sib] }
  \tuplet 3/2 { fa'8[ dob reb] } \tuplet 3/2 { dob'8[ dob, reb] } \tuplet 3/2 { lab'8[ dob, reb] } \tuplet 3/2 { fa8[ dob reb] }
 \tuplet 6/4  { r8 solb,[ sib reb solb, sib] }  \tuplet 6/4 { mib[ solb, dob reb solb, sib] }
  \tuplet 3/2 { fa'8[ dob reb] } \tuplet 3/2 { mib'8[ fa, lab] } \tuplet 3/2 { dob8[ reb, fa] } \tuplet 3/2 { lab8[ reb, fa] }
 \tuplet 6/4  { r8 solb,[ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] }
  \tuplet 6/4 { sib[ solb sib reb sib solb] } \tuplet 6/4 { sib[ solb sib reb sib solb] }
%85-86
 s1*4
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartHaut = {
 \clef treble
 \KEYTIME
 \set autoBeaming = ##f
 << \hautI \hautII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI: Voir SORTIE MIDI


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. NOTES PIANO BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A21. NOTES PIANO BAS VOIX 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basIa = \relative do { \voiceOne

%1-3
 \oneVoice
 <solb reb'>1 <solb reb'>2 <solb reb'>2
 <mib mib'>1~ <mib mib'>1
 <dob dob'>1 <reb reb'>2. <dob' reb>4
}

%%%%%%%%%%%%%%%%%%%% 4: ARPÈGE POUR LA PARTITION
basIaP = \relative do { \voiceOne
 \oneVoice
  <sib reb>2 <solb mib'>2 <reb fa'>1 \arpeggio
}
%%%%%%%%%%%%%%%%%%%% 4: ARPÈGE POUR LE MIDI
basIaM = \relative do { \voiceOne
 \oneVoice
  <sib reb>2 <solb mib'>2 reb4~ <reb fa'>2.
}

%%%%%%%%%%%%%%%%%%%% 5: SUITE Ib
basIb = \relative do { \voiceOne
 %5-8
 \oneVoice
 <solb reb'>1 <solb reb'>2 <solb reb'>2
 <mib mib'>1~ \voiceTwo <mib mib'>2_( <sib sib'>)
 <dob dob'>2 <lab lab'>2 \oneVoice <reb reb'>1
 <solb reb'>1 ~ <solb reb'>
%9-12
 <reb' fa>1_( <sib mib sol>)
 <lab mib' lab>1 <lab mib' lab>
 <fab' lab>1( <mib solb>2) <reb solb sib>
 <dob solb' dob>1 <dob solb' dob>
%13-15
 \voiceOne
 <dob solb'>1 lab'2( fa)
 <sib, solb'>1 solb'2( lab)
 reb,1 \grace reb,16 reb'2( solb4 fa)
%16
 \oneVoice <solb, reb'>1 <sib reb>2 <sib reb>
%17-18
 \voiceOne
 <reb fa>1 fab2( mib)
 sol2.( lab4) <mib lab>1
}

%%%%%%%%%%%%%%%%%%%% 19: TRILLE POUR LA PARTITION
basIbP = \relative do, { \voiceOne
 \oneVoice
 << { fab1_( mib2 reb \trill) } { s1 s2... \appoggiatura { \BEAMPOS #'(0 . 0.3) dob32[ reb] } } >>
}
%%%%%%%%%%%%%%%%%%%% 19: TRILLE POUR LE MIDI
basIbM = \relative do { \voiceOne
 \oneVoice
 fab1 mib2  reb16 mib reb mib \tuplet 3/2 { reb8 dob reb }
}

%%%%%%%%%%%%%%%%%%%% 20: SUITE Ic
basIc = \relative do, { \voiceOne
%20
 \oneVoice
 dob1 ~ dob1
%21-23
 \voiceOne
 <dob' solb'>1 lab'2( fa)
 <sib, solb'>1 sol'4( lab mib2)
 reb1 \appoggiatura reb,16 reb'2( solb4 fa)
%24
 \oneVoice
 <solb, reb'>1. <fa re'>2
%25
 <mib mib'>2. \tuplet 3/2 { \TUPNO mib8[ fa solb] } solb2. \tuplet 3/2 { solb8[ lab sib] }
%26
 \voiceOne
 sib4( dob' lab fa) re2..( do16[ re])
%27-28
 \oneVoice
 mib2( lab,) \stemDown \dotsDown sib2._( \tuplet 3/2 { lab8[ solb fa]) } \stemNeutral \dotsNeutral
 mib2. \tuplet 3/2 { mib8[ fa solb] } solb2. \tuplet 3/2 { solb8[ lab sib] }
}

%%%%%%%%%%%%%%%%%%%% 29: TRILLE POUR LA PARTITION
basIcP = \relative do { \voiceOne
 sib4( dob' lab fa) re2 re4.. \trill do32[ re]
}
%%%%%%%%%%%%%%%%%%%% 29: TRILLE POUR LE MIDI
basIcM = \relative do { \voiceOne
 sib4 dob' lab fa  re2  re16 mib re mib \tuplet 3/2 { re8 dob re }
}

%%%%%%%%%%%%%%%%%%%% 30: SUITE Id
basId = \relative do { \voiceOne
%30-32
 \oneVoice
 mib2( lab,) \stemDown sib2 s4 <si, re'>4 \stemNeutral
 <mib mib'>2_( <lab, lab'> \stemDown <solb solb'> fab') \stemNeutral
 mib1( reb)
%33
 dob1( fab)
%34
 \voiceOne
 solb1 reb'2.( fab4)
%35-36
 \oneVoice
 dob,1_( \stemDown labb2. \tuplet 3/2 { \TUPNO labb8[ sibb dob]) }
 dob2._( reb16[ mib fab solb]) labb2_( solb)
%37-40
 dob,1_( \stemDown lab2.) \tuplet 3/2 { lab8_([ sib dob]) }
 dob2._( reb16[ mib fab solb]) lab2_( solb)
 dob,1 ~ dob1 \stemNeutral
 lab'2._> \tuplet 3/2 { lab8([ sib dob]) } dob2._> \tuplet 3/2 { dob8([ reb re]) }
%41-44
 re2. \tuplet 3/2 { re8([ mib fa]) } fa2.( fa,4)
 solb2( re mib lab,)
 \stemDown sib2_( \tuplet 6/4 { sib8)[_( la sib dob sib la)] } sib2. \stemNeutral <sib sib'>4
 <lab lab'>2. \tuplet 3/2 { lab'8([ sib dob]) } <dob, dob'>2. \tuplet 3/2 { dob'8([ reb re]) }
}

%%%%%%%%%%%%%%%%%%%% 45-46: TRILLE POUR LA PARTITION = trille 29
basIdP = \relative do, { \voiceOne
 \oneVoice
 <re re'>2. \tuplet 3/2 { \TUPNO re'8[ mib fa] } <fa, fa'>2. fa4(
 solb2) (re \trill mib lab,)
}
%%%%%%%%%%%%%%%%%%%% 29: TRILLE POUR LE MIDI = trille 29
basIdM = \relative do, { \voiceOne
 \oneVoice
 <re re'>2. \tuplet 3/2 { re'8 mib fa] } <fa, fa'>2. fa4(
 solb2)   re16 mib re mib \tuplet 3/2 { re8 dob re }   mib2 lab,
}

%%%%%%%%%%%%%%%%%%%% 47: SUITE Ie
basIe = \relative do, { \voiceOne
%47-48
 \oneVoice
 \stemDown sib2_( \tuplet 6/4 { \TUPNO sib8)[_( la sib dob sib la)] } sib2_( lab) \stemNeutral
 <sol sol'>1^( fa'1)
%49
 mib1( lab1)
%50
 \voiceOne
 sib1 fa'2.( lab4)
%51-52
 \oneVoice
 mib,1_( \stemDown reb2.) \tuplet 3/2 { fab8_([ mib re]) }
 dob1_( sib2) _(  \tuplet 6/4 { sib8) _([ dob sib reb dob sib)]) }
}

%%%%%%%%%%%%%%%%%%%% 53: TRILLE POUR LA PARTITION
basIeP = \relative do, { \voiceOne
 \oneVoice
 << { s1 solb1 \startTrillSpan } { lab1_( s2... \grace { \BEAMPOS #'(0.3 . 0.6) fa32[ \stopTrillSpan solb]) } } >>
}
%%%%%%%%%%%%%%%%%%%% 53: TRILLE POUR LE MIDI
basIeM = \relative do, { \voiceOne
 \oneVoice
 lab1  solb16[ lab solb lab] solb[ lab solb lab] solb[ lab solb lab] \tuplet 3/2 { solb8 fa solb }
}


%%%%%%%%%%%%%%%%%%%% 54: SUITE If
basIf = \relative do, { \voiceOne
%54
 s2 fa8([ lab dob reb]) mibb2( reb _\fermata)
%55-56
 \oneVoice
 <solb, reb'>1 <solb reb'>2 <solb reb'>2
 <mib mib'>1 ~  <mib mib'>
%57
 <dob dob'>1 <reb reb'>2. <dob' reb>4
}

%%%%%%%%%%%%%%%%%%%% 58: ARPÈGE POUR LA PARTITION = arpège 4
basIfP = \relative do { \voiceOne
 \oneVoice
 <sib reb>2( <solb mib'>2) <reb fa'>1 \arpeggio
}
%%%%%%%%%%%%%%%%%%%% 58: ARPÈGE POUR LE MIDI = arpège 4
basIfM = \relative do { \voiceOne
 \oneVoice
 <sib reb>2 <solb mib'>2 reb4~ <reb fa'>2.
}

%%%%%%%%%%%%%%%%%%%% 59: SUITE Ig
basIg = \relative do { \voiceOne
%59-60
 \oneVoice
 <solb reb'>1 <solb reb'>2 <solb reb'>2
 <mib mib'>1~ \voiceTwo <mib mib'>2_( <sib sib'>)
%61-62
 <dob dob'>2_( <lab lab'>2 \oneVoice <reb reb'>1)
 <solb reb'>1 ~ <solb reb'>
%63-64
 \voiceOne
 s1 fab'2( mib2)
 sol2.( lab4) <mib lab>1
}

%%%%%%%%%%%%%%%%%%%% 65: TRILLE POUR LA PARTITION = trille 19
basIgP = \relative do, { \voiceOne
 \oneVoice
 << { fab1_( mib2 reb \trill) } { s1 s2... \appoggiatura { \BEAMPOS #'(0 . 0.3) dob32[ reb] } } >>
}
%%%%%%%%%%%%%%%%%%%% 65: TRILLE POUR LE MIDI = trille 19
basIgM = \relative do, { \voiceOne
 \oneVoice
 fab1 mib2  reb16 mib reb mib \tuplet 3/2 { reb8 dob reb }
}


%%%%%%%%%%%%%%%%%%%% 66: SUITE Ih
basIh = \relative do, { \voiceOne
%66
 \oneVoice
 dob1 ~ dob1
%67-68
 \voiceOne
 <dob' solb'>1 lab'2( fa)
 <sib, solb'>1 solb'2( lab)
%69
 reb,1 \appoggiatura reb,16 reb'2( solb4 fa)
%70
 \oneVoice
 <mib solb>1 <solb sib>1
%71-72
 \voiceOne
 <dob, solb' dob>1 lab'2 fa
 <sib, solb'>1 sol'4( lab mib2)
%73
 reb1 \appoggiatura reb,16 reb'2( solb4 fa)
}

%%%%%%%%%%%%%%%%%%%% 74-75: TRILLE POUR LA PARTITION
basIhP =  \relative do { \voiceOne
 \oneVoice solb1_( fab1
 mibb1) << { \grace mibb!16 reb1 \trill _( }
           { s2... \stemUp \grace { \BEAMPOS #'(0.5 . 0.8) dob32 [reb]) \stemNeutral } } >>
}
%%%%%%%%%%%%%%%%%%%% 74-75: TRILLE POUR LE MIDI
basIhM = \relative do { \voiceOne
 solb1( fab1
 mibb1)  mibb16[ reb mibb reb] mibb[ reb mibb reb] mibb[ reb mibb reb]  mibb[ reb dob reb]
}


%%%%%%%%%%%%%%%%%%%% 76: SUITE Ii
basIi = \relative do, { \voiceOne
%76-77
 dob1_( mibb1
 reb1) reb4_( reb') (fa lab)
%78
 \oneVoice
 solb,1( fab1)  \key do \major
}

%%%%%%%%%%%%%%%%%%%% 79: TRILLE POUR LA PARTITION
basIiP = \relative do, { \voiceOne
 \oneVoice
 << { re!1 do!1 \startTrillSpan } { s1 s2... \stemUp \grace { \BEAMPOS #'(0.5 . 0.8) sib32[ \stopTrillSpan do] \stemNeutral } } >>
}
%%%%%%%%%%%%%%%%%%%% 79: TRILLE POUR LE MIDI
basIiM = \relative do, { \voiceOne
 \oneVoice
 re1 do16[ re do re] do[ re do re] do[ re do re] \tuplet 3/2 { do8 sib do }
}


%%%%%%%%%%%%%%%%%%%% 80-86: SUITE ET FIN Ij
basIj = \relative do, { \voiceOne
%80
 \oneVoice
 sib1 \key solb \major mibb1
%81-83
 \voiceOne
 reb1 reb4_( reb') (fa lab)
 r4 <sib, reb>( <dob mib>_> <sib reb>) reb,4_( reb') (fa lab)
 r4 <sib, reb>( <dob mib>_> <sib reb>) reb,4_( reb') (lab' dob)
%84
 \oneVoice
 <solb, reb'>1^( <solb reb'>2^. <solb reb'>^.)
%85-86
 s1*2
 <solb,_~ reb'^~ solb^~>1 <solb reb' solb>1 \fermata
}

basIPart = \context Staff \new Voice { \voiceOne
 \basIa \basIaP \basIb \basIbP \basIc \basIcP \basId \basIdP \basIe \basIeP
 \basIf \basIfP \basIg \basIgP \basIh \basIhP \basIi \basIiP \basIj
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A22. NOTES PIANO BAS VOIX 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basII = \context Staff \relative do \new Voice { \voiceTwo
%1-12
 s1*24
%13-15
 s1 dob1
 s1 dob1
 s1 reb1
%16
 s1*2
%17-18
 s1 <sib sol'>1
 <lab mib'>1 lab2..( solb!8)
%19-20
 s1*4
%21-23
 s1 dob1
 s1 dob2.( do4)
 s1 reb1
%24-25
 s1*4
%26
 sib1 ~ sib1
%27-28
 s1*4
%29
 sib1 ~ sib1
%30-33
 s1*8
%34
 s1 solb1
%35-49
 s1*30
%50
 s1 sib1
%51-53
 s1*6
%54
 \stemUp <fa, fa'~>2 \stemDown fa'2 fa1
%55-62
 s1*16
%63-64
 <reb' fa>1( <sib sol'>)
 <lab mib'>1 lab2..( solb!8)
%65-66
 s1*4
%67-69
 s1 dob1
 s1 dob1
 s1 reb1
%70
 s1*2
%71-73
 s1 dob1
 s1 dob2.( do4)
 s1 reb1
%74-76
 s1*6
%77
 s1 s4 reb2.
%78-80
 s1*6
%81-83
 s1 s4 reb2.
 solb,1 s4 reb'2.
 solb,1 s4 reb'2.
%84-86
 s1*6
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A23. NOTES PIANO BAS VOIX 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basIII = \context Staff \relative do' \new Voice { \voiceThree
%1-5
 s1*10
%6-7
 s1 s2 \tuplet 6/4 { \TUPNO r8 fa,[ lab re lab fa] }
 \tuplet 6/4  { r8 mib[ solb dob solb mib] } s2 s1 
%8-26
 s1*38
%27
 s1 \tuplet 6/4 { r8 mib[ solb sib solb mib] } \tuplet 6/4 { r8 re[ fa sib fa \stemDown \STAFFUP sib'] } \STAFFDO
%28-29
 s1*4
%30-31
 s1 \stemUp \tuplet 6/4 { r8 mib,,[ solb sib solb mib] } \tuplet 3/2 { r8 re[ <fa sib>] } s4
 s1 \tuplet 6/4 { r8 mib[ solb dob solb mib] }   \tuplet 6/4 { r8 reb[ solb sib solb reb] }
%32-33
 s1*4
%34
 \tuplet 6/4 { r8 mib[ solb dob solb mib] } \tuplet 3/2 { solb8[ mib solb dob solb mib] } s1
%35-39
 \tuplet 6/4  { r8 dob[ mib solb mib dob] } \tuplet 6/4 { mib8[ dob mib solb mib dob] }
  \tuplet 6/4 { r8 dob[ fab labb fab dob] }  \tuplet 6/4 { fab8[ dob fab labb fab dob] }
 \tuplet 6/4  { r8 dob[ mib solb mib dob] }  \tuplet 6/4 { mib8[ dob mib solb mib dob] }
  \tuplet 6/4 { r8 dob[ mibb fa! mibb dob] }  \tuplet 6/4 { r8 reb[ fab solb fab reb] }
 \tuplet 6/4  { r8 dob[ mib solb mib dob] } \tuplet 6/4 { mib8[ dob mib solb mib dob] }
  \tuplet 6/4 { r8 dob[ fab lab fab dob] }  \tuplet 6/4 { fab8[ dob fab lab fab dob] }
 \tuplet 6/4  { r8 dob[ mib solb mib dob] }  \tuplet 6/4 { mib8[ dob mib solb mib dob] }
  \tuplet 6/4 { r8 dob[ mibb fa mibb dob] }  \tuplet 6/4 { r8 reb[ fab solb fab reb] }
 \tuplet 6/4  { r8 dob[ mib solb mib dob] } \tuplet 6/4 { mib8[ dob mib solb mib dob] }
  \tuplet 3/2 { \stemDown \STAFFUP dob'8[ \STAFFDO \stemUp mib, solb] } \tuplet 3/2 { \stemDown \STAFFUP mib'8[ \STAFFDO \stemUp solb, dob] } s2
%40-42
 s1*6
%43
 \tuplet 6/4  { r8 mib,[ solb sib solb mib] }  \tuplet 6/4 { solb[ mib solb sib solb mib] }
  \tuplet 6/4 { r8 re[ fa  sib fa re] } s2
%44-46
 s1*6
%47
 \tuplet 6/4  { r8 mib[ solb sib solb mib] }  \tuplet 6/4 { solb[ mib solb sib solb mib] }
  \tuplet 6/4 { r8 re[ fa  sib fa re] }       \tuplet 6/4 { fa8[ re fa sib fa re] }
%48-50
 s1*6
%51-53
 \tuplet 6/4  { r8 mib[ sol sib sol mib] }    \tuplet 6/4 { sol[ mib sol sib sol mib] }
  \tuplet 6/4 { r8 mib[ sol sib sol mib] }    \tuplet 6/4 { sol[ mib sol sib sol mib] }
 \tuplet 6/4  { r8 mib[ lab dob lab mib] }    \tuplet 6/4 { lab[ mib lab dob lab mib] }
  \tuplet 6/4 { r8 mib[ sol reb' sol, mib] }  \tuplet 6/4 { sol[ mib sol reb' sol, mib] }
 \tuplet 6/4  { r8 mib[ lab dob lab mib] }    \tuplet 6/4 { lab[ mib lab dob lab mib] } s1
%54-59
 s1*12
%60-61
 s1 s2 \tuplet 6/4 { r8 fa[ lab  re lab fa] } 
 \tuplet 6/4  { r8 mib[ solb dob solb mib] } s2 s1
%62-75
 s1*28
%76-77
 s1 \tuplet 6/4 { r8 do[ solb' sibb solb do,] } \tuplet 6/4 { solb'8[ do, solb' sibb solb do,] }
 \tuplet 6/4  { r8 reb[ solb sib! solb reb]}   \tuplet 6/4  { solb[ reb solb sib solb reb] } s1
%78-79
 s1*4
%80-81
 s1 \tuplet 6/4 { r8 do[ solb'! sibb solb do,] } \tuplet 6/4 { solb'8[ do, solb' sibb solb do,] }
 \tuplet 6/4  { r8 reb[ solb sib! solb reb]}   \tuplet 6/4  { solb[ reb solb sib solb reb] } s1
%82-84
 s1*6
%85
 \tuplet 6/4  { r8 solb,_([ sib reb sib solb] }  \tuplet 6/4 { sib[ solb sib reb sib solb] }
  \tuplet 6/4 { sib[ solb sib reb sib solb] } \tuplet 6/4 { sib[ solb reb solb reb sib]) }
%86
 s1*2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
notePartBas = {
 \clef bass
 \KEYTIME
 \set autoBeaming = ##f
 << \basIPart \basII \basIII >>
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI: Voir SORTIE MIDI


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. DYNAMIQUES PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B1. DYNAMIQUES PARTITION COMMUNES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartCom = {
 \override DynamicTextSpanner.style = #'none
 
%1-4
s1 \pp s1
s1*2
s1*2
\tuplet 6/4 { s8 s8 \cr s4. s8 \! }   \tuplet 6/4 { s8 s4 \decr s8 s8 \! s8 } s1
%5-8
s1*2
s1 s4 s2 \cresc s4 \! 
s1*2
s1*2 \p
%9-12
s1*4
s1 \tuplet 6/4 { s8 s4 \cresc s4 s8 \! }  \tuplet 6/4 { s2 \cr s8 s8 \! }
\tuplet 6/4 { s4 s8 \decr s4. }  \tuplet 6/4 { s2 s8 \! s8 }  s1
%13-16
s1 \pp s1
s1 s4 \dimin s4 \! s2
s1*2
s1 \tuplet 6/4 { s4 s2 \cresc } s2 \! 
%17-20
s1*4
\tuplet 6/4 { s8 s2 \cresc s8 \! } s2 s1
s1*2
%21-24
s1 \pp s1
s1 s4 \dimin s4 \! s2
s1*4
%25-28
s1 \f s1
s1 s2 \decresc s2 \!
s1 \p s1
s1 \f s1
%29-32
s1 \tuplet 6/4 { s8 s4 \decresc s4 s8 \! } s2
s1*2 \p
\tuplet 12/8 { s4 \pp s8 \cr s4 s8 \! s4 \decr s8 \! s4. } \tuplet 6/4 { s8 s4 \decresc s4 s8 \! } s2
s1*2 \pp
%33-36
s1*4
s1 \ppp s1
\tuplet 12/8 { s4 s8 \cr s2 s2 s8 \! } \tuplet 6/4 { s8 \fz s8 \decr s2 } s2 \! \p
%37-40
s1 \pp s1
\tuplet 12/8 { s8 s8 \cr s2 s2 s8 s8 \! } \tuplet 6/4 { s8 \fz s8 \decr s4 s8 s8 \! } s2
s1 \pp s2 \tuplet 6/4 { s8 s4 \cresc s4 \! s8 }
s1 \f s1
%41-44
s1*2
s1 \p s1
s1*2
s1 \f s1
%45-48
s1*2
s1 \p s1
s1*4
%49-51
s1*6
%52-56
s1 \tuplet 6/4 { s8 \DTSDASHOK s4 \cresc s4. } s2
s1 s1 \!
s1 s2 s2 \pp
s1*4
%57-60
s1 s2 \cresc s2 \!
s1 s1 \p
s1*4
%61-64
s1*8
%65-68
\tuplet 6/4 { s8 s4 \cresc s4 s8 \! } s2 s1
s1*2
s1 \pp s1
s2 s4 \dimin s4 \! s1
%69-72
s1*2
\tuplet 6/4 { s8 s4 \cresc s4 s8 \! } s2 s1
s1 \fp s1 \pp
s1 s4 \dimin s4 \! s2
%73-76
s1*2
s1 \tuplet 6/4 { s4. \DTSDASHOK \CREScendo s8 \cr s4 } s2
\tuplet 6/4 { s8 \! \DTSDASHOK \cresCENdo s4. \cr s4 } s2 s2 \tuplet 6/4 { s4 s8 \! \crescenDO s4 \cr s8 \! }
s1 s1 \fz
%77-80
s1*2 \p
s1 \tuplet 6/4 { s8 s2 \cresc s8 } s2 \!
s2 \tuplet 6/4 { s8 s2 \cresc s8 } s1 \!
s1 s1 -\FFZ
%81-86
s1 \p s1 \pp
s1*2
\tuplet 6/4 { s8 s4. \dimin s4 \! } s2 s1
s1 \ppp s1
s1*4
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B2. DYNAMIQUES PARTITION PORTÉE DU HAUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartHaut = {
%1-4
s1*8
%5-8
s1*4
\tuplet 6/4 { s4 s8 ^\cr s4 s8 \! }   \tuplet 6/4 { s8 s4 ^\decr s8 s4 \! }  s1
s1*2
%9-12
s1 \tuplet 12/8 { s4 s8 ^\cr s2. s8 s8 \! s8 }
\tuplet 12/8 { s8 s4 ^\decr s4. s8 s8 \! s8 s4. } s1
s1*4
%13-16
s1*8
%17-20
s1 \tuplet 12/8 { s4 s8 ^\cr s2. s4 s8 \! }
\tuplet 12/8 { s8 s4 ^\decr s4. s8 s8 \! s8 s4. } s1
s1 \tuplet 12/8 { s4 s8 ^\cr s2. s8 s8 \! s8 }
\tuplet 12/8 { s8 s4 ^\decr s4. s8 s8 \! s8 s4. } s1
%21-24
s1*6
s1 \tuplet 12/8 { s8 s4 ^\cr s2. s8 s8 \! s8 }
%25-28
s1*2
\tuplet 12/8 { s4. ^\decr s4. s8 s8 \! s8 s4. } s1
s1*4
%29-41
s1*26
%42-44
\tuplet 12/8 { s4 s8 ^\cr s4. s4 s8 \! s4. } \tuplet 12/8 { s8 s4 ^\decr s4. s8 \! s4 s4. }
s1 \tuplet 12/8 { s8 s4 ^\cr s2. s8 \! s4 }
s1*2
%45-48
s1*2
\tuplet 12/8 { s4 s8 ^\cr s4. s4 s8 \! s4. } \tuplet 12/8 { s8 s4 ^\decr s4 s8 \! s2. }
s1*2
s1*2 ^\pp
%49-52
s1*8
%53-56
s1 \tuplet 12/8 { s4 s8 ^\cr s2. s8 s8 \! s8 }
\tuplet 12/8 { s8 ^\fz s4 ^\decr s4. s8 s8 \! s8 s4. } s1
s1*4
%57-60
s1*2
\tuplet 6/4 { s8 s8 ^\cr s4. s8 \! } \tuplet 6/4 { s4. ^\decr s8 \! s4 }  s1
s1*4
%61-64
\tuplet 6/4 { s8 s8 ^\cr s4. s8 \! } \tuplet 6/4 { s4. ^\decr s8 s8 \! s8 }  s1
s1*2
s1 \tuplet 12/8 { s4 s8 ^\cr s2. s8 s8 \! s8 }
\tuplet 12/8 { s8 s4 ^\decr s4. s8 s8 \! s8 s4. } s1
%65-68
s1*8
%69-72
s1*2
s1 \tuplet 12/8 { s8 s4 ^\cr s8 s8 s8 \! s8 s4 ^\decr s8 s8 \! s8 }
s1*4
%73-76
s1*6
\tuplet 12/8 { s8 s4 ^\cr s2. s8 \! s4 } \tuplet 12/8 { s8 s4 ^\decr s4. s4 s8 \! s4. }
%77-80
s1 s1 ^\pp
s1*2
s1 \tuplet 12/8 { s8 s4 ^\cr s2. s8 s8 \! s8 } 
s1 \tuplet 12/8 { s8 s4 ^\decr s2. s4 s8 \! }
%81-86
s1*12
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B3. DYNAMIQUES PARTITION PORTÉE DU BAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynPartBas = {
 \override DynamicTextSpanner.style = #'none
 
%1-24
s1*48
%25-28
s1 _\fz s1 _\fz
s1 _\fz s1
s1*4
%29-35
\tuplet 3/2 { s8 s4 \decr } s4 \tuplet 3/2 { s4 s8 \! } s4 s1
s1*12
%36-40
s1 s1 _\fz
s1*2
s1 s1 _\fz
s1*4
%41-45
s1 _\fz s1 _\fz
s1*2
s1 s1 _\f
s1 _\fz s1 _\f
s1 _\fz s1 _\fz
%46-77
s1*82
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C. DYNAMIQUES MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. DYNAMIQUES MIDI SAUF HAUT VOIX 2 ET BAS VOIX 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiA = {
 
%1-4
s1 \pp s1
s1*2
s1*2
s2 s2 \mp s1 \p
%5-8
s1*4
s2 s2 \mf s1 \p
s1*2 \p
%9-10
s1*2
s2. \mf s4 \p s1
%11-12
s1. s2 \mp
s2. \mf s4 \p s1
%13-15
s1 \pp s1
s1 s1 \decr
s1 \! \ppp s1 
%16-18
s1 s2 s2 \cr
s1*2
s2. \! \mf s4 \p s1
%19-20
s1 \cr s1
s2. \! \f s4 \mp s1
%21-23
s1 \pp s1
s1 s1 \decr
s1 \! \ppp s1 
%24
s1 s2 s2 \cr
%25-28
s1 \! \f s1
s1 \decr s1
s1 \! \p s1
s1 \f s1
%29-32
s1 \decr s1
s1 \! \p s1
s1 \pp s2 s2 \ppp
s1*2 \pp
%33-36
s1*4
s1 \ppp s1
s1 \cr s2 \! \f \decr s2 \! \p
%37-40
s1 \pp s1
s1 \cr s1 \! \f \decr
s1 \! \pp s2 s2 \cr
s1 \! \f s1
%41
s1*2
%42-43
s1 \p \cr s1 \! \mf \decr
s1 \! \p s1 \cr
s1 \! \f s1
%45
s1*2
%46
s1 \p \cr s1 \! \mf \decr
s1 \! \p s1
s1*2 \pp
%49-51
s1*6
%52-54
s1 s1 \cr
s1*2
s1 \! \f \decr s2 s2 \! \pp
%55-57
s1*6
%58
s2 s2 \mp s1 \pp
%59-60
s1*4
%61-64
s2 s2 \mp s1 \pp
s1*4
s2. \mp s4 \pp s1
%65-69
s1 \cr s1
s1 \! \mf s1
s1*2 \pp
s1 s1 \decr
s1 \! \ppp s1
%70
s1 \cr s1
%71-73
s1 \! \f s1 \pp
s1 s1 \decr
s1 \! \ppp s1
%74-76
s1 s1 \cr
s1*2
s1 s1 \! \ff
%77
s1 \p s1 \pp
%78-80
s1 s1 \cr
s1*2
s1 \! \f s1 \ff
%81-86
s1 \p s1 \pp
s1*2
s1 \decr s1
s1 \! \ppp s1
\tempo 4=110 s1 \tempo 4=90 s2 \tempo 4=60 s2
s1*2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. DYNAMIQUES MIDI HAUT VOIX 2 ET BAS VOIX 3 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynMidiB = {
 
%1-4
s1 \pp s1
s1 s1 \p
s1*2
s2 \cr s2 \! \mp \decr s2 \! \pp s2
%5-8
s1*4
s2 \cr s2 \! \mp \decr s2 \! \pp s2
s1*2
%9-10
s2. s4 \cr s1
s1 \! \mp \decr s1 \! \pp
%11-12
s1 s1 \cr
s1 \! \mp \decr s1 \! \pp
%13-15
s1 \pp s1
s1 s1 \decr
s1*2
%16-18
s1 \! \ppp s1 \cr
s1*2
s1 \! \p \decr s1 \! \ppp
%19-20
s1 \cr s1
s1 \! \p \decr s1 \! \ppp
%21-23
s1 \pp s1
s1 s1 \decr
s1*2
%24
s1 s1 \! \ppp \cr
%25-28
s2. \! \ff s4 \f s2. \ff s4 \f
s1 \ff \decr s1
s1 \! \p s1
s1 \f s1
%29-32
s1 \decr s1
s1 \! \p s1
s1 \pp s1
s1*2
%33-36
s1*4
s1 \ppp s1
s1 \cr s2 \! \f \decr s2 \! \p
%37-40
s1 \pp s1
s1 \cr s1 \! \f \decr
s1 \! \pp s2 s2 \cr
s1 \! \f s1
%41
s2. \ff s4 \f s2. \ff s4 \f
%42-43
s4 \p s2. \cr s2 \! \mf \decr s2 \! \p
s1. s2 \cr
s2. \! \ff s4 \f s2. \ff s4 \f
%45
s1*2
%46
s4 \p s2. \cr s2 \! \mf \decr s2 \! \p
s1*2
s1*2 \pp
%49-52
s1*8
%53-54
s1  s1 \cr
s1 \! \f \decr s2 \! \p \tuplet 6/4 { \tempo 4=100 s8 \tempo 4=80 s8 \tempo 4=60 s8 \tempo 4=40 s8 \tempo 4=60 s8 \tempo 4=90 s8 }
%55-56
\tempo 4=120 s1*4
%57
s1*2
%58
s2 \cr s2 \! \mp \decr s1 \! \pp
%59-60
s1*4
%61-64
s2 \cr s2 \! \mp \decr s1 \! \pp
s1*2
s1 s1 \cr
s1 \! \mp \decr s1 \! \pp
%65-68
s2 s1. \cr
s1 \! \decr s1 \! \pp
s1*2
s2 s1. \decr
%69
s1*2
%70
s1 \! \ppp \cr s1
%71-72
s1 \! \f s1 \pp
s1 s1 \decr
%73
s1*2
%74-76
s1 \! \ppp s1 \cr
s1*2
s1 s1 \! \ff \decr
%77
s1 \! \p s1 \pp
%78-80
s1. s2 \cr
s1*2
s1 \! \f \set Staff.midiMaximumVolume = #1 s1 \ff \decr
%81-86
s1 \! \p s1 \pp
s1*2
s1 \decr s1
s1 \! \ppp s1
s1*4
}

pedal = { s1 \sustainOn }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new PianoStaff <<
   \new Dynamics = "updyn"    \dynPartHaut
   \new Staff    = "upII"    << \notePartHaut >>
   \new Dynamics = "dynamics" \dynPartCom
   \new Staff    = "downIII"  << \notePartBas  >>
   \new Dynamics = "downdyn"  \dynPartBas
   \new Dynamics = "pedal"    \pedal
  >>
 >>
 \layout {
  \context {
   \Score
   \override SpacingSpanner.spacing-increment = #1.0
   \override SpacingSpanner.shortest-duration-space = #1.4
   pedalSustainStrings = #'("Ped." "*Ped." "*")
  }
 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE MIDI (pas de \layout)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%% RÉSUMÉS POUR LE MIDI
noteMidiHautI = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1.0
 \hautI
}
noteMidiHautII = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.45
 \hautII
}
noteMidiBasI = \context Staff \new Voice { \voiceOne
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
 \basIa \basIaM \basIb \basIbM \basIc \basIcM \basId \basIdM \basIe \basIeM
 \basIf \basIfM \basIg \basIgM \basIh \basIhM \basIi \basIiM \basIj
}
noteMidiBasII = {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.8
 \basII
}
noteMidiBasIII= {
 \set Staff.midiInstrument = "acoustic grand"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #0.55
 \basIII
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
 ("ff" .    0.97)
 ("f" .     0.90)
 ("mf" .    0.80)
 ("mp" .    0.72)
 ("p" .     0.64)
 ("pp" .    0.55)
 ("ppp" .   0.43)
 ("pppp" .  0.34)
 ("ppppp" . 0.23)
 )
 my-absolute-volume-alist))

%%%%%%%%%%%%%%%%%%%% CHAQUE DYNAMIQUE RENCONTRÉE PRENDRA LE NOUVEAU VOLUME SPÉCIFIÉ

#(define (my-dynamic-absolute-volume s)
 (let ((entry (assoc s my-absolute-volume-alist)))
  (if entry (cdr entry))
))

%%%%%%%%%%%%%%%%%%%% SILENCE AVANT MIDI (IL Y A PARFOIS UN CRAQUEMENT À L'OUVERTURE D'UN FICHIER MIDI)
SILENCE = { \KEYTIME s1 s1 }


\score {
 <<
  \new Staff = up      { \SILENCE << \noteMidiHautI  \dynMidiA \pedal  >> }
  \new Staff = upII    { \SILENCE << \noteMidiHautII \dynMidiA >> }
   
  \new Staff = down    { \SILENCE << \noteMidiBasI   \dynMidiB \pedal  >> }
  \new Staff = downII  { \SILENCE << \noteMidiBasII  \dynMidiB \pedal >> }
  \new Staff = downIII { \SILENCE << \noteMidiBasIII \dynMidiA >> }
 >>
 \midi {
  \context {
   \Score
% ÉCHELLE DU VOLUME DE SORTIE MIDI
   dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
   tempoWholesPerMinute = #(ly:make-moment 120/4)
  }
  \context {
   \type "Performer_group"
   \name Dynamics
   \consists "Piano_pedal_performer"
  }
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           FIN DU FICHIER SchubertF-D899-3-Impromptu.ly
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
