\version "2.18.2"

secOneSilent =  {
                                % 1 - 4
    \barRest |
    \barRest |
    \barRest |
    \barRest |

                                % 5 - 8
    \barRest | \myBreak
    \barRest |
    \barRest |
    \barRest |

                                % 9 - 12
    \barRest |
    \barRest | \myBreak
    \barRest |
    \barRest |

                                % 13 - 16
    \barRest |
    \barRest |
    \barRest | \myBreak
    \barRest |

                                % 17 - 20
    \barRest |
    \barRest |
    \barRest |
    \barRest | \myBreak
}


secOneRHnotes =  \relative af' {
    \slurUp
                                % 1 - 4
    af4->^( g8 af c bf |
    g af bf af c bf |
    g af c bf g af |
    c bf g af c bf |

                                % 5 - 8
    g af c bf g af |
    c bf g af c bf |
    g af c bf g af |
    bf c df ef f gf? |

                                % 9 - 12
    bf4. af8[ gf f] |
    f ef ef\prall d ef4) |
    bf'4.( af8[ gf f] |
    f ef\prall d ef f bf, |

                                % 13 - 16
    g af c bf g af |
    c bf g af c bf |
    g af c bf g af |
    bf c df ef f gf? |

                                % 17 - 20
    bf4. af8[ gf f] |
    f ef ef\prall d ef4 |
    bf'4. af8[ gf f] |
    ef f ef\prall d ef e) |
}

secOneRHdyn =  {
                                % 1 - 4
    \tempo "Molto Vivace"
    s8_\markup{\italic leggiero} s s s s s |
    \barRest |
    \barRest |
    \barRest |

                                % 5 - 8
    s8\< s s s s s |
    \barRest |
    \barRest |
    s8 s s s s s\! |

                                % 9 - 12
    s8\> s s s s s |
    s s s s s s\! |
    s8\> s s s s s |
    s s s s s s\! |

                                % 13 - 16
    \barRest |
    \barRest |
    s8\< s s s s s\! |
    s8\< s s s s s\! |

                                % 17 - 20
    s8\> s s s s s |
    s s s s s s\! |
    \barRest |
    \barRest |
}

secOneRH =  {
    <<
        \secOneSilent
        \secOneRHnotes
        \secOneRHdyn
    >>
}



secOneLHnotes =  \relative d {
                                % 1 - 4
    R2. |
    R2. |
    R2. |
    R2. |

                                % 5 - 8
    df4 <af' df f> <af df f> |
    f <af df f> <af df f> |
    df, <af' df f> <af df f> |
    f <af df f> <af df f> |

                                % 9 - 12
    af, <af' c gf'> <af c gf'> |
    ef <af c gf'> <af c gf'> |
    af, <c' gf'> <c gf'> |
    af <c gf'> <c gf'> |

                                % 13 - 16
    df, <af' df f> <af df f> |
    f <af df f> <af df f> |
    df, <af' df f> <af df f> |
    f <af df f> <af df f> |

                                % 17 - 20
    af, <af' c gf'> <af c gf'> |
    ef <af c gf'> <af c gf'> |
    af, <af' c gf'> <af c gf'> |
    af <c gf'> af,  |
}

secOneLHdyn =  {
                                % 1 - 4
    \barRest |
    \barRest |
    \barRest |
    \barRest |
                                % 5 - 8
    \sbar |
    \sbar |
    \sbar |
    \sbar |


                                % 9 - 12
    \sbar |
    \sbar |
    \sbar |
    \sbar |

                                % 13 - 16
    \sbar |
    \sbar |
    \sbar |
    \sbar |

                                % 17 - 20
    \sbar |
    \sbar |
    \sbar |
    \sbar |

}

secOneLH =  {
    <<
        \secOneSilent
        \secOneLHnotes
        \secOneLHdyn
    >>
}
