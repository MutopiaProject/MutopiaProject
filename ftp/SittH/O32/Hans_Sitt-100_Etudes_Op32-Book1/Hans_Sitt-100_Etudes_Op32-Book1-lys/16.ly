% -*- coding: utf-8 -*-
\version "2.12.3"

dezesseis = \relative d'{
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key d \minor
	\clef treble

#(override-auto-beam-setting '(end * * * *) 1 4)
\set tupletSpannerDuration = #(ly:make-moment 1 4)
\override TupletBracket #'bracket-visibility = ##f
%1
  | \times 2/3 {d8---0 \mf \downbow ^ \markup { \hspace #-5 \raise #-18.0 \fontsize #-1 \bold "Allegro" } f-- a---0 d-- a--_0 f-- e-- g-- a--_0 cis-- a--_0 g-- \noBreak
  | d f a-0 d f g a (gis bes) a f d \break \noPageBreak
%2
  | a-0 cis e-0 a e-0 cis b! d e-0 gis e-0 d \noBreak
  | a cis e g (bes) f e-0 (g) d cis (e-0 a,)  \noBreak
  | f' a (g f) e-4 d bes d (c bes) a_4 g \break \noPageBreak
%3
  | e'-4 g (f e-0) d c a-0 c (bes a-0) g f  \noBreak
  | d' f (e d) c bes g bes (a g) f e  \noBreak
  | a-0 e'-4 (cis a) g' e-0 a e cis a-0 g e \break \noPageBreak
%4
  |  d \downbow f-- a---0 d-- a--_0 f-- e-- g-- a--_0 cis-- a--_0 g--   \noBreak
  | d f a-0 d f g a (gis bes) a f d  \noBreak
  | g, bes d g d bes a c d fis d c  \break \noPageBreak
%5
  | g g, bes d-0 g bes d (g a) bes g d  \noBreak
  | e-0 g (f e) bes' a g f e d c bes  \noBreak
  | a-0 f (g a-4) bes c d e-0 f g a f \break \noPageBreak
%6
  | e g (f e) bes' g e-0 c bes g e bes \noBreak
  | a c (d e) f g a-0 c bes a g f  \noBreak
  | d f (bes d) bes f e g (bes d) c e,  \pageBreak
%7
  | f a_0 (c f) c a-0 b! d (f a) g f \noBreak
  | a g f bes g e-0 c d c bes a g  \noBreak
  | f a c f c a-0 g bes c e c bes  \break \noPageBreak
%8
  | f a c f g a bes g e-0  c bes g \noBreak
  |  f a c f c a-0 g bes c e c bes  \noBreak
  | f a-0 c f g a fis a fis d c a-0   \break \noPageBreak
%9
  | g bes d g d bes a c d fis d c \noBreak
  | g bes d g a bes fis a fis d c a  \noBreak
  | g bes d g d bes a c d fis d c  \break \noPageBreak
%10
  | g bes d g a bes gis b! gis e d b!  \noBreak
  | a cis e a e cis b d e gis e d   \noBreak
  | a cis e a e cis e d b! gis e d-0 \break \noPageBreak
%11
  | a cis e a-4 e cis b d e gis e d   \noBreak
  | a e' (d) cis_4 g'_3 (f) e g (bes a) g e   \noBreak
  | d f a d a f e g a cis a g \break \noPageBreak
%12
  | d f a-0 d f g a (gis bes) a f d   \noBreak
  | a-0 cis e-0 a e-0 cis b! d e-0 gis e-0 d    \noBreak
  | a cis e g (bes) f e-0 (g) d cis (e-0 a,)  \break \noPageBreak
%13
  | f' a (g f) e d c bes (d bes) g f   \noBreak
  | e g' (f e) d c \stemUp bes a (c a) f e   \noBreak
  | \stemDown d f' (e d) c bes \stemNeutral a g (bes g) e d  \break \noPageBreak
%14
  | cis e' (d cis) bes a g f (a f) d c!  \noBreak
  | bes d g bes d g a f d a f d   \noBreak
  | g bes d g a bes a e cis a g e \break \noPageBreak
%15
  | d f (a d ) a f e g (a cis) a g  \noBreak
  | d f a d f bes a e cis a g e  \noBreak
  | d f (a d) a f e g (a cis) a g  \break \noPageBreak
%16
  | d f a d f bes a e cis a g e\noBreak
  | d f (a d) a f d f (a d) a g   \noBreak
  | f a_0 (d  f) d bes a d (f bes) a f } \break \noPageBreak
%17
  | d4 r <d, a' f'>\downbow r   \noBreak
  | <d-0 d-4> \downbow r r2  \bar "|."   \pageBreak
}

