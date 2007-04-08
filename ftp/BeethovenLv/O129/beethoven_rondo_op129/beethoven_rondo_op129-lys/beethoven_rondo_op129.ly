\version "2.2.0"

\include "header.ly"
\include "english.ly"
\include "defs.ly"

\include "pA.ly"
\include "pB.ly"
\include "pC.ly"
\include "pD.ly"
\include "pE.ly"
\include "pF.ly"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ALL TOGETHER NOW
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% #(set-global-staff-size 11)	% pocket scores
%% #(set-global-staff-size 13)
%% #(set-global-staff-size 14)
#(set-global-staff-size 16)
%% #(set-global-staff-size 18)	% song books
%% #(set-global-staff-size 20)	% DEFAULT
%% #(set-global-staff-size 23)
%% #(set-global-staff-size 26)
theScore = \notes {
    \new PianoStaff {
        %% #(set-accidental-style 'piano-cautionary)
        #(override-auto-beam-setting '(end 1 8 * *) 1 2 'Score)
        \override Score.RehearsalMark #'padding = #2.2
        \override Score.RehearsalMark #'self-alignment-X = #-1
        \set PianoStaff.midiInstrument = "bright acoustic"
        \time 2/4
        <<
            \context Staff = "rh" {
                \set tupletSpannerDuration = #(ly:make-moment 1 4)
                \clef treble
                \rhA
                \rhB
                \rhC
                \rhD
                \rhE
                \rhF
            }
            \context Dynamics = "dyn" {
                \dynA \bar "||"
                \dynB \bar "||"
                \dynC \bar "||"
                \dynD
                \dynE
                \dynF \bar "|."
            }
            \context Staff = "lh" {
                \set tupletSpannerDuration = #(ly:make-moment 1 4)
                \clef bass
                \lhA
                \lhB
                \lhC
                \lhD
                \lhE
                \lhF
            }
        >>
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PAPER OUTPUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score
{
    \notes { \theScore }
    \paper{
        \context { \RemoveEmptyStaffContext } % Need to keep the dynamic stave alive, though.
        \context { \defPaperDynamicsContext }
        \context {
            \PianoStaffContext
            \accepts Dynamics
            \override VerticalAlignment #'forced-distance = #6
                                % if this #7 is changed, change the extra-offsets of the text markups etc
        }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% MIDI OUTPUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score
{
    \notes { \apply #unfold-repeats \theScore }
    \midi{
        \tempo 2=72
        \context { \defMidiDynamicsContext }
        \context {
            \PianoStaffContext
            \accepts Dynamics
        }
    }
}
