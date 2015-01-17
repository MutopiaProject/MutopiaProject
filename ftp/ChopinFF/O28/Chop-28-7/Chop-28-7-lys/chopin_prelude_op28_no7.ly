\version "2.18.2"


                                %                 "PRELUDE Op28 No7"
                                %                 by Frederic Chopin
                                %
                                %    Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"
\include "paper-defs.ily"

paperOFF = { \set Score.skipTypesetting = ##t }
paperON = { \set Score.skipTypesetting = ##f }

playRH =  \relative e' {
    \clef treble
    \key a \major
    \time 3/4

                                % Phrase 1 ( 0 - 2 )
    \tempo "Andantino"
    \partial 4
    e4\( | cs'8. d16 <b gs d>4 <b gs d> | <b gs d>2 \)

                                % Phrase 2 ( 2 - 4 )
    <d fs>4^\( | <bs ds>8. <cs e>16 <cs a'>4 <cs a'> | <cs a'>2 \)

                                % Phrase 3 ( 4 - 6 )
    <<
        { <cs e,>4^\( | s4 <d fs,>4 <d fs,> | <d fs,>2\) } \\
        { s4 | \stemUp <as cs,>8. <b d,>16~ \stemDown d,2~ | d }
    >>

                                % Phrase 4 ( 6 - 8 )
    <d gs>4^\( | <d gs>8. <cs a'>16 <cs cs'>4 <cs cs'> | <cs cs'>2 \)

                                % Phrase 5 ( 8 - 10 )
    <<
        { s4 | cs'8. d16 s4 s | s2 } \\
        {
            %\attach #'(stem . head)
            \stemUp e,4\(~ | \stemDown <e gs>4 \stemUp <d gs b>4 <d gs b> |  <d gs b>2 \)
        }
    >>

                                % Phrase 6 ( 10 - 12 )
    <<
        {
            \stemDown <d' fs>4^\( |  s4 <a' cs> <a cs> |
                       \stemDown\arpeggioBracket
                       \set fingeringOrientations = #'(left)
                       \once\override Fingering.extra-offset = #'(0.4 . -0.5)
                       <as, cs-1>2\)\arpeggio
                       %<as, cs-1 e as cs>2\)\arpeggio %fixes collision; stretches bracket
        } \\
        {
					   \override NoteColumn.ignore-collision = ##t %Better solution?
            s4 | <bs ds>8. <cs e>16~ <cs e>2 | <e as cs>2
            %s4 | <bs ds>8. <cs e>16~ <cs e>2 | s2	%ditto
        }
    >>

                                % Phrase 7 ( 12 - 14 )
    <as, cs>4\( |  <as cs>8. <b d>16 <b fs'>4 <a fs'> | <gs fs'>2 \)

                                % Phrase 8 ( 14 - 16 )
    <<
        { <d gs>4\( | <d b'>8. <cs a'>16 <cs' a'>4 <cs a'> | <cs a'>2 \) } \\
        { s4 | s \acciaccatura a8 a2~ | a2 } % [mils] expect clashing notecolumns
    >>
    r4
}


playLH =  \relative e, {
    \clef bass
    \key a \major
    \time 3/4

                                % 0
    \partial 4 r4\p |

                                % 1 - 4
    e4^\markup{\italic "dolce e semplice"}\sustainOn <e' e'> <e e'> | <e e'>2 r4\sustainOff |
    a,4\sustainOn <a' e'> <a e'> | <a e'>2 r4\sustainOff |

                                % 5 - 8
    e,4\sustainOn  <e' b'><e b'> | <e b'>2 r4\sustainOff |
    a,,4\sustainOn  <e'' a e'><e a e'> | <e a e'>2 r4\sustainOff |

                                % 9 - 12
    e,4\sustainOn <e' e'><e e'> | <e e'>2 r4\sustainOff |
    a,4\sustainOn \< <a' e' a><a e' a>\sustainOff | <fs cs' e fs>2\sustainOn\! r4\sustainOff |

                                % 13 - 16
    b,,4\sustainOn <fs'' d'> <fs b d>\sustainOff | <e b' d>2\sustainOn r4\sustainOff |
    a,,4\sustainOn <e'' a e'> <a e'> | <a e'>2 r4\sustainOff |
}



scoreAll =  {
  \new PianoStaff
  %\with { \remove Span_bar_engraver }	%fix collisions
  {
        \set PianoStaff.midiInstrument = "acoustic grand"
        <<
            \context Staff = "rh" {
                \accidentalStyle modern-cautionary
                \playRH
                \bar "|."
            }
            \context Staff = "lh" {
                \accidentalStyle modern-cautionary
                %\override Staff.TextScript.staff-padding = #3
                %\override Staff.DynamicLineSpanner.staff-padding = #3  % (forced-distance - 6) / 2
                \override Staff.DynamicLineSpanner.direction = #1      % 1 up, -1 down
                \set Staff.pedalSustainStyle = #'text
                %% \override Staff.PianoPedalBracket.shorten-pair = #'(0 . -1.0)
                \playLH
                \bar "|."
            }
        >>
    }
}


\score
{
    {
        \scoreAll
    }
    \layout {
      \context {
        \Score
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      }
    }
    \midi {
        \tempo 4 = 120
    }
}
