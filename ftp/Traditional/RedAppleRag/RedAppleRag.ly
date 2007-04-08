\version "2.4.2"

\header {
  title = "Red Apple Rag"
  piece = "Traditional"
  mutopiatitle = "Red Apple Rag"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar"
  source = "Transcribed by ear (no copyright)"
  style = "Folk"
  copyright = "Public Domain. Please copy and share."
  maintainer = "Taj Morton"
  maintainerEmail = "taj@wildgardenseed.com"
  maintainerWeb = "http://www.wildgardenseed.com"
  lastupdated = "2005/Jan/18"
  meter = 120
  
  footer = "Mutopia-2005/01/18-529"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
} 

melody = \relative c'
{
  \key g \major
  \partial 8*2 b8\upbow( a8 )
  
  \repeat volta 2 {
    g a b c d fis g a
    b d b a g e d b
    c\downbow( b) c\upbow( d) e g c d
    e g e d c2
    
    d,8\upbow( e) fis g a cis d e fis
    a fis e d fis e d

    g\downbow( b) g\upbow( e) d b a fis
    %g\downbow( fis) a-4\upbow( fis) g e d b
  }
    
    \alternative {
        {
          g\downbow( fis) a-4\upbow( fis) g e d b
        }
        
        {
          g'\downbow( fis) a-4\upbow( fis) g a b c \bar "||"
        }
    }
  \break

% Part 2

  \repeat volta 2 {
    d8\downbow g4\upbow d8\downbow g2\upbow
    b8\upbow( a) g b a g e d
    c d c d e c e fis
    g e fis g a g e c
    d\downbow( c) d\upbow( e) fis d fis g
    a b a g fis d e fis

    g\downbow( b) g\upbow( e) d b a fis
    % g\downbow( fis) a-4\upbow( fis) g2
  }
  
  \alternative {
  {
    g\downbow( fis) a-4\upbow( fis) g a b c
  }
  {
    g\downbow( fis) a-4\upbow( fis) g2 \bar "|."
  }
  }
}

harmonies = \chordmode {
   r4
   g4 g4 g4 g4
   g4 g4 g4 g4
   c4 c4 c4 c4
   c4 c4 c4 c4
   d4 d4 d4 d4
   d4 d4 d4 d4
   d4 d4 d4 d4
   g4 g4 g4 g4
   g4 g4 g4 g4 % 2nd ending

   % Part 2
   g4 g4 g4 g4
   g4 g4 g4 g4
   c4 c4 c4 c4
   c4 c4 c4 c4
   d4 d4 d4 d4
   d4 d4 d4 d4
   d4 d4 d4 d4
   g4 g4 g4 g4
   g4 g4 g4 g4 % 2nd ending
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
