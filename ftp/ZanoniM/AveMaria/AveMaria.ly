%=============================================
%   created by MuseScore Version: 0.9.5
%          giovedì 24 settembre 2009
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
cell 0039 3355373019
zanoni.michele@tiscali.it"

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

 footer = "Mutopia-2009/09/28-1701"
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
    e4 ^\markup {}^\markup {Adagio    =63}^\markup {A}e'8. ^\markup {ve
}dis16 ^\markup {Ma}dis4 ^\markup {ri
}cis ^\markup {a} | % 1
    cis, ^\markup {gra}cis'8. ^\markup {ti}gis16 ^\markup {a}b4 ^\markup {ple}a ^\markup {na} | % 2
    cis, ^\markup {Do}b'8. ^\markup {mi}a16 ^\markup {nus}b4 ^\markup {te}cis ^\markup {cum} | % 3
    cis ^\markup {Do}dis8. ^\markup {mi}e16 ^\markup {nus}e4 ^\markup {te}fis ^\markup {cum} | % 4
    gis8 ^\markup {}^\markup {Be}fis ^\markup {ne}a ^\markup {di}gis ^\markup {cta}fis ^\markup {tu}e ^\markup {in}dis ^\markup {mu}b ^\markup {li} | % 5
    b ^\markup {e}cis ^\markup {ri}cis2. ^\markup {bus} | % 6
    cis8 ^\markup {Be}a ^\markup {ne}fis' ^\markup {di}e ^\markup {ctus}cis ^\markup {fru}a ^\markup {ctus}fis ^\markup {ven}e ^\markup {tris} | % 7
    e ^\markup {Tu}fis fis2. ^\markup {i} | % 8
    gis8 ^\markup {Be}fis ^\markup {ne}a ^\markup {di}gis ^\markup {cta}fis ^\markup {tu}e ^\markup {in}dis ^\markup {mu}bis ^\markup {li} | % 9
    bis ^\markup {e}cis ^\markup {ri}cis2. ^\markup {bus} | % 10
    a'8 ^\markup {Be}gis ^\markup {ne}b ^\markup {di}a ^\markup {ctus}gis ^\markup {fru}fis ^\markup {ctus}e ^\markup {ven}fis ^\markup {tris} | % 11
    e1 ^\markup {tu} | % 12
    fis ^\markup {i} | % 13
    fis2 ^\markup {Je-}g4 a  | % 14
    fis2 ^\markup {}g4 a  | % 15
    b1  | % 16
    e,  | % 17
    fis~ ^\markup {sus} | % 18
    %bartimesig: 
    \time 2/4 
    fis2~  | % 19
    %bartimesig: 
    \time 4/4 
    fis1  | % 20
    e4 ^\markup {San }e'8. ^\markup {cta }dis16 ^\markup {Ma}dis4 ^\markup {ri}cis ^\markup {a} | % 21
    cis, ^\markup {Ma}cis'8. gis16 ^\markup {ter}b4 ^\markup {De}a ^\markup {i} | % 22
    cis, ^\markup {San}b'8. ^\markup {cta}a16 ^\markup {Ma}gis4 ^\markup {ri}fis ^\markup {a} | % 23
    cis ^\markup {Ma}fis8. e16 ^\markup {ter}e4 ^\markup {De}fis ^\markup {i} | % 24
    fis2 ^\markup {o}b,4. ^\markup {ra}b8 ^\markup {pro} | % 25
    fis'2 ^\markup {no}e ^\markup {bis} | % 26
    gis ^\markup {no}bis,4 ^\markup {bis}e8 ^\markup {pec}dis ^\markup {ca} | % 27
    gis4. ^\markup {to}cis,8 ^\markup {ri}cis2 ^\markup {bus} | % 28
    aes' ^\markup {nunc}d,4. ^\markup {et}aes'8 ^\markup {in} | % 29
    b2 ^\markup {ho}a4 ^\markup {ra}gis8 ^\markup {et}a ^\markup {in} | % 30
    b2. ^\markup {ho}fis8 ^\markup {ra}e ^\markup {in} | % 31
    cis'2. ^\markup {ho}d8 cis ^\markup {ra} | % 32
    fis2. ^\markup {mor}e8 dis ^\markup {tis} | % 68
    %bartimesig: 
    \time 2/4 
    \times 2/3{cis8 ^\markup {no}b a }  \times 2/3{gis fis e }   | % 68
    %bartimesig: 
    \time 4/4 
    cis2 dis  | % 69
    e1 ^\markup {strae} | % 70
    <e b'>2 ^\markup {A}<e cis'>4 <e e'>  | % 71
    <e e'>1~ ^\markup {men} | % 72
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
    f4 ^\markup {}^\markup {A}e8. ^\markup {ve}e16 ^\markup {Ma}e4 ^\markup {ri}e ^\markup {a} | % 1
    cis8 ^\markup {gra}dis eis ^\markup {ti}gis ^\markup {a}gis4 ^\markup {ple}fis ^\markup {na} | % 2
    r eis2 ^\markup {te}fis4 ^\markup {cum} | % 3
    g2 ^\markup {te}fis ^\markup {cum} | % 4
    b ^\markup {Be}a4 gis ^\markup {ne} | % 5
    e2 ^\markup {}^\markup {di}eis ^\markup {}^\markup {ctus} | % 6
    fis2. ^\markup {}^\markup {fru}c4 ^\markup {ctus} | % 7
    cis8 ^\markup {be}b ^\markup {ne}e ^\markup {di}dis ^\markup {cta}dis ^\markup {tu}cis ^\markup {in}cis ^\markup {mu}c ^\markup {li} | % 8
    b4. ^\markup {e}b8 ^\markup {ri}bis4~ ^\markup {bus}bis8 r  | % 9
    r4 r8 e ^\markup {in}eis4. ^\markup {mu}eis8 ^\markup {li} | % 10
    fis4. ^\markup {e}fis8 ^\markup {ri}cis2 ^\markup {bus} | % 11
    cis8 ^\markup {Be}b ^\markup {ne}e ^\markup {di}dis ^\markup {ctus}dis ^\markup {fru}cis ^\markup {ctus}cis ^\markup {ven}c ^\markup {tris} | % 12
    c4 ^\markup {tu}e2 ^\markup {i}dis4  | % 13
    d2 ^\markup {Je-}e4 fis  | % 14
    d2 e4 fis ^\markup {sus} | % 15
    c2( ^\markup {Je-}d4) e~  | % 16
    e2~ e4 e ^\markup {sus} | % 17
    e1 ^\markup {Je-} | % 18
    %bartimesig: 
    \time 2/4 
    dis4 cis  | % 19
    %bartimesig: 
    \time 4/4 
    dis4 fis b dis, ^\markup {sus} | % 20
    e ^\markup {San}e8. ^\markup {cta}e16 ^\markup {Ma}e4 ^\markup {ri}e ^\markup {a} | % 21
    cis8 ^\markup {San}dis eis ^\markup {sta}gis ^\markup {Ma}gis4 ^\markup {ri}fis ^\markup {a} | % 22
    r cis2 ^\markup {Ma}cis4 ^\markup {ter} | % 23
    cis2 ^\markup {De}b ^\markup {i} | % 24
    b ^\markup {o}b4. ^\markup {ra}b8 ^\markup {pro} | % 25
    b2 ^\markup {no}b ^\markup {bis} | % 26
    bis ^\markup {no}bis4 ^\markup {bis}bis8 ^\markup {pec}bis ^\markup {ca} | % 27
    cis4. ^\markup {to}cis8 ^\markup {ri}cis2 ^\markup {bus} | % 28
    d ^\markup {nunc}d4. ^\markup {et}d8 ^\markup {in} | % 29
    d2 ^\markup {ho}cis4 ^\markup {ra}cis8 ^\markup {et}cis ^\markup {in} | % 30
    e4 ^\markup {ho}dis8 ^\markup {ra}cis ^\markup {in}b ^\markup {ho}cis dis ^\markup {ra}e ^\markup {in} | % 31
    eis4 ^\markup {ho}fis8 gis ^\markup {ra}cis,4 ^\markup {mor}gis' ^\markup {tis} | % 32
    fis2. ^\markup {mor}gis8 a ^\markup {tis} | % 68
    %bartimesig: 
    \time 2/4 
    dis,4. ^\markup {mor}cis8 ^\markup {tis} | % 68
    %bartimesig: 
    \time 4/4 
    a2 ^\markup {no}b  | % 69
    a4 gis2. ^\markup {} | % 70
    b2 ^\markup {A}a  | % 71
    gis1~ ^\markup {men} | % 72
    gis2 r \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key e \major 
    \clef "treble_8"
    %barkeysig: 
        \key e \major 
%bartimesig: 
    \time 4/4 
    e8 ^\markup {}fis gis ^\markup {ve}b ^\markup {Ma}b4 ^\markup {ri}a ^\markup {a} | % 1
    gis ^\markup {gra}gis8 ^\markup {ti}b ^\markup {a}d4 ^\markup {ple}cis ^\markup {na} | % 2
    a ^\markup {Do}cis ^\markup {mi}cis2 ^\markup {nus} | % 3
    cis ^\markup {te}b4 dis ^\markup {cum} | % 4
    e2 ^\markup {te}b ^\markup {cum} | % 5
    a8 ^\markup {be}gis ^\markup {ne}b ^\markup {di}a ^\markup {cta}gis ^\markup {tu}eis ^\markup {in}fis ^\markup {mu}gis ^\markup {li} | % 6
    a2. ^\markup {e}a4 ^\markup {ri} | % 7
    a2. ^\markup {bus}a8 ^\markup {mu}a ^\markup {li} | % 8
    gis4. ^\markup {e}gis8 ^\markup {ri}gis2 ^\markup {bus} | % 9
    a8 ^\markup {Be}gis ^\markup {ne}b ^\markup {di}a ^\markup {ctus}gis ^\markup {fru}eis ^\markup {ctus}fis ^\markup {ven}gis ^\markup {tris} | % 10
    a1 ^\markup {tu} | % 11
    a ^\markup {i} | % 12
    a8 ^\markup {fru}gis ^\markup {ctus}b ^\markup {ven}a ^\markup {tris}e4 ^\markup {tu}fis ^\markup {i} | % 13
    b1~ ^\markup {Je-} | % 14
    b2. b4 ^\markup {sus} | % 15
    e,2( ^\markup {Je-}fis4) g  | % 16
    a2 fis4 g ^\markup {sus} | % 17
    fis2 ^\markup {Je-}g4 a  | % 18
    %bartimesig: 
    \time 2/4 
    fis2  | % 19
    %bartimesig: 
    \time 4/4 
    g2 a ^\markup {sus} | % 20
    gis8 ^\markup {San}fis gis ^\markup {cta}b ^\markup {Ma}b4 ^\markup {ri}a ^\markup {a} | % 21
    gis ^\markup {San}gis8 ^\markup {cta}b ^\markup {Ma}d4 ^\markup {ri}cis ^\markup {a} | % 22
    a ^\markup {Ma}eis ^\markup {ter}eis ^\markup {De}fis ^\markup {i} | % 23
    fis2 ^\markup {Ma}a4 dis, ^\markup {ter} | % 24
    dis2 ^\markup {o}dis ^\markup {ra} | % 25
    e ^\markup {o}b'4. ^\markup {ra}e,8 ^\markup {pro} | % 26
    dis2 ^\markup {no}dis ^\markup {bis} | % 27
    e( ^\markup {no}dis4.) e8 ^\markup {bis} | % 28
    eis2 ^\markup {nunc}disis4. ^\markup {et}eis8 ^\markup {in} | % 29
    gis4 ^\markup {ho}a8 gis fis4 ^\markup {ra}eis8 ^\markup {et}fis ^\markup {in} | % 30
    gis2. ^\markup {ho}gis8 ^\markup {ra}gis ^\markup {in} | % 31
    a ^\markup {ho}gis fis eis ^\markup {ra}gis ^\markup {mor}a b4 ^\markup {tis} | % 32
    a ^\markup {mor}b8 cis fis,2 ^\markup {tis} | % 68
    %bartimesig: 
    \time 2/4 
    fis4 ^\markup {mor}gis8 a ^\markup {tis} | % 68
    %bartimesig: 
    \time 4/4 
    fis2. ^\markup {no}gis4 ^\markup {strae} | % 69
    e2 ^\markup {A}e'4. ^\markup {ve}dis8 ^\markup {Ma} | % 70
    dis2 ^\markup {ri}cis  | % 71
    b1~ ^\markup {a} | % 72
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
    e4 ^\markup {A}e ^\markup {ve}a,8 ^\markup {A}b cis ^\markup {ve}e ^\markup {Ma} | % 1
    eis2 ^\markup {ri}fis ^\markup {a} | % 2
    fis4 ^\markup {Do}gis ^\markup {mi}a2 ^\markup {nus} | % 3
    ais ^\markup {te}b ^\markup {cum} | % 4
    e,2. ^\markup {Be}e4 ^\markup {ne} | % 5
    a,2 ^\markup {di}a ^\markup {ctus} | % 6
    fis2. ^\markup {Be}fis4 ^\markup {ne} | % 7
    b2 ^\markup {di}b ^\markup {ctus} | % 8
    e2. ^\markup {}e4 ^\markup {ctus} | % 9
    a,2 ^\markup {}a ^\markup {tris} | % 10
    fis2. ^\markup {ven}fis4 ^\markup {tris} | % 11
    b1 ^\markup {tu} | % 12
    b ^\markup {i} | % 13
    b ^\markup {Je-} | % 14
    e2. d4 ^\markup {sus} | % 15
    c1( ^\markup {Je-} | % 16
    c2.) c4 ^\markup {sus} | % 17
    b1 ^\markup {Je-} | % 18
    %bartimesig: 
    \time 2/4 
    b2  | % 19
    %bartimesig: 
    \time 4/4 
    b1 ^\markup {sus} | % 20
    e4 ^\markup {San }e ^\markup {cta}a,8 ^\markup {San}b cis ^\markup {cta}e ^\markup {Ma} | % 21
    eis2 ^\markup {ri}fis ^\markup {a} | % 22
    fis,4 ^\markup {Ma}gis a2 ^\markup {ter} | % 23
    ais ^\markup {De}b ^\markup {i} | % 24
    a ^\markup {o}a4. ^\markup {ra}a8 ^\markup {pro} | % 25
    gis2 ^\markup {no}gis ^\markup {bis} | % 26
    gis ^\markup {no}gis4 ^\markup {bis}gis8 ^\markup {pec}gis ^\markup {ca} | % 27
    gis4. ^\markup {to}gis8 ^\markup {ri}gis2 ^\markup {bus} | % 28
    gis ^\markup {nunc}gis4. ^\markup {et}gis8 ^\markup {in} | % 29
    fis2 ^\markup {ho}fis4 ^\markup {ra}cis'8 ^\markup {et}cis ^\markup {in} | % 30
    b2. ^\markup {ho}b8 ^\markup {ra}b ^\markup {in} | % 31
    b2. ^\markup {ho}b4 ^\markup {ra} | % 32
    b2 ^\markup {mor}b ^\markup {tis} | % 68
    %bartimesig: 
    \time 2/4 
    b2~ ^\markup {no} | % 68
    %bartimesig: 
    \time 4/4 
    b1  | % 69
    e ^\markup {strae} | % 70
    e ^\markup {A} | % 71
    <e, e'>~ ^\markup {men} | % 72
    <e e'> \bar "|." 
}% end of last bar in partorvoice


\score { 
    \relative << 
        \context StaffGroup = B<< 
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
                    >> %end of StaffGroupB
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
