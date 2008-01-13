\header {
	title = "He Leadeth Me"
	composer = "William B. Bradbury (1816-1868), 1864"
	mutopiatitle = "He Leadeth Me (hymntune)"
	mutopiacomposer = "BradburyWB"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1864"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1249"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key d \major a'4 fis'4. e'8 d'4 a' b' g' g' b' a'4. fis'8 fis'4 e' fis' fis' e' a' fis'4. e'8 d'4 a' b' g' d'' cis''8 b' a'4 fis' fis'8 e' d' e' fis'4. e'8 d'4 a' a' d'' cis'' e'' d'' cis''8 b' a'4 b' a' fis' fis'8 e' d' e' fis'4 fis' e' a' a' d'' cis'' e'' d'' cis''8 b' a'4 b' a' fis' fis'8 e' d' e' fis'4. e'8 d'4 s4  \bar "|." } }
Alto = { { \key d \major fis'4 d'4. a8 a4 d' d' d' d' g' fis'4. d'8 d'4 d' d' d' cis' cis' d'4. a8 a4 d' d' g' g' g' fis' d' d'8 cis' b cis' d'4. cis'8 d'4 fis' fis' d' e' a' a' g' fis' g' fis' d' d'8 cis' b cis' d'4 d' cis' fis' fis' d' e' a' a' g' fis' g' fis' d' d'8 cis' b cis' d'4. cis'8 d'4 s4  \bar "|." } }
Tenor = { { \key d \major a4 a4. g8 fis4 fis g b b d' d'4. a8 a4 g8 fis a4 a a a a4. g8 fis4 fis g b b d' d' a b fis a4. g8 fis4 a d' a a cis' d' d' d' d' d' a b fis a a a a d' a a cis' d' d' d' d' d' a b fis a4. g8 fis4 s4  \bar "|." } }
Bass = { { \key d \major d4 d4. d8 d4 d g g g g d4. d8 d4 d a, a, a, a, d4. d8 d4 d g g g g d d b, b, a,4. a,8 d4 d d fis a g fis g d d d d b, b, a, a, a, d d fis a g fis g d d d d b, b, a,4. a,8 d4 s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 112 4 ) } }
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
%T:He Leadeth Me
%M:4/4
%L:1/8
%C:William B. Bradbury (1816-1868), 1864
%Q:1/4=112
%F:he_leadeth_me.abc
%N:Public domain
%G:LM R
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Chalice=545 Partial=4 Title=He Leadeth Me
%V:1
%A4F6E2D4A4B4G4G4B4A6F2F4E4F4F4E4A4F6E2D4A4B4G4d4c2B2A4F4F2E2D2E2F6E2D4A4A4d4c4e4d4c2B2A4B4A4F4F2E2D2E2F4F4E4A4A4d4c4e4d4c2B2A4B4A4F4F2E2D2E2F6E2D4
%V:2
%F4D6A,2A,4D4D4D4D4G4F6D2D4D4D4D4C4C4D6A,2A,4D4D4G4G4G4F4D4D2C2B,2C2D6C2D4F4F4D4E4A4A4G4F4G4F4D4D2C2B,2C2D4D4C4F4F4D4E4A4A4G4F4G4F4D4D2C2B,2C2D6C2D4
%V:3
%A,4A,6G,2F,4F,4G,4B,4B,4D4D6A,2A,4G,2F,2A,4A,4A,4A,4A,6G,2F,4F,4G,4B,4B,4D4D4A,4B,4F,4A,6G,2F,4A,4D4A,4A,4C4D4D4D4D4D4A,4B,4F,4A,4A,4A,4A,4D4A,4A,4C4D4D4D4D4D4A,4B,4F,4A,6G,2F,4
%V:4
%D,4D,6D,2D,4D,4G,4G,4G,4G,4D,6D,2D,4D,4A,,4A,,4A,,4A,,4D,6D,2D,4D,4G,4G,4G,4G,4D,4D,4B,,4B,,4A,,6A,,2D,4D,4D,4F,4A,4G,4F,4G,4D,4D,4D,4D,4B,,4B,,4A,,4A,,4A,,4D,4D,4F,4A,4G,4F,4G,4D,4D,4D,4D,4B,,4B,,4A,,6A,,2D,4
%D,4D,6D,2D,4D,4G,4G,4G,4G,4D,6D,2D,4D,4A,,4A,,4A,,4A,,4D,6D,2D,4D,4G,4G,4G,4G,4D,4D,4B,,4B,,4A,,6A,,2D,4D,4D,4F,4A,4G,4F,4G,4D,4D,4D,4D,4B,,4B,,4A,,4A,,4A,,4D,4D,4F,4A,4G,4F,4G,4D,4D,4D,4D,4B,,4B,,4A,,6A,,2D,4
