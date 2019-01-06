% -*- coding: utf-8 -*-
\version "2.12.3"

doze = \relative a{
	\set Staff.midiInstrument = "violin"
	\time 3/4
	\key c \major
	\clef treble

#(override-auto-beam-setting '(end * * 3 4) 2 4)
\override TupletBracket #'bracket-visibility = ##f
%1
  | c4 \downbow ^ \markup { \hspace #-5 \raise #-14.0 \fontsize #-1 \bold "Allegro moderato" } \times 2/3 {c'8-. \upbow (b-. a-.} \times 2/3 {g-. f-. e-.)} \noBreak
  | d4 \times 2/3 {d'8-. (c-. b-. } \times 2/3 {a-. g-. f-.)} \noBreak
  | e4 \times 2/3 {e'8-. (d-. c-.} \times 2/3 {b-. a-. g-.)} \noBreak
  | g'2 e4 \noBreak
  | d \times 2/3 {g,8-. (fis-. g-.} \times 2/3 {a-. b-. d-.)}\break \noPageBreak
%2
  | e4 \times 2/3 {g,8-. (a-. b-.} \times 2/3 {c-. d-. e-.)} \noBreak
  | f4 \times 2/3 {a8-. (g-. f-.} \times 2/3 {e-. d-. c-.)} \noBreak
  | b4 \times 2/3 {c8-. (b-. a-.} \times 2/3 {g-. f-. d-.)} \noBreak
  | c4 \times 2/3 {c'8-. \upbow (b-. a-.} \times 2/3 {g-. f-. e-.)} \noBreak
  | d4 \times 2/3 {d'8-. (c-. b-. } \times 2/3 {a-. g-. f-.)}\break \noPageBreak
%3
  | e4 \times 2/3 {e'8-. (d-. c-.} \times 2/3 {b-. a-. g-.)}\noBreak
  | g'2 e4 \noBreak
  | d4 \times 2/3 {g8-. (fis-. e-.} \times 2/3 {d-. c-. b-.)}\noBreak
  | a4 \times 2/3 {e'8-. (d-. c-.} \times 2/3 {b-. a-. g-.)} \noBreak
  | fis4 \times 2/3 {d'8-. (c-. b-.} \times 2/3 {a-. g-. fis-.)} \noBreak
  | g2 g,4 \break \noPageBreak
%4
  | #(override-auto-beam-setting '(end * * 3 4) 1 4) \times 2/3 {g8-. \downbow a-. \upbow (b-.} \times 2/3 {c-. d-. e-.} \times 2/3 {f-. g-. a-.)}\noBreak
  | b4 (d) g \noBreak
  | \times 2/3 {e8-. g-. (f-.} \times 2/3 {e-. d-. c-. } \times 2/3 {b-. a-. g-.)}\noBreak
  | e4 (g) c, \noBreak
  | \times 2/3 {a8-. b-. (cis-. d-.-0 e-. f-. g-. a-.-0 b-.)}\noBreak
  | cis4 (e-4) a \pageBreak
%5
  | \times 2/3 {f8-. a-. (g-. f-. e-. d-. c-. bes-. a-.-0)} \noBreak
  |  f4 (a-4) d,-0 \noBreak
  | \times 2/3 {d8-. e-. (fis-. g-. a-. b-. c-. d-. e-.)} \noBreak
  | fis4 (a) c, \noBreak
  | \times 2/3 {b8-. e-.-4 (d-. c-. b-. a-.-0 g-. fis-. e-.)} \break \noPageBreak
%6
  | d4 (g) e \noBreak
  |  \times 2/3 {d8-. e-. (fis-. g-. a-. b-. c-. d-. e-.)} \noBreak
  | fis4 (a) c, \noBreak
  | \times 2/3 {b8-. a-. (g-. fis-. e-. d-.-0 c-. b-. a-.)}\noBreak
  | g4 (d'-4) b \noBreak
  | g \times 2/3 {g'8-. fis-. (e-. d-._0 c-. b-.)} \break \noPageBreak
%7
  | a4 \times 2/3 {a'8-. g-. (fis-. e-. d-. c-.)} \noBreak
  | b4 \times 2/3 {b'8-. a-. (g-. f-. e-. d-.)} \noBreak
  | g4 \times 2/3 {f'8-. e-. (d-. c-. b-. d-.)} \noBreak
  | c4 \downbow \times 2/3 {c8-. (b-. a-._0 g-. f-. e-.)} \noBreak
  | d4 \times 2/3 {d'8-. (c-. b-. } \times 2/3 {a-. g-. f-.)} \break \noPageBreak
%8
  | e4 \times 2/3 {e'8-. (d-. c-.} \times 2/3 {b-. a-. g-.)} \noBreak
  | g'2 e4 \noBreak
  | d \times 2/3 {g,8-. (fis-. g-.} \times 2/3 {a-. b-. d-.)}\noBreak
  | e4 \times 2/3 {g,8-. (a-. b-.} \times 2/3 {c-. d-. e-.)} \noBreak
  | f4 \times 2/3 {a8-. (g-. f-.} \times 2/3 {e-. d-. c-.)} \noBreak
  | b4 \times 2/3 {c8-. (b-. a-.} \times 2/3 {g-. f-. d-.)} \break \noPageBreak
%9
  | c4 \times 2/3 {c'8-. \upbow (b-. a-.} \times 2/3 {g-. f-. e-.)} \noBreak
  | d4 \times 2/3 {d'8-. (c-. b-. } \times 2/3 {a-. g-. f-.)}\noBreak
  | e4 \times 2/3 {e'8-. (d-. c-.} \times 2/3 {b-. a-. g-.)} \noBreak
  | g'2 c,4 \noBreak
  | \times 2/3 { bes'8-. \downbow  bes-. \upbow (a-. g-. f-. e-. d-. c-. bes-.)} \noBreak
  | a4 (c) f \break \noPageBreak
%10
  | \times 2/3 { a8-. a-. (g-. f-. e-. d-. c-. b-. a-.-0)}\noBreak
  | g4 (b) e-4 \noBreak
  |  \times 2/3 {g8-. g-. ( f-. e-.-4 d-. c-. b-. a-.-4 g-.)} \noBreak
  | f4 (a-4) d \noBreak
  | \times 2/3 { f8-. f-. (e-. d-. c-. b-. a-. g-. f-.)} \noBreak
  |  e4 (g) c \break \noPageBreak
%11
  | \times 2/3 { e8-. e-. (d-. c-. b-. a-. g-. fis-. e-.)} \noBreak
  | \times 2/3 { d8-.-0 a'-.-4 (g-. fis-. e-. d-. c-. b-. a-.)} \noBreak
  | g8 (c) e-- g-- c-- e-- \noBreak
  | \times 2/3 { a8-. (g-. f-. e-. d-. c-. b-. c-. d-.)} \noBreak
  | c4  \times 2/3 { b8-. (a-. g-. f-. e-. d-.-0)} \noBreak
  | c2.  \bar "|."   \noPageBreak
}
