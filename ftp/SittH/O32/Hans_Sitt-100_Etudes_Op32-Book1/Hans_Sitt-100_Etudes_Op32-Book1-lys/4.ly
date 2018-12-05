% -*- coding: utf-8 -*-
\version "2.12.3"

quatro = \relative bes{
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key bes \major
	\clef treble
%1
  | bes4. \downbow ^\markup { \hspace #-5 \fontsize #-1 \bold "Moderato"} (c8) d4.-0 (ees8) \noBreak
  | f4. (g8) a4.-0 (bes8)  \noBreak
  | c4. (d8) ees4. (c8)  \noBreak
  | ees2 d4. (f8)  \noBreak
  | bes4. (a8) g4. (f8)  \noBreak
  | ees4. (d8) c4. (bes8) \noBreak
  | a4.-0 (c8) bes4. (g8) \break \noPageBreak

%2
  | f2. r4  \noBreak
  | c'4. \downbow (d8) ees4. (c8)  \noBreak
  | f4. (g8) a4 (g8 f)  \noBreak
  | bes4 (a8 g) g (a g f)  \noBreak
  | f (g f d) ees (d c bes) \noBreak
  | c4. (d8) ees4. (c8)  \noBreak
  | bes4. (a8-0) g4 (f8 ees) \break \noPageBreak

%3
  | d4-0 (ees8 f) g (f ees d-0)  \noBreak
  | f (g f d-0) f (ees d c)  \noBreak
  | bes4. (c8) d4.-0 (ees8) \noBreak
  | f4. (g8) aes4. (f8)  \noBreak
  | ees4. (f8) g4. (a8-4)   \noBreak
  | bes4. (c8) d4. (f8)  \break \noPageBreak

%4
  | bes4 (a8 g) g4. (f8)  \noBreak
  | g4 (a8 g ) f4 (c8 d) \noBreak
  | bes4. (g'8) f4. (d8)  \noBreak
  | bes4. (d8) c4. (a8-0) \noBreak
  | g4-. \downbow g,8-. a-. bes4-. c8-. bes-.  \noBreak
  | a4-. d8-.-0 e!-. fis4-. g8-. fis  \break \noPageBreak

%5
  | g4-. bes8-. c-. d4-. e!8-. fis-. \noBreak
  | g4-. bes8-. a-. g4-. f8-. ees-. \noBreak
  | d4-. c8-. bes-. a2-0  \noBreak
  | c4-. bes8-. a-. g2  \noBreak
  | fis4-. d8-. fis-. a4-.-4 fis8-. a-.-0  \noBreak
  | d4-. cis8-. d-. ees4-. d8-. cis-.  \break \noPageBreak

%6
  | d4-. bes'8-. a-. g4-. ees8-. d-.  \noBreak
  | c4-. a'8-. g-. fis4-. d8-. c-.  \noBreak
  |  bes4 g'8-. f-. ees4-. c8-. bes-.  \noBreak
  | a4-.-0 f'8-. ees-. d4-. bes8-. a-.  \noBreak
  | g4-. fis8-. g-. a4-.-4 g8-. a-.-0 \noBreak
  | bes4-. a8-. bes-. c4-. bes8-. c-.  \break \noPageBreak

%7
  | d4-. ees8-. cis-. d2  \noBreak
  | d,4-. f8-. ees-. d2  \noBreak
  | \bowH  b'!4.-- \downbow (c8-.) d4.-- (ees8-.)  \noBreak
  |  d4.-- (ees8-.) f4.-- (g8-.) \noBreak
  | aes4-. f8-. ees-. d4-. c8-. b!-.  \noBreak
  | d2 (c8) r f,4 \upbow  \noBreak
  | a4.---0 (bes8-.) c4.-- (d8-.)  \break \noPageBreak

%8
  | c4.-- (d8-.) ees4.-- (f8-.)  \noBreak
  | g4-. ees8-. d-. c4-. bes8-. a-.  \noBreak
  | c2 (bes8) r r4 \noBreak
  | d,4.-- \downbow (bes'8-.) bes'4.-- (a8-.)  \noBreak
  | g4.-- (a8-.) g4.-- (f8-.)  \noBreak
  | ees4.-- (d8-.) c4.-- (bes8-.)   \noBreak
  | a4.---4 (g8-.) f4.-- (c8-.)  \break \noPageBreak

%9
  | bes4. \downbow (c8) d4.-0 (ees8)  \noBreak
  | f4. (g8) a4.-0 (bes8) \noBreak
  | c4. (d8) ees4. (c8)  \noBreak
  | ees2 d4. (f8)  \noBreak
  | bes4. (a8) g4. (f8)  \noBreak
  | ees4. (d8) c4. (bes8)  \noBreak
  | a4.-0 (c8) bes4. (g8)  \noBreak
  | f2. r4 \break \noPageBreak

%10
  | f4. --(g8-.) aes4.-- (f8-.) \noBreak
  | g4.-- (bes8-.) ees4.-- (g8-.)  \noBreak
  | a,4.---0 (bes8-.) c4.--(a8-.)  \noBreak
  | bes4.-- (d8-.) f4.-- (bes8-.)  \noBreak
  | bes4 (a8 g) f4. (d8)  \noBreak
  | ees4 (d8 c) bes4. (a8-0)  \noBreak
  | c4. (bes8) a4. (c8)  \noBreak
  | bes2. r4 \bar "|."  \pageBreak
}
