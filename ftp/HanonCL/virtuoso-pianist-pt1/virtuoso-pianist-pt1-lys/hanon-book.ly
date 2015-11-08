\version "2.18.2"

#(set-global-staff-size 17)
%#(set-default-paper-size "letter")

\header {
  mutopiatitle = "The Virtuoso Pianist (Part I)"
  date = "1873"
  style = "Technique"
  mutopiacomposer = "HanonCL"
  mutopiainstrument = "Piano"
  source = "Schirmer, 1900"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Steve Taylor and Javier Ruiz-Alma"
  maintainerEmail = "javier (at) ruiz-alma.com"

 footer = "Mutopia-2015/07/23-2037"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 9\mm
  system-system-spacing.basic-distance = #13
  top-markup-spacing.basic-distance = #9
}

\include "hanon-definitions.ily"

%----------------------------Cover Page
\bookpart {
\markup { \fill-line { \center-column {
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null
	\line {\abs-fontsize #18 "C. L. HANON"}
	\null \null \null \null
	\line {\abs-fontsize #28 "The Virtuoso-Pianist"}
	\null \null \null
	\line {\abs-fontsize #20 "Part I"}
	\null \null \null \null
	\fill-line { \abs-fontsize #13 "Preparatory exercises for the Acquirement of Agility, Independence," }
	\null
        \fill-line { \abs-fontsize #13 "Strength and Perfect Evenness in the Fingers."}
	} } }
}

%----------------------------Exercise 1
\include "hanon01.ily"
\bookpart {
  \paper { system-system-spacing.basic-distance = #12 }
  \header {
    opus =  \markup \larger \caps "C. L. Hanon."
    copyright = ##f
  }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 1."}
            \null
            }
  }
  \markuplist {
    \paragraph {
     Stretch between the fifth and fourth fingers of the left hand in ascending, 
      and the fifth and fourth fingers of the right hand in descending.
    }
    \paragraph {
      For studying the 20 exercises in this First Part, begin with the metronome set at 60, 
      gradually increasing the speed up to 108; 
      this is the meaning of the double mark at the head of each exercise.
    }
    \paragraph {
      Lift the fingers high and with precision, 
      playing each note very distinctly.
    }
  }

  \include "hanon-layout.ily"
  
  \markup { \column { \null } }
  \markuplist {
    \paragraph {
      For brevity, we shall henceforward indicate only by their figures those fingers
      which are to be specially trained in each exercise;
      e.g., 3-4 in Nº 2; 2-3-4 in Nº 3, etc.
    }
    \paragraph {
      Observe that, throughout the book both hands are continually executing the same difficulties;
      in this way the left hand becomes as skilful as the right.
      Besides, the difficulties executed by the left hand in ascending, 
      are exactly copied by the same fingers of the right hand in descending; 
      this new style of exercise will cause the hands to acquire perfect equality.
    }
    \paragraph {
      As soon as Ex.1 is mastered, go on to Ex. 2 without stopping on the final note.
    }
  }
  
}

%----------------------------Exercise 2
\include "hanon02.ily"
\bookpart {
  \header { copyright = ##f }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 2."}
            \null
            }
  }
  \markuplist{
     \paragraph {
    (3-4) When this exercise is mastered, recommence the preceding one, and play both 
    together four times without interruption; the fingers will gain considerably by practising 
    these exercises, and those following, in this way.
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
  
  \markup { \column { \null \null } }
  \markuplist{
     \paragraph {
    (1) The fourth and fifth fingers being naturally weak, it should be observed that this exercise,
    and those following it up to Nº 31, are intended to render them as strong and agile as the
    second and third.
     }
  }
}

%----------------------------Exercise 3
\include "hanon03.ily"
\bookpart {
  \header { copyright = ##f }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 3."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        (2-3-4) Before beginning to practise Nº 3, play through the preceding exercises once
        or twice without stopping.  When Nº 3 is mastered, practise Nº 4, and then Nº 5, and
        as soon as they are thoroughly learned play through all three at least four times
        without interruption, not stopping until the last note on page 6.  The entire work
        should be practised in this manner.  Therefore, when playing the numbers in 
        the First Part, stop only on the last note on pp. 3, 6, 9, 12, 15, 18, and 21.
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 4
\include "hanon04.ily"
\bookpart {
  \header { copyright = ##f }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 4."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        \hspace #4 
        "(3-4-5) (1) Special exercise for the 3rd, 4th and 5th fingers of the hand."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 5
\include "hanon05.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #14 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 5."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        \hspace #4 
        "(1-2-3-4-5)  We repeat, that the fingers should be lifted high, and with precision,"
        "until this entire volume is mastered."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 6
\include "hanon06.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #14 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 6."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        (5) To obtain the good results which we promise those who study this work, it is 
        indispensable to play daily, at least once, the exercises already learned.
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 7
\include "hanon07.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #14 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 7."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        \hspace #4 
        "(3-4-5) Exercise of the greatest importance for the 3rd, 4th and 5th fingers."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 8
\include "hanon08.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #15 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 8."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        \hspace #4 
        "(1-2-3-4-5) Very important exercise for all five fingers."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 9
\include "hanon09.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #14 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 9."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        \hspace #4 
        "Extension of the 4th and 5th, and general finger-exercise."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 10
\include "hanon10.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #15 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 10."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        (3-4) Preparation for the trill, for the 3rd and 4th fingers of the left 
        hand in ascending (1); and for the 3rd and 4th of the right, descending (2).
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 11
\include "hanon11.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #14 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 11."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        \hspace #4 
        "(3-4-5) Another preparation for the trill, for the 4th and 5th fingers."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 12
\include "hanon12.ily"
\bookpart {
  \header { copyright = ##f }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 12."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        \hspace #4 
        "Extension of 1-5, and exercise for 3-4-5."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 13
\include "hanon13.ily"
\bookpart {
  \header { copyright = ##f }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 13."}
            \null
            }
  }
  \markuplist{
     \paragraph { \hspace #12 "(3-4-5)" }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 14
\include "hanon14.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #14 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 14."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        \hspace #4 
        "(3-4) Another preparation for the trill, for the 3rd and 4th fingers."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 15
\include "hanon15.ily"
\bookpart {
  \header { copyright = ##f }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 15."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        \hspace #4 
        "Extension of 1-2, and exercise for all 5 fingers."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 16
\include "hanon16.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #14 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 16."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        \hspace #4 
        "Extension of 3-5, and exercise for 3-4-5."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 17
\include "hanon17.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #14 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 17."}
            \null
            }
  }
  \markuplist{
     \paragraph {
       \hspace #4 
       " Extension of 1-2, 2-4, 4-5, and exercise for 3-4-5."
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 18
\include "hanon18.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #14 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 18."}
            \null
            }
  }
  \markuplist{
     \paragraph { \hspace #13 "(1-2-3-4-5)" }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 19
\include "hanon19.ily"
\bookpart {
  \header { copyright = ##f }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 19."}
            \null
            }
  }
  \markuplist{
     \paragraph { \hspace #13 "(1-2-3-4-5)" }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}

%----------------------------Exercise 20
\include "hanon20.ily"
\bookpart {
  \header { copyright = ##f }
  \paper { system-system-spacing.basic-distance = #15 }
  \markup { \abs-fontsize #14 \center-column {
            \fill-line { \bold "Nº 20."}
            \null
            }
  }
  \markuplist{
     \paragraph {
        Extension of 2-4, 4-5, and exercise for 2-3-4.
     }
  }
  \markup { \column { \null \null } }
  
  \include "hanon-layout.ily"
}
