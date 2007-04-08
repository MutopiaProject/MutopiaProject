celloThirdMov = \notes \relative g, {
    \key es \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	s16 r4
	| g2-\f r4
	| as2 r4
	| R2.*2
	| bes2(-\p )d4
	| es2 r4
	| c2-\f r4
	| f,2. ~
	| f-\p ~

% 10
	| f
	| f'4 r r
	| bes, r r
	| f r r
	| bes r g'
	| es r f
	| bes,2. ~
	| bes ~
	| bes ~
	| bes ~

% 20
	| bes4 r r
	| es-\f f f,
	| bes r d-\p
	| es r f
	| g r g,
	| f r f
	| bes bes'
    }

    \repeat volta 2 {
        r4
        | g8-\p r es r g r
	| as! r g r r4
	| as8 r f r es r
	| d r bes r r4
	| es,8 r as r f r
	| bes r g r c r
	| as r f r es r
	| bes'4 r r
	| R2.*2
	| g2-\f r4
	| as2 r4
	| R2.*2

% 41
	| bes2.-\p
	| es,2 r4
	| g2-\f r4
	| as2 r4
	| a2 r4
	| bes2. ~
	| bes-\p
	| es4 r r
	| bes r r

% 50
	| es r r
	| bes r r
	| es, r c'
	| as r bes
	| es,2. ~
	| es ~
	| es ~
	| es ~
	| es4 r es'-\f
	| as, bes bes

% 60
	| es,2.-\sf
	| es-\sf
	| es-\sf
	| es-\sf
	| es2-\sf es'4
	| as bes bes,
	| es r g-\p
	| as r bes
	| c r c,
	| bes r bes

% 70
	| es, es'
    }

    \break
    \key bes \major

    \repeat volta 2 {
        r4
	| R2.
	| c,2.-\p ~
	| c ~
	| c ~
	| c
	| c'2( ~ [c8 )d]
	| es4 f f,
	| bes2(-\fp )d4
	| es r f

% 80
	| bes,2. ~
	| bes ~
	| bes ~
	| bes ~
	| bes4 r
    }

    \break

    \repeat volta 2 {
        r4
	| R2.
	| g2. ~
	| g ~
	| g ~
	| g ~

% 90
	| g4 r r
	| r r c
	| f,2. ~
	| f ~
	| f ~
	| f
	| f'4.( a8 [f a]
	| [g_\cresc bes g bes e, )g]
	| [f( c' es! d c bes]
	| [a g f es! d )c]

% 100
	| bes2. ~
	| bes ~
	| bes ~
	| bes ~
	| bes4 r
    }
}
