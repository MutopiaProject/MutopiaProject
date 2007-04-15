% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.10.15"
\include "italiano.ly" 
%% "Notre coeur n'était-il pas tout brûlant au-dedans de nous, quand il nous parlait en chemin, quand il nous expliquait les écritures ?(Lc,24)" 
%% "Were not our hearts burning inside us as he talked to us on the road and explained the scriptures to us? (Lc, 24)"
%%
%% Version 1 
%%
\header{
  title = \markup {\center-align { " Prélude et fugue en la majeur "  \medium " " }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Johann Sebastian Bach (1685-1750)"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Bach Gesellschaft"
  opus = "BWV 536"
  lastupdated = "2007-04-07 Dimanche de Pâques"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Prélude et fugue en la majeur"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  style="Baroque"
 footer = "Mutopia-2007/04/15-954"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%#(set-default-paper-size "a4" 'landscape)
%#(set-global-staff-size 18)

% macros von Urs Metzger.
adjustSlash = { \once \override TextScript #'extra-offset = #'( -2 . 5 ) }
halsdown = { \stemDown \tieDown \slurDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral }
halsup = { \stemUp \tieUp \slurUp}
hideBrackets = { \override TupletBracket #'bracket-visibility = ##f }
hideTripletNumber = { \set tupletNumberFormatFunction = #'() }
mmrestdown = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp = { \once \override MultiMeasureRest #'staff-position = #6 }
mmrestuppp = { \once \override MultiMeasureRest #'staff-position = #8 }
mmrestupppp = { \once \override MultiMeasureRest #'staff-position = #10 }
noflag = { \once \override Stem #'flag-style = #'no-flag }
restdownnn = { \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -3.0 ) }
restright = { \once \override Rest #'extra-offset = #'( 4.0 . 0.0 ) }
scriptdown = { \once \override Script #'extra-offset = #'(0 . -1.3) }
scriptdownn = { \once \override Script #'extra-offset = #'(0 . -2.3) }
scriptdownnn = { \once \override Script #'extra-offset = #'(0 . -3.3) }
scriptup = { \once \override Script #'extra-offset = #'(0 . 1.3) }
showBrackets = { \override TupletBracket #'bracket-visibility = ##t }
staffdown = { \change Staff = "basse" \halsup }
staffup = { \change Staff = "dessus" \halsdown }
std = { \change Staff = "basse" }
stu = { \change Staff = "dessus" }

% macros von Roland Goretzki.
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations '()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
                                  'property-operations operations
                                  'context-type context
                                  'element element)
                            (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional once)
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
% BogenKurve: -------------------------------------------------------- %
#(define* (BogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'height-limit dy once)))
%
% Bogen: ------------------------------------------------------------- %
#(define* (Bogen dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'extra-offset (cons dx dy) once)))
% HalteBogenKurve: --------------------------------------------------- %
#(define* (HalteBogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'Tie 'height-limit dy once)))
%
% Tie: --------------------------------------------------------------- %
#(define* (Tie dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Tie 'extra-offset (cons dx dy) once)))
%
#(define* (silun dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Rest 'extra-offset (cons dx dy) once)))

#(define* (silaa dx #:optional once)
  (ly:export (mus:override 'Bottom 'MultiMeasureRest 'staff-position dx once)))

#(define* (modifpostexte dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TextScript 'extra-offset (cons dx dy) once)))

%\once\override Voice.TextScript #'extra-offset = #'(-1.5 . -1.0)

globalPrelude = {
  \key la \major
  \time 4/4
}

sopranoPrelude = \relative do''{
  
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 3)
  \override Score.RehearsalMark #'self-alignment-X = #'-1
  \mark \markup { \fontsize #'2 Prélude }
  \globalPrelude\halsup
  %%  1 :
  r16 la16 dod16 mi16 la16 mi16 dod16 mi16 la,16 mi16 dod16 mi16 \staffdown la,16 mi16 dod16 mi16 
  \staffup #(silun 0 -2 #t) r2 #(silun 0 -2 #t) r16 la'16 re16 fad16 la16 fad16 re16 fad16 
  \stemUp la,16 fad16 re16 fad16 \staffdown la,16 fad16 re16 fad16 la,8 #(silun 0 -2 #t) r8  #(silun 0 -2 #t) r4
  \staffup  #(silun 0 -2 #t) r16 \stemNeutral si''16 re16 sold16 si16 sold16 re16 sold16 \stemUp si,16 sold16 re16 sold16  #(silun 0 -2 #t) r16 re'16 sold,16 re'16 
  %% 5 :
  dod16 mi16 dod16 la16 fad'16 re16 la16 re16 dod16 mi16 dod16 la16 re16 si16 fad16 si16 
  la16 dod16 la16 mi16 si'16 sold16 re16 sold16 mi16 la16 mi16 dod16 sold'16 re16 si16 re16 
  dod16 mi16 dod16 la16 re16 si16 sold16 si16 dod16 mi16 dod16 la16 sold'16 re16 si16 re16 
  mi16 la16 mi16 dod16 si'16 sold16 re16 sold16 la16 dod16 la16 mi16 re'16 si16 sold16 si16 
  dod16 mi16 dod16 la16 sold'16 re16 si16 re16 mi16 la16 mi16 dod16 si'16 sold16 re16 sold16 
  %% 10 :
%%$  << 
%%$    {\stemUp dod,4} 
%%$    \\
%%$    {\stemUp la'4}
%%$  >> r4 r2
  la4  #(silun 0 +1 #t) r4 r2
  %% 11 :
  s4 s4 s4 #(silun 0 -1 #t) r16 si16 fad16 la16 
  sold16 si16 sold16 mi16 sold16 mi16 si16 re!16 dod16 mi16 dod16 la16 fad'16 red!16 la16 dod16 
  si16 red16 si16 sold16 mi'16 dod16 sold16 si16 la16 dod16 la16 fad16 red'!16 la16 fad16 la16 
  << {#(silun 0 -1 #t) r16 mi'16 si16 sold16 \stemDown mi16 \staffdown \stemUp si16 sold16 mi16 \staffup \stemUp \tieUp #(silun 0 -2 #t) r16 mi'16 sold16 si16 mi16 si16 sold16 si16} \\ {\stemDown sold8 s8 s4 s2} >> 
  %% 15 :
  la16 dod16 la16 fad16 si16 fad16 re!16 fad16 sold16 si16 sold16 mi16 la4 ~
  la4 sold4 la4 #(silun 0 -1 #t) r4 
  \stemDown #(silun 0 -2 #t) r16 si16 red16 fad16 si16 sold16 mi16 sold16 la4 r16 si16 fad16 la16 
  sold4 r16 la16 mi16 sold16 fad4 r16 sold16 red16 fad16 
  mid16 dod16 mid16 sold16 \stemUp la4 sold2 ~
  %% 20 :
  sold4 fad2 mi!4 ~ 
  mi4 re2 dod4 ~
  dod4 #(silun 0 -1 #t) r16 si16 fad16 la16 sold!16 mi16 sold16 si16 mi4
  re4 ~ re16 mi16 si16 re16 dod4 r16 la'16 mi16 sol16 
  fad4 r16 si16 fad16 la16 sold!4 la4 ~
  %% 25 :
  la4 sold4 ~ sold16 la16 mi16 sold16 fad4 ~
  fad4 mi4 ~ mi16 fad16 dod16 mi16 re4 ~
  re4 dod2 #(silun 0 -1 #t) r16 si16 fad16 la16 
  sold16 mi16 sold16 si16 mi16 dod16 la16 dod16 re4 ~ re16 si16 sold16 mi16 
  << {\stemUp dod'4 red4 mi4 r4} \\ {\stemUp la,4 la4 si4 r4} >> 
  %% 30 :
  r16 la16 dod16 mi16 la16 fad16 red16 fad16 << {sold16 mi16 la8 ~ la16 la16 sold8} \\ {#(silun -0.6 2.1 #t) r8 #(silun -1.1 1.6 #t) r16 re8. [ re16 ]}>> 
  << {\stemUp la'16 la,16 dod16 mi16} \\ {\shiftOn dod4} >> la'16 mi16 dod16 mi16 fad16 re16 si16 re16 sold,8. sold16 
  la1 ^\fermata

  
  \bar "|."
}

altoPrelude = \relative do {
  \globalPrelude \halsdown
  %%  1 :
  s1
  \staffdown la8 #(silun 0 +2 #t) r8 #(silun 0 +2 #t) r4 #(silun 0 +2 #t) r2 
  s1
  s4 s4 s4 r8 re'8 
  %%  5 :
  r8 mi8 r8 fad8 r8 mi8 r8 re8 
  r8 dod8 r8 si8 r8 la8 r8 sold8 
  r8 mi8 r8 re8 r8 mi8 r8 sold8 
  r8 la8 r8 si8 r8 dod8 r8 re8 
  \staffup r8 mi8 r8 sold8 r8 la8 r8 si8 
  %% 10 :
  << {s4} \\ {\stemUp \shiftOn dod4} >> r4 r2 % s4 r4 r2
  s4 s4 #(silun 0 -1 #t) r4 si4
  si4 \staffdown r8 sold8 r8 sold8 r8 fad8 
  r8 fad8 r8 mi8 r8 mi8 r8 red8 
  mi8 #(silun 0 +5 #t) r8 s4 s4 s4 
  %% 15 :
  \staffup r2 r4 r16 mi16 dod16 mi16 
  re16 fad16 re16 si16 r16 mi16 si16 re16 dod4 #(silun 0 -1 #t) r16 fad16 dod16 mi16 
  \staffdown red4 mi4 r16 fad16 dod16 mi16 red!4 
  r16 mi16 si16 re!16 dod4 r16 re16 la16 dod16 si4 ~
  si4 la16 \staffup re'!16 la16 dod16 si16 re16 si16 sold16 dod4 ~
  %% 20 :
  dod2 si16 re16 si16 sold16 ~ sold4 
  fad2 r16 si16 sold16 mi16 r16 la16 mi16 sol16 
  fad2 mi4 r16 dod'16 la16 dod16 ~
  dod4 si4 ~ si4 la8 mi'8 ~
  mi4 re4 ~ re16 mi16 si16 re16 dod4 
  %% 25 :
  r16 fad16 re16 si16 ~ si4 la2 
  sold2 fad2 
  r16 si16 sold16 mi16 ~ mi4 fad2
  mi2 fad4 sold4 
  \stemDown mi4 fad4 mi4 r4
  %% 30 :
  r4 r8 si'8 ~ si8 [ dod8 ] si4 
  la4 r4 r4 r16 mi16 si16 re16 
  dod1 
 
}

tenorPrelude = \relative do' {
  \globalPrelude
  %%  1 :
  s1 
  s1 
  s1
  \stemDown s4 s4 s4 si4 
  %%  5 :
  la4 la4 sol4 fad4 
  mi4 re4 dod4 si4 
  la4 sold8 si8 la4 si4 
  dod4 re4 mi4 sold8 si8 
  la4 si4 dod4 re4 
  %% 10 :
  \staffup mi4 r4 r2 
  \staffdown r16 si,32 [ dod32 red32 mi32 fad32 sold32 ] \stemUp la32 [ fad32 sold32 la32 si32 dod32 \staffup \stemUp red32 mi32 ] \stemDown fad16 si,16 red!16 fad16 ~ fad4 
  mi4 \staffdown \stemDown si4 la4 la4 
  sold4 sold4 fad4 fad4 
  mi4 s4 r4 sold4 
  %% 15 :
  fad2 mi2 
  fad4 mi4 r16 la,16 dod16 mi16 \tieDown la4 ~
  la4 sold4 fad4 si4 
  mi,4 la4 re,4 sold4 
  dod,4 fad4 r4 r16 dod'16 sold16 si16 
  %% 20 :
  la16 dod16 la16 fad16 re'2 dod4 
  r16 dod16 lad16 fad16 si2 la!4 
  r16 la16 fad16 re16 re'8 dod8 si4 la4 ~
  la16 fad16 la16 dod16 mi4 ~ mi16 la,16 dod16 mi16 \clef violin \stemUp la4 ~
  la16 la16 fad16 re16 si'2 la16 fad16 dod16 mi16 
  %% 25 :
  re4 mi2 re4 
  \clef "bass" \stemDown r16 re16 si16 sold16 dod2 si4 ~
  si4 la4 ~ la16 re,16 fad16 la16 re4 ~
  re4 dod4 ~ dod16 re16 la16 dod16 si4 
  r16 la,16 dod16 mi16 la16 fad16 red16 fad16 sold16 mi16 sold16 si16 re!16 si16 sold16 si16 
  %% 30 :
  dod4 red4 mi2 ~
  mi4 r4 r4 mi,4 ~
  mi1 ^\fermata

 
}

pedalePrelude = \relative do { 
  \globalPrelude \clef bass
  %%  1 :
  R1
  R1
  R1
  R1
  %%  5 :
  la1 ~
  la1 ~
  la1 ~
  la1 ~
  la1 ~
  %% 10 :
  la4 r16 la'16 dod16 la16 mi'16 si16 dod16 sold16 la16 mi16 fad16 dod16 
  red1 
  mi1 ~
  mi1 ~
  mi2 mi,4 mi'4 ~
  %% 15 :
  mi4 re!2 dod4 
  si4 mi4 la,4 r4 
  R1 
  R1 
  r4 fad'2 mid4 
  %% 20 :
  fad4 r16 si16 fad16 la16 sold4 r16 dod16 sold16 si16 
  lad4 r16 si16 fad16 la!16 sold4 la8 la,8 
  re2 ~ re4 dod4 
  fad,4 sold4 la4 dod4 
  re2 mi4 fad4 
  %% 25 :
  si,4 r16 mi'16 si16 re16 dod4 
  r16 re16 la16 dod16 
  si4 r16 dod16 sold16 si16 lad4 r16 si16 fad16 la!16 
  sold4 r16 la16 la,16 dod16 re,2 
  mi1 ~
  %% 30 :
  mi1 ~
  mi1 
  la1 ~
  la1^\fermata
 
}

globalFugue = {
  \key la \major
  \time 3/4
}

sopranoFugue = \relative do'' {
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 3)
  \override Score.RehearsalMark #'self-alignment-X = #'-1
  \mark \markup { \fontsize #'2 Fugue }
  \halsup
  %%  1 :
  #(silaa +2 #f) R2.*8
  #(silaa +4 #f) R2.*12
  %% 21 :
  r4 mi4 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2 
  %% 25 :
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  la2 si8 la8
  %% 30 :
  sold4. la8 si4 
  dod4. red8 mi8 dod8 
  fad4 si,4 mi4 ~
  mi4 red4 mi4 
  red4 dod4 fad4 ~
  %% 35 :
  fad4 mi4 red4 
  dod4 si4 mi4 ~
  mi4 red2 ~
  red4 dod4 fad4 
  si,4  #(Tie +0 +0.8 #t) mi2 ~
  %% 40 :
  mi2 red4 
  mi4. re!8 dod8 si8 
  \once \override NoteColumn #'force-hshift = #+1.5 la4. la8 si8 dod8 
  #(Tie +0 +0.8 #t) re2.   ~
  re8 dod8 re8 dod8 si8 la8 
  %% 45 :
  sold4  #(silun 0 -2 #t) r4 #(silun 0 -2 #t) r4 
  #(silaa +2 #t) R2.
  r4 mi'4 fad4 
  mi4 re2 
  dod8 mi8 la,8 mi'8 la4 ~
  %% 50 :
  la8 sold8 r8 la8 fad8 la8 
  si4. si8 fad8 sold8 
  r8 fad8 r8 si8 mi,8 sold8 
  la4. la8 fad8 si8 
  sold4 r8 mi8 la4 
  %% 55 :
  red,8 si'4 la8 sold8 fad8 
  mi8 sold8 la2 
  sold4 r8 la8 fad8 re!8 
  la'8 la,8 r8 la8 fad8 sold8 
  la4 r8 mi'8 si8 sold8 
  %% 60 :
  la8 fad'8 sold8 mi8 fad8 dod8 
  re8 fad8 si,4. re8 
  dod8 mi8 la,8 dod8 si8 re8 
  sold,8 si8 mi,4 ~ mi8 mi'8 
  re8 dod8 re8 fad8 mi8 re8 
  %% 65 :
  dod4 mi4 fad4 
  mi4 re2 
  dod2 re4 
  dod4 si2 
  la4 la4 dod4 
  %% 70 :
  si4 la2 
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  %% 75 :
  la4 sold8 fad8 sold4 ~
  sold8 dod8 fad,2 
  \once\override Staff.NoteCollision #'merge-differently-dotted = ##t mi8 si'8 mi4. re!8 ~
  re8 dod8 r8 fad8 re8 si8 
  mi4 r8 mi8 si8 dod8 ~
  %% 80 :   
  dod8 si8 r8 mi8 dod8 la8 
  re4 #(silun 0 -1 #t) r8 dod8 re8 mi8 
  dod2 si4
  #(silun 0 -1 #t) r8 si8 dod8 re8 mi8 dod8 
  la4 si8 dod8 re4 ~
  %% 85 :
  re8 dod8 re8 mi8 fad4 
  mi8 la4 sold8 fad4 
  mid4 fad8 sold8 dod,4 
  si8 dod8 #(modifpostexte -0.5 -0.5 #t) la4.^\markup{"(" \hspace #-0.3 \raise #0.8 \musicglyph #"scripts.prall" \hspace #-1.1 ")"} sold8 
  fad4 la4 si4 
  %% 90 :
  la4 red,4 sold4 ~
  sold4 fad4 mi!4 
  re!4 dod4 fad4 ~
  fad4 mi2 ~
  mi4 red4 sold4 
  %% 95 :
  dod,4 fad2 ~
  fad2 #(modifpostexte -0.7 -0.5 #t) mid4^\markup{"(" \hspace #-0.0 \raise #0.0 \musicglyph #"scripts.trill" \hspace #-1.1 ")"}
  fad8 fad'8 lad,8 dod8 si8 re8 
  dod2. ~
  dod8 re8 si8 dod8 lad8 dod8 
  %% 100 :
  si2. ~
  si8 re8 dod8 re8 si8 dod8 
  lad8 si8 sold8 si8 lad8 dod8 
  si4 dod2 ~
  dod8 dod8 si8 lad8 si4 ~
  %% 105 :
  si8 lad8 si8 dod8 re8 mi8 
  fad2. 
  mi8 re8 dod8 re8 mi8 re8 
  dod8 re8 si8 lad8 si8 re8 
  dod8 re8 mi8 sol8 fad8 mi8 
  %% 110 :
  re8 mi8 fad8 la8 sol8 fad8 
  mi4 la2 ~
  la4 sol2 ~
  sol4. sol8 fad8 la8 
  si8 mi,8 mi4. re8 
  %% 115 :
  re4 la'4 si4 
  la4 sol2 
  fad2 la4 
  sol4 fad2 
  mi2 la4 
  %% 120 :
  re,4 sol2 ~
  sol4 fad8 mi8 fad8 sol8 
  la8 si8 mi,4. re8 
  re8 la8 re8 dod8 si8 la8 
  sold!4 la4. si8 ~
  %% 125 :
  si8 mi,8 la8 si8 dod4 ~
  dod8 si4 mi,8 la4 ~
  la8 la8 sold8 fad8 sold8 la8 
  fad2 si4 ~
  si8 si8 la8 sold8 la8 dod8 
  %% 130 :
  si8 la8 sold8 fad'8 mi8 re8 
  dod2. ~
  dod8 dod8 si8 la8 si8 dod8 
  la4 fad'8 sold8 la4 ~
  la8 la8 sold8 fad8 mi4 ~
  %% 135 :
  mi8 sold8 fad8 mi8 red4 
  mi4 r4 #(silun 0 -0.6 #t) r4 
  R2.*8
  %% 145 :
  #(silun 0 -1 #t) r4 mi4 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2 
  si2 mi4 
  %% 150 :
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  la8 mi'8 fad8 sold8 la4 ~
  la4 sold2 ~
  %% 155 :
  sold4 fad2 ~
  fad4 mi2 ~
  mi4 re2 ~
  re4 dod2 ~
  dod4. dod8 si8 la8 
  %% 160 :
  sold4 la8 sold8 la8 si8 
  sold8 si8 mi4 re4 ~
  re8 dod8 fad4 si4 ~
  si4 la4 sold4 
  fad4 mi4 la4 ~
  %% 165 :
  la4 sold2 ~ 
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 
  la8 sold8 fad8 mi8 re8 dod8 
  %% 170 :
  fad8 mi8 re8 dod8 si8 la8 
  sold4. sold8 la8 si8 
  dod8 re8 mi8 fad8 sold8 la8 
  si2 ~ si8 la8 
  r8 sold8 r8 sold8 r8 fad8 
  %% 175 :
  r8 mi8 r8 mi8 r8 re!8 
  r8 dod8 r8 si8 r8 la8 
  sold4 r4 r4 
  R2.
  r8 mi'8 r8 re8 r8 dod8 
  %% 180:
  r8 si8 r8 la8 r8 sold8 
  r8 la8 r8 re,8 la'8 sold8 
  %% la8^\fermata 
  #(modifpostexte 1.2 0.4 #t) la8^\markup{\musicglyph #"scripts.ufermata"} r8 r4 r4 \bar "|."
}

altoFugue = \relative do'' {
  \globalFugue \halsdown
  %%  1 :
  #(silaa -2 #f) R2.*8
  r4 la4 dod4 
  %% 10 :
  si4 la2 
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  %% 15 :
  la4 sold8 fad8 sold4 
  dod4 fad,2 
  mi4 sold4 dod4 
  fad,4 si2 ~
  si4 mi,4 la4 ~
  %% 20 :
  la4 sold2
  la2 re4 
  dod4 fad,4 si4 ~
  si4 mi,4 sol4 
  fad4 mi4 la4 ~
  %% 25 :
  la4 sold!2 ~
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 ~
  sold4 fad2 ~
  %% 30 :
  fad4 mi2 ~
  mi4 la2 ~
  la4 sold8 fad8 sold8 la8 
  si4. la8 sold8 la8 
  si4 #(silun 0 1 #t) r4 fad4 
  %% 35 :
  si4. sold8 fad8 sold8 
  la4 r4 mi4 
  la4. sold8 fad8 la8 
  sold4 la8 sold8 fad8 mi8 
  fad4 si4. la8 
  %% 40 :
  sold4 la2 ~
  la2 sold4 ~
  sold8 sold8 fad2 ~
  fad8 fad8 sold8 la8 si4 
  mi,4 fad8 mi8 re8 dod8 
  %% 45 :
  \staffdown si8 mi8 mi,8 mi'8 la,8 re8 
  sold,8 dod8 fad,8 si8 la8 si8 
  dod8 mi8 la,8 \staffup la'8 re,8 la'8 
  \staffdown la,8 \staffup la'8 si,8 sold'8 fad8 sold8 
  la4 r4 #(silun 0 +1 #t) r8 mi'8 
  %% 50 :
  re4 dod4 fad4 ~
  fad8 fad8 mi4 re4 
  dod4 si4 mi4 ~
  mi8 mi8 red2 ~
  red8 red8 dod4. fad8 
  %% 55 :
  si,4 mi2 ~
  mi4. fad8 red4 
  mi4 \staffdown mi,4 fad4 
  mi4 re2 
  dod2 mi4 
  %% 60 :
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  %% 65 :
  la4 r4 r4 
  \staffup #(silaa -4 #t) R2. 
  #(silun 0 +0.5 #t) r4 mi'4 fad4 
  mi4 re2 
  dod4 r4 la'4 
  %% 70 :
  sold4 dod,4 fad4 ~
  fad4 mi4 re!4 
  dod4 si4 mi4 ~
  mi4 red2 ~
  red4 dod4 fad4 
  %% 75 :
  si,4 mi2 ~
  mi2 ~ mi8 red8 
  mi4. sold8 la4 
  r8 mi8 la4 r4 
  r8 mi8 la4 r4 
  %% 80 :
  r8 re,8 la'4 r4 
  r8 fad8 si2 
  la4 r8 fad8 sold!8 la8 
  sold4 mi2 ~
  mi8 fad8 re4 si'4 
  %% 85 :
  mi,8 la4 sol8 fad8 sold8 
  la8 dod4 si8 la8 si8 
  dod8 re8 dod8 si8 la4 
  sold4. fad8 mid4 
  fad4 #(silun 0 +0.6 #t) r4 r4 
  %% 90 :
  #(silaa -8 #f) R2.*7
  #(silaa -4 #f) R2.*5
  %% 102 :
  fad2 sol4 
  fad4 mi2 
  re2 fad4 
  %% 105 :
  mi4 \staffdown re2 
  dod2 fad4 
  si,4 mi2 ~
  mi4 re8 dod8 re4 
  sol!4 dod,2 
  %% 110 :
  si8 dod8 re8 fad8 mi8 re8 
  dod4 \staffup mi'8 sol8 fad8 mi8 
  re8 dod8 si8 fad'8 mi8 re8 
  dod8 si8 la4 ~ la8 \staffdown fad8 
  mi8 re8 ~ re4 dod4 
  %% 115 :
  re4 \staffup r4 r4 
  R2. 
  r4 re'4 fad4 
  mi4 re2 ~
  re4 dod2 ~
  %% 120 :
  dod4 si4 mi4 
  la,4 dod4 re8 mi8 
  fad8 re4 si8 dod4 
  re4 re,4 fad4 
  mi4 re2 
  %% 125 :
  dod2 mi4 
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  %% 130 :
  fad4 \staffdown si,2 ~ 
  si8 \staffup si'8 la8 sold8 la4 ~
  la8 \staffdown la8 sold8 fad8 sold4 
  fad8 sold8 la8 sold8 fad4
  \staffup si4. la8 sold4 ~
  %% 135 :
  sold8 si8 la8 sold8 fad8 la8 
  sold4 si4 dod4 
  si4 la2 
  sold2 si4 
  la4 sold2
  %% 140 :
  fad2 la4 
  re,4 sold2 ~
  sold4 fad8 mi8 fad4 
  si4 mi,4. re8 
  dod8 mi8 re8 dod8 re8 mi8 
  %% 145 :
  dod4 r8 mi8 la4 
  r8 si8 la8 dod8 si8 la8 
  sold4 r8 la8 si4 
  r8 la8 sold8 si8 la8 sold8 
  fad4 sold8 la8 si4 
  %% 150 :
  r8 mi,8 fad8 sold8 la8 si8 
  sold4 la8 sold8 la8 sold8 
  fad4 r8 fad8 mi4 ~
  mi4 r4 r8 si'8 
  dod8 re8 mi2 ~
  %% 155 :
  mi4. dod8 re4 ~
  re4. si8 dod4 ~
  dod8 la8 si2 ~
  si8 sold8 la2 ~
  la8 sold8 fad2 
  %% 160 :
  mi2. ~
  mi4 r8 mi8 la4 
  sold4 \staffdown r8 la8 fad4 
  mi8 \staffup mi'8 dod4 si8 dod8 
  re4 la8 si8 dod8 la8 
  %% 165 :
  re8 mi8 re8 dod8 si8 re8 
  dod8 si8 \staffdown la8 sold8 fad4 
  sold8 fad8 mi8 re8 mi4 ~
  mi8 mi8 re8 dod8 re8 mi8 
  dod4 re4 mi4 
  %% 170 :
  re2. 
  \staffup r8 fad8 mi4 fad8 sold8 
  la8 si8 dod8 re8 mi8 fad8 ~
  fad8 fad8 mi8 re8 dod4
  si4 la4 la4 
  %% 175 :
  sold4 fad4 mi4 
  mi4 mi4 fad4 
  mi4 r4 r4 
  s2. 
  r4 <fad la>4 <mi sold>4 
  %% 180 :
  <re fad>4 <dod mi>4 <si re>4 
  do4 si4 re4 
  dod!8 r8 r4 r4 

}

tenorFugue = \relative do' {
  \globalFugue
  %%  1 :
  mi2 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2 
  %%  5 :
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  la4 r4 \clef violin la'4 
  %% 10 :
  sold4 dod,4 fad4 ~
  fad4 mi4 red4 
  dod4 si4 mi4 ~
  mi4 red2 ~
  red4 dod4 fad4 
  %% 15 :
  si,4 mi2 ~
  mi2 red4 
  mi2. ~
  mi4 re!4 si4 
  dod2 la4
  %% 20 :
  re4 si4 mi4 
  dod4. \clef bass dod8 re4 
  la4. si8 la8 sold8 
  la4. si8 dod4 ~
  dod8 si8 dod4. re8 
  %% 25 :
  mi4. re8 mi8 dod8 
  fad8 mi8 re8 dod8 si8 la8 
  sold4 la8 sold8 fad8 mi8 
  re4 mi4. dod8 
  re4. mi8 red4 
  %% 30 :
  mi4. fad8 sold8 mi8 
  la4. si8 dod4 
  red4 mi2 
  fad2 mi4 
  fad4. mi8 red8 dod8 
  %% 35 :
  si2 si4 
  mi4. red8 dod8 si8 
  la4 fad'2 
  mi2 dod4 
  red8 dod8 si8 la8 si4 
  %% 40 :
  mi8 red8 dod8 si8 la8 si8 
  dod8 re!8 si4 mi4 
  dod4 r4 r4 
  R2. 
  R2. 
  %% 45 : 
  #(silaa -2 #f) R2.
  R2.
  R2.
  R2.
  r4 la4 dod4 
  %% 50 :
  si4 la2 
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  %% 55 :
  la4 sold8 fad8 sold4 
  \tieDown dod4 fad,4. si8 
  mi,8 mi'8 dod8 la8 re4 
  dod4 fad,4 si4 ~
  si8 si8 la4 sold4 
  %% 60 :
  fad4 mi4 la4 ~
  la4. la8 sold4 ~
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 
  %% 65 :
  la8 la,8 dod8 la'8 re,8 la'8 
  \tieUp dod,8 la'8 si,8 sold'8 fad8 sold8 
  la8 la,8 dod8 mi8 re,8 re'8 
  la8 la'8 si,8 la'8 mi8 sold8 
  fad,8 fad'8 mi8 re8 dod8 re8 
  %% 70 :
  mi8 mi,8 mi'8 fad8 mi8 red8 
  mi8 si8 mi8 fad8 sold8 mi8 
  la8 fad8 sold8 fad8 sold8 la8 
  si8 la8 si8 dod8 la8 si8 
  dod8 si8 la8 sold8 fad8 mi8 
  %% 75 :
  red8 fad8 mi8 red8 dod8 si8 
  la4 si8 la8 si4 
  mi,4 r4 la'4 
  sold4 fad4 si4 ~
  si4 la4 sold4 
  %% 80 :
  fad4 mi4 la4 ~
  la4 sold2 ~
  sold8 sol8 fad4 si4 
  mi,4 la2 ~
  la2 ~ la8 sold8 
  %% 85 :
  la4 si8 dod8 re4 ~
  re8 dod8 re8 mi8 fad4 
  sold2 fad8 mi!8 
  re4 dod4 si4 
  la4 dod4 re4 
  %% 90 :
  dod4 si2 
  la2 dod4 
  si4 la2 
  sold2 dod4 
  fad,4 si2 ~
  %% 95 :
  si4 la8 sold8 la4 
  re4 #(modifpostexte -1.0 -0.5 #t) sold,2^\markup{"(" \hspace #-0.0 \raise #0.0 \musicglyph #"scripts.trill" \hspace #-1.1 ")"}
  lad4 dod4 re4 
  mi2. ~
  mi8 fad8 re8 mi8 dod8 mi8 
  %% 100 :
  re2. ~
  re8 fad8 mi8 fad8 re8 mi8 
  dod8 re8 si8 re8 dod4 
  re8 si4 dod8 si8 lad8 
  si2 ~ si8 la!8 
  %% 105 :
  sol4 \tieDown fad4 si4 ~
  si8 si8 lad4 si8 la8 
  sol2 dod8 si8 
  lad4 fad4 si4 ~
  si2 lad4 
  %% 110 :
  si4 fad4 sol4 
  \tieUp la8 si8 dod8 mi8 re8 dod8 
  si4 mi4 mi,4 
  la4 dod4 re4 
  sol,4 la2 
  %% 115 :
  re,8 re'8 fad,8 re'8 sol,8 re'8 
  fad,8 re'8 mi,8 dod'8 si8 dod8 
  re8 la8 fad8 la8 re,8 re'8 
  mi8 mi,8 fad8 mi'8 fad8 sol8 
  \clef violin la8 si8 la8 sol8 fad8 la8 
  %% 120 :
  si8 la8 sol8 fad8 mi8 re8 
  \clef "bass" dod8 si8 la8 sol8 fad8 mi8 
  re8 sol8 la4 la,4 
  re4 r4 re,4 
  mi8 mi'8 fad8 mi8 fad8 sold!8 
  %% 125 :
  la2 ~ la8 la8 
  si8 si,8 dod8 si8 dod8 re8 
  mi2. ~
  mi8 mi8 re8 dod8 re8 mi8 
  dod4 fad4. mi8 
  %% 130 :
  re4 mi4 sold4 
  \tieDown la2 ~ la8 la8 
  \clef violin \stemDown mi'2. ~
  mi2 ~ mi8 red8 
  mi4 \clef "bass" \tieUp \stemNeutral si4 dod8 sold8 
  %% 135 :
  la4 fad4 si4 
  mi,8 mi'8 sold,8 mi'8 la,8 mi'8 
  sold,8 mi'8 fad,8 red'8 dod8 red8 
  mi8 sold,8 si8 mi8 sold,8 si8 
  mi,8 re!8 mi8 fad8 sold8 mi8 
  %% 140 :
  la8 sold8 la8 si8 dod8 la8 
  re8 dod8 si8 la8 si8 re8 
  dod8 si8 la8 sold8 la8 si8 
  sold8 mi8 la8 sold8 la4 ~
  la2 sold4 
  %% 145 :
  la8 si8 dod4 r8 dod8 
  si4 \clef violin fad'8 la8 sold8 fad8 
  mi8 dod8 fad4 r8 si,8 
  la4 mi'8 sold8 fad8 mi8 
  re8 si8 mi4 r8 si8 
  %% 150 :
  dod4 la4 r8 fad'8 
  mi8 fad8 mi8 re8 mi4 
  re8 dod8 re4. re8 
  dod8 dod8 re8 mi8 \tieDown fad4 ~
  fad4 mi8 fad8 sold8 la8 
  %% 155 :
  si2 fad8 sold8 
  la2 ~ la8 mi8 
  fad4. mi8 fad4 ~
  fad4. mid8 fad4 
  mi!4 re2 ~
  %% 160 :
  re8 re8 dod8 si8 dod8 re8 
  si4 sold4 r8 la8 
  mi'4 \stemDown la,4 r8 si8 
  dod4 \stemNeutral r8 mi8 sold8 sold,8 
  la8 si8 dod8 re8 mi4 
  %% 165 :
  fad4 re4 mi4 ~
  mi4 \stemDown fad8 mi8 re8 dod8 
  si4 dod4. si8 
  la4 si2 
  la2. 
  %% 170 :
  fad4 sold4 la4 
  si4. \clef "bass" re8 dod8 si8 
  << 
    {
      la8 sold8 fad8 mi8 re8 dod8
      si2 dod8 red8
      mi4 mi4 fad4 
      %% 175 :
      sold4 la4 si4 
      dod4 dod4 red4 
      si4 r4 r4 
      R2.
    } 
     \\ 
    {
      r8 mi,8 re8 dod8 si8 la8
      sold2 la4
      si4 dod4 red4 
      %% 175 bis :
      mi4 fad4 sold4 
      la4 sold4 fad4 
      mi4 r4 r4
      R2.
    } 
  >> 
  
  r8 mi,8 fad8 sold8 la8 si8 
  %% 180 :
  dod8 si8 dod8 re8 mi4 
  <<
    {la4 mi4 si'4
     la8^\fermata r8 r4 r4} 
    \\ 
    {fad4 mi2
     mi8 r8 r4 r4}
  >>
  

}

pedaleFugue = \relative do' { 
  \globalFugue \clef bass
  %%  1 :
  #(silaa +2 #f) R2.*32
  si2 dod4 
  si4 la2 
  %% 35 :
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  la4 sold8 fad8 sold4 
  %% 40 :
  dod4 fad,2 
  mi2 mi4 
  fad4. la8 re,8 fad8 
  si,4. re8 sold,8 si8 
  la4 re,2 
  %% 45 :
  mi4 mi'4 fad4 
  mi4 re2 
  dod2 re4 
  dod4 si2 
  la4 r4 r4 
  R2.*27
  %% 77 :
  r4 mi'4 fad4 
  mi4 re2 
  dod2 mi4
  %% 80 :
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  %% 85 :
  la2. ~
  la4 si8 dod8 re4 
  dod4 red8 mid8 fad4 
  si,4 dod2 
  fad,4. \stemUp fad'8 si,8 fad'8 \stemNeutral 
  %% 90 :
  fad,8 fad'8 sold,8 fad'8 mid8 dod8 
  fad8 fad,8 r8 fad'8 lad,8 fad'8 
  si,8 fad'8 fad,8 fad'8 re8 fad8 
  si,8 re8 dod8 re8 si8 dod8 
  lad8 dod8 si8 sold'8 fad8 sold8 
  %% 95 :
  mid8 sold8 fad4 re!8 fad8 
  si,8 re8 dod8 re8 si8 dod8 
  fad,4 r4 r4 
  r8 dod''8 lad8 dod8 fad,8 lad8 
  si,2. ~
  %% 100 :
  si8 si'8 sol8 la8 fad8 sol8 
  mi2. 
  fad4 r4 mi4 
  re4 dod4 fad4 
  si,4. dod8 re4 
  %% 105 :
  mi4 si2 
  fad'4. mi8 re4 
  mi2 dod4 
  re2 re,4
  mi4 fad2 
  si4 r4 r4 
  R2.*26
  %% 137 :
  r4 red4 fad4 
  mi4 re!2 
  dod2 mi4
  %% 140 :
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2
  %% 145 :
  la2 la'4 
  sold4 fad4 si4 ~
  si4 la4 sold4 
  fad4 mi4 la4 ~
  la4 sold2 ~
  %% 150 :
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 
  la2 ~ la8 sold8 
  la8 si8 dod2
  %% 155 :
  sold8 la8 si2 
  fad8 sold8 la2 
  re,2 ~ re8 mi8 
  fad4. sold8 la8 si8 
  dod4 re2
  %% 160 :
  mi2. 
  mi,2 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2
  %% 165 :
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,4 mi4 
  la,4 si4 dod4 
  %% 170 :
  re4 mi4 fad4 
  mi2. 
  mi,2. ~
  mi2. ~
  mi2. ~
  %% 175 :
  mi2. ~
  mi2. ~
  \stemUp mi8 \stemNeutral mi''8 si8 la8 sold8 si8 
  mi,8 sold8 si8 mi,8 sold,8 si8 
  mi,2. ~
  %% 180 :
  mi2. 
  red4 mi2 
  #(modifpostexte 1.2 0.4 #t) la8^\markup{\musicglyph #"scripts.ufermata"} r8 r4 r4 

}

sopranoFuguemidi = \relative do'' {
  \halsup
  %%  1 :
  #(silaa +2 #f) R2.*8
  #(silaa +4 #f) R2.*12
  %% 21 :
  r4 mi4 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2 
  %% 25 :
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  la2 si8 la8
  %% 30 :
  sold4. la8 si4 
  dod4. red8 mi8 dod8 
  fad4 si,4 mi4 ~
  mi4 red4 mi4 
  red4 dod4 fad4 ~
  %% 35 :
  fad4 mi4 red4 
  dod4 si4 mi4 ~
  mi4 red2 ~
  red4 dod4 fad4 
  si,4 mi2 ~
  %% 40 :
  mi2 red4 
  mi4. re!8 dod8 si8 
  %%>================
  %%> ORIGINAL > la4. la8 si8 dod8
  la4 r8 la8 si8 dod8 
  re2. ~
  re8 dod8 re8 dod8 si8 la8 
  %% 45 :
  sold4 r4 r4 
  R2.
  r4 mi'4 fad4 
  mi4 re2 
  dod8 mi8 la,8 mi'8 la4 ~
  %% 50 :
  la8 sold8 r8 la8 fad8 la8 
  %%>================
  %%> ORIGINAL > si4. si8 fad8 sold8 
  si4 r8 si8 fad8 sold8 
  r8 fad8 r8 si8 mi,8 sold8 
  %%>================
  %%> ORIGINAL > la4. la8 fad8 si8 
  la4 r8 la8 fad8 si8 
  sold4 r8 mi8 la4 
  %% 55 :
  red,8 si'4 la8 sold8 fad8 
  mi8 sold8 la2 
  sold4 r8 la8 fad8 re!8 
  la'8 la,8 r8 la8 fad8 sold8 
  la4 r8 mi'8 si8 sold8 
  %% 60 :
  la8 fad'8 sold8 mi8 fad8 dod8 
  re8 fad8 si,4. re8 
  dod8 mi8 la,8 dod8 si8 re8 
  sold,8 si8 mi,4 ~ mi8 mi'8 
  re8 dod8 re8 fad8 mi8 re8 
  %% 65 :
  %%>================
  %%> ORIGINAL > dod4 mi4 fad4 (suggéré par M. Dupré).
  dod8 r8 mi4 fad4 
  mi4 re2 
  dod2 re4 
  dod4 si2 
  %%>================
  %%> ORIGINAL > la4 la4 dod4 
  la8 r8 la4 dod4 
  %% 70 :
  si4 la2 
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  %% 75 :
  la4 sold8 fad8 sold4 ~
  sold8 dod8 fad,2 
  mi8 si'8 mi4. re!8 ~
  re8 dod8 r8 fad8 re8 si8 
  mi4 r8 mi8 si8 dod8 ~
  %% 80 :   
  dod8 si8 r8 mi8 dod8 la8 
  re4 r8 dod8 re8 mi8 
  dod2 si4
  r8 si8 dod8 re8 mi8 dod8 
  la4 si8 dod8 re4 ~
  %% 85 :
  re8 dod8 re8 mi8 fad4 
  mi8 la4 sold8 fad4 
  mid4 fad8 sold8 dod,4 
  si8 dod8 la4. sold8 
  fad4 la4 si4 
  %% 90 :
  la4 red,4 sold4 ~
  sold4 fad4 mi!4 
  re!4 dod4 fad4 ~
  fad4 mi2 ~
  mi4 red4 sold4 
  %% 95 :
  dod,4 fad2 ~
  fad2 mid4 
  fad8 fad'8 lad,8 dod8 si8 re8 
  dod2. ~
  dod8 re8 si8 dod8 lad8 dod8 
  %% 100 :
  si2. ~
  si8 re8 dod8 re8 si8 dod8 
  lad8 si8 sold8 si8 lad8 dod8 
  si4 dod2 ~
  %%>================
  %%> ORIGINAL > dod8 dod8 si8 lad8 si4 ~
  dod16 r16 dod8 si8 lad8 si4 ~
  %% 105 :
  si8 lad8 si8 dod8 re8 mi8 
  fad2. 
  mi8 re8 dod8 re8 mi8 re8 
  dod8 re8 si8 lad8 si8 re8 
  dod8 re8 mi8 sol8 fad8 mi8 
  %% 110 :
  re8 mi8 fad8 la8 sol8 fad8 
  mi4 la2 ~
  la4 sol2 ~
  %%>================
  %%> ORIGINAL > sol4. sol8 fad8 la8 
  sol4 r8 sol8 fad8 la8 
  si8 mi,8 mi4. re8 
  %% 115 :
  re4 la'4 si4 
  la4 sol2 
  fad2 la4 
  sol4 fad2 
  mi2 la4 
  %% 120 :
  re,4 sol2 ~
  sol4 fad8 mi8 fad8 sol8 
  %%>================
  %%> ORIGINAL > la8 si8 mi,4. re8 
  la8 si8 mi,4. re16 r16 
  re8 la8 re8 dod8 si8 la8 
  sold!4 la4. si8 ~
  %% 125 :
  si8 mi,8 la8 si8 dod4 ~
  dod8 si4 mi,8 la4 ~
  %%>================
  %%> ORIGINAL > la8 la8 sold8 fad8 sold8 la8 
  la16 r16 la8 sold8 fad8 sold8 la8 
  fad2 si4 ~
  %%>================
  %%> ORIGINAL > si8 si8 la8 sold8 la8 dod8 
  si16 r16 si8 la8 sold8 la8 dod8 
  %% 130 :
  si8 la8 sold8 fad'8 mi8 re8 
  dod2. ~
  %%>================
  %%> ORIGINAL > dod8 dod8 si8 la8 si8 dod8 
  dod16 r16 dod8 si8 la8 si8 dod8 
  la4 fad'8 sold8 la4 ~
  %%>================
  %%> ORIGINAL > la8 la8 sold8 fad8 mi4 ~
  la16 r16 la8 sold8 fad8 mi4 ~
  %% 135 :
  mi8 sold8 fad8 mi8 red4 
  %%>================
  %%> ORIGINAL > mi4 r4 r4 
  mi8 r8 r4 r4 
  R2.*8
  %% 145 :
  r4 mi4 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2 
  si2 mi4 
  %% 150 :
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  la8 mi'8 fad8 sold8 la4 ~
  la4 sold2 ~
  %% 155 :
  sold4 fad2 ~
  fad4 mi2 ~
  mi4 re2 ~
  re4 dod2 ~
  %%>================
  %%> ORIGINAL > dod4. dod8 si8 la8 
  dod4 r8 dod8 si8 la8 
  %% 160 :
  sold4 la8 sold8 la8 si8 
  sold8 si8 mi4 re4 ~
  re8 dod8 fad4 si4 ~
  si4 la4 sold4 
  fad4 mi4 la4 ~
  %% 165 :
  la4 sold2 ~ 
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 
  la8 sold8 fad8 mi8 re8 dod8 
  %% 170 :
  fad8 mi8 re8 dod8 si8 la8 
  %%>================
  %%> ORIGINAL > sold4. sold8 la8 si8 
  sold4 r8 sold8 la8 si8 
  dod8 re8 mi8 fad8 sold8 la8 
  si2 ~ si8 la8 
  r8 sold8 r8 sold8 r8 fad8 
  %% 175 :
  r8 mi8 r8 mi8 r8 re!8 
  r8 dod8 r8 si8 r8 la8 
  sold4 r4 r4 
  R2.
  r8 mi'8 r8 re8 r8 dod8 
  %% 180:
  r8 si8 r8 la8 r8 sold8 
  r8 la8 r8 re,8 la'8 sold8 
  la8^\fermata r8 r4 r4  \bar "|."

}

altoFuguemidi = \relative do'' {
  \globalFugue \halsdown
  %%  1 :
  #(silaa -2 #f) R2.*8
  r4 la4 dod4 
  %% 10 :
  si4 la2 
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  %% 15 :
  la4 sold8 fad8 sold4 
  dod4 fad,2 
  mi4 sold4 dod4 
  fad,4 si2 ~
  si4 mi,4 la4 ~
  %% 20 :
  la4 sold2
  la2 re4 
  dod4 fad,4 si4 ~
  si4 mi,4 sol4 
  fad4 mi4 la4 ~
  %% 25 :
  la4 sold!2 ~
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 ~
  sold4 fad2 ~
  %% 30 :
  fad4 mi2 ~
  mi4 la2 ~
  la4 sold8 fad8 sold8 la8 
  si4. la8 sold8 la8 
  si4 r4 fad4 
  %% 35 :
  si4. sold8 fad8 sold8 
  la4 r4 mi4 
  la4. sold8 fad8 la8 
  sold4 la8 sold8 fad8 mi8 
  fad4 si4. la8 
  %% 40 :
  sold4 la2 ~
  la2 sold4 ~
  %%>================
  %%> ORIGINAL > sold8 sold8 fad2 ~
  sold16 r16 sold8 fad2 ~
  %%>================
  %%> ORIGINAL > fad8 fad8 sold8 la8 si4 
  fad16 r16 fad8 sold8 la8 si4 
  mi,4 fad8 mi8 re8 dod8 
  %% 45 :
  \staffdown si8 mi8 mi,8 mi'8 la,8 re8 
  sold,8 dod8 fad,8 si8 la8 si8 
  dod8 mi8 la,8 \staffup la'8 re,8 la'8 
  \staffdown la,8 \staffup la'8 si,8 sold'8 fad8 sold8 
  la4 r4 r8 mi'8 
  %% 50 :
  re4 dod4 fad4 ~
  %%>================
  %%> ORIGINAL > fad8 fad8 mi4 re4 
  fad16 r16 fad8 mi4 re4 
  dod4 si4 mi4 ~
  %%>================
  %%> ORIGINAL > mi8 mi8 red2 ~
  mi16 r16 mi8 red2 ~
  %%>================
  %%> ORIGINAL > red8 red8 dod4. fad8 
  red16 r16 red8 dod4. fad8 
  %% 55 :
  %%>================
  %%> ORIGINAL > si,4 mi2 ~
  si,4 mi4. r8
  mi4. fad8 red4 
  mi4 mi,4 fad4 
  mi4 re2 
  dod2 mi4 
  %% 60 :
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  %% 65 :
  la4 r4 r4 
  R2. 
  r4 mi'4 fad4 
  mi4 re2 
  dod4 r4 la'4 
  %% 70 :
  sold4 dod,4 fad4 ~
  fad4 mi4 re!4 
  dod4 si4 mi4 ~
  mi4 red2 ~
  red4 dod4 fad4 
  %% 75 :
  si,4 mi2 ~
  mi2 ~ mi8 red8 
  mi4. sold8 la4 
  r8 mi8 la4 r4 
  r8 mi8 la4 r4 
  %% 80 :
  r8 re,8 la'4 r4 
  r8 fad8 si2 
  la4 r8 fad8 sold!8 la8 
  sold4 mi2 ~
  mi8 fad8 re4 si'4 
  %% 90 :
  mi,8 la4 sol8 fad8 sold8 
  la8 dod4 si8 la8 si8 
  dod8 re8 dod8 si8 la4 
  sold4. fad8 mid4 
  fad4 r4 r4 
  %% 95 :
  #(silaa -8 #f) R2.*7
  #(silaa -4 #f) R2.*5
  %% 102 :
  fad2 sol4 
  fad4 mi2 
  re2 fad4 
  %% 105 :
  mi4 re2 
  dod2 fad4 
  si,4 mi2 ~
  mi4 re8 dod8 re4 
  sol!4 dod,2 
  %% 110 :
  si8 dod8 re8 fad8 mi8 re8 
  dod4 mi'8 sol8 fad8 mi8 
  re8 dod8 si8 fad'8 mi8 re8 
  dod8 si8 la4. fad8 
  mi8 re8 ~ re4 dod4 
  %% 115 :
  re4 r4 r4 
  R2. 
  r4 re'4 fad4 
  mi4 re2 ~
  re4 dod2 ~
  %% 120 :
  dod4 si4 mi4 
  la,4 dod4 re8 mi8 
  fad8 re8 ~ re8 si8 dod4 
  re4 re,4 fad4 
  mi4 re2 
  %% 125 :
  dod2 mi4 
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  %% 130 :
  fad4 si,2 ~ 
  si8 si'8 la8 sold8 la4 ~
  la8 la8 sold8 fad8 sold4 
  fad8 sold8 la8 sold8 fad4
  si4. la8 sold4 ~
  %% 135 :
  sold8 si8 la8 sold8 fad8 la8 
  %%>================
  %%> ORIGINAL > sold4 si4 dod4 
  sold8 r8 si4 dod4 
  si4 la2 
  sold2 si4 
  la4 sold2
  %% 140 :
  fad2 la4 
  re,4 sol2 ~
  sol4 fad8 mi8 fad4 
  si4 mi,4. re8 
  dod8 mi8 re8 dod8 re8 mi8 
  %% 145 :
  %%>================
  %%> ORIGINAL > dod4 r8 mi8 la4 
  dod8 r8 r8 mi8 la4 
  r8 si8 la8 dod8 si8 la8 
  sold4 r8 la8 si4 
  r8 la8 sold8 si8 la8 sold8 
  fad4 sold8 la8 si4 
  %% 150 :
  r8 mi,8 fad8 sold8 la8 si8 
  sold4 la8 sold8 la8 sold8 
  fad4 r8 fad8 mi4 ~
  mi4 r4 r8 si'8 
  dod8 re8 mi2 ~
  %% 155 :
  mi4. dod8 re4 ~
  re4. si8 dod4 ~
  dod8 la8 si2 ~
  si8 sold8 la2 ~
  la8 sold8 fad2 
  %% 160 :
  mi2. ~
  mi4 r8 mi8 la4 
  sold4 r8 la8 fad4 
  mi8 mi'8 dod4 si8 dod8 
  re4 la8 si8 dod8 la8 
  %% 165 :
  re8 mi8 re8 dod8 si8 re8 
  dod8 si8 la8 sold8 fad4 
  sold8 fad8 mi8 re8 mi4 ~
  mi8 mi8 re8 dod8 re8 mi8 
  dod4 re4 mi4 
  %% 170 :
  re2. 
  r8 fad8 mi4 fad8 sold8 
  la8 si8 dod8 re8 mi8 fad8 ~
  %%>================
  %%> ORIGINAL > fad8 fad8 mi8 re8 dod4
  fad16 r16 fad8 mi8 re8 dod4
  si4 la4 la4 
  %% 175 :
  sold4 fad4 mi4 
  mi4 mi4 fad4 
  mi4 r4 r4 
  s2. 
  r4 <fad la>4 <mi sold>4 
  %% 180 :
  <re fad>4 <dod mi>4 <si re>4 
  do4 si4 re4 
  dod!8 r8 r4 r4 

}

tenorFuguemidi = \relative do' {
  \globalFugue
  %%  1 :
  mi2 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2 
  %%  5 :
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  la4 r4 \clef violin la'4 
  %% 10 :
  sold4 dod,4 fad4 ~
  fad4 mi4 red4 
  dod4 si4 mi4 ~
  mi4 red2 ~
  red4 dod4 fad4 
  %% 15 :
  si,4 mi2 ~
  mi2 red4 
  mi2. ~
  mi4 re!4 si4 
  dod2 la4
  %% 20 :
  re4 si4 mi4 
  %%>================
  %%> ORIGINAL > dod4. \clef bass dod8 re4 
  dod4 r8 \clef bass dod8 re4 
  la4. si8 la8 sold8 
  la4. si8 dod4 ~
  dod8 si8 dod4. re8 
  %% 25 :
  mi4. re8 mi8 dod8 
  fad8 mi8 re8 dod8 si8 la8 
  sold4 la8 sold8 fad8 mi8 
  re4 mi4. dod8 
  re4. mi8 red4 
  %% 30 :
  mi4. fad8 sold8 mi8 
  la4. si8 dod4 
  red4 mi2 
  fad2 mi4 
  fad4. mi8 red8 dod8 
  %% 35 :
  %%>================
  %%> ORIGINAL > si2 si4 
  si4. r8 si4 
  mi4. red8 dod8 si8 
  %%>================
  %%> ORIGINAL > la4 fad'2 
  la4 fad'8 r8 fad4
  mi2 dod4 
  red8 dod8 si8 la8 si4 
  %% 40 :
  mi8 red8 dod8 si8 la8 si8 
  dod8 re!8 si4 mi4 
  dod4 r4 r4 
  R2. 
  R2. 
  %% 45 : 
  #(silaa -2 #f) R2.
  R2.
  R2.
  R2.
  r4 la4 dod4 
  %% 50 :
  si4 la2 
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  %% 55 :
  la4 sold8 fad8 sold4 
  dod4 fad,4. si8 
  mi,8 mi'8 dod8 la8 re4 
  dod4 fad,4 si4 ~
  si8 si8 la4 sold4 
  %% 60 :
  fad4 mi4 la4 ~
  la4. la8 sold4 ~
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 
  %% 65 :
  la8 la,8 dod8 la'8 re,8 la'8 
  dod,8 la'8 si,8 sold'8 fad8 sold8 
  la8 la,8 dod8 mi8 re,8 re'8 
  la8 la'8 si,8 la'8 mi8 sold8 
  fad,8 fad'8 mi8 re8 dod8 re8 
  %% 70 :
  mi8 mi,8 mi'8 fad8 mi8 red8 
  mi8 si8 mi8 fad8 sold8 mi8 
  la8 fad8 sold8 fad8 sold8 la8 
  si8 la8 si8 dod8 la8 si8 
  dod8 si8 la8 sold8 fad8 mi8 
  %% 75 :
  red8 fad8 mi8 red8 dod8 si8 
  la4 si8 la8 si4 
  mi,4 r4 la'4 
  sold4 fad4 si4 ~
  si4 la4 sold4 
  %% 80 :
  fad4 mi4 la4 ~
  la4 sold2 ~
  sold8 sol8 fad4 si4 
  mi,4 la2 ~
  la2 ~ la8 sold8 
  %% 85 :
  la4 si8 dod8 re4 ~
  re8 dod8 re8 mi8 fad4 
  sold2 fad8 mi!8 
  re4 dod4 si4 
  la4 dod4 re4 
  %% 90 :
  dod4 si2 
  la2 dod4 
  si4 la2 
  sold2 dod4 
  fad,4 si2 ~
  %% 95 :
  si4 la8 sold8 la4 
  re4 sold,2 
  lad4 dod4 re4 
  mi2. ~
  mi8 fad8 re8 mi8 dod8 mi8 
  %% 100 :
  re2. ~
  re8 fad8 mi8 fad8 re8 mi8 
  dod8 re8 si8 re8 dod4 
  re8 si4 dod8 si8 lad8 
  si2 ~ si8 la!8 
  %% 105 :
  sol4 fad4 si4 ~
  %%>================
  %%> ORIGINAL > si8 si8 lad4 si8 la8 
  si16 r16 si8 lad4 si8 la8 
  sol2 dod8 si8 
  lad4 fad4 si4 ~
  si2 lad4 
  %% 110 :
  si4 fad4 sol4 
  la8 si8 dod8 mi8 re8 dod8 
  si4 mi4 mi,4 
  la4 dod4 re4 
  sol,4 la2 
  %% 115 :
  re,8 re'8 fad,8 re'8 sol,8 re'8 
  fad,8 re'8 mi,8 dod'8 si8 dod8 
  re8 la8 fad8 la8 re,8 re'8 
  mi8 mi,8 fad8 mi'8 fad8 sol8 
  \clef violin la8 si8 la8 sol8 fad8 la8 
  %% 120 :
  si8 la8 sol8 fad8 mi8 re8 
  \clef "bass" dod8 si8 la8 sol8 fad8 mi8 
  re8 sol8 la4 la,4 
  re4 r4 re,4 
  mi8 mi'8 fad8 mi8 fad8 sold8 
  %% 125 :
  %%>================
  %%> ORIGINAL > la2 ~ la8 la8 
  la2 ~ la16 r16 la8 
  si8 si,8 dod8 si8 dod8 re8 
  mi2. ~
  %%>================
  %%> ORIGINAL > mi8 mi8 re8 dod8 re8 mi8 
  mi16 r16 mi8 re8 dod8 re8 mi8 
  dod4 fad4. mi8 
  %% 130 :
  re4 mi4 sold4 
  %%>================
  %%> ORIGINAL > la2 ~ la8 la8 
  la2 ~ la16 r16 la8 
  mi'2. ~
  mi2 ~ mi8 red8 
  mi4 si4 dod8 sold8 
  %% 135 :
  la4 fad4 si4 
  mi,8 mi'8 sold,8 mi'8 la,8 mi'8 
  sold,8 mi'8 fad,8 red'8 dod8 red8 
  mi8 sold,8 si8 mi8 sold,8 si8 
  mi,8 re!8 mi8 fad8 sold8 mi8 
  %% 140 :
  la8 sold8 la8 si8 dod8 la8 
  re8 dod8 si8 la8 si8 re8 
  dod8 si8 la8 sold8 la8 si8 
  sold8 mi8 la8 sold8 la4 ~
  la2 sold4 
  %% 145 :
  la8 si8 dod4 r8 dod8 
  si4 \clef violin fad'8 la8 sold8 fad8 
  mi8 dod8 fad4 r8 si,8 
  la4 mi'8 sold8 fad8 mi8 
  re8 si8 mi4 r8 si8 
  %% 150 :
  dod4 la4 r8 fad'8 
  mi8 fad8 mi8 re8 mi4 
  %%>================
  %%> ORIGINAL > re8 dod8 re4. re8 
  re8 dod8 re4 r8 re8 
  dod8 dod8 re8 mi8 fad4 ~
  fad4 mi8 fad8 sold8 la8 
  %% 155 :
  si2 fad8 sold8 
  la2 ~ la8 mi8 
  fad4. mi8 fad4 ~
  fad4. mid8 fad4 
  mi!4 re2 ~
  %% 160 :
  %%>================
  %%> ORIGINAL > re8 re8 dod8 si8 dod8 re8 
  re16 r16 re8 dod8 si8 dod8 re8 
  si4 sold4 r8 la8 
  mi'4 la,4 r8 si8 
  dod4 r8 mi8 sold8 sold,8 
  la8 si8 dod8 re8 mi4 
  %% 165 :
  fad4 re4 mi4 ~
  mi4 fad8 mi8 re8 dod8 
  si4 dod4. si8 
  la4 si2 
  la2. 
  %% 170 :
  fad4 sold4 la4 
  si4. \clef "bass" re8 dod8 si8 
  << 
    {
      la8 sold8 fad8 mi8 re8 dod8
      si2 dod8 red8
      %%>================
      %%> ORIGINAL > mi4 mi4 fad4 
      mi8 r8 mi4 fad4 
      %% 175 :
      sold4 la4 si4 
      %%>================
      %%> ORIGINAL > dod4 dod4 red4 
      dod8 r8 dod4 red4 
      si4 r4 r4 
      R2.
    } 
     \\ 
    {
      r8 mi,8 re8 dod8 si8 la8
      sold2 la4
      si4 dod4 red4 
      %% 175 bis :
      mi4 fad4 sold4 
      la4 sold4 fad4 
      mi4 r4 r4
      R2.
    } 
  >> 
  
  r8 mi,8 fad8 sold8 la8 si8 
  %% 180 :
  dod8 si8 dod8 re8 mi4 
  <<
    {la4 mi4 si'4
     la8^\fermata r8 r4 r4} 
    \\ 
    {fad4 mi2
     mi8 r8 r4 r4}
  >>
  

}

pedaleFuguemidi = \relative do' { 
  \globalFugue \clef bass
  %%  1 :
  #(silaa +2 #f) R2.*32
  si2 dod4 
  si4 la2 
  %% 35 :
  sold2 si4 
  la4 sold2 
  fad2 si4 
  mi,4 la2 ~
  la4 sold8 fad8 sold4 
  %% 40 :
  dod4 fad,2 
  %%>================
  %%> ORIGINAL > mi2 mi4 
  mi4. r8 mi4 
  fad4. la8 re,8 fad8 
  si,4. re8 sold,8 si8 
  la4 re,2 
  %% 45 :
  mi4 mi'4 fad4 
  mi4 re2 
  dod2 re4 
  dod4 si2 
  la4 r4 r4 
  R2.*27
  %% 77 :
  r4 mi'4 fad4 
  mi4 re2 
  dod2 mi4
  %% 80 :
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2 
  %% 85 :
  la2. ~
  la4 si8 dod8 re4 
  dod4 red8 mid8 fad4 
  si,4 dod2 
  fad,4. fad'8 si,8 fad'8 
  %% 90 :
  fad,8 fad'8 sold,8 fad'8 mid8 dod8 
  fad8 fad,8 r8 fad'8 lad,8 fad'8 
  si,8 fad'8 fad,8 fad'8 re8 fad8 
  si,8 re8 dod8 re8 si8 dod8 
  lad8 dod8 si8 sold'8 fad8 sold8 
  %% 95 :
  mid8 sold8 fad4 re!8 fad8 
  si,8 re8 dod8 re8 si8 dod8 
  fad,4 r4 r4 
  r8 dod''8 lad8 dod8 fad,8 lad8 
  si,2. ~
  %% 100 :
  si8 si'8 sol8 la8 fad8 sol8 
  mi2. 
  fad4 r4 mi4 
  re4 dod4 fad4 
  si,4. dod8 re4 
  %% 105 :
  mi4 si2 
  fad'4. mi8 re4 
  mi2 dod4 
  re2 re,4
  mi4 fad2 
  si4 r4 r4 
  R2.*26
  %% 137 :
  r4 red4 fad4 
  mi4 re!2 
  dod2 mi4
  %% 140 :
  re4 dod2 
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,2
  %% 145 :
  la2 la'4 
  sold4 fad4 si4 ~
  si4 la4 sold4 
  fad4 mi4 la4 ~
  la4 sold2 ~
  %% 150 :
  sold4 fad4 si4 
  mi,4 la2 ~
  la2 sold4 
  la2 ~ la8 sold8 
  la8 si8 dod2
  %% 155 :
  sold8 la8 si2 
  fad8 sold8 la2 
  re,2 ~ re8 mi8 
  fad4. sold8 la8 si8 
  dod4 re2
  %% 160 :
  mi2. 
  mi,2 fad4 
  mi4 re2 
  dod2 mi4 
  re4 dod2
  %% 165 :
  si2 mi4 
  la,4 re2 ~
  re4 dod8 si8 dod4 
  fad4 si,4 mi4 
  la,4 si4 dod4 
  %% 170 :
  re4 mi4 fad4 
  mi2. 
  mi,2. ~
  mi2. ~
  mi2. ~
  %% 175 :
  mi2. ~
  mi2. ~
  mi8 mi''8 si8 la8 sold8 si8 
  mi,8 sold8 si8 mi,8 sold,8 si8 
  mi,2. ~
  %% 180 :
  mi2. 
  red4 mi2 
  la8^\fermata r8 r4 r4 

}


\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  headsep = 1\mm
  %aftertitlespace = 1\mm
  indent = 1\cm
  bottommargin = 4\mm 
  topmargin = 1\mm
}

\book{
  %% Prélude
  \score {
    \new StaffGroup \with{systemStartDelimiter = #'SystemStartBar } <<
      
      \new PianoStaff <<
	
	\new Staff = "dessus" << 
	  \set Staff.midiInstrument = "pan flute"
	  \sopranoPrelude \\
	  \altoPrelude
	>>
	\new Staff = "basse" { 
	  \set Staff.midiInstrument = "pan flute"
	  \clef "bass" 
	  \tenorPrelude
	}
      >>
      \new Staff = "pedale" {
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 7.0)
	\set Staff.midiInstrument = "pan flute"
	\pedalePrelude
      }
    >>
    \layout{}
    \midi{ 
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
  }

  %% Fugue
  \score{
    \new StaffGroup \with{systemStartDelimiter = #'SystemStartBar } <<
      
      \new PianoStaff <<
	
	\new Staff = "dessus" << 
	  \set Staff.midiInstrument = "pan flute"
	  \sopranoFugue \\
	  \altoFugue
	>>
	\new Staff = "basse" { 
	  \set Staff.midiInstrument = "pan flute"
	  \clef "bass" 
	  \tenorFugue
	}
      >>
      \new Staff = "pedale" {
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 7.0)
	\set Staff.midiInstrument = "pan flute"
	\pedaleFugue
      }
    >>
    \layout{}
  }
  \score { 
    <<
      \new Staff {
	\set Staff.midiInstrument = "pan flute"
	\sopranoFuguemidi
      }
      \new Staff {
	\set Staff.midiInstrument = "recorder"
	\transpose do do' 
	\sopranoFuguemidi
      }
      \new Staff {
	\set Staff.midiInstrument = "blown bottle"
	\sopranoFuguemidi
      }
      \new Staff {
	\set Staff.midiInstrument = "pan flute"
	\altoFuguemidi
      }
      \new Staff {
	\set Staff.midiInstrument = "recorder"
	\transpose do do' 
	\altoFuguemidi
      }
      \new Staff {
	\set Staff.midiInstrument = "pan flute"
	\tenorFuguemidi
      }
      \new Staff {
	\set Staff.midiInstrument = "recorder"
	\transpose do do' 
	\tenorFuguemidi
      }
      \new Staff {
	\set Staff.midiInstrument = "pan flute"
	\pedaleFuguemidi
      }
      \new Staff {
	\set Staff.midiInstrument = "recorder"
	\transpose do do,
	\pedaleFuguemidi
      }
      \new Staff { % tempo staff
	s2.*180
	s4 \tempo 4 = 45 s4 s4 
	\tempo 4 = 10 s2.
      }
    >>
    \midi{ 
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 50 2)
      }
    }

  }

}

