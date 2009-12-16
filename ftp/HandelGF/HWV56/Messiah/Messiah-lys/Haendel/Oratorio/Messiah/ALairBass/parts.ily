\piecePartSpecs #`((violino1 #:notes "violini")
                   (violino2 #:notes "violini")
                   (viola #:notes "violini" #:music ,#{ 
                    s8 s1*16 s2 s8
                    \clef treble s4. s1 s2.
                    \clef alto s4 s1*11 s2
                    \clef treble s2 s1*2 s2 s4.
                    \clef alto s8 s1*4 
                    \clef treble s1 s2. s4
                    \clef alto s1*3 s4.
                    \clef treble s8 s2 s1 s2.
                    \clef alto s4 s1 s2.
                    \clef treble s4 s2 s4.
                    \clef alto s8 s1*3 s4
                    \clef treble s2. s2.
                    \clef alto s4 s1*4 s2.
                    \clef treble
                    #})
                   (vocal)
                   (vocal-keyboard)
                   (keyboard)
                   (bassi #:score-template "score"))