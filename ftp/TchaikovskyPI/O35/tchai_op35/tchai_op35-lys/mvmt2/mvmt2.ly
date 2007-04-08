%%% Many thanks to the Case Western Reserve University Kulas Music library
%%% for providing the old texts that would otherwise rot on the shelves.

\version "2.2.2"

#(set-global-staff-size 13)
\include "english.ly"
\include "mvmt2/defs.ly"
\include "mvmt2/global.ly"

\include "mvmt2/flauti.ly"
\include "mvmt2/oboi.ly"
\include "mvmt2/clarinettiB.ly"
\include "mvmt2/fagotti.ly"
\include "mvmt2/corniF.ly"
\include "mvmt2/solo.ly"
\include "mvmt2/violino1.ly"
\include "mvmt2/violino2.ly"
\include "mvmt2/viola.ly"
\include "mvmt2/violoncello.ly"
\include "mvmt2/contrabasso.ly"

\score { 
  <<
  \spacing
    \context StaffGroup ="woodwinds" <<
      \context Staff = "flauti" <<
        \set Staff.midiInstrument = #"flute"
        \set Staff.instrument = \markup { \center-align < "Flauto I." > }
        \set Staff.instr      = \markup { \center-align < "Fl." > }
        \barlines
        \theFlutes >>
      \context Staff ="oboi" <<
        \set Staff.midiInstrument = #"oboe"
        \set Staff.instrument = \markup { \center-align < "2 Oboi" > }
        \set Staff.instr = \markup { \center-align < "Ob." > }
        \barlines
        \theOboes >>
      \context Staff = "clarinetti" <<
        \set Staff.midiInstrument = #"clarinet"
        \set Staff.instrument = \markup { \center-align < "2 Clarinetti" "in B" > }
        \set Staff.instr = \markup { \center-align < "Cl." "(B)" > }
        \theClarinets >>
      \context Staff = "fagotti" <<
        \set Staff.midiInstrument = #"bassoon"
        \set Staff.instrument = \markup { \center-align < "2 Fagotti" > }
        \set Staff.instr = \markup { \center-align < "Fg." > }
        \barlines
        \theBassoons >>
    >> % end woodwinds
    
   \context StaffGroup ="brass" <<
      \context Staff = "corni" <<
        \set Staff.midiInstrument = #"french horn"
        \set Staff.instrument = \markup { "Corni in F" }
        \set Staff.instr = \markup { \center-align < "Cor." "(F)" > }
        \theHorns >>
    >>
    
     \context StaffGroup ="solo_group" <<
      \context Staff ="solo" <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrument = \markup { \center-align < Violino Solo > }
        \set Staff.instr = \markup { \center-align < "V.S." > }
        \barlines
        \theSolo
        >>
    >>
    
    \context StaffGroup ="strings" <<
        \context GrandStaff = "upper_strings" <<
                \context Staff = "violin_one" <<
                        \set Staff.midiInstrument = #"string ensemble 1"
                                \set Staff.instrument = \markup { \center-align < "Violino I" > }
                                \set Staff.instr = \markup { \center-align < "Vl." > }
                                \barlines
                                \theFirstViolins >>
                        \context Staff = "violin_two" <<
            		             \set Staff.midiInstrument = #"string ensemble 1"
                                 \set Staff.instrument = \markup { \center-align < "Violino II" > }
                                 \barlines
                                 \theSecondViolins >>
                >>
                \context Staff = "viola" <<
                        \set Staff.midiInstrument = #"string ensemble 1"
                        \set Staff.instr = \markup { \center-align < "Vla." > }
                        \barlines
                        \theViolas >>
                \context GrandStaff = "lower_strings" <<
                        \context Staff = "violincello" <<
                                \set Staff.midiInstrument = #"string ensemble 1"
                                \set Staff.instrument = \markup { \center-align < "Violoncello" > }
                                \set Staff.instr = \markup { \center-align < "Vc." > }
                                \barlines
                                \theCellos >>
                         \context Staff ="contrabass" <<
                         		 \set Staff.midiInstrument = #"string ensemble 1"
                                 \set Staff.instrument = \markup { \center-align < "Contrabasso" > }
                                 \set Staff.instr = \markup { \center-align < "B." > }
                                 \barlines
                                 \theBass >>
          >>
        >>
 >>
  
\midi { \tempo 4 = 58 }
  \paper {
        indent = 25.0\mm
%       textheight = 300.0\mm
        linewidth = 470\pt
        papersize = "a4"

    \context { \RemoveEmptyStaffContext }
    \context {
%      \Score
      %minimumVerticalExtent = #(cons -3 3)
 %     \override BarNumber #'padding = #3
    }
  }
}