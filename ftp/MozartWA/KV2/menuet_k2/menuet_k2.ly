%=============================================
%   created by MuseScore Version: 0.9.5
%          dimanche 28 février 2010
%=============================================

\version "2.12.0"

\header {
  title = "Menuett N°2 fûr das Pianoforte Kôch Verz N°2"
  composer = "MozartWA"

  mutopiatitle = "Menuett N°2 fûr das Pianoforte Kôch Verz N°2"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Pianoforte"
  mutopiaopus = "KV 2"
  date = "Januar 1762"
  source = "Leipzig: Breitkopf & Härtel, 1877-1910. Plate W.A.M. 2.4."
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Nicolas Morant"
  moreInfo = "from http://imslp.org/wiki/Minuet,_K.2_%28Mozart,_Wolfgang_Amadeus%29   Menuett N°2 fûr das Pianoforte Kôch Verz N°2. Serie 22 N°2 Componirt im Januar 1762 in Salzburg. Wolfgang Amadeus Mozarts Werke, Serie XXII: Kleinere Stücke für das Pianoforte.
Leipzig: Breitkopf & Härtel, 1877-1910. Plate W.A.M. 2.4."

 footer = "Mutopia-2010/04/04-1770"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
    }

AvoiceAA = \relative c'{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key f \major 
    \repeat volta 2 { 
        %barkeysig: 
        \key f \major 
%bartimesig: 
    \time 3/4 
    f'8( a) c,4 c  | % 1
    d8( f) bes,4 bes  | % 2
    a8( c) f,4 e  | % 3
    e2( f4)  | % 4
    c8( e) g4 g  | % 5
    c,8( f) a4 a  | % 6
    \times 2/3{c,8( e) g }  bes4 a  | % 7
    a2( g4) } % end of repeatactive
     | % 8
    c8( ees) a,4 a  | % 9
    bes8( d) g,4 g  | % 10
    a8( c) fis,4 fis  | % 11
    fis2( g4)  | % 12
    bes8( d) g,4 g  | % 13
    a8( c) f,4 f  | % 14
    g8( bes) e,4 e  | % 15
    e2( f4)  | % 16
    f'8( a) c,4 c  | % 17
    d8( f) bes,4 bes  | % 18
    a8( c) f,4 e  | % 19
    e2( f4\fermata)  | % 20
    f'8( a) c,4 c  | % 21
    d8( f) bes,4 bes  | % 22
    a8( c) f,4 e  | % 23
    e2( f4) \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key f \major 
    \repeat volta 2 { 
        %barkeysig: 
        \key f \major 
%bartimesig: 
    \time 3/4 
    f2 a4  | % 1
    bes2 bes4  | % 2
    c2 c,4  | % 3
    f c f,  | % 4
    c'2.  | % 5
    c2.  | % 6
    c4 e f  | % 7
    c' g c, } % end of repeatactive
     | % 8
    fis2.  | % 9
    g2.  | % 10
    c4 d f,  | % 11
    g d g,  | % 12
    e'2.  | % 13
    f2.  | % 14
    bes4 c c,  | % 15
    f c f,  | % 16
    a'2.  | % 17
    bes2.  | % 18
    c2 c,4  | % 19
    d2.\fermata  | % 20
    a'2.  | % 21
    bes2.  | % 22
    c2 c,4  | % 23
    f c f, \bar "|."\bar "|." 
}% end of last bar in partorvoice


\score { 
    \relative << 
        \context PianoStaff <<
        \set PianoStaff.instrumentName="Piano" 
            \context Staff = OApartAG  << 
                \context Voice = OApartAG \AvoiceAA
                \set Staff.instrumentName = #""
                \set Staff.shortInstrumentName = #""
            >>
                \context Staff = OApartBG  << 
                    \context Voice = OApartBG \AvoiceBA
                    \set Staff.instrumentName = #""
                    \set Staff.shortInstrumentName = #""
                >>
            >> %end of PianoStaffA
            \set Score.skipBars = ##t
            \set Score.melismaBusyProperties = #'()
            \override Score.BarNumber #'break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
            %% remove previous line to get barnumbers only at beginning of system.
             #(set-accidental-style 'modern-cautionary)
            \set Score.markFormatter = #format-mark-box-letters %%boxed rehearsal-marks
            \override Score.TimeSignature #'style = #'() %%makes timesigs always numerical
            %% remove previous line to get cut-time/alla breve or common time 
        >>

    \layout {}
    \midi {}
}

#(set-global-staff-size 20)
