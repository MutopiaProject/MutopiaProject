\version "2.18.2"

secFourSilent =  {
                                % 70 - 73
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 74 - 77
    \barRest |
    \barRest |
    \barRest |
    \barRest | \myBreak
                                % 78 - 81
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 82 - 85
    \barRest |
    \barRest | \myBreak
    \barRest |
    \barRest |
                                % 86 - 89
    \barRest |
    \barRest |
    \barRest | \myBreak
    \barRest |
                                % 90 - 93
    \barRest |
    \barRest |
    \barRest |
    \barRest | \myBreak
                                % 94 - 97
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 98 - 101
    \barRest | \myBreak        % end of page
    \barRest |
    \barRest |
    \barRest |
                                % 102 - 105
    \barRest |
    \barRest | \myBreak
    \barRest |
    \barRest |
                                % 106 - 109
    \barRest |
    \barRest |
    \barRest |
    \barRest | \myBreak
                                % 110 - 113
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 114 - 117
    \barRest | \myBreak
    \barRest |
    \barRest |
    \barRest |
                                % 118 - 121
    \barRest |
    \barRest | \myBreak
    \barRest |
    \barRest |
                                % 122 - 125
    \barRest |
    \barRest |
    \barRest |
    \barRest | \myBreak
}


secFourRHnotes =  \relative af' {
                                % 70 - 73
    af2.\trill(~ |
    af2.\trill~ |
    af2.\trill~ |
    af2.\trill |

                                % 74 - 77
    g8 af c bf g af |
    c bf g af c bf |
    g af c bf g af |
    c bf g af c bf |

                                % 78 - 81
    g af c bf g af |
    c bf g af c bf |
    g af c bf g af |
    bf c df ef f gf? |

                                % 82 - 85
    bf4. af8[ gf f] |
    f ef ef\prall d ef4) |
    bf'4.( af8[ gf f] |
    f ef\prall d ef f b, |

                                % 86 - 89
    g af c bf g af |
    c bf g af c bf |
    g af c bf g af |
    bf c df ef f gf? |

                                % 90 - 93
    bf4. af8[ gf f] |
    f ef ef\prall d ef4) |
    \context Voice = "longSlur" {
      bf'4.( af8[ gf f] |
      ef f ef\prall d ef e |

                                % 94 - 97
      \tuplet 3/2 { f8[ gf f] } e f af gf |
      f gf f e f bf |
      \tuplet 3/2 { af[ bf af] } g af c bf |
      af bf af g af df |
  
                                  % 98 - 101
      c bf af gf f ef |
      df c bf af gf f |
      ef df c ef bf' af |
      g af bf c df ef |
  
                                  % 102 - 105
      <<
        \context Voice = "longSlur" {
          \voiceOne
          \tuplet 3/2 { f8[ gf f] } e f af gf |
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
  
                                  % 106 - 109
      ef df c bf af gf |
      \stemNeutral
      f ef df c bf af |
      a c bf f gf c, |
      df4) r
    }
    \context Voice = "longSlur" { f'->(~ |

                                % 110 - 113
      \tuplet 3/2 { f8[ gf f] } e f af gf |
      f gf f e f bf |
      \tuplet 3/2 { af[ bf af] } g af c bf |
      af bf af g af df |
  
                                % 114 - 117
      c bf af gf f ef |
      df c bf af gf f |
      ef df c ef bf' af |
      g af bf c df ef |
  
                                % 118 - 121
      << 
        \context Voice = "longSlur" { 
          \voiceOne
          \tuplet 3/2 { f8[ gf f] } e f af gf | 
          f8 gf f e f bf |
          \tuplet 3/2 { af8[ bf af] } g af c bf |
        }
        \\
        { 
          r4 <ef,, f> q | 
          r4 <df f> q  |
          r4 <gf af> q |
        }
      >>
      af'8[ bf af g af]) 
    }
    \stemNeutral
    \override Staff.OttavaBracket.extra-offset = #'(0 . 1)
    \ottava #1
    f''\>( |

                                % 122 - 125
    \tiny
    \tuplet 24/18 {
        ef8[ df c bf af gf f ef
        \ottava #0
        df c bf af gf f
        ef df c bf a\!\< c bf f gf c,\!]
    } |
    \normalsize
    df2) r4 |
}

secFourRHdyn =  {
                                % 70 - 73
    \barRest |
    s8\< s s s s s |
    \barRest |
    \barRest |
                                % 74 - 77
    \barRest |
    \barRest |
    \barRest |
    s8 s s s s s\! |
                                % 78 - 81
    s8\f s s s s s |
    \barRest |
    \barRest |
    \barRest |
                                % 82 - 85
    s8\> s s s s s |
    s s s s s s\! |
    s\> s s s s s |
    s s s s s s\! |
                                % 86 - 89
    s8\p s s s s s |
    \barRest |
    s8\< s s s s s |
    s s s s s s\! |
                                % 90 - 93
    s8\> s s s s s |
    s s s s s s\! |
    s\< s s s s s |
    s s s s s s\! |
                                % 94 - 97
    s8 s s\< s s s |
    \barRest |
    \barRest |
    s8 s s s s s\! |
                                % 98 - 101
    s8\> s s s s s |
    \barRest
    s8 s s\!\< s s s |
    s s s s s s \! |
                                % 102 - 105
    \barRest |
    \barRest |
    \barRest |
    s8 s\> s s s s |
                                % 106 - 109
    s s s s s s\! |
    s\> s s s s s |
    s s s s s s\! |
    \barRest |
                                % 110 - 113
    s8\pp s s\< s s s |
    \barRest |
    \barRest |
    s8 s s s s s\! |
                                % 114 - 117
    s8\> s s s s s |
    \barRest |
    s s s\!\< s s s |
    s s s s s s\! |
                                % 118 - 121
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 122 - 125
    \barRest |
    \barRest |
    \barRest |
    s4\f s s |
}

secFourRH =  {
    <<
        \secFourSilent
        \secFourRHnotes
        \secFourRHdyn
    >>
}



secFourLHnotes =  \relative df, {
                                % 70 - 73
    R1*3/4 |
    R1*3/4 |
    R1*3/4 |
    R1*3/4 |

                                % 74 - 77
    R1*3/4 |
    R1*3/4 |
    R1*3/4 |
    R1*3/4 |

                                % 78 - 81
    df4 <af'' df f> <af df f> |
    f <af df f> <af df f> |
    df, <af' df f> <af df f> |
    f <af df f> <af df f> |

                                % 82 - 85
    af, <af' c gf'> <af c gf'> |
    ef <af c gf'> <af c gf'> |
    af, <c' gf'> <c gf'> |
    af <c gf'> <c gf'> |

                                % 86 - 89
    df, <af' df f> <af df f> |
    f <af df f> <af df f> |
    df, <af' df f> <af df f> |
    f <af df f> <af df f> |

                                % 90 - 93
    af, <af' c gf'> <af c gf'> |
    ef <af c gf'> <af c gf'> |
    af, <af' c gf'> <af c gf'> |
    af <c gf'> af,  |

                                % 94 - 97
    a4 <f' c' ef?> <f c' ef> |
    bf, <f' df'> <f df'> |
    c <af' ef' gf?> <af ef' gf> |
    df, <af' f'> r |

                                % 98 - 101
    gf? <bf ef> r |
    af, <f' af df> r |
    af, <gf' af> <gf af c> |
    df <af' df f> r |

                                % 102 - 105
    a2. ( |
    bf2. |
    c2. |
    df4) \stemDown\csrh <f af> \stemNeutral\cslh r |

                                % 106 - 109
    gf,?4 \stemDown\csrh <df' ef bf'> \stemNeutral\cslh r |
    af,4 <f' af df> r |
    af,? <gf' af?> <gf af> |
    df4 <af' f'> r |

                                % 110 - 113
    a,4 <f' c' ef?> <f c' ef> |
    bf, <f' df'> <f df'> |
    c <af' ef' gf?> <af ef' gf> |
    df, <af' f'> r |

                                % 114 - 117
    gf? <bf ef> r |
    af, <f' af df> r |
    af, <gf' af> <gf af c> |
    df <af' df f> r |

                                % 118 - 121
    a2.( |
    bf2. |
    c2. |
    df4) \stemDown\csrh <f af> \stemNeutral\cslh r |

                                % 122 - 125
    gf,,?4 \clef treble <df'' ef bf'> r |
    R1*3/4 |
    \clef bass
    af,4 <gf' af> <gf af> |
    df, <f' af f'> r |
}

secFourLHdyn =  {
                                % 70 - 73
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 74 - 77
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 78 - 81
    \sbar |
    \sbar |
    \sbar |
    \sbar |
                                % 82 - 85
    \sbar |
    \sbar |
    \sd s8 s s s s |
    s s s s s \su |
                                % 86 - 89
    \sbar |
    \sbar |
    \sbar |
    \sbar |
                                % 90 - 93
    \sbar |
    \sbar |
    \sbar |
    \sbar |
                                % 94 - 97
    \sbar |
    \sbar |
    \sbar |
    \sbar |
                                % 98 - 101
    \sbar |
    \sbar |
    \sbar |
    \sbar |
                                % 102 - 105
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 106 - 109
    \sbar |
    \sbar |
    \barRest |
    \sbar |
                                % 110 - 113
    \sbar |
    \sbar |
    \sbar |
    \sbar |
                                % 114 - 117
    \sd s8 \su s8 s s |
    \sbar |
    \sbar |
    \sbar |
                                % 118 - 121
    \barRest |
    \barRest |
    \barRest |
    \sbar |

                                % 122 - 125
    \sbar |
    \barRest |
    \sbar |
    \sd s8 s \su s8 s |
}

secFourLH =  {
    <<
        \secFourSilent
        \secFourLHnotes
        \secFourLHdyn
    >>
}
