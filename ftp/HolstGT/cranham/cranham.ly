\header {
	title = "Cranham"
	composer = "Gustav Theodore Holst (1874-1934), 1906"
	mutopiatitle = "Cranham (hymntune)"
	mutopiacomposer = "HolstGT"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1906"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1233"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key f \major a'4 a'4. bes'8 c''4 a' g'2 f' g'4. a'8 g'4 d' g'2. r4 a'4. bes'8 c''4 a' g'2 f' g'4 a' g'4. f'8 f'2. r4 bes'4. a'8 bes'4 c'' d'' d'' a'2 c''4 a' g' f' e'2. a'4 a'4. bes'8 c''4 a' g'2 f' g'4 a' g'4. f'8 f'2. s4  \bar "|." } }
Alto = { { \key f \major f'4 f'4. f'8 f'4 c' d'2 d' d'4. d'8 d'4 c' bes2. r4 c'4. f'8 f'4 c' d'2 d' f'4 f' e'4. f'8 f'2. r4 f'4. f'8 f'4 ees' d' d' f'2 f'4 e' d' d' c'2. c'4 c'4. f'8 f'4 c' d'2 d' f' e'4. f'8 f'2. s4  \bar "|." } }
Tenor = { { \key f \major c'4 c'4. c'8 c'4 f a2 a g4. d8 d4 f f2 e4 r f4. c'8 c'4 f a2 a d'4 d' bes4. a8 a2. r4 bes4. c'8 bes4 a bes bes a2 f4 c' bes a g2. f4 f4. c'8 c'4 f a2 a d' bes4. a8 a2. s4  \bar "|." } }
Bass = { { \key f \major f4 f4. g8 a4 f d2 d bes,4. c8 bes,4 a, g,2 c4 r f4. g8 a4 f d2 d bes,4 bes, c4. f8 f2. r4 d4. f8 d4 c bes, bes, d2 a,4 a, bes, bes, c2. f4 f4. g8 a4 f d2 d bes, c4. f8 f2. s4  \bar "|." } }


  \score {
    \context GrandStaff <<
      \context Staff = upper <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        {   #(set-accidental-style 'modern-cautionary) \Soprano }
        { \Alto}
      >>  
      \context Staff = lower <<
        \set Staff.printPartCombineTexts = ##f
        \clef bass
        \partcombine	{  #(set-accidental-style 'modern-cautionary) \Tenor }
        { \Bass }
      >>  
    >>
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 63 4 ) } }
\layout {
  between-system-space = 1\mm
  \context {
    \Score
    % defaults
    % (shortest-duration-space . 2.0)
    % (spacing-increment . 1.2)
    % (base-shortest-duration . ,(ly:make-moment 1 8))
    % tighter spacing
    \override SpacingSpanner #'shortest-duration-space = #2.8
    \override SpacingSpanner #'spacing-increment = #0.6
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
    \remove "Bar_number_engraver"
  }
  \context { \Staff 
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
  }
  }
}
\paper {  first-page-number = 2
  print-first-page-number = ##t }
% -- ABC Source file follows --
%X:1
%T:Cranham
%M:4/4
%L:1/4
%C:Gustav Theodore Holst (1874-1934), 1906
%Q:1/4=63
%F:cranham.abc
%N:Public domain 
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:F
%I:Partial=4 Title=In the Bleak Midwinter
%V:1
%A2A3B1c2A2G4F4G3A1G2D2G6z2A3B1c2A2G4F4G2A2G3F1F6z2B3A1B2c2d2d2A4c2A2G2F2E6A2A3B1c2A2G4F4G2A2G3F1F6
%V:2
%F2F3F1F2C2D4D4D3D1D2C2B,6z2C3F1F2C2D4D4F2F2E3F1F6z2F3F1F2_E2D2D2F4F2=E2D2D2C6C2C3F1F2C2D4D4F4E3F1F6
%V:3
%C2C3C1C2F,2A,4A,4G,3D,1D,2F,2F,4E,2z2F,3C1C2F,2A,4A,4D2D2B,3A,1A,6z2B,3C1B,2A,2B,2B,2A,4F,2C2B,2A,2G,6F,2F,3C1C2F,2A,4A,4D4B,3A,1A,6
%V:4
%F,2F,3G,1A,2F,2D,4D,4B,,3C,1B,,2A,,2G,,4C,2z2F,3G,1A,2F,2D,4D,4B,,2B,,2C,3F,1F,6z2D,3F,1D,2C,2B,,2B,,2D,4A,,2A,,2B,,2B,,2C,6F,2F,3G,1A,2F,2D,4D,4B,,4C,3F,1F,6
%F,2F,3G,1A,2F,2D,4D,4B,,3C,1B,,2A,,2G,,4C,2z2F,3G,1A,2F,2D,4D,4B,,2B,,2C,3F,1F,6z2D,3F,1D,2C,2B,,2B,,2D,4A,,2A,,2B,,2B,,2C,6F,2F,3G,1A,2F,2D,4D,4B,,4C,3F,1F,6
