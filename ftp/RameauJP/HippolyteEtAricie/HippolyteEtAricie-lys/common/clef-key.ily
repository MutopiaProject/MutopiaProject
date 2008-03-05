%%% -*- Mode: scheme -*-
%%% clef.ily  -- ancient and modern clef command
%%%
%%% Author: Nicolas Sceaux <nicolas.sceaux@free.fr>
%%%
%%% Options
%%% =======
%%%   ancient-style
%%%     When true, use ancient clefs, instead of modern ones.
%%%
%%% Music functions
%%% ===============
%%%   \clef "ancient/modern"
%%%   \clef "name"
%%%     Overrides the \clef music command, with this extra feature: two
%%%     clefs may be given as an argument to \clef, seperated by a
%%%     slash. The first one is the ancient clef, the second the modern
%%%     clef. The actually displayed clef depends on the value of the
%%%     'ancient-style option: if 'ancient-style option is #t, then the
%%%     ancient clef is displayed; otherwise, the modern clef is
%%%     displayed, preceeded by the ancient clef if at the beginning of a
%%%     staff.
%%%     \clef "soprano/treble" is like:
%%%     - \clef "soprano" when (ly:get-option 'ancient-style) is #t
%%%     - \clef "treble" otherwise, but with an soprano clef in an incipit
%%%       preceeding the first line.
%%%
%%%  \oldKey pitch mode
%%%  \newKey pitch mode
%%%  \keys pitch mode
%%%
%%% Dependencies
%%% ============
%%% This feature relies on LilyPond >=2.11.40

#(use-modules (ice-9 regex))

%% to avoid warnings:
#(set-object-property! 'clef 'backend-type? ly:music?)
#(set-object-property! 'clef 'backend-doc "Incipit clef music")
#(set-object-property! 'key  'backend-type? ly:music?)
#(set-object-property! 'key  'backend-doc "Incipit key music")

staffStart = {
  \set Staff.vocalName = ""
  \once \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  \once \override Staff.InstrumentName #'self-alignment-Y = #UP
  \once \override Staff.InstrumentName #'Y-offset = #4
  \once \override Staff.InstrumentName #'padding = #0
  \once \override Staff.InstrumentName #'stencil = 
  #(lambda (grob)
     (let ((clef (ly:grob-property grob 'clef))
            (key (ly:grob-property grob 'key)))
       (if (and (ly:music? clef) (ly:music? key))
           (let* ((instrument-name (ly:grob-property grob 'long-text))
                  (layout (ly:output-def-clone (ly:grob-layout grob)))
                  (music (make-music
                          'SequentialMusic
                          'elements (list (make-music
                                           'ContextSpeccedMusic
                                           'context-type 'Staff
                                           'property-operations '((remove "Time_signature_engraver"))
                                           'element (make-music
                                                     'PropertySet
                                                     'symbol 'instrumentName
                                                     'value instrument-name))
                                          clef
                                          key
                                          (make-music
                                           'SkipMusic
                                           'duration
                                           (ly:make-duration 3 0 1 1)))))
                  (score (ly:make-score music))
                  (mm (ly:output-def-lookup layout 'mm))
                  (indent (ly:output-def-lookup layout 'indent))
                  (incipit-width (ly:output-def-lookup layout 'incipit-width))
                  (width (* (if (number? incipit-width) incipit-width 15)
                            mm)))
             (ly:output-def-set-variable! layout 'line-width indent)
             (ly:output-def-set-variable! layout 'indent (- indent width))
             (ly:output-def-set-variable! layout 'ragged-right #f)
             (ly:score-add-output-def! score layout)
             (set! (ly:grob-property grob 'long-text) (markup #:score score)))))
     ;; hack. Why are Staff.InstrumentName overrides permanent,
     ;; even with \once, and non re-overridable?
     (let ((short-text (ly:grob-property grob 'text)))
       (if (markup? short-text)
           (set! (ly:grob-property grob 'text)
                 (markup #:null #:raise -4.5 #:concat (short-text #:hspace 0.5)))))
     (ly:system-start-text::print grob))
}

#(define french-clefs '((dessus french . treble)
                        (dessus2 soprano . treble)
                        (haute-contre soprano . alto)
                        (taille mezzosoprano . alto)
                        (quinte alto . alto)
                        (basse bass . bass)
                        (vdessus treble . treble)
                        (vbas-dessus soprano . treble)
                        (vpetite-haute-contre mezzosoprano . treble)
                        (vhaute-contre alto . G_8)
                        (vtaille tenor . G_8)
                        (vbasse bass . bass)))

clef =
#(define-music-function (parser location clef-name) (string?)
   (let* ((match (string-match "^(.*)/(.*)$" clef-name))
          (clefs (assoc (string->symbol clef-name) french-clefs))
          (ancient-clef (cond (match (match:substring match 1))
                              (clefs (symbol->string (cadr clefs)))
                              (else clef-name)))
          (modern-clef (cond (match (match:substring match 2))
                             (clefs (symbol->string (cddr clefs)))
                             (else clef-name))))
     (if (eqv? #t (ly:get-option 'ancient-style))
         ;; ancient clef only
         (make-clef-set ancient-clef)
         ;; modern clef + ancient clef in incipit
         (make-music
          'SequentialMusic
          'elements (list (make-music
                           'ContextSpeccedMusic
                           'context-type 'Staff
                           'element (make-music
                                     'OverrideProperty
                                     'pop-first #t
                                     'grob-property-path '(clef)
                                     'grob-value (make-clef-set ancient-clef)
                                     'once #t
                                     'symbol 'InstrumentName))
                          (make-clef-set modern-clef))))))

#(define (make-key-set note key-alist)
   (let ((pitch (ly:music-property (car (ly:music-property
                                         note 'elements))
                                   'pitch)))
     (make-music 'KeyChangeEvent
                 'pitch-alist (ly:transpose-key-alist key-alist pitch)
                 'tonic pitch)))

oldKey =
#(define-music-function (parser location note key-alist) (ly:music? list?)
   (let ((key-set (make-key-set note key-alist)))
     (if (eqv? #t (ly:get-option 'ancient-style))
         key-set
         (make-music 'ContextSpeccedMusic
                     'context-type 'Staff
                     'element (make-music 'OverrideProperty
                                          'pop-first #t
                                          'grob-property-path '(key)
                                          'grob-value key-set
                                          'once #t
                                          'symbol 'InstrumentName)))))

newKey =
#(define-music-function (parser location note key-alist) (ly:music? list?)
   (if (eqv? #t (ly:get-option 'ancient-style))
       (make-music 'Music)
       (make-key-set note key-alist)))

keys =
#(define-music-function (parser location note key-alist) (ly:music? list?)
   (let ((key-set (make-key-set note key-alist)))
     (if (eqv? #t (ly:get-option 'ancient-style))
         key-set
         (make-music
          'SequentialMusic
          'elements (list key-set
                          (make-music
                           'ContextSpeccedMusic
                           'context-type 'Staff
                           'element (make-music
                                     'OverrideProperty
                                     'pop-first #t
                                     'grob-property-path '(key)
                                     'grob-value key-set
                                     'once #t
                                     'symbol 'InstrumentName)))))))

