\version "2.18.2"


                                %                   "BETHENA"
                                %                by SCOTT JOPLIN
                                %
                                %  Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"

barRest =  { \skip 1*3/4 }
tenuto = \markup { \italic ten. }

paperOFF = { \set Score.skipTypesetting = ##t }
paperON = { \set Score.skipTypesetting = ##f }

\include "intro.ly"
\include "partOne.ly"
\include "partTwo.ly"
\include "partThree.ly"
\include "partFour.ly"
\include "partFive.ly"
\include "partSix.ly"
\include "partSeven.ly"
\include "outro.ly"

playSilent =  {
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
    \once \override Score.RehearsalMark.self-alignment-X = #0.5
    \once \override Score.RehearsalMark.Y-offset = #-3.5
    \once \override Score.RehearsalMark.outside-staff-priority = #100
    \mark \markup { \fermata }

    \bar "|."
}

playSuper =  {
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

playRH =  {
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

playDynamics =  {
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

playLH =  {
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

playSub =  {
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

scoreSuper =  {
    \new Dynamics = "super" {
        <<
            \playSilent
            \playSuper
        >>
    }
}

scoreRH =  {
    \new Staff = "rh" {
        <<
            \playSilent
%%%            \playSuper
            \playRH
        >>
    }
}

scoreDynamics =  {
    \new Dynamics = "dyn" {
        <<
            \playSilent
            \playDynamics
        >>
    }
}

scoreLH =  {
    \new Staff = "lh" {
        \set Staff.pedalSustainStyle = #'mixed
        <<
            \playSilent
            \playLH
%%%            \playSub
        >>
    }
}

scoreSub =  {
    \new Dynamics = "sub" {
        <<
            \playSilent
            \playSub
        >>
    }
}

scoreAll =  {
    \new PianoStaff {
        \set PianoStaff.midiInstrument = "honky-tonk"
        %% \set PianoStaff.followVoice = ##t
        \set PianoStaff.connectArpeggios = ##t
        %% \accidentalStyle piano
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
\score {
    \scoreAll
    \layout { }
}



                                % ALL REPEATS, MIDI ONLY
\score {
    \unfoldRepeats \scoreAll
    \midi {
        \tempo 4=150
    }
}



%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.3.1, 2.3.2, 2.3.4, 2.3.6, 2.3.8, 2.3.9, 2.3.10,
2.3.11, 2.3.12, 2.3.16, 2.3.17, 2.3.18, 2.3.22, 2.3.23, 2.3.24,
2.3.25, 2.4.0, 2.5.0, 2.5.1, 2.5.2, 2.5.3, 2.5.12, 2.5.13, 2.5.17,
2.5.18, 2.5.21, 2.5.25, 2.6.0, 2.7.0, 2.7.1, 2.7.2, 2.7.4, 2.7.6,
2.7.10, 2.7.11, 2.7.12, 2.7.13, 2.7.14, 2.7.15, 2.7.22, 2.7.24,
2.7.28, 2.7.29, 2.7.30, 2.7.31, 2.7.32, 2.7.32, 2.7.36, 2.7.40, 2.9.4,
2.9.6, 2.9.9, 2.9.11, 2.9.13, 2.9.16, 2.9.19, 2.10.0, 2.11.2, 2.11.3,
2.11.5, 2.11.6, 2.11.10, Span_dynamic_performer has been merged into
Dynamic_performer2.11.11, 2.11.13, 2.11.15,  Not smart enough to
convert VerticalAlignment #'forced-distance. Use the `alignment-
offsets' sub-property of NonMusicalPaperColumn #'line-break-system-
details to set fixed distances between staves. 2.11.23, 2.11.35,
2.11.38, 2.11.46, 2.11.48, 2.11.50, 2.11.51, 2.11.52, 2.11.53,
2.11.55, 2.11.57, 2.11.60, 2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3,
2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27,
2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44,
2.13.46,  Vertical spacing changes might affect user-defined contexts.
Please refer to the manual for details, and update manually. 2.13.48,
2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18,
2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40, 2.15.42,
2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29,
2.17.97, 2.18.0
%}
