\version "2.14.2"

tenorI =
{
    \autoBeamOff
    \dynamicUp
    d=4.\f d8 fis4 a4
    d2 a2
    \breathe
    d4.\f d8\< d4\! e4
    fis2. \oneVoice r4 \voiceOne
    a,4.\mf a8 d4 d4
    cis2. dis4
    \breathe
    e4. a,8 cis4\> b4\!
    a2. \oneVoice r4 \voiceOne

    \repeat volta 2
    {
        b4.\mf b8 b4\< cis4\!
        d1
        \breathe
        e4.\< cis8\! d4 e4
        fis1
        \breathe
        d4\f\< a4\! d4 e4
        fis2\ff \breathe a4\accent g4\accent
        fis2. e4\>
        << d2. { s4 s4 s4\! } >> \oneVoice r4 \voiceOne
    }
    \bar "|."
}

tenorII =
{
    \autoBeamOff
    \dynamicUp
    d=4. d8 fis4 a4
    d2 a2
    a4. a8 b4 cis4
    d2. s4
    a4. a8 b4 b4
    << b2 { s4\< s4\! } >> a2
    cis4. a8 a4 gis4
    a2. s4

    \repeat volta 2
    {
        g4. b8 b4 ais4
        b1
        cis4. a8 b4 cis4
        d1
        d4 a4 d4 cis4
        d2 d4 e4
        d2 cis2
        a2. s4
    }
    \bar "|."
}

bassI =
{
    \autoBeamOff
    \dynamicUp
    d=4.\f d8 fis4 a4
    d2 a2
    \breathe
    fis4.\f fis8\< fis4\! a4
    a2. \oneVoice r4 \voiceOne
    fis4.\mf e8 fis4 fis4
    eis4\< gis4\! fis2
    \breathe
    a4. fis8 e4\> d4\!
    cis2. \oneVoice r4 \voiceOne

    \repeat volta 2
    {
        g'4.\mf g8 g4\< fis4\!
        fis1
        \breathe
        a4.\< a8\! a4 a4
        a1
        \breathe
        d4\f\< a4 a4\! a4
        a2\ff \breathe a4\accent b4\accent
        a2 << g2 { s4 s4\> } >>
        << fis2. { s4 s4 s4\! } >> \oneVoice r4 \voiceOne
    }
    \bar "|."
}

bassII =
{
    \autoBeamOff
    \dynamicUp
    d=4. d8 fis4 a4
    d2 a2
    d,4. d8 b4 a4
    d2. s4
    d4. cis8 b4 b4
    cis2 fis2
    e4. fis8 e4 e4
    a,2. s4

    \repeat volta 2
    {
        R1*1*4/4
        b4. d8 fis4 b4
        a2. r4
        d,4. d8 fis4 a4
        d4 a4 fis4 e4
        d2 fis4 g4
        a2 a,2
        d2. s4
    }
}

textFirst =
{
    \set stanza = "1. "
    \lyricmode
    {
        Wie4. ein8 stol4 -- zer4
        Ad2 -- ler2
        schwingt4. sich8 auf4 das4
        Lied,2. " "4
        daß4. es8 froh4 die4
        See2 -- le2
        auf4. zum8 Him4 -- mel4
        zieht.2. " "4
        Weckt4. in8 uns'4 -- rer4
        Brust1
        ho4. -- he8 heil'4 -- ge4
        Lust,1
        weckt4 in4 uns'4 -- rer4
        Brust2 ho4 -- he4
        heil'2. -- ge4
        Lust.4.
    }
}

textSecond =
{
    \set stanza = "2. "
    \lyricmode
    {
        Was4. der8 tief4 -- sten4
        See2 -- le2
        je4. Er8 -- qui4 -- ckung4
        beut,2. " "4
        al4. -- les8 Gro4 -- ße,4
        Ed2. -- le,4
        Treu'4. und8 Ei4 -- nig4 --
        keit,2. " "4
        Lieb'4. und8
        Ta4 -- ten4 --
        drang1
        we4. -- cket8 der4 Ge4 --
        sang,1
        Lieb'4 und4 Ta4 -- ten4 --
        drang2 we4 -- cket4
        der2. Ge4 --
        sang.1
    }
}

textThird =
{
    \set stanza = \markup { \bold { \italic { "più p" } } "3. " }
    \lyricmode
    {
        Al4. -- les8 Zar4 -- te,4
        Schö2 -- ne,2
        was4. die8 Brust4 be4 --
        wegt,2. " "4
        al4. -- les8 gött4 -- lich4
        Ho2. -- he,4
        das4. zum8 Him4 -- mel4
        trägt:2. " "4
        Al4. -- les4 das4 er4 --
        blüht1
        freu4. -- dig8 aus4 dem4
        Lied,1
        das,4 ja4 das4 er4 --
        blüht2 freu4 -- dig4
        aus2. dem4
        Lied.2. " "4
    }
}

textBassFirst =
{
    \lyricmode
    {
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        Weckt4. in8 uns'4 -- rer4
        Brust2. " "4
        ho4. -- he,8 heil'4 -- ge4
        Lust,4 in4 uns'4 -- rer4
        Brust2 ho4 -- he,4
        heil'2 -- ge2
        Lust.2.
    }
}

textBassSecond =
{
    \lyricmode
    {
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        Lieb'4. und8 Ta4 -- ten4 --
        drang2. " "4
        we4. -- cket8 der4 Ge4 --
        sang,4 ja4 Ta4 -- ten4 --
        drang2 we4 -- cket4
        der2 Ge2 --
        sang.2.
    }
}

textBassThird =
{
    \lyricmode
    {
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        " "1
        Al4. -- es8 das4 er4 --
        blüht2. " "4
        freu4. -- dig8 aus4 dem4
        Lied,4 ja4 das4 er4 --
        blüht2 freu4 -- dig4
        aus2 dem2
        Lied.2.
    }
}

tenor = \relative c
{
    \key d \major
    \time 4/4
    \clef "treble_8"

    <<
        \tenorI \\
        \tenorII
    >>
}

bass = \relative c
{
    \key d \major
    \time 4/4
    \clef bass

    <<
        \bassI \\
        \bassII
    >>
}

\header
{
    title       = "Das Lied"
    subtitle    = "" 
    composer    = "Ludwig Spohr (1784 - 1859)"
    opus        = ""
    arranger    = ""
    poet        = "Heinrich Schütz"
    meter       = \markup { \bold { Kräftig und bewegt } }

 
    mutopiatitle        = "Das Lied"
    mutopiacomposer     = "SpohrL"
    mutopiapoet         = "Heinrich Schütz"
    mutopiaopus         = ""
    mutopiainstrument   = "Choir (TTBB)" 
    date                = "" 
    source              = "Zürcherische Liederbuchanstalt, 1896"
    style               = "Romantic" 
    copyright           = "Creative Commons Attribution 3.0" 
    maintainer          = "Peter Salewsky" 
    lastupdated         = "2012/January/14" 

 footer = "Mutopia-2012/02/05-1828"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

\score
{
    \context ChoirStaff
    <<
        \new Staff \tenor
        \new Lyrics \textFirst
        \new Lyrics \textSecond
        \new Lyrics \textThird
        \new Staff \bass
        \new Lyrics \textBassFirst
        \new Lyrics \textBassSecond
        \new Lyrics \textBassThird
    >>
    \layout {}
  
    \midi
    {
        \context
        {
            \Staff
            \remove "Staff_performer"
        }
        \context
        {
            \Voice
            \consists "Staff_performer"
        }
        \context
        {
            \Score
            tempoWholesPerMinute = #(ly:make-moment 120 4)
        }
    }
}
