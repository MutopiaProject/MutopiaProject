\piecePartSpecs #(let ((marks #{
                        \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
                        \markUpBegin \mark \markup \small \smallCaps Ritournelle
                        s4 s2.*30 s2
                        \markUpBegin \mark \markup \small \smallCaps Chœur
                        s4 s2.*28 s2
                        \markUpBegin \mark \markup \small \smallCaps Ritournelle
                        s4 s2.*30 s2
                        \markUpBegin \mark \markup \small \smallCaps Récit
                        s4 s2.*30 s2 \break
                        \markUpBegin \mark \markup \column \small \smallCaps {
                        "Chœur des heures du jour" "et des quatre saisons"
                      } #}))
                  `((dessus1 #:notes "dessus1" #:music ,marks)
                    (dessus2 #:notes "dessus2" #:music ,marks)
                    (haute-contre #:music ,marks)
                    (taille #:music ,marks)
                    (quinte #:music ,marks)
                    (basse #:music ,marks)
                    (voix)
                    (basse-continue #:notes "basse-continue" #:clef "alto" #:music ,marks)))
