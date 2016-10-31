 \version "2.18.2"
 
 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \override Staff.NoteCollision #'merge-differently-dotted = ##t
 \set harmonicDots = ##t
 \repeat volta 2 {
	%1-5
        \stemDown g'4 \posSlurA g4 ( a8.\mordent) b16
        a8 \posSlurB \appoggiatura g16 fis8 \posSlurC \appoggiatura e16 d2
        \stemUp g,4\mordent g4.\downprall fis16 g16
        a32[( g32 fis16) g32( fis32 e16)] \grace e8 < d\harmonic >2
        \stemDown d'4 d4( e8.\mordent) f16
        |
        %6-10
        e8
   	\once \override Slur #'control-points = #'((.5 . .4) (1.0 . -0.4) (1.4 . -0.2) (1.9 . -.3))
	\appoggiatura d16 c8
   	\once \override Slur #'control-points = #'((.5 . -0.7) (.8 . -1.0) (1.4 . -1.6) (2.2 . -1.3))
	\appoggiatura b16 \stemUp < a\harmonic >4. \stemDown fis'8\turn
        \stemDown g32[( fis16.) a32( g16.)] fis32[( e16.) d32( c16.)]
   	\once \override Slur #'control-points = #'((.5 . 3.0) (0.6 . 4.0) (1.8 . 4.5) (2.4 . 3.9))
	\appoggiatura c8 a'8. c,16
        { \stemUp < b\harmonic >32[( < g\harmonic >16.) fis8] \appoggiatura fis8 g2\mordent }
        b4 b4( cis8.\mordent) d16
	<<
	    { d16 cis16 b16 a16 d2 } \\
	    { \set harmonicDots = ##t f,4.\rest < a\harmonic >4. } \\
	    { \stemDown s8. a16_ ~ a2 }
	>>

        %11-15
        < b e g >4\arpeggio \clef "G_8" \stemDown g4.\downprall fis16 g16
        g8
%   	\once \override Slur #'control-points = #'((.5 . 1.4) (.6 . 1.2 ) (1.2 . .8) (1.9 . 1.2))
	\SUpb \appoggiatura fis16 e8 cis4.\lineprall e8
        a16( g16 fis16 e16) d8 \stemUp a4_~ a32 b32 c16
        b16( a16 g16 fis16) e8 \grace d'16 cis4_~ cis32 d32 e16
        d16( cis16 b16 a16) g'8 b,4 cis8

        %16
        \grace cis16 \TDno d8 ~ [ d32 e32 d32 cis32 ] \grace cis8 d2 
    }

    \repeat volta 2 {
        a4\mordent \TDne a4_~\downprall a16[ a32( b32 c32 d32 e16)]
        \appoggiatura e16 d8 \appoggiatura c16 b8 \appoggiatura a8 g4. g'8
        \appoggiatura fis16 e8. fis32 dis32 \appoggiatura dis8 e4.\mordent a32 b32 a32 g32
        a8. fis16 \SUpa \appoggiatura e16 dis4. b8

        %21-25
        \grace{\graceSchleifer e16} \stemDown g8. fis16
	\grace fis8 \TUpo e4^~ e16[ b16 c32( b32 a32 b32)]
        g'32[( e16.) fis32( dis16.)]
	\grace dis8 \TUpo e4^~ \stemUp e16 g,16 fis16 e16
        fis8. e'16 \grace e16 dis8 a'8 g8 fis8
        \grace fis16 e8. fis32 dis32 \grace dis8 < e\harmonic >4 \stemDown < e,\harmonic >4 \clef treble
        \stemDown e''8
   	\once \override Slur #'control-points = #'((.5 . .4) (.8 . -0.1) (1.2 . -0.3) (1.7 . -0.2))
	\appoggiatura d16 c8
   	\once \override Slur #'control-points = #'((.5 . -0.6) (.8 . -1.1) (1.2 . -1.3) (1.6 . -1.2))
	\appoggiatura b16 a4. b16[ c16]

        %26-30
        d32[( c32 b16) c32( b32 a16)] \grace a8 \stemUp g4. a16 b16
        << %27-28
	    { c16 d16 c16 b16 c16 a16 e16 a16 c4 ~ | c16 d16 c16 b16 c16 a16 fis16 a16 c16 e16 d16 c16 } \\
	    { r4. e,4. | fis4. fis4. }
	>>
	<< %29-30
            { b16 c16 b16 a16 b16 g16 d16 g16 b16 g16 c16 d16 | e16 f16 e16 d16 e16 c16 g16 c16 e16 c16 fis16 g16 } \\
	    { g,8. r8. d8. \TUpb g8.~ | g4. g8. c8. }
	>>
        %31-32
        a'16 c,16 b16 a16 b16 c16 d16 g,16 b16 a16 g16 fis16
	<<
        { < g\harmonic >4^~ < g\harmonic >16 < d\harmonic >16 < g\harmonic >16 fis16 \slurDown \appoggiatura fis8 \slurDown g4 } \\
        { c,16\rest c16 b16 a16 b2 } 
	>>
   }
}

