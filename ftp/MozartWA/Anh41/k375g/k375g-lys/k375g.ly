\version "2.2.1"

\header {
    title = "Fugue fragment Anh. 41 (375g)"
    composer = "Wolfgang Amadeus Mozart (1756-1791)"
        
    mutopiatitle = "Fugue fragment Anh. 41 (375g)"
    mutopiacomposer = "Wolfgang Amadeus Mozart (1756-1791)"
    mutopiaopus = "Anh. 41 (375g)"
    mutopiainstrument = "Piano"
    date = "1777?"
    source = "Autograph"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"
    lastupdated = "2004/May/23"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2004/05/23-447"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 16)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceI = \notes\relative e'' {
    \key g \major

    r4 e d c
    | b c d4.-\trill c16 b
    | a4 b e,4.-\trill fis16 g
    | a4 d,8 e fis g a b
    | g4 \voiceOne d'4. cis8[ g' cis,]
    | a'4.-\trill g16 fis e4 fis
    | g fis8 e d cis b a
    | g4.-\trill fis16 g e4 cis'
    | d8 gis, a b c!2 ~
    | c8 b e4. d8 g4 ~
    | g8 fis g cis, d2
    | r4 e fis g
    | a dis, g cis,
    | e fis,8 g a b cis d
    | b2 ~ b8 cis d b
    | a4 r d b'
    | e,2 ~ e8 g cis, e
    | d4 r r a'
    | g cis, b d
    | g,! e r2
    | R1*2
    | r4 e' d c
    | b c d4.^\trill c16 b
    | a4 b e,4. fis16 g
    | a4 d,8 e fis g a b
    | g4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceII = \notes\relative c'' {
    \voiceTwo

    s1*4
    | r4 b a g
    | fis g a4.-\trill g16 fis
    | e4 fis b,4.-\trill cis16 d
    | e4 a,8 b cis d e fis
    | d2 ~ d8 dis e fis
    | g4. fis8 b4. a8
    | d4 g,4. fis8[ c'? fis,]
    | d'4.-\trill c16 b a4 b
    | c b8 a g[ fis] e[ d]
    | cis?4.-\trill b16 cis a4 fis'
    | g8 cis, d fis g2 ~
    | g8 fis b4. a8 d4 ~
    | d8 cis d gis, a2
    | r4 b cis d
    | e ais, d gis,
    | b cis,8 d e fis g a
    | fis2 ~ fis8 a g dis
    | e g r a g b r cis
    | d4 r a8[ c] fis,[ a]
    | g4 a b4._\trill a16 g
    | fis4 r r2
    | r4 d2 d4
    | d
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceIII = \notes\relative e' {
    \key g \major

    R1*10
    | r4 e d c
    | b c d4.-\trill c16 b
    | a4 b e,4.-\trill fis16 g
    | a4 d,8 e fis g a b
    | g2 ~ g8 ais b cis
    | d4. cis8 fis4. e8
    | \voiceOne a4 d,4. cis8[ g' cis,]
    | a'4.-\trill g16 fis e4 fis
    | g4 fis8 e d[ cis] b[ a]
    | g!4.-\trill fis16 g e4 cis'
    | d8 gis, a b c!2 ~
    | c8 b e4. d8 g4 ~
    | g8 fis g cis, d2
    | d8 g, g g g g b c
    | d4 fis, gis4. a16 b
    | c8 a fis g! a g fis4
    | g
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceIV = \notes\relative b {
    \voiceTwo

    s1*16
    | r4 b a g
    | fis g a4.-\trill g16 fis
    | e4 fis b,4.-\trill cis16 d
    | e4 a,8 b cis d e fis
    | d2 ~ d8 dis e fis
    | g4. fis8 b4. a8
    | d4 g,,4. fis8[ c' fis,]
    | g4 r r2
    | r8 d' d d d d c b
    | a4 c d, c'
    | b
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
    \context PianoStaff <<
	\context Staff = up <<
	    %\clef soprano
	    \context Voice = one \voiceI
	    \context Voice = two \voiceII
	>>  
	\context Staff = down <<
	    \clef bass
	    \context Voice = three \voiceIII
	    \context Voice = four \voiceIV
	>>  
    >>
    \paper { }
    \midi { \tempo 4 = 110 }  
}
