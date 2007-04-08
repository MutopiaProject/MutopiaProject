\version "2.2.2"


                                %                   "BETHENA"
                                %                by SCOTT JOPLIN
                                %
                                %  Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"

barRest = \notes {\skip 1*3/4}
tenuto = \markup{\italic ten.}

paperOFF = \notes{ \set Score.skipTypesetting = ##t }
paperON = \notes{ \set Score.skipTypesetting = ##f }

\include "intro.ly"
\include "partOne.ly"
\include "partTwo.ly"
\include "partThree.ly"
\include "partFour.ly"
\include "partFive.ly"
\include "partSix.ly"
\include "partSeven.ly"
\include "outro.ly"

playSilent = \notes {
                                % 1-8
    \introSilent      \bar "||" \break

                                % 9-24
    \partOneSilent    \bar "||" \break
                                % 25-28
    \segueOneSilent

                                % 29-45
    \partTwoSilent
                                % 46-52
    \segueTwoSilent   \bar "||" \break

                                % 53-68
    \partThreeSilent  \bar "||" \break
                                % 69-76
    \segueThreeSilent  \bar "||" \break

                                % 77-97
    \partFourSilent   \bar "||" \break
                                % 98- 101
    \segueFourSilent  \bar "||" \break

                                % 102-118
    \partFiveSilent

                                % 119-135
    \partSixSilent
                                % 136-140
    \segueSixSilent   \bar "||" \break

                                % 141-155
    \partSevenSilent
                                % 156-164
    \outroSilent

                                % Place a closing fermata over the final bar line
    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Score.RehearsalMark #'self-alignment-X = #1
    \mark \markup { \musicglyph #"scripts-ufermata" }

    \bar "|."
}

playSuper = \notes {
    \introSuper
    \partOneSuper
    \segueOneSuper
    \partTwoSuper
    \segueTwoSuper
    \partThreeSuper
    \segueThreeSuper
    \partFourSuper
    \segueFourSuper
    \partFiveSuper
    \partSixSuper
    \segueSixSuper
    \partSevenSuper
    \outroSuper
}

playRH = \notes {
    \time 3/4
    \key g \major
    \clef treble
    \introRH
    \partOneRH
    \segueOneRH
    \key bf \major
    \partTwoRH
    \segueTwoRH
    \key g \major
    \partThreeRH
    \segueThreeRH
    \key f \major
    \partFourRH
    \segueFourRH
    \key d \major
    \partFiveRH
    \partSixRH
    \segueSixRH
    \key g \major
    \partSevenRH
    \outroRH
}

playDynamics = \notes {
    \introDynamics
    \partOneDynamics
    \segueOneDynamics
    \partTwoDynamics
    \segueTwoDynamics
    \partThreeDynamics
    \segueThreeDynamics
    \partFourDynamics
    \segueFourDynamics
    \partFiveDynamics
    \partSixDynamics
    \segueSixDynamics
    \partSevenDynamics
    \outroDynamics
}

playLH = \notes {
    \time 3/4
    \key g \major
    \clef bass
    \introLH
    \partOneLH
    \segueOneLH
    \key bf \major
    \partTwoLH
    \segueTwoLH
    \key g \major
    \partThreeLH
    \segueThreeLH
    \key f \major
    \partFourLH
    \segueFourLH
    \key d \major
    \partFiveLH
    \partSixLH
    \segueSixLH
    \key g \major
    \partSevenLH
    \outroLH
}

playSub = \notes {
    \introSub
    \partOneSub
    \segueOneSub
    \partTwoSub
    \segueTwoSub
    \partThreeSub
    \segueThreeSub
    \partFourSub
    \segueFourSub
    \partFiveSub
    \partSixSub
    \segueSixSub
    \partSevenSub
    \outroSub
}

scoreSuper = \notes {
    \context Dynamics = "super" {
        <<
            \playSilent
            \playSuper
        >>
    }
}

scoreRH = \notes {
    \context Staff = "rh" {
        <<
            \playSilent
%%%            \playSuper
            \playRH
        >>
    }
}

scoreDynamics = \notes {
    \context Dynamics = "dyn" {
        <<
            \playSilent
            \playDynamics
        >>
    }
}

scoreLH = \notes {
    \context Staff = "lh" {
        \set Staff.pedalSustainStyle = #'mixed
        <<
            \playSilent
            \playLH
%%%            \playSub
        >>
    }
}

scoreSub = \notes {
    \context Dynamics = "sub" {
        <<
            \playSilent
            \playSub
        >>
    }
}

scoreAll = \notes {
    \new PianoStaff {
        \set PianoStaff.midiInstrument = "honky-tonk"
        %% \set PianoStaff.followVoice = ##t
        \set PianoStaff.connectArpeggios = ##t
        %% #(set-accidental-style 'piano)
        <<
            \scoreSuper
            \scoreRH
            \scoreDynamics
            \scoreLH
            \scoreSub
        >>
    }
}

                                % PAPER ONLY, NO MIDI
\score
{
    \notes
    {
        \scoreAll
    }
    \paper {
        \context {
            \type "Engraver_group_engraver"
            \name Dynamics
            \alias Voice % So that \cresc works, for example.
            \consists "Output_property_engraver"

            minimumVerticalExtent = #'(-1 . 1)
                                %            pedalSustainStrings = #'("Ped." "*Ped." "*")
                                %            pedalUnaCordaStrings = #'("una corda" "" "tre corde")

            \consists "Piano_pedal_engraver"
            \consists "Script_engraver"
            \consists "Dynamic_engraver"
            \consists "Text_engraver"

                                %
                                % position the supertext (text markup allegro etc)
                                %
                                % Note: extra offset 2nd value +ve up -ve down
                                %
            \override TextScript #'font-size = #2
            %% \override TextScript #'font-shape = #'italic
            \override TextScript #'font-series = #'bold
            %% \override TextScript #'extra-offset = #'(0 . -2.5)
            \override TextScript #'extra-offset = #'(0 . -3)

                                %
                                % position the dynamics
                                %
            \override DynamicText #'extra-offset = #'(0 . 2.5)
            \override Hairpin #'extra-offset = #'(0 . 2.2)

                                %
                                % postion the subtext (pedal marks)
                                %
            %% pedalSustainStyle = #'mixed  %% hmm can't seem to use mixed pedal style...
            \override SustainPedal #'extra-offset = #'(0 . 1)
            \override PianoPedalBracket #'extra-offset = #'(0 . 1)


            \consists "Skip_event_swallow_translator"
            \consistsend "Axis_group_engraver"
        }
        \context {
            \PianoStaffContext
            \accepts Dynamics
            \override VerticalAlignment #'forced-distance = #6
                                % if this #7 is changed, change the extra-offsets of the super and sub marks
        }
    }
}



                                % ALL REPEATS, MIDI ONLY
\score
{
    \notes
    {
        \apply #unfold-repeats
        \scoreAll
    }
    \midi{
        \tempo 4=150
        \context {
            \type "Performer_group_performer"
            \name Dynamics
            \consists "Piano_pedal_performer"
            \consists "Span_dynamic_performer"
            \consists "Dynamic_performer"
        }
        \context {
            \PianoStaffContext
            \accepts Dynamics
        }
    }
}

