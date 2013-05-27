\include "paper20.ly"

\paper {
	papersize="letter"  \translator {
		\ScoreContext
		SpacingSpanner \override #'shortest-duration-space = #1.4
	}
        
	textheight = 24.0 \cm    % for A4 paper
	%textheight = 22.2 \cm    % for Letter paper
}

\header {
  title =       "Fugues on the Magnificat"
  mutopiatitle =       "Fugues on the Magnificat III. 7."
  subtitle =	"III. 7."
  source =      "Wien : Artaria, 1901 (Denkmaler der tonkunst in Osterreich; v. 17)"
  composer =    "Johann Pachelbel"
  mutopiacomposer =    "PachelbelJ"
  style = "Baroque"
  enteredby =   "Steve Dunlop"
  copyright =   "Music: public domain; Fingering copyright 2004 Steven J. Dunlop and licensed via GFDL and CC-ASAL"
  maintainer = "Steve Dunlop"
  maintainerweb = "www.nerstrand.net"
  lastupdated = "2004/2/29"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& " + \maintainer + " 2004.} \\makebox[\\textwidth][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License, with the additional permission that attribution is not} \\makebox[\\textwidth][c]{\\footnotesize required in an audio derivative of this work. To view a copy of that license visit \\texttt{http://creativecommons.org/licenses/by-sa/1.0/} } \\makebox[\\textwidth][c]{\\footnotesize or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}"
  footer = "Mutopia-2004/02/29-420"
}

% Note: The editorially added notes from the Artaria edition have been included
% and are marked as such only in the comments below.
%
% This was originally written for organ with the implied intent
% of playing the lowest notes on the bass clef on the pedalboard
% 
% The Artaria score is difficult to play without a pedalboard
% due to the confusing transitions where a voice must move
% to a different hand.  I have made changes in the stem direction
% and choice of staff for several passages, particularly in the
% middle voices, and added fingering, in order to make the score
% more playable at the keyboard.
%
% Organists will find that the bass clef stem-down notes are the
% same as in the Artaria edition and thus can be played accordingly
% on an instrument with pedals.  A few adjustments to the input
% would yield a three-staff organ score if desired


\version "2.0.1"

\score {
    \context GrandStaff <<
    \context Staff = treble << 
        \clef treble 
	\context Voice = VA {
		\voiceOne
		\notes { \key c \major \time 4/4 s1 s1 s1 s1 s1 |
		d''4 b'4-3 c''16-4 d''16 c''16 b'16 a'16 b'16 c''16 a'16 |
		b'16 c''16 b'16 a'16 g'16 a'16 b'16 g'16 a'4 d'4 |
		% measure 8
		g'2 ~ g'16 a'16 g'16 fis'16 g'8 d''8 |
		c''16 d''16 c''16 b'16 a'16 b'16 c''16 d''16  b'4 c''4 |
		a'4 d''4 g'4 c''4 ~ |
		%m11
		c''4 b'4 c''4 r4 |

		c'16 d'16 e'16 d'16 c'16 d'16 c'16 b16 c'16 d'16 c'16 d'16 e'16-4 f'16 e'16 f'16 |
		%m13
		d'16-1 e'16 d'16 e'16 f'16 g'16 f'16 g'16 e'16 f'16 e'16 f'16 g'4 |
		fis'4 g'4 e'4 a'4 | d'4 g'2 fis'4 | g'4 r4 r2 |
		% measure 17
		s1 s1 s1
		% m20
		b'2 a'2 |
		% m 21
		g'4 b'4 c''4 c''16 d''16 a'16 c''16 | b'4 r16 g'16 c''8 d''2-5 |
%m 23
		r16 g'16-1 a'16 b'16 c''16-1 d''16 e''16 f''16 g''16 g'16 c''16 b'16 a'16 d''16 c''16 d''16 |
		b'4 c''4 a'2 | g'4 c''2 b'4 |
		r16 c''16 r16 d''16 r16 e''16 r16 d''16 r16 c''16 r16 b'16 r16 a'16 r16 g'16
		fis'4 g'2 fis'4^"(tr)" | g'1\fermata \bar "|."
		
		}
	}
	\context Voice = VB {
		\voiceTwo
		\notes { s1 s1 g'4-4 e'4 f'16 g'16 f'16 e'16 d'16 e'16 f'16 d'16 |
		e'16 f'16 e'16 d'16 c'16-2 d'16 e'16 c'16 d'4 g4 | c'4.-3 d'8-1 e'8 fis'8 g'8-1 a'16-3 g'16 |
		%m6
		fis'4-1 g'4 a'8-2 g'8 fis'4 g'4 s2. |
		s2 c'4 d'4 | e'4 fis'4 g'2 c'4 f'4 b4 e'4 |
		%m11
		f'4. e'16 d'16 e'8 g'16 f'16 e'16 f'16 e'16-1 d'16-3 |
		s1


		% m13
		s2.. b8 | a4 g4 g4 c'4 | fis4 b4 c'4. b16 a16 | b8 d'16 c'16 b16 c'16 a16 b16 c'4. s8


		% m 17 
		r2 g''4 e''4 |
		f''16 g''16 f''16 e''16 d''16 e''16 f''16 d''16
		e''16 f''16 e''16 d''16 c''16 d''16 e''16 c''16 |
		d''4 g'4 c''16 d''16 c''16 b'16 a'16 b'16 c''16 a'16 |
		% m 20
		r4 g'2 fis'4 
		% m 21
		g'2 ~ g'16 a'16 e'16 g'16 f'4 ~ | f'16 g' d' f'16 e'4 r16 d'16-1 e'-2 f'-3 e'8.^\trill s16 
		%m 23
		s1 | g'4 g'2 f'?4 ~ | f'4 e'4 f'2 |
		e'8 f'8 g'8 f'8 e'8 d'8 c'8 b8 | a4 d'8 b8 a2 | <b d'>1
		}
	}
    >>
    \context Staff = bass <<
		\clef bass
	\context Voice = VC {
		\voiceTwo
		\notes {  \key c \major \time 4/4
		d'4 b4 c'16 d'16 c'16 b16 a16 b16 c'16 a16 |
		b16 c'16 b16 a16 g16 a16 b16 g16 a4-1 d4 |
		g8-1 a16-3 b16 c'4 a4 b4 c'8 b8 a8-1 g8 f4 e8 d8 |
		e4 a8 b8-4 c'8 d'8 e'4 d'4 e'4 c'4 d'4-1 g2.-3 f4-4 ~ f4 e4-5 a4-2 b4-1
		% m 9
		r2 g4-2 e4-4 |
		f16-3 g16 f16 e16 d16 e16 f16 d16 e16-3 f16 e16 d16 c16-5 d16 e16 c16 |
		d4 g,4 c2 | s1 s1 d4 b,4 c16 d16 c16 b,16 a,16 b,16 c16 a,16
		%m15
		b,16 c16 b,16 a,16 g,16 a,16 b,16 g,16 a,4 d,4 |
		g,4 g8 f?8 e8 c16-5 d16-4 e16-1 f16-4 g16-3 e16 |
		%m17
		f2-5 g4-4 a4-3 | d4 g4-2 c4 e8 c8 | g2. fis4 | g2 r2
		%m21
		b16 c'16 b16 a16 g16 a16 b16 g16 a4-1 d-5 | g4 c'2 b4-4 | c'4. d'8 e'4 r4 |

		%m24
		g4 e4 f16 g16 f16 e16 d16 e16 f16 d16

		%m25
		e16 f16 e16 d16 c16 d16 e16 c16 d4 g,4 | c1 ~ |
		c16 c16 d16 c16 b,8 e8 c16 e16 d16 c16 d8 d,8 | g,1\fermata
		}
	}

	\context Voice = VD {
		\voiceOne
		\notes {
		s1 s1 s1 s1 s1 s1 r4 b4-1 c'4-1 ~ c'8 b16-1 a16-2 b4-1 c'4-1 s2
		%m9
		c'4-2 d'2 g4-2 | % original: c'4 d'4 r2
		%m10
		a2-1 g4-1 a4-1 ~ | % original: r1
		a8 g16 a16 g4 ~ g4. f8
		e8 f8 e8 d8 e8 f8 g4 |
		%m13
		f8 g8 a8 b8 c'4. s8

		s1 s1
		s2.. b8-1 |
		%m17
		a8-3 b8-2 c'8-1 d'16-2 c'16-1 b4-2 c'4-1 ~ | c'4 b4-1 c'2 ~ | c'4 b4 a2 | 
		%m20
		d'4 b4 c'16 d' c' b a b c' a |
		%m21
		s1 s2... d'16 | e'2. fis'4 
		s1 s1 s1 s1 s1
		}
	}
	  >>
    >>

  \paper {
  }
  \midi {
    \tempo 4 = 48
  }
}



