\version "2.12.1"
\include "english.ly"

\header
{
  title    	    = "Polonaise in D minor"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV Anh. 128"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2009/01/06-1615"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative d'
{
  \clef treble
  \key d \minor
  \time 3/4

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat volta 2
  {
    d'8 d16 cs d4\mordent d32 e f8. 		       | % 1
    \appoggiatura f16 e16 d e8 a,2  		       | % 2
    e'8 e16 d e4\mordent e32 f g8.  		       | % 3
    f8 f16 e f8 f16 e d4\mordent    		       | % 4
    f8 \times 2/3 { f16 g a } g8 e \appoggiatura d8 c4 | % 5
    g'8 g16 a bf8 a bf4                                | % 6
    a8 g16 f g4\mordent e\trill                        | % 7
    f8 f16 e f4\mordent f,                             | % 8
  }

  \repeat volta 2
  {
    a'8 a16 g a4\mordent a32 bf c8.                    | % 9 
    a8 a16 g a8 a16 g f4\mordent                       | % 10
    c8 bf16 a d8 c bf\trill a                          | % 11
    g8 g' \appoggiatura f8 e2\trill                    | % 12
    g,16 c e c g16 c e c g16 c e d                     | % 13
    c8 \times 2/3 { e16 f g } bf,2\mordent             | % 14
    \appoggiatura c16 bf16 a bf g a2\mordent           | % 15
    a8. d16 \appoggiatura d8 cs2\trill                 | % 16
    d8. e16 f8 a d a                                   | % 17
    g16 f e f d4\mordent d,                            | % 18
  }
}

lower = \relative ef
{
  \clef bass
  \key d \minor
  \time 3/4

  \repeat volta 2
  {
    d4 f d   | % 1
    a4 a' e  | % 2
    cs4 a cs | % 3
    d4 a d,  | % 4
    d'4 e e  | % 5
    c4 c e   | % 6
    f4 bf, c | % 7
    f,2.     | % 8
  }

  \repeat volta 2
  {
    f4 f' e  | % 9
    f4 c f,  | % 10
    a'4 bf g | % 11
    bf4 c c, | % 12
    c4 c c   | % 13
    c4 e d   | % 14
    c4 f e   | % 15
    d4 a' g  | % 16
    f4 d f   | % 17
    a4 d,2   | % 18
  }
}

\score
{
  \new PianoStaff
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

  \layout { }
  \midi
  {
    \context 
    {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 4)
    }
  }
}
