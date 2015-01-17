\version "2.18.2"

secThreeSilent =  {
                                % 37 (partial)
    s4 |

                                % 38 - 41
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 42 - 45
    \barRest | \myBreak
    \barRest |
    \barRest |
    \barRest |
                                % 46 - 49
    \barRest |
    \barRest |
    \barRest |
    \barRest | \myBreak
                                % 50 - 53
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 54 - 57
    \barRest |
    \barRest | \myBreak
    \barRest |
    \barRest |
                                % 58 - 61
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 62 - 65
    \barRest | \myBreak
    \barRest |
    \barRest |
    \barRest |
                                % 66 - 69
    \barRest |
    \barRest |
    \barRest |
    \barRest | \myBreak
}


secThreeRHnotes =  \relative af' {
                                % 37 (partial)
    af4(~ |

                                % 38 - 41
    af2 ef4 |
    af2 e4 |
    af2 f4 |
    f'2) f4\(~ |

                                % 42 - 45
    f2 bf,4 |
    f'2 c4 |
    ef2 df4 |
    \tuplet 4/3 { c ef df bf } |

                                % 46 - 49
    af2 ef4_( |
    af2) e4 |
    af2 f4 |
    f'2. |

                                % 50 - 53
    c4\trill b c |
    af' bf, g' |
    a, gf' af, |
    f' f, bf |
                                % 54 - 57
    af2 ef4 |
    \acciaccatura {
        % [bug] really ugly slurs.  Perhaps improved in lilypond 2.2.5 or greater?
        af'8 } af,2 e4 |
    \acciaccatura {
        % [bug] really ugly slurs.  Perhaps improved in lilypond 2.2.5 or greater?
        af'8 } af,2 f4 |
    \acciaccatura {af'8} f2\) f4\( |

                                % 58 - 61
    \acciaccatura { af8 } f2 bf,4 |
    \acciaccatura { af'8 } f2 c4 |
    \acciaccatura { af'8 } ef4 df c |
    \acciaccatura { af'8 } ef4 df4. bf8 |

                                % 62 - 65
    \acciaccatura { af'8 } af,2 ef4 |
    \acciaccatura { af'8 } af,2 e4 |
    \acciaccatura { af'8 } af,2 f4 |
    f'2.\) |

                                % 66 - 69
    f2( bf,4 |
    ef2 bff4 |
    ef af, d |
    f ef af) |
}

secThreeRHdyn =  {
                                % 37 (partial)
    s4 |

                                % 38 - 41
    s4_\markup{\italic "sostenuto"} s s |
    \barRest |
    s4\< s s |
    s\! s s |
                                % 42 - 45
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 46 - 49
    \barRest |
    s4\< s s |
    s s s |
    s\! s s |
                                % 50 - 53
    \barRest |
    \barRest |
    s4\> s s |
    s s s\! |
                                % 54 - 57
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 58 - 61
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 62 - 65
    \barRest |
    \barRest |
    s4\< s s |
    s\! s s |
                                % 66 - 69
    \barRest |
    \barRest |
    \once\override Hairpin.extra-offset = #'(0 . 1.5)
    s4\< s s |
    s s s\! |
}

secThreeRH =  {
    <<
        \secThreeSilent
        \secThreeRHnotes
        \secThreeRHdyn
    >>
}



secThreeLHnotes =  \relative a, {
                                % 37 (partial)
    r4 |

                                % 38 - 41
    af4 <gf' af c> <gf af c> |
    <gf af c> <gf af c> <gf af c> |
    df <af' df> <af df> |
    af, <af' df f> <af df f> |

                                % 42 - 45
    ef <af c gf'> <af c gf'> |
    af, <af' ef' gf> <af ef' gf> |
    df, <af' df f> <af df f> |
    f  <af df f> <af df f> |

                                % 46 - 49
    c,4 <gf' af> <gf af> |
    af, <gf' af> <gf af c> |
    df <af' df> <af df> |
    b, <af' df f> <af df f> |

                                % 50 - 53
    c,4 <af' c f> <af c f> |
    c,, <g'' c e> r |
    f, r <f' c'> |
    R1*3/4 |

                                % 54 - 57
    c4 <gf' af> <gf af> |
    af, <gf' af c> <gf af c> |
    df <af' df> <af df> |
    af, <af' df f> <af df f> |

                                % 58 - 61
    ef <af c gf'> <af c gf'> |
    af, <af' ef' gf> <af ef' gf> |
    df, <af' df f> <af df f> |
    f  <af df f> <af df f> |

                                % 62 - 65
    << { r4 <gf af> <gf af> } \\
       { c,2. } >> |
    af4 <gf' af c> <gf af c> |
    cf, <f af ef'> <f af ef'> |
    bf, <f' af d> <f af d> |

                                % 66 - 69
    ef4 <df' g> <df g> |
    r4 <df gf> <df gf> |
    %{
    <<
        << { r4 <c gf'> } \\
           { af2 } >>           % [mils] expect warning
        { \hideNotes af4_(  c) \unHideNotes }
    >> r4 |
    %}
    
    %\mergeDifferentlyHeadedOn
    << 
      { r4 <c gf'> } \\ 
      { af2 } \\
      { \stemDown \hideNotes \forceShift \shapeSlurOne af4_( c) } 
    >> r4 |

    R1*3/4 |
}

secThreeLHdyn =  {
                                % 37 (partial)
    s4 |

                                % 38 - 41
    \sd s8 s s s s |
    s s s s s \su |
    \sd s8 s s s s |
    s s s s s \su |
                                % 42 - 45
    \sbar |
    \sbar |
    \sbar |
    \sbar |
                                % 46 - 49
    \sbar |
    \sbar |
    \sd s8 s s s s |
    s s s s s \su |
                                % 50 - 53
    \sbar |
    \sbar |
    \sbar |
    \barRest |
                                % 54 - 57
    \sbar |
    \sbar |
    \sbar |
    \sbar |
                                % 58 - 61
    \sbar |
    \sbar |
    \sbar |
    \sbar |
                                % 62 - 65
    \sbar |
    \sbar |
    \sbar |
    \sbar |
                                % 66 - 69
    \sbar |
    \barRest |
    \barRest |
    \barRest |
}

secThreeLH =  {
    <<
        \secThreeSilent
        \secThreeLHnotes
        \secThreeLHdyn
    >>
}
