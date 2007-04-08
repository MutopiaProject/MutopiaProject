secTwoSilent = \notes {
    \repeat volta 2 {
                                % 21 - 24
        \barRest |
        \barRest |
        \barRest |
        \barRest |

                                % 25 - 28
        \barRest | \myBreak
        \barRest |
        \barRest |
        \barRest |

                                % 29 - 32
        \barRest |
        \barRest | \myBreak
        \barRest |
        \barRest |

                                % 33 - 35
        \barRest |
        \barRest |
        \barRest | \myBreak
    }
    \alternative {
                                % 36
        { \barRest | }
                                % 37 (partial)
        { s4 s }
    }
}


secTwoRHnotes = \notes \relative f'' {
    \repeat volta 2 {
                                % 21 - 24
        \once\override Slur #'attachment = #'(head . stem)
                                % [bug] first f should tie with last f in bar 36
                                % [bug] slur/phrase should terminate in both bar 36 and 37 (voltas)
        \times 2/3 { f8([ gf f] } e f af gf |
        f gf f e f bf |
        \times 2/3 { af[ bf af] } g af c bf |
        af bf af g af df |

                                % 25 - 28
        c bf af gf f ef |
        df c bf af gf f |
        ef df c ef bf' af |
        g af bf c df ef |

                                % 29 - 32
        \stemUp
        \times 2/3 { f8[ gf? f] } e f af gf |
        f gf f e f bf |
        \times 2/3 { af[ bf af] } g af c bf |
        af bf af g af f' |

                                % 33 - 35
        ef df c bf af gf |
        \stemBoth
        f ef df c bf af |
        a c bf f gf c, |
    }
    \alternative {
                                % 36
                                % [bug] The f should tie with the first f (bar 21)
                                %       in this section on repeat
        { df4) r f' }
                                % 37 (partial bar)
                                % [bug] The df should terminate a slur
        { df,4) r } % [mils] expect warning
    }
}

secTwoRHDyn = \notes {
    \repeat volta 2 {
                                % 21 - 24
        \barRest |
        \barRest |
        \barRest |
        \barRest |
                                % 25 - 28
        s8\> s s s s s |
        \barRest |
        s8 s s\!\< s s s |
        s8 s s s s s\! |
                                % 29 - 32
        \barRest |
        \barRest |
        \barRest |
        \barRest |

                                % 33 - 35
        s8 s\> s s s s |
        \barRest |
        s8 s s s s s\! |
    }
    \alternative {
                                % 36
        { \barRest | }
                                % 37 (partial)
        { s2 }
    }
}

secTwoRH = \notes {
    <<
        \secTwoSilent
        \secTwoRHnotes
        \secTwoRHDyn
    >>
}



secTwoLHnotes = \notes \relative a, {
    \repeat volta 2 {
                                % 21 - 24
        a4 <f' c' ef?> <f c' ef> |
        bf, <f' df'> <f df'> |
        c <af' ef' gf?> <af ef' gf> |
        df, <af' f'> r |

                                % 25 - 28
        gf <bf ef> r |
        af, <f' af df> r |
        af, <gf' af> <gf af c> |
        df <af' df f> r |

                                % 29 - 32
        <<
            \context Voice = "vocLHa" \relative ef' { \voiceOne\stemDown\csrh r4 <ef? f> <ef f> }
            \context Voice = "vocLHb" \relative a { a2.( }
        >> |
        <<
            \context Voice = "vocLHa" \relative df' { \voiceOne\stemDown\csrh r4 <df f> <df f> }
            \context Voice = "vocLHb" \relative bf { bf2. }
        >> |
        <<
            \context Voice = "vocLHa" \relative gf' { \voiceOne\stemDown\csrh r4 <gf? af> <gf af> }
            \context Voice = "vocLHb" \relative c' { c2. }
        >> |
        \context Voice = "vocLHb" \relative df' { df4) \stemDown\csrh <f af> \stemBoth\cslh r } |

                                % 33 - 35
        gf?4 \stemDown\csrh <df' ef bf'> \stemBoth\cslh r |
        af,4 <f' af df> r |
        af,? <gf' af?> <gf af> |

    }
    \alternative {
                                % 36
        { df4 <af' f'> r | }
                                % 37 (partial)
        { df,4 <af' f'> }
    }
}

secTwoLHDyn = \notes {
    \repeat volta 2 {
                                % 21 - 24
        \sbar |
        \sbar |
        \sbar |
        \sbar |
                                % 25 - 28
        \sd s8 \su s8 s s |
        \sbar |
        \sbar |
        \sbar |
                                % 29 - 32
        \barRest |
        \barRest |
        \barRest |
        \barRest |
                                % 33 - 35
        \sbar |
        \sbar |
        \barRest |
    }
    \alternative {
                                % 36
        { \sbar | }
                                % 37 (partial)
        { s2 }
    }
}

secTwoLH = \notes {
    <<
        \secTwoSilent
        \secTwoLHnotes
        \secTwoLHDyn
    >>
}
