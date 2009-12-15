\time 4/4
\markUpBegin \mark \markup { \bold "Sonata" } 
s1*5 \mSBreak
s1*8 
\bar "||"
\mLineBreak

\newSpacingSection
\markUpBegin \mark \markup { \bold "Tutti" } 
s1 \showMultiRests
s1*25
\hideMultiRests
\bar "||"
\mLineBreak

\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 110
\markUpBegin \mark \markup { \bold "Aria Soprano 1mo" } 
\time 3/4 
s2.*34
s4 \markUpBegin \mark \markup { \bold "Ritornello" } s2
s2.*22 
\bar "||"
\mLineBreak

\newSpacingSection
\markUpBegin \mark \markup { \bold "Soprano 2do" } 
s2.*34 
s4 \markUpBegin \mark \markup { \bold "Ritornello" } s2
s2.*22 
\bar "||"
\mLineBreak

\newSpacingSection
\markUpBegin \mark \markup { \bold "à3 Alto, Tenor è Basso" } 
s2.*34 
s4 \markUpBegin \mark \markup { \bold "Ritornello" } s2
s2.*22 
\bar "||"
\mLineBreak

\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 90
\markUpBegin \mark \markup { \bold "Tutti" } 
\time 4/4 
s1 \showMultiRests
s1*25
\bar "|."
