% -*- coding: utf-8 -*-
\version "2.12.3"

um = \relative c'{
	\set Staff.midiInstrument = "violin"
 	\time 4/4
	\key c \major
	\clef treble

%1
  | c2 \downbow ^ \markup { \hspace #-5 \raise #-12.0 \fontsize #-1 \bold "Andante" }  c'4 (b) \noBreak
  | b2 (<a_0>) \noBreak
  | d,4-0 (e f g) \noBreak
  | f2 (e) \noBreak
  | e \upbow e'4-4 (d) \noBreak
  | \override Slur #'positions = #'(1.0 . 2) d (c b a-0)  \noBreak
  | b (d) c a-0 \noBreak
  | g2. r4 \break \noPageBreak

%2
  | g, \downbow (a) b c  \noBreak
  | c2 (b) \noBreak
  | d4-0 (e) f g \noBreak
  | f2 (e) \noBreak
  | e4 (f) g a-4  \noBreak
  | g2 (fis) \noBreak
  | a4_0 _(b) c d \noBreak
  | \override Slur #'positions = #'(1.0 . 1.0) c2 (b) \noBreak
  | b'4 (a) g fis \break \noPageBreak

%3
  | a (g) fis e-0 \noBreak
  | a (g) f e-0  \noBreak
  | g (f) e-4 d \noBreak
  | g (f) e-4 d \noBreak
  | d (c) b c \noBreak
  | d (c) b a-0 \noBreak
  | g (f) e d-0 \noBreak
  | c2 \downbow f4 (e) \break \noPageBreak

%4
  | e2 (d-0) \noBreak
  | d2\upbow g4 (f) \noBreak
  | f2 (e) \noBreak
  | e \downbow \override Slur #'positions = #'(1.0 . 1.0) c'4 (b) \noBreak
  | \override Slur #'positions = #'(2.5 . 1.0) a (b c e-4) \noBreak
  | d2 \upbow \override Slur #'positions = #'(1.0 . 1.0) b4 (a_0) \noBreak
  | \override Slur #'positions = #'(3.0 . 1.0)  g (a_0 b d) \noBreak
  | b' (a g fis) \noBreak
  | a (g fis e) \break \noPageBreak

%5
  | a (g fis e) \noBreak
  | g (fis a fis) \noBreak
  | \bowH e_4 \downbow (d) cis b  \noBreak
  | a_4 \upbow (g) fis e \noBreak
  | \bowH fis \downbow (a_4) g e \noBreak
  | d2 r \noBreak
  | \bowH \override Slur #'positions = #'(1.0 . 1.0) d'4 \downbow (c-0) b a \noBreak
  | g2 (f) \break \noPageBreak

%6
  | e4 \downbow (g) f a-4  \noBreak
  | g \upbow  e' (d) c \noBreak
  | f (e-0) d c \noBreak
  | \override Slur #'positions = #'(1.0 . 1.0) b2 (a-0) \noBreak
  | \override Slur #'positions = #'(2.0 . 1.0)  g4 (c) b d \noBreak
  | c g' (f) e \noBreak
  | bes' (a g f)  \noBreak
  | \override Slur #'positions = #'(1.0 . 2.0) e-4 (d c bes) \break \noPageBreak

%7
  | \bowH a2_0 \downbow a'4 \upbow (g) \noBreak
  | g (f) e-4 d \noBreak
  | g \upbow (e-0) d c \noBreak
  | \override Slur #'positions = #'(1.0 . 1.0) c (b) \override Slur #'positions = #'(1.0 . 0.0) a (b) \noBreak
  | c2 \downbow e4-4 (b)  \noBreak
  | a2-0 c4 (g) \noBreak
  | f2 a4-4 (e) \noBreak
  | d (a'-4) g (f) \noBreak
  | e2 g4 (d-0) \break \noPageBreak

%8
  | c2 e4 (b) \noBreak
  | a a'-4 (g f)  \noBreak
  | d-0 d' (c b) \noBreak
  | b (c) e-4 b \noBreak
  | \override Slur #'positions = #'(3.0 . 1.0)  a (d c b) \noBreak
  | \override Slur #'positions = #'(1.0 . 1.0) b (c) e b \noBreak
  | \bowH a \upbow a' (g) b, \noBreak
  | d2. (c4) \noBreak
  | c1 \bar "|." \pageBreak
}

