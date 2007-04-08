% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

afterGraceFraction = #(cons 15 16)

pianoRightPartIV = \relative c' {
    \key f \major
    \time 4/4
    \noTupletBracket

    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Staff.Rest #'staff-position = #0
%     \override PianoStaff.VerticalAlignment #'forced-distance = #11
    \override PianoStaff.NoteCollision #'merge-differently-dotted = ##t
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
	
	\pageBreak

% 1st Voice
        \voiceOne
	 << { \partial 8 r8
	| <c a'>8 r <c f> r e r \times 2/3 { g f g }
	| <e c'> r <c g' bes> r <c f a> r \times 2/3 { a' g a }
	| <c, f a>8 r <c f a> r \times 2/3 { bes' a g } <e g>8. <c bes'>16
	| <c a'>4 g'8. f16 e4 \times 2/3 { g8 f e }
	| <c f c'>8 r \times 2/3 { f e f } <c f c'> r \times 2/3 { f e f }
	| <c f c'> r \times 2/3 { c' bes c } <f, a>8. <es f>16 <d f>4
	| e8. c'16~ \times 2/3 { c8 bes a } e8. g16~ \times 2/3 { g8 f e } 
	| a4 g a4. r8
	| <a d>8 r <f a>8 r a8. b16 b4
	| <g c>8 r <e g> r g8. a16 a4
% Takt 10	
	| <f a>8 r <d a'> r <d f b> r g4 
	| g2~ g4 c,
	| <e g>8 r <d g> r <e g> r \times 2/3 { g f e }
	| <d g> r <e g> r <f g> r g4
	| <c, g'>8 r <f b> r <g c> r c4 \pageBreak
	| <c, a' c>8. <f g>16 <e g>8. <f a>16 <f b>4 <f g>
	| <g c>8 r <e g> r g8. a16 <c, a'>4
	| <a' d>8 r <f a> r a8. b16 b4
	| <f d'>8 r <f b> r g4 g 
	| <c, f g> <d f g> <c e g>4.\bar ":|:" r8
% Takt 20	
	| <g e' g> r <g c g'> r <b d> r \times 2/3 { d c d }
	| <b d> r g'4 <e g> \times 2/3 { g8 f e }
	| <c f c'> r <c f> r e r \times 2/3 { g f g } 
	| <c, e c'> r <c g' bes> r <c f a> r \times 2/3 { c' bes a }
	| f4 e~ e a
	| e d~ d g 
	| d g2 a4 \pageBreak
	| <f a>8. <d a'>16 <d bes'>8. <cis g'>16 <d f>4 \times 2/3 { a'8 bes g }
	| d'2~ d8 r g,8. fis16
	| b4~ \times 2/3 { b8 c d } e r c8. b16
% Takt 30	
	| c2~ c8 r f,8. e16
	| a4~ \times 2/3 { a8 bes c } d8 r bes8. a16
	| bes8 r \times 2/3 { e, d e g f g } e8. g16
	| a8. f16 \times 2/3 { e8 d e g f g } e8. g16
	| a8. c16 bes2 c4
	| a8. c16 bes2 c8. e16
	| <f, c' f>4 c' d2~
	| d4 d c bes~
	| bes bes c2~ \pageBreak
	| c4 c bes a~
% Takt 40
	| a f a8. c16~ c4~
	| c c2 c4~
	| c f, a8. c16~ c4~
	| c c2 c4~
	| c8. f,16 e8. bes'16 a8. f16 e8. bes'16
	| as8. f16 e8. bes'16 as8. f16 e8. bes'16
	| a8. f16 \times 2/3 { e8 f g } a8. f16 \times 2/3 { e8 f g }
	| a8. c16~ c8. bes16 a4 a8. bes16
	| <c, f c'>8 r <a c> r f'4 f
	| <d g d'>8 r <bes d>r g'4 g 
% Takt 50	
	| <g c g'>8 r <e g> r c'4 c
	| <e, c'>4 <g bes c e> <f a c f>4. 
	}
	
% 2nd Voice
	\context Voice="1" { \voiceTwo
	
	\partial 8 s8
	| s2. c4
	| s2. c4
	| s2 c4 s4
	| s4 d e c
	| s4 c8 b\rest s4 c8 b\rest
	| s4 f'8 e\rest s2
	| e!4 f e8. d16 c4
	| <c f> <d f>8. <c e>16 <c f>4. s8
	| s2 d4 d8. g16
	| s2 c,4 c8. f16
% Takt 10	
	| s2. d8. e16
	| e4 f e s
	| s2. c4
	| s2. \times 2/3 { d8 c b }
	| s2. \times 2/3 { g'8 f e }
	| s1
	| s2 c4 s
	| s2 d4 d 
	| s2 d8. e16 e4
	| s2 s4. \bar ":|:" s8
% Takt 20	
	| s2. g,4
	| s4 d'8. f16 s4 c4
	| s2. c4
	| s2. c4	
	| d2 cis
	| c! b
	| bes! \times 2/3 { e8 d e } \times 2/3 { cis d e }
	| s1
	| f4~ \times 2/3 { f8 g a } b s8 s4
	| g2~ g8 s8 \times 2/3 { g a f }
% Takt 30	
	| e4~ \times 2/3 { e8 f g } a8 s s4
	| f2~ f8 s \times 2/3 { f g es }
	| d8 s c2~ c8. c16
	| c4 c2~ c8. c16
	| c4~ c8. d16 g4 \times 2/3 { e8 f g }
	| c,4~ c8. d16 \times 2/3 { g8 f e } e8. <g c>16
	| s4 c8. bes16 a2~
	| a4 a~ a8. d,16 g4 
	| d bes'8. a16 g2~
	| g4 g~ g8. c,16 f4
% Takt 40	
	| c f2 \times 2/3 { e8 g f }
	| e4 e8. f16 g8. g16 \times 2/3 { e8 f g }
	| a4 f2 \times 2/3 { e8 g f }
	| e4 e8. f16 g8. g16 \times 2/3 { e8 f g }
	| a8 c,8\rest c2 c4~
	| c4 c2 c4~
	| c4 c2 c4
	| c8. c16 d8. e16 f4 f
	| s2 c8. d16 d4
	| s2 d8. e16 e4
% Takt 50	
	| s2 g8. a16 \times 2/3 {a8 g f}
	| s2 s4.
	
	

        \oneVoice
	}

% 3rd Voice
       \new Voice { \voiceThree
%            s1 s s s s s s s s s s s s s e4
       \oneVoice
       } 
>>
 \oneVoice
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartIV = \relative c {
    \key f \major
    \clef bass
    \time 4/4
     \noTupletBracket

	\partial 8 r8
	| f8. a16 a8. f16 c'8. e,16 \times 2/3 { e8 d e }
	| c8. e16 e8. c16 f,8. f'16 \times 2/3 { f8 e f }
	| f8. f,16 f8. f'16 \times 2/3 {g8 f e} c'8. e,16
	| f4 bes c8. c,16 \times 2/3 {e8 d c}
	| a8. a'16 \times 2/3 {a8 g a} a,8. a'16 \times 2/3 {a8 g a}
	| a,8. a'16 \times 2/3 {a8 g a} f8. a16 \times 2/3 {bes8 a bes}
	| g8. g16 \times 2/3 {a8 g f} g8. f16 \times 2/3 {e8 d c}
	| f8. a,16 bes8. c16 f,8. a'16 \times 2/3 {a8 g f}
	| f8. d'16 d8. f,16 f8. g16 \times 2/3 {g8 f e}
	| e8. c'16 c8. e,16 e8. f16 \times 2/3 {f8 e d}
% Takt 10
	| d8. f16 f8. g,16 g8. b16 b8. c16
	| \times 2/3 {c8 b a g f g } c,8. e'16 \times 2/3 {e8 d e}
	| c8. c'16 b8. g16 c8. e,16 \times 2/3 {e8 d c}
	| b8. g'16 c,8. c'16 d,8. b'16 \times 2/3 {b8 a g}
	| e8. c'16 d,8. d'16 e,8. c'16 \times 2/3 {e,8 d c}
	| f8. b,16 c8. f,16 g8. g'16 \times 2/3 {b8 a g}
	| e8. c'16 c8. e,16 e8. f16 \times 2/3 {f8 e f}
	| f,8. d''16 d8. f,16 f8. g16 \times 2/3 {g8 fis g}
	| g,8. g'16 g8. b,16 b8. c16 \times 2/3 {c8 b a}
	| \times 2/3 {g8 f g} g4 c4. \bar ":|:" r8
% Takt 20
	| c8. e16 e8. c16 g'8. b,16 \times 2/3 {b8 a b}
	| g8. b16 b8. g16 c4 \times 2/3 {e8 d c}
	| a8. a'16 a8. f16 c'8. e,16 \times 2/3 {e8 d e}
	| c8. e16 e8. c16 f4 \times 2/3 {a8 g f}
	| \times 2/3 {bes a bes g a bes a g a a, a' a,}
	| \times 2/3 {a' g a fis e fis g fis g g, g' g,}
	| \times 2/3 {g' fis g e d e cis b cis } a8. cis16
	| d8. f16 g8. a16 \times 2/3 {d,8 a' g f g e}
	| d4~ \times 2/3 {d8 e fis g d' c b c a}
	| g4~ \times 2/3 {g8 a b c g f e f d}
% Takt 30	
	| c4~ \times 2/3 {c8 d e f c' bes a bes g}
	| f4~ \times 2/3 {f8 g a bes f es d es c}
	| bes8. g'16 \times 2/3 {g8 f g e d e} c8. e16
	| f8. a16 \times 2/3 {g8 f g e d e} c8. e16
	| f8. a16 g8. f16 \times 2/3 {e8 d e} c8. e16
	| f8. a16 g8. f16 \times 2/3 {e8 f g} \times 2/3 {c,8 d bes}
	| a4 a'8. g16 fis8. d'16 fis,8. d'16
	| fis,8. d'16 fis,8. d'16 fis,4 \times 2/3 {g8 d bes}
	| g4 g'8. f16 e8. c'16 e,8. c'16
	| e,8. c'16 e,8. c'16 e,4 \times 2/3 {f8 c a}
% Takt 40	
	| f4 r f'8. a16 \times 2/3 {g8 e f}
	| c'4 c,8. d16 e8. e16 \times 2/3 {c8 d e}
	| f4 r f8. a16 \times 2/3 {g8 e f}
	| c'4 c,8. d16 e8. e16 \times 2/3 {c8 d e}
	| f8. a16 g8. c,16 f8. a16 g8. c,16
	| f8. as16 g8. c,16 f8. as16 g8. c,16
	| f8. a16 \times 2/3 {g8 f e} f8. a16 \times 2/3 {g8 f e}
	| f8. a,16 bes8. c16 f,8. f'16 f,8. g16
	| a8. f'16 f8. a,16 a8. bes16 \times 2/3 {bes8 a bes}
	| bes8. g'16 g8. bes,16 bes8. c16 \times 2/3 {c8 d e}
% Takt 50	
	| e8. c'16 c8. e,16 e8. f16 \times 2/3 {f8 e d}
	| c8. c,16 c8. c'16 f,4. \bar ":|"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsIV = {
  s2-\f
}
