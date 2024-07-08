% -*- coding: utf-8 -*-
\version "2.24.0"

doze = \relative a{
	\set Staff.midiInstrument = "violin"
	\time 3/4
	\key c \major
	\clef treble

\override TupletBracket.bracket-visibility = ##f
%1
  | c4 \downbow ^ \markup { \hspace #-5 \raise #-14.0 \fontsize #-1 \bold "Allegro moderato" } \tuplet 3/2 {c'8-. \upbow (b-. a-.} \tuplet 3/2 {g-. f-. e-.)} \noBreak
  | d4 \tuplet 3/2 {d'8-. (c-. b-. } \tuplet 3/2 {a-. g-. f-.)} \noBreak
  | e4 \tuplet 3/2 {e'8-. (d-. c-.} \tuplet 3/2 {b-. a-. g-.)} \noBreak
  | g'2 e4 \noBreak
  | d \tuplet 3/2 {g,8-. (fis-. g-.} \tuplet 3/2 {a-. b-. d-.)}\break \noPageBreak
%2
  | e4 \tuplet 3/2 {g,8-. (a-. b-.} \tuplet 3/2 {c-. d-. e-.)} \noBreak
  | f4 \tuplet 3/2 {a8-. (g-. f-.} \tuplet 3/2 {e-. d-. c-.)} \noBreak
  | b4 \tuplet 3/2 {c8-. (b-. a-.} \tuplet 3/2 {g-. f-. d-.)} \noBreak
  | c4 \tuplet 3/2 {c'8-. \upbow (b-. a-.} \tuplet 3/2 {g-. f-. e-.)} \noBreak
  | d4 \tuplet 3/2 {d'8-. (c-. b-. } \tuplet 3/2 {a-. g-. f-.)}\break \noPageBreak
%3
  | e4 \tuplet 3/2 {e'8-. (d-. c-.} \tuplet 3/2 {b-. a-. g-.)}\noBreak
  | g'2 e4 \noBreak
  | d4 \tuplet 3/2 {g8-. (fis-. e-.} \tuplet 3/2 {d-. c-. b-.)}\noBreak
  | a4 \tuplet 3/2 {e'8-. (d-. c-.} \tuplet 3/2 {b-. a-. g-.)} \noBreak
  | fis4 \tuplet 3/2 {d'8-. (c-. b-.} \tuplet 3/2 {a-. g-. fis-.)} \noBreak
  | g2 g,4 \break \noPageBreak
%4
  | \tuplet 3/2 {g8-. \downbow a-. \upbow (b-.} \tuplet 3/2 {c-. d-. e-.} \tuplet 3/2 {f-. g-. a-.)}\noBreak
  | b4 (d) g \noBreak
  | \tuplet 3/2 {e8-. g-. (f-.} \tuplet 3/2 {e-. d-. c-. } \tuplet 3/2 {b-. a-. g-.)}\noBreak
  | e4 (g) c, \noBreak
  | \tuplet 3/2 {a8-. b-. (cis-. d-.-0 e-. f-. g-. a-.-0 b-.)}\noBreak
  | cis4 (e-4) a \pageBreak
%5
  | \tuplet 3/2 {f8-. a-. (g-. f-. e-. d-. c-. bes-. a-.-0)} \noBreak
  |  f4 (a-4) d,-0 \noBreak
  | \tuplet 3/2 {d8-. e-. (fis-. g-. a-. b-. c-. d-. e-.)} \noBreak
  | fis4 (a) c, \noBreak
  | \tuplet 3/2 {b8-. e-.-4 (d-. c-. b-. a-.-0 g-. fis-. e-.)} \break \noPageBreak
%6
  | d4 (g) e \noBreak
  |  \tuplet 3/2 {d8-. e-. (fis-. g-. a-. b-. c-. d-. e-.)} \noBreak
  | fis4 (a) c, \noBreak
  | \tuplet 3/2 {b8-. a-. (g-. fis-. e-. d-.-0 c-. b-. a-.)}\noBreak
  | g4 (d'-4) b \noBreak
  | g \tuplet 3/2 {g'8-. fis-. (e-. d-._0 c-. b-.)} \break \noPageBreak
%7
  | a4 \tuplet 3/2 {a'8-. g-. (fis-. e-. d-. c-.)} \noBreak
  | b4 \tuplet 3/2 {b'8-. a-. (g-. f-. e-. d-.)} \noBreak
  | g4 \tuplet 3/2 {f'8-. e-. (d-. c-. b-. d-.)} \noBreak
  | c4 \downbow \tuplet 3/2 {c8-. (b-. a-._0 g-. f-. e-.)} \noBreak
  | d4 \tuplet 3/2 {d'8-. (c-. b-. } \tuplet 3/2 {a-. g-. f-.)} \break \noPageBreak
%8
  | e4 \tuplet 3/2 {e'8-. (d-. c-.} \tuplet 3/2 {b-. a-. g-.)} \noBreak
  | g'2 e4 \noBreak
  | d \tuplet 3/2 {g,8-. (fis-. g-.} \tuplet 3/2 {a-. b-. d-.)}\noBreak
  | e4 \tuplet 3/2 {g,8-. (a-. b-.} \tuplet 3/2 {c-. d-. e-.)} \noBreak
  | f4 \tuplet 3/2 {a8-. (g-. f-.} \tuplet 3/2 {e-. d-. c-.)} \noBreak
  | b4 \tuplet 3/2 {c8-. (b-. a-.} \tuplet 3/2 {g-. f-. d-.)} \break \noPageBreak
%9
  | c4 \tuplet 3/2 {c'8-. \upbow (b-. a-.} \tuplet 3/2 {g-. f-. e-.)} \noBreak
  | d4 \tuplet 3/2 {d'8-. (c-. b-. } \tuplet 3/2 {a-. g-. f-.)}\noBreak
  | e4 \tuplet 3/2 {e'8-. (d-. c-.} \tuplet 3/2 {b-. a-. g-.)} \noBreak
  | g'2 c,4 \noBreak
  | \tuplet 3/2 { bes'8-. \downbow  bes-. \upbow (a-. g-. f-. e-. d-. c-. bes-.)} \noBreak
  | a4 (c) f \break \noPageBreak
%10
  | \tuplet 3/2 { a8-. a-. (g-. f-. e-. d-. c-. b-. a-.-0)}\noBreak
  | g4 (b) e-4 \noBreak
  |  \tuplet 3/2 {g8-. g-. ( f-. e-.-4 d-. c-. b-. a-.-4 g-.)} \noBreak
  | f4 (a-4) d \noBreak
  | \tuplet 3/2 { f8-. f-. (e-. d-. c-. b-. a-. g-. f-.)} \noBreak
  |  e4 (g) c \break \noPageBreak
%11
  | \tuplet 3/2 { e8-. e-. (d-. c-. b-. a-. g-. fis-. e-.)} \noBreak
  | \tuplet 3/2 { d8-.-0 a'-.-4 (g-. fis-. e-. d-. c-. b-. a-.)} \noBreak
  | g8 (c) e-- g-- c-- e-- \noBreak
  | \tuplet 3/2 { a8-. (g-. f-. e-. d-. c-. b-. c-. d-.)} \noBreak
  | c4  \tuplet 3/2 { b8-. (a-. g-. f-. e-. d-.-0)} \noBreak
  | c2.  \bar "|."   \noPageBreak
}
