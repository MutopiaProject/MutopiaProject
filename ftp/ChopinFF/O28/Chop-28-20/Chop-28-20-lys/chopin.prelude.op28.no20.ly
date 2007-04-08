\version "2.2.2"



                                %                "PRELUDE Op28 No20"
                                %                  Frederic Chopin
                                %
                                %    Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"

paperOFF = \notes{ \set Score.skipTypesetting = ##t }
paperON = \notes{ \set Score.skipTypesetting = ##f }

barRest = \notes { s1 }


playRH = \notes \relative g {
    \clef bass
    \key c \minor
    \time 4/4
                                % 1 - 4
    \once\override PhrasingSlur #'height-limit = #5
    \once\override TextScript #'extra-offset = #'( -4 . 1.5 )
    <g c ef g>4\(^\markup{\bold\large Largo} <af c ef af> << { <ef' g>8. <d f>16 } \\
                                                             { <g, b>4           } >> <ef g c ef>\) |
    \once\override PhrasingSlur #'height-limit = #5
    <ef af c ef>4\( <f af df f> << { <c' ef>8. <bf df>16 } \\
                                   { <df, ef g>4         } >> <c ef af c>4\) |
    \once\override PhrasingSlur #'height-limit = #4
    \once\override PhrasingSlur #'attachment = #'(head . stem)
    <d f b d>4\( <e g bf c e> << { g'8. f16 } \\
                                  { <af, c>4 } >> <g c ef>4 |
    <fs c' d>4 <g b d g>
    \clef treble
    << { b'8. a16   } \\
       { <c, d fs>4 } >> <b d g>4\) |

                                % 5 - 8
    <ef g ef'>4\( <ef af ef'> << { <d d'>4    } \\
                               \once\override NoteColumn  #'force-hshift = #1.5
                               { af'8. fs16 } >> <d g d'>4 |
    <c g' c>4 <c d fs d'> <d g b>8. <c a'>16 <b d g>4 |
    <c g' c>4 <af c af'> << { \stemDown <g d'>4 } \\
                            { \stemUp g'8. f16  } >> <g, c ef>4^\markup{\italic riten.} |
    \clef bass
    <ef af c ef>4 <f af df f> << { ef'8. d16 } \\
                                 { <f, g b>4 } >> <ef g c>4\) |

                                % 9 - 12
    \clef treble
    \once\override TextScript #'extra-offset = #'(0 . 0.5)
    <ef' g ef'>4^\markup{\italic {a tempo}}\( <ef af ef'> << { <d d'>4    } \\
                                \once \override NoteColumn  #'force-hshift = #1.5
                                { af'8. fs16 } >> <d g d'>4 |
    <c g' c>4 <c d fs d'> <d g b>8. <c a'>16 <b d g>4 |
    <c g' c>4 <af c af'> << { \stemDown <g d'>4^\markup{\italic riten.} } \\
                            { \stemUp g'8. f16  } >> <g, c ef>4 |
    \clef bass
    <ef af c ef>4 <f af df f> << { ef'8. d16 } \\
                                 { <f, g b>4 } >> <ef g c>4\) |

                                %13
    \clef treble
    <c' ef g c>1->\fermata
}

playDyn = \notes {
                                % 1 - 4
    s4\ff s s s |
    \barRest |
    s4\< s s s |
    s4 s s\! s |
                                % 5 - 8
    s4\p s s s |
    \barRest |
    \barRest |
    \barRest |
                                % 9 - 12
    s4\pp s s s |
    \barRest |
    \setTextCresc
    \override DynamicLineSpanner #'staff-padding = #5
    s4 s s\< s |
    s s s s\! |

                                % 13
    \barRest |
}

playLH = \notes \relative c, {
    \clef bass
    \key c \minor
    \time 4/4
                                % 1
    <c c'>4\sustainDown
    <f, f'>\sustainUp\sustainDown
    <g g'>\sustainUp\sustainDown
    <c g' c>\sustainUp\sustainDown  |
                                % 2
    <af af'>\sustainUp\sustainDown
    \override TextScript #'extra-offset = #'(0.5 . -0.5)
    <df df,>\sustainUp_\markup{\italic simile}
    \revert TextScript #'extra-offset
    <ef ef,>
    <af af,> |
                                % 3 - 4
    <g g,> <c, c,> <f f,> <c' c,> |
    <d, a' d> <g, g'> <d d'> <g g'> |

                                % 5 - 8
    <c c'>\( <c' c'> <b b'> <bf bf'>  |
    <a a'> <af af'> <g g'> <f f'>  |
    <ef ef'> <f f'> <b, b'> <c c'>  |
    <af af'> <df, df'> <g g'> <c, c'>\)  |

                                % 9 - 12
    <c' c'>\( <c' c'> <b b'> <bf bf'>  |
    <a a'> <af af'> <g g'> <f f'>  |
    <ef ef'> <f f'> <b, b'> <c c'>  |
    \override Staff.PianoPedalBracket #'shorten-pair = #'(0 . -5.0)
    <af af'> <df, df'> <g g'> <c, c'>\)\sustainDown  |

                                % 13
    <c'' g'>1\sustainUp\fermata
}



scoreAll = \notes {
    \new PianoStaff {
        \override PianoStaff.VerticalAlignment #'forced-distance = #13   % gap between staves -- default 12
        \set PianoStaff.midiInstrument = "acoustic grand"
        %% #(set-accidental-style 'piano)
        <<
            \context Staff = "rh" {
                %% \override Staff.TextScript #'staff-padding = #2
                \override Staff.DynamicLineSpanner #'staff-padding = #3.5  % (forced-distance - 6) / 2
                %% \override Staff.Hairpin #'minimum-length = #3
                <<
                    \playRH
                    \playDyn
                >>
                \bar "|."
            }
            \context Staff = "lh" {
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
        \tempo 4 = 50
        %% Remove the dynamics from the midi output
        \context {
            \VoiceContext
            \remove "Dynamic_performer"
            \remove "Span_dynamic_performer"
        }
    }
}




