\version "2.7.29" 
#(set-default-paper-size "a4") 
#(set-global-staff-size 16)
\paper { 
#(set-paper-size "a4") 
headsep = 1 \cm
linewidth = 16 \cm 
horizontalshift = 0.5 \cm
bottommargin = 2 \cm
betweensystempadding=#2  
raggedbottom=##t
raggedlastbottom=##f
 }
\include "oboe1.ly"
\include "oboe2.ly"
\include "oboe3.ly"
\include "horn1.ly" 
\include "horn2.ly" 
\include "horn3.ly" 
\include "bassoon1.ly"
\include "bassoon2.ly"
\include "bassoon3.ly"
\include "violinI1.ly"
\include "violinI2.ly"
\include "violinI3.ly"
\include "violinII1.ly"
\include "violinII2.ly"
\include "violinII3.ly"
\include "viola1.ly"
\include "viola2.ly"
\include "viola3.ly"
\include "bass1.ly" 
\include "bass2.ly"  
\include "bass3.ly"   
\layout {  
\context { \Score 
\override BarNumber #'extra-offset = #'(0 . 2) 
\override BarNumber #'font-size = #1
\override InstrumentName #'space-alist = #'((left-edge extra-space . 2.0)) }
\context { \Staff
 \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
 }
\context { \StaffGroup 
\override SystemStartBracket #'collapse-height = #1 }
 }

\book {
\header { title="Concerto for Bassoon and Orchestra in B-flat major"
opus = "K. 191"
instrument = " "
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" } }

\score {
\relative 
<<  
\new StaffGroup <<
\new Staff << { \set Staff.instr = #"Ob. " \oboea } >>
\new Staff << { \set Staff.instr = #"Cor. " \horna } >> >> 

<<
\new StaffGroup << 
\new Staff << { \set Staff.instr = #"Fag.   " \bassoona } >> >>
\new StaffGroup <<
\new GrandStaff <<

\new Staff << { \set Staff.instr = #"Vno. I    " \violinIa } >>
\new Staff << { \set Staff.instr = #"Vno. II    " \violinIIa  } >>  >>

\new Staff << { \set Staff.instr = #"Vla.    " \violaa } >> 

\new Staff << { \set Staff.instr = #"Vc. e Cb. " \bassa  } >> 
>> >> >>
 
}
\score {
\relative 
<<  
\new StaffGroup <<
\new Staff << { \set Staff.instr = #"Ob. " \oboeb } >>
\new Staff << { \set Staff.instr = #"Cor. " \hornb } >> >> 

<<
\new StaffGroup << 
\new Staff << { \set Staff.instr = #"Fag.   " \bassoonb } >> >>
\new StaffGroup <<
\new GrandStaff <<

\new Staff << { \set Staff.instr = #"Vno. I    " \violinIb } >>
\new Staff << { \set Staff.instr = #"Vno. II    " \violinIIb  } >>  >>

\new Staff << { \set Staff.instr = #"Vla.    " \violab } >> 

\new Staff << { \set Staff.instr = #"Vc. e Cb. " \bassb  } >> 
>> >> >>
 
}
\score {
\relative 
<<  
\new StaffGroup <<
\new Staff << { \set Staff.instr = #"Ob. " \oboec } >>
\new Staff << { \set Staff.instr = #"Cor. " \hornc } >> >> 

<<
\new StaffGroup << 
\new Staff << { \set Staff.instr = #"Fag.   " \bassoonc } >> >>
\new StaffGroup <<
\new GrandStaff <<

\new Staff << { \set Staff.instr = #"Vno. I    " \violinIc } >>
\new Staff << { \set Staff.instr = #"Vno. II    " \violinIIc  } >>  >>

\new Staff << { \set Staff.instr = #"Vla.    " \violac } >> 

\new Staff << { \set Staff.instr = #"Vc. e Cb. " \bassc  } >> 
>> >> >>
 
}
 }
