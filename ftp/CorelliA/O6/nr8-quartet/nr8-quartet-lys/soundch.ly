\version "2.16.0"
\include "global.ly"

\include "mvmts.ly"

\include "vi.ly"
\include "vii.ly"
\include "vla.ly"
\include "clo.ly"

\score {
     {
        <<
            {
                \tempo 4=100
                s2.*7
                \tempo 4=50
                s4
                \tempo 4=100
                s2
                \tempo 4=50
                s1*13
            }
            \context Staff = "vi" { 
                \set Staff.midiInstrument = #"violin"
                \viI 
            }
            \context Staff = "vii" { 
                \set Staff.midiInstrument = #"violin"
                \viiI
            }
            \context Staff = "vla" { 
                \set Staff.midiInstrument = #"viola"
                \vlaI
            }
            \context Staff = "clo" { 
                \set Staff.midiInstrument = #"cello"
                \cloI
            }
        >>
    }
    
  \midi {
    }
}

\score {
     {
        <<
            {
                \tempo 4=130
                s1*21 s1*21
                s1*21 s1*19 s4
                \tempo 4=110
                s2. s1
            }
            \context Staff = "vi" { 
                \set Staff.midiInstrument = #"violin"
                \unfoldRepeats { \viII }
            }
%{            \context Staff = "vii" { 
                \set Staff.midiInstrument = #"violin"
                \unfoldRepeats { \viiII }
            }
            \context Staff = "vla" { 
                \set Staff.midiInstrument = #"viola"
                \unfoldRepeats { \vlaII }
            }
            \context Staff = "clo" { 
                \set Staff.midiInstrument = #"cello"
                \unfoldRepeats { \cloII }
            }%}
        >>
    }
    
  \midi {
    }
}

%{\score {
     {
        <<
            {
                \tempo 8=60
                s1*7 s2
                \tempo 8=55
                s8
                \tempo 8=53
                s4.
                \tempo 2=65
                s1*12 s2
                \tempo 2=40
                s2
                \tempo 8=60
                s1*7 s2
                \tempo 8=55
                s8
                \tempo 8=53
                s4.
                \tempo 8=60
                s1 s4
                \tempo 8=58
                s4
                \tempo 8=56
                s4 s4
                s1*2
            }
            \context Staff = "vi" { 
                \set Staff.midiInstrument = #"violin"
                \viIII
            }
            \context Staff = "vii" { 
                \set Staff.midiInstrument = #"violin"
                \viiIII
            }
            \context Staff = "vla" { 
                \set Staff.midiInstrument = #"viola"
                \vlaIII
            }
            \context Staff = "clo" { 
                \set Staff.midiInstrument = #"cello"
                \cloIII
            }
        >>
    }
    
  \midi {
    }
}

\score {
     {
        <<
            {
                \tempo 4=170
                s2.*8 s2.*8
                s2.*20 s2.*17
                \tempo 4=160
                s2.
                \tempo 4=155
                s2.*2
            }
            \context Staff = "vi" { 
                \set Staff.midiInstrument = #"violin"
                \unfoldRepeats { \viIV }
            }
            \context Staff = "vii" { 
                \set Staff.midiInstrument = #"violin"
                \unfoldRepeats { \viiIV }
            }
            \context Staff = "vla" { 
                \set Staff.midiInstrument = #"viola"
                \unfoldRepeats { \vlaIV }
            }
            \context Staff = "clo" { 
                \set Staff.midiInstrument = #"cello"
                \unfoldRepeats { \cloIV }
            }
        >>
    }
    
  \midi {
    }
}

\score {
     {
        <<
            {
                \tempo 2=120
                s2 s1*23 s2 s2 s1*23 s2
                s2 s1*43 s2 s2 s1*41 s2.
                \tempo 2=110
                s4 s1
                \tempo 1=30
                s1
            }
            \context Staff = "vi" { 
                \set Staff.midiInstrument = #"violin"
                \unfoldRepeats { \viV }
            }
            \context Staff = "vii" { 
                \set Staff.midiInstrument = #"violin"
                \unfoldRepeats { \viiV }
            }
            \context Staff = "vla" { 
                \set Staff.midiInstrument = #"viola"
                \unfoldRepeats { \vlaV }
            }
            \context Staff = "clo" { 
                \set Staff.midiInstrument = #"cello"
                \unfoldRepeats { \cloV }
            }
        >>
    }
    
  \midi {
    }
}

\score {
     {
        <<
            {
                \tempo 4=75
                s1.*23
                \tempo 4=70
                s1.*3
                \tempo 4=75
                s1
            }
            \context Staff = "vi" { 
                \set Staff.midiInstrument = #"violin"
                { \viVI }
            }
            \context Staff = "vii" { 
                \set Staff.midiInstrument = #"violin"
                { \viiVI }
            }
            \context Staff = "vla" { 
                \set Staff.midiInstrument = #"viola"
                { \vlaVI }
            }
            \context Staff = "clo" { 
                \set Staff.midiInstrument = #"cello"
                { \cloVI }
            }
        >>
    }
    
  \midi {
    }
}%}
