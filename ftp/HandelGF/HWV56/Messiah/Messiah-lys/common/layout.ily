%%% layout.ily
%%%
%%% Author: Nicolas Sceaux <nicolas.sceaux@free.fr>
%%%
%% Paper size
#(define-public *paper-size* (make-parameter 'a4))

%%% Paper size options:
%%% letter: Letter book option
%%% hardcover: Hardcover 210x273 book option
%%% otherwise: A4

#(set! paper-alist
   (cons '("hardcover" . (cons (* 209.55 mm) (* 273.1 mm)))
         paper-alist))

#(cond ((ly:get-option 'letter) (*paper-size* 'letter))
       ((ly:get-option 'hardcover) (*paper-size* 'hardcover))
       (else (*paper-size* 'a4)))

#(set-default-paper-size (symbol->string (*paper-size*)))

#(ly:set-option 'point-and-click #f)

\paper {
  %% Margins, line width
  page-top-space = #(* 5 mm)
  left-margin = 12\mm
  right-margin = 12\mm
  #(define line-width (- paper-width (* 24 mm)))

  ragged-bottom = ##f
  ragged-last-bottom = ##f

  %% Note: these are not scaled; they are in staff-spaces.
  top-title-spacing             = #'((space . 0)  (padding . 1) (minimum-distance . 0))
  before-title-spacing          = #'((space . 10) (padding . 1) (minimum-distance . 8))
  between-title-spacing         = #'((space . 1)  (padding . 0.5))
  after-title-spacing           = #'((space . 6)  (padding . 1) (minimum-distance . 2))

  top-system-spacing            = #'((space . 1)  (padding . 1) (minimum-distance . 0))
  between-system-spacing        = #'((space . 8)  (padding . 1) (minimum-distance . 8))
  bottom-system-spacing         = #'((space . 1)  (padding . 1) (minimum-distance . 0) (stretchability . 5))
  between-scores-system-spacing = #'((space . 14) (padding . 1) (minimum-distance . 8))
}

\layout {
  #(define (compute-indent amount)
    (let ((indent (* amount mm)))
      (if (or (eqv? #t (ly:get-option 'ancient-style))
              (eqv? #t (ly:get-option 'non-incipit)))
          (begin ;(format #t "~% indent: ~a" indent)
           indent)
          (+ indent (* incipit-width mm)))))

  smallindent = #(compute-indent 10)
  noindent = #(compute-indent 0)
  largeindent = #(compute-indent 25)
  hugeindent = #(compute-indent 35)
  indent = \smallindent

  \context {
    \Score
    \name Score
    \override BarNumber #'padding = #2 
    \override InstrumentName #'space-alist = #'((left-edge extra-space . 2.0))
    %\override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
    \accepts "StaffGroupNoBar"
    skipBars = ##t
  }
  \context {
    \StaffGroup
    \name StaffGroupNoBar
    \description "Like StaffGroup, but without spanbar"
    \remove "Span_bar_engraver"
    \accepts "StaffGroupNoBracket"
    \accepts "InnerStaffGroup"
    \accepts "InnerChoirStaff"
  }
  \context {
    \StaffGroup
    \name StaffGroupNoBracket
    \description "Like StaffGroup, but without brackets"
    \remove "System_start_delimiter_engraver"
  }
  \context {
    \ChoirStaff
    \consists "Instrument_name_engraver"
  }
  \context {
    \Staff
    \name Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
    %% Figured bass
    ignoreFiguredBassRest = ##f
    figuredBassAlterationDirection = #RIGHT
    \override BassFigureAlignment #'stacking-dir = #UP
    \override BassFigureAlignmentPositioning #'direction = #DOWN
  }
  RemoveEmptyStaffContext = \context {
    \Staff
    \remove "Axis_group_engraver"
    \consists "Hara_kiri_engraver"
    \override Beam #'auto-knee-gap = #'()
    \override VerticalAxisGroup #'remove-empty = ##t
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
  }
  \context {
    \Staff
    \name SmallStaff
    \description "Staff with small notes"
    fontSize = #-2
    \override StaffSymbol #'staff-space = #(magstep -2)
  }
}

pageBreakCond =
#(define-music-function (location parser paper-sizes) (list?)
   (if (memq (*paper-size*) paper-sizes)
       (make-music 'EventChord
         'page-marker #t
         'line-break-permission 'force
         'page-break-permission 'force
         'elements (list (make-music 'LineBreakEvent
                           'break-permission 'force)
                         (make-music 'PageBreakEvent
                           'break-permission 'force)))
       (make-music 'Music 'void #t)))

noPageBreakCond =
#(define-music-function (location parser paper-sizes) (list?)
   (if (memq (*paper-size*) paper-sizes)
       (make-music 'EventChord
         'page-marker #t
         'page-break-permission 'forbid
         'elements (list (make-music 'PageBreakEvent
                           'break-permission '())))
       (make-music 'Music 'void #t)))

whenAfour =
#(define-music-function (location parser music) (ly:music?)
   (if (eqv? (*paper-size*) 'a4)
       music
       (make-music 'Music 'void #t)))
whenLetter =
#(define-music-function (location parser music) (ly:music?)
   (if (eqv? (*paper-size*) 'letter)
       music
       (make-music 'Music 'void #t)))