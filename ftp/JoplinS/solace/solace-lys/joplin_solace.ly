\version "2.19.15"


                                %                   "SOLACE"
                                %                by SCOTT JOPLIN
                                %
                                %  Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"

barRest =  {\skip 2 |}

myBreak =  {} % ... { \break }
myMark =  {} %... {\mark\default}
paperOFF = { \set Score.skipTypesetting = ##t }
paperON = { \set Score.skipTypesetting = ##f }

%% Change staff
csrh = { \change Staff = "rh" }
cslh = { \change Staff = "lh" }

ohs = { \once\override Stem.transparent = ##t }
ohh = { \once\override NoteHead.transparent = ##t }

\include "intro.ly"
\include "partOne.ly"
\include "partTwo.ly"
\include "partThree.ly"
\include "partFour.ly"
\include "partFive.ly"


scoreAll =  {
    \new PianoStaff {
        \set PianoStaff.midiInstrument = "honky-tonk"
        \override PianoStaff.NoteCollision.merge-differently-dotted = ##t
        <<
            \new Staff = "rh" {
                \accidentalStyle default
                \myMark \introRH \break
                \myMark \partOneRH
                \myMark \partTwoRH
                \myMark \partThreeRH
                \myMark \partFourRH
                \myMark \partFiveRH
            }
            \new Staff = "lh" {
                \accidentalStyle default
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

\score {
  \scoreAll
  \layout {}
}


                                % ALL REPEATS, MIDI ONLY
\score
{

    {
        \applyMusic #unfold-repeats
        \scoreAll
    }
    \midi {
        \tempo 4 = 72
        \context {
            \Voice
            \remove "Dynamic_performer"
        }
    }
}
