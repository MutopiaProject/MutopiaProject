\version "2.18.2"

introSilent =  {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

introRH = \relative a'' {
    a8 g4 b8 a4 | a,8 g4 b8 a4 |
    R1*3/4 | R1*3/4 |
    <e c g>2. | <ef c g> |
    <d c fs,> | <c fs a> |
}


introLH = \relative a {
    R1*3/4 | R1*3/4 |
    a8 g4 b8 a4 | a,8 g4 b8 a4 |
    a8 g4 b8 a4 | a8 c4 b8 a4 |
    d2. | <d d,> |
}

introSuper =  {
    s4^\markup { \center-column { \line {Valse Tempo} \line { \smaller TEMA} } } s s |
    \barRest |
    \barRest |
    \barRest |
    s^\markup{ rit. poco a poco } s s |
    \barRest |
    \barRest |
    \barRest |
}

introDynamics =  {
    s4\mp s s |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

introSub =  {
    \introSilent
}
