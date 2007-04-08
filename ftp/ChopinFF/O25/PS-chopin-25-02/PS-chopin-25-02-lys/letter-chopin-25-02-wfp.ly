%%%   Hinweise zum Editieren auf Deutsch:   %%%
%%%
% Um eine etwas bessere midi-Ausgabe zu erzeugen, kann man folgendes tun:
%   1. alle Zeilen, die mit "% no-midi" enden, auskommentieren.
%   2. alle Zeilen, die mit "% MIDI" enden, einkommentieren.
% Die so erzeugte Datei "letter-chopin-25-02-i.midi" sollte man dann unter
% Die anschlie�end durch die �bersetzung mit lilypond erzeugte Datei
% "letter-chopin-25-02-i.midi"
% sollte man dann unter einem anderen Namen, z.B.
% "midi-chopin-op-25-02-i.midi",
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
% "letter-chopin-25-02-i.midi"
% should be copied under another name, par example
% "midi-chopin-op-25-02-i.midi",
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
  filename      =       "letter-chopin-25-02-wfp.ly"
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

#(set-global-staff-size 19)

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
c'4
\p
(
% _______________ % Auftakt __ >
\KlammerWeg\ViertelBalken\ViertelSpanner\TriolenZahlOben
\times 2/3 {
\override Fingering #'avoid-slur = #'inside
#(Text -9.5 -.6 #t)
c8
-\markup { \dynamic p \italic { molto \hspace #'-.04 legato } }
des h c es des
#(Triole 0 .6 #t)
c des h!
#(Triole 0 1 #t)
c fis g
% ______________________________________ % Takt  1 __ >
\TriolenZahlWeg
c, des h c es des c des h c as' f
% ______________________________________ % Takt  2 __ >
e f e dis e g b c b a b des!
% ______________________________________ % Takt  3 __ >
c des c h c g as b as g as e
% ______________________________________ % Takt  4 __ >
f g f e f c des es des c des h
% ______________________________________ % Takt  5 __ >
c des c h c g as b as g as f
% ______________________________________ % Takt  6 __ >
e g b des e g b des c b as g
% ______________________________________ % Takt  7 __ >
b c as g as f e g f e f des!
% ______________________________________ % Takt  8 __ >
c des h c es des c des h c fis g
% ______________________________________ % Takt  9 __ >
c, des h c es des c des h c as' f
% ______________________________________ % Takt 10 __ >
es! f es d es g b c b a b f'
% ______________________________________ % Takt 11 __ >
es f es d es h c des c h c g
% ______________________________________ % Takt 12 __ >
as b! as g as e f g f e f des
% ______________________________________ % Takt 13 __ >
c des b g as b c des es f g as
% ______________________________________ % Takt 14 __ >
g as f es f des c des b c f, g
% ______________________________________ % Takt 15 __ >
as b as g as a b c b c f,!  g
% ______________________________________ % Takt 16 __ >
as! b as g as a b c b c f,! g
% ______________________________________ % Takt 17 __ >
as! b as g as b c des c h c des
% ______________________________________ % Takt 18 __ >
c des c h c des c des c des c des )
% ______________________________________ % Takt 19 __ >
c ( des h c es des c des h c fis g
% ______________________________________ % Takt 20 __ >
c, des h c es des c des h c as' f
% ______________________________________ % Takt 21 __ >
e f e dis e g b c b a b des!
% ______________________________________ % Takt 22 __ >
c des c h c g as b as g as e
% ______________________________________ % Takt 23 __ >
f g f e f c des es des c des h
% ______________________________________ % Takt 24 __ >
c des c h c g as b as g as f
% ______________________________________ % Takt 25 __ >
e g b des e g b des c b as g
% ______________________________________ % Takt 26 __ >
b c as g as f e g f e f des
% ______________________________________ % Takt 27 __ >
c des h c es!  des c des h c fis g
% ______________________________________ % Takt 28 __ >
c, des h c es des c des h c as' f
% ______________________________________ % Takt 29 __ >
es! f es d es g b c b a b f'
% ______________________________________ % Takt 30 __ >
es f es d es h c des c h c g
% ______________________________________ % Takt 31 __ >
as b! as g as e f g f e f des
% ______________________________________ % Takt 32 __ >
c des b g as b c des es f g as
% ______________________________________ % Takt 33 __ >
g as f es f des c des b c f, g
% ______________________________________ % Takt 34 __ >
as b as g as a b c b c f,!  g
% ______________________________________ % Takt 35 __ >
as! b as g as a b c b c f,! g
% ______________________________________ % Takt 36 __ >
as! b as g as b c des c h c des
% ______________________________________ % Takt 37 __ >
es f es f es des c des c des g,!  a
% ______________________________________ % Takt 38 __ >
b c b a b h c des c des g,!  a
% ______________________________________ % Takt 39 __ >
b! c b a b h c des c des g,! a
% ______________________________________ % Takt 40 __ >
b c b a b c d es d cis d es
% ______________________________________ % Takt 41 __ >
f g f g f es d es d es a, h
% ______________________________________ % Takt 42 __ >
c des! c h c g' as b! as g as e
% ______________________________________ % Takt 43 __ >
f g f es! des c b as g f g as
% ______________________________________ % Takt 44 __ >
g des' c h c g' as b!  as g as e
% ______________________________________ % Takt 45 __ >
f g f es! des c b as g f g as
% ______________________________________ % Takt 46 __ >
g g' f e des c b as g f g as
% ______________________________________ % Takt 47 __ >
g g' f e des c b as g f g as
% ______________________________________ % Takt 48 __ >
g des' c h c des c des c h c des
% ______________________________________ % Takt 49 __ >
c des c h c des c des c des c des)
% ______________________________________ % Takt 50 __ >
c8 ( des h c es des c des
% Vor dem folgenden h sollte ein Auflösungszeichen stehen:
h c fis g
% ______________________________________ % Takt 51 __ >
c, des h c es des c des h c as' f
% ______________________________________ % Takt 52 __ >
e f e dis e g b c b a b des!
% ______________________________________ % Takt 53 __ >
c des c h c g as b as g as e
% ______________________________________ % Takt 54 __ >
f g f e f c des es des c des h
% ______________________________________ % Takt 55 __ >
c des c h c g as b as g as f
% ______________________________________ % Takt 56 __ >
e g b des e g
\override Fingering #'avoid-slur = #'outside
#(Text 0 1.3 #t)
b
^\markup { \italic { poco rit. } }
)
\override Fingering #'avoid-slur = #'outside
des-. ( c-. b-. as-. g-. )
% ______________________________________ % Takt 57 __ >
#(Finger -.6 -2.1 #t)
#(Text -1 -.6 #t)
#(BogenKurve 4 #t)
b
^\markup { \italic { a tempo } }
( c as g as f e g f e f
des
% ______________________________________ % Takt 58 __ >
c des h c es! des c des h c fis g
% ______________________________________ % Takt 59 __ >
c, des h c es des c des h c as' f
% ______________________________________ % Takt 60 __ >
e f e dis e g b c b a b des!
% ______________________________________ % Takt 61 __ >
c as' g ges f e es d des c ces b
% ______________________________________ % Takt 62 __ >
a as g f' des b g f des b g des'
% ______________________________________ % Takt 63 __ >
c des h c as b c des c des f es
% ______________________________________ % Takt 64 __ >
c des b! c es des b c as b des c
% ______________________________________ % Takt 65 __ >
#(Akzent 0 2 #t) #(Bogen 0 3 #t)
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=110
\override Fingering #'avoid-slur = #'outside
f,^> )
#(PhrasierungsBogenKurve 7 #t)
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=108
c'' \(
\override Fingering #'avoid-slur = #'inside
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=105
b
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=102
as
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=98
g
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=94
f
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=90
es
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=85
des
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=80
c
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=75
b
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=70
c
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=65
des
% ______________________________________ % Takt 66 __ >
c c' b as g f es des c b
\once\override Score.MetronomeMark #'transparent = ##t \tempo 2=35
c
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
\grace es ( %                                      % no-midi
\Extraspace %                                      % no-midi
<< { %                                             % no-midi
\unset fontSize %                                  % no-midi
des %                                              % no-midi
\once\override Score.MetronomeMark %               % no-midi
#'transparent = ##t \tempo 2=50 %                  % no-midi
} { %                                              % no-midi
s16 %                                              % no-midi
\Extraspace %                                      % no-midi
\set fontSize = #-2 %                              % no-midi
\grace c8 ) %                                      % no-midi
} >> } %                                           % no-midi
\unset fontSize %                                  % no-midi
% ______________________________________ % Takt 67 __ >
\stemUp %                                          % no-midi
\override Fingering #'avoid-slur = #'inside %      % no-midi
#(Dynamik .7 -2 #t) %                              % no-midi
c2 -\pp \arpeggio c4 c %                           % no-midi
%%%                                            --- % no-midi
%%%    Ende     AUSTAUSCH - BLOCK nicht-midi   --- % no-midi
%%% ------------------------------------------ --- % no-midi
#(Finger .8 6.3 #t)
#(Akzent 0 .5 #t)
c1
^\fermata
\)
% ______________________________________ % Takt 68 - % Takt 69 __ >
}

forte = \markup { \fontsize #-1.2 \dynamic f }
cresc = \markup { \italic cresc. }
dim = \markup { \italic dim. }
rit = \markup { \italic rit. }

keile = \relative c'{
  \stemUp
  \override Score.DynamicTextSpanner #'font-size = #'0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -2))
  s4
  \times 2/3 {
  \TriolenZahlWeg\KlammerWeg\ViertelBalken\ViertelSpanner
    \hideNotes
    g8
    \unHideNotes
      s s         s s s       s s s       s s s             % Takt  1
    s s s         s s s       s s s       s s s             % Takt  2
  #(Keil 2 4 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt  3
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -7.5) (Y-offset . 44.7)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -7.5))                  % ohne Zeilen-Korrektur
  #(Keil 2 4.3 #f)
    s^\> s s      s s s       s s s       s s s             % Takt  4
    s s s         s s s       s s s       s s \! s          % Takt  5
    s s s         s s s       s s s       s s s             % Takt  6
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -7) (Y-offset . 71.1)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -7))                  % ohne Zeilen-Korrektur
  #(Keil 2.5 4.7 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt  7
  #(Keil 1.8 4.7 #f)
    s^\> s s      s s s       s s s       s s \! s          % Takt  8
    s s s         s s s       s s s       s s s             % Takt  9
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -8) (Y-offset . 95.1)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -8))                  % ohne Zeilen-Korrektur
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
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -8.5) (Y-offset . 22.1)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -8.5))                  % ohne Zeilen-Korrektur
    s s s         s s s       s s s       s s s             % Takt 20
    s s s         s s s       s s s       s s s             % Takt 21
  #(Keil 2 3 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt 22
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -10) (Y-offset . 47.9)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -10))                  % ohne Zeilen-Korrektur
  #(Keil -1.5 3 #f)
    s s^\> s      s s s       s s s       s s s             % Takt 23
    s s s         s s s       s s s       s s s \!          % Takt 24
    s s s         s s s       s s s       s s s             % Takt 25
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -7.5) (Y-offset . 73)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -7.5))                % ohne Zeilen-Korrektur
  #(Keil 2 3.9 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt 26
    s^\> s s      s s s       s s s       s s \! s          % Takt 27
    s s s         s s s       s s s       s s s             % Takt 28
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -6) (Y-offset . 97.3)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -6))                  % ohne Zeilen-Korrektur
    s s s         s s s       s s s       s s s             % Takt 29
  #(Keil 2 3.7 #t)
    s^\< s s      s s s       s s s       s s \! s          % Takt 30
  #(Keil -2 3.7 #f)
    s s^\> s      s s s       s s s       s s s             % Takt 31
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -8))
%\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
%#'(Y-offset . 31.5)
    s s s         s s s       s s s       s s s \!          % Takt 32
  #(Keil 2 3.6 #f)
    s s s         s^\< s s    s s s       s s \! s          % Takt 33
    s^\> s s      s s s       s s s       s \! s s          % Takt 34
  #(Dynamik .5 3.4 #t)
    s^\p s s      s s s       s s s       s s s             % Takt 35
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -8))
%\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
%#'(Y-offset . 60)
  #(Text 0 2.6 #t)
    s2^\markup { \italic { poco \hspace #7.8 a
      \hspace #7.8 poco \hspace #7.8 cresc. } } s s         % Takt 36
    s8 s s        s s s       s
              #(Keil -2 3.6 #t) s^\< s    s s s             % Takt 37
  #(Keil 0 3.6 #f)
    s s s \!      s^\> s s    s s s       s s s \!          % Takt 38
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -8))
%\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
%#'(Y-offset . 89)
  \setTextCresc
  \override DynamicTextSpanner #'extra-offset = #'(1 . 3) 
  \set crescendoText = \markup { \raise #'-.5 \italic "cre" \hspace #3 }
  \override DynamicTextSpanner #'dash-period = #'7.5
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
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -6))
  #(Dynamik 0 3 #t)
  #(Keil 2 4.3 #f)
    s^\p s s      s^\< s s    s s \! s    s s s             % Takt 45
  #(Keil 2 4.3 #f)
    s^\> s s      s s \! s    s s s       s s s             % Takt 46
  \setTextCresc
  \override DynamicTextSpanner #'extra-offset = #'(0 . 4) 
  \override DynamicTextSpanner #'dash-period = #'8.7
  \set crescendoText = \markup { \raise #-.5 \italic "smorz." \hspace #1 }
    s s s         s s s       s s s       s^\< s s          % Takt 47
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -8))
    s s s         s s s       s s s       s s s             % Takt 48
    s s s \!      s s s       s
  #(Keil -3 2.6 #t)
                                s^\< s       s s s          % Takt 49
  #(Keil 0 2.6 #f)
    s s s      s \!^\> s s    s s s       s s s \!          % Takt 50
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -6))
  #(Text 0 3.6 #t)
    s^\markup { \italic { sempre \hspace #2.6 piano } }
      s s         s s s       s s s       s s s             % Takt 51
    s s s         s s s       s s s       s s s             % Takt 52
  #(Keil 1.7 3 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt 53
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -8))
  #(Keil 2 3.3 #f)
    s^\> s s      s s s       s s s       s s s             % Takt 54
    s s s         s s s       s s s       s \! s s          % Takt 55
    s s s         s s s       s s s       s s s             % Takt 56
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -8))
  #(Keil -1.5 4 #f)
    s s s         s s^\< s    s s s       s s s \!          % Takt 57
  #(Keil 1.5 4 #f)
    s^\> s s      s s s       s s s       s s \! s          % Takt 58
    s s s         s s s       s s s       s s s             % Takt 59
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -9))
    s s s         s s s       s s s       s s s             % Takt 60
  #(Keil 2 2.6 #f)
    s^\< s s      s s s       s s s       s s \! s          % Takt 61
  #(Text 1 2 #t)
    s^\markup { \italic poco \hspace #1 \dynamic rfz }
      s s         s s s       s s s       s s s             % Takt 62
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -7) (Y-offset . 83.9)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -7))                  % ohne Zeilen-Korrektur
  #(Keil .2 3.4 #f)
    s s s         s^\> s s    s s s       s s \! s          % Takt 63
  #(Dynamik 0 3 #t)
    s^\p s s      s s s       s s s       s s s             % Takt 64
    s s s         s s s       s s s       s s s             % Takt 65
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -5))
  \setTextCresc
  \override DynamicTextSpanner #'extra-offset = #'(0 . 3.7) 
  \override DynamicTextSpanner #'dash-period = #'8.7
  \override DynamicTextSpanner #'dash-fraction = #'.13
  \set crescendoText = \markup { \raise #-.5 { \italic "dim." \hspace #.3 } }
    s s s         s s s       s s s       s^\< s s          % Takt 66
    s s s         s s s       s s s       s s s \!          % Takt 67
  }
  s1                                                        % Takt 68
  s                                                         % Takt 69
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
e ( g' c, )
#(KlammerZahl .3 -.4 #t)
b! ( g' c, )
% _______________ % Takt  1 __ >
f, ( as' c, )
#(KlammerZahl .3 -.4 #t)
as ( as' c, )
% _______________ % Takt  2 __ >
\TriolenZahlUnten
#(Triole 0 2 #t)
\override Slur #'ratio = #'.25
#(BogenKurve 3 #f)
#(KlammerZahl -1 -6 #t)
\clef violin
g (
\once\override Stem #'direction = #1
b' e, )
#(Triole 0 1 #t)
#(KlammerZahl -.5 -6 #f)
des! (
\once\override Stem #'direction = #1
b' e, )
% _______________ % Takt  3 __ >
#(Triole 0 1.6 #t)
as, ( as' f )
#(Triole 0 1 #t)
c ( as' f )
% _______________ % Takt  4 __ >
\TriolenZahlOben
\override Slur #'ratio = #'1
#(BogenKurve 4 #f)
#(KlammerZahl -.2 -.3 #f)
\clef bass
b,, ( des' g, )
#(KlammerZahl .3 -.3 #t)
f ( des' g, )
% _______________ % Takt  5 __ >
c, ( c' as )
#(KlammerZahl .3 -.3 #t)
f ( c' as )
% _______________ % Takt  6 __ >
#(Bogen 0 .2 #t)
c, ( e' b )
#(KlammerZahl .3 -.3 #t)
g ( e' b )
% _______________ % Takt  7 __ >
\override TupletNumber #'avoid-slur = #'outside
\TriolenZahlWeg
#(Bogen 0 -.3 #f)
f ( f' c) as ( f' des )
% _______________ % Takt  8 __ >
e, ( g' c,) b ( g' c, )
% _______________ % Takt  9 __ >
f, ( as' c,) as ( as' c, )
% _______________ % Takt 10 __ >
\override Slur #'ratio = #'.25
\clef violin
#(Bogen 0 0 #f)
g (
\once\override Stem #'direction = #1
b' es,!) des! (
\once\override Stem #'direction = #1
b' es, )
% _______________ % Takt 11 __ >
#(BogenKurve 3 #f)
#(Bogen 0 0 #f)
as, ( as' es) c ( as' es )
% _______________ % Takt 12 __ >
\clef bass
\override Slur #'ratio = #'1
#(Bogen 0 -.3 #f)
des, ( f' b,) as ( f' b, )
% _______________ % Takt 13 __ >
es, ( es' c) as ( es' c )
% _______________ % Takt 14 __ >
es, ( es' des) g, ( es' des )
% _______________ % Takt 15 __ >
as, ( c' es,) fes-> ( des' es, )
% _______________ % Takt 16 __ >
as, ( c' es,) fes-> ( des' es, )
% _______________ % Takt 17 __ >
as, ( c' es, )
#(Bogen 0 0 #f)
c ( g' b }
% _______________ % Takt 18 __ >
e) r r2
% _______________ % Takt 19 __ >
\KlammerWeg\ViertelBalken\HalbeSpanner\TriolenZahlOben
\times 2/3 {
#(Bogen 0 -.4 #f)
e,4 ( g' c,) b ( g' c, )
% _______________ % Takt 20 __ >
f, ( as' c,) as ( as' c, )
% _______________ % Takt 21 __ >
\clef violin
\override Slur #'ratio = #'.25
#(Bogen 0 0 #f)
g (
\once\override Stem #'direction = #1
b' e,) des! (
\once\override Stem #'direction = #1
b' e, )
% _______________ % Takt 22 __ >
as, ( as' f) c ( as' f )
% _______________ % Takt 23 __ >
\clef bass
\override Slur #'ratio = #'1
b,, ( des' g,) f ( des' g, )
% _______________ % Takt 24 __ >
c, ( c' as) f ( c' as )
% _______________ % Takt 25 __ >
c, ( e' b) g ( e' b )
% _______________ % Takt 26 __ >
#(Bogen 0 -.4 #f)
f ( f' c )
#(Bogen 0 0 #f)
as ( f' des )
% _______________ % Takt 27 __ >
#(Bogen 0 -.4 #f)
e, ( g' c,) b ( g' c, )
% _______________ % Takt 28 __ >
f, ( as' c,) as ( as' c, )
% _______________ % Takt 29 __ >
\clef violin
\override Slur #'ratio = #'.25
#(Bogen 0 0 #f)
g (
\once\override Stem #'direction = #1
b' es,!) des! (
\once\override Stem #'direction = #1
b' es, )
% _______________ % Takt 30 __ >
as, ( as' es) c ( as' es )
% _______________ % Takt 31 __ >
\clef bass
\override Slur #'ratio = #'1
des, ( f' b,) as ( f' b, )
% _______________ % Takt 32 __ >
es, ( es' c) as ( es' c )
% _______________ % Takt 33 __ >
es, ( es' des) g, ( es' des )
% _______________ % Takt 34 __ >
as, ( c' es,) fes-> ( des' es, )
% _______________ % Takt 35 __ >
as, ( c' es,) fes-> ( des' es, )
% _______________ % Takt 36 __ >
as, ( c' es,) ges, ( es'' b )
% _______________ % Takt 37 __ >
ges ( es' b) f ( es' a, )
% _______________ % Takt 38 __ >
b, ( des' f,) ges-> ( es'  f, )
% _______________ % Takt 39 __ >
b, ( des' f,) ges-> ( es'  f, )
% _______________ % Takt 40 __ >
b, ( des' f,) as,!  ( c' f, )
% _______________ % Takt 41 __ >
d ( c' f,) g, ( h' f )
% _______________ % Takt 42 __ >
c ( e' b!) as ( f' c )
% _______________ % Takt 43 __ >
c, ( des' as) f ( des' as )
% _______________ % Takt 44 __ >
c, ( e' b!) as ( f' c )
% _______________ % Takt 45 __ >
c, ( des' as) f ( des' as )
% _______________ % Takt 46 __ >
c, ( e' g,) f ( des' as )
% _______________ % Takt 47 __ >
c, ( e' g,) f ( des' as )
% _______________ % Takt 48 __ >
c, ( g' e') } r2
% _______________ % Takt 49 __ >
r1
% _______________ % Takt 50 __ >
\KlammerWeg\ViertelBalken\HalbeSpanner\TriolenZahlOben
\times 2/3 {
#(Bogen 0 -.4 #f)
e,4 ( g' c,) b ( g' c, )
% _______________ % Takt 51 __ >
f, ( as' c,) as ( as' c, )
% _______________ % Takt 52 __ >
\clef violin
\override Slur #'ratio = #'.25
#(Bogen 0 0 #f)
g (
\once\override Stem #'direction = #1
b' e,) des! (
\once\override Stem #'direction = #1
b' e, )
% _______________ % Takt 53 __ >
as, ( as' f) c ( as' f )
% _______________ % Takt 54 __ >
\clef bass
\override Slur #'ratio = #'1
b,, ( des' g,) f ( des' g, )
% _______________ % Takt 55 __ >
c, ( c' as) f ( c' as )
% _______________ % Takt 56 __ >
c, ( e' b) g ( e' b )
% _______________ % Takt 57 __ >
f ( f' c) as ( f' des )
% _______________ % Takt 58 __ >
#(Bogen 0 -.4 #f)
e, ( g' c,) b ( g' c, )
% _______________ % Takt 59 __ >
f, ( as' c,) as ( as' c, )
% _______________ % Takt 60 __ >
\clef violin
\override Slur #'ratio = #'.25
#(Bogen 0 0 #f)
g (
\once\override Stem #'direction = #1
b' e,) des! (
\once\override Stem #'direction = #1
b' e, )
% _______________ % Takt 61 __ >
as, ( as' f) c ( as' f )
% _______________ % Takt 62 __ >
\clef bass
\override Slur #'ratio = #'1
b,, ( des' g,) f ( des' g, )
% _______________ % Takt 63 __ >
c, ( f' c) as ( f' des )
% _______________ % Takt 64 __ >
c, ( es'!  g,) f ( des' e, )
% _______________ % Takt 65 __ >
f ( as' c,) b ( g' des )
% _______________ % Takt 66 __ >
f, ( as' c,) b ( g' des )
}
% _______________ % Takt 67 __ >
\HalbExtraSpace
<< { \tieNeutral
\set fingeringOrientations = #'(left)
#(Finger -1 0 #t)
<f, c' >1
\arpeggio
~
#(Akzent 0 .8 #t)
<f c'>^\fermata
} \\ { \oben \tieDown
\set fingeringOrientations = #'(left)
#(Finger -1 .2 #t)
<f' as > ~ <f as>
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
    >>
  >>
  \layout{
    \context { \Score \override SpacingSpanner #'spacing-increment = #1.4 }
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
