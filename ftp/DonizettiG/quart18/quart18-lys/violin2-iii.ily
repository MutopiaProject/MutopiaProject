\version "2.16.0"

violinIIThirdMov =  \relative e' {
    \key e \major
    \clef violin

    e4\f

    \repeat volta 2 {
\tag #'autograph {
	| \repeat "percent" 3 { e r e }
}
\tag #'edited {
	| \repeat unfold 3 { e r e }
}
        | e2. ~
	| e ~
	| e ~
	| e2 e4
	| dis r r
\tag #'autograph {
	| r2. % [R] Better: R2.
}
\tag #'edited {
	| R2. % [E]
}

% 10
	| r4 r b'
	| b(  cis) ais
	| b r r
	| e,2. ~
	| e ~
	| e
	| dis4(  fis) dis
	| e2.
	| dis
	| <cis e>
    }

    \alternative {
        {
% 20
	    | <b dis>4 r e
	}

	{
	    | dis4 r b
	}
    }

    \repeat volta 2 {
\tag #'autograph {
        | \repeat "percent" 6 { b4 r b }
}
\tag #'edited {
        | \repeat unfold 6 { b4 r b }
}
	| b4 r b
\tag #'autograph {
	| c(  e) d
}
\tag #'edited {
	| c(\pp % [E]
           e) d
}

% 30
	| c2. ~
	| c4 e(  d)
	| c2.
	| r4 as'(  g)
	| f2.
	| e8 r e4( d
	|  c) g'( f
	|  e8) r e4(  d)
	| c2.
	| r4 fis(  g)

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
	|  b8) r r4 c4(
	|  b8) r r4 e(
	|  dis8) r-\cresc r4 cis!(

% 50
	|  b8) r r4 e(
	|  dis8) r r4 r
	| r r b,(
	|  c) r r
	| r r b(
	|  c2.)(
	| cis!-\cresc
	| d
	|  dis!)

% 59
\tag #'autograph {
	| \repeat "percent" 4 { e4 r e }
}
\tag #'edited {
	| \repeat unfold 4 { e4 r e }
}
	| e2. ~
	| e ~
	| e ~
	| e
\tag #'autograph {
	| \repeat "percent" 4 { d4\f r d }
}
\tag #'edited {
	| \repeat unfold 4 { d4\f r d }
}

% 71
	| d4 r r
	| c2.(
	|  b2) b'4
	| a2.
	| g ~
	| g2 f4
	| e d c
	| c r <b a'>\f
	| <b gis'!> r c' ~

% 80
	| c r c ~
	| c r ais(
	|  b) r <fis! dis'!>
	| <gis e'> r r
	| a2.\p ~
	| a ~
	| a
	| gis4(  b) gis
	| dis2.
\tag #'autograph {
	| cis
}
\tag #'edited {
	| cisis % [E] In the autograph, Cis
}

% 90
	| dis
	| e4 r <b a'>\f
	| <b gis'> r e
    }

    \alternative {
        {
	    | e4 r r
	}

	{
	    | e r r
	}
    }

    % Trio
    \break
    \key b \major

    \repeat volta 2 {
\tag #'autograph {
        | \repeat "percent" 9 { r4 <b dis>\p <b dis> }
}
\tag #'edited {
        | \repeat unfold 9 { r4 <b dis>\p <b dis> }
}

% 104
	| r4 <b dis> <b dis>
\tag #'autograph {
	| \repeat "percent" 2 { r <b e> <b e> }
	| \repeat "percent" 2 { r <cis e> <cis e> }
}
\tag #'edited {
	| \repeat unfold 2 { r <b e> <b e> }
	| \repeat unfold 2 { r <cis e> <cis e> }
}
	| r <b gis'> <b gis'>

% 110
	| r <b fis'> <b fis'>
\tag #'autograph {
	| \repeat "percent" 8 { r <b dis> <b dis> }
}
\tag #'edited {
	| \repeat unfold 8 { r <b dis> <b dis> }
}
	| r <b gis'> <b gis'>
	| r <b gis'> <b gis'>
\tag #'autograph {
	| \repeat "percent" 2 { r <cis fisis> <cis fisis> }
	| \repeat "percent" 2 { r <b gis'> <b gis'> }
}
\tag #'edited {
	| \repeat unfold 2 { r <cis fisis> <cis fisis> }
	| \repeat unfold 2 { r <b gis'> <b gis'> }
}
    }

    \alternative {
        {
	    | fisis'2.(
	    |  fis!4) r r
	}

	{
	    | r4 <ais, fisis'> <ais fisis'>
	}
    }

\tag #'autograph {
    | \repeat "percent" 3 { r4 <ais fisis'> <ais fisis'> }
}
\tag #'edited {
    | \repeat unfold 3 { r4 <ais fisis'> <ais fisis'> }
}
    \repeat volta 2 {
% 131
\tag #'autograph {
        | \repeat "percent" 2 { r4 <cis fisis> <cis fisis> }
        | \repeat "percent" 2 { r4 <bis gis'> <bis gis'> }
        | \repeat "percent" 2 { r4 <gis fis'> <gis fis'> }
}
\tag #'edited {
        | \repeat unfold 2 { r4 <cis fisis> <cis fisis> }
        | \repeat unfold 2 { r4 <bis gis'> <bis gis'> }
        | \repeat unfold 2 { r4 <gis fis'> <gis fis'> }
}
        | r <gis eis'> <gis eis'>
        | r <gis e'> <gis e'>
\tag #'autograph {
	| \repeat "percent" 2 { r <a e'> <a e'> }
}
\tag #'edited {
	| \repeat unfold 2 { r <a e'> <a e'> }
}
% 141
        | r4 <b d> <b d>
	| r4 <b d> <b d>
	| d2. ~
	| d2 b4
	| ais r r
\tag #'autograph {
	| r2. % [R] Better: R2.
	| \repeat "percent" 3 {
             r4 <b dis> % [R] Better to place a cautionary accidental to dis
             <b dis>
          }
}
\tag #'edited {
	| R2. % [E]
	| \repeat unfold 3 {
             r4 <b dis!> % [E]
             <b dis>
          }
}
% 150
        | r <b dis> <b dis>
\tag #'autograph {
	| \repeat "percent" 2 { r <b e> <b e> }
	| \repeat "percent" 2 { r <b eis> <b eis> }
}
\tag #'edited {
	| \repeat unfold 2 { r <b e> <b e> }
	| r <b eis> <b eis>
	| r <b eis>-\cresc <b eis>
}
	| r <b fis'> <b fis'>
	| r <b fis'> <b fis'>
	| r <b fis'>\f <b fis'>
	| r <b fis'> <b fis'>
% 159
\tag #'autograph {
	| \repeat "percent" 2 { <ais ais'> <ais ais'> <ais ais'> }
}
\tag #'edited {
	| \repeat unfold 2 { <ais ais'> <ais ais'> <ais ais'> }
}
}
    \alternative {
        {
	    | <dis b'>4 r r
	    | R2.
	}
	{
	    | <dis b'>4 r
        }
    }

    \bar "||"
}
