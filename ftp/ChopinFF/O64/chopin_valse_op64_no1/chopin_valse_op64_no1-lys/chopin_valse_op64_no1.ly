\version "2.18.2"


                                % "VALSE Op64 No1"
                                % 'Minute Waltz'
                                % by Frederic Chopin
                                %
                                % Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"

paperOFF = { \set Score.skipTypesetting = ##t }
paperON = { \set Score.skipTypesetting = ##f }

myBreak = {} %  { \break }
barRest =  { s1*3/4 }

%% Change to staff LH/RH
cslh = { \change Staff = "lh" }
csrh = { \change Staff = "rh" }

%% hide notes (once)
ohn = {
    \once\override NoteHead.transparent = ##t
    \once\override Stem.transparent = ##t
    \once\override Beam.transparent = ##t
}

%% Hide stem
noStem = \once \override Stem.transparent = ##t

%% Shift note to the right
forceShift = \once \override NoteColumn.force-hshift = #1.0

%% Shape the slur
shapeSlurOne = \shape #'((-0.5 . 0.7) (0 . 0.5) (0.5 . 0.5) (1 . 0.5)) Slur
shapeSlurTwo = \shape #'((0 . 0) (0.5 . 0) (1 . 0) (1.5 . 0)) LaissezVibrerTie

%% simpler sustain commands
sd  =  { s8\sustainOn }
su  =  { s8\sustainOff }
sud =  { s8\sustainOff\sustainOn }
sbar =  { s8\sustainOn s s s s s\sustainOff }

\include "sec1.ly"
\include "sec2.ly"
\include "sec3.ly"
\include "sec4.ly"

% Things common to both staves
global = {
  \key df \major
  \time 3/4
  
  % accidental style default for PianoStaff is "piano"
  \accidentalStyle default
}

scoreAll =  {
    \new PianoStaff {
                                % setup instrument
            \set PianoStaff.midiInstrument = "acoustic grand"

                                % PLAY!
            <<
                \context Staff = "rh" {
                    \global

                                % setup dynamics
                    \override Staff.TextScript.staff-padding = #3
                    \override Staff.DynamicLineSpanner.staff-padding = #3  % (forced-distance - 6) / 2

                                % PLAY RH!
                    \clef treble
                    \secOneRH
                    \secTwoRH
                    \secThreeRH
                    \secFourRH
                    \bar "|."
                }
                \context Staff = "lh" {
                    \global

                                % setup pedals
                    % \set Staff.pedalSustainStyle = #'mixed
                    \override Staff.SustainPedalLineSpanner.staff-padding = #2
                    \override Staff.SustainPedalLineSpanner.padding = #0

                                % PLAY LH!
                    \clef bass
                    \secOneLH
                    \secTwoLH
                    \secThreeLH
                    \secFourLH
                    \bar "|."
                }
            >>
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% MAIN PAPER / MIDI
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\paper {
  system-system-spacing.minimum-distance = #16
}

\score
{
    
    {
        \scoreAll
    }
    \layout {}
                                %     \midi {
                                %         \tempo 4 = 280
                                %         %% Remove the dynamics from the midi output
                                %         \context {
                                %             \Voice
                                %             \remove "Dynamic_performer"
                                %             \remove "Span_dynamic_performer"
                                %         }
                                %     }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% MIDI ONLY ALL REPEATS
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score
{
    {
        \applyMusic #unfold-repeats
        \scoreAll
    }
    \midi {
        \tempo 4 = 280
        %% Remove the dynamics from the midi output
        \context {
            \Voice
            \remove "Dynamic_performer"
        }
    }
}


%{
convert-ly.py (GNU LilyPond) 2.18.2  convert-ly.py: Processing `'...
Applying conversion: 2.3.1, 2.3.2, 2.3.4, 2.3.6, 2.3.8, 2.3.9, 2.3.10,
2.3.11, 2.3.12, 2.3.16, 2.3.17, 2.3.18, 2.3.22, 2.3.23, 2.3.24,
2.3.25, 2.4.0, 2.5.0, 2.5.1, 2.5.2, 2.5.3, 2.5.12, 2.5.13, 2.5.17,
2.5.18, 2.5.21, 2.5.25, 2.6.0, 2.7.0, 2.7.1, 2.7.2, 2.7.4, 2.7.6,
2.7.10, 2.7.11, 2.7.12, 2.7.13, 2.7.14, 2.7.15, 2.7.22, 2.7.24,
2.7.28, 2.7.29, 2.7.30, 2.7.31, 2.7.32, 2.7.32, 2.7.36, 2.7.40, 2.9.4,
2.9.6, 2.9.9, 2.9.11, 2.9.13, 2.9.16, 2.9.19, 2.10.0, 2.11.2, 2.11.3,
2.11.5, 2.11.6, 2.11.10, 

Span_dynamic_performer has been merged into
Dynamic_performer

2.11.11, 2.11.13, 2.11.15,  

Not smart enough to
convert VerticalAlignment #'forced-distance. Use the `alignment-
offsets' sub-property of NonMusicalPaperColumn #'line-break-system-
details to set fixed distances between staves. 

2.11.23, 2.11.35,
2.11.38, 2.11.46, 2.11.48, 2.11.50, 2.11.51, 2.11.52, 2.11.53,
2.11.55, 2.11.57, 2.11.60, 2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3,
2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27,
2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44,
2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16,
2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39,
2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6,
2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25,
2.17.27,  

Not smart enough to convert staff-padding. Staff-padding now
controls the distance to the baseline, not the nearest point.

2.17.29,
2.17.97, 2.18.0
%}
