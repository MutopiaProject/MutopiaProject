
% Abstract 1, work for piano by Stephen C. Doonan, xscd@xscd.com

\version "2.6.3"

\paper { }

\header {
    title = "Abstract 1"
    composer = \markup \center-align { "Stephen C. Doonan" \small "(1952- )" }
    piece = \markup { "Allegro (" \tiny \note #"4" #0.75 \normalsize " = 125-140)" }

% Mutopiaproject.org headers

    mutopiatitle = "Abstract 1"
    mutopiacomposer = "DoonanSC"
    mutopiainstrument = "Piano"
    date = "2005/Jul"
    source = "Composer"
    style = "Jazz"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    maintainer = "Stephen C. Doonan"
    maintainerEmail = "xscd@xscd.com"
    maintainerWeb = "http://www.xscd.com/pub/music/"
    lastupdated = "2005/Aug/05"
   
   footer = "Mutopia-2005/08/06-573"
   tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}



rightHand = \relative c' {

% measure 1, intro / motive a (right hand)
    \clef treble
    \key d \major
    \time 3/4
    <<
        {
          c8 d e fis d[ e
        fis g] e fis g a
        g a b cis a[ b
        cis d] b cis d e
        }
    \\
        {
        g,,2 a4~
        a4 b2
        d2 e4~
        e4 fis2
        }
    >>
    \time 5/4
    <a c f>4. <g c e f>~ <g c e f>2
    <c, e f a>4.\arpeggio <b e g a>~ <b e g a>2

% measure 7, motive b (right hand)
    \key fis \minor
    <d g a d>4.\arpeggio <fis d'>4. << { a8 b cis } \\ { g4. } >> <e a d>8~
    <e a d>8 e'8 cis4 <b e>8 cis a b a b->~
    b4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2~
    <gis cis e>4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2
    <d g a d>4.\arpeggio <fis d'>4. << { a8 b cis } \\ { g4. } >> <e a d>8~
    <e a d>8 e'8 b cis a fis' b, cis a b~
    b4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2~
    <gis cis e>4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2

% measure 15, melodic motive, c (right hand)
    fis'4. a8 gis a \times 2/3 { fis16 gis fis } e8 fis fis->~
    fis8 a gis a \grace { gis16[ a] } b8 gis fis e fis fis->~
    fis4 b,2~ b8 cis~ cis4
    \grace { b16[ cis] } d4 e8 cis4.~ cis8 b cis d
    cis \times 2/3 { d16 cis b } a2~ a8 b~ b cis
    d cis b a4 a8 b g a b
    <e, a b e>4.\arpeggio <fis b e>4.~ <fis b e>2
    <e a b e>4.\arpeggio <fis b e>4.~ <fis b e>4 a8 b
    b4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2~
    <gis cis e>4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2
    
% measure 25, motive b (right hand)
    <d g a d>4.\arpeggio <fis d'>4. << { a8 b cis } \\ { g4. } >> <e a d>8~
    <e a d>8 e'8 cis4 <b e>8 cis a b a b->~
    b4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2~
    <gis cis e>4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2
    <d g a d>4.\arpeggio <fis d'>4. << { a8 b cis } \\ { g4. } >> <e a d>8~
    <e a d>8 e'8 b cis a fis' b, cis a b~
    b4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2~
    <gis cis e>4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2

% measure 33, motive a (right hand)
    \key d \major
    \time 3/4
    <<
        {
        c,8 d e fis d[ e
        fis g] e fis g a
        g a b cis a[ b
        cis d] b cis d e
        }
    \\
        {
        g,,2 a4~
        a4 b2
        d2 e4~
        e4 fis2
        }
    >>
    \time 5/4
    <a c f>4. <g c e f>~ <g c e f>2
    <c, e f a>4.\arpeggio <b e g a>~ <b e g a>2

% measure 39, motive b (right hand)
    \key fis \minor
    <d g a d>4.\arpeggio <fis d'>4. << { a8 b cis } \\ { g4. } >> <e a d>8~
    <e a d>8 e'8 cis4 <b e>8 cis a b a b->~
    b4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2~
    <gis cis e>4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2
    <d g a d>4.\arpeggio <fis d'>4. << { a8 b cis } \\ { g4. } >> <e a d>8~
    <e a d>8 e'8 b cis a fis' b, cis a b~
    b4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2~
    <gis cis e>4. \grace <a cis fis>8~ <a d fis>4. <gis cis e>2

% measure 47, melodic motive, c (right hand)
    fis'4. a8 gis a \times 2/3 { fis16 gis fis } e8 fis fis->~
    fis8 a gis a \grace { gis16[ a] } b8 gis fis e fis fis->~
    fis4 b,2~ b8 cis~ cis4
    \grace { b16[ cis] } d4 e8 cis4.~ cis8 b cis d
    cis \times 2/3 { d16 cis b } a2~ a8 b~ b cis
    d cis b a4 a8 b g a b
    <e, a b e>4.\arpeggio <fis b e>4.~ <fis b e>2
    <e a b e>4.\arpeggio <fis b e>4.~ <fis b e>2

% measure 55, motive a (right hand)
    \key d \major
    \time 3/4
    <<
        {
        c8 d e fis d[ e
        fis g] e fis g a
        g a b cis a[ b
        cis d] b cis d e
        }
    \\
        {
        g,,2 a4~
        a4 b2
        d2 e4~
        e4 fis2
        }
    >>
    \time 5/4
    <a c f>4. <g c e f>~ <g c e f>2
    <c, e f a>4.\arpeggio <b e g a>~ <b e g a>2
    <a' c f>4. <g c e f>~ <g c e f>2
    <c, e f a>4.\arpeggio <b e g a>~ <b e g a>2~
    <b e g a>4~ r1 \bar "|."
}

leftHand = \relative c {

% measure 1, intro / motive a (left hand)
    \clef bass
    \key d \major
    \time 3/4
    a,8 e' a b, fis' b
    c, g' c d, a' d
    e, b' e fis, cis' fis
    g, d' g a, e' a
    \time 5/4
    #(override-auto-beam-setting '(end * * 5 4) 3 8 'Staff)
    #(override-auto-beam-setting '(end * * 5 4) 6 8 'Staff)
    #(override-auto-beam-setting '(end * * 5 4) 8 8 'Staff)
    d,,8 a' d e a d a e d a
    d, a' d e a d a e d a

% measure 7, motive b (left hand)
    \key fis \minor
    e b' e fis b e b fis e b
    fis cis' fis gis cis fis cis gis fis cis
    b fis' b cis fis b fis cis b fis
    b, fis' b cis fis b fis cis b fis
    e, b' e fis b e b fis e b
    fis cis' fis gis cis fis cis gis fis cis
    b fis' b cis fis b fis cis b fis
    b, fis' b cis fis b fis cis b fis

% measure 15, melodic motive, c (left hand)
    b, fis' b cis fis b fis cis b fis
    b, fis' a b e a e b a fis
    b, fis' b cis fis b fis cis b fis
    b, fis' a b e a e b a e
    a, e' a b e a e b a e
    g, d' g a d g d a g d
    fis, cis' fis gis cis fis cis gis fis cis
    fis, cis' fis gis cis fis cis gis fis cis
    b fis' b cis fis b fis cis b fis
    b, fis' b cis fis b fis cis b fis
    
% measure 25, motive b (left hand)
    e, b' e fis b e b fis e b
    fis cis' fis gis cis fis cis gis fis cis
    b fis' b cis fis b fis cis b fis
    b, fis' b cis fis b fis cis b fis
    e, b' e fis b e b fis e b
    fis cis' fis gis cis fis cis gis fis cis
    b fis' b cis fis b fis cis b fis
    b, fis' b cis fis b fis cis b fis

% measure 33, motive a (left hand)
    \key d \major
    \time 3/4
    a,,8 e' a b, fis' b
    c, g' c d, a' d
    e, b' e fis, cis' fis
    g, d' g a, e' a
    \time 5/4
    #(override-auto-beam-setting '(end * * 5 4) 3 8 'Staff)
    #(override-auto-beam-setting '(end * * 5 4) 6 8 'Staff)
    #(override-auto-beam-setting '(end * * 5 4) 8 8 'Staff)
    d,,8 a' d e a d a e d a
    d, a' d e a d a e d a

% measure 39, motive b (left hand)
    \key fis \minor
    e b' e fis b e b fis e b
    fis cis' fis gis cis fis cis gis fis cis
    b fis' b cis fis b fis cis b fis
    b, fis' b cis fis b fis cis b fis
    e, b' e fis b e b fis e b
    fis cis' fis gis cis fis cis gis fis cis
    b fis' b cis fis b fis cis b fis
    b, fis' b cis fis b fis cis b fis

% measure 47, melodic motive, c (left hand)
    b, fis' b cis fis b fis cis b fis
    b, fis' a b e a e b a fis
    b, fis' b cis fis b fis cis b fis
    b, fis' a b e a e b a e
    a, e' a b e a e b a e
    g, d' g a d g d a g d
    fis, cis' fis gis cis fis cis gis fis cis
    fis, cis' fis gis cis fis cis gis fis cis

% measure 55, motive a (left hand)
    \key d \major
    \time 3/4
    a,8 e' a b, fis' b
    c, g' c d, a' d
    e, b' e fis, cis' fis
    g, d' g a, e' a
    \time 5/4
    #(override-auto-beam-setting '(end * * 5 4) 3 8 'Staff)
    #(override-auto-beam-setting '(end * * 5 4) 6 8 'Staff)
    #(override-auto-beam-setting '(end * * 5 4) 8 8 'Staff)
    d,,8 a' d e a d a e d a
    d, a' d e a d a e d a
    d,8 a' d e a d a e d a
    d, a' d e a d \once \override TextScript #'padding = #1.7 a^\markup { \italic ritard. } e d a
    d, a d,1_\fermata \bar "|."

}
\score {
    \new PianoStaff <<
        \new Staff \rightHand 
        \new Staff \leftHand
    >>
    \layout { }
    \midi { \tempo 4=135 }
}

