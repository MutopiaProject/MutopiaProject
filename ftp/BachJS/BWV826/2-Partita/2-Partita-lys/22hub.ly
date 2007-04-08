% hub.ly - put the hands together without main titles, for compilation.
% The movement 2 of Partita 2 of J. S. Bach, set for Mutopia
% by Carl Bolstad on 7/29/2006.

\version "2.8.4"

\paper { 
	#(set-paper-size "letter")
}

% The following file is so I can write things
% like fs for f# and bf for b-flat.
\include "english.ly"

% Some function definitions:
cu = {\change Staff = "up" }
cd = {\change Staff = "down" }
global =
 {
    \key ef \major
    \time 2/2
  % The following makes the beaming group on every quarter note,
  % instead of on each whole measure or eigth note or something:
  #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
  #(override-auto-beam-setting '(end * * * *) 1 2 'Staff)
  #(override-auto-beam-setting '(end * * * *) 3 4 'Staff)
  #(override-auto-beam-setting '(end * * * *) 1 1 'Staff)
 }


%************************************
% Include files - the notes
%*************************************
\include "22right.ly"
\include "22left.ly"

%************************************
%************************************
% The score, to put it all together:
%************************************
%************************************

\score 
{
  \context PianoStaff
  
%% This is supposedly to set up the staves so we can do staff switches:
<<
    \new Staff = "up" {
      \skip 1 * 10  % keep staff alive
      }
        \new Staff = "down" {
      \skip 1 * 10  % idem
          }
%>>

			%<<
    \context Staff = up
    {
      \set Staff.midiInstrument = #"harpsichord"
      \global
	\TopVoice
    }
    \context Staff = down
    {
      \set Staff.midiInstrument = #"harpsichord"
      \global
      \clef bass
        \BottomVoice
    }
  >>
  \layout { }
  \header { piece = "2. Allemande" }
  \midi { \tempo 4=80 }
}
