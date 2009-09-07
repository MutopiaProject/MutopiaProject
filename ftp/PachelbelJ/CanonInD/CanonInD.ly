\version "2.12.1"

\paper {
  page-top-space = #0.0
  %indent = 0.0
  line-width = 18.0\cm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
  title = "Canon in D"
  composer = "Johann Pachelbel"
  mutopiacomposer = "PachelbelJ"
  mutopiainstrument = "Violin"
  style = "Baroque"
  source = "Jim Paterson www.mfiles.co.uk (with permission)"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Anonymous"
 
 % Note non-standard tagline to reflect the source used with permission
 footer = "Mutopia-2009/09/07-1700"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org, } based on work by Jim Paterson \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

 footer = "Mutopia-2009/09/03"

melody = {
  \time 4/4
  \clef treble 
  \relative c'' {
    \key d \major
    d2( cis)
    b( a)
    g( fis)
    g( b)
    fis a,( 
    d) fis( 
    b) d( 
    b) cis( 
    fis) e( 
    d) cis( 
    b) a( 
    b cis4) cis
    d8 cis d d, cis a' e fis
    d d' cis b cis fis, a b
    g fis e g fis e d cis' 
    b a g fis e g fis e
    d4 r r2
    r r
    cis2 b
    a g
    fis g
    fis a
    e'4 e( d) d( 
    cis) cis( b) b(
    a) a( g) g(
    a) a( b) b'
    e2 d
    cis b
    a g
    a fis
    g4. g8 g( a g fis
    e4.) e8 e( fis e d
    cis4.) a( g2)
    cis8( b a4 cis2.)
    b'( fis
    cis4) b( a b
    e2 b
    a4) a'( b fis)
    e g d fis
    cis e b d
    a cis g b
    cis a b fis
    g1
  }
}

% The score definition

\score {
        \context Staff << 
        \set Staff.instrumentName = "Violine"
        { \clef treble \key d \major \time 4/4 \melody  }
    >>
        \layout { }
         \midi { }
}
