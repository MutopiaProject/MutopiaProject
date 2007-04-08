\version "2.2.2"


                                %                   "SOLACE"
                                %                by SCOTT JOPLIN
                                %
                                %  Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"

barRest = \notes {\skip 2 |}

myBreak = \notes { \break }
myMark = \notes {} %\notes{\mark\default}
paperOFF = \notes{ \set Score.skipTypesetting = ##t }
paperON = \notes{ \set Score.skipTypesetting = ##f }

%% Change staff
csrh = { \change Staff = "rh" }
cslh = { \change Staff = "lh" }

ohs = { \once\override Stem #'transparent = ##t }
ohh = { \once\override NoteHead #'transparent = ##t }

\include "intro.ly"
\include "partOne.ly"
\include "partTwo.ly"
\include "partThree.ly"
\include "partFour.ly"
\include "partFive.ly"



scoreAll = \notes {
    \new PianoStaff {
        \override PianoStaff.VerticalAlignment #'forced-distance = #14  % gap between staves -- default 12
        \set PianoStaff.midiInstrument = "honky-tonk"
        \override PianoStaff.NoteCollision #'merge-differently-dotted = ##t
        <<
            \context Staff = "rh" {
                #(set-accidental-style 'default)
                %%\override Staff.Accidental  #'cautionary-style = #'smaller % doesn't work
                \override Staff.TextScript #'staff-padding = #2
                \override Staff.DynamicLineSpanner #'staff-padding = #3.5  % (forced-distance - 6) / 2 (roughly)
                \myMark \introRH
                \myMark \partOneRH
                \myMark \partTwoRH
                \myMark \partThreeRH
                \myMark \partFourRH
                \myMark \partFiveRH
            }
            \context Staff = "lh" {
                #(set-accidental-style 'default)
                %%\override Staff.Accidental  #'cautionary-style = #'smaller % doesn't work
                \introLH
                \partOneLH
                \partTwoLH
                \partThreeLH
                \partFourLH
                \partFiveLH
            }
        >>
    }
}

\score
{
    \notes
    {
        \scoreAll
    }
    \paper {    }
%     \midi {
%         \tempo 4 = 72 %% correct
%         %% Remove the dynamics from the midi output
%         \context {
%             \VoiceContext
%             \remove "Dynamic_performer"
%             \remove "Span_dynamic_performer"
%         }
%     }
}





                                % ALL REPEATS, MIDI ONLY
\score
{
    \notes
    {
        \apply #unfold-repeats
        \scoreAll
    }
    \midi {
        \tempo 4 = 72
        \context {
            \VoiceContext
            \remove "Dynamic_performer"
            \remove "Span_dynamic_performer"
        }
    }
}

