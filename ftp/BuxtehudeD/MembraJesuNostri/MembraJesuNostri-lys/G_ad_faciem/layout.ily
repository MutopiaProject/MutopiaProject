\time 4/4 
\markUpBegin \mark \markup { \bold "Sonata" } 
\set Score.tempoHideNote = ##t
\tempo 4 = 80
s1*13
\bar "||"
\mLineBreak

\newSpacingSection
\markUpBegin \mark \markup { \bold "Tutti" } 
s1*24
\bar "||"
\mLineBreak

\newSpacingSection
\markUpBegin \mark \markup { \bold "Alto, Tenore è Basso con Violini" } 
\set Score.tempoHideNote = ##t
\tempo 2 = 80
\time 6/4 
s1.*36
\bar "||"
%\mLineBreak
\mPageBreak

\newSpacingSection
\markUpBegin \mark \markup { \bold "Aria Alto" } 
s1.*19
s2. \markUpBegin \mark \markup { \bold "Ritornello" } s | % 93
s1.*8
\bar "||"
\mLineBreak

\newSpacingSection
\markUpBegin \mark \markup { \bold "Tutti" } 
s1.*22
\bar "||"
\mLineBreak

\newSpacingSection
\markUpBegin \mark \markup { \bold "Amen" } 
\set Score.tempoHideNote = ##t
\tempo 2 = 120 
\showMultiRests
s1.*48
\bar "|."
