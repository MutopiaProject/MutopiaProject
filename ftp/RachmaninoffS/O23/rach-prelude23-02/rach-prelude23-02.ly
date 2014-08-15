%%--------------------------------------------------------------------
% LilyPond typesetting of Rachmaninoff Prelude Op. 23 No. 2
%%--------------------------------------------------------------------

%%%%%%% Notes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% - Due to nature of this piece, visibility of most tuplet numbers are
%   explicitly specified to avoid confusion
%
% - Bar 37 is TimeScaledMusic applying grace styles. First 2 notes are
%   lengthened so whole passage becomes a 4/4 for easier counting (with
%   additional effect of emulating real performance). Left hand notes
%   are individually scaled to align with right hand notes.
%
% - Tried to do flexible curve tuning depending on system break points
%   in middle section. Might not completely account for all cases though.
%
% - Accidentals on bar 15-16, 51-52 are compressed horizontally.
%
% - Tame various Y-extent estimators in order to reduce page count

%%%%%%% Editorial Notes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% - Still considering whether to follow all tuplet number visibility
%   in any edition. Gutheil and Muzyka differ a little in this area,
%   and showing again in 2nd occurrence of main theme is repetitive
%
% - Completely remove all fingering on 2nd occurrence of main theme,
%   which is repetitive. Both Gutheil and Muzyka editions do keep them.
%
% - Muzyka edition missing hairpin at bar 26
%
% - Add slur on bar 15 left hand 3rd quaver; such slur do exist in
%   identical passage at bar 51 for both editions. See \LHpatternL.
%
% - In bar 25 left hand last quaver, both Muzyka and Gutheil editions
%   don't show any accidentals on A note, which implies A♮ here.
%   But A♮ is dissonant since tonality for left hand on this bar is
%   mostly A♭m. Checked a few performances with sound frequency
%   analysis, none of which is A♮:
%   Richter(1969), Ashkenazy(1975): A♭
%   Ogdon(1988), Gilels(on youtube): B♮
%   A♭ is chosen here.
%
% - Gutheil & Muzyka editions disagree at bar 33 right hand, at the
%   note just after clef change. Gutheil uses B♭ in middle note and
%   Muzyka uses C. This is much harder for frequency analysis; only
%   Ashkenazy performance gives clearer indication of B♭ note. Others
%   are ambiguous. Choose Gutheil edition here since usage of B♭ is
%   matching with similar passage in previous bar.

%%%%%%% Known Problems %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% - This piece is basically a showcase for Lilypond's inept handling
%   of tuplet number positioning. Most problems originate from tuplet
%   number being placed at mid-point of tuplet bracket
%   * Tuplet numbers at horizontal mid-point is wrong according to
%     Gardner Read's Music Notation; should be mid-point of note duration
%   * Most vertical positions are wrong as well when displayed w/o bracket
%   * Adjustment of number positions not quite satisfactory, and subject
%     to change for future Lilypond versions
%   * Tuning horiz positions need too much effort
%
% - Accidental mode for IMSLP editions are somewhere between old romantic
%   style and 20th century style; choosing default here, because changing
%   accidental mode increases page count (!)
%
% - Short slurs are bar 28-29 are often overlapping with accidentals.
%   Need too much effort to tune them


%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

% It is possible to lower requirement to 2.18.x but some problems
% may surface, like bad tuplet layout in bar 6 left hand, and notes
% can't be packed densely like original IMSLP editions
\version "2.19.10"

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
% #(set-global-staff-size 20)

% from openlilylib
#(define (calculate-version ver-list)
   ;; take a LilyPond version number as a three element list
   ;; and calculate a integer representation
   (+ (* 1000000 (first ver-list))
     (* 1000 (second ver-list))
     (third ver-list)))

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #12       %-pads music from copyright block

  % with 2.19 version the score is rendered into most compat layout by
  % default, but for 2.18 the whole thing explode into 11-12 pages, so
  % force system-count on older versions (the only one effective setting here)
  % 39 is the minimum without fatal layout problem
  #(if (> 2019000 (calculate-version (ly:version)))
       (define system-count 39))

  % ragged-right = ##f
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f

  % debug-slur-scoring = ##t
}

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
  title = "Prelude II"
  composer = "Sergei Rachmaninoff (1873-1943)"
  opus = "Op. 23, No 2"
  date = "1903"
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  % Both are cross-referenced to minimize errors
  source = "IMSLP - Muzyka and Gutheil editions"

  maintainer = "Abel Cheung"
  maintainerEmail = "abelcheung at gmail dot com"
  mutopiatitle = "Prelude Op. 23, No. 2"
  mutopiaopus = "Op. 23"
  mutopiacomposer = "RachmaninoffS"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2014/08/15-1960"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Tuplet related funcs and shorthands

showTupletOnce = { \once \override TupletNumber.stencil = #ly:tuplet-number::print }
hideTupletOnce = { \once \omit TupletNumber }

showTupletTemp = { \temporary \override TupletNumber.stencil = #ly:tuplet-number::print }
hideTupletTemp = { \temporary \omit TupletNumber }

revertTuplet = { \revert TupletNumber.stencil }

% move tuplet number for a relative offset
% should obsolete this because it is hard to predict where tuplets would
% placed when layout changes
moveTuplet =
#(define-music-function (parser location offset)
   (number?)
   #{ \once \offset Y-offset $offset TupletNumber #}
)

% force invisible bracket to absolute position so tuplet number is drawn
% at desired location. Better used with avoid-* properties
moveTupletAbs =
#(define-music-function (parser location offset whiteout)
   (number? boolean?)
   (define pos (cons offset offset))
   #{
     \once \override TupletNumber.whiteout = #whiteout
     \once \override TupletBracket.positions = $pos
   #}
)

%-------- Custom dynamics

ffmarcato = \tweak DynamicText.self-alignment-X #LEFT
#(make-dynamic-script
  (markup #:line
    (#:dynamic "ff"
     #:hspace 1.5
     #:normal-text #:italic "sempre marcato")))


%-------- Custom articulations

% default tenuto hides inside slur, pushing slurs outwards and prevent
% staves to be compacted. And padding is too small, so it can stick
% very close to slurs. Some may confuse with ledger line as well.
tenutoAlt =
#(let ((m (make-articulation "tenuto")))
   (ly:music-set-property! m 'tweaks
     (acons 'avoid-slur 'outside
       (acons 'slur-padding 0.4
         (ly:music-property m 'tweaks))))
   m)

%-------- fake dynamics and tempo for midi control

hideDynamics = { \once \omit DynamicText }
hideHairpin  = { \once \omit Hairpin }

#(define (myMidiVolume dynamic)
   (cond
     ((string=? dynamic "pp") 0.35)
     ((string=? dynamic "p" ) 0.45)
     ((string=? dynamic "mp") 0.55)
     ((string=? dynamic "mf") 0.65)
     ((string=? dynamic "f" ) 0.75)
     ((string=? dynamic "ff") 0.85)
     (else 0)))

%-------- Other shorthands

ottavaUp = { \ottava #1 \set Staff.ottavation = #"8" }

% hope this relieves the note packing a little bit
accommodateTightNotes = {
  \temporary \override Score.AccidentalPlacement.right-padding =
  #(lambda (grob)
     (if (eq? (ly:grob-property grob 'alteration) 1/2)
         -0.03 0)) % sharps are too fat
  \temporary \override Score.AccidentalPlacement.padding = 0
  \temporary \override Score.Accidental.stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:accidental-interface::print grob) 0.8 1))

  % Ties within tightly packed chords are disgusting. Some
  % shortened to become a dot, some even outright disappears.
  \temporary \override Tie.details.stem-gap = 0.1
  \temporary \override Tie.details.note-head-gap = 0.1
}

unAccommodateTightNotes = {
  \revert Tie.details.note-head-gap
  \revert Tie.details.stem-gap
  \revert Score.Accidental.stencil
  \revert Score.AccidentalPlacement.padding
  \revert Score.AccidentalPlacement.right-padding
}

%-------- Fake grace notes

% Emulate grace note visual style (bar 37)
% http://lists.gnu.org/archive/html/lilypond-user/2013-05/msg00415.html
graceStyle = \applyContext
#(lambda (context)
   (map (lambda (x)
          (ly:context-pushpop-property
           context (cadr x) (caddr x) (cadddr x)))
     (ly:context-property context 'graceSettings)))

% unapply grace note style
noGraceStyle = \applyContext
#(lambda (context)
   (map (lambda (x)
          (ly:context-pushpop-property
           context (cadr x) (caddr x)))
     (ly:context-property context 'graceSettings)))

% show/hide tuplet number
toggleTup =
#(define-music-function (parser location tup-visible music)
   (boolean? ly:music?)
   (define stencil (if tup-visible ly:tuplet-number::print #f))
   #{
     \temporary \override TupletNumber.stencil = #stencil
     $music
     \revertTuplet
   #}
)

%-------- The following funcs are for slur shape tuning

#(define (change-slur-offset grob Y-one Y-two Y-three Y-four)
   (let* ((points (ly:slur::calc-control-points grob))
          (pt-one (first points))
          (pt-two (second points))
          (pt-three (third points))
          (pt-four (fourth points)))
     (set-cdr! pt-one   (+ Y-one   (cdr pt-one  )))
     (set-cdr! pt-two   (+ Y-two   (cdr pt-two  )))
     (set-cdr! pt-three (+ Y-three (cdr pt-three)))
     (set-cdr! pt-four  (+ Y-four  (cdr pt-four )))
     (ly:grob-set-property! grob 'control-points
       (list pt-one pt-two pt-three pt-four))))

% broken slurs/ties are often ugly with wrong Y-offset, so attempt
% to cure *only* if curve is broken across systems
#(define (shape-slur-if-broken grob part Y-one Y-two Y-three Y-four)
   (if (eq? 'Slur (assoc-ref (ly:grob-property grob 'meta) 'name))
       (let* ((orig (ly:grob-original grob))
              (siblings (if (ly:grob? orig)
                            (ly:spanner-broken-into orig) '())))
         (if (>= (length siblings) 2)
             (cond
              ((eq? part 'first)
               (change-slur-offset (first siblings)
                 Y-one Y-two Y-three Y-four))
              ((eq? part 'second)
               (change-slur-offset (second siblings)
                 Y-one Y-two Y-three Y-four)))))))


%-------- The following funcs are for repeatedly adding articulation

#(define tied? #f)

#(define (check-tie e)
   (if (eq? 'TieEvent (ly:music-property e 'name))
       (set! tied? #t)))

% Idea from http://lists.gnu.org/archive/html/lilypond-user/2008-06/msg00019.html
#(define (add-articulation articulation m)
   (let (
          (name    (ly:music-property m 'name))
          (es      (ly:music-property m 'elements))
          (e       (ly:music-property m 'element))
          (ar-list (ly:music-property m 'articulations))
          (ar      (make-music 'ArticulationEvent 'articulation-type articulation)))
     (cond
      ((ly:music? e)
       (if (not (eq? name 'GraceMusic)) (add-articulation articulation e)))
      ((eq? name 'TieEvent) (set! tied? #t))
      ((list? es)  ; including case where elements property doesn't exist
        (cond
         ((eq? name 'EventChord)
          (begin
           (if (and (not tied?)
                    ; no very reliable way to determine if an EventChord contains notes
                    ; but enough for use here
                    (or (ly:duration? (ly:music-property m 'duration))
                        (memq 'NoteEvent
                          (map (lambda(x) (ly:music-property x 'name)) es))))
               ; Attaching same articulation multiple times is not harmful, so
               ; not bother checking if accent already exists. Same below.
               (ly:music-set-property! m 'elements
                 (append es (list ar))))
           (set! tied? #f)
           (for-each check-tie es)))
         ((eq? name 'NoteEvent)
          (begin
           (if (not tied?)
               (ly:music-set-property! m 'articulations
                 (append ar-list (list ar))))
           (set! tied? #f)
           (for-each check-tie ar-list)))
         (else (if (not (null? es))
                   (for-each
                    (lambda(x) (add-articulation articulation x)) es))))))))


% for supported articulation list, see lilypond doc section A.13
addArticulation =
#(define-music-function (parser location articulation mus)
   (string? ly:music?)
   "Add same articulation to all notes except rests, grace and tied notes"
   (set! tied? #f)
   (for-each
    (lambda(x) (add-articulation articulation x))
    (ly:music-property mus 'elements))
   ; (display-scheme-music mus)
   mus
)


%-------- Right Hand parts

RHpatternA = \relative c'' { % bar 3 first 3 quartet sans first rest
  <bes bes'>16-> <d f>4->~ q8. <bes bes'>16->
}

RHpatternB = \relative c'' { % bar 3 last quartet + bar 4
  \addArticulation "accent" {
    \moveTupletAbs 5 ##f \tuplet 6/4 {
      <d f>16 <a a'> <bes d> <g g'> <bes d> <f f'>
    } |
    \moveTupletAbs 3 ##f \tuplet 6/4 { <bes d>4 q16 q }
    q8. <f d bes f>16
  }
  \tuplet 3/2 { <f d bes f>16->( bes d) } <f d bes f>8->~
  \moveTupletAbs 5 ##f \tuplet 6/4 { q4~ q16 <g ees bes g>-> }
}

RHpatternC = \relative c'' { % bar 5
  \addArticulation "accent" {
    <f d bes f>8. <bes, bes'>16 <d f>4~ q8. <bes bes'>16
  }
  \moveTupletAbs 4 ##f \tuplet 6/4 {
    <d f>16-> <a a'> <bes d> <g g'> <bes d> <f f'>
  }
}

RHpatternD = \relative c'' { % bar 6
  \moveTupletAbs 3 ##f \tuplet 6/4 { <bes d>8.-> q16 q q }
  q8.-> <f d bes f>16->
  \tuplet 3/2 { <f d bes f>16->( bes d) } <f d bes f>8->~
  \moveTupletAbs 5 ##f \tuplet 6/4 { q4~ q16 <g d bes g>-> }
}

RHpatternE = \relative c'' { % bar 7
  \moveTupletAbs 5 ##f \tuplet 6/4 { <f d a f>4->~ q16 <d d'>-> }
  \moveTupletAbs 5 ##f \tuplet 6/4 { <f a>16-> <c c'> <d f> <bes bes'> <d f> <a a'> }
  \tuplet 6/4 { <c f>4~ q16 <a a'> }
  <c f>8 \tuplet 3/2 { <a f a,>16 q q }
}

RHpatternF = \relative c'' { % bar 8
  \moveTupletAbs 3 ##f \tuplet 6/4 { q4~ q16 <d d'>-> }
  \hideTupletOnce \tuplet 6/4 { <f a>16-> <c c'> <d f> <bes bes'> <d f> <a a'> }
  \hideTupletOnce \tuplet 6/4 { <c f>4~ q16 <a a'> }
  \hideTupletOnce \tuplet 6/4 { <c f>4~ q16 <f f'>-> }
}

RHpatternG = \relative c'' { % bar 9
  \addArticulation "accent" {
    <d~ f aes d~>4 <d e g d'>8. <c c'>16
    \moveTuplet -0.5 \tuplet 6/4 { <a ees' a>4~ q16 <g g'> }
    \moveTuplet -2   \tuplet 6/4 { <ees ees'>4~ q16 <d d'> }
  }
}

RHpatternH = \relative c' { % bar 10
  \addArticulation "accent" {
    \tuplet 3/2 { <bes bes'>16 <a a'> <g g'> } <f f'>8~
    \moveTupletAbs 3 ##f
    \once \override TupletNumber.extra-offset = #'(-2 . 0)
    \tuplet 6/4 { q4~ q16 \clef bass <f a ees' f> }
  }
}

RHpatternI = \relative c' { % bar 11
  \addArticulation "accent" {
    \moveTuplet -0.5     \tuplet 6/4 { <d bes f d>4~ q16 \clef treble <bes' bes'> }
    \moveTuplet -1.5     \tuplet 6/4 { <d f>4~ q16 <bes bes,>16 }
    \moveTupletAbs 3 ##f \tuplet 6/4 { <f d f,>4~ q16 <bes bes'> }
  }
}

RHpatternJ = \relative c' { % bar 13 + 14
  \addArticulation "accent" {
    \moveTuplet -1       \tuplet 6/4 { <f bes d f>4~ q16 <bes bes'> }
    <d f>8               \tuplet 3/2 { <bes bes,>16 q q }
    \moveTupletAbs 3 ##f \tuplet 6/4 { <f d f,>4~ q16 <bes bes'> }
  }
  \hideTupletOnce  \tuplet 6/4 { <d f>16-> <a a'> <bes d> <g g'> <bes d> <f f'> } |
  <bes d>8         \tuplet 3/2 { q16 q q } q8.-> <f d bes f>16
                   \tuplet 3/2 { <f d bes f>16( bes d) } <f d bes f>8~
  \moveTuplet -0.5 \tuplet 6/4 { q4~ q16 <g d bes g>-> }
}

RHpatternK = \relative c' { % bar 15 + bar 16 first 3 quartet
  <f a d f>8->  \tuplet 3/2 { <a f d a>16 ( d f ) }
  \moveTuplet -1 \tuplet 6/4 { <a f d a>4->~ q16 <bes f des bes>-> }
  \stemUp <a f c a>8-> \tuplet 3/2 { <c, a f c>16 ( f a ) } \stemNeutral
  \addArticulation "accent" {
    \moveTuplet -1 \tuplet 6/4 { <c a f c>4~ q16 <ees c fis, ees> } |
    \moveTupletAbs 6 ##f \tuplet 6/4 { <d bes g d>4~ q16 <c fis, ees c> }
    \tuplet 6/4 { <bes g d bes>4~ q16 <g ees c g> }
    \tuplet 3/2 { <f d bes f>8 <ees c ees,> <d bes d,> }
  }
}

RH = \relative c'' {
  \tupletUp
  R1*2 |
  \hideDynamics r8.\ff \RHpatternA \RHpatternB |
  \RHpatternC |
  \RHpatternD |
  \RHpatternE |
  \RHpatternF |
  \RHpatternG |
  \RHpatternH |

  \barNumberCheck 11
  \RHpatternI \RHpatternB |
  \RHpatternJ |

  \accommodateTightNotes
  \RHpatternK
  \addArticulation "accent" {
    \moveTupletAbs 5 ##f \tuplet 5/4 {
      <bes d e bes'>16 <a cis e a> <f a d f> <d f bes d> <g bes ees g>
    }
  } |

  \unAccommodateTightNotes
  <f~ bes d f~>4-> <f a ees' f>8. <f f'>16-> |

  \barNumberCheck 18
  <<
    \relative c''' {
      \stemDown
      \showTupletTemp \tupletDown
      \moveTupletAbs -3 ##f
      \tuplet 6/4 { \hideDynamics r16\ff <bes bes'> \( <d f> <a a'> <d f> <g, g'> }
      \moveTupletAbs -3 ##f
      \tuplet 6/4 { <bes d> <f f'> <bes d> <g g'> <bes d> <f f'> }
      \revertTuplet \tupletNeutral \hideTupletTemp
      \tuplet 6/4 4 {
        bes <d d,> bes <f f'> bes <d d,>
        bes <c c,> bes <d d,> f, <bes bes,> \)
      }
      \stemNeutral
    } \\
    \relative c' { <d f bes d>1-> }
  >> |

  \barNumberCheck 19
  \revertTuplet \hideTupletTemp
  \tuplet 6/4 4 {
    % bar 19
    \hideDynamics <>\ff
    \hideHairpin r16\> <d' d'> \( <f bes> <f f'>  <bes d> <d d,>
    <bes f> <c c,> <bes f> <d d,>     f,   <bes bes,>
    d,      <g g,> d       <bes bes'> d    <g g,>
    \hideDynamics bes,\p
    <f f'> bes     <ees ees,> bes  <d d,> |

    % bar 20
    <des bes ges des>\noBeam \)
    % Lilypond bug: accidental overlaps with stem flag of prev chord
    \once \override Staff.AccidentalPlacement.padding = 1.1
    \once \override Staff.Accidental.extra-offset = #'(0.9 . 0)
    <ges ges'> \(
    <bes des> <f f'>     <bes des> <ees ees,>
    <bes ges> <des des,> <bes ges> <ees ees,> <bes ges> <des des,>
    ges,      <bes bes,> ges       <des des'> ges       <bes bes,>
    des,      <aes aes'> des       <bes bes'> des       <ges ges,> \) |

    % bar 21
    r <des des'> \( <f bes> <f f'>   <bes des> <des des,>
    <bes f>  <c c,> <bes f> <des des,> <bes f> <c c,>
    f, <bes bes,> f <des des'> f <bes bes,>
    des,\< <ges ges,> des <bes bes'> des f \) |

    % bar 22
    \hideDynamics r\mp
    <des des'> \( <ges bes> <ees ees'> <ges bes> <des des'>
    ges         <bes bes,> ges       <c c,>     ges       <des des'> \)
    \ottavaUp
    <aes' c>\> \( <ees ees'> <aes c> <f f'>     <aes c>   <ges ges'>
    <c ees>     <ges ges'> <c ees>   <aes aes'> <c ees>   <bes bes'> \) |

    % bar 23
    \hideDynamics <des f>\p \( <bes bes'>
    f'  <c c'>     f    <des des'>
    f          <c c'>     f   <bes bes,> f    <aes aes,>
    des,       <ges ges,> des <f f,>
    \ottava #0 aes, <ees ees'>

    aes 16 <ees ees'> aes <des des,>
    \set tieWaitForNote = ##t
    des,_~ <f f,> |
    <fes des fes,>\noBeam \)
    \set tieWaitForNote = ##f

    % bar 24 sans first note
    <ees ees'>16 \(      <aes des> <fes fes'> <aes des> <ees ees'>
    <aes des> <fes fes'> <aes des> <ges ges'> <aes des> <fes fes'>
    aes\< <ees ees'> aes \hideDynamics <fes fes'>\mp aes <ees ees'>
    g  \> <des des'> g   <ces ces,>\p g   <bes bes,> \) |

    % bar 25
    <aes ees> \( <bes bes,> <aes ees> <ces ces,> <aes ees> <bes bes,>
    ees,         <g g,>     ees       <aes aes,> ees       <bes bes'>
    <aes' ees>   <ces ces,> <aes ees> <bes bes,> <aes ees>\< <ces ces,>
    aes          <bes bes,> aes       <ces ces,> aes       <des des,> \) |

    % bar 26
    \hideDynamics <ces aes>\mp \(
    <d d,> <ces aes> <ees ees,> <ces aes> <e e,>
    <aes, ces>   <f f'> <aes ces> <e e'>     <aes ces> <f f'>
    % EDITORIAL NOTES: Muzyka edition missing hairpin here
    <bes aes>\>  <d d,> \hideDynamics <bes aes>\p
    <ees ees,> <bes aes> <e e,>
    \hideHairpin <d bes>\> <f f,> <d bes>
    \ottavaUp <ges ges,> <aes aes,> <bes bes,> \) |

    % bar 27
    \hideDynamics <>\pp
    <ges ees> \( <ees ees'> <ges bes> <ces ces,> <ges ees> <bes bes,>
    <ges ees>    <ces ces,> <ges ees> <bes bes,> <ges ees> <aes aes,>
    ees          <ges ges,> ees       <aes aes,>  ees      <ges ges,>
    \ottava #0
    bes,         <f f'>     bes       <ees, ees'> ges      <bes bes,> \) |

    % bar 28
    \hideHairpin r\<
    <b, eis  >(  eis,)
    % lilypond bug: accidental overlaps with stem of prev note
    \once \override Accidental.extra-offset = #'(0.3 . 0)
    <b' fis' >(  fis  <fis ais>)
    b, (  <gis' b  >)  dis (  <b' dis  >)  e,(  <b' e   >)
    gis(  <dis' gis>)  ais (  <dis ais'>)  b (  <dis b' >
    b  )  <e ais   >(  ais,)  <e' b'   >(  b )  <e cis' >( |

    % bar 29
    cis )  <ees a   >(  a,  )  <ees' bes'>(  bes    <bes d   >)
    ees,(  <ces' ees>)  g   (  <ees' g   >)  aes,(  <aes' ees>)
    r      <ges ces >(  ces,)  <ges' des'>(  des )  <ges ees'>(
    ees )  <bes' ees>(  ees,)  <bes' f'  >(  f   )  <bes ges'>(

    % bar 30
    \hideDynamics fis16)\f
    <a    dis eis>( eis) <a    dis fis>( fis) <dis fis ais>(
    ais  ) <dis  fis b  >( b  ) <fis' b   d  >( d  ) <fis b   dis>(
    dis  ) <ais' dis eis>( eis) <ais  dis fis>( fis) <dis fis a  >(
    a    ) <dis  fis ais>( ais) <fis' ais d  >( d  ) <fis ais dis> |

    % bar 31
    dis \repeat unfold 3 { <ais' e'>( e) <ais eis'>( eis) <ais e' fis>( fis) }
    <ais eis'>( eis) <ais fis'>( fis) <g bes e g>\noBeam-> |

    % bar 32
    \revertTuplet \showTupletTemp
    \addArticulation "accent" {
      <e g bes e>4~ q16 <d g bes d>
      <c g' bes c>4~ q16 <a c e a>
     <g c e g>8 <e bes' e>16 <d bes' d>8 <c bes' c>16
    }
    % SPECIAL NOTE: hiding tuplet numbers here and on next bar, unlike both
    % public domain editions. Repetitive.
    \revertTuplet \hideTupletTemp
    <c a'>-> ( g' e d c ) <g' bes e g>\noBeam-> |

    % bar 33
    \addArticulation "accent" {
      <e g bes e>4~ q16 <d g bes d>
      <c g' c>4~ q16 <a c a'> <g c g'>8
      % EDITORIAL NOTE: Gutheil and Muzyka edition disagree; former one is
      % <e bes' e> and latter is <e c' e>. Picking Gutheil one.
      \clef bass <e bes' e>16
      <d bes' d>8 <c bes' c>16
    }
    \hideHairpin <c a'>->\> ( g' e d c ) g'32[ ( d] |
  }
  \revertTuplet

  \barNumberCheck 34
  \hideDynamics
  ees32\p c d g, a f )            <g' ees' g>16->\noBeam q8.-> c32 ( g
  \hideHairpin
  a\<  f g d ees c ) \clef treble <c' ees c'>16->\noBeam q8.-> g'32 ( d |
  ees32 c d g, a f )              <g' ees' g>16->\noBeam q8.-> c32 ( g
  a    f g d ees c )              <c' ees c'>16->\noBeam q8.-> c32 ( g |
  a    f g d ees c )
  \once \override Slur.positions = #'(1 . 1)
  g'' ( d ees c d g, a f )
  \hideDynamics c''\ff ( g
  \repeat unfold 3 { a f c' g } a f ) r16 |

  \barNumberCheck 37
  \cadenzaOn \voiceOne
  \graceStyle
  \scaleDurations 3/4 { ees'16[ ( d }
  \scaleDurations 1/2 {
    c bes a g f ees d c bes a g f ees d]
    c[ \clef bass bes a g f ees d c bes a g f ees d c] )
  }
  \noGraceStyle
  \cadenzaOff \oneVoice |

  % bar 38
  \tupletUp
  r8. \clef treble \RHpatternA \RHpatternB |
  \RHpatternC |
  \RHpatternD |
  \RHpatternE |
  \RHpatternF |
  \RHpatternG |
  \RHpatternH |

  \barNumberCheck 46
  \RHpatternI \RHpatternB |
  \RHpatternJ |

  \accommodateTightNotes
  \RHpatternK
  \tuplet 5/4 { <g'''=' ees' g>16 <f d' f> <d bes' d> <bes d bes'> <ees c' ees> } |

  \moveTupletAbs 4.5 ##f \tuplet 6/4 {
    <d bes' d   > <bes' d e bes'> <a cis e a >
    <f a d f    > <d f bes d    > <g bes ees g>
  }
  \moveTupletAbs 6 ##f \tuplet 6/4 {
    <f bes d f  > <ees' c' ees  > <d bes' d  >
    <bes d bes' > <g bes g'     > <c ees c'>
  }
  \moveTupletAbs 4.25 ##f \tuplet 6/4 {
    <bes d bes' > <a d a'       > <bes d bes'>
    <e, g cis e > <a c fis a    > <d, f b d>
  }
  \tuplet 6/4 {
    <g bes ees g> <c, ees a c   > <f aes d f >
    <ees g c ees> <c g' c       > <g' bes c g'>
  } |

  \unAccommodateTightNotes
  <c,~ f bes c~>4-> <c ees a c>8. <d f bes d>16-> |

  \barNumberCheck 54
  \revertTuplet \hideTupletTemp
  <<
    \relative c'''' {
      \set subdivideBeams = ##t
      \voiceOne r8
      \voiceTwo
      % in referenced editions, ottava bracket collides w/ slur to save space
      % not sure if we need that here (and not sure whether it's achievable)
      \ottavaUp
      \once \phrasingSlurUp
      \tuplet 5/4 8 { d32 \( ees d c d g f d c bes f' d c bes g }
    }
    \new Voice \relative c'{
      \voiceTwo
      <d f bes d>2->
    }
  >>
  \oneVoice
  \tuplet 5/4 8 { d'''32 c bes g f g f d c bes }
  \ottava #0
  \tuplet 5/4 { f' d c bes g }
  \tuplet 6/4 { a bes b c ees ges } |

  % bar 55
  \hideDynamics <f d>8\noBeam\f \)
  \ottavaUp
  \tuplet 5/4 8 { f32 \( g f e f bes g f ees d g f d c bes }
  \ottava #0
  \tuplet 5/4 8 { f' d c bes g d' c bes g f ees d c ees f }
  \tuplet 6/4 { ges aes a b c ees } |

  % bar 56
  \hideDynamics <bes d>8\noBeam\mf \)
  \tuplet 5/4 8 {
    bes32 \( c bes a bes d c bes g f bes g f ees d
    g f d c bes f' d c bes g d' c bes g f
  }
  \tuplet 6/4 { a bes b c ees ges } |

  % bar 57
  \showTupletOnce
  \tuplet 3/2 {
    \hideDynamics <d f>16\mp \) r
    % for default value of max-ratio (3), end points will stick close to
    % note heads, therefore slur will have large curvature
    \once \override PhrasingSlur.details.head-slur-distance-max-ratio = #4
    \once \override PhrasingSlur.height-limit = #4
    c\noBeam \(
  }
  \tuplet 5/4 8 { d32 c bes g f bes g f ees d }
  \tuplet 6/4 { ees ges a b c ees }
  \showTupletOnce
  \tuplet 3/2 { <bes d>16 \) r f\noBeam \( }
  \tuplet 5/4 8 { bes32 g f ees d f ees d c bes }
  \tuplet 6/4 { a bes b c ees ges \) } |

  \barNumberCheck 58
  \set subdivideBeams = ##f
  \hideDynamics <f d>8\p r16 <bes bes,>16-- <f d>4--~
  \tupletUp \showTupletOnce \moveTupletAbs 3 ##f
  \tuplet 6/4 { q4~ q16 \hideHairpin <d d'>->\< }

  \addArticulation "accent" {
    <f bes>4~ |
    \tuplet 6/4 4 {
                 q4~ q16 <f f'      >
      <d bes' d  >4~ q16 <bes' bes' >
      <f' d f,   >4~ q16 <d d'      >
      <bes g' bes>4~ q16 <f' bes d f>
    }
  } |

  \hideDynamics <d f bes d>16->\noBeam\ff <bes' d f bes> <f bes d f> <g g'>
  <d d'> <f f'> <bes, bes'> <d d'>
  <g, g'> <bes bes'> <f f'> <g g'>
  <d d'> <f f'> <bes, bes'> <d d'> |

  <<
    { r4 <a' c ees a>-> r8 \clef treble <bes d f bes>4.->\fermata } \\
    \relative c { <f f'>2-> \clef bass bes,-> }
  >> \bar "|."

}


%-------- Left Hand parts
LHnotesA = \relative c, {
  \moveTupletAbs -3 ##f  % 2nd tuplet position is ok
  \once \override PhrasingSlur.eccentricity = 2
  \tuplet 6/4 4 {
    \tag #'accents <bes bes,>16 \( f' bes d e f
    <bes d> g f d bes f\)
  }
}

LHpatternA = % bar 1, 1st half
#(define-music-function (parser location tup-visible) (boolean?)
   #{ \toggleTup #tup-visible \LHnotesA #} )

LHnotesB = \relative c, {
  \moveTupletAbs -3 ##f  % 2nd tuplet position is ok
  \once \override PhrasingSlur.eccentricity = 2
  \tuplet 6/4 4 { bes16\( f' bes d e f <bes d> g f d bes f\) }
}

LHpatternB = % bar 1, 2nd half
#(define-music-function (parser location tup-visible) (boolean?)
   #{ \toggleTup #tup-visible \LHnotesB #} )

LHpatternC = \relative c, { % bar 3 2nd half + bar 4 1st half
  \hideTupletTemp
  \tuplet 6/4 4 {
    bes16 \(  f' bes d e f <bes d> f d bes f bes,~ |
    bes \)
    % right end point can't reach note when slope factor >= 5 (2.18.x)
    % even 3 won't make it (2.19.x)
    \once \override PhrasingSlur.details.steeper-slope-factor = #2
    \once \override PhrasingSlur.eccentricity = 2
    f' \( bes d e f <bes d> g f
    d -\tag #'finger _1 bes -\tag #'finger _2 f -\tag #'finger _3 \)
  }
  \revertTuplet
}

LHpatternD = \relative c, { % bar 4 or bar 6, 2nd half
  \tuplet 6/4 4 {
    \hideTupletOnce <f bes,>16\( bes d
    \tag #'(accents end-ees end-d) <f> bes, d
    \showTupletOnce f bes d f8\)
    \tag #'end-ees <ees bes g>16->
    \tag #'end-d   <d   bes g>16->
  }
}

LHpatternF = \relative c { % bar 7, 1st half
  \hideTupletTemp
  \tuplet 6/4 4 {
    <a d,>16 \( d -\tag #'finger _1 f
    \once \override Fingering.avoid-slur = #'ignore
    \once \override Fingering.extra-offset = #'(0 . 2)
    \once \override Fingering.whiteout = ##t
    a -\tag #'finger _1 gis a \)
    r f' -\tag #'finger _1 ( d f, ) f -\tag #'finger _1 ( d )
  }
  \revertTuplet
}

LHpatternG = \relative c { % bar 7, 2nd half
  \hideTupletTemp
  \tuplet 6/4 4 {
    <c f,>16 \( f -\tag #'finger _1 a c -\tag #'finger _1 b c \)
    r c -\tag #'finger _1 \( a f c -\tag #'finger _1 bes \)
  }
  \revertTuplet
}

LHpatternH = \relative c { % bar 8, 2nd half
  \hideTupletTemp
  \tuplet 6/4 4 { <c f,>16\( f a c b c\) r c\( a f c c,\) }
  \revertTuplet
}

LHpatternI = \relative c { % bar 9, 1st half
  \hideTupletOnce \tuplet 6/4 {
    \once \override PhrasingSlur.positions = #'(2 . 1)
    c16\( aes'_3 b d_1 e_2 f_1
  }
  <e bes g>8.\) <f,, f,>16->
}

LHpatternJ = \relative c { % bar 9, 2nd half
  \once \stemDown <ees a>8->
  \showTupletOnce \tuplet 3/2 { <c f,>16 ( ees g-> ) }
  \showTupletOnce \moveTupletAbs -3 ##f \tuplet 6/4 { ees4->~ ees16 d-> }
}

LHpatternK = \relative c { % bar 10
  \addArticulation "accent" {
    \moveTupletAbs #-4 ##f \tuplet 3/2 { bes16 a g } f8~
    \once \override TupletNumber.extra-offset = #'(-2 . 0)
    \moveTupletAbs #-4.5 ##f \tuplet 6/4 { f4~ f16 <f f,> }
  }
}

LHpatternL = \relative c { % bar 15 + bar 16 first half
  \set subdivideBeams = ##t
  % move tuplet number away from slur
  \once \tupletUp \tuplet 3/2 { <a d,>16 ( d f ) } r8
  \hideTupletOnce \tuplet 6/4 { <a, d,>16 ( d f ) f ( a <bes des,>-> }
  % EDITORIAL NOTE: In both Gutheil and Muzgiz editions, there is no slur on
  % first occurance of { <f c'>16 a'8 }, but slur exists on 2nd occurance.
  % Adding slur here too.
  \once \tupletUp \tuplet 3/2 { <a c,>8-> ) <c, f,>16 ( } a'8 )
  \hideTupletOnce \tuplet 6/4 { <c, f,>16 ( f a ) a ( c <ees fis,>-> } |

  \unset subdivideBeams
  \addArticulation "accent" {
    \tuplet 6/4 { <d bes g>4~ q16 ) <a c fis> }
    \moveTupletAbs -4.25 ##f \tuplet 6/4 { <bes d g>4~ q16 <a ees c> }
  }
}

%%% LHpatternA/B (tuplet-visible)
%%% \pushToTag #'accents -> \LHpatternA/D   (accent on certain note)
%%% \removeWithTag #'finger \LHpatternC/F/G   (remove fingering)
%%% tags #'end-ees and #'end-d control which last note to use on patternD

LH = \relative c'
{
  \hideDynamics <>\f
  \tupletDown
  \LHpatternA ##t \LHpatternB ##t |
  \hideDynamics <> \ff
  \LHpatternA ##f \LHpatternB ##f |
  \LHpatternA ##f \LHpatternC
  \pushToTag #'accents -> \keepWithTag #'end-ees \LHpatternD |
  \LHpatternA ##f \removeWithTag #'finger \LHpatternC
  \pushToTag #'accents -> \keepWithTag #'end-d   \LHpatternD |
  \LHpatternF \LHpatternG |
  \removeWithTag #'finger \LHpatternF \LHpatternH |
  \LHpatternI     \LHpatternJ |
  \LHpatternK |

  \barNumberCheck 11
  \pushToTag     #'accents -> \LHpatternA ##f
  \removeWithTag #'finger     \LHpatternC
  \keepWithTag   #'end-ees    \LHpatternD |
  \LHpatternA ##f
  \removeWithTag #'finger     \LHpatternC
  \keepWithTag   #'end-d      \LHpatternD |
  \LHpatternL
  \showTupletTemp
  \addArticulation "accent" {
    \tuplet 3/2 { <bes f d>8 <f f,> <fis fis,> }
    \tuplet 5/4 { <g g,>16 <a a,> <d, d,> <bes' bes,> <ees, ees,> }
  } |
  \revertTuplet
  <f f,>4->
  \temporary \override Beam.auto-knee-gap = 1
  <f a ees'>8. <bes,, bes,>16-> |
  \revert Beam.auto-knee-gap

  \barNumberCheck 18
  <<
    \relative c, {
      % bar 18-21
      r16 <f bes,>^\( bes d
      \showTupletTemp
      \moveTupletAbs 0 ##t \tuplet 3/2 { f8 bes d }
      \moveTupletAbs 1 ##t \tuplet 3/2 { f d bes }
      \revertTuplet \hideTupletTemp
      \tuplet 3/2 { f d bes \) } |
      s2. \hideDynamics f'4--\mf |
      <ges bes,>2.-- aes8--
      % 2nd part of broken tie is way too short
      % update: though currently line break doesn't occur here,
      % leaving it there won't hurt
      \shape #'(() ((0 . 2)(0.8 . 2.5)(1.6 . 2.5)(2.4 . 2))) Tie
      bes--_~ |
      <des bes f>2.-- ees8-- <f bes,>-- |

      % bar 22-23
      <ges~ des bes ees,>2--\arpeggio
      \tuplet 3/2 { ges4 aes8-- }
      \clef treble <bes>8--\arpeggio c-- |
      \clef bass <des f, aes, f aes, des,>4.--\arpeggio s8*1/3 c8*2/3--
      bes8-- ( aes-- f-- )
      \clef bass
      g,-- -\tweak Slur.after-line-breaking
      #(lambda(grob) (shape-slur-if-broken grob 'first 0 0 2 2))
      ( |

      % bar 24-27
      <aes fes aes, des,>2\arpeggio )
      \shape #'(() ((0 . 0.8)(0 . 0.8)(0 . 0.3)(0 . 0))) Slur
      bes8\tenutoAlt[ ( ces--] des--\arpeggio [ ees--] |
      <ces ees, aes,>2.\tenutoAlt )
      % differentiate between slur and tie
      \shape #'(() ((0 . 1.5) (0 . 1.5) (0 . 1.5) (0 . 1.5))) Slur
      d8\tenutoAlt ( ees-- |
      % 2nd part of broken tie is way too short
      \shape #'(() ((-1.2 . 0)(-0.8 . 0.3)(-0.4 . 0.3)(0 . 0))) Tie
      <f~ ces aes>2 f4*2/3 ) ges8*2/3\tenutoAlt (
      \hideHairpin aes8--\> bes\tenutoAlt ) |
      \hideDynamics <ges bes, ges bes, ees,>1--\arpeggio\mp |
    } \\
    \relative c {
      % bar 18-21
      \hideDynamics <f d bes f>1->\ff |
      \hideTupletTemp
      \tuplet 3/2 4 {
        \hideHairpin <f, bes,>8\> ( bes d f bes d
        r d, bes \hideDynamics f\p bes, f' )
      } |
      \tuplet 3/2 4 { r8 bes, ( bes' ges' des' ges des ges, bes, ) } r4 |
      \tuplet 3/2 4 { r8 bes, ( bes' f' bes c des bes <f bes,> ) } r4 |

      % bar 22-23
      \tuplet 3/2 4 { r8 ees, ( bes' ges' bes des ) }
      \showTupletOnce
      % manually ignore tuplet stuff so slur is drawn at natural position
      \once \override TupletNumber.avoid-slur = #'outside
      \tuplet 3/2 { <c aes ges>8 ( aes, ) aes'' } <ees c ges>4\arpeggio |
      \tuplet 3/2 4 { r8 aes,, ( f' des' \clef treble f ) c' }
      des,4~ des8 r |

      % bar 24
      \tuplet 3/2 4 { r8 des,, ( aes' fes' aes fes' ) }
      r4 <ees,, des' g>4\arpeggio |

      % bar 25
      \tuplet 3/2 4 { r8 aes, ( aes' ees'4 ) aes,8 ( ces' ees, aes, ) }
      % EDITORIAL NOTE: Can be either A♭ or B♮ here, but not A♮ as
      % present in both Gutheil & Muzyka editions.
      % A♭ is chosen here; see notes on top of file.
      <ees' aes>4 |

      % bar 26
      \tuplet 3/2 4 {
        r8 aes, ( f' ces' f, ces' )
        \hideHairpin <aes bes d>\> bes, ges''
      }
      <aes, bes d>4 |

      % bar 27
      \tuplet 3/2 4 {
        % SPECIAL NOTE: defies engraving standard, for staff compacting
        \hideDynamics r8\pp \temporary \stemUp ees,, ( ees' \stemNeutral
        bes' ges' bes ges' bes, ges bes, ees, bes' )
      }
    }
  >> |

  \barNumberCheck 28
  <<
    \relative c' {
      \hideDynamics <>\pp
      \mergeDifferentlyDottedOn
      \hideHairpin b8.\< a16 gis4 dis' cis8. b16 |
      bes4 ces ges'4. f16( \hideDynamics ees\f)
    } \\
    \relative c' {
      \hideDynamics <>\pp
      \hideHairpin b16\< ( b, dis, ) a'' gis ( b, e, b' )
      dis' ( b gis dis ) cis' ( e, fis, ) b' |
      bes16 ( ees, g, ees' ) ces' ( ees, aes, ees' )
      \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 1)) Slur
      ges' ( ees ces ges bes, ges' ) f' \hideDynamics ees\f
    }
  >> |

  % bar 30-31
  \revertTuplet \showTupletTemp
  \tupletNeutral
  \tuplet 3/2 { <dis'' a fis b,>8\arpeggio \clef treble b'16-> ( }
  \addArticulation "accent" {
    fis8\noBeam~
    \tuplet 6/4 { fis8 ) dis16 ( b8 ) \clef bass fis16 }
    \tuplet 3/2 { <dis bis>8 \clef treble ais''16 ( } fis8\noBeam~
    \tuplet 6/4 { fis8 ) \clef bass dis16 ( ais8 ) fis16 ( } |
    \tuplet 3/2 { <e cis>8 ) ais'16 ( } fis8\noBeam~
    \tuplet 6/4 { fis8 ) <e e,>16 <cis cis,>8 <ais ais,>16 }
    \revertTuplet \hideTupletTemp
    \tuplet 6/4 {
      <fis fis,>8 <e e,>16 <cis cis,>8
      % SPECIAL NOTE: currently no public domain editions has ottava.
      % it may save a bit of vertical space... or not.
      % \ottava #-1 \set Staff.ottavation = #"8"
      <ais ais,>16 <fis fis,>8 <e e,>16 <cis cis,>8 c,16
      % \ottava 0
    }
  }

  % bar 32
  % Accent is too far away? But slur curve depends on automatic
  % layout and note density, so there's no reliable way of placing accent
  \tuplet 6/4 { c'16-> ( g'' bes e f g } <bes, e>8 )
  \revertTuplet \showTupletTemp
  \tuplet 3/2 { a16 ( g c, }
  \tuplet 6/4 { <g' bes>8 ) <g bes>16-> <f bes>8-> <e bes'>16-> }
  <c bes'>8->\noBeam

  % bar 33
  \tuplet 3/2 { d16 ( c g ) } |
  \revertTuplet \hideTupletTemp
  \tuplet 6/4 { c, ( g' c e f g }
  <bes, e>8 ) \tuplet 3/2 { a16 ( g c, }
  \tuplet 6/4 { <g' bes>8 ) <g bes>16-> <f bes>8-> <e bes'>16-> }
  \revertTuplet <c bes'>4-> |

  % bar 34-36
  \hideDynamics
  f,8.\p          g'32 ( d ees c d g, a f~ f16 )
  \hideHairpin ees''8.--\< c 32 ( g a f g d ees c
  % EDITORIAL NOTE: Slur end point at end of bar 34 is suspicious.
  % Probably should end one note earlier; among nearby bars all slurs
  % cover 8 notes except this one
  <f f,>16-> ) |
  <ees' g>8.->    g 32 ( d ees c d g, a f ) ees'16->\noBeam
  ees'8.->\noBeam c 32 ( g a f g d ees c ) c' ( g |
  a f g d ees c ) g'' ( d ees c d g, a f )
  \clef treble \hideDynamics c''\ff ( g
  \repeat unfold 3 { a ees c' g } a ees ) r16 \clef bass |

  % bar 37
  \cadenzaOn
  \graceStyle
  \change Staff="RH" \voiceTwo
  \scaleDurations 3/4 { ees'16[ ( d }
  \scaleDurations 1/2 { c bes a g] ) }
  \scaleDurations 3/4 { f8[ ( ees } f,] )
  \change Staff="LH" \oneVoice
  \scaleDurations 3/4 { f[ ( ees f,] ) f[( f,]) }
  \noGraceStyle
  \cadenzaOff \bar "|"

  \barNumberCheck 38
  \tupletDown
  \LHpatternA ##f \removeWithTag #'finger \LHpatternC
  \pushToTag #'accents -> \keepWithTag #'end-ees \LHpatternD |
  \LHpatternA ##f \removeWithTag #'finger \LHpatternC
  \pushToTag #'accents -> \keepWithTag #'end-d   \LHpatternD |
  \removeWithTag #'finger \LHpatternF
  \removeWithTag #'finger \LHpatternG |
  \removeWithTag #'finger \LHpatternF            \LHpatternH |
  \LHpatternI     \LHpatternJ |
  \LHpatternK |

  \barNumberCheck 46
  \pushToTag     #'accents -> \LHpatternA ##f
  \removeWithTag #'finger     \LHpatternC
  \keepWithTag   #'end-ees    \LHpatternD |
  \LHpatternA ##f
  \removeWithTag #'finger     \LHpatternC
  \keepWithTag   #'end-d      \LHpatternD |
  \LHpatternL
  \tuplet 3/2 { <d'' f bes>8-> <fis fis,>-> <g g,>-> }
  \tuplet 5/4 { <c, c,>16 <d d,> <fis fis,> <g g,> <a a,> } |

  \revertTuplet \hideTupletTemp
  \tuplet 6/4 4 {
    <bes bes,> <g g,> <a a,> <d, d,> <bes bes'> <ees ees,>
    <f f,> <fis fis,> <g g,> <d d'> <ees ees'> <a a,>
    <bes bes,> <fis fis,> <g g,> <a a,> <d, d,> <g g,>
    <c, c,> <f f,> <b, b,> <c c,> <ees ees,> <e e,>
  } |

  <f f,>4-> <c ees a>8. <bes, bes,>16-> |

  \barNumberCheck 54
  <<
    \relative c { \voiceTwo r8 \once \phrasingSlurUp f \( bes d }
    \new Voice \relative c { \voiceOne <f d bes f>2-> }
  >>
  \oneVoice
  \clef treble f'''8 bes4 <c ges ees>8 |

  % bar 55
  \hideDynamics <d f, bes,>8\noBeam\f \)
  \clef bass \once \phrasingSlurUp <d,, f, bes,> \( f bes
  \clef treble d f4 <a ees c ges>8 |

  % bar 56
  \hideDynamics <bes d, f,>8\arpeggio\noBeam\mf \)
  \clef bass <f,, bes,> \( bes d
  f bes4 <c ges ees>8 |

  % bar 57
  \hideDynamics <bes d, f,>8\arpeggio\mp \)
  bes,,[ ( <f' d'>] ) <a' ees c>--[ (
  <bes d, f,>--] ) bes,,[ ( <f' d'>] )
  \once \override Beam.breakable = ##t
  <ees' ges>--[ |

  \barNumberCheck 58
  \hideDynamics <f bes,>--\p]
  \tupletDown \revertTuplet \showTupletTemp
  \moveTupletAbs -3 ##f \tuplet 3/2 { <f, bes,>16 ( bes d }
  \moveTupletAbs -3 ##f \tuplet 6/4 { f d bes d bes f ) }
  \revertTuplet \hideTupletTemp
  \tuplet 6/4 4 { \hideHairpin bes,\< ( f' bes d cis d f d bes d bes f ) } |

  % bar 59
  \tuplet 6/4 4 {
    bes, ( f' bes d cis d bes' d, bes d bes f )
    bes, ( f' bes d f ) r
    e, ( bes' d g bes ) <f d bes f>->\noBeam
  } |

  % bar 60
  \hideDynamics <f bes d f>16->\noBeam\ff <bes d bes'> <f bes d f> <g g'>
  <d d'> <f f'> <bes, bes'> <d d'>
  <g, g'> <bes bes'> <f f'> <g g'>
  <d d'> <f f'> <bes, bes'> <d d'> |

  <<
    \relative c { r4 <ees a c ees>-> r8 <d f bes d>4.->\fermata } \\
    \relative c, { <f f,>2-> <bes, bes,>-> }
  >>
}

Dynamics = {
  \tempo \markup{ \huge{ "Maestoso." } } 4 = 80

  s1\f |
  \set Score.tempoHideNote = ##t
  s1 |
  s8 s2..\ffmarcato |
  s1*5 |
  s2. s4\ff |
  \time 2/4 s2 |

  \barNumberCheck 11

  \time 4/4 s1\ff |
  s1*5 |
  \time 2/4 \tempo 4 = 72 s2 |
  \time 4/4
  \tempo 4 = 76  % On real performances middle section is a bit slower
  s2-\tweak X-offset -3.5
    -\tweak extra-offset #'(0 . -1.75) \ff
  \bar "" s2 |
  \once \override DynamicTextSpanner.extra-offset = #'(0 . -1.75)
  s2\dim \bar "" s4 s4\p |
  s2 \bar "" s2 |

  \barNumberCheck 21

  s1*2 |
  s2-\tweak X-offset -2 \p \bar "" s2 |
  s2 \bar "" s2 |
  s2 \bar "" s2 |
  s2 \bar "" s4
  \tempo 4 = 72 s8
  \tempo 4 = 68 s8 |
  \tempo 4 = 72
  s2-\tweak extra-offset #'(0 . -1) \pp \bar "" s2 |

  \barNumberCheck 28

  \once \override DynamicTextSpanner.text = "un poco cresc."
  \once \set crescendoSpanner = #'text
  s2\< \bar "" s2 |
  s2 \bar "" s2\cresc |
  \once \override DynamicText.extra-offset = #'(0 . -1)
  s8*2/3\f s4*2/3-\markup\italic"marcato" s4 \bar "" s2 |
  s2 \bar "" s2 |
  s1\f |
  s2. s4*5/6\> s4*1/6\! |
  s2\p s2\cresc |
  s1 |
  s2... s16\! |

  \barNumberCheck 37
  \time 2/4 % inside \cadenza
  s2
  \tempo 4 = 68 s4
  \tempo 4 = 64 s4 |

  \set Score.currentBarNumber = #38 % \cadenza skips bar number, so increment manually
  \time 4/4
  \tempo 4 = 80
  s8 s2..\ffmarcato |
  s1*6 |
  \time 2/4 s2 |

  \barNumberCheck 46
  \time 4/4 s1\ff |
  s1*4 |
  s2. s4-\markup{\larger \italic "marcato"} |
  \tempo 4 = 72 %% 80bpm was unrealistic
  s1 |
  \time 2/4 s2 |

  \barNumberCheck 54
  \time 4/4
  \tempo 4 = 80
  s8 s2\ff  s8.\< s16\! s16*1/3 s16*4/3\> s16*1/3\! |
  s8 s2\dim s8.\< s16\! s16*1/3 s16*4/3\> s16*1/3\! |
  s8 s2     s8.\< s16\! s16*1/3 s16*4/3\> s16*1/3\! |
  s4. s8\> s4.\! s8\> |

  \barNumberCheck 58
  s2\p s2\cresc |
  s1 |
  \tempo 4 = 72 s1\ff |
  s2
  % Lilypond bug, can't use scaleDurations, otherwise will add extra
  % measure after end of note!
  \tempo 4 = 66 s8
  \tempo 4 = 40 s4. |
}

%-------Typeset music and generate midi
\score {

  \context PianoStaff \with {
    % Make sure secondary beams are grouped per semiquaver, e.g.
    % in subdivideBeams, bar 30-32
    baseMoment = #(ly:make-moment 1 8)
    % setting connectArpeggios in Staff context won't work
    connectArpeggios = ##t
    % disaster, see notes
    %\accidentalStyle PianoStaff.piano
  } <<
    \new Staff = "RH" << \clef treble \key bes \major \time 4/4 \RH >>
    \new Dynamics << \Dynamics >>
    \new Staff = "LH" << \clef bass   \key bes \major \time 4/4 \LH >>
  >>
  \layout {
    \context {
      \Score
      \omit TupletBracket
      \override TupletBracket.avoid-slur = #'ignore
      \override DynamicTextSpanner.style = #'none
      \override DynamicTextSpanner.font-size = 0
      \override Script.stencil =  % default accent too large
      #(lambda (grob)
         (let ((script (ly:grob-property grob 'script-stencil)))
           (if (equal? script '(feta . ("sforzato" . "sforzato")))
               (ly:stencil-scale (ly:script-interface::print grob) 0.75 0.75)
               (ly:script-interface::print grob))))
      % extent estimators, DON'T BE NAUGHTY
      \override DynamicText.Y-extent =
      #(ly:make-unpure-pure-container ly:grob::stencil-height '(-0 . 0))
      \override Stem.Y-extent = % DIE!!! DIE!!! DIE!!!
      #(ly:make-unpure-pure-container ly:stem::height '(-0 . 0))
      \override Slur.Y-extent =
      #(ly:make-unpure-pure-container ly:slur::height '(-0 . 0))
      \override PhrasingSlur.Y-extent =
      #(ly:make-unpure-pure-container ly:slur::height '(-0 . 0))
    }
  }
  \midi {
    \tempo 4 = 80
    \context {
      \Score
      midiInstrument = "acoustic grand"
      midiReverbLevel = 0.3
      dynamicAbsoluteVolumeFunction = #myMidiVolume
    }
  }
}

