\version "2.18.2"

                      %                 "PRELUDE Op28 No6"
                      %                 by Frederic Chopin
                      %
                      %    Verbose pedal marking in comments
                      %    Please see "header.ly" for more information

\include "english.ly"
\include "header.ly"
\include "paper-defs.ily"

paperOFF = { \set Score.skipTypesetting = ##t }
paperON = { \set Score.skipTypesetting = ##f }
myBreak = {} % { \break }


trebleQuaverRest =  \relative b' { b4\rest }

beams = {
    \set Timing.beamExceptions = #'()
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    \set Timing.beatStructure = #'(1 1 1)
}


playRHupper =  \relative b' {
    \clef treble
    \key b \minor
    \time 3/4

                                % 1 - 4
    \tempo "Assai Lento"
     b8(-> b) b[(-> b)] b(-> b) |
     \beams

    \once\override TextScript.staff-padding = #0
    \once\override TextScript.extra-offset = #'(-1 . 0)
    b^\markup{\italic (simile) } b b b b b |
    b b d d d d |
    d d d d d d |

                                % 5 - 8
    d d d d d d |
    d d cs cs <cs as>( <d b> |
    e4. fs8 e16 d \acciaccatura d8 cs16 b |
    <as fss cs>8[\< <b gs d>\! <d b d,>\> <cs as cs,>)]\! \trebleQuaverRest |

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
    fs fs \trebleQuaverRest fs8( fs | fs fs) \trebleQuaverRest \trebleQuaverRest |
}


playRHlower =  \relative fs' {
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
    <g as>8 <g b> <g as> <fs cs'> <fs b> fs | s2. |

                                % 9 - 12
    <fs d>4 fs fs | <fs d> <fs d> <fs d> |
    <g d> g g | g <g e> <g e> |

                                % 13 - 16
    <g e>4 g <g e> | g g g |
    <g cs,>\p <fs cs> <fs d> | <g cs,> <g cs,> <g d> |

                                % 17 - 20
    <g d>4 <fs cs> <e cs> | <e cs> <d b> <g d> |
    <g cs,> <g cs,> <fs d> | <g cs,> <g cs,> <g d> |

                                % 21 - 24
    <g d>4 <fs cs> <fs cs> | <fs d>\pp <fs d> <fs d> |
    d s s| d d d |

                                % 25 - 26
    d s d\ppp | d s s |
}


playLH =  \relative b, {
    \clef bass
    \key b \minor
    \time 3/4
                                % 1 - 4
    %b16\p\unaCorda\sustainOn(\< d fs b d4\!_\markup{\italic "molto cantato"} cs8. d16 |
    \once \hide Staff.DynamicText b16 \p (\< d fs b d4\! cs8. d16 |
    b4.\> fs8[ d cs])\! |
    %b4.\> \sustainOff fs8[ d cs])\! |
    b16(\< fs' b d fs4\! e8. fs16 |
    %b16(\<\sustainOn fs' b d fs4\!\sustainOff e8. fs16 |
    d4.\> b8[ fs d])\! |

                                % 5 - 8
                                % this slur is ugly no matter what...
    g,16_(\< d' b' d g4\! fs | fs\> es\! e8 d |
    %g,16_(\< \sustainOn d' b' d g4\!\sustainOff fs | fs\> es\! e8 d |
    cs \acciaccatura e d cs as b d, | e es fs4) d8( cs |

                                % 9 - 12
    b16\< d fs b d4\! cs8. d16 | b4.\> fs8[ d b]\! |
    %b16\< \sustainOn d fs b d4\!\sustainOff cs8. d16 | b4.\> fs8[ d b]\! |
    g16\< d' g b d4 e8 f\!| e4.\> c8[ g c,]\!) |
    %g16\< \sustainOn d' g b d4 e8 f\!\sustainOff | e4.\> c8[ g c,]\!) |

                                % 13 - 16
    c,16(\<\sustainOn g' e' g e'4)\!\sustainOff c,,16^(\<\sustainOn g' e' g |
    e'2\!) \sustainOff r4 |
    e,4.( fs?8 e16 d cs b) |
    %\once\override TextScript.extra-offset = #'(1 . 0.7)
    %e,4.\treCorde_\markup{\italic "espressivo" }( fs8 e16 d cs b) |
    e4.( fs8 e16-\markup{\italic "sostenuto" } d cs b |

                                % 17 - 20
    a16 g d e fs2 | g2) g'4( |
    e4. fs8 e16 d cs b) | e4.( fs8 e16-\markup{ \italic "sostenuto"} d cs b |

                                % 21 - 24
    a16 g d e fs2 | b,2.)~ |
    %a16 g d e fs2 | b,2._\unaCorda)~ |
    b16(\< b' fs' b d4\! cs8. d16 |
    %b16\sustainOn(\< b' fs' b d4\! cs8.\sustainOff d16 |
    b4.\> fs8[ d cs]\!|
    %b4.\sustainOn\> fs8[ d cs]\!\sustainOff |

                                % 25 - 26
    b2.)~ | b4 r r |
}


scoreAll =  {
    \new PianoStaff {
                                % setup instrument
            \set PianoStaff.midiInstrument = "acoustic grand"

                                % PLAY!
            <<
                \context Staff = "rh" {
                                % PLAY RH!
                    <<
                        \playRHupper \\
                        \playRHlower
                    >>
                    \bar "|."
                }
                \context Staff = "lh" {
                                % setup pedals
                    \set Staff.pedalSustainStyle = #'text
                                % PLAY LH!
                    <<
                        \playLH
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
    {
        \scoreAll
    }
    \layout {}
    \midi {
        \tempo 4 = 45
    }
}
