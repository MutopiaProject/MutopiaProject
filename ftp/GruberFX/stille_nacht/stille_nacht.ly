\header {
	title = "Stille  Nacht"
	composer = "Franz Gruber (1787-1863)"
	mutopiatitle = "Stille  Nacht (hymntune)"
	mutopiacomposer = "GruberFX"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1295"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 6/8  { \key bes \major f'8. g'16 f'8 d'4. f'8. g'16 f'8 d'4. c''4 c''8 a'4. bes'4 bes'8 f'4. g'4 g'8 bes'8. a'16 g'8 f'8. g'16 f'8 d'4. g'4 g'8 bes'8. a'16 g'8 f'8. g'16 f'8 d'4. c''4 c''8 ees''8. c''16 a'8 bes'4. d'' bes'8. f'16 d'8 f'8. ees'16 c'8 bes2.  \bar "|." } }
Alto = { { \key bes \major d'8. ees'16 d'8 bes4. d'8. ees'16 d'8 bes4. ees'4 ees'8 c'4. d'4 d'8 d'4. ees'4 ees'8 g'8. f'16 ees'8 d'8. ees'16 d'8 bes4. ees'4 ees'8 g'8. f'16 ees'8 d'8. ees'16 d'8 bes4. ees'4 ees'8 a'8. ees'16 c'8 d'4. f' d'8. f'16 bes8 d'8. c'16 a8 bes2.  \bar "|." } }
Tenor = { { \key bes \major bes4 bes8 f4. bes4 bes8 f4. a4 a8 f4. f4 f8 bes4. bes4 bes8 g8. a16 bes8 bes8. bes16 bes8 f4. bes4 bes8 g8. a16 bes8 bes8. bes16 bes8 f4. a4 a8 c'8. a16 f8 f4. bes bes4 f8 f8. f16 ees8 d2.  \bar "|." } }
Bass = { { \key bes \major bes,4 bes,8 bes,4. bes,4 bes,8 bes,4. f4 f8 f4. bes,4 bes,8 bes,4. ees4 ees8 ees8. ees16 ees8 bes,8. bes,16 bes,8 bes,4. ees4 ees8 ees8. ees16 ees8 bes,8. bes,16 bes,8 bes,4. f4 f8 f8. f16 f8 bes,2 ( bes,4 ) f f8 f,8. f,16 f,8 bes,2.  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 50 4 ) } }
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
%T:Stille  Nacht
%M:6/8
%L:1/8
%C:Franz Gruber (1787-1863)
%Q:1/4=50
%F:stille_nacht.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Bb
%I:0,0
%V:1
%F3G1F2D6F3G1F2D6c4c2A6B4B2F6G4G2B3A1G2F3G1F2D6G4G2B3A1G2F3G1F2D6c4c2e3c1A2B6d6B3F1D2F3E1C2B,12
%V:2
%D3E1D2B,6D3E1D2B,6E4E2C6D4D2D6E4E2G3F1E2D3E1D2B,6E4E2G3F1E2D3E1D2B,6E4E2A3E1C2D6F6D3F1B,2D3C1A,2B,12
%V:3
%B,4B,2F,6B,4B,2F,6A,4A,2F,6F,4F,2B,6B,4B,2G,3A,1B,2B,3B,1B,2F,6B,4B,2G,3A,1B,2B,3B,1B,2F,6A,4A,2C3A,1F,2F,6B,6B,4F,2F,3F,1E,2D,12
%V:4
%B,,4B,,2B,,6B,,4B,,2B,,6F,4F,2F,6B,,4B,,2B,,6E,4E,2E,3E,1E,2B,,3B,,1B,,2B,,6E,4E,2E,3E,1E,2B,,3B,,1B,,2B,,6F,4F,2F,3F,1F,2B,,8-B,,4F,4F,2F,,3F,,1F,,2B,,12
%B,,4B,,2B,,6B,,4B,,2B,,6F,4F,2F,6B,,4B,,2B,,6E,4E,2E,3E,1E,2B,,3B,,1B,,2B,,6E,4E,2E,3E,1E,2B,,3B,,1B,,2B,,6F,4F,2F,3F,1F,2B,,8-B,,4F,4F,2F,,3F,,1F,,2B,,12
