%%%   Hinweise zum Editieren auf Deutsch:   %%%
%%%
% Um eine etwas bessere midi-Ausgabe zu erzeugen, kann man folgendes tun:
%   1. alle Zeilen, die mit "% no-midi" enden, auskommentieren.
%   2. alle Zeilen, die mit "% MIDI" enden, einkommentieren.
% Die so erzeugte Datei "letter-PS-chopin-25-02-i.midi" sollte man dann unter
% Die anschlie�end durch die �bersetzung mit lilypond erzeugte Datei
% "letter-PS-chopin-25-02-i.midi"
% sollte man dann unter einem anderen Namen, z.B.
% "midi-PS-chopin-op-25-02-i.midi",
% speichern, bevor man die Schritte 1. und 2. wieder raeckgaengig macht,
% um wieder den korrekten Notentext zu erhalten.
%%%
% Die vertikale Position der Zeilen ist nicht immer automatisch optimal,
% deshalb habe ich eine Fein-Einstellung vorgenommen mit:
%    (Y-offset . 52)
% Das geht natuerlich nur im Zusammenhang mit:
%    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
% Da bei allen Zeilenwechseln ohnehin schon eine Festlegung der
% Systemhoehe existiert:
%    #'((fixed-alignment-extra-space . -8.5))
% brauchte ich nur noch den Wert fuer Y-offset an der richtigen Stelle
% einzufuegen, also z.B. jeweils die 2. Zeile der Zeilen:
%    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
%    #'((fixed-alignment-extra-space . -8.5))
% durch z.B. folgende zu ersetzen:
%    #'((fixed-alignment-extra-space . -8.5) (Y-offset . 52))
% Dabei habe ich aber die urspruengliche Zeile stehen lassen und
% auskommentiert.
% Wenn man also nun diese Datei veraendern moechte, dann sollte man die
% auskommentierten Zeilen einkommentieren und die anderen
% auskommentieren. Die entsprechenden Zeilen sind leicht direkt
% anzusprechen, da ich sie am Ende markiert habe mit:
%     % mit Zeilen-Korrektur
% bzw.
%     % ohne Zeilen-Korrektur

%%%   Tips for editing in English:   %%%
%%%
% To get a little better midi-output, you can do the following:
%   1. outcomment all lines, which end with "% no-midi".
%   2. incomment all lines, which end with "% MIDI".
% After compiling again with lilypond the generated file
% "letter-PS-chopin-25-02-i.midi"
% should be copied under another name, par example
% "midi-PS-chopin-op-25-02-i.midi",
% before doing step 1 and 2 vice versa to get the correct score again.
%%%
% The vertical position of the staff-lines isn't always created very
% fine by lilypond, so I've fine-tuned them with:
%    (Y-offset . 52)
% This is only possible together with:
%    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
% Since I've determined the height for each System-line with:
%    #'((fixed-alignment-extra-space . -8.5))
% there was only to add the number for the Y-offset at the correct
% point, par example the second of the following two lines:
%    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
%    #'((fixed-alignment-extra-space . -8.5))
% to change with:
%    #'((fixed-alignment-extra-space . -8.5) (Y-offset . 52))
% The old lines I've leaved and commented out.
% Now if somebody wishes to change this file for his own purposes, he
% should the outcommented lines incomment and the others outcomment. The
% concerning lines are easily to find, because they are marked at the
% end with:
%     % mit Zeilen-Korrektur
% btw.
%     % ohne Zeilen-Korrektur

% Anmerkung zum Notentext auf Deutsch:
% Das "dim. e piu rit." (Takt 66-67) habe ich ersetzt durch ein "dim.", aus
% folgenden zwei Gruenden:
%
% 1. Nach dem letzten "a tempo" steht ja vorher kein "rit.", wodurch ein "piu"
%    unmoeglich wird.
%
% 2. Nur Konrad Hansen schreibt genauso wie Herrmann Scholz, die folgenden fuenf
%    Ausgaben haben nur "dim.":
%    Die vier Fassungen, die unter
%    <http://pi.lib.uchicago.edu/1001/dig/chopin/> veroeffentlicht sind,
%    und G. Henle.

% Notes to the notation-text in English:
% I've changed the "dim. e piu rit." (Bar 66-67) by "dim." for the following two
% reason:
%
% 1. After the last "a tempo" there was no "rit." before, so a "piu rit." is
%    impossible.
%
% 2. Only Konrad Hansen writes exactly like Herrmann Scholz, the following five
%    editions have simply "dim.":
%    The four versions, which are published under
%    <http://pi.lib.uchicago.edu/1001/dig/chopin/>,
%    and G. Henle.

%lastupdated = #(strftime "Fassung vom %d. %B %Y, %H:%M Uhr" (localtime (current-time)))
footer = #(strftime "Mutopia-%Y/%B/%d-xxx" (localtime (current-time)))

\version "2.8.1"

\header {
  filename      =       "letter-PS-chopin-25-02-i.ly"
  title         =       \markup \fontsize #1 { "Etüde f-moll" }
  %subsubtitle   =       \lastupdated
  composer      =       \markup \large { "Frédéric Chopin (1810 - 1849)" }
  opus          =       \markup \center-align { \fontsize #-11 " " \normalsize "Opus 25 Nr. 2" }
  enteredby     =       "Roland Goretzki"

 mutopiatitle = "Etüde f-moll"
 mutopiacomposer = "ChopinFF"
 mutopiaopus = "Op. 25, No. 2"
 mutopiainstrument = "Piano"
 date = "1832-1837"
 source = "Peters, Herrmann Scholtz, 1900b"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Roland Goretzki"
 maintainerEmail = "roland@roland-goretzki.de"
 maintainerWeb = "http://www.roland-goretzki.de/"
 lastupdated = "2006/May/09"

 footer = "Mutopia-2006/05/10-757"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
  \key f \minor
  \time 2/2
  \partial 4
  s4
  s1*69
  \bar "|."
}

#(set-global-staff-size 20)

#(set-default-paper-size "letter")      % letter
\paper{                                 % letter
    top-margin = .6\cm                  % letter
    page-top-space = .8\cm              % letter
    left-margin = 1\cm                  % letter
    line-width = 19.79\cm               % letter
    paper-width = 8.5\in                % letter
    paper-height = 11\in                % letter
    before-title-space = 0\cm           % letter
    %after-title-space = 1\cm           % letter
    printfirst-page-number = ##f        % letter
    print-page-number = ##t             % letter
    %between-system-space = 1\cm        % letter
    between-system-padding = #.7        % letter
    ragged-bottom=##f                   % letter
    ragged-last-bottom=##f              % letter
    bottom-margin = .6\cm               % letter
}                                       % letter

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%
TriolenZahlOben = \override TupletBracket #'direction = #1
TriolenZahlUnten = \override TupletBracket #'direction = #-1
KlammerWeg = \override TupletBracket #'bracket-visibility = ##f
TriolenZahlWeg = \override TupletNumber #'transparent = ##t
TriolenZahl = \override TupletNumber #'transparent = ##f
%
HalbeSpanner = \set tupletSpannerDuration = #(ly:make-moment 1 2)
ViertelSpanner = \set tupletSpannerDuration = #(ly:make-moment 1 4)
ViertelBalken = \set Staff.beatLength = #(ly:make-moment 1 4)
%
oben = \change Staff = up
unten = \change Staff = down
%
Extraspace = \once\override Score.SeparationItem #'padding = #.2
HalbExtraSpace = \once\override Score.SeparationItem #'padding = #.5
%
KlammerR = \markup { \fontsize #'-2 \musicglyph #"accidentals.rightparen" }
KlammerL = \markup { \fontsize #'-2 \musicglyph #"accidentals.leftparen" }
KlammerPaar = \markup { \fontsize #'-2 {
\musicglyph #"accidentals.leftparen" \hspace #1 \musicglyph #"accidentals.rightparen" } }
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Text verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Text dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TextScript 'extra-offset (cons dx dy) once)))
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Keil verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Keil dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Hairpin 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Bogen verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Bogen dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  PhrasierungsBogenKurve  %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (PhrasierungsBogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'PhrasingSlur 'height-limit dy once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  BogenKurve  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (BogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'height-limit dy once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  KlammerZahl verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (KlammerZahl dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TupletBracket 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Finger verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Finger dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Fingering 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Dynamik verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Dynamik dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'DynamicText 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Akzent verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Akzent dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Script 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Triole verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Triole dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TupletNumber 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%%%%%%%%%   Ende des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%% Beginn der einzelnen Stimmen:

rechts = \relative c'{
\set Staff.midiMinimumVolume = #-.5
\set Staff.midiMaximumVolume = #1
  \context Voice = "rechts"
  \override GrandStaff.InstrumentName #'extra-offset = #'(-1.7 . -.6)
  \override GrandStaff.InstrumentName #'font-size = #'3
  \set GrandStaff.instrument = \markup { \number { 14 \hspace #-1 . } }
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 3.5)
  \override Score.RehearsalMark #'self-alignment-X = #'-1
    \mark \markup { Presto { (
    \fontsize #'-2 { \general-align #Y #DOWN \note #"2" #.8 = 112 } ) } }
%%%%%%%%%%%%%%%%%%%%%%
%%%   Beginn   :   %%%
%
\set Staff.extraNatural = ##f
#(BogenKurve 5 #f)
#(Text -.4 1.8 #t)
#(Dynamik 0 -2.5 #t)
\once\override Voice.DynamicText #'transparent = ##t
c'4%N
-3%F
_2%F
_\markup { \fontsize #'-2 \musicglyph #"accidentals.leftparen" }
\p
(
% _______________ % Auftakt __ >
\KlammerWeg\ViertelBalken\ViertelSpanner\TriolenZahlOben
\times 2/3 {
\override Fingering #'avoid-slur = #'inside
#(Text -9.5 -.4 #t)
c8%N
-2%F
_1%F
-\markup { \dynamic p \italic { molto \hspace #'-.04 legato } }
des%N
_4%F
h%N
_2%F
c%N
_1%F
es%N
des%N
#(Triole 0 1.6 #t)
c%N
-1%F
des%N
-3%F
_4%F
h!%N
-1%F
_2%F
#(Triole 0 1.6 #t)
c%N
-2%F
_1%F
fis%N
-4%F
g%N
% _______________ % Takt  1 __ >
\TriolenZahlWeg
c,%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
c%N
-2%F
_1%F
es%N
des%N
c%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
#(Text 1.6 1.8 #t)
c%N
-2%F
_1%F
_\markup { \fontsize #'-2 \musicglyph #"accidentals.rightparen" }
as'%N
-5%F
f%N
-4%F
% _______________ % Takt  2 __ >
%\Axpiano
e%N
f%N
e%N
dis%N
e%N
-1%F
g%N
-2%F
b%N
-3%F
c%N
b%N
a%N
-1%F
b%N
-2%F
des!%N
% _______________ % Takt  3 __ >
c%N
-3%F
des%N
c%N
h%N
c%N
g%N
-1%F
%\Axforget
as%N
-2%F
%\Axdefault\Axpiano
b%N
-4%F
as%N
-3%F
g%N
as%N
e%N
% _______________ % Takt  4 __ >
f%N
-2%F
g%N
-4%F
f%N
-3%F
e%N
f%N
c%N
des%N
-2%F
es%N
-4%F
des%N
-3%F
c%N
des%N
h%N
% _______________ % Takt  5 __ >
c%N
-2%F
des%N
-4%F
c%N
-3%F
h%N
c%N
g%N
as%N
-2%F
b%N
-4%F
as%N
-3%F
g%N
as%N
f%N
-2%F
% _______________ % Takt  6 __ >
e%N
-1%F
g%N
b%N
des%N
-4%F
e%N
-1%F
g%N
b%N
-3%F
des%N
-5%F
c%N
b%N
as%N
g%N
% _______________ % Takt  7 __ >
b%N
-3%F
c%N
as%N
g%N
-1%F
as%N
-4%F
f%N
-2%F
e%N
-1%F
g%N
-3%F
f%N
e%N
f%N
-4%F
des!%N
-2%F
% _______________ % Takt  8 __ >
c%N
-1%F
#(Text -.4 1.8 #t)
des%N
-3%F
_4%F
_\markup { \fontsize #'-2 \musicglyph #"accidentals.leftparen" }
h%N
-1%F
_2%F
c%N
-2%F
_1%F
es%N
des%N
c%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
c%N
-2%F
_1%F
fis%N
-4%F
g%N
% _______________ % Takt  9 __ >
c,%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
#(Text 1.6 1.8 #t)
c%N
-2%F
_1%F
_\markup { \fontsize #'-2 \musicglyph #"accidentals.rightparen" }
es%N
des%N
c%N
-1%F
des%N
-3%F
h%N
-1%F
c%N
-2%F
as'%N
-5%F
f%N
-4%F
% _______________ % Takt 10 __ >
es!%N
f%N
es%N
d%N
es%N
g%N
-1%F
b%N
-3%F
c%N
b%N
a%N
-1%F
b%N
f'%N
% _______________ % Takt 11 __ >
es%N
f%N
es%N
-3%F
d%N
es%N
h%N
-1%F
c%N
-2%F
des%N
-4%F
c%N
-3%F
h%N
c%N
g%N
% _______________ % Takt 12 __ >
as%N
-2%F
b!%N
-4%F
as%N
-3%F
g%N
as%N
e%N
f%N
-2%F
g%N
-4%F
f%N
-3%F
e%N
f%N
-4%F
des%N
-2%F
% _______________ % Takt 13 __ >
c%N
-1%F
des%N
-3%F
b%N
-2%F
g%N
-1%F
as%N
b%N
c%N
-1%F
des%N
es%N
f%N
-1%F
g%N
as%N
% _______________ % Takt 14 __ >
g%N
as%N
f%N
es%N
-3%F
f%N
des%N
c%N
des%N
-4%F
b%N
-2%F
c%N
-5%F
f,%N
-1%F
g%N
% _______________ % Takt 15 __ >
as%N
b%N
as%N
g%N
as%N
a%N
-1%F
b%N
-2%F
c%N
-4%F
b%N
-3%F
c%N
-5%F
f,!%N
-1%F
g%N
% _______________ % Takt 16 __ >
as!%N
b%N
as%N
g%N
as%N
a%N
-1%F
b%N
-2%F
c%N
-4%F
b%N
-3%F
c%N
-5%F
f,!%N
g%N
% _______________ % Takt 17 __ >
as!%N
-3%F
b%N
-4%F
as%N
-2%F
g%N
as%N
b%N
#(Text -.4 2 #t)
c%N
-4%F
_1%F
_\KlammerPaar
des%N
-3%F
c%N
h%N
c%N
des%N
% _______________ % Takt 18 __ >
c%N
-1%F
des%N
-3%F
c%N
-2%F
h%N
c%N
des%N
c%N
-1%F
#(Text -.4 1.8 #t)
des%N
-3%F
_4%F
_\KlammerL
c%N
-2%F
_2%F
des%N
_3%F
c%N
-1%F
_1%F
des%N
-3%F
_2%F
)
% _______________ % Takt 19 __ >
c%N
-2%F
_1%F
(
des%N
-3%F
_4%F
h%N
_2%F
c%N
_1%F
es%N
des%N
c%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
c%N
-2%F
_1%F
fis%N
-4%F
g%N
% _______________ % Takt 20 __ >
c,%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
#(Text 1.6 1.8 #t)
c%N
-2%F
_1%F
_\KlammerR
es%N
des%N
c%N
-1%F
des%N
-3%F
h%N
-1%F
c%N
-2%F
as'%N
-5%F
f%N
-4%F
% _______________ % Takt 21 __ >
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
e%N
f%N
e%N
dis%N
e%N
-1%F
g%N
-2%F
b%N
-3%F
c%N
b%N
a%N
-1%F
b%N
des!%N
% _______________ % Takt 22 __ >
c%N
-3%F
des%N
c%N
h%N
c%N
g%N
-1%F
as%N
-2%F
b%N
-4%F
as%N
-3%F
g%N
as%N
e%N
% _______________ % Takt 23 __ >
f%N
-2%F
g%N
-4%F
f%N
-3%F
e%N
f%N
c%N
des%N
-2%F
es%N
-4%F
des%N
-3%F
c%N
des%N
h%N
% _______________ % Takt 24 __ >
c%N
-2%F
des%N
-4%F
c%N
-3%F
h%N
c%N
g%N
as%N
-2%F
b%N
-4%F
as%N
-3%F
g%N
as%N
f%N
-2%F
% _______________ % Takt 25 __ >
e%N
-1%F
g%N
b%N
des%N
-4%F
e%N
-1%F
g%N
b%N
-3%F
des%N
-5%F
c%N
b%N
as%N
g%N
% _______________ % Takt 26 __ >
b%N
-3%F
c%N
as%N
g%N
-1%F
as%N
-4%F
f%N
-2%F
e%N
-1%F
g%N
-3%F
f%N
e%N
f%N
-4%F
des%N
-2%F
% _______________ % Takt 27 __ >
c%N
-1%F
#(Text -.4 1.8 #t)
des%N
-3%F
_4%F
_\KlammerL
h%N
-1%F
_2%F
c%N
-2%F
_1%F
es!%N
des%N
c%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
c%N
-2%F
_1%F
fis%N
-4%F
g%N
% _______________ % Takt 28 __ >
c,%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
#(Text 1.6 1.8 #t)
c%N
-2%F
_1%F
_\KlammerR
es%N
des%N
c%N
-1%F
des%N
-3%F
h%N
-1%F
c%N
-2%F
as'%N
-5%F
f%N
-4%F
% _______________ % Takt 29 __ >
es!%N
f%N
es%N
d%N
es%N
g%N
-1%F
b%N
c%N
b%N
a%N
-1%F
b%N
f'%N
% _______________ % Takt 30 __ >
es%N
f%N
es%N
-3%F
d%N
es%N
h%N
-1%F
c%N
-2%F
des%N
-4%F
c%N
-3%F
h%N
c%N
g%N
% _______________ % Takt 31 __ >
as%N
-2%F
b!%N
-4%F
as%N
-3%F
g%N
as%N
e%N
f%N
-2%F
g%N
-4%F
f%N
-3%F
e%N
f%N
-4%F
des%N
-2%F
% _______________ % Takt 32 __ >
c%N
-1%F
des%N
-3%F
b%N
-2%F
g%N
-1%F
as%N
b%N
c%N
-1%F
des%N
es%N
f%N
-1%F
g%N
as%N
% _______________ % Takt 33 __ >
g%N
as%N
f%N
es%N
-3%F
f%N
des%N
c%N
des%N
-4%F
b%N
-2%F
c%N
-5%F
f,%N
-1%F
g%N
% _______________ % Takt 34 __ >
as%N
b%N
as%N
g%N
as%N
a%N
-1%F
b%N
-2%F
c%N
-4%F
b%N
-3%F
c%N
-5%F
f,!%N
-1%F
g%N
% _______________ % Takt 35 __ >
as!%N
b%N
as%N
g%N
as%N
a%N
-1%F
b%N
-2%F
c%N
-4%F
b%N
-3%F
c%N
-5%F
f,!%N
g%N
% _______________ % Takt 36 __ >
as!%N
-3%F
b%N
-4%F
as%N
-2%F
g%N
as%N
b%N
c%N
-1%F
des%N
-3%F
c%N
-2%F
h%N
c%N
des%N
% _______________ % Takt 37 __ >
es%N
f%N
-5%F
es%N
-3%F
f%N
-4%F
es%N
des%N
c%N
-1%F
des%N
-3%F
c%N
-2%F
des%N
-4%F
g,!%N
-1%F
a%N
% _______________ % Takt 38 __ >
b%N
c%N
b%N
a%N
b%N
h%N
-1%F
c%N
-2%F
des%N
-4%F
c%N
-3%F
des%N
-4%F
g,!%N
-1%F
a%N
% _______________ % Takt 39 __ >
b!%N
c%N
b%N
a%N
b%N
h%N
-1%F
c%N
-2%F
des%N
-4%F
c%N
-3%F
des%N
-4%F
g,!%N
-1%F
a%N
% _______________ % Takt 40 __ >
b%N
c%N
b%N
a%N
b%N
c%N
-1%F
d%N
-2%F
es%N
-4%F
d%N
-3%F
cis%N
-2%F
d%N
-1%F
es%N
% _______________ % Takt 41 __ >
f%N
g%N
-4%F
f%N
-3%F
g%N
-5%F
f%N
es%N
d%N
es%N
d%N
es%N
-4%F
a,%N
-1%F
h%N
% _______________ % Takt 42 __ >
c%N
des!%N
c%N
h%N
c%N
-1%F
#(Text -.4 2 #t)
g'%N
-5%F
_2%F
_\KlammerPaar
as%N
-3%F
b!%N
as%N
g%N
as%N
e%N
% _______________ % Takt 43 __ >
f%N
-3%F
g%N
-5%F
f%N
-4%F
es!%N
des%N
c%N
b%N
-4%F
as%N
g%N
f%N
g%N
as%N
% _______________ % Takt 44 __ >
g%N
-1%F
des'%N
-4%F
c%N
h%N
-2%F
c%N
-1%F
#(Text -.4 2 #t)
g'%N
-5%F
_2%F
_\KlammerPaar
as%N
-3%F
b!%N
as%N
g%N
as%N
e%N
% _______________ % Takt 45 __ >
f%N
-3%F
g%N
-5%F
f%N
-4%F
es!%N
des%N
c%N
b%N
-4%F
as%N
g%N
f%N
g%N
as%N
% _______________ % Takt 46 __ >
g%N
-1%F
g'%N
f%N
e%N
des%N
c%N
b%N
-4%F
as%N
g%N
f%N
g%N
as%N
% _______________ % Takt 47 __ >
g%N
-1%F
g'%N
f%N
e%N
des%N
c%N
b%N
-4%F
as%N
g%N
f%N
g%N
as%N
% _______________ % Takt 48 __ >
g%N
-1%F
des'%N
-3%F
c%N
h%N
c%N
des%N
c%N
-1%F
des%N
-3%F
c%N
-2%F
h%N
c%N
des%N
% _______________ % Takt 49 __ >
c%N
-1%F
des%N
-3%F
c%N
-2%F
h%N
c%N
des%N
c%N
-1%F
des%N
-3%F
c%N
-2%F
des%N
c%N
-1%F
\override Fingering #'avoid-slur = #'outside
#(Text -.4 1.8 #t)
des%N
-3%F
_2%F
_\KlammerL
)
% _______________ % Takt 50 __ >
c8%N
-2%F
_1%F
(
\override Fingering #'avoid-slur = #'inside
des%N
_4%F
h%N
_2%F
c%N
_1%F
es%N
des%N
c%N
-1%F
des%N
-3%F
_4%F
% Vor dem folgenden h sollte ein Auflösungszeichen stehen:
h%N
-1%F
_2%F
c%N
_1%F
-2%F
fis%N
-4%F
g%N
% _______________ % Takt 51 __ >
\TriolenZahlWeg
c,%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
c%N
-2%F
_1%F
es%N
des%N
c%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
#(Text 1.6 1.8 #t)
c%N
-2%F
_1%F
_\KlammerR
as'%N
-5%F
f%N
-4%F
% _______________ % Takt 52 __ >
%\Axpiano
e%N
f%N
e%N
dis%N
e%N
-1%F
g%N
-2%F
b%N
-3%F
c%N
b%N
a%N
-1%F
b%N
des!%N
% _______________ % Takt 53 __ >
c%N
-3%F
des%N
c%N
h%N
c%N
g%N
-1%F
%\Axforget
as%N
-2%F
%\Axdefault\Axpiano
b%N
-4%F
as%N
-3%F
g%N
as%N
e%N
% _______________ % Takt 54 __ >
f%N
-2%F
g%N
-4%F
f%N
-3%F
e%N
f%N
c%N
des%N
-2%F
es%N
-4%F
des%N
-3%F
c%N
des%N
h%N
% _______________ % Takt 55 __ >
c%N
-2%F
des%N
-4%F
c%N
-3%F
h%N
c%N
g%N
as%N
-2%F
b%N
-4%F
as%N
-3%F
g%N
as%N
f%N
-2%F
% _______________ % Takt 56 __ >
e%N
-1%F
g%N
b%N
des%N
-4%F
e%N
-1%F
g%N
\override Fingering #'avoid-slur = #'outside
#(Text 0 1.3 #t)
b%N
-3%F
^\markup { \italic { poco rit. } }
)
\override Fingering #'avoid-slur = #'outside
des-.%N
-5%F
(
c-.%N
b-.%N
as-.%N
g-.%N
)
% _______________ % Takt 57 __ >
#(Finger -.6 -2.1 #t)
#(Text -1 -.6 #t)
#(BogenKurve 4 #t)
b%N
-3%F
^\markup { \italic { a tempo } }
(
\override Fingering #'avoid-slur = #'inside
c%N
as%N
g%N
-1%F
as%N
-4%F
f%N
-2%F
e%N
-1%F
g%N
-3%F
f%N
e%N
f%N
-4%F
des%N
-2%F
% _______________ % Takt 58 __ >
c%N
-1%F
#(Text -.4 1.8 #t)
des%N
-3%F
_4%F
_\KlammerL
h%N
-1%F
_2%F
c%N
-2%F
_1%F
es!%N
des%N
c%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
c%N
-2%F
_1%F
fis%N
-4%F
g%N
% _______________ % Takt 59 __ >
c,%N
-1%F
des%N
-3%F
_4%F
h%N
-1%F
_2%F
#(Text 1.6 1.8 #t)
c%N
-2%F
_1%F
_\KlammerR
es%N
des%N
c%N
-1%F
des%N
-3%F
h%N
-1%F
c%N
-2%F
as'%N
-5%F
f%N
-4%F
% _______________ % Takt 60 __ >
e%N
f%N
e%N
dis%N
e%N
-1%F
g%N
b%N
-3%F
c%N
b%N
a%N
-1%F
b%N
des!%N
% _______________ % Takt 61 __ >
c%N
-1%F
as'%N
-4%F
g%N
ges%N
f%N
e%N
-3%F
es%N
d%N
des%N
-3%F
c%N
ces%N
b%N
-4%F
% _______________ % Takt 62 __ >
a%N
as%N
g%N
f'%N
-5%F
des%N
-3%F
b%N
-2%F
g%N
-1%F
#(Text -.4 2 #t)
f%N
-5%F
_4%F
_\KlammerPaar
des%N
-3%F
b%N
-2%F
g%N
-1%F
des'%N
-3%F
% _______________ % Takt 63 __ >
c%N
des%N
h%N
-1%F
c%N
-4%F
as%N
-2%F
b%N
c%N
-1%F
des%N
-3%F
c%N
-2%F
des%N
f%N
-5%F
es%N
% _______________ % Takt 64 __ >
c%N
-1%F
des%N
-4%F
% Vor dem folgenden b sollte kein Vorzeichen stehen:
b!%N
-2%F
c%N
-3%F
es%N
-5%F
des%N
b%N
-2%F
c%N
as%N
-1%F
b%N
-3%F
des%N
-5%F
c%N
#(Akzent 0 2 #t)
#(Bogen 0 3 #t)
% _______________ % Takt 65 __ >
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=110
\override Fingering #'avoid-slur = #'outside
f,%N
^>
)
#(PhrasierungsBogenKurve 7 #t)
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=108
c''%N
-5%F
\(
\override Fingering #'avoid-slur = #'inside
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=105
b%N
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=102
as%N
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=98
g%N
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=94
f%N
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=90
es%N
-3%F
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=85
des%N
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=80
c%N
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=75
b%N
-2%F
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=70
c%N
-1%F
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=65
des%N
% _______________ % Takt 66 __ >
c%N
c'%N
-5%F
b%N
as%N
g%N
f%N
es%N
-3%F
des%N
c%N
b%N
-2%F
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=35
c%N
-3%F
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=10
%%%% ------------------------------------------ --- % MIDI
%%%%   BEGINN    AUSTAUSCH - BLOCK   M I D I    --- % MIDI
%%%%                                            --- % MIDI
%\times 2/3 { %                                     % MIDI
%\once\override Score.MetronomeMark %               % MIDI
%#'transparent = ##t \tempo 2=35 %                  % MIDI
%es16 %                                             % MIDI
%\once\override Score.MetronomeMark %               % MIDI
%#'transparent = ##t \tempo 2=15 %                  % MIDI
%des16. %                                           % MIDI
%\once\override Score.MetronomeMark %               % MIDI
%#'transparent = ##t \tempo 2=8 %                   % MIDI
%c32 %                                              % MIDI
%\once\override Score.MetronomeMark %               % MIDI
%#'transparent = ##t \tempo 2=50 %                  % MIDI
%} } %                                              % MIDI
%\stemUp                                            % MIDI
%\override Fingering #'avoid-slur = #'inside        % MIDI
%#(Dynamik .5 -2.4 #t)                              % MIDI
%c2-\f                                              % MIDI
%\arpeggio                                          % MIDI
%c4-\p c-\pp                                        % MIDI
%%%%                                            --- % MIDI
%%%%    Ende     AUSTAUSCH - BLOCK   M I D I    --- % MIDI
%%%% ------------------------------------------ --- % MIDI
%%% ------------------------------------------ --- % no-midi
%%%   BEGINN    AUSTAUSCH - BLOCK nicht-midi   --- % no-midi
%%%                                            --- % no-midi
\override Slur #'direction = #1 %                  % no-midi
\override Fingering #'avoid-slur = #'outside %     % no-midi
\set fontSize = #-2 %                              % no-midi
#(Bogen -.2 1.5 #t) %                              % no-midi
\grace %                                           % no-midi
es%N %                                             % no-midi
-5%F %                                             % no-midi
( %                                                % no-midi
\Extraspace %                                      % no-midi
<< { %                                             % no-midi
\unset fontSize %                                  % no-midi
des%N %                                            % no-midi
\once\override Score.MetronomeMark                 % no-midi
#'transparent = ##t \tempo 2=50                    % no-midi
} { %                                              % no-midi
s16%N %                                            % no-midi
\Extraspace %                                      % no-midi
\set fontSize = #-2 %                              % no-midi
\grace %                                           % no-midi
c8%N %                                             % no-midi
-3%F %                                             % no-midi
) %                                                % no-midi
} >> } %                                           % no-midi
\unset fontSize %                                  % no-midi
% _______________ % Takt 67 __ >
\stemUp                                            % no-midi
\override Fingering #'avoid-slur = #'inside        % no-midi
#(Dynamik .5 -2.4 #t)                              % no-midi
c2%N                                               % no-midi
-4%F                                               % no-midi
-\pp                                               % no-midi
\arpeggio                                          % no-midi
c4%N                                               % no-midi
-5%F                                               % no-midi
c%N                                                % no-midi
-4%F                                               % no-midi
%%%                                            --- % no-midi
%%%    Ende     AUSTAUSCH - BLOCK nicht-midi   --- % no-midi
%%% ------------------------------------------ --- % no-midi
#(Finger .8 6.3 #t)
#(Akzent 0 .5 #t)
c1%N
_5%F
^\fermata
\)
% _______________ % Takt 68 - % Takt 69 __ >
}

piano = \markup { \fontsize #-1.2 \dynamic p }
pp = \markup { \fontsize #-1.2 \dynamic pp }
forte = \markup { \fontsize #-1.2 \dynamic f }
cresc = \markup { \italic cresc. }
dim = \markup { \italic dim. }
rit = \markup { \italic rit. }

keile = \relative c'{
  \stemUp
  \override Score.DynamicTextSpanner #'font-size = #'0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  s4
  \times 2/3 {
  \TriolenZahlWeg\KlammerWeg\ViertelBalken\ViertelSpanner
    \hideNotes
    g8
    \unHideNotes
    s s           s s s       s s s       s s s             % Takt  1
  #(Keil 2 4 #f)
    s s s         s s s       s s s       s s s             % Takt  2
    s^\< s s      s s s       s s s       s s \! s          % Takt  3
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -8.5) (Y-offset . 52)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -8.5))                % ohne Zeilen-Korrektur
  #(Keil 2 4 #f)
    s^\> s s      s s s       s s s       s s s             % Takt  4
    s s s         s s s       s s s       s s \! s          % Takt  5
    s s s         s s s       s s s       s s s             % Takt  6
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -7))
  #(Keil 2.5 4.7 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt  7
  #(Keil 1.8 4.7 #f)
    s^\> s s      s s s       s s s       s s \! s          % Takt  8
    s s s         s s s       s s s       s s s             % Takt  9
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -6))
    s s s         s s s       s s s       s s s             % Takt 10
  #(Keil 2 3.5 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt 11
  #(Keil -1 3.5 #f)
    s s^\> s      s s s       s s s       s s s             % Takt 12
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -9.5))
    s s s         s s s       s s s       s s \! s          % Takt 13
  #(Keil 2 3.2 #f)
    s s s         s^\< s s    s s s       s s \! s          % Takt 14
    s^\> s s      s s s       s s s       s s \! s          % Takt 15
  #(Dynamik .5 2.9 #f)
    s^\p s s      s s s       s s s       s s s             % Takt 16
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -11))
    s s s         s s s       s s s       s s s             % Takt 17
  #(Text 0 2.8 #f)
    s^\cresc s s  s s s       s s s       s s s             % Takt 18
  #(Text 0 2 #f)
    s s s         s s^\dim s  s s s       s s s             % Takt 19
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -6.5))
    s s s         s s s       s s s       s s s             % Takt 20
    s s s         s s s       s s s       s s s             % Takt 21
  #(Keil 2 3 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt 22
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -10) (Y-offset . 87.4)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -10))                  % ohne Zeilen-Korrektur
  #(Keil -1.5 3 #f)
    s s^\> s      s s s       s s s       s s s             % Takt 23
    s s s         s s s       s s s       s s s \!          % Takt 24
    s s s         s s s       s s s       s s s             % Takt 25
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -7.5))
  #(Keil 2 3.9 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt 26
    s^\> s s      s s s       s s s       s s \! s          % Takt 27
    s s s         s s s       s s s       s s s             % Takt 28
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -6))
    s s s         s s s       s s s       s s s             % Takt 29
  #(Keil 2 3.7 #t)
    s^\< s s      s s s       s s s       s s \! s          % Takt 30
  #(Keil -2 3.7 #f)
    s s^\> s      s s s       s s s       s s s             % Takt 31
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -8) (Y-offset . 31.5)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -8))                  % ohne Zeilen-Korrektur
    s s s         s s s       s s s       s s s \!          % Takt 32
  #(Keil 2 3.6 #f)
    s s s         s^\< s s    s s s       s s \! s          % Takt 33
    s^\> s s      s s s       s s s       s \! s s          % Takt 34
  #(Dynamik .5 3.4 #t)
    s^\p s s      s s s       s s s       s s s             % Takt 35
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -8) (Y-offset . 60)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -8))                % ohne Zeilen-Korrektur
  #(Text 0 2.8 #t)
    s2^\markup { \italic { poco \hspace #7.2 a
      \hspace #7.2 poco \hspace #7.2 cresc. } } s s         % Takt 36
    s8 s s        s s s       s
              #(Keil -2 3.6 #t) s^\< s    s s s             % Takt 37
  #(Keil 0 3.6 #f)
    s s s \!      s^\> s s    s s s       s s s \!          % Takt 38
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -8) (Y-offset . 89)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -8))                % ohne Zeilen-Korrektur
  \setTextCresc
  \override DynamicTextSpanner #'extra-offset = #'(1 . 3) 
  \set crescendoText = \markup { \raise #'-.5 \italic "cre" \hspace #3 }
  \override DynamicTextSpanner #'dash-period = #'7
  \override DynamicTextSpanner #'dash-fraction = #'.1
    s s s         s s s       s^\< s s    s s s \!          % Takt 39
  \setTextCresc
  \override DynamicTextSpanner #'extra-offset = #'(-1.3 . 3) 
  \set crescendoText = \markup { \raise #'-.5 \italic "scen" \hspace #2 }
    s s^\< s      s s s       s s s       s \!
  #(Text 0 3.5 #t)
      s^\markup { \italic do } s                            % Takt 40
  #(Keil -1.3 3.2 #f)
    s s s         s s^\< s    s s s       s s s             % Takt 41
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -7))
  #(Keil 2.7 3.3 #f)
    s s s \!     ^\> s s s    s s s       s s \! s          % Takt 42
  #(Dynamik .5 2.7 #t)
  #(Keil 3.3 3.9 #f)
    s^\f s s      s^\< s s    s \! s s    s s s             % Takt 43
  #(Keil 2 3.9 #f)
    s^\> s s      s s s       s s s       s s \! s          % Takt 44
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -2))
  #(Dynamik 0 4.4 #t)
  #(Keil 2 4.9 #f)
    s^\p s s      s^\< s s    s s \! s    s s s             % Takt 45
  #(Keil 2 4.9 #f)
    s^\> s s      s s \! s    s s s       s s s             % Takt 46
  \setTextCresc
  \override DynamicTextSpanner #'extra-offset = #'(0 . 4.3) 
  \override DynamicTextSpanner #'dash-period = #'10
  \set crescendoText = \markup { \raise #-.5 \italic "smorz." \hspace #1 }
    s s s         s s s       s s s       s^\< s s          % Takt 47
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -4))
    s s s         s s s       s s s       s s s             % Takt 48
    s s s \!      s s s       s
  #(Keil -3 3.6 #t)
                                s^\< s       s s s          % Takt 49
  #(Keil 0 3.6 #f)
    s s s      s \!^\> s s    s s s       s s s \!          % Takt 50
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . 2))
  #(Text 0 4.5 #t)
    s^\markup { \italic { sempre \hspace #2.6 piano } }
      s s         s s s       s s s       s s s             % Takt 51
    s s s         s s s       s s s       s s s             % Takt 52
  #(Keil 1.7 5 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt 53
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -4))
  #(Keil 2 4.3 #f)
    s^\> s s      s s s       s s s       s s s             % Takt 54
    s s s         s s s       s s s       s \! s s          % Takt 55
    s s s         s s s       s s s       s s s             % Takt 56
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -5))
  #(Keil -1.5 4.8 #f)
    s s s         s s^\< s    s s s       s s s \!          % Takt 57
  #(Keil 1.5 4.8 #f)
    s^\> s s      s s s       s s s       s s \! s          % Takt 58
    s s s         s s s       s s s       s s s             % Takt 59
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -5))
    s s s         s s s       s s s       s s s             % Takt 60
  #(Keil 2 3.4 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt 61
  #(Text 1 2.8 #t)
    s^\markup { \italic poco \hspace #1 \dynamic rfz }
      s s         s s s       s s s       s s s             % Takt 62
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -7))
  #(Keil .2 3.4 #f)
    s s s         s^\> s s    s s s       s s \! s          % Takt 63
  #(Dynamik 0 3 #t)
    s^\p s s      s s s       s s s       s s s             % Takt 64
    s s s         s s s       s s s       s s s             % Takt 65
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -3) (Y-offset . 97.5)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -3))                  % ohne Zeilen-Korrektur
  \setTextCresc
  \override DynamicTextSpanner #'extra-offset = #'(0 . 4.2) 
  \override DynamicTextSpanner #'dash-period = #'8.4
  \override DynamicTextSpanner #'dash-fraction = #'.13
  \set crescendoText = \markup { \raise #-.5 { \italic "dim." \hspace #.3 } }
    s s s         s s s       s s s       s^\< s s          % Takt 66
    s s s         s s s       s s s       s s s \!          % Takt 67
  }
  s1                                                        % Takt 68
  s                                                         % Takt 69
}

PH = \sustainUp
PR = \sustainDown

pedal = \relative c'{
  \override Staff.SustainPedal #'extra-offset = #'(.2 . -.2)
  \stemUp
  s4
  s16 \PR s s s        s s s s        s s s s        s s s \PH s      % Takt  1
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt  2
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt  3
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt  4
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt  5
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt  6
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt  7
    s \PR s s s        s s s s        s s \PH s s    s s s s          % Takt  8
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt  9
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 10
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 11
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 12
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 13
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 14
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 15
  \override Staff.SustainPedal #'extra-offset = #'(1 . -.5)
    s \PR s s s        s s s \PH s    s s s s        s s s s          % Takt 16
    s \PR s s s        s s s \PH s    s s s s        s s s s          % Takt 17
    s \PR s s s        s s s \PH s    s \PR s s s    s s s s          % Takt 18
    s     s s s        s s s s        s s s s        s s s \PH s      % Takt 19
  \revert Staff.SustainPedal #'extra-offset
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 20
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 21
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 22
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 23
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 24
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 25
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 26
  \override Staff.SustainPedal #'extra-offset = #'(.4 . -.5)
    s \PR s s s        s s s s        s s \PH s s    s s s s          % Takt 27
  \revert Staff.SustainPedal #'extra-offset
    s \PR s s s        s s s s        s s s s        s s \PH s s      % Takt 28
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 29
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 30
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 31
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 32
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 33
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 34
  \override Staff.SustainPedal #'extra-offset = #'(1 . -1)
    s \PR s s s        s s s \PH s    s s s s        s s s s          % Takt 35
    s \PR s s s        s s s \PH s    s s s s        s s s s          % Takt 36
    s \PR s s s        s s s \PH s    s \PR s s s    s s s s          % Takt 37
    s     s s s        s s s \PH s    s \PR s s s    s s s \PH s      % Takt 38
    s \PR s s s        s s s \PH s
  \revert Staff.SustainPedal #'extra-offset
                                      s s s s        s s s s          % Takt 39
    s \PR s s s        s s s \PH s    s s s s    s s s s              % Takt 40
  \override Staff.SustainPedal #'extra-offset = #'(.3 . -1)
    s \PR s s s        s s s \PH s    s \PR s s s    s s s s          % Takt 41
    s     s s s        s s s \PH s
  \revert Staff.SustainPedal #'extra-offset
                                      s \PR s s s    s s s \PH s      % Takt 42
    s \PR s s s        s s s \PH s    s s s s        s s s s          % Takt 43
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 44
    s \PR s s s        s s s \PH s        s s s s        s s s s      % Takt 45
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 46
  \override Staff.SustainPedal #'extra-offset = #'(0 . -.5)
    s \PR s s s        s s s \PH s    s \PR s s s    s s s \PH s      % Takt 47
    s \PR s s s        s s s \PH s    s \PR s s s    s s s \PH s      % Takt 48
    s \PR s s s        s s s s        s s s s        s s s s          % Takt 49
  \revert Staff.SustainPedal #'extra-offset
    s     s s s        s s s s        s s s s        s s s s \PH      % Takt 50
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 51
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 52
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 53
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 54
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 55
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 56
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 57
    s \PR s s s        s s s \PH s    s s s s        s s s s          % Takt 58
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 59
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 60
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 61
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 62
    s \PR s s s        s s s s        s s s s        s s s \PH s      % Takt 63
    s \PR s s s        s s s \PH s    s s s s        s s s s          % Takt 64
  \override Staff.SustainPedal #'extra-offset = #'(0 . -1.3)
    s \PR s s s        s s \PH s s    s s s s        s s s s          % Takt 65
    s \PR s s s        s s s \PH s    s \PR s s s    s s s \PH s      % Takt 66
    s \PR s s s        s s s \PH s    s \PR s s s    s s s \PH s      % Takt 67
    s \PR s s s        s s s s        s s s s        s s s s          % Takt 68
    s     s s s        s s s s        s s s s        s \PH s s s      % Takt 69
}

links = \relative c{
  \context Voice = "links"
\set Staff.midiMinimumVolume = #-.5
\set Staff.midiMaximumVolume = #1
\once\override Voice.DynamicText #'transparent = ##t
r4^\ppp
% _______________ % Auftakt __ >
\KlammerWeg\ViertelBalken\HalbeSpanner\TriolenZahlOben
\times 2/3 {
\override Slur #'ratio = #'1
#(BogenKurve 4 #f)
#(KlammerZahl .3 -.5 #f)
e%N
(
g'%N
c,%N
_2%F
)
#(KlammerZahl .3 -.4 #t)
b!%N
_3%F
(
g'%N
c,%N
)
% _______________ % Takt  1 __ >
f,%N
(
as'%N
c,%N
_2%F
)
#(KlammerZahl .3 -.4 #t)
as%N
_4%F
(
as'%N
c,%N
)
% _______________ % Takt  2 __ >
\TriolenZahlUnten
#(Triole 0 2 #t)
\override Slur #'ratio = #'.25
#(BogenKurve 3 #f)
#(KlammerZahl -1 -6 #t)
\clef violin
g%N
(
\once\override Stem #'direction = #1
b'%N
e,%N
_2%F
)
#(Triole 0 1 #t)
#(KlammerZahl -.5 -6 #f)
des!%N
_3%F
(
\once\override Stem #'direction = #1
b'%N
e,%N
)
% _______________ % Takt  3 __ >
#(Triole 0 1.6 #t)
as,%N
(
as'%N
f%N
)
#(Triole 0 1 #t)
c%N
_4%F
(
as'%N
f%N
)
% _______________ % Takt  4 __ >
\TriolenZahlOben
\override Slur #'ratio = #'1
#(BogenKurve 4 #f)
#(KlammerZahl -.2 -.3 #f)
\clef bass
b,,%N
(
des'%N
g,%N
_2%F
)
#(KlammerZahl .3 -.3 #t)
f%N
_3%F
(
des'%N
g,%N
)
% _______________ % Takt  5 __ >
c,%N
(
c'%N
as%N
)
#(KlammerZahl .3 -.3 #t)
f%N
_3%F
(
c'%N
as%N
)
% _______________ % Takt  6 __ >
#(Bogen 0 .2 #t)
c,%N
(
e'%N
b%N
)
#(KlammerZahl .3 -.3 #t)
g%N
_4%F
(
e'%N
b%N
)
% _______________ % Takt  7 __ >
\override TupletNumber #'avoid-slur = #'outside
\TriolenZahlWeg
#(Bogen 0 -.3 #f)
f%N
(
f'%N
c%N
)
as%N
_4%F
(
f'%N
des%N
)
% _______________ % Takt  8 __ >
e,%N
(
g'%N
c,%N
)
b%N
_3%F
(
g'%N
c,%N
)
% _______________ % Takt  9 __ >
f,%N
(
as'%N
c,%N
)
as%N
_4%F
(
as'%N
c,%N
)
% _______________ % Takt 10 __ >
\override Slur #'ratio = #'.25
\clef violin
#(Bogen 0 0 #f)
g%N
(
\once\override Stem #'direction = #1
b'%N
es,!%N
)
des!%N
_3%F
(
\once\override Stem #'direction = #1
b'%N
es,%N
)
% _______________ % Takt 11 __ >
#(BogenKurve 3 #f)
#(Bogen 0 0 #f)
as,%N
(
as'%N
es%N
)
c%N
_3%F
(
as'%N
es%N
)
% _______________ % Takt 12 __ >
\clef bass
\override Slur #'ratio = #'1
#(Bogen 0 -.3 #f)
des,%N
(
f'%N
b,%N
)
as%N
_3%F
(
f'%N
b,%N
)
% _______________ % Takt 13 __ >
es,%N
(
es'%N
c%N
)
as%N
_3%F
(
es'%N
c%N
)
% _______________ % Takt 14 __ >
es,%N
(
es'%N
des%N
)
g,%N
_4%F
(
es'%N
des%N
)
% _______________ % Takt 15 __ >
as,%N
(
c'%N
es,%N
_3%F
)
fes%N
_2%F
->
(
des'%N
es,%N
)
% _______________ % Takt 16 __ >
as,%N
(
c'%N
es,%N
)
fes%N
->
(
des'%N
es,%N
)
% _______________ % Takt 17 __ >
as,%N
(
c'%N
es,%N
_4%F
)
#(Bogen 0 0 #f)
c%N
(
g'%N
_3%F
b%N
_2%F
}
% _______________ % Takt 18 __ >
e%N
)
r%N
r2%N
% _______________ % Takt 19 __ >
\KlammerWeg\ViertelBalken\HalbeSpanner\TriolenZahlOben
\times 2/3 {
#(Bogen 0 -.4 #f)
e,4%N
(
g'%N
c,%N
_2%F
)
b%N
_3%F
(
g'%N
c,%N
)
% _______________ % Takt 20 __ >
f,%N
(
as'%N
c,%N
_2%F
)
as%N
_4%F
(
as'%N
c,%N
)
% _______________ % Takt 21 __ >
\clef violin
\override Slur #'ratio = #'.25
#(Bogen 0 0 #f)
g%N
(
\once\override Stem #'direction = #1
b'%N
e,%N
_2%F
)
des!%N
_3%F
(
\once\override Stem #'direction = #1
b'%N
e,%N
)
% _______________ % Takt 22 __ >
as,%N
(
as'%N
f%N
)
c%N
_4%F
(
as'%N
f%N
)
% _______________ % Takt 23 __ >
\clef bass
\override Slur #'ratio = #'1
b,,%N
(
des'%N
g,%N
_2%F
)
f%N
_3%F
(
des'%N
g,%N
)
% _______________ % Takt 24 __ >
c,%N
(
c'%N
as%N
)
f%N
_3%F
(
c'%N
as%N
)
% _______________ % Takt 25 __ >
c,%N
(
e'%N
b%N
)
g%N
_4%F
(
e'%N
b%N
)
% _______________ % Takt 26 __ >
#(Bogen 0 -.4 #f)
f%N
(
f'%N
c%N
)
#(Bogen 0 0 #f)
as%N
_4%F
(
f'%N
des%N
)
% _______________ % Takt 27 __ >
#(Bogen 0 -.4 #f)
e,%N
(
g'%N
c,%N
)
b%N
_3%F
(
g'%N
c,%N
)
% _______________ % Takt 28 __ >
f,%N
(
as'%N
c,%N
)
as%N
_4%F
(
as'%N
c,%N
)
% _______________ % Takt 29 __ >
\clef violin
\override Slur #'ratio = #'.25
#(Bogen 0 0 #f)
g%N
(
\once\override Stem #'direction = #1
b'%N
es,!%N
)
des!%N
_3%F
(
\once\override Stem #'direction = #1
b'%N
es,%N
)
% _______________ % Takt 30 __ >
as,%N
(
as'%N
es%N
)
c%N
_3%F
(
as'%N
es%N
)
% _______________ % Takt 31 __ >
\clef bass
\override Slur #'ratio = #'1
des,%N
(
f'%N
b,%N
)
as%N
_3%F
(
f'%N
b,%N
)
% _______________ % Takt 32 __ >
es,%N
(
es'%N
c%N
)
as%N
_3%F
(
es'%N
c%N
)
% _______________ % Takt 33 __ >
es,%N
(
es'%N
des%N
)
g,%N
_4%F
(
es'%N
des%N
)
% _______________ % Takt 34 __ >
as,%N
(
c'%N
es,%N
_3%F
)
fes%N
_2%F
->
(
des'%N
es,%N
)
% _______________ % Takt 35 __ >
as,%N
(
c'%N
es,%N
)
fes%N
->
(
des'%N
es,%N
)
% _______________ % Takt 36 __ >
as,%N
(
c'%N
es,%N
_2%F
)
ges,%N
(
es''%N
b%N
)
% _______________ % Takt 37 __ >
ges%N
_4%F
(
es'%N
b%N
)
f%N
_4%F
(
es'%N
a,%N
)
% _______________ % Takt 38 __ >
b,%N
(
des'%N
f,%N
_3%F
)
ges%N
_2%F
->
(
es'%N
f,%N
)
% _______________ % Takt 39 __ >
b,%N
(
des'%N
f,%N
)
ges%N
->
(
es'%N
f,%N
)
% _______________ % Takt 40 __ >
b,%N
(
des'%N
f,%N
_2%F
)
as,!%N
(
c'%N
f,%N
)
% _______________ % Takt 41 __ >
d%N
_3%F
(
c'%N
f,%N
)
g,%N
(
h'%N
f%N
)
% _______________ % Takt 42 __ >
c%N
(
e'%N
b!%N
)
as%N
_3%F
(
f'%N
c%N
)
% _______________ % Takt 43 __ >
c,%N
(
des'%N
as%N
)
f%N
_3%F
(
des'%N
as%N
)
% _______________ % Takt 44 __ >
c,%N
(
e'%N
b!%N
)
as%N
_3%F
(
f'%N
c%N
)
% _______________ % Takt 45 __ >
c,%N
(
des'%N
as%N
)
f%N
_3%F
(
des'%N
as%N
)
% _______________ % Takt 46 __ >
c,%N
(
e'%N
g,%N
_2%F
)
f%N
(
des'%N
as%N
)
% _______________ % Takt 47 __ >
c,%N
(
e'%N
g,%N
_2%F
)
f%N
(
des'%N
as%N
)
% _______________ % Takt 48 __ >
c,%N
(
g'%N
e'%N
)
}
r2
% _______________ % Takt 49 __ >
r1
% _______________ % Takt 50 __ >
\KlammerWeg\ViertelBalken\HalbeSpanner\TriolenZahlOben
\times 2/3 {
#(Bogen 0 -.4 #f)
e,4%N
(
g'%N
c,%N
_2%F
)
b%N
_3%F
(
g'%N
c,%N
)
% _______________ % Takt 51 __ >
f,%N
(
as'%N
c,%N
_2%F
)
as%N
_4%F
(
as'%N
c,%N
)
% _______________ % Takt 52 __ >
\clef violin
\override Slur #'ratio = #'.25
#(Bogen 0 0 #f)
g%N
(
\once\override Stem #'direction = #1
b'%N
e,%N
^2%F
)
des!%N
^3%F
(
\once\override Stem #'direction = #1
b'%N
e,%N
)
% _______________ % Takt 53 __ >
as,%N
(
as'%N
f%N
)
c%N
_4%F
(
as'%N
f%N
)
% _______________ % Takt 54 __ >
\clef bass
\override Slur #'ratio = #'1
b,,%N
(
des'%N
g,%N
_2%F
)
f%N
_3%F
(
des'%N
g,%N
)
% _______________ % Takt 55 __ >
c,%N
(
c'%N
as%N
)
f%N
_3%F
(
c'%N
as%N
)
% _______________ % Takt 56 __ >
c,%N
(
e'%N
b%N
)
g%N
_4%F
(
e'%N
b%N
)
% _______________ % Takt 57 __ >
\TriolenZahlWeg
f%N
(
f'%N
c%N
)
as%N
_4%F
(
f'%N
des%N
)
% _______________ % Takt 58 __ >
#(Bogen 0 -.4 #f)
e,%N
(
g'%N
c,%N
)
b%N
_3%F
(
g'%N
c,%N
)
% _______________ % Takt 59 __ >
f,%N
(
as'%N
c,%N
)
as%N
_4%F
(
as'%N
c,%N
)
% _______________ % Takt 60 __ >
\clef violin
\override Slur #'ratio = #'.25
#(Bogen 0 0 #f)
g%N
(
\once\override Stem #'direction = #1
b'%N
e,%N
)
des!%N
_3%F
(
\once\override Stem #'direction = #1
b'%N
e,%N
)
% _______________ % Takt 61 __ >
as,%N
(
as'%N
f%N
)
c%N
_4%F
(
as'%N
f%N
)
% _______________ % Takt 62 __ >
\clef bass
\override Slur #'ratio = #'1
b,,%N
(
des'%N
g,%N
)
f%N
_3%F
(
des'%N
g,%N
)
% _______________ % Takt 63 __ >
c,%N
(
f'%N
c%N
)
as%N
_3%F
(
f'%N
des%N
)
% _______________ % Takt 64 __ >
c,%N
(
es'!%N
g,%N
_3%F
)
f%N
(
des'%N
e,%N
)
% _______________ % Takt 65 __ >
f%N
(
as'%N
c,%N
_2%F
)
b%N
_3%F
(
g'%N
des%N
)
% _______________ % Takt 66 __ >
f,%N
(
as'%N
c,%N
_2%F
)
b%N
_3%F
(
g'%N
des%N
)
}
% _______________ % Takt 67 __ >
\HalbExtraSpace
<< { \tieNeutral
\set fingeringOrientations = #'(left)
#(Finger -1 0 #t)
<f,%N
-5%F
c'%N
-1%F
>1
\arpeggio
~
#(Akzent 0 .8 #t)
<f%N
c'>%N
^\fermata
} \\ { \oben \tieDown
\set fingeringOrientations = #'(left)
#(Finger -1 .2 #t)
<f'%N
-1%F
as%N
-2%F
>
~
<f%N
as>%N
} >>
% _______________ % Takt 69 __ >
}

%%%%%%%% Ende der einzelnen Stimmen

\score{
  \context PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \context Staff = "up" <<
      \global
      \clef violin
      \rechts
    >>
    \context Staff = "down" <<
      \global
      \clef bass
      \links
      \keile
      \pedal
    >>
  >>
  \layout{
    \context { \Score \override SpacingSpanner #'spacing-increment = #1.2 }
    \context {
      \PianoStaff
      \override VerticalAlignment #'forced-distance = #15.6
    }
  }
\midi {
  \tempo 2=112
    \context { \Voice
      %\remove "Dynamic_performer"
      \remove "Span_dynamic_performer"
    }
  }
}
