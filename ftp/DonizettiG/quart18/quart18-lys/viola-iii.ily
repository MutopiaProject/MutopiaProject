\version "2.16.0"

violaThirdMov =  \relative e {
    \key e \major
    \clef alto

    e4\f
    \repeat volta 2 {
\tag #'autograph {
	| \repeat "percent" 3 { e r e }
}
\tag #'edited {
	| \repeat unfold 3 { e r e }
}
        | e r a
	| gis(  e8) r a4
	| gis(  e8) r cis'4
	| b(  gis8) r a4
\tag #'autograph {
	| a2. ~ % [R] b?
	| a ~   % [R] Ditto
}
\tag #'edited {
	| b2. ~ % [E] The autograph had a dissonance with Violin I
	| b ~   % [E]
}

% 10
\tag #'autograph {
	| a     % [R] Ditto
}
\tag #'edited {
	| b     % [E]
}
	| b4(  ais) e'
	| dis r r
	| c2. ~
	| c ~
	| c
	| b4(  dis!) b
	| ais2.
	| fis
	| ais
    }

    \alternative
    {
        {
% 20
            | <fis b>4 r e
	}

	{
	    | b'4 r r
	}
    }

    \repeat volta 2 {
\tag #'autograph {
        | \repeat unfold 3 { r2. } % [R] Better: R2.
}
\tag #'edited {
        | \repeat unfold 3 { R2. } % [E]
}
	| r4 r b(
	| ais2  a4)
	| gis!2( g4
	| fis2  f4)
\tag #'autograph {
	| e(  g) f
}
\tag #'edited {
	| e(\pp % [E]
           g) f
}

% 30
	| e2. ~
	| e4 g(  f)
	| e2.
	| r4 f'(  e)
	| d2.
	| c8 r g4( f
	|  e) e'( d
	|  c8) r g4(  f)
	| e2.
	| r4 fis!(  g)

% 40
	| a2. ~
	| a4 gis!(  a)
	| ais2.
	| b8 r c4 ~ c8 r
\tag #'autograph {
	| \repeat "percent" 2 { r4 c ~ c8 r }
}
\tag #'edited {
	| \repeat unfold 2 { r4 c ~ c8 r }
}
	| r4 cis!2(->
	|  b8) r r4 e4(
	|  dis8) r r4 fis4 ~
	| fis8 r-\cresc r4 e(

% 50
	|  dis!8) r r4 fis ~
	| fis8 r r4 r
	| r r b,4(
	|  c) r r
	| r r b!(
\tag #'autograph {
	| b!2. % [R] c2. ?
}
\tag #'edited {
	| c!2. % [E]
}
	| cis!-\cresc
	| d
	|  dis)

% 59
\tag #'autograph {
	| \repeat "percent" 4 { e4 r e, } % [R] This repeat is strange...
}
\tag #'edited {
        | e'4 r e,
	| \repeat unfold 3 { e r e } % [E]
}
	| e4 r a
	| gis(  e8) r a4
	| gis(  e8) r cis'4
	| b( a  gis)
\tag #'autograph {
	| \repeat "percent" 4 { d'\f r d, } % [R] Ditto
}
\tag #'edited {
	| d'\f r d,
	| \repeat unfold 3 { d r d } % [E]
}

% 71
	| d4 r r a'2.
	| g2(  g'4)
	| fis2.
	| e
	| b4( a  g)
	| g g g
	| a r fis!\f
	| e r bes''(
	|  a) r bes(

% 80
	|  a) r fis! ~
	| fis r <b, b'>
	| <b b'> r r
	| f'2.\p ~
	| f ~
	| f
	| e4(  gis) e
	| a,2.
	| fis

% 90
	| a
	| gis4 r <b fis'>\f
	| <b e> r e,
    }

    \alternative
    {
        {
	    | e4 r r
	}

	{
	    | e4 r r
	}
    }

    % Trio

    \break
    \bar "||"
    \key b \major

    \repeat volta 2 {
\tag #'autograph {
        | \repeat "percent" 9 { s4 % [R] Better: r4
                                fis\p fis }
}
\tag #'edited {
        | \repeat unfold 9 { r4 % [E]
                             fis\p fis }
}
        | r fis fis
\tag #'autograph {
	| \repeat "percent" 2 { r cis' cis }
}
\tag #'edited {
	| \repeat unfold 2 { r cis cis }
}
        | r fis, fis
	| r ais ais
	| r <eis b'> <eis b'>

% 110
	| r <fis dis'> <fis dis'>
\tag #'autograph {
	| \repeat "percent" 8 { r <fis b> <fis b> }
}
\tag #'edited {
	| \repeat unfold 8 { r <fis b> <fis b> }
}
	| r <gis b> <gis b>
	| r <gis b> <gis b>
\tag #'autograph {
	| \repeat "percent" 4 { r dis dis }
}
\tag #'edited {
	| \repeat unfold 4 { r dis dis }
}
    }

    \alternative
    {
        {
            | dis'2.(
	    | <fis, e'!>)
	}

	{
            | r4 dis' dis
	}
    }

\tag #'autograph {
        | \repeat "percent" 3 { r dis dis }
}
\tag #'edited {
    | \repeat unfold 3 { r dis dis }
}

\repeat volta 2 {
% 131
\tag #'autograph {
	| \repeat "percent" 2 { r ais ais }
	| \repeat "percent" 2 { r dis dis }
	| \repeat "percent" 2 { r <gis, dis'> <gis dis'> }
	| \repeat "percent" 2 { r <gis cis> <gis cis> }
	| \repeat "percent" 2 { r <fis cis'> <fis cis'> }
}
\tag #'edited {
	| \repeat unfold 2 { r ais ais }
	| \repeat unfold 2 { r dis dis }
	| \repeat unfold 2 { r <gis, dis'> <gis dis'> }
	| \repeat unfold 2 { r <gis cis> <gis cis> }
	| \repeat unfold 2 { r <fis cis'> <fis cis'> }
}

% 141
\tag #'autograph {
	| \repeat "percent" 2 { r <fis b> <fis b> }
}
\tag #'edited {
	| \repeat unfold 2 { r <fis b> <fis b> }
}
        | b2. \< ~
	|  b2\! \>  d4\!
	| cis r r
\tag #'autograph {
	| r2. % [R] Better: R2.
	| \repeat "percent" 4 { r4 fis, fis }
}
\tag #'edited {
	| R2. % [E]
	| \repeat unfold 4 { r4 fis fis }
}

% 151
\tag #'autograph {
	| \repeat "percent" 2 { r gis gis }
}
\tag #'edited {
	| \repeat unfold 2 { r gis gis }
}
        | r g g
\tag #'autograph {
	| r <g d'> <g d'>
}
\tag #'edited {
	| r <g d'>-\cresc <g d'>
}
	| \repeat unfold 2 { r <fis dis'!> <fis dis'> }
	| r <fis dis>\f <fis dis>
	| r <fis dis> <fis dis>
\tag #'autograph {
	| \repeat "percent" 2 { <fis e'> <fis e'> <fis e'> }
}
\tag #'edited {
	| \repeat unfold 2 { <fis e'> <fis e'> <fis e'> }
}
}

    \alternative { % [E]
        {
% 161
	    | <fis b>4 r r
	    | R2.
        }
	{
	    | <fis dis'>4 r
        }
    }

    \bar "||"
}
