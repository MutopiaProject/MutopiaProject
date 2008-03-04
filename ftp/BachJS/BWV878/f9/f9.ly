%% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.10.33"
\include "italiano.ly" 
%%
%% Version 1.0 du 27 décembre 2007.
%%
\header{
  title = \markup {\center-align { \medium " Le clavier bien tempéré "  \medium "Fugue 9 en mi majeur" }}
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Johann Sebastian Bach (1685-1750)"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Le clavecin bien tempéré, volume 2, Révision et annotations par Vincent d'Indy, Édition nationale de musique classique, Éditions Salabert, Paris, 1920."
  opus = ""
  lastupdated = "2007-04-24"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Das Wohltemperierte Clavier II, Fuga IX"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 878"
  style="Baroque"
 footer = "Mutopia-2008/03/04-1328"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

				% macros von Urs Metzger
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
#(define* (silun dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Rest 'extra-offset (cons dx dy) once)))

#(define* (silaa dx #:optional once)
  (ly:export (mus:override 'Bottom 'MultiMeasureRest 'staff-position dx once)))

global = {
  \key mi \major
  \time 4/2
}

soprano =  \relative do'' {
  %%  1 : 
  #(silaa +0 #f) R\breve
  R\breve
  R\breve
  s1 s1
  %%  5 : 
  re1\rest si1 
  dod2 mi2 red2 dod2 
  si1 ~ si4 la8 sold8 la2 ~
  la2 sold2 fad2 mi2 
  red2 si'2\rest si1\rest
  %% 10 : 
  R\breve
  \once \override NoteColumn #'force-hshift = #-0.5 mi,1 fad2 la!2
  sold2 fad2 mid4 fad4 sold4 la4 
  si4 fad4 si2 ~ si2 la2 
  sold1 ~ sold2. la8 si8 
  %% 15 : 
  dod4 sid4 dod4 red4 sid4 dod2 sid4 
  dod1 re1\rest
  si1 dod2 mi2 
  red2 dod2 si2 dod2 
  fad,4 red4 sold2 ~ sold4 fad8 mi8 fad2 ~
  %% 20 : 
  fad4 mi8 red8 mi4 fad8 mi8 red4 si'4 mid,2 ~
  mid4 fad2 mid4 dod'2 si2 ~
  si4 la2 sold4 ~ sold4 fad2 mid4 
  fad1 sold4 la4 si2 ~
  si4 la4 sold2 fad2 mi4 fad4 
  %% 25 : 
  sold2. la4 sold4 fad4 mi2 
  r1 r2 sold2 
  la4 dod4 si!4 la4 sold2 lad2 
  si1 ~ si2. lad4 
  si4 sold4 la!4 si4 dod4 red4 mi2 ~ 
  %% 30 : 
  mi2. red4 mi4 si2 lad4 
  si2 r4 fad'4 si,4 sold4 la4 si4 
  dod2 si2 la2 sold2 
  fad4 mi'4 red!4 dod4 si2 lad!2 ~
  lad4 sold8 fadd8 sold2 ~ sold2. fadd!4 
  %% 35 : 
  sold2 r4 si4 sold4 mi4 fad4 sold4 
  la4 si4 dod4 red4 mi8 si8 mi2 red4 ~ 
  red4 dod8 si8 dod2 si4 r4 mi2 
  fad2 la2 sold2 fad2 
  mi2 red2 dod2 si2 ~
  %% 40 : 
  si4 dod4 si4 la4 sold2 r2 
  r2 mi'2 red2 dod2 
  si2 la2 sold8 fad8 sold8 la8 si4 <mi, la>4
  <mi sold>2 <red fad>2 mi1^\fermata
}

alto = \relative do' {
  %%  1 : 
  s1 s1
  s1 s1
  s1 s1
  mi1 fad2 la2 
  %%  5 : 
  sold2 fad2 mi2 r4 si4 
  mi4 fad4 sold4 lad4 si8 fad8 si2 la4 ~
  la4 sold8 fad8 sold2 dod,2. red8 mi8 
  red2 mi2 ~ mi4 red4 dod2 
  fad,2 si2 dod2 mi2 
  %% 10 : 
  red2 dod2 si4 mi2 red4 ~
  red4 dod2 si8 lad8 si4 fad'2 mi8 red8 
  mi2. red4 dod1 
  si4 dod4 red4 mi!4 fad4 dod4 fad2 ~
  fad2 mi2 red1 
  %% 15 : 
  dod4 red4 mi4 fad4 sold2 fad2 
  mi1 fad2 la2 
  sold2 fad2 mi4 dod4 sold'2 ~
  sold4 fad8 mid8 fad2 ~ fad4 mi8 red8 mi4 fad8 mi8 
  red2. sold,4 la2. lad4 
  %% 20 : 
  si2. lad4 si2 re!2
  dod1 ~ dod2 sold'2 
  dod,2 si2 la2 sold2 
  la4 si4 dod2 ~ dod2 red4 mid4 
  fad2. mi!4 red!2 dod2 ~
  %% 25 : 
  dod4 red8 dod8 sid2 dod4 red4 sold,2 
  red'4 mi8 red8 dod4 la'4 sid,4 dod2 sid4 
  dod2 red2 mi4 sold4 fad4 mi4 
  red4 la'!4 sold4 fad4 mi4 sold4 fad4 mi4 
  red4 mi4 fad4 sold4 la2. sold4 
  %% 30 : 
  fad4 mi4 fad2 mi1 
  fad2 la!2 sold2 fad2 
  mi4 la2 sold4 fad4 re'!4 dod4 si4 
  la4 fadd4 sold4 lad4 sold4 \set Staff.extraNatural = ##f fad!4 mi2 
  red2 dodd2 red1 
  %% 35 : 
  red2 si2 dod2 mi2 
  red2 dod2 si2 si'2 
  sold4 mi4 sold4 lad4 si8 fad8 si2 la!4 ~ 
  la4 red,4 mi4 fad4 sold4 dod4 la4 si4 
  sold4 la4 fad4 sold4 mi4 fad4 red4 mi4 ~ 
  %% 40 : 
  mi4 red8 dod8 red2 r4 mi8 fad8 sold4 lad4 
  si8 fad8 si2 la!4 ~ la8 red,8 sold2 fad4 ~ 
  fad8 si,8 mi2 red4 mi4 #(silun 0 -1.5 #t) r4 #(silun 0 -1.5 #t) r4 s4 
  s2 s2 s2 s2 
}

tenor = \relative do' {
  %%  1 : 
  s1 s1
  r1 si1 
  dod2 mi2 red2 dod2 
  \once \override NoteColumn #'force-hshift = #+1.6 si2. si4 la4 si4 dod4 red4 
  %%  5 : 
  mi8 si8 mi2 red4 mi2 sold,4 fad4 
  sold2 mi2 fad1 ~
  fad4 si,4 mi2 ~ mi4 dod4 fad2 ~ 
  fad4 mi8 fad8 sold4 la4 si8 fad8 si2 lad4 
  si2 r2 mi,1 
  %% 10 : 
  fad2 la2 sold2 fad2 
  mi4 la2 sold4 fad4 mi8 red8 mi4 fad4 
  sold4 la4 si8 fad8 si8 la8 sold2 fad2 ~
  fad2 mi!2 red4 mid4 fad2 
  dod4 red4 mi!4 fad4 sold4 red4 sold2 ~
  %% 15 : 
  sold2 fad2 ~ fad4 mi4 red2 
  dod4 sold'4 dod2 ~ dod4 si8 lad8 si2 ~ 
  si4 la!8 sold8 la4 si8 la8 sold2. sold4 
  la2. lad4 si2. lad4 
  si4. la!8 sold8 fad8 mi8 red8 mi2 r2 
  %% 20 : 
  fad1 sold2 si2 
  la2 sold2 ~ sold4 fad2 mid4 
  fad2 re!2 dod1 ~
  dod2. red4 mid4 dod4 sold'2 
  fad2 sold4 dod,4 ~ dod4 sid!4 dod4 red4 
  %% 25 : 
  mi4 fad8 mi8 red2 ~ red2 mi4 fad4 
  sold2. fad4 mi2 red2 
  mi2 r2 r1 
  r2 si'2 dod4 mi4 red4 dod4 
  si4 re4 dod4 si4 la2 si2 
  %% 30 : 
  si2. la4 sold2. dod4 
  fad,4 red4 mi4 fad4 sold4 si4 dod4 red4 
  sold,4 mi4 fad4 sold4 la4 si4 dod2 ~ 
  dod4 dod4 si4 lad4 si4 red4 dod2 
  si2. lad8 sold8 lad4 si4 dod2 
  %% 35 : 
  si2 r2 mi,1 
  fad2 la2 sold2 fad2 
  mi2 r2 r2 r4 mi4 
  red4 si'4 dod4 red4 mi8 si8 mi2 red4 ~ 
  red8 sold,8 dod2 si4 ~ si8 mi,8 la2 sold4 
  %% 40 : 
  fad1 mi4 sold4 dod4 fad,4 ~ 
  fad4 fad4 sold4 la4 si4 red,4 mi4 fad4 
  \override Glissando #'style = #'dotted-line sold2 \glissando \staffup la2 si4 #(silun 0 -3 #t) r4 #(silun 0 -4 #t) r4 dod4 
  si2. la4 <sold si>1
}

basse = \relative do {
  %%  1 : 
  mi1 fad2 la2 
  sold2 fad2 mi4 red8 dod8 red4 si4 
  mi4 fad4 sold4 lad4 si8 fad8 si2 la4 ~
  la4 sold8 fad8 sold2 ~ sold2 fad2 
  %%  5 : 
  sold2 la4 si8 la8 sold4 fad4 mi4 red4 
  dod1 si2 fad2 
  sold2. mi4 la2. fad4 
  si\breve ~
  si2 r2 r1 
  %% 10 : 
  r1 si1 
  dod2 mi2 red2 dod2 
  si1 ~ si2 la2 
  sold1 fad4 sold4 la4 si4 
  dod4 sold4 dod2 ~ dod2 si2 
  %% 15 : 
  la1 sold1 
  dod2 r4 dod4 re2. red4 
  mi2. red4 mi2 dod2 
  fad2 mi!2 red2 dod2 
  si1 dod2 mi2 
  %% 20 : 
  red2 dod2 si4 sold2 la!8 si8 
  dod2 si2 la2 sold2 
  fad2 si2 \once \override NoteColumn #'force-hshift = #+1.5 dod2 dod,2 
  fad4 sold4 la4 fad4 dod'2 si4 dod4 
  re!4 dod4 sid4 dod4 fad,4 sold4 la2 
  %% 25 : 
  sold1 lad4 sid4 dod2 ~
  dod4 si!4 la!2 sold1 ~ 
  sold2 fad2 mi4 dod4 fad2 
  si2 r2 r2 fad'2 
  sold4 si4 la4 sold4 fad2 mi2 
  %% 30 : 
  si'2 si,2 dod4 mi4 red4 dod4 
  red4 si4 dod4 red4 mi2. red4 
  mi4 dod4 red4 mid4 fad2. mid4 
  fad4 red4 mid4 fadd4 sold2. fadd4 
  sold2 mid2 red2 red,2 
  %% 35 : 
  sold2 r2 r1 
  r1 si1 
  dod2 mi2 red2 dod2 
  si4 r4 r2 r1 
  R\breve
  %% 40 : 
  si1 dod2 mi2 \break 
  red2 dod2 si2 la2 
  sold2 fad2 mi4 fad4 sold4 la4 
  si1 mi,1^\fermata 
}

sopranomidi =  \relative do'' {
  %%  1 : 
  #(silaa +0 #f) R\breve
  R\breve
  R\breve
  s1 s1
  %%  5 : 
  re1\rest si1 
  dod2 mi2 red2 dod2 
  si1 ~ si4 la8 sold8 la2 ~
  la2 sold2 fad2 mi2 
  red2 si'2\rest si1\rest
  %% 10 : 
  R\breve
  %%> \once \override NoteColumn #'force-hshift = #-0.5 mi,1 fad2 la!2
  \once \override NoteColumn #'force-hshift = #-0.5 mi,1 fad4. ~ fad16 r16 la!2
  sold2 fad2 mid4 fad4 sold4 la4 
  si4 fad4 si2 ~ si2 la2 
  sold1 ~ sold2. la8 si8 
  %% 15 : 
  dod4 sid4 dod4 red4 sid4 dod2 sid4 
  dod1 re1\rest
  si1 dod2 mi2 
  red2 dod2 si2 dod2 
  fad,4 red4 sold2 ~ sold4 fad8 mi8 fad2 ~
  %% 20 : 
  fad4 mi8 red8 mi4 fad8 mi8 red4 si'4 mid,2 ~
  mid4 fad2 mid4 dod'2 si2 ~
  si4 la2 sold4 ~ sold4 fad2 mid4 
  fad1 sold4 la4 si2 ~
  si4 la4 sold2 fad2 mi4 fad4 
  %% 25 : 
  sold2. la4 sold4 fad4 mi2 
  r1 r2 sold2 
  la4 dod4 si!4 la4 sold2 lad2 
  si1 ~ si2. lad4 
  si4 sold4 la!4 si4 dod4 red4 mi2 ~ 
  %% 30 : 
  mi2. red4 mi4 si2 lad4 
  si2 r4 fad'4 si,4 sold4 la4 si4 
  dod2 si2 la2 sold2 
  fad4 mi'4 red!4 dod4 si2 lad2 ~
  lad4 sold8 fadd8 sold2 ~ sold2. fadd!4 
  %% 35 : 
  sold2 r4 si4 sold4 mi4 fad4 sold4 
  la4 si4 dod4 red4 mi8 si8 mi2 red4 ~ 
  %%> red4 dod8 si8 dod2 si4 r4 mi2 
  red4 dod8 si8 dod2 si8 r8 r4 mi2
  fad2 la2 sold2 fad2 
  mi2 red2 dod2 si2 ~
  %% 40 : 
  %%> si4 dod4 si4 la4 sold2 r2 
  si4 dod4 si4 la4 sold4. r8 r2 
  r2 mi'2 red2 dod2 
  si2 la2 sold8 fad8 sold8 la8 si4 <mi, la>4
  <mi sold>2 <red fad>2 mi1^\fermata
}

altomidi = \relative do' {
  %%  1 : 
  s1 s1
  s1 s1
  s1 s1
  mi1 fad2 la2 
  %%  5 : 
  sold2 fad2 mi2 r4 si4 
  mi4 fad4 sold4 lad4 si8 fad8 si2 la4 ~
  la4 sold8 fad8 sold2 dod,2. red8 mi8 
  red2 mi2 ~ mi4 red4 dod2 
  fad,2 si2 dod2 mi2 
  %% 10 : 
  red2 dod2 si4 mi2 red4 ~
  red4 dod2 si8 lad8 si4 fad'2 mi8 red8 
  mi2. red4 dod1 
  si4 dod4 red4 mi4 fad4 dod4 fad2 ~
  fad2 mi2 red1 
  %% 15 : 
  dod4 red4 mi4 fad4 sold2 fad2 
  mi1 fad2 la2 
  sold2 fad2 mi4 dod4 sold'2 ~
  sold4 fad8 mid8 fad2 ~ fad4 mi8 red8 mi4 fad8 mi8 
  red2. sold,4 la2. lad4 
  %% 20 : 
  si2. lad4 si2 re!2 
  dod1 ~ dod2 sold'2 
  dod,2 si2 la2 sold2 
  la4 si4 dod2 ~ dod2 red4 mid4 
  fad2. mi!4 red!2 dod2 ~
  %% 25 : 
  dod4 red8 dod8 sid2 dod4 red4 sold,2 
  red'4 mi8 red8 dod4 la'4 sid,4 dod2 sid4 
  dod2 red2 mi4 sold4 fad4 mi4 
  red4 la'!4 sold4 fad4 mi4 sold4 fad4 mi4 
  red4 mi4 fad4 sold4 la2. sold4 
  %% 30 : 
  fad4 mi4 fad2 mi1 
  fad2 la!2 sold2 fad2 
  mi4 la2 sold4 fad4 re'!4 dod4 si4 
  la4 fadd4 sold4 lad4 sold4 \set Staff.extraNatural = ##f fad!4 mi2 
  red2 dodd2 red2. ~ red8 r8
  %% 35 : 
  red2 si2 dod2 mi2 
  red2 dod2 si2 si'2 
  sold4 mi4 sold4 lad4 si8 fad8 si2 la!4 ~ 
  la4 red,4 mi4 fad4 sold4 dod4 la4 si4 
  sold4 la4 fad4 sold4 mi4 fad4 red4 mi4 ~ 
  %% 40 : 
  mi4 red8 dod8 red2 r4 mi8 fad8 sold4 lad4 
  si8 fad8 si2 la!4 ~ la8 red,8 sold2 fad4 ~ 
  fad8 si,8 mi2 red4 mi4 #(silun 0 -1.5 #t) r4 #(silun 0 -1.5 #t) r4 s4 
  s2 s2 s2 s2 
}

tenormidi = \relative do' {
  %%  1 : 
  s1 s1
  r1 si1 
  dod2 mi2 red2 dod2 
  %%> \once \override NoteColumn #'force-hshift = #+1.6 si2. si4 la4 si4 dod4 red4 
  \once \override NoteColumn #'force-hshift = #+1.6 si2 ~ si8. r16 si4 la4 si4 dod4 red4 
  %%  5 : 
  mi8 si8 mi2 red4 mi2 sold,4 fad4 
  sold2 mi2 fad1 ~
  fad4 si,4 mi2 ~ mi4 dod4 fad2 ~ 
  fad4 mi8 fad8 sold4 la4 si8 fad8 si2 lad4 
  %%> si2 r2 mi,1 
  si4. ~ si16 r16 r2 mi,1 
  %% 10 : 
  fad2 la2 sold2 fad2 
  mi4 la2 sold4 fad4 mi8 red8 mi4 fad4 
  sold4 la4 si8 fad8 si8 la8 sold2 fad2 ~
  fad2 mi!2 red4 mid4 fad2 
  dod4 red4 mi!4 fad4 sold4 red4 sold2 ~
  %% 15 : 
  sold2 fad2 ~ fad4 mi4 red2 
  dod4 sold'4 dod2 ~ dod4 si8 lad8 si2 ~ 
  si4 la!8 sold8 la4 si8 la8 sold2. sold4 
  la2. lad4 si2. lad4 
  si4. la8 sold8 fad8 mi8 red8 mi2 r2 
  %% 20 : 
  fad1 sold2 si2 
  la2 sold2 ~ sold4 fad2 mid4 
  fad2 re!2 dod1 ~
  dod2. red4 mid4 dod4 sold'2 
  fad2 sold4 dod,4 ~ dod4 sid4 dod4 red4 
  %% 25 : 
  mi4 fad8 mi8 red2 ~ red2 mi4 fad4 
  sold2. fad4 mi2 red2 
  mi2 r2 r1 
  r2 si'2 dod4 mi4 red4 dod4 
  si4 re4 dod4 si4 la2 si2 
  %% 30 : 
  si2. la4 sold2. dod4 
  fad,4 red4 mi4 fad4 sold4 si4 dod4 red4 
  sold,4 mi4 fad4 sold4 la4 si4 dod2 ~ 
  dod4 dod4 si4 lad4 si4 red4 dod2 
  si2. lad8 sold8 lad4 si4 dod2 
  %% 35 : 
  si2 r2 mi,1 
  fad2 la2 sold2 fad2 
  mi2 r2 r2 r4 mi4 
  red4 si'4 dod4 red4 mi8 si8 mi2 red4 ~ 
  red8 sold,8 dod2 si4 ~ si8 mi,8 la2 sold4 
  %% 40 : 
  fad1 mi4 sold4 dod4 fad,4 ~ 
  fad4 fad4 sold4 la4 si4 red,4 mi4 fad4 
  \override Glissando #'style = #'dotted-line sold2 \glissando \staffup la2 si4 #(silun 0 -3 #t) r4 #(silun 0 -4 #t) r4 dod4 
  si2. la4 <sold si>1
}

bassemidi = \relative do {
  %%  1 : 
  mi1 fad2 la2 
  sold2 fad2 mi4 red8 dod8 red4 si4 
  mi4 fad4 sold4 lad4 si8 fad8 si2 la4 ~
  la4 sold8 fad8 sold2 ~ sold2 fad2 
  %%  5 : 
  sold2 la4 si8 la8 sold4 fad4 mi4 red4 
  dod1 si2 fad2 
  sold2. mi4 la2. fad4 
  si\breve ~
  si2 r2 r1 
  %% 10 : 
  r1 si1 
  dod2 mi2 red2 dod2 
  si1 ~ si2 la2 
  sold1 fad4 sold4 la4 si4 
  dod4 sold4 dod2 ~ dod2 si2 
  %% 15 : 
  la1 sold1 
  dod2 r4 dod4 re2. red4 
  mi2. red4 mi2 dod2 
  fad2 mi!2 red2 dod2 
  si1 dod2 mi2 
  %% 20 : 
  red2 dod2 si4 sold2 la8 si8 
  \once \override NoteColumn #'force-hshift = #+1.5 dod2 si2 la2 sold2 
  fad2 si2 dod2 dod,2 
  fad4 sold4 la4 fad4 dod'2 si4 dod4 
  re!4 dod4 sid4 dod4 fad,4 sold4 la2 
  %% 25 : 
  sold1 lad4 sid4 dod2 ~
  dod4 si!4 la!2 sold1 ~ 
  sold2 fad2 mi4 dod4 fad2 
  si2 r2 r2 fad'2 
  sold4 si4 la4 sold4 fad2 mi2 
  %% 30 : 
  si'2 si,2 dod4 mi4 red4 dod4 
  red4 si4 dod4 red4 mi2. red4 
  mi4 dod4 red4 mid4 fad2. mid4 
  fad4 red4 mid4 fadd4 sold2. fadd4 
  sold2 mid2 red2 red,2 
  %% 35 : 
  sold2 r2 r1 
  r1 si1 
  dod2 mi2 red2 dod2 
  si4 r4 r2 r1 
  R\breve
  %% 40 : 
  si1 dod2 mi2 \break 
  red2 dod2 si2 la2 
  sold2 fad2 mi4 fad4 sold4 la4 
  si1 mi,1^\fermata 
}

\score { 
  <<
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \sopranomidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \sopranomidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \altomidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \altomidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \tenormidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \tenormidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \basse
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \transpose do do, 
      \basse
    }
    %%$    \new Staff { % tempo staff
    %%$      s1* 56
    %%$      \tempo 2 = 45 s4 \tempo 2 = 40 s4 \tempo 2 = 30 s4 \tempo 2 = 25 s4
    %%$      \tempo 2 = 20 s1
    %%$    }

  >>
  \midi{ 
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 2)
    }
  }

}  


\score {
  {
    \context PianoStaff <<
      \override PianoStaff.VerticalAlignment #'forced-distance = #14
      \context Staff = "dessus" <<
        \global
        \clef violin 
	\context Voice = "soprano" {\voiceOne \soprano}
	\context Voice = "alto" {\voiceTwo \alto}
      >>
      \context Staff = "basse" <<
        \global    
        \clef bass
	\context Voice = "tenor" {\voiceOne \tenor} 
	\context Voice = "basse" {\voiceTwo \basse}
      >>
    >>
    \bar "|."
  }
  \layout { }
  
}


