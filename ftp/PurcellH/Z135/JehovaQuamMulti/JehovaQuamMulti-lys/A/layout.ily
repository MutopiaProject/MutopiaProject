\time 2/2 
\markUpBegin \mark \markup { \bold "5 Voc:" } 
s1*21 | % 1-21
\bar "||" 
\mLineBreak

%tenor
\newSpacingSection
\time 4/4 
\markUpBegin \mark \markup { \bold "Solus"} 
s1*5 | % 22-26
\bar "||" 

\newSpacingSection
\override Score.TimeSignature #'style = #'single-digit
\time 3/2 
\set Score.tempoHideNote = ##t
\tempo 2 = 120
s1.*12 |% 27-38
\bar "||" 
\mLineBreak

%tutti
\newSpacingSection
\revert Score.TimeSignature #'style
\time 4/4 
\markUpBegin \mark \markup { \bold "5 Voc:" } 
\set Score.tempoHideNote = ##t
\tempo 4 = 90
s1*14 | % 39-52
\bar "||" 
%\mLineBreak
\newSpacingSection
s1*14 | % 39-66
\bar "||"
\mLineBreak

%basso
\markUpBegin \mark \markup { \bold "Solus" } 
\newSpacingSection
s1*5 |% 67-71
\bar "||"

\newSpacingSection
\override Score.TimeSignature #'style = #'single-digit
\time 3/2 
\set Score.tempoHideNote = ##t
\tempo 2 = 120
s1.*18| % 72-89
\bar "||"

\newSpacingSection
\revert Score.TimeSignature #'style
\time 2/2 
\set Score.tempoHideNote = ##t
\tempo 4 = 90
s1*7 |% 90-96
\bar "||" 
\mLineBreak

%tutti
\newSpacingSection
\override Score.TimeSignature #'style = #'single-digit
\time 3/2 
\set Score.tempoHideNote = ##t
\tempo 2 = 120
\markUpBegin \mark \markup { \bold "5 Voc:" } 
s1.*35 | % 97-131
\bar "|." 
