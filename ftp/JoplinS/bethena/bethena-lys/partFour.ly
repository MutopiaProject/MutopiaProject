partFourSilent = \notes {
    \repeat volta 2 {
        \bar "||:"
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


partFourRHvI = \notes \relative c' {
    \repeat volta 2 {
        \stemBoth
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
            \stemBoth
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
    \stemBoth
}

partFourRHvII = \notes {
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
        \relative ds''{
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
        \stemBoth\slurBoth
    }
}


partFourRH = \notes {
    <<
        \partFourRHvI \\
        \partFourRHvII
    >>
}


partFourLHvI = \notes {
    \repeat volta 2 \relative f {
        \stemBoth
        <f f,>4 <g g,> <gs gs,> |
        <a a,> <a c f> <a c f> |
        \stemUp
        r4 <bf c e> r |
        r <a d f> <a d f> |
        \stemBoth
        <f f,>4 <a c ds> <a c ds> |
        <e e,> <a c e> <a c e> |
        <e e,> <gs d' e> <gs d' e> |
        <a c e>2 <g c e>4 |
        <f f,>4 <g g,> <gs gs,> |
        <a a,> <a c f> <a c f> |
        \stemUp
        r4 <bf c e> r |
        \stemBoth
    }
    \alternative {
        \relative a {
            \stemUp
            r4 <a d f> r |
            r <a c ds> <a c ds> |
            r <g c e> <g c e> |
            \stemBoth
            <g g,>4 <g b f'> <g b f'> |
            <c, c,> <g' bf c e>2 |
        }
        \relative a {
            \stemUp
            r4 <a d f> r |
            r <f bf d> r |
            r <f a c> r |
            r <d f g> r |
            \stemBoth
            \barRest |
        }
    }
}

partFourLHvII = \notes {
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
            <bf bf,>2 <b b,>4 |
            <c c,>2 <d d,>4 |
            <g, g,>2 <c c,>4 |
            <f f,>2. |
        }
    }
}

partFourLH = \notes {
    <<
        \partFourLHvI\\
        \partFourLHvII
    >>
}

partFourSuper = \notes {
    \repeat volta 2 {
        \once \override TextScript #'extra-offset = #'(0 . -2)
        s4^\markup{ \column < {a tempo} {\italic\smaller cantabile} > } s s |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        s^\markup{rall.} s s |
        \barRest
        \once \override TextScript #'extra-offset = #'(0 . -2)
        s^\markup{a tempo} s s |
        \barRest |
        \barRest |
    }
    \alternative {
        {
            \barRest |
            \barRest |
            \barRest |
            \once \override TextScript #'extra-offset = #'(0 . -0.5)
            s4^\markup{rit.} s s |
            \barRest |
        }
        {
            \barRest |
            \override TextScript #'extra-offset = #'(0 . -2.5)
            s8 s s s^\markup{rit. poco a poco} s s |
            \revert TextScript #'extra-offset
            \barRest |
            \barRest |
            \barRest |
        }
    }
}

partFourDynamics = \notes {
    \repeat volta 2 {
        s4\f s s |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
                                % [mils] hugely ugly code to print "dim." instead
                                %        of ">" (decrescendo)
        \once \override TextScript #'extra-offset = #'(0 . -1)
        \once \override TextScript #'font-series = #'medium
        \once \override Hairpin #'transparent = ##t
        s^\markup{\normalsize\italic dim.}\> s s |
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
            \barRest |
            \barRest |
            \barRest |
            \barRest |
        }
    }
}

partFourSub = \notes {
    \repeat volta 2 {
        \barRest |
        s4\sustainDown s s\sustainUp |
        s4\sustainDown s\sustainUp s |
        s4\sustainDown s s\sustainUp |
        s4\sustainDown s s\sustainUp |
        s4\sustainDown s s\sustainUp |
        s4\sustainDown s s\sustainUp |
        \barRest |
        \barRest |
        s4\sustainDown s s\sustainUp |
        s4\sustainDown s\sustainUp s |
    }
    \alternative {
        {
            s4\sustainDown s\sustainUp s |
            s4\sustainDown s s\sustainUp |
            s4\sustainDown s s\sustainUp |
            s4\sustainDown s s\sustainUp |
            \barRest |
        }
        {
            s4\sustainDown s\sustainUp s |
            s4\sustainDown s\sustainUp s |
            s4\sustainDown s\sustainUp s |
            s4\sustainDown s\sustainUp s |
            \barRest |
        }
    }
}


segueFourSilent = \notes {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueFourRHvI = \notes \relative f'' {
    f8( e f e ef d) |
    e( ds e ds d df) |
    ef( d ef d df c) |
    cs2 r4\fermata |
 }

segueFourRH = \notes {
    \segueFourRHvI
}

segueFourLHvI = \notes \relative as {
    \barRest |
    \barRest |
    \barRest |
    as2 s4 |
}

segueFourLHvII = \notes \relative gs{
    \override TextScript #'padding = #1.2
    <gs b d>2.^\tenuto |
    <g bf df>^\tenuto |
    <fs a c>^\tenuto |
    fs4 fs, s4 |
    \revert  TextScript #'padding
}

segueFourLH = \notes {
    <<
        <<
            \segueFourLHvI \\
            \segueFourLHvII
        >>
        { s1*3/4*3 s2 r4\fermata }
    >>
}


segueFourSuper = \notes {
    \once \override TextScript #'padding = #2
    s4^\markup{a tempo} s s |
    \barRest |
    \barRest |
    \barRest |
}

segueFourDynamics = \notes {
    \segueFourSilent
}

segueFourSub = \notes {
    \segueFourSilent
}
