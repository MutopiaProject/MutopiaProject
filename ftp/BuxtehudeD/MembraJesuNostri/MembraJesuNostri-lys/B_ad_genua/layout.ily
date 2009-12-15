\time 4/4 
\markUpBegin \mark \markup { \bold "Sonata in tremulo" } 
s1*28 
\bar "||"
\mLineBreak

\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 110
\markUpBegin \mark \markup { \bold "Tutti" } 
\time 3/4 
s2. \showMultiRests
s2.*40
\newSpacingSection
\time 4/4 
s1*6
\hideMultiRests
\bar "||"
\mLineBreak

\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 90
\markUpBegin \mark \markup { \bold "Aria Tenor" } 
\time 4/4 
s1*10
s4\markUpBegin \mark \markup { \bold "Ritornello" } s2. 
s1*6
\bar "||"
\mLineBreak

\newSpacingSection
\markUpBegin \mark \markup { \bold "Alto" } 
s1*10
s4\markUpBegin \mark \markup { \bold "Ritornello" } s2. 
s1*6
\bar "||"
\mLineBreak

\newSpacingSection
\markUpBegin \mark \markup { \bold "à 3 do Soprani è Basso" } 
s1*10
s4\markUpBegin \mark \markup { \bold "Ritornello" } s2. 
s1*6
\bar "||"
\mLineBreak

\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 110
\markUpBegin \mark \markup { \bold "Tutti" } 
\time 3/4 
\newSpacingSection
s2. \showMultiRests
s2.*40
\time 4/4 
s1*6
\bar "|."
