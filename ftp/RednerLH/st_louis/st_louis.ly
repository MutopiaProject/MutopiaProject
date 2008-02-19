\header {
	title = "St. Louis"
	composer = "Lewis H. Redner (1830-1908), 1868"
	mutopiatitle = "St. Louis (hymntune)"
	mutopiacomposer = "RednerLH"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1868"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1292"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key f \major a'4 a' a' gis' a' c'' bes' d' g' f' e'8 f' g'4 c' a'2. a'4 a' a' d'' c'' c'' bes' d' g' f' e'8 f' a'4. g'8 f'2. a'4 a' a' g' f' e'2 e'4 e' d' e' f' g' a'2. a'4 a' a' gis' a' c'' bes' d' d'' c'' f' a'4. g'8 f'2. s4  \bar "|." } }
Alto = { { \key f \major c'4 c' c' b c' ees' d' bes d' c' c' c' c' c'2. c'4 c' f' fis' fis' g' d' bes d' c' c' e'4. e'8 f'2. f'4 f' f' e' d' des'2 des'4 des' d' e' f' d' e'2. f'4 c' c' b c' d' d' bes d'8 e' f'4 b c'4. bes8 a2. s4  \bar "|." } }
Tenor = { { \key f \major f4 f f f f fis g g bes a g8 a bes4 bes a2. f4 f a a d' d' d' d' bes a gis8 a c'4. bes8 a2. c'4 c' a bes b des'2 des'4 a d e f d' des'2. c'4 c' a f f fis g g bes a g8 f f4. e8 f2. s4  \bar "|." } }
Bass = { { \key f \major f4 f f f f bes, bes, bes, bes, c c c c f2. f4 f ees d d g g g, bes, c4. c8 c4. c8 f2. f4 f f g gis a2 a4 a, d e f bes a2. f4 f f f f bes, bes, bes, bes, c d c4. c8 f,2. s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 110 4 ) } }
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
%T:St. Louis
%M:4/4
%L:1/8
%C:Lewis H. Redner (1830-1908), 1868
%Q:1/4=110
%F:st_louis.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:F
%I:Partial=4
%V:1
%A4A4A4^G4=A4c4B4D4G4F4=E2F2G4C4A11A4A4A4d4c4c4B4D4G4F4E2F2A6G2F11A4A4A4G4F4E8E4E4=D4E4F4G4A11A4A4A4^G4=A4c4B4D4d4c4F4A6G2F12
%V:2
%C4C4C4=B,4C4_E4D4_B,4D4C4C4C4C4C11C4C4F4^F4^F4=G4D4B,4D4C4C4E6E2F11F4F4F4E4D4_D8_D4_D4=D4E4F4D4E11F4C4C4=B,4C4D4D4_B,4D2E2F4=B,4C6_B,2A,12
%V:3
%F,4F,4F,4F,4F,4^F,4=G,4G,4B,4A,4G,2A,2B,4B,4A,11F,4F,4A,4A,4D4D4D4D4B,4A,4^G,2=A,2C6B,2A,11C4C4A,4B,4=B,4_D8_D4A,4D,4=E,4F,4=D4_D11C4C4A,4F,4F,4^F,4=G,4G,4B,4A,4G,2F,2F,6E,2F,12
%V:4
%F,4F,4F,4F,4F,4B,,4B,,4B,,4B,,4C,4C,4C,4C,4F,11F,4F,4_E,4D,4D,4G,4G,4G,,4B,,4C,6C,2C,6C,2F,11F,4F,4F,4G,4^G,4=A,8A,4A,,4D,4=E,4F,4_B,4A,11F,4F,4F,4F,4F,4B,,4B,,4B,,4B,,4C,4D,4C,6C,2F,,12
%F,4F,4F,4F,4F,4B,,4B,,4B,,4B,,4C,4C,4C,4C,4F,11F,4F,4_E,4D,4D,4G,4G,4G,,4B,,4C,6C,2C,6C,2F,11F,4F,4F,4G,4^G,4=A,8A,4A,,4D,4=E,4F,4_B,4A,11F,4F,4F,4F,4F,4B,,4B,,4B,,4B,,4C,4D,4C,6C,2F,,12
