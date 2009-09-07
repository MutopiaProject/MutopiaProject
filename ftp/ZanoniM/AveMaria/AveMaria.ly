%=============================================
%   created by MuseScore Version: 0.9.5
%          venerdì 28 agosto 2009
%=============================================

\version "2.12.0"

%#(set-default-paper-size "a4")

\paper {
  line-width    = 190\mm
  left-margin   = 10\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  indent = 0 \mm 
  %%set to ##t if your score is less than one page: 
  ragged-last-bottom = ##f 
  ragged-bottom = ##f  
  }

\header {
    title = "Ave Maria"
    poet = "composta in Anzio (Roma) Agosto 2004
"
    composer = "Michele Zanoni (N. 1964)
cell 3355373019
zanoni.michele@tiscali.it"
    subtitle = ""

    mutopiatitle      = "Ave Maria"
    mutopiacomposer   = "ZanoniM"
    mutopiainstrument = "Vocal"
    date              = "Anzio (Rome)  2004"
    source            = "New composition"
    style             = "Classical"
    copyright         = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer        = "Zanoni Michele"
    maintainerEmail   = "zanoni.michele@tiscali.it"
    maintainerWeb     = "http://www.zanonimichele.net"

 footer = "Mutopia-2009/09/07-1701"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
    }

ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key e \major 
        %barkeysig: 
        \key e \major 
%bartimesig: 
    \time 4/4 
    e4 ^\markup {}e'8. dis16 dis4 cis  | % 1
    cis, cis'8. gis16 b4 a  | % 2
    cis, b'8. a16 b4 cis ^\markup {Adagio    = 63} | % 3
    cis dis8. e16 e4 fis  | % 4
    gis8 ^\markup {}fis a gis fis e dis b  | % 5
    b cis cis2.  | % 6
    cis8 a fis' e cis a fis e  | % 7
    e fis fis2.  | % 8
    gis8 fis a gis fis e dis bis  | % 9
    bis cis cis2.  | % 10
    a'8 gis b a gis fis e fis  | % 11
    e1  | % 12
    fis  | % 13
    fis2( g4) a  | % 14
    fis2 g4 a  | % 15
    b1  | % 16
    e,  | % 17
    fis~  | % 18
    %bartimesig: 
    \time 2/4 
    fis2~  | % 19
    %bartimesig: 
    \time 4/4 
    fis1  | % 20
    e4 e'8. dis16 dis4 cis  | % 21
    cis,( cis'8.) gis16 b4 a  | % 22
    cis, b'8. a16 gis4 fis  | % 23
    cis( fis8.) e16 e4 fis  | % 24
    fis2 b,4. b8  | % 25
    fis'2 e  | % 26
    gis bis,4 e8 dis  | % 27
    gis4. cis,8 cis2  | % 28
    aes' d,4. aes'8  | % 29
    b2 a4 gis8 a  | % 30
    b2. fis8 e  | % 31
    cis'2. d8 cis  | % 32
    fis2. e8 dis  | % 68
    %bartimesig: 
    \time 2/4 
    \times 2/3{cis8 b a }  \times 2/3{gis fis e }   | % 68
    %bartimesig: 
    \time 4/4 
    cis2 dis  | % 69
    e1  | % 70
    <e b'>2 <e cis'>4 <e e'>  | % 71
    <e e'>1~  | % 72
    <e e'>2 r \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key e \major 
        %barkeysig: 
        \key e \major 
%bartimesig: 
    \time 4/4 
    e4 ^\markup {}e8. e16 e4 e  | % 1
    cis8 dis eis gis gis4 fis  | % 2
    r eis2 fis4  | % 3
    g2 fis  | % 4
    b a4 gis  | % 5
    e2 eis  | % 6
    fis2. cis4  | % 7
    cis8 b e dis dis cis cis c  | % 8
    b4. b8 bis4~ bis8 r  | % 9
    r4 r8 e eis4. eis8  | % 10
    fis4. fis8 cis2  | % 11
    cis8 b e dis dis cis cis c  | % 12
    c4 e2 dis4  | % 13
    d2( e4) fis  | % 14
    d2 e4 fis  | % 15
    c2( d4) e~  | % 16
    e2~ e4 e  | % 17
    e1  | % 18
    %bartimesig: 
    \time 2/4 
    dis4 cis  | % 19
    %bartimesig: 
    \time 4/4 
    dis4 fis b dis,  | % 20
    e e8. e16 e4 e  | % 21
    cis8( dis) eis gis gis4 fis  | % 22
    r cis2 cis4  | % 23
    cis2 b  | % 24
    b b4. b8  | % 25
    b2 b  | % 26
    bis bis4 bis8 bis  | % 27
    cis4. cis8 cis2  | % 28
    d d4. d8  | % 29
    d2 cis4 cis8 cis  | % 30
    e4 dis8 cis b cis dis e  | % 31
    eis4 fis8 gis cis,4 gis'  | % 32
    fis2. gis8 a  | % 68
    %bartimesig: 
    \time 2/4 
    dis,4. cis8  | % 68
    %bartimesig: 
    \time 4/4 
    a2 b  | % 69
    a4 gis2. ^\markup {} | % 70
    b2 a  | % 71
    gis1~  | % 72
    gis2 r \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key e \major 
        %barkeysig: 
        \key e \major 
%bartimesig: 
    \time 4/4 
    e8 ^\markup {}fis gis b b4 a  | % 1
    gis gis8 b d4 cis  | % 2
    a cis cis2  | % 3
    cis b4 dis  | % 4
    e2 b  | % 5
    a8 gis b a gis eis fis gis  | % 6
    a2. a4  | % 7
    a2. a8 a  | % 8
    gis4. gis8 gis2  | % 9
    a8 gis b a gis eis fis gis  | % 10
    a1  | % 11
    a  | % 12
    a8 gis b a e4 fis  | % 13
    b1~  | % 14
    b2. b4  | % 15
    e,2( fis4) g  | % 16
    a2 fis4 g  | % 17
    fis2( g4) a  | % 18
    %bartimesig: 
    \time 2/4 
    fis2  | % 19
    %bartimesig: 
    \time 4/4 
    g2 a  | % 20
    gis8( fis) gis b b4 a  | % 21
    gis gis8 b d4 cis  | % 22
    a eis eis fis  | % 23
    fis2( a4) dis,  | % 24
    dis2 dis  | % 25
    e b'4. e,8  | % 26
    dis2 dis  | % 27
    e( dis4.) e8  | % 28
    eis2 disis4. eis8  | % 29
    gis4 a8 gis fis4 eis8 fis  | % 30
    gis2. gis8 gis  | % 31
    a gis fis eis gis a b4  | % 32
    a b8 cis fis,2  | % 68
    %bartimesig: 
    \time 2/4 
    fis4 gis8 a  | % 68
    %bartimesig: 
    \time 4/4 
    fis2. gis4  | % 69
    e2 e'4. dis8  | % 70
    dis2 cis  | % 71
    b1~  | % 72
    b \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key e \major 
        %barkeysig: 
        \key e \major 
%bartimesig: 
    \time 4/4 
    e4 e a,8 b cis e  | % 1
    eis2 fis  | % 2
    fis4 gis a2  | % 3
    ais b  | % 4
    e,2. e4  | % 5
    a,2 a  | % 6
    fis2. fis4  | % 7
    b2 b  | % 8
    e2. ^\markup {}e4  | % 9
    a,2 a  | % 10
    fis2. fis4  | % 11
    b1  | % 12
    b  | % 13
    b(  | % 14
    e2.) d4  | % 15
    c1(  | % 16
    c2.) c4  | % 17
    b1  | % 18
    %bartimesig: 
    \time 2/4 
    b2  | % 19
    %bartimesig: 
    \time 4/4 
    b1  | % 20
    e4 e a,8( b) cis e  | % 21
    eis2 fis  | % 22
    fis,4( gis) a2  | % 23
    ais b  | % 24
    a a4. a8  | % 25
    gis2 gis  | % 26
    gis gis4 gis8 gis  | % 27
    gis4. gis8 gis2  | % 28
    gis gis4. gis8  | % 29
    fis2 fis4 cis'8 cis  | % 30
    b2. b8 b  | % 31
    b2. b4  | % 32
    b2 b  | % 68
    %bartimesig: 
    \time 2/4 
    b2~  | % 68
    %bartimesig: 
    \time 4/4 
    b1  | % 69
    e  | % 70
    e  | % 71
    <e, e'>~  | % 72
    <e e'> \bar "|." 
}% end of last bar in partorvoice


\score { 
    \relative << 
        \context Staff = OASpartAG  << 
            \context Voice = OASpartAG \ASvoiceAA
        >>
            \context Staff = OAApartBG  << 
                \context Voice = OAApartBG \AAvoiceBA
            >>
                \context Staff = OATpartCG  << 
                    \context Voice = OATpartCG \ATvoiceCA
                >>
                    \context Staff = OABpartDG  << 
                        \context Voice = OABpartDG \ABvoiceDA
                    >>
                    \set Score.skipBars = ##t
                    \set Score.melismaBusyProperties = #'()
                    \override Score.BarNumber #'break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
                    %% remove previous line to get barnumbers only at beginning of system.
                     #(set-accidental-style 'modern-cautionary)
                    \set Score.markFormatter = #format-mark-box-letters %%boxed rehearsal-marks
                    \override Score.TimeSignature #'style = #'() %%makes timesigs always numerical
                    %% remove previous line to get cut-time/alla breve or common time 
                >>
        }

#(set-global-staff-size 14)
