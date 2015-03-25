\version "2.18.2"

partFourSilent =  {
    \repeat volta 2 {
        \bar ".|:-||"
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest | \break
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest | \break
    }
    \alternative {
        {
            \barRest |
            \barRest |
            \barRest |
            \barRest |
            \barRest | \break
        }
        {
            \barRest |
        }
    }
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}


partFourRHvI =  \relative c' {
    \repeat volta 2 {
        \stemNeutral
        <c f a>4( <c e bf'> <d f b>) |
        c'8( <f a>4) c8( <f a>4) |
        bf,8( <e g>4) bf8( <bf e g>4) |
        <a d f>2 <a a'>4 |
        <a c ds a'>8 <a c ds a'>4 <a c ds f>8 <a c ds f>4 |
        <a c e a>8 <a c e a>4 <a c e>8 <a c e>4 |
        <gs e'>8 <gs e'>4 <gs e'>8 <gs e'>4 |
        a4( c bf) |
        <c, f a>4( <c e bf'> <d f b>) |
        c'8( <f a>4) c8( <f a>4) |
        bf,8( <e g>4) bf8( <bf e g>4) |
    }
    \alternative {
        {
            <a d f>2 a'8( b) |
            \stemUp
            c8 a4 c8 a4 |
            c8 g4 c8 g4 |
            g8 g4 g8 g4 |
            \stemNeutral
            <c e, c>8( bf g e c bf) |
        }
        {
            <a d f>2 d8( e) |
        }
    }
    <f f,>8 <bf, d>4 <f f'>8 <f gs d'>4 |
    <f a d>8 <f a c>4 <f a d>8 <c fs a>4 |
    a'8 f4 a8 g4 |
    \stemUp
    f f8( f' f4) |
    \stemNeutral
}

partFourRHvII =  {
    \repeat volta 2 {
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
    }
    \alternative {
        \relative ds'' {
            \barRest |
            ds2.( |
            e) |
            <b f'>2 <b f'>4 |
            \barRest |
        }
        {
            \barRest |
        }
    }
    \relative f' {
      \barRest |
      \barRest |
      <f b,>2 <e bf>4 |
                                % [mils] these slurs should be on both note-heads
                                % [mils] (crossing staves) throughout this bar
      <c a>(
      \slurUp
      \change Staff = "lh"
      \stemUp
      <df bf>)( <c a>) |      % [mils] slurs on both note-heads as above
      \change Staff = "rh"
      \stemNeutral\slurNeutral
    }
}


partFourRH =  {
    <<
        \partFourRHvI \\
        \partFourRHvII
    >>
}


partFourLHvI =  {
    \repeat volta 2 \relative f {
        \stemNeutral
        <f f,>4 <g g,> <gs gs,> |
        <a a,> <a c f> <a c f> |
        \stemUp
        r4 <bf c e> r |
        r <a d f> <a d f> |
        \stemNeutral
        <f f,>4 <a c ds> <a c ds> |
        <e e,> <a c e> <a c e> |
        <e e,> <gs d' e> <gs d' e> |
        <a c e>2 <g c e>4 |
        <f f,>4 <g g,> <gs gs,> |
        <a a,> <a c f> <a c f> |
        \stemUp
        r4 <bf c e> r |
        \stemNeutral
    }
    \alternative {
        \relative a {
            \stemUp
            r4 <a d f> r |
            r <a c ds> <a c ds> |
            r <g c e> <g c e> |
            \stemNeutral
            <g g,>4 <g b f'> <g b f'> |
            <c, c,> <g' bf c e>2 |
        }
        \relative a {
            \stemUp
            r4 <a d f> r |
        }
    }
    \relative a {
      r <f bf d> r |
      r <f a c> r |
      r <d f g> r |
      \stemNeutral
      \barRest |
    }
}

partFourLHvII =  {
    \repeat volta 2 \relative c {
        \barRest |
        \barRest |
        <c c,>2 <cs cs,>4 |
        <d d,>2. |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        <c c,>2 <cs cs,>4 |
    }
    \alternative {
        \relative d {
            <d d,>2. |
            <fs fs,> |
            <g g,> |
            \barRest |
            \barRest |
        }
        \relative d {
            <d d,>2. |
        }
    }
    \relative d {
      <bf bf,>2 <b b,>4 |
      <c c,>2 <d d,>4 |
      <g, g,>2 <c c,>4 |
      <f f,>2. |
    }
}

partFourLH =  {
    <<
        \partFourLHvI \\
        \partFourLHvII
    >>
}

partFourSuper =  {
    \repeat volta 2 {
        s4^\markup{ \column { \line {a tempo} \line { \smaller cantabile} } } s s |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        s^\markup{rall.} s s |
        \barRest
        s^\markup{a tempo} s s |
        \barRest |
        \barRest |
    }
    \alternative {
        {
            \barRest |
            \barRest |
            \barRest |
            s4^\markup{rit.} s s |
            \barRest |
        }
        {
            \barRest |
        }
    }
    s8 s s s^\markup{rit. poco a poco} s s |
    \revert TextScript.extra-offset
    \barRest |
    \barRest |
    \barRest |
}

partFourDynamics =  {
    \repeat volta 2 {
        s4\f s s |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
                                % [mils] hugely ugly code to print "dim." instead
                                %        of ">" (decrescendo)
        \once \override TextScript.extra-offset = #'(0 . -1)
        \once \override TextScript.font-series = #'medium
        \once \override Hairpin.transparent = ##t
        s^\markup { \normalsize dim. } \> s s |
        s s s\! |
        s\f s s |
        \barRest |
        \barRest |
    }
    \alternative {
        {
            \barRest |
            \barRest |
            \barRest |
            \barRest |
            \barRest |
        }
        {
            \barRest |
        }
    }
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

partFourSub =  {
    \repeat volta 2 {
        \barRest |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s \sustainOff s |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        \barRest |
        \barRest |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s \sustainOff s |
    }
    \alternative {
        {
            s4 \sustainOn s \sustainOff s |
            s4 \sustainOn s s \sustainOff |
            s4 \sustainOn s s \sustainOff |
            s4 \sustainOn s s \sustainOff |
            \barRest |
        }
        {
            s4 \sustainOn s\sustainOff s |
        }
    }
    s4 \sustainOn s \sustainOff s |
    s4 \sustainOn s \sustainOff s |
    s4 \sustainOn s \sustainOff s |
    \barRest |
}


segueFourSilent =  {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueFourRHvI =  \relative f'' {
    f8( e f e ef d) |
    e( ds e ds d df) |
    ef( d ef d df c) |
    cs2 r4\fermata |
 }

segueFourRH =  {
    \segueFourRHvI
}

segueFourLHvI =  \relative as {
    \barRest |
    \barRest |
    \barRest |
    as2 s4 |
}

segueFourLHvII =  \relative gs{
    <gs b d>2.^\tenuto |
    <g bf df>^\tenuto |
    <fs a c>^\tenuto |
    fs4 fs, s4 |
}

segueFourLH =  {
    <<
        <<
            \segueFourLHvI \\
            \segueFourLHvII
        >>
        { s1*3/4*3 s2 r4\fermata }
    >>
}


segueFourSuper =  {
    s4^\markup {a tempo} s s |
    \barRest |
    \barRest |
    \barRest |
}

segueFourDynamics =  {
    \segueFourSilent
}

segueFourSub =  {
    \segueFourSilent
}
