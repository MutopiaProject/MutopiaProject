\version "2.18.2"

                    %                 "PRELUDE Op28 No15"
                    %                 by Frederic Chopin
                    %
                    %    Please see "header.ly" for more information

%#(set-default-paper-size "letter")

\include "english.ly"
\include "header.ly"

\include "defs.ly"

\include "sec1.ly"
\include "sec2.ly"
\include "sec3.ly"

playRH =  {
                                % section 1
    <<
        \sIrh
        \sIdyn
    >>
    \bar "||"
                                % section 2
    <<
        \sIIrh
        \sIIdyn
    >>
    \bar "||"
                                % section 3
    <<
        \sIIIrh
        \sIIIdyn
    >>
    \bar "|."
}


playLH =  {
                                % section 1
    <<
        \sIlh
        \sIsustain
    >>
    \bar "||"

                                % section 2
    <<
        \sIIlh
        \sIIsustain
    >>
    \bar "||"

                                % section 3
    <<
        \sIIIlh
        \sIIIsustain
    >>
    \bar "|."
}

playNull =  {
     \sInull
     \sIInull
     \sIIInull
}

scoreAll =  {
    \new PianoStaff {
                                % setup instrument
        \set PianoStaff.midiInstrument = "acoustic grand"

                                % PLAY!
        <<
            \context Staff = "rh" {
                                % setup dynamics
                \override Staff.TextScript.staff-padding = #3
                \override Staff.DynamicLineSpanner.staff-padding = #3  % (forced-distance - 6) / 2
                \accidentalStyle Score.modern-cautionary

                                % PLAY RH!
                <<
                    \playRH
                    \playNull
                >>
            }
            \context Staff = "lh" {
                                % setup pedals
                \set Staff.pedalSustainStyle = #'bracket
                \accidentalStyle Score.modern-cautionary

                                % setup dynamics
                \override Staff.TextScript.staff-padding = #3
                \override Staff.DynamicLineSpanner.staff-padding = #3  % (forced-distance - 6) / 2

                                % PLAY LH!
                <<
                    \playLH
                    \playNull
                >>
            }
        >>
    }
}

%%%
%%% MAIN PAPER / MIDI
%%%
\score
{
     { \scoreAll }
    \layout {
        \context {
            \PianoStaff
            \override StaffGrouper.staff-staff-spacing.minimum-distance = #12.2
        }

    }
    \midi {
        \tempo 4 = 80
        %% Remove the dynamics from the midi output
        \context {
            \Voice
            \remove "Dynamic_performer"
        }
    }
}