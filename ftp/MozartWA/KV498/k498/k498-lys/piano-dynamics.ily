\version "2.16.0"

dynamicsFirstMov =  {
    s4\f s16 s64\p s32. s4.
    | s2.*3
    | s4\f s16 s64\p s32. s4.
    | s2.*3
    | s16 s16\p s4 s4.
    | s2.*13
    | s4 s8 \< s4  s8\!
    | s4.\f \>  s8\!\p s s
    | s2.*28
    | s4. s4 s8\f
    | s2.
    | s4.\p s4.
    | s2.*18
    | s4.\f s4.
    | s2.*7
    | s4.\p s4.
    | s2.*6
    | s4.\f s4 s8\p
    | s2.
    | s4.\p s4 s8\p
    | s2.*5
    | s4.\f s4.\p
    | s4.\p s4.
    | \skip2.*31 \bar "|."
}

%---------------------------------------------------------------------

dynamicsSecondMov =  {
    s4\f s2
    | s2.*6
    | s2 s4\p
    | s2.*4
    | s4\f s2
    | s2.*3
    | s4\p s2
    | s2.*9
    | s4\f s2
    | s2.*3
    | s4 s2\p
    | s2.
    | s2 s4\f
    | s2.*3
    | s2 s4\p
    | s2.*60
    | s4 s2\f
    | s2.*4
    | s4\f s2
    | s2.*6
    | s2 s4\p
    | s2.*4
    | s4\f s2
    | s2.*3
    | s4\p s2
    | s2.*9
    | s4\f s2
    | s2.*3
    | s4 s2\p
    | s2.
    | s2 s4\f
    | s2.*3
    | s2 s4\p
    | s2.*3
    | s2 s4\f
    | s2.*5
    | s4\p s2
    | s2.*7
    | s2 s4\f
    | s2. \bar "|."
}

%---------------------------------------------------------------------

dynamicsThirdMov =  {
    s2\p s2
    | s1*6
    | s2 s8 s8\f s4
    | s1*8
    | s2\p s2
    | s1*3
    | s4 s4\fp s2
    | s1*45
    | s4\f s4 s2
    | s1*40
    | s2- \markup{ {\dynamic "mf"} {\italic " legato"}} s2
    | s1*23 \bar "||"
    | s1*44
    | s2 s16 s16\f s8 s4
    | s2 s2\sf
    | s2 s2\sf
    | s1*2
    | s2\fp s2
    | s1*2
    | s2\f s2
    | s8 s8\> s2 s8.  s16\!
    | s2\p s2
    | s1*3
    | s2\f s2
    | s1*2
    | s8 s8\p s4 s2
    | s1*17
    | s2- \markup{ {\dynamic "f"} {\italic " legato"}} s2
    | s1
    | s4 s4\p s2
    | s1*7
    | s2- \markup{\italic "cresc."} s2
    | s2\f s2
    | s1 \bar "|."
}
