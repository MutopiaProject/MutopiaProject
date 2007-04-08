\version "2.1.27"

\header {
    title = "Fugue in G Minor KV 154/385k"
    subtitle = "(Completed by Simon Sechter, 1788-1867)"
    composer = "Wolfgang Amadeus Mozart (1756-1791)"

    mutopiatitle = "Fugue in G Minor KV 154/385k"
    mutopiacomposer = "Wolfgang Amadeus Mozart (1756-1791)"
    mutopiaopus = "KV 154/385k"
    mutopiainstrument = "Piano"
    date = "1782?"
    source = "Breitkopf und H\"artel (1878-1887)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"
    lastupdated = "2004/Feb/29"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2004/02/29-425"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Let's make the score a little smaller than the default
#(set-global-staff-size 18)

% These macros are used for the second voice only
staffUp = { \change Staff=up \voiceTwo }
staffDown = { \change Staff=down \voiceOne }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceI = \notes\relative d'' {
    \voiceOne
    \key g \minor

    R1*3
    | d2 g,
    | bes4 b c cis
    | d2 g,
    | r8 bes c d es!2 ~
    | es8 a, bes c d2 ~
    | d8 g, a bes c2 ~

% 10
    | c8 bes4 a g fis8
    | g d g bes a4 d8 fis,
    | g c, c' bes a d, d' c
    | bes4. c8 a4. d8
    | g,4. a8 f4. bes8
    | es,4. f8 d4. g8 ~
    | g cis, g'4. d8 g4 ~
    | g8 g4 g bes8 a g
    | a f4 e d cis8
    | d8 r r4 r8 d' g f

% 20
    | e2 ~ e8 g f e
    | d2 ~ d8 f e d
    | cis4 d8 e a, d ~ d cis
    | bes a bes4. g8 c4 ~
    | c8 c4 c8 ~ c es d c
    | c b bes a ~ a g4 fis8
    | g4 d'8 c bes4 a
    | g2 a4. es'!8
    | d4 r r2
    | c2 g

% 30
    | as4 a bes b
    | c2^\markup { \large "(Sechter.)" } g ~
    | g8 e fis c' ~ c a bes4 ~
    | bes8 gis a2 g8 d'
    | c2 ~ c8 a d c
    | bes c d4 ~ d8 c d es ~
    | es8 a, d4 ~ d8 g, c4 ~
    | c8 f, bes4 ~ bes8 b c cis
    | d2 ~ d8 es d4 ~
    | d8 c d4 ~ d8 c bes a

% 40
    | a4 fis g8 a bes c
    | d2 g
    | fis4 f e es
    | d2 g,
    | r8 g' es d c4 es ~
    | es8 f d c bes2 ~
    | bes8 c a g fis2
    | g d
    | f4 fis g gis
    | a2 d,

% 50
    | r8 fis g a bes c d bes
    | c bes a b c d c a
    | fis a d c bes! a bes c
    | a2 ~ a8 g4 fis8
    | g1

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceII = \notes\relative g' {
    \voiceTwo

    g2 d
    | es4 e f fis
    | g2 d
    | r8 g, g a bes c bes a
    | g d' g f e a, a' g
    | fis e d c bes c bes a
    | g2 r8 c d es!
    | f2 ~ f8 bes, c d
    | es2 ~ es8 a, bes c

% 10
    | d4 c bes a
    | bes g'4. fis8 d c \staffDown
    | bes8 g4 c a d8
    | d \staffUp d g4. d8 f!4 ~
    | f8 bes, es4. bes8 d4 ~
    | d8 g, c4. g8 bes4 \staffDown
    | e,4. cis8 d4. g8
    | f4 e2 s4 \staffUp
    | a bes \staffDown f e
    | f8 \staffUp f'[ g a] bes2 ~

% 20
    | bes8 e, f g a2 ~
    | a8 d, e f g2 ~
    | g8 bes a g g4 f! ~
    | f4. \staffDown f,8 g4. c8
    | bes4 a2 \staffUp a'4
    | d, r r2
    | g2 d
    | es4 e f fis
    | g2 d \staffDown
    | c8 b c d \staffUp es f g es

% 30
    | c g' f es d as' g f
    | es c f4 ~ f8 d es d
    | c4 d8 e fis4 g8 f
    | e4. es8 d fis g4 ~
    | g8 e a g fis4 a
    | d,2 g
    | fis4 f e es
    | d2 g ~
    | g8 fis g a bes c bes a
    | g as g f es4 g

% 40
    | fis8 es d c bes c \staffDown bes a
    | g \staffUp c' bes a g4 r
    | d'2 g,
    | as4 a bes b
    | c2 g
    | f ~ f8 g es d
    | es2 ~ es8 a, d c ~
    | c c bes a bes a bes c
    | a d4 c8 b f'4 e8 ~
    | e \staffDown e, a g fis e fis a \staffUp

% 50
    | d2 g
    | fis4 f e es
    | d2 g ~
    | g8 g fis e d4 c
    | bes1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceIII = \notes\relative g {
    \voiceTwo
    \key g \minor

    R1*10

% 11
    | g2 d
    | es4 e f fis
    | g2 d
    | es bes
    | c g
    | a bes
    | b4 c cis2
    | d4 g, a2
    | d4 r r8 g a bes

% 20
    | c2 ~ c8 f, g a
    | bes2 ~ bes8 e, f g
    | a4 b8 cis d2
    | d, es!
    | e4 f fis2
    | g4 c, d8 es' d c
    | c b bes a a g4 fis8
    | g c, c' bes a d, d' c ~
    | c c bes a bes a bes g
    | as g as f c' g es c

% 30
    | f2 g
    | c,8 es as f b4 c8 bes
    | a!2 d
    | cis4 c b bes
    | a2 d4 fis,
    | g8 a bes c bes a bes c
    | d4 b8 g c4 a8 f
    | bes!4 g8 f es2
    | d g,
    | bes4 b c cis

% 40
    | d2 g,4. a8
    | bes fis g a bes c d es
    | d a' bes b c d es! c
    | f f,4 f'8 ~ f es d f
    | es2 ~ es8 d c bes
    | a4 bes8 a g4 g,
    | c2 d
    | g,1
    | d'
    | cis2 c

% 50
    | b bes
    | a1
    | << { s1 r4 c' bes a g1 } \\ { d1 ~ d1 g, }  >>

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
    \context PianoStaff <<
	\context Staff = up <<
	    \context Voice = one \voiceI
	    \context Voice = two \voiceII
	>>
	\context Staff = down <<
	    \clef bass
	    \context Voice = three \voiceIII
	>>
    >>
    \paper { }
    \midi { \tempo 4 = 110 }
}


