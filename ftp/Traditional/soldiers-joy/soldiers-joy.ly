\version "2.4.2"
\header {
  title = "Soldier's Joy"
  piece = "Traditional"
  mutopiatitle = "Soldier's Joy"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar"
  source = "Transcribed by ear (no copyright)"
  style = "Folk"
  copyright = "Public Domain"
  maintainer = "Taj Morton"
  maintainerEmail = "taj@wildgardenseed.com"
  maintainerWeb = "http://www.wildgardenseed.com"
  lastupdated = "2004/Dec/19"
  meter = 120
  
  footer = "Mutopia-2004/12/19-510"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

melody = \relative c'
{
  \key d \major
  \partial 8*2 fis8( g8 )

  \repeat volta 2 {
    a8 fis8 d8 fis8
    a8 fis8 d8 fis8
    a4 d4 d4
    cis8 ( b8 )
    a8 fis8 d8 fis8
    a8 fis8 d8 fis8
    g4 e4 e4

    fis8( g8 )
    a8 fis8 d8 fis8
    a8 fis8 d8 fis8
    a4 d4 d4 e8( g8 )

    fis8 a8 fis8 d8
    e8 g8 fis8 e8
    }

    \alternative {
        {
          d4 d8 d8 d4 fis,8( g8 )
        }

        {
          d'4 << d4 fis >> << d fis >> d8( e8 )
        }
    }
  \break

% Part 2

  \repeat volta 2 {
    fis4 g4 a4 g8( fis8)
    e8 d8 e8 fis8 g4 e8( g8)

    fis4 g4 a4 g8( fis8)
    e8 d8 cis8 b8 a4 d8( e8)

    fis4 g4 a4 g8( fis8)
    e8 d8 e8 fis8 g4 e8( g8)

    fis8 a fis d e g fis e
  }

  \alternative {
    {
      d4 d8 d d4 d8( e)
    }
    {
      d4 << d8 fis8 >> << d fis >> << d4 fis4 >> \bar "|."
    }
  }
}

harmonies = \chordmode {
   r4
   d4 d4 d4 d4
   d4 d4 d4 d4
   d4 d4 d4 d4
   a4 a4 a4 a4
   d4 d4 d4 d4
   d4 d4 d4 d4
   d4 d4 a4 a4
   d4 d4 d4 d4
   d4 d4 d4 d4

   d4 d4 d4 d4
   g4 g4 g4 g4
   d4 d4 d4 d4
   a4 a4 a4 a4
   d4 d4 d4 d4
   g4 g4 g4 g4
   g4 g4 a4 a4
   d4 d4 d4 d4
   d4 d4 d4 d4
}

\score {
   <<
      \context ChordNames {
         \set chordChanges = ##t
         \harmonies
      }
   \context Staff = one \melody
   >>
   
   \midi { \tempo 4=120 }
   
   \layout{ }
}

