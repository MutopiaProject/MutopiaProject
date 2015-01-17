\version "2.18.2"

\header {
    title = "Fugue Fragment"
    composer = "Wolfgang Amadeus Mozart (1756-1791)"
    opus = "Anh. 41 (375g)"
        
    mutopiatitle = "Fugue fragment Anh. 41 (375g)"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "Anh. 41 (375g)"
    mutopiainstrument = "Piano"
    date = "1777?"
    source = "Autograph"
    style = "Classical"
    license = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"

    moreInfo = "<p>The source text used in the preparation of this score is a photography of the autograph reproduced in the booklet of the CD \"Wolfgang Amadeus Mozart - Fragments and Unfinished Works for Piano\" by Duo Crommelynck (Claves Records, CD 50-9109).  This fugue was probably begun in 1776-77.</p><p>The autograph was reproduced as faithfully as possible, except for some minor instances:</p><ol><li>The upper staff in the autograph uses a soprano clef, which is not common practice today.  It has been therefore substituted with a treble clef.</li><li>A lot of switches between the upper and lower staff occur in the third voice.  In this reproduction of the score, the first two voices are written in the upper staff, while the others are always placed in the second staff.</li><li>Mozart did not write full bar rests, preferring to leave the bar blank.  In this edition, full bar rests are always written.</li></ol><p>Maurizio Tomasi, May 2004</p><p>An interesting article about this piece was posted to the Mozart Forum by Dennis Pajot. It can be read at: <a href=\"http://www.mozartforum.com/VB%5Fforum/showthread.php?t=72\">http://www.mozartforum.com/VB%5Fforum/showthread.php?t=72</a></p>"

 footer = "Mutopia-2015/01/17-447"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 16)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceI = \relative e'' {
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

voiceII = \relative c'' {
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

voiceIII = \relative e' {
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

voiceIV = \relative b {
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
	\context Staff = "up" <<
	    %\clef soprano
	    \context Voice = "one" \voiceI
	    \context Voice = "two" \voiceII
	>>  
	\context Staff = "down" <<
	    \clef bass
	    \context Voice = "three" \voiceIII
	    \context Voice = "four" \voiceIV
	>>  
    >>
    \layout { }
    
  \midi {
    \tempo 4 = 110
    }

  
}
