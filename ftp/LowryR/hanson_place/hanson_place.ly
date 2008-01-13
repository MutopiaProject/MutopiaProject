\header {
	title = "Hanson Place"
	composer = "Robert Lowry (1826-1899), 1864"
	mutopiatitle = "Hanson Place (hymntune)"
	mutopiacomposer = "LowryR"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1864"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1248"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key d \major fis'4 fis' fis'8. e'16 fis'8. g'16 a'2 fis' g'4 g' g'8. a'16 g'8. fis'16 e'2 ( a' ) fis'4 fis' fis'8. e'16 fis'8. g'16 a'2 fis'4 fis'8 g' e'4 e'8 fis' g'4 fis'8 e' d'1 b'4 b' d''8. cis''16 d''8. b'16 a'2 fis'4. fis'8 g'8. fis'16 g'8. fis'16 g'8. fis'16 g'8 e' fis'2 a' b'8. b'16 b'8. b'16 d''8. cis''16 d''8. b'16 a'2 fis'4 fis' e' e'8. fis'16 g'4 fis'8 e' d'1  \bar "|." } }
Alto = { { \key d \major d'4 d' d'8. d'16 d'8. e'16 fis'2 d' e'4 e' e'8. fis'16 e'8. d'16 cis'1 d'4 d' d'8. d'16 d'8. e'16 fis'2 d'4 d'8 e' cis'4 cis'8 d' e'4 d'8 cis' d'1 g'4 g' g'8. g'16 g'8. g'16 fis'2 d'4. d'8 e'8. dis'16 e'8. dis'16 e'8. dis'16 e'8 cis' d'2 fis' g'8. g'16 g'8. g'16 g'8. cis''16 g'8. g'16 fis'2 d'4 d' cis' cis'8. d'16 e'4 d'8 cis' d'1  \bar "|." } }
Tenor = { { \key d \major a4 a a8. a16 a8. a16 d'2 a a4 a a8. a16 a8. a16 a1 a4 a a8. a16 a8. a16 d'2 a4 a8 a a4 a a a8 g fis1 d'4 d' b8. ais16 b8. d'16 d'2 a4. a8 a8. a16 a8. a16 a8. a16 a4 a2 d' d'8. d'16 d'8. d'16 b8. ais16 b8. d'16 d'2 a4 a a a8. a16 a4 a8 g fis1  \bar "|." } }
Bass = { { \key d \major d4 d d8. d16 d8. d16 d2 d a,4 a, a,8. a,16 a,8. a,16 a,1 d4 d d8. d16 d8. d16 d2 d4 d8 d a,4 a, a, a, d1 g4 g g8. g16 g8. g16 d2 d4. d8 a,8. a,16 a,8. a,16 a,8. a,16 a,4 d2 d g8. g16 g8. g16 g8. ais16 g8. g16 d2 d4 d a, a,8. a,16 a,4 a, d1  \bar "|." } }


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
%T:Hanson Place
%M:4/4
%L:1/8
%C:Robert Lowry (1826-1899), 1864
%Q:1/4=115
%F:hanson_place.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Chalice=701 Title=Shall We Gather at the River
%V:1
%F4F4F3E1F3G1A8F8G4G4G3A1G3F1E8-A8F4F4F3E1F3G1A8F4F2G2E4E2F2G4F2E2D16B4B4d3c1d3B1A8F6F2G3F1G3F1G3F1G2E2F8A8B3B1B3B1d3c1d3B1A8F4F4E4E3F1G4F2E2D16
%V:2
%D4D4D3D1D3E1F8D8E4E4E3F1E3D1C16D4D4D3D1D3E1F8D4D2E2C4C2D2E4D2C2D16G4G4G3G1G3G1F8D6D2E3^D1E3^D1E3^D1E2C2=D8F8G3G1G3G1G3c1G3G1F8D4D4C4C3D1E4D2C2D16
%V:3
%A,4A,4A,3A,1A,3A,1D8A,8A,4A,4A,3A,1A,3A,1A,16A,4A,4A,3A,1A,3A,1D8A,4A,2A,2A,4A,4A,4A,2G,2F,16D4D4B,3^A,1B,3D1D8=A,6A,2A,3A,1A,3A,1A,3A,1A,4A,8D8D3D1D3D1B,3^A,1B,3D1D8=A,4A,4A,4A,3A,1A,4A,2G,2F,16
%V:4
%D,4D,4D,3D,1D,3D,1D,8D,8A,,4A,,4A,,3A,,1A,,3A,,1A,,16D,4D,4D,3D,1D,3D,1D,8D,4D,2D,2A,,4A,,4A,,4A,,4D,16G,4G,4G,3G,1G,3G,1D,8D,6D,2A,,3A,,1A,,3A,,1A,,3A,,1A,,4D,8D,8G,3G,1G,3G,1G,3^A,1G,3G,1D,8D,4D,4A,,4A,,3A,,1A,,4A,,4D,16
%D,4D,4D,3D,1D,3D,1D,8D,8A,,4A,,4A,,3A,,1A,,3A,,1A,,16D,4D,4D,3D,1D,3D,1D,8D,4D,2D,2A,,4A,,4A,,4A,,4D,16G,4G,4G,3G,1G,3G,1D,8D,6D,2A,,3A,,1A,,3A,,1A,,3A,,1A,,4D,8D,8G,3G,1G,3G,1G,3^A,1G,3G,1D,8D,4D,4A,,4A,,3A,,1A,,4A,,4D,16
