\version "2.2.2"


                                %                 "PRELUDE Op28 No4"
                                %                 by Frederic Chopin
                                %
                                %    Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"

barRest = \notes {\skip 2 |}

paperOFF = \notes{ \set Score.skipTypesetting = ##t }
paperON = \notes{ \set Score.skipTypesetting = ##f }

playRH = \notes \relative c' {
    \clef treble
    \time 2/2
    \key e \minor

                                % 0
    \phrasingSlurUp
    \partial 4 b8.\(\p b'16_\markup{\italic espressivo} |

                                % 1 - 4
    b2. c4 |
    b2. c4 |
    b2. c4 |
    b2. bf4 |

                                % 5 - 8
    a2. b4 |
    a2. b4 |
    a2. b8. a16 |
    a2.\)
    \once \override PhrasingSlur #'attachment = #'(stem . stem)
    gs4->\(~ |

                                % 9 - 12
    gs4 << {a8 b} \\
           {s32\< s s s s s s s\!} >> d8\> c e, a\! |           %% double voice to give hairpin a nicer length
    fs2.\) a4( |
    fs2.) \acciaccatura b8 a4_\( |
    g8 fs c\<-> b ds fs\! \times 2/3 {d'\> c b\!} |

                                % 13 - 15
    b2.\p\)\( c4 |
    b2. c4 |
    b2. c4 |
                                % 16 - 20
    << {  b8. as16 as4 } \\
       { s16\< s s s s s\! s s } >>  gss'4\turn\> fs8. e16\! |  %% double voice to give hairpin a nicer length
    \once\override Staff.Hairpin #'extra-offset = #'(0 . 2.5)
    e8\f\< ds c' ds,\! ds\> e g b, |
    \stemUp
    d c \times 2/3 {e e, a\! } fs4._\markup{\italic dim.} a8 |
    \stemBoth
    fs2.\p\) \acciaccatura b8 a4\( |
    fs2.~ fs8.\< e16\! |

                                % 21 - 23
    e2._\markup{\italic smorz.}\> fs4 |
    e2.\! fs4 |
    e2\) r\fermata |

                                % 24 - 25
%{
    %% Can't be bothered trying to switch staffs -- we'll play these in the LH voice...
    <e, fs b e>2 <ds fs b ds> |
    <e g b e>1 |
%}
    \once\override Staff.DynamicText #'extra-offset = #'(0 . 2)
    s1\pp |
    s1 |
    \bar "|."
}


playLH = \notes \relative c' {
    \clef bass
    \time 2/2
    \key e \minor
                                % 0
    \partial 4 r4 |

                                % 1 - 4
    <g b e>8\sustainDown\( <g b e>8 <g b e>8 <g b e>8 <g b e>8 <g b e>8 <g b e>8\sustainUp <g b e>8 |
    <fs a e'>\sustainDown <fs a e'> <fs a e'> <fs a e'>\sustainUp <fs a ds>\sustainDown <fs a ds> <fs a ds> <fs a ds>\sustainUp |
    <f a ds>\sustainDown <f a ds> <f a ds> <f a ds>\sustainUp <f a d> <f a d> <f gs d'> <f gs d'> |
    <e gs d'>\sustainDown <e gs d'> <e gs d'> <e gs d'>\sustainUp <e g d'> <e g d'> <e g cs> <e g cs> |

                                % 5 - 8
    <e g c>\sustainDown <e g c> <e g c> <e g c>\sustainUp <e fs c'> <e fs c'> <e fs c'> <e fs c'> |
    <e fs c'>\sustainDown <e fs c'> <e fs c'> <e fs c'>\sustainUp <ds fs c'>\sustainDown <ds fs c'> <ds fs c'> <ds fs c'>\sustainUp |
    <d fs c'>\sustainDown <d fs c'> <d fs c'> <d fs c'> <d fs c'> <d fs c'> <d fs c'>\sustainUp <d fs c'> |
    <d f c'>\sustainDown <d f c'> <d f c'> <d f c'>\sustainUp <d f b> <d f b> <d f b> <d f b> |

                                % 9 - 12
    <c e b'> <c e b'> <c e a> <c e a> <c e a> <c e a> <c e a> <c e a> |
    <b e a> <b e a> <b ds a'> <b ds a'> <c e a>\sustainDown <c e a> <c e a> <c e a>\sustainUp |
    <b ds a'>\sustainDown <b ds a'> <b ds a'> <b ds a'>\sustainUp <c e a>\sustainDown <c e a> <c e a> <c e a>\sustainUp |
    <b ds a'>4\) r r2 |

                                % 13 - 16
    <g' b e>8\sustainDown\( <g b e>8 <g b e>8 <g b e>8 <g b e>8 <g b e>8 <g b e>8\sustainUp <g b e>8 |
    <fs a e'>\sustainDown <fs a e'> <fs a e'> <fs a e'>\sustainUp <f a ds>\sustainDown <f a ds> <f a ds> <f a ds>\sustainUp |
    <f gs ds'> <f gs ds'> <f gs d'> <f gs d'> <e gs d'>\sustainDown <e gs d'> <e gs d'> <e gs d'>\sustainUp |
    <e g d'> <e g d'> <e g cs> <e g cs> <cs e as> <cs e as> <c e a> <c e a> |

                                % 17 - 20
    <b, b'>\)\sustainDown <a'' c fs a>_\( <a c fs a> <a c fs a>\sustainUp <g b ds fs> <g b e> <g b e> <g b e> |
    \override Staff.PianoPedalBracket  #'shorten-pair = #'(0 . -2.0)
    <a c e> <a c e> a,\sustainDown <e' fs c'>\sustainUp <b e b'> <b e b'> <c e a> <c e a> |
    \revert Staff.PianoPedalBracket  #'shorten-pair
    <b e b'>\sustainDown <b e b'> <b e b'> <b e b'>\sustainUp <c e a> <c e a> <c e a> <c e a> |
    <b e b'>\sustainDown <b e b'> <b e b'> <b e b'>\sustainUp <b ds b'>\sustainDown <b ds b'> <b ds a'> <b ds a'>\sustainUp |

                                % 21 - 23
    <c g'>\sustainDown <c g'> <c g'> <c g'> <c bf'> <c bf'> <c e a>\sustainUp <c e a> |
    <b e a> <b e a> <b e gs> <b e gs> <b e g>\sustainDown <b e g> <b e g> <b e g>\sustainUp |
    <as c g'>2\) r\fermata |

                                % 24 - 25
    <<
        \relative e {<e fs b e>2( <ds fs b ds> | <e g b e>1\fermata) | } \\
        \relative b,, { <b b'>2( <b b'> | <e, e'>1)\fermata | }
    >>
}

superMarks = \notes {
    \partial 4 s4^\markup{\center-align < {\bold\large Largo} {" "} > } |
    \repeat unfold 15 { s1 }
    \set decrescendoText = \markup { \italic "stretto" }
    \set decrescendoSpanner = #'dashed-line
    s4 s s^\> s |
    s s s s |
    s s s\! s |
}


scoreAll = \notes {
    \new PianoStaff {
%        \override PianoStaff.VerticalAlignment #'forced-distance = #14  % gap between staves -- default 12
        \set PianoStaff.midiInstrument = "acoustic grand"
        <<
            \context Staff = "rh" {
%                #(set-accidental-style 'modern)
                \override Staff.TextScript #'staff-padding = #2
                \override Staff.DynamicLineSpanner #'staff-padding = #3  % (forced-distance - 6) / 2
                \override Staff.Hairpin #'minimum-length = #3
                <<
                    \playRH
                    \superMarks
                >>
            }
            \context Staff = "lh" {
%                #(set-accidental-style 'modern)
                \set Staff.pedalSustainStyle = #'bracket
                \override Staff.PianoPedalBracket  #'shorten-pair = #'(0 . -1.0)

                \playLH
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
    \midi {
        \tempo 4 = 72
        %% Remove the dynamics from the midi output
        \context {
            \VoiceContext
            \remove "Dynamic_performer"
            \remove "Span_dynamic_performer"
        }
    }
}




