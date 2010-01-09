\time 4/4 
\markUpBegin \mark \markup { \bold "Sonata" } 
s1*12
\bar "||"
\mLineBreak 

%Tutti
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 80
\markUpBegin \mark \markup { \bold "Voci Alto, Tenore è Basso" } 
s1*15
\time 3/4 
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 106
s2.*28
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 80
\time 4/4 
s1*15
\bar "||"

\mLineBreak
%Aria
\newSpacingSection
\markUpBegin \mark \markup { \bold "Aria Alto" } 
s1*15
s4 \markUpBegin \mark \markup { \bold "Ritornello" } s2.
s1*7
\bar "||"
\mLineBreak

%Aria
\newSpacingSection
\markUpBegin \mark \markup { \bold "Tenor" } 
s1*15
s4 \markUpBegin \mark \markup { \bold "Ritornello" } s2.
s1*7
\bar "||"
\mLineBreak

%Aria
\newSpacingSection
\markUpBegin \mark \markup { \bold "Basso con Stromenti" } 
s1*15
s4 \markUpBegin \mark \markup { \bold "Ritornello" } s2.
s1*7
\bar "||"
\mLineBreak

%Tutti
\newSpacingSection
\markUpBegin \mark \markup { \bold "Voci Alto, Tenore è Basso" } 
\newSpacingSection
s1*15
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 106
\time 3/4 
s2.*28
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 80
\time 4/4 
s1*15
\bar "|." 
