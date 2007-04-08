introSilent = \notes {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

introRH = \notes\relative a'' {
    a8 g4 b8 a4 | a,8 g4 b8 a4 |
    R1*3/4 | R1*3/4 |
    <e c g>2. | <ef c g> |
    <d c fs,> | <c fs a> |
}


introLH = \notes\relative a {
    R1*3/4 | R1*3/4 |
    a8 g4 b8 a4 | a,8 g4 b8 a4 |
    a8 g4 b8 a4 | a8 c4 b8 a4 |
    d2. | <d d,> |
}

introSuper = \notes {
    \once \override TextScript #'extra-offset = #'(3 . -1.5)
    s4^\markup{\center-align < {Valse Tempo} {\italic\smaller TEMA} > } s s |
    \barRest |
    \barRest |
    \barRest |
    s^\markup{ rit. poco a poco } s s |
    \barRest |
    \barRest |
    \barRest |
}

introDynamics = \notes {
    s4\mp s s |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

introSub = \notes {
    \introSilent
}