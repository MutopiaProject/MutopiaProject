\version "2.7.24"

\header{
    title = "The Holly and the Ivy"
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Druidic (Celtic?) Traditional"
    copyright = "Public Domain"
    source = "http://www.hymnsandcarolsofchristmas.com/Hymns_and_Carols/holly_and_the_ivy.htm"
    opus = ""
    lastupdated = "2005/Dec/12"
    enteredby = "Geoffrey Lehr"
    maintainer = "Geoffrey Lehr"
    maintainerEmail = "jademystery@hotmail.com"
    
    mutopiatitle = "Holly and the Ivy, The"
    mutopiacomposer = "Traditional"
    mutopiainstrument = "Voice"
    style="Song"
    
    footer = "Mutopia-2005/12/23-644"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}



global = {
  \key f \major
  \time 3/4
}

soprano =  \relative c' {
  \partial 4
  f4 |
  f8 f f4 d' | % 1
  c a4. f8 |
  f8 f f4 d' | % 3
  c2 c8( bes) |
  a8 g f4 a8 a | % 5
  d,8 d c4 f8 (g) |
  a bes a4 g | % 7
  f2 

% Chorus

  f4 |
  f8 f f4 d' | % 9
  c a4. f8 |
  f8 f f4 d' | % 11
  c2 c8( bes) |
  a8 g f4 a4 | % 13
  d,8 d c4 f8 (g) |
  a bes a4 g | % 15
  f2 
} 

Refrain = \lyricmode
{
  The ri -- sing of the sun,
  and the runn -- ing of the deer;
  The play -- ing of the merr -- y pipes,
  Sweet sing -- ing in good cheer.
}


VerseI = \lyricmode
{
  The Hol -- ly and the I -- vy
  when they are both full grown,
  Of all the trees that are in the wood,
  the Hol -- ly bears the crown.

  \Refrain
}

\score {
  {
  <<
    \context Voice = Vone { 
      \global
      \clef treble
      \soprano
      \bar ":|"
    }
	
   \lyricsto Vone \new Lyrics { \VerseI }
   >>
 }
  \layout {}
  \midi{ \tempo 4 = 120  }
}

