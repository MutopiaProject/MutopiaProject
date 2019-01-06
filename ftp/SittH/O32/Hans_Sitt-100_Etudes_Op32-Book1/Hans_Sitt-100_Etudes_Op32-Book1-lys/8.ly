% -*- coding: utf-8 -*-
\version "2.12.3"

oito = \relative g{
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key g \major
	\clef treble
%1
  | g8-. \downbow ^\markup { \hspace #-5 \fontsize #-1 \bold "Moderato"} \f  g'4 \upbow a-0 b8-. c-. d-.  \noBreak
  | e,-. g4 b c8-. d-. e-.-4  \noBreak
  |  fis,-. a4-0 d fis8-. a-. c,-.  \noBreak
  | b-. e4-4 d b8-. a-. g-.  \noBreak
  | fis-. d'4 c b8-. d-. g,-. \break \noPageBreak
%2
  | fis-. d'4 c b8-. d-. g-.  \noBreak
  | a-. fis4 b g8-. e-. d-.  \noBreak
  | cis-. a-.-0 g-. e-. fis-. a-.-4 d,-.-0 r  \noBreak
  | d-. \downbow d'4 e-0  fis8-. g-. a-.  \noBreak
  | b,-. d4 fis g8-. a-. b-. \break \noPageBreak
%3
  | cis,-. e4-0 a g8-. b-. a-.  \noBreak
  | g-. fis4 b a8-. fis-. d-.  \noBreak
  | cis-. a'4 g fis8-. a-. d,-.  \noBreak
  | b-. g'4 fis e8-.-0 g-. c,-.  \noBreak
  | b-. e4-4 d c8-. e-.-4 g,-. \break  \noPageBreak
%4
  | fis (d) c-. a-. b-. g'-. g,-. r  \noBreak
  | g-. \downbow g'4 \upbow a8-.-0 \downbow bes-. \upbow c4 \downbow d8-. \upbow  \noBreak
  | ees,-. g4 b8-. c-. d4 ees8-.  \noBreak
  | fis,-.  a4_0 d8-. fis-. a4 c,8-.  \noBreak
  | bes-. ees4 d8-. bes-. a4-0 g8-.  \break  \noPageBreak
%5
  | fis-. d'4 c8-. bes-. d4 g,8-.  \noBreak
  | fis-. d'4 c8-. bes-. d4 g8-.  \noBreak
  | e-.-0 g4 bes,8-. a-.-0 c4 f,!8-.  \noBreak
  | e-. c'4 bes8-. a-. c4 f!8-.  \noBreak
  |  ees-. g4 f! ees8-. d-. b-.  \break  \noPageBreak
%6
  | c-. ees4 d8-. c (bes) a-.-0 g-.  \noBreak
  | f!-. f'!-. a-. a,-.-0 bes-. bes'-. g-. g,-.  \noBreak
  | ees-. ees'-. g-. g,-. f!-. f'!-. a,-.-0 a'-.  \noBreak
  | bes-. \downbow bes,4 \upbow c d8-. c-. bes-. \break \noPageBreak
%7
  | a'-. a,4-0 bes c8-. bes-. a-.  \noBreak
  | g'-. g,4 a-0 bes8-. a-. g-.  \noBreak
  | ees'-. ees,4 f! g8-. f-. ees-.  \noBreak
  | d-. d'4 e-0 fis8-. g-. a-.  \noBreak
  | bes,-. d4 fis g8-. a-. bes-. \break \noPageBreak
%8
  | cis,-. e4-0 a g8-. bes-. a-.  \noBreak
  | g-. fis4 bes a8-. fis-. d-.  \noBreak
  | d-. \downbow d,4 e fis8-. g-. a-.-0  \noBreak
  | d-. d,4 fis g8-. a-.-0 b-.  \noBreak
  | d-. e,4 g bes8-. a-. g-. \break  \noPageBreak
%9
  | fis-. a4-4 d,-0 d8-.-4 c-. a-.  \noBreak
  | g-. g'4 a-0 b8-. c-. d-.  \noBreak
  | e,-. g4 b c8-. d-. e-.-4  \noBreak
  | fis,-. a4-0 d fis8-. a-. c,-. \break \noPageBreak
%10
  | b-. e4-4 d b8-. a-. g-.  \noBreak
  | fis-. d'4 c b8-. d-. g,-.  \noBreak
  | gis-. e'4 d c8-. e-.-0 a-.  \noBreak
  | g-. b4 cis,8-. d-. e4-4 fis,8-.  \noBreak
  | g-. b-. d,-.-0 g-. g,4-. r  \bar "|."  \pageBreak
}
