%%% -*- Mode: scheme -*-
#(use-modules (srfi srfi-39))

#(define *current-opus* (make-parameter ""))
#(define *current-opus-title* (make-parameter ""))
#(define *current-piece* (make-parameter ""))

#(define (include-pathname name)
   (string-append (if (string-null? (*current-opus*))
                      ""
                      (string-append (*current-opus*) "/"))
                  (if (string-null? (*current-piece*))
                      ""
                      (string-append (*current-piece*) "/"))
                  name ".ily"))

#(define-public (include-score parser name)
   (collect-music-for-book
    parser
    (make-music 'Music
                'page-marker #t
                'page-label (string->symbol name)))
   (parameterize ((*current-piece* name))
     (ly:parser-parse-string
      (ly:parser-clone parser)
      (format #f "\\include \"~a\""
              (include-pathname "score")))))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% \global auto include
%%% Include the "global.ily" file of current piece
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = 
#(define-music-function (parser location) ()
  (let* ((global-symbol (string->symbol (format "global~a~a" (*current-opus*) (*current-piece*))))
         (global-music (ly:parser-lookup parser global-symbol)))
   (if (not (ly:music? global-music))
       (let* ((global-file (include-pathname "global")))
         (set! global-music #{ \context Voice = "" \notemode { \include $global-file } #})
         (ly:parser-define! parser global-symbol global-music)))
   (ly:music-deep-copy global-music)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Commands for including notes, lyrics, figures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
includeNotes = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
   #{ \context Voice = "" \notemode { \include $include-file } #}))

includeLyrics = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
   #{ \lyricmode { \include $include-file } #}))

includeFigures = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
     #{ \figuremode {
          \set Staff . figuredBassAlterationDirection = #RIGHT
          \override Staff . BassFigureAlignment #'stacking-dir = #UP
          \override Staff . BassFigureAlignmentPositioning #'direction = #DOWN
          \include $include-file } #}))

currentOpus =
#(define-music-function (parser location name title) (string? string?)
   (*current-opus* name)
   (*current-opus-title* title)
   (make-music 'SequentialMusic 'void #t))

includeScore =
#(define-music-function (parser location name) (string?)
   (include-score parser name)
   (make-music 'SequentialMusic 'void #t))
