%%% Many thanks to the Case Western Reserve University Kulas Music library
%%% for providing the old texts that would otherwise rot on the shelves.

\version "2.2.2"

#(set-global-staff-size 13)
\include "english.ly"
\include "mvmt3/defs.ly"
\include "mvmt3/global.ly"

\include "mvmt3/flauti.ly"
\include "mvmt3/flauti2.ly"
\include "mvmt3/oboi.ly"
\include "mvmt3/clarinettiA.ly"
\include "mvmt3/fagotti.ly"
\include "mvmt3/corniF.ly"
\include "mvmt3/corniF2.ly"
\include "mvmt3/trombeD.ly"
\include "mvmt3/timpani.ly"
\include "mvmt3/solo.ly"
\include "mvmt3/violino1.ly"
\include "mvmt3/violino2.ly"
\include "mvmt3/viola.ly"
\include "mvmt3/violoncello.ly"
\include "mvmt3/contrabasso.ly"

\score { 
  <<
  \spacing
    \context StaffGroup ="woodwinds" <<
      \context GrandStaff ="flutes" <<
        \context Staff = "flauti" <<
                \set Staff.midiInstrument = #"flute"
                \set Staff.instrument = \markup { \center-align < "Flauto I." > }
                \set Staff.instr      = \markup { \center-align < "Fl." > }
                \barlines
                \theFlutes >>
           \context Staff = "flauti2" <<
               \set Staff.midiInstrument = #"flute"
               \set Staff.instrument = \markup { \center-align < "Flauto II." > }
               \barlines
               \theFlutessecond >>
        >> % end flutes
      \context Staff ="oboi" <<
        \set Staff.midiInstrument = #"oboe"
        \set Staff.instrument = \markup { \center-align < "2 Oboi" > }
        \set Staff.instr = \markup { \center-align < "Ob." > }
        \barlines
        \theOboes >>
      \context Staff = "clarinetti" <<
        \set Staff.midiInstrument = #"clarinet"
        \set Staff.instrument = \markup { \center-align < "2 Clarinetti" "in A" > }
        \set Staff.instr = \markup { \center-align < "Cl." > }
        \theClarinets >>
      \context Staff = "fagotti" <<
        \set Staff.midiInstrument = #"bassoon"
        \set Staff.instrument = \markup { \center-align < "2 Fagotti" > }
        \set Staff.instr = \markup { \center-align < "Fg." > }
        \barlines
        \theBassoons >>
    >> % end woodwinds
    
   \context StaffGroup ="brass" <<
      \context GrandStaff = "horns" <<
                \context Staff = "corni_first" <<
                        \set Staff.midiInstrument = #"french horn"
                        \set Staff.instrument = \markup { \center-align < "Corni in F" "I  II" > }
                        \set Staff.instr = \markup { \center-align < "Cor." > }
                        \theHornsfirst >>
                \context Staff = "corni_second" <<
                        \set Staff.midiInstrument = #"french horn"
                        \set Staff.instrument = \markup { \center-align < "III IV" > }
                        \theHornssecond >>
                >>
                \context Staff = "trumpet" <<
                        \set Staff.midiInstrument = #"trumpet"
                        \set Staff.instrument = \markup { \center-align < "2 Trombe" "in D" > }
                        \set Staff.instr = \markup { \center-align < "Trbe." > }
                        \theTrumpets >>
    >>
    
    \context StaffGroup ="timpani_group" <<
      \context Staff ="timpani" <<
        \set Staff.midiInstrument = #"timpani"
        \set Staff.instrument = \markup { \center-align < "Timpani" "in A-D" > }
        \set Staff.instr = \markup { \center-align < "Timp." > }
        \theTimpani
        >>
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
                        \set Staff.instrument = \markup { \center-align < "Viola" > }
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
                        \set Staff.midiInstrument = #"contrabass"
                        \set Staff.instrument = \markup { \center-align < "Contrabasso" > }
                        \set Staff.instr = \markup { \center-align < "B." > }
                        \barlines
                        \theBass >>
          >>
        >>
 >>
 
% \header { \include "mvmt3/header.ly" }
  
\midi { \tempo 4 = 155 }
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