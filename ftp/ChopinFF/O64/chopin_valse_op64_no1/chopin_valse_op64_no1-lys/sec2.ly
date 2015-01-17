\version "2.18.2"

secTwoSilent =  {
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


secTwoRHnotes =  \relative f'' {
    \repeat volta 2 {
                                % 21 - 24
        \context Voice = "longSlur" {
          \tuplet 3/2 { f8([ gf f] } e f af gf |
          f gf f e f bf |
          \tuplet 3/2 { af[ bf af] } g af c bf |
          af bf af g af df |
  
                                  % 25 - 28
          c bf af gf f ef |
          df c bf af gf f |
          ef df c ef bf' af |
          g af bf c df ef |
  
                                  % 29 - 32
          <<
            \context Voice = "longSlur" {
              \voiceOne
              \tuplet 3/2 { f8[ gf? f] } e f af gf |
              f gf f e f bf |
              \tuplet 3/2 { af[ bf af] } g af c bf |
            }
            \\
            {
              r4 <ef,, f> q | 
              r4 <df f> q  |
              r4 <gf af> q |
            }
          >>
          af'8 bf af g af f' |
  
                                  % 33 - 35
          ef df c bf af gf |
          \stemNeutral
          f ef df c bf af |
          a c bf f gf c, |
        }
    }
    \alternative {
                                % 36
        { \context Voice = "longSlur" df4) r 
          \shapeSlurTwo f' -\tweak X-extent #'(0 . 4) \laissezVibrer }
                                % 37 (partial bar)
        { df,4 \repeatTie r } 
    }
}

secTwoRHDyn =  {
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

secTwoRH =  {
    <<
        \secTwoSilent
        \secTwoRHnotes
        \secTwoRHDyn
    >>
}



secTwoLHnotes =  \relative a, {
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
        a2.( |
        bf2. |
        c2. |
        df4) \stemDown\csrh <f af> \stemNeutral\cslh r |

                                % 33 - 35
        gf,?4 \stemDown\csrh <df' ef bf'> \stemNeutral\cslh r |
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

secTwoLHDyn =  {
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

secTwoLH =  {
    <<
        \secTwoSilent
        \secTwoLHnotes
        \secTwoLHDyn
    >>
}
