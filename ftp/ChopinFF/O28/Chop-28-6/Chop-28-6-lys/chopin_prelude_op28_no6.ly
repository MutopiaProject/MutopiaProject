\version "2.2.2"


                                %                 "PRELUDE Op28 No6"
                                %                 by Frederic Chopin
                                %
                                %    Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"

paperOFF = \notes{ \set Score.skipTypesetting = ##t }
paperON = \notes{ \set Score.skipTypesetting = ##f }

myBreak = {} %\notes { \break }
barRest = \notes { s1*3/4 }
trebleQuaverRest = \notes \relative b' { b4\rest }

%% simpler sustain commands
sd  = \notes { \once\override Rest #'transparent = ##t r8\sustainDown }
su  = \notes { \once\override Rest #'transparent = ##t r8\sustainUp }
sud = \notes { \once\override Rest #'transparent = ##t r8\sustainUp\sustainDown }

playRHupper = \notes \relative b' {
    \clef treble
    \key b \minor
    \time 3/4

                                % 1 - 4
    \once\override TextScript #'extra-offset = #'( -3.5 . 1.5 )
    b8^\markup{\bold\large "Assai Lento"}(-> b) b(-> b) b(-> b) |
    \once\override TextScript #'staff-padding = #0
    \once\override TextScript #'extra-offset = #'(-1 . 0)
    b^\markup{\italic (simile) } b b b b b |
    b b d d d d |
    d d d d d d |

                                % 5 - 8
    d d d d d d |
    d d cs cs <cs as>( <d b> |
    e4. fs8 e16 d \acciaccatura d8 cs16 b |
    <as fss cs>8\< <b gs d>\! <d b d,>\> <cs as cs,>)\! \trebleQuaverRest |

                                % 9 - 12
    b8( b) b( b) b( b) | b b b b b b |
    b b b b b b | c c c c c c |

                                % 13 - 16
    c c c c c c | c c c c b b |
    as as as as b b | b b as as b b |

                                % 17 - 20
    b b b b as as | as as b b b b |
    b b as as b b | b b as as b b |

                                % 21 - 24
    b b b b as as | b b b b a(-> a) |
    fs fs fs fs fs fs | fs fs fs fs fs fs |

                                % 25 - 26
    fs fs \trebleQuaverRest fs8( fs | fs fs) \trebleQuaverRest\trebleQuaverRest |
}


playRHlower = \notes \relative fs' {
    \clef treble
    \key b \minor
    \time 3/4

                                % 1 - 4
    <fs d>4_\markup{\dynamic p \italic "sotto voce"} fs fs |
    <fs d> <fs d> <fs d> |
    <fs d> b b |
    <b fs> <b fs> <b fs> |

                                % 5 - 8
    <b g> b b | <b gs> <b gs> g |
    <g as>8 <g b> <g as> <fs cs'> <fs b> fs | \barRest |

                                % 9 - 12
    <fs d>4 fs fs | <fs d> <fs d> <fs d> |
    <g d> g g | g <g e> <g e> |

                                % 13 - 16
    <g e>4 g <g e> | g g g |
    <g cs,>\p <fs cs> <fs d> | <g cs,> <g cs,> <g d> |

                                % 17 - 20
    \once\override TextScript #'extra-offset = #'(0 . 1)
    <g d>4 <fs cs> <e cs> | <e cs> <d b> <g d> |
    <g cs,> <g cs,> <fs d> | <g cs,> <g cs,> <g d> |

                                % 21 - 24
    <g d>4 <fs cs> <fs cs> | <fs d>\pp <fs d> <fs d> |
    d s s| d d d |

                                % 25 - 26
    d s d\ppp | d s s |
}



playLH = \notes \relative b, {
    \clef bass
    \key b \minor
    \time 3/4
                                % 1 - 4
    b16\unaCorda(\< d fs b d4\!_\markup{\italic "molto cantato"} cs8. d16 |
    b4.\> fs8[ d cs])\! |
    b16(\< fs' b d fs4\! e8. fs16 |
    d4.\> b8[ fs d])\! |

                                % 5 - 8
                                % this slur is ugly no matter what...
    g,16_(\< d' b' d g4\! fs | fs\> es\! e8 d |
    cs \acciaccatura e d cs as b d, | e es fs4) d8( cs |

                                % 9 - 12
    b16\< d fs b d4\! cs8. d16 | b4.\> fs8[ d b]\! |
    g16\< d' g b d4 e8 f\! | e4.\> c8[ g c,]\!) |

                                % 13 - 16
    c,16(\< g' e' g e'4)\! c,,16^(\< g' e' g |
    e'2\!) r4 |
    \once\override TextScript #'extra-offset = #'(0 . 1)
    e,4.\treCorde_\markup{\italic "espressivo" }( fs8 e16 d cs b) |
    e4.( fs8 e16_\markup{\italic sostenuto} d cs b |

                                % 17 - 20
    a16 g d e fs2 | g2) g'4( |
    e4. fs8 e16 d cs b) | e4.( fs8 e16 d cs b |

                                % 21 - 24
    a16 g d e fs2 | b,2._\unaCorda)~ |
    b16(\< b' fs' b d4\! cs8. d16 | b4.\> fs8[ d cs]\! |

                                % 25 - 26
    b2.)~ | b4 r r |
}

playLHsustain = \notes {
                                % 1
    \sd s8 s \su s s |
    \barRest |
    \sd s8 s \su s s |
    \barRest |

                                % 5
    \sd s8 s \su s s |
    \barRest |
    \barRest |
    \barRest |

                                % 9
    \sd s s \su s s |
    \barRest |
    \sd s s \su s s |
    \barRest |

                                % 13
    \sd s s \su \sd s |
    s s s \su s s |
    \barRest |
    \barRest |

                                % 17
    \barRest |
    \barRest |
    \barRest |
    \barRest |

                                % 21
    \barRest |
    \barRest |
    \sd s s s \su  s |
    \sd s s s s \su |

                                % 25
    \barRest |
    \barRest |
}

playSilent = \notes {
    \barRest
    \barRest
    \barRest \myBreak

    \barRest
    \barRest
    \barRest \myBreak

    \barRest
    \barRest
    \barRest \myBreak

    \barRest
    \barRest
    \barRest
    \barRest \myBreak

    \barRest
    \barRest
    \barRest
    \barRest \myBreak

    \barRest
    \barRest
    \barRest
    \barRest \myBreak

    \barRest
    \barRest
    \barRest
    \barRest
    \barRest \myBreak
    \bar "|."
}



scoreAll = \notes {
    \new PianoStaff {
                                % setup instrument
            \set PianoStaff.midiInstrument = "acoustic grand"

                                % setup beaming defaults
            #(override-auto-beam-setting '(end * * * *) 1 4 'Score)

                                % gap between staves -- default 12
            %% \override PianoStaff.VerticalAlignment #'forced-distance = #14

                                % PLAY!
            <<
                \context Staff = "rh" {
                                % setup dynamics
                    \override Staff.TextScript #'staff-padding = #3
                    \override Staff.DynamicLineSpanner #'staff-padding = #3  % (forced-distance - 6) / 2

                                % PLAY RH!
                    <<
                        \playRHupper \\
                        \playRHlower
                    >>
                    \bar "|."
                }
                \context Staff = "lh" {
                                % setup dynamics
                    %\override Staff.TextScript #'staff-padding = #3
                    %\override Staff.DynamicLineSpanner #'staff-padding = #3  % (forced-distance - 6) / 2

                                % setup pedals
                    \set Staff.pedalSustainStyle = #'mixed
                    \override Staff.SustainPedalLineSpanner #'padding = #3

                                % PLAY LH!
                    <<
                        \playLH
                        \playLHsustain
                        \playSilent
                    >>
                    \bar "|."
                }
            >>
    }
}

%%%
%%% MAIN PAPER / MIDI
%%%
\score
{
    \notes
    {
        \scoreAll
    }
    \paper {}
    \midi {
        \tempo 4 = 45
        %% Remove the dynamics from the midi output
        \context {
            \VoiceContext
            \remove "Dynamic_performer"
            \remove "Span_dynamic_performer"
        }
    }
}

