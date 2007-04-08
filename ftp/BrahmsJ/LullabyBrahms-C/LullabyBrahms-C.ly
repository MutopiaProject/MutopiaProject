% FILE:     Lullaby.ly
% LANGUAGE: lilypond
% AUTHOR:   Diego F Guillen
% DATE:     2004.10.07

\include "english.ly"
\version "2.2.3"

\header {
  title = "Cancion de Cuna"
  composer = "Johannes Brahms (1833-1897)"
  arranger = "Arreglo por Diego F Guillen"
  meter = "Slow Waltz"
  copyright = "Copyright 2004 Diego Guillen"
  maintainer = "Diego Guillen"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/10/11-481"
}

songSettings = \notes { 
  \time 3/4 
  \key c \major
  \clef treble 
  \tempo 4=80 
}

theChords = \notes \transpose g c \chords {
    r4 
    g4 b2:m
    g4 b2:m
    g4 b2:m 
    a4:m d2
    a4:m d2
    a4:m d2:7
    d2.:7
    g2 g4:7
    c2.
    g2.
    a4:m d2
    g2 g4:7
    c2.
    g2.
    a4:m b4:m d4:7
    g
  
}


theNotes = \notes \transpose g c \relative c' {
%    \setEasyHeads
    \partial 4
    b'8 b
    d4. b8 b4
    d2 b8 d8
    g4 fs4. e8
    e4 d4 a8 b8
    c4 a4 a8 b8
    c4 r4 a8 c8
    fs8 e8 d4 fs4
    g4 r4 g,8 g8
    g'2 e8 c8
    d2 b8 g8
    c4 d4 e4
    b8 d4. g,8 g8
    g'2 e8 c8
    d2 b8 g8 
    c8 d16 (c16) b4 a4
    g2
    \bar ":|"

}


wholeStaff = \context Staff {
  \songSettings
  << { \context ChordNames \theChords }
     { \theNotes  } >>
     
}


\score {

  \wholeStaff
  
  \midi { \tempo 4 = 80 }
  \paper { }
}

