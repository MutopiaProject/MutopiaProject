\version "2.19.49"

\header {
title = "Waltz"  composer = "Johannes Brahms (1833-1897)"
opus = "Op.39, No.10"
mutopiatitle = "Waltz No. 10"
mutopiacomposer = "BrahmsJ"
mutopiaopus = "Op. 39"
mutopiainstrument = "Piano"
date = "19th C"
source = "Winterthur & Leipzig: J. Rieter-Biedermann c.1866"
style = "Romantic"
license = "Public Domain"
maintainer = "John Mamoun"
maintainerEmail = ""
maintainerWeb = ""
lastupdated = "2017/Jan/13"

 footer = "Mutopia-2017/01/22-2164"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

#(set-default-paper-size "a4")

\paper {
print-page-number = ##f
 systems-per-page = 5
}
#(set-global-staff-size 24)



AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Piano"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    <c e>8 <d fis> <c e> <d fis> <e g> <fis a>      | % 1
    <g b>4 <fis a> <e g>      | % 2
    <d fis>8 <e g> <fis a> <g b> <a c> <b d>      | % 3
    <c e>4 <b d> <a c>      | % 4
    <g b>8 d' <b f'> a' <b, f'> d      | % 5
    <g, b> c <b e> g' <b, e> c      | % 6
    <g ais> b <ais d> g' <ais, d> b      | % 7
    <fis gis> a <fis c'> <fis a> <e g> <d fis>      | % 8
    <c e> <d fis> <c e> <d fis> <e g> <fis a>      | % 9
    <g b>4 <fis a> <e g>      | % 10
    <d fis>8 <e g> <fis a> <g b> <a c> <b d>      | % 11
    <c e>4 <b d> <a c>      | % 12
    <g b>8 d' <b f'> a' <b, f'> d      | % 13
    <g, b> c <b e> g' <b, e> c      | % 14
    <g ais> b <ais d> g' <ais, d> b      | % 15
    <fis gis>4~ <fis gis>8 <fis a> <fis c'> <fis b>      | % 16
    <fis b> <ais cis> <fis b> <ais cis> <b dis> <cis e>      | % 17
    <dis fis>4 <cis e> <b dis>      | % 18
    <fis b>8 <ais cis> <fis b> <ais cis> <b d> <cis e>      | % 19
    <d fis>4 <cis e> <b d>      | % 20
    <a c>8 <b d> <a c> <b d> <c e> <d fis>      | % 21
    <e g>4 <c e> <a c>      | % 22
    \acciaccatura {b16 c d} <e, c'>4 <d b'>4 <c a'>4      | % 23
    <b g' d'>2 <g' b>4      | % 24
    <fis b>8 <ais cis> <fis b> <ais cis> <b dis> <cis e>      | % 25
    <dis fis>4 <cis e> <b dis>      | % 26
    <fis b>8 <ais cis> <fis b> <ais cis> <b d> <cis e>      | % 27
    <d fis>4 <cis e> <b d>      | % 28
    <a c>8 <b d> <a c> <b d> <c e> <d fis>      | % 29
    <e g>4 <c e> <a c>      | % 30
    \acciaccatura {b16 c d} <e, c'>4 <d b'>4 <c a'>4      | % 31
    <b g'>2 r4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c{
 
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    d,4 <d' a'> <d b'>      | % 1
    d, <d' c'> <d b'>      | % 2
    d, <d' a' c> <d g b>      | % 3
    d, <d' fis a> <d d'>      | % 4
    g, <g' f'> <g d'>      | % 5
    g, <g' e'> <g c>      | % 6
    g, <g' d'> <g b>      | % 7
    g, <d' c'> <d a'>      | % 8
    d, <d' a'> <d b'>      | % 9
    d, <d' c'> <d b'>      | % 10
    d, <d' a' c> <d g b>      | % 11
    d, <d' fis a> <d d'>      | % 12
    g, <g' f'> <g d'>      | % 13
    g, <g' e'> <g c>      | % 14
    g, <g' d'> <g b>      | % 15
    d, <d' c'> <d a'>      | % 16
    <dis, dis'> <fis' b> <b,, b'>      | % 17
    <fis fis'> <fis'' b> <b,, b'>      | % 18
    <d d'> <fis' b> <b,, b'>      | % 19
    <fis fis'> <fis'' b> <b,, b'>      | % 20
    <d d'> <d' c'> <d a'>      | % 21
    c, <c' c'> <c e>      | % 22
    d, <d' fis> <d fis>      | % 23
    <g,, g'> <d'' g> r      | % 24
    <ees, ees'> <fis' b> <b,, b'>      | % 25
    <fis fis'> <fis'' b> <b,, b'>      | % 26
    <d d'> <fis' b> <b,, b'>      | % 27
    <fis fis'> <fis'' b> <b,, b'>      | % 28
    <d d'> <d' c'> <d a'>      | % 29
    c, <c' c'> <c e>      | % 30
    d, <d' fis> <d fis>      | % 31
    <g,, g'> <d'' g> r \bar "|." 
}% end of last bar in partorvoice


\score { 
    << 
        \context Staff = ApartA << 
            \context Voice = AvoiceAA \AvoiceAA
        >>


        \context Staff = ApartB << 
            \context Voice = AvoiceBA \AvoiceBA
        >>




      \set Score.skipBars = ##t
      %%\set Score.melismaBusyProperties = #'()
      \override Score.BarNumber.break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
      %% remove previous line to get barnumbers only at beginning of system.
       \accidentalStyle modern-cautionary
      \set Score.markFormatter = #format-mark-box-letters %%boxed rehearsal-marks
       \override Score.TimeSignature.style = #'() %%makes timesigs always numerical
      %% remove previous line to get cut-time/alla breve or common time 
      \set Score.pedalSustainStyle = #'mixed 
       %% make spanners comprise the note it end on, so that there is no doubt that this note is included.
       \override Score.TrillSpanner.bound-details.right.padding = #-2
      \override Score.TextSpanner.bound-details.right.padding = #-1
      %% Lilypond's normal textspanners are too weak:  
      \override Score.TextSpanner.dash-period = #1
      \override Score.TextSpanner.dash-fraction = #0.5
      %% lilypond chordname font, like mscore jazzfont, is both far too big and extremely ugly (olagunde@start.no):
      \override Score.ChordName.font-family = #'roman 
      \override Score.ChordName.font-size =#0 
      %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
      \set Score.majorSevenSymbol = \markup {maj7}
  >>

  %% Boosey and Hawkes, and Peters, have barlines spanning all staff-groups in a score,
  %% Eulenburg and Philharmonia, like Lilypond, have no barlines between staffgroups.
  %% If you want the Eulenburg/Lilypond style, comment out the following line:
  \layout {\context {\Score \consists Span_bar_engraver}}
 \midi {
    \tempo 4 = 160
    }
}%% end of score-block 


