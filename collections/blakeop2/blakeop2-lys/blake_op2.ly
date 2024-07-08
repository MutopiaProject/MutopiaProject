\version "2.16.0"
\include "book-titling.ily"

\paper {
  %#(set-paper-size "tabloid" 'landscape)
  %#(set-paper-size "a2" 'landscape)
  two-sided = ##t
  top-margin = 36\pt
  ragged-bottom = ##t
  bookTitleMarkup = \markup \column {
    \vspace #6
    \fill-line { \fontsize #8 \italic "Benjamin Blake" }
    \vspace #2
    \fill-line { \fontsize #6 \italic "1751–1827" }
    \vspace #4
    \fill-line { \fontsize #10 "A Second Sett of Six Duetts" }
    \vspace #2
    \fill-line { \fontsize #10 "for a Violin & Tenor" }
    \vspace #6
    \fill-line { \postscript #"-20 0 moveto 40 0 rlineto stroke" }
    \vspace #6
    \fill-line { \fontsize #6 "1781" }
  }
}

%% Table of contents
\pageBreak
\markup {\vspace #2 \fill-line{ \teeny "This page intentionally left blank." } }
\pageBreak
\markuplist \table-of-contents
\pageBreak
\include "blake_bio.ly"
\pageBreak
\chapter "Opus 2"

\section \markup "No. 1"
\include "bb_2_1_header.ly"
\include "bb_2_1_parts.ly"
\titledPiece \markup "Duetto I"
\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_i
  \header {
    piece = "Duetto I"
    meter = "Allegro Moderato"
  }
  \layout { }
}
\pageBreak
\titledPiece \markup "Rondo"
\score {
  \new StaffGroup \keepWithTag #'score \part_rondo
  \header {
    piece = "Rondo"
  }
  \layout { }
}
\pageBreak
\titledPiece \markup "Minore"
\score {
  \new StaffGroup \keepWithTag #'score \part_minore
  \header {
    piece = "Minore"
  }
  \layout { }
}

\pageBreak
\section \markup "No. 2"
\include "bb_2_2_header.ly"
\include "bb_2_2_parts.ly"
\titledPiece \markup "Duetto II"
\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_ii
  \header {
    piece = "Duetto II"
  }
  \layout { }
}
\pageBreak
\titledPiece \markup "Minuetto"
\score {
  \new StaffGroup \keepWithTag #'score \part_minuetto
  \header {
    piece = "Minuetto"
  }
  \layout { }
}
\pageBreak
\section \markup "No. 3"
\include "bb_2_3_header.ly"
\include "bb_2_3_parts.ly"
\titledPiece \markup "Duetto III"
\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_iii
  \header {
    piece = "Duetto III"
  }
  \layout { }
}
\pageBreak
\titledPiece \markup "Rondo"
\score {
  \new StaffGroup \keepWithTag #'score \part_rondo
  \header {
    piece = "Rondo"
  }
  \layout { }
}
\pageBreak
\section \markup "No. 4"
\include "bb_2_4_header.ly"
\include "bb_2_4_parts.ly"
\titledPiece \markup "Duetto IV"
\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_iv
  \header {
    piece = "Duetto IV"
  }
  \layout { }
}
\pageBreak
\titledPiece \markup "Rondo"
\score {
  \new StaffGroup \keepWithTag #'score \part_rondo
  \header {
    piece = "Rondo"
  }
  \layout { }
}
\pageBreak
\section \markup "No. 5"
\include "bb_2_5_header.ly"
\include "bb_2_5_parts.ly"
\titledPiece \markup "Duetto V"
\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_v
  \header {
    piece = "Duetto V"
  }
  \layout { }
}
\pageBreak
\titledPiece \markup "Minuetto"
\score {
  \new StaffGroup \keepWithTag #'score \part_minuetto
  \header {
    piece = "Minuetto"
  }
  \layout { }
}
\pageBreak
\section \markup "No. 6"
\include "bb_2_6_header.ly"
\include "bb_2_6_parts.ly"
\titledPiece \markup "Duetto VI"
\score {
  \new StaffGroup \keepWithTag #'score \part_duetto_vi
  \header {
    piece = "Duetto VI"
  }
  \layout { }
}
\pageBreak
\titledPiece \markup "Rondo"
\score {
  \new StaffGroup \keepWithTag #'score \part_rondo
  \header {
    piece = "Rondo"
  }
  \layout { }
}
\pageBreak
\titledPiece \markup "Minore"
\score {
  \new StaffGroup \keepWithTag #'score \part_minore
  \header {
    piece = "Minore"
  }
  \layout { }
}
