%% %%%%%%%  Cut here ----- Start 'bbarred.ly'

%% C with slash -------------------------------
cWithSlash = \markup {
  \combine \roman C \translate #'(0.6 . -0.4) \draw-line #'(0 . 2.0)
}
%% Span -----------------------------------
%% Syntax: \bbarre #"text" { notes } - text = any number of box
bbarre =
#(define-music-function (barre location str music) (string? ly:music?)
                        (let ((elts (extract-named-music music '(NoteEvent EventChord))))
                          (if (pair? elts)
                            (let ((first-element (first elts))
                                  (last-element (last elts)))
                              (set! (ly:music-property first-element 'articulations)
                                (cons (make-music 'TextSpanEvent 'span-direction -1)
                                      (ly:music-property first-element 'articulations)))
                              (set! (ly:music-property last-element 'articulations)
                                (cons (make-music 'TextSpanEvent 'span-direction 1)
                                      (ly:music-property last-element 'articulations))))))
                        #{
                        \once \override TextSpanner.font-size = #-2
                        \once \override TextSpanner.font-shape = #'upright
                        \once \override TextSpanner.staff-padding = #3
                        \once \override TextSpanner.style = #'line
                        \once \override TextSpanner.to-barline = ##f
                        \once \override TextSpanner.bound-details =
                        #`((left
                             (text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
                             (Y . 0)
                             (padding . 0.25)
                             (attach-dir . -2))
                           (right
                             (text . ,#{ \markup { \cWithSlash #str } #})
                             (Y . 0)
                             (padding . 0.25)
                             (attach-dir . 2)))
                        %% uncomment this line for make full barred
                        % \once  \override TextSpanner.bound-details.left.text =  \markup { "B" #str }
                        $music
                        #})

%% %%%%%%%  Cut here ----- End 'bbarred.ly'
