\header {
	title = "Fillmore"
	composer = "Jeremiah Inalls (1764-1828)"
	mutopiatitle = "Fillmore (hymntune)"
	mutopiacomposer = "InallsJ"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1242"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4  { \key f \major f'8 a'8. g'16 f'8 g'4 a'8 g'4 f'8 g'4 a'8 c''4 c''8 c'' d'' c'' a'4 g'8 f'4 c''8 d''4 d''8 d''8. e''16 f''8 c''4 c''8 a'4 c''8 d''4 d''8 d''8. e''16 f''8 c''4 c''8 a' g' f' a'8. g'16 f'8 g'4 a'8 g'4 f'8 g'4 a'8 c''4 c''8 c'' d'' c'' a'4 g'8 f'4  \bar "|." } }
Alto = { { \key f \major f'8 f'4 f'8 e'4 e'8 e'4 d'8 e'4 f'8 f'4 f'8 f'4 f'8 f'4 e'8 f'4 f'8 f'4 f'8 f'4 f'8 a'4 a'8 f'4 f'8 f'4 f'8 f'4 f'8 f'4 f'8 f' e' f' f'4 f'8 e'4 e'8 e'4 d'8 e'4 f'8 f'4 f'8 f'4 f'8 f'4 e'8 f'4  \bar "|." } }
Tenor = { { \key f \major a8 c'8. bes16 a8 bes4 c'8 bes4 a8 c'4 c'8 a4 a8 a bes a c'4 bes8 a4 a8 bes4 bes8 bes8. ( c'16 ) d'8 f'4 f'8 c'4 a8 bes4 bes8 bes8. ( c'16 ) d'8 a4 a8 c'4 a8 c'8. bes16 a8 bes4 c'8 bes4 a8 c'4 c'8 a4 a8 a bes a c'4 bes8 a4  \bar "|." } }
Bass = { { \key f \major f8 f4 f8 c4 c8 c4 d8 c4 f8 f4 f8 f4 f8 c4 c8 f4 f8 bes4 bes8 bes4 bes,8 f4 f8 f4 f8 bes4 bes8 bes4 bes,8 f4 f8 f c f f4 f8 c4 c8 c4 d8 c4 f8 f4 f8 f4 f8 c4 c8 f4  \bar "|." } }


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
%T:Fillmore
%M:3/4
%L:1/8
%C:Jeremiah Inalls (1764-1828)
%Q:1/4=63
%F:fillmore.abc
%N:Public domain
%G:88.88.88
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:F
%I:Chalice=87 Parital=1 Title=I Will Sing of the Mercies of the Lord
%V:1
%F2A3G1F2G4A2G4F2G4A2c4c2c2d2c2A4G2F4c2d4d2d3e1f2c4c2A4c2d4d2d3e1f2c4c2A2G2F2A3G1F2G4A2G4F2G4A2c4c2c2d2c2A4G2F4
%V:2
%F2F4F2E4E2E4D2E4F2F4F2F4F2F4E2F4F2F4F2F4F2A4A2F4F2F4F2F4F2F4F2F2E2F2F4F2E4E2E4D2E4F2F4F2F4F2F4E2F4
%V:3
%A,2C3B,1A,2B,4C2B,4A,2C4C2A,4A,2A,2B,2A,2C4B,2A,4A,2B,4B,2B,3-C1D2F4F2C4A,2B,4B,2B,3-C1D2A,4A,2C4A,2C3B,1A,2B,4C2B,4A,2C4C2A,4A,2A,2B,2A,2C4B,2A,4
%V:4
%F,2F,4F,2C,4C,2C,4D,2C,4F,2F,4F,2F,4F,2C,4C,2F,4F,2B,4B,2B,4B,,2F,4F,2F,4F,2B,4B,2B,4B,,2F,4F,2F,2C,2F,2F,4F,2C,4C,2C,4D,2C,4F,2F,4F,2F,4F,2C,4C,2F,4
%F,2F,4F,2C,4C,2C,4D,2C,4F,2F,4F,2F,4F,2C,4C,2F,4F,2B,4B,2B,4B,,2F,4F,2F,4F,2B,4B,2B,4B,,2F,4F,2F,2C,2F,2F,4F,2C,4C,2C,4D,2C,4F,2F,4F,2F,4F,2C,4C,2F,4
