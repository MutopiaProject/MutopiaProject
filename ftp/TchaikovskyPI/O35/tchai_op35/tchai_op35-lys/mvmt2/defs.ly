\version "2.2.2"

zu			= \markup { \bold {zu 2} }
cr			= \markup { \italic cresc. }
noDynamic	= \once \override DynamicText   #'transparent = ##t

#(define (skip-of-length mus)
  "Create a skip of exactle the same length as MUS."
  (let*
   ((skip
     (make-music
      'SkipEvent
      'duration (ly:make-duration 0 0))))

   (make-event-chord (list (ly:music-compress skip (ly:music-length mus))))
))


#(define (mmrest-of-length mus)
  "Create a mmrest of exactly the same length as MUS."

  (let*
   ((skip
     (make-multi-measure-rest
      (ly:make-duration 0 0) '() )))
   (ly:music-compress skip (ly:music-length mus))
   skip
))