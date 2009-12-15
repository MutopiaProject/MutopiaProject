%Sonata
\time 6/4 
\markUpBegin \mark \markup { \bold "Sonata" } 
s1.*15
\bar "||"
\mLineBreak

%Tutti
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 2 = 100
\markUpBegin \mark \markup { \bold "Tutti" } 
\time 3/2 
s1. \showMultiRests
s1.*58
\hideMultiRests
\bar "||"
\mLineBreak

%Aria
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 80
\markUpBegin \mark \markup { \bold "Aria Soprano 1mo" } 
\time 4/4 
s1*13
\time 3/2 
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 2 = 80
s2 \markUpBegin \mark \markup { \bold "Ritornello" } s1
s1.*13
\bar "||"
\mLineBreak

%Aria
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 80
\markUpBegin \mark \markup { \bold "à3 Alto Tenor Basso" } 
\time 4/4 
s1*13
\time 3/2 
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 2 = 80
s2 \markUpBegin \mark \markup { \bold "Ritornello" } s1
s1.*13
\bar "||"
\mLineBreak

%Aria
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 4 = 80
\markUpBegin \mark \markup { \bold "Soprano 2do" } 
\time 4/4 
s1*13
\time 3/2 
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 2 = 80
s2 \markUpBegin \mark \markup { \bold "Ritornello" } s1
s1.*13
\bar "||"
\mLineBreak

%Tutti
\newSpacingSection
\set Score.tempoHideNote = ##t
\tempo 2 = 100
\markUpBegin \mark \markup { \bold "Tutti" } 
\time 3/2 
s1. \showMultiRests
s1.*58
\bar "|." 
