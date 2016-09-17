\version "2.18.2"
%\include "addScript.ly"

% Takes input of a number expressed as a string and a single note in ABSOLUTE pitch
% to count repeated notes manually

counting = #(define-music-function (parser location num note) (markup? ly:music?)
              (let ((notePrime (ly:music-deep-copy note)))
                #{
                  \absolute {
                  \tag #'partOnly {
                    \addScript \markup { \tiny #num } #note
                  }
                  \tag #'scoreOnly {
                    #notePrime
                  }
                  }
                    #}
                  )
                  )

