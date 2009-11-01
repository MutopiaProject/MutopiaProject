\version "2.11.57"
%%% -*- Mode: scheme -*-

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Tagging commands
%%%

#(use-modules (srfi srfi-1))
#(define* (has-some-member? list1 list2 #:key (test eqv?))
   "Return a true value iif there exists an element of list1 that also 
belongs to list2 under test."
   (if (null? list1)
       #f
       (or (member (car list1) list2 test)
           (has-some-member? (cdr list1) list2 #:test test))))

#(define (symbol-or-symbols? x)
   (or (null? x)
       (not x)
       (symbol? x)
       (and (list? x) (every symbol? x))))

keepWithTag =
#(define-music-function (parser location tags music)
                        (symbol-or-symbols? ly:music?)
   (if tags
       (music-filter
        (lambda (m)
          (let ((m.tags (ly:music-property m 'tags)))
            (cond ((symbol? tags)
                   (or (null? m.tags) (memq tags m.tags)))
                  ((null? tags)
                   (null? m.tags))
                  ((list? tags)
                   (or (null? m.tags) (has-some-member? tags m.tags)))
                  (else #t))))
        music)
       music))

tag =
#(define-music-function (parser location tags arg)
                        (symbol-or-symbols? ly:music?)
   "Add @var{tags} (a single tag or a list of tags) to the @code{tags} 
property of @var{arg}."
   (set! (ly:music-property arg 'tags)
         (if (symbol? tags)
             (cons tags (ly:music-property arg 'tags))
             (append tags (ly:music-property arg 'tags))))
   arg)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Repeat with alternatives
%%%

alternatives =
#(define-music-function (parser location first second) (ly:music? ly:music?)
   #{
     \set Score.repeatCommands = #'((volta "1."))
     $first
     \bar ":|"
     \set Score.repeatCommands = #'((volta #f) (volta "2."))
     $second
     \set Score.repeatCommands = #'((volta #f)) 
   #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% smaller notes
%%%

smallNotes = 
#(define-music-function (parser location music) (ly:music?)
  (let ((first-chord-already-found #f)
        (last-chord #f)
        (start-beam (make-music 'BeamEvent
                                'span-direction -1))
        (end-beam (make-music 'BeamEvent
                              'span-direction 1))
        (note-count 0))
    ;; Add [ beaming directive to the first chord
    (music-map (lambda (event)
                 (cond ((eqv? (ly:music-property event 'name) 'EventChord)
                        (cond ((not first-chord-already-found)
                               ;; the first ChordEvent: add start beam
                               (set! first-chord-already-found #t)
                               (set! (ly:music-property event 'elements)
                                     (cons start-beam
                                           (ly:music-property event 'elements))))
                              (else (set! last-chord event))))
                       ((eqv? (ly:music-property event 'name) 'NoteEvent)
                        (set! note-count (1+ note-count))))
                 event)
               music)
    ;; Add ] beaming directive to the last chord
    (set! (ly:music-property last-chord 'elements)
          (cons end-beam (ly:music-property last-chord 'elements)))
    ;; If there are 3 notes, add a *2/3 duration factor
    (if (= note-count 3)
        (music-map (lambda (event)
                     (if (eqv? (ly:music-property event 'name) 'NoteEvent)
                         (let* ((duration (ly:music-property event 'duration))
                                (dot-count (ly:duration-dot-count duration))
                                (log (ly:duration-log duration)))
                           (set! (ly:music-property event 'duration)
                                 (ly:make-duration log dot-count 2 3))))
                     event)
                   music)))
  #{ 
  \override Voice.NoteHead #'font-size = #-3
  \override Voice.Stem #'font-size = #-3
  \override Voice.NoteHead #'font-size = #-3
  \override Voice.Accidental #'font-size = #-4
  $music
  \revert Voice.NoteHead #'font-size
  \revert Voice.Stem #'font-size
  \revert Voice.NoteHead #'font-size
  \revert Voice.Accidental #'font-size
  #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Custos note heads
%%%

custosNote = 
#(define-music-function (parser location note) (ly:music?)
  (make-music 'SequentialMusic
   'elements (list #{ 
              \once \override Voice.NoteHead #'stencil = #ly:text-interface::print
              \once \override Voice.NoteHead #'text =
              #(markup #:null #:raise 0.0 #:musicglyph "custodes.mensural.u0")
              \once \override Voice.Stem #'stencil = ##f #}
              note)))

%%%
%%% Note formatting tweaks
%%%

forceStemLength = 
#(define-music-function (parser location length music) (number? ly:music?)
  #{
  \override Voice.Stem #'details = #`((lengths . (,$length))
                                      (beamed-lengths . (,(- $length 1.0)))
                                      (beamed-minimum-free-lengths . (,(- $length 1.0)))
                                      (beamed-extreme-minimum-free-lengths . (,(- $length 1.0)))
                                      (stem-shorten . (1.0 0.5)))
  $music
  \revert Voice.Stem #'details
  #})

shiftOnce = { \once \override NoteColumn #'horizontal-shift = #1 }

%%%
%%% Misc utilities
%%%

altKeys =
#(define-music-function (parser location fractions) (list?)
   (let ((num1 (number->string (car fractions)))
         (den1 (number->string (cadr fractions)))
         (num2 (number->string (caddr fractions)))
         (den2 (number->string (cadddr fractions))))
   #{
     \once \override Staff.TimeSignature #'stencil = #ly:text-interface::print
     \once \override Staff.TimeSignature #'text =
     #(markup #:override '(baseline-skip . 0)
              #:number #:line (#:center-column ($num1 $den1)
                               #:hspace 0.5
                               #:center-column ($num2 $den2)))
     #}))
   
fractionTime = \once \override Staff.TimeSignature #'style = #'numbered
cTime = \once \override Staff.TimeSignature #'style = #'C
digitTime = \once \override Staff.TimeSignature #'style = #'single-digit

instrumentName =
#(define-music-function (parser location name) (markup?)
   #{ \set Staff.instrumentName = \markup \large $name #})

characterName =
#(define-music-function (parser location name) (markup?)
  #{ \set Staff . instrumentName = \markup \large \smallCaps $name #})

midiTempo =
#(define-music-function (parser location quater-nb-par-min) (number?)
   #{ \set Score . tempoWholesPerMinute =
      #(ly:make-moment $(/ quater-nb-par-min 4) 1 0 1) #})

%%%
%%% On-demand hara-kiri
%%%
startHaraKiri = \set Staff.keepAliveInterfaces = #'()
stopHaraKiri = \unset Staff.keepAliveInterfaces

noHaraKiri = \set Staff.keepAliveInterfaces =
#'(multi-measure-interface
rhythmic-grob-interface
lyric-interface
percent-repeat-item-interface
percent-repeat-interface
stanza-number-interface)
revertNoHaraKiri = \unset Staff.keepAliveInterfaces

%%%
ifLetter =
#(define-music-function (parser location music) (ly:music?)
   (if (eqv? #t (ly:get-option 'letter))
       music
       (make-music 'Music 'void #t)))
unlessLetter =
#(define-music-function (parser location music) (ly:music?)
   (if (not (eqv? #t (ly:get-option 'letter)))
       music
       (make-music 'Music 'void #t)))

%%%
applyDurations =
#(define-music-function (parser location pattern music) (ly:music? ly:music?)
  "\\applyDurations { c'16. c32 } { c d e f }
==>
{ c16. d32 e16. f32 }"
   (let ((durations (apply circular-list
                      (let ((result (list)))
                        (music-map (lambda (event)
                                     (if (eqv? (ly:music-property event 'name) 'NoteEvent)
                                         (set! result (cons (ly:music-property event 'duration) result)))
                                     event)
                                  pattern)
                        (reverse! result)))))
    (music-map (lambda (event)
                 (cond ((eqv? (ly:music-property event 'name) 'NoteEvent)
                        (set! (ly:music-property event 'duration) (car durations))
                        (set! durations (cdr durations))))
                 event)
               music)))

%%%
%% double pointée triple x2
dpts =
#(define-music-function (parser location chords) (ly:music?)
   (define (make-16.-32-16.-32 chord)
     (let ((pitches '()))
       (music-map (lambda (m)
                    (if (eqv? (ly:music-property m 'name) 'NoteEvent)
                        (set! pitches (cons (ly:music-property m 'pitch) pitches))))
                  chord)
       (let ((chord16. (make-music 'EventChord
                         'elements (map (lambda (pitch)
                                          (make-music 'NoteEvent
                                           'duration (ly:make-duration 4 1 1 1)
                                           'pitch pitch))
                                        pitches)))
             (chord32  (make-music 'EventChord
                         'elements (map (lambda (pitch)
                                          (make-music 'NoteEvent
                                           'duration (ly:make-duration 5 0 1 1)
                                           'pitch pitch))
                                        pitches))))
         (make-music 'SequentialMusic 'elements (list chord16. chord32 chord16. chord32)))))
   (make-music 'SequentialMusic 'elements (map make-16.-32-16.-32 (ly:music-property chords 'elements))))