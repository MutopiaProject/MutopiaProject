\version "2.2.2"


                                %                 "PRELUDE Op28 No7"
                                %                 by Frederic Chopin
                                %
                                %    Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"

paperOFF = \notes{ \set Score.skipTypesetting = ##t }
paperON = \notes{ \set Score.skipTypesetting = ##f }

barRest = \notes { s1*3/4 }


playRH = \notes \relative e' {
    \clef treble
    \key a \major
    \time 3/4

    \partial 4

                                % Phrase 1 ( 0 - 2 )
    \once\override TextScript #'extra-offset = #'(-3.5 . 1.5)
    e4\(^\markup{\bold\large Andantino} | cs'8. d16 <b gs d>4 <b gs d> | <b gs d>2 \)

                                % Phrase 2 ( 2 - 4 )
    <d fs>4^\( | <bs ds>8. <cs e>16 <cs a'>4 <cs a'> | <cs a'>2 \)

                                % Phrase 3 ( 4 - 6 )
    <<
        {
            \once\override Staff.PhrasingSlur  #'attachment  = #'(stem . head)
            <cs e,>4^\( | s4 <d fs,>4 <d fs,> | <d fs,>2\)
        } \\
        { s4 | \stemUp <as cs,>8. <b d,>16~ \stemBoth d,2~ | d }
    >>

                                % Phrase 4 ( 6 - 8 )
    \once\override Staff.PhrasingSlur  #'attachment  = #'(stem . head)
    <d gs>4^\( | <d gs>8. <cs a'>16 <cs cs'>4 <cs cs'> | <cs cs'>2 \)

                                % Phrase 5 ( 8 - 10 )
    <<
        { s4 | cs'8. d16 s4 s | s2 } \\
        {
            \once\override Staff.PhrasingSlur  #'attachment  = #'(stem . stem)
            \stemUp e,4\(~ | \stemDown <e gs>4 \stemUp <d gs b>4 <d gs b> |  <d gs b>2 \)
        }
    >>

                                % Phrase 6 ( 10 - 12 )
    <<
        {
            <d' fs>4^\( |  s4 <a' cs> <a cs> |
                       \stemDown\arpeggioBracket
                       \set fingeringOrientations = #'(left)
                       \once\override Fingering #'extra-offset = #'(0.4 . -0.5)
                       <as, cs-1>2\)\arpeggio
        } \\
        {
            s4 | <bs ds>8. <cs e>16~ <cs e>2 | <e as cs>2
        }
    >>

                                % Phrase 7 ( 12 - 14 )
    <as, cs>4\( |  <as cs>8. <b d>16 <b fs'>4 <a fs'> | <gs fs'>2 \)

                                % Phrase 8 ( 14 - 16 )
    <<
        {
            \once\override Staff.PhrasingSlur  #'attachment  = #'(stem . head)
            <d gs>4\( | <d b'>8. <cs a'>16 <cs' a'>4 <cs a'> | \stemDown <cs a'>2 \)
        } \\
        { s4 | s \acciaccatura a8 a2~ | a2 } % [mils] expect clashing notecolumns
    >>
    r4
}





playLH = \notes \relative e, {
    \clef bass
    \key a \major
    \time 3/4

                                % 0
    \partial 4 r4^\markup{\dynamic p \italic "dolce e semplice"} |

                                % 1 - 4
    e4\sustainDown <e' e'>\sustainUp\sustainDown <e e'> | <e e'>2 r4\sustainUp |
    a,4\sustainDown <a' e'>\sustainUp\sustainDown <a e'> | <a e'>2 r4\sustainUp |
    \break

                                % 5 - 8
    e,4\sustainDown <e' b'>\sustainUp\sustainDown <e b'> | <e b'>2 r4\sustainUp |
    a,,4\sustainDown <e'' a e'>\sustainUp\sustainDown <e a e'> | <e a e'>2 r4\sustainUp |

                                % 9 - 12
    e,4\sustainDown <e' e'>\sustainUp\sustainDown <e e'> | <e e'>2 r4\sustainUp |
    a,4\sustainDown\< <a' e' a>\sustainUp\sustainDown <a e' a> | <fs cs' e fs>2\sustainUp\sustainDown\! r4\sustainUp |

                                % 13 - 16
    b,,4\sustainDown <fs'' d'>\sustainUp\sustainDown <fs b d> | <e b' d>2\sustainUp\sustainDown r4\sustainUp |
    a,,4\sustainDown <e'' a e'>\sustainUp\sustainDown <a e'> | <a e'>2 r4\sustainUp |
}



scoreAll = \notes {
    \new PianoStaff {
        %% \override PianoStaff.VerticalAlignment #'forced-distance = #14  % gap between staves -- default 12
        \set PianoStaff.midiInstrument = "acoustic grand"
        <<
            \context Staff = "rh" {
                #(set-accidental-style 'modern-cautionary)
                \playRH
                \bar "|."
            }
            \context Staff = "lh" {
                #(set-accidental-style 'modern-cautionary)
                \override Staff.TextScript #'staff-padding = #3
                \override Staff.DynamicLineSpanner #'staff-padding = #3  % (forced-distance - 6) / 2
                \override Staff.DynamicLineSpanner #'direction = #1      % 1 up, -1 down
                \set Staff.pedalSustainStyle = #'bracket
                %% \override Staff.PianoPedalBracket  #'shorten-pair = #'(0 . -1.0)
                \playLH
                \bar "|."
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
    \paper {}
    \midi {
        \tempo 4 = 120
        %% Remove the dynamics from the midi output
        \context {
            \VoiceContext
            \remove "Dynamic_performer"
            \remove "Span_dynamic_performer"
        }
    }
}




