\version "2.2.2"


                                % "VALSE Op64 No1"
                                % 'Minute Waltz'
                                % by Frederic Chopin
                                %
                                % Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"

paperOFF = \notes{ \set Score.skipTypesetting = ##t }
paperON = \notes{ \set Score.skipTypesetting = ##f }

myBreak = {} % \notes { \break }
barRest = \notes { s1*3/4 }

%% Change to staff LH/RH
cslh = { \change Staff = "lh" }
csrh = { \change Staff = "rh" }

%% hide notes (once)
ohn = {
    \once\override NoteHead #'transparent = ##t
    \once\override Stem #'transparent = ##t
    \once\override Beam #'transparent = ##t
}

%% simpler sustain commands
sd  = \notes { s8\sustainDown }
su  = \notes { s8\sustainUp }
sud = \notes { s8\sustainUp\sustainDown }
sbar = \notes { s8\sustainDown s s s s s\sustainUp }

\include "sec1.ly"
\include "sec2.ly"
\include "sec3.ly"
\include "sec4.ly"


scoreAll = \notes {
    \new PianoStaff {
                                % setup instrument
            \set PianoStaff.midiInstrument = "acoustic grand"


                                % gap between staves -- default 12
            %% \override PianoStaff.VerticalAlignment #'forced-distance = #14

                                % PLAY!
            <<
                \context Staff = "rh" {
                                % setup accidentals
                    #(set-accidental-style 'piano)
                    \override Accidental #'cautionary-style = #'normalsize     % [mils] this is probably wrong

                                % setup dynamics
                    \override Staff.TextScript #'staff-padding = #3
                    \override Staff.DynamicLineSpanner #'staff-padding = #3  % (forced-distance - 6) / 2

                                % PLAY RH!
                    \time 3/4
                    \clef treble
                    \key df \major

                    \secOneRH
                    \secTwoRH
                    \secThreeRH
                    \secFourRH
                    \bar "|."
                }
                \context Staff = "lh" {
                                % setup accidentals
                    #(set-accidental-style 'piano)
                    \override Accidental #'cautionary-style = #'normalsize     % [mils] this is probably wrong

                                % setup dynamics
                    % \override Staff.TextScript #'staff-padding = #3
                    % \override Staff.DynamicLineSpanner #'staff-padding = #3  % (forced-distance - 6) / 2

                                % setup pedals
                    % \set Staff.pedalSustainStyle = #'mixed
                    \override Staff.SustainPedalLineSpanner #'staff-padding = #2
                    \override Staff.SustainPedalLineSpanner #'padding = #0

                                % PLAY LH!
                    \time 3/4
                    \clef bass
                    \key df \major

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
\score
{
    \notes
    {
        \scoreAll
    }
    \paper {}
                                %     \midi {
                                %         \tempo 4 = 280
                                %         %% Remove the dynamics from the midi output
                                %         \context {
                                %             \VoiceContext
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
    \notes
    {
        \apply #unfold-repeats
        \scoreAll
    }
    \midi {
        \tempo 4 = 280
        %% Remove the dynamics from the midi output
        \context {
            \VoiceContext
            \remove "Dynamic_performer"
            \remove "Span_dynamic_performer"
        }
    }
}
