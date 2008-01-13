\header {
	title = "Blessed Assurance"
	composer = "Phoebe P. Knapp (1839-1908)"
	mutopiatitle = "Blessed Assurance (hymntune)"
	mutopiacomposer = "KnappPP"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1225"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 9/8 \partial 4.  { \key d \major fis'8 e' d' a'4. a' g'8 a' b' a'2. a'8 fis' a' d''4. cis''4 cis''8 b' a' gis' a'2. fis'8 e' d' a'4. a' g'8 a' b' a'2. d'8 e' fis' g'4. e' d'8 e' cis' d'2. a'8 a' a' d''4. a' b'8 b' b' a'2. a'8 a' a' b'4. d'' cis''8 cis'' b' cis''2. cis''8 d'' e'' d''4. a' b'8 a' b' a'2. d'8 e' fis' g'4. e' d'8. e'16 cis'8 d'2. s4.  \bar "|." } }
Alto = { { \key d \major d'8 d' d' fis'4. fis' d'8 d' d' d'2. fis'8 d' fis' fis'4. e'4 e'8 e' e' e' e'2. d'8 d' d' fis'4. fis' d'8 d' d' d'2. d'8 d' d' e'4. b d'8 cis' a a2. fis'8 fis' fis' fis'4. fis' g'8 g' g' fis'2. fis'8 fis' fis' g'4. a' a'8 a' gis' a'2. g'8 g' g' fis'4. fis' g'8 fis' g' fis'2. d'8 cis' d' e'4. b d'8. cis'16 a8 a2. s4.  \bar "|." } }
Tenor = { { \key d \major a8 g fis a4. a b8 fis g fis2. a8 a a a4. a4 a8 d' cis' b cis'2. a8 g fis a4. a b8 fis g fis2. fis8 g a b4. g fis8 g g fis2. d'8 d' d' a4. d' d'8 d' d' d'2. d'8 d' d' d'4. d' e'8 e' e' e'2. a8 b cis' d'4. d' d'8 d' d' d'2. a8 a a b4. g fis8. g16 e8 fis2. s4.  \bar "|." } }
Bass = { { \key d \major d8 d d d4. d d8 d d d2. d8 d d d4. e4 e8 e e e a,2. d8 d d d4. d d8 d d d2. d8 d d g,4. g, a,8 a, a, d2. d8 d d d4. d g8 g g d2. d8 d d g4. fis e8 e e a2. a8 a a d4. d d8 d d d2. fis8 e d g,4. g, a,8. a,16 a,8 d2. s4.  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 115 4 ) } }
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
%T:Blessed Assurance
%M:9/8
%L:1/8
%C:Phoebe P. Knapp (1839-1908)
%Q:1/4=115
%F:blessed_assurance.abc
%N:Public domain
%G:9.10.9.9 R
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Chalice=543 Partial=4. Celebration=572 Title=Blessed Assurance
%V:1
%F2E2D2A6A6G2A2B2A12A2F2A2d6c4c2B2A2^G2A11F2E2D2A6A6=G2A2B2A12D2E2F2G6E6D2E2C2D11A2A2A2d6A6B2B2B2A12A2A2A2B6d6c2c2B2c11c2d2e2d6A6B2A2B2A12D2E2F2G6E6D3E1C2D12
%V:2
%D2D2D2F6F6D2D2D2D12F2D2F2F6E4E2E2E2E2E11D2D2D2F6F6D2D2D2D12D2D2D2E6B,6D2C2A,2A,11F2F2F2F6F6G2G2G2F12F2F2F2G6A6A2A2^G2A11=G2G2G2F6F6G2F2G2F12D2C2D2E6B,6D3C1A,2A,12
%V:3
%A,2G,2F,2A,6A,6B,2F,2G,2F,12A,2A,2A,2A,6A,4A,2D2C2B,2C11A,2G,2F,2A,6A,6B,2F,2G,2F,12F,2G,2A,2B,6G,6F,2G,2G,2F,11D2D2D2A,6D6D2D2D2D12D2D2D2D6D6E2E2E2E11A,2B,2C2D6D6D2D2D2D12A,2A,2A,2B,6G,6F,3G,1E,2F,12
%V:4
%D,2D,2D,2D,6D,6D,2D,2D,2D,12D,2D,2D,2D,6E,4E,2E,2E,2E,2A,,11D,2D,2D,2D,6D,6D,2D,2D,2D,12D,2D,2D,2G,,6G,,6A,,2A,,2A,,2D,11D,2D,2D,2D,6D,6G,2G,2G,2D,12D,2D,2D,2G,6F,6E,2E,2E,2A,11A,2A,2A,2D,6D,6D,2D,2D,2D,12F,2E,2D,2G,,6G,,6A,,3A,,1A,,2D,12
%D,2D,2D,2D,6D,6D,2D,2D,2D,12D,2D,2D,2D,6E,4E,2E,2E,2E,2A,,11D,2D,2D,2D,6D,6D,2D,2D,2D,12D,2D,2D,2G,,6G,,6A,,2A,,2A,,2D,11D,2D,2D,2D,6D,6G,2G,2G,2D,12D,2D,2D,2G,6F,6E,2E,2E,2A,11A,2A,2A,2D,6D,6D,2D,2D,2D,12F,2E,2D,2G,,6G,,6A,,3A,,1A,,2D,12
