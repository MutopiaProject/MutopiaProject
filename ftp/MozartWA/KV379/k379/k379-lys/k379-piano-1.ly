% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

afterGraceFraction = #(cons 15 16)

pianoRightPartI = \relative b {
    \key g \major
    \time 2/4
    \noTupletBracket

    \override Score.RehearsalMark
    #'break-visibility = #begin-of-line-invisible

    \repeat volta 2 {
	<b d g b>4\arpeggio <b e g b>8\arpeggio <b e g b>\arpeggio
	| \grace { c32[(-1 e] } b'16.)( a32)-2 e'4 d32( c b a)
	| a16(-3 g) g8-3 ~ g16.( fis32 b16 a)
	| g[( d) \grace { e32[(-4 d cis] } d8]) r16. d'32-2 d16.[-3 \grace { e32[( d cis d]) } e32]
	| << { d16. c!32-4 c4-5 b8 | b16.-5 a32 a4 b8^4^5 } \\
	     { <c, g'>4 <d g> | <e g> ~ \slurUp g16[( fis)] \slurNeutral
	       \stemUp \appoggiatura g!16 fis[ e32 fis] \stemNeutral } \\
	     { \stemDown s2 | s4
	       \once \override NoteHead #'extra-offset = #'(-0.5 . 0.0)
	       \once \override Stem #'extra-offset = #'(-0.5 . 0.0)
	       d8\noBeam d\noBeam \stemNeutral } >>
	| \grace { c32[( e] } c'16) cis,32( cis') \grace { d,32[( g] } d'16) dis,32( dis')
	  \grace { e,32[( g] } \once \override Beam #'positions = #'(-4.0 . -3.5)
	  e'16[) \grace { fis,32[( a] } fis'16) 
	  \grace { g,32[( b] } g'16]) b,-2\noBeam
	| d!8.( b16) a8-. r
	| <g, b d g>4 <g b e g>8 <g b e g>

% 10
	| <a c e>4^3 <c e a>_2
	| << { d4. fis8 } \\ { b,4 <c a> } \\ { \voiceFour d2^3 } >>
	| r32 g,(-1 b-2 d-3 fis-4 g d-3 b-1 a-2 g b d fis g d b)-2
	| r g(-1 c-2 e-3 fis-4 g e c-1 a-2 b c e fis g e c)
	| r g( b d fis g d b a g b d fis g d b)
	| r fis-2 a-1 d-2 eis-3 fis d a r g b d fis g d b
	| r a(-1 e'-2 g-3 gis-4 a g e) r b(-1 fis'-2 a-3 ais-4 b a fis)
	| r cis(-2 e-1 g-2 bis-4 cis g e) r d(-1 fis-2 a-3 cis-4 d a fis)
	| r b,(-1 e-2 g-3 ais-4 b! g e) r b(-2 d-1 f-2 ais-4 b f d)
	| r a(-1 cis-2 e-3 gis-4 a! e-2 d) cis(-2 a' b,-1 g' a,-1 fis'-4 g,-1 e')-3

% 20
	| \grace { d32[(-2 fis a d-1 fis] } a8)\noBeam <fis a>^4 ~ <fis a>16 <fis a> <fis a> <fis a>
	| <g a>8 <g a> ~ <g a>16 <g a>^3 <g a> <g a>
	| << { d'16. a32 a8-4 ~ a16 a a a | a16.-3 b32 a8 ~ a16 a a a } \\
	     { fis8 fis ~ fis16 fis fis fis | g8 g ~ g16 g g g } >>
	| << d'32 \\ fis, >> d,(-2 fis a-1 d fis a fis d)-1 cis-4-. b-. a-. g-. fis-4-. e-. dis-.
	| r e(-2 g b-1 e g b a g) fis-. e-. d!-.-4 cis-. b-. a-. gis-.-2
	| a16[(-1 a') g!32( fis e d)] e8.-2-\trill d32 e
	| r d,( fis a d fis a fis d) cis-. b-. a-. g-. fis-. e-. dis-.
	| r e(-1 g-2 b e-1 b'-3 d! cis b) a-. g-. fis-.-3 e-. d-. cis-.-3 b-.
	| a8 a'-2 ~ a16 b(-. cis-. d)-.

% 30
	| \grace { d,32[(-1 e fis]) } \afterGrace { e2*3/4\startTrillSpan s8\stopTrillSpan } { d32[ e] }
	| d8 r r4
	| r8 g,32(-4 fis e d) d16[-.-2 r32 d(]-3-\trill e16. cis32)
	| d8[-. \change Staff = lower a-. fis]-. \change Staff = upper r
    }

    \break

    | r32 fis(-2 a-1 d eis-3 fis d a g-3 fis a-1 d eis fis d a)
    | r fis(-2 a-1 dis eis-3 fis dis a g-3 fis a-1 dis eis fis dis a)
    | r g(-2 b-1 e! fis-3 g e b a-3 g b-1 e fis g e b)
    | r g(-1 b-2 d-3 fis!-4 g d-3 b-1 a-2 g b-2 d-3 fis-4 g f d)
    | \grace { c32[(-1 e g c-1 e] } g8)\noBeam <e g>-4\noBeam ~ <e g>16 <e g> <e g> <e g>
    | <f g>8 <f g> ~ <f g>16 <f g>-3 <f g> <f g>

% 40
    | << { c'16. g32 g8-3 ~ g16 e-4 e e } \\ { e8 e ~ e16 c c c } >>
    | <d e>8 <d e> ~ <d e>16 <d e>-3 <d e> <d e>
    | <c a'>32\noBeam e,[(-1 a c] e-1 gis-2 a b c)-. b-. a-. g-.-1 fis!-.-4 e-. d-. c-.
    | b-.-3 ais( b) cis(-2 d) fis(-2 g) ais(-2 b) a-. g-. fis-.-4 e-. d-. c-. b-.-3
    | a32[ e64(-1 gis-2 fis-1 a gis b] a[ c b-1 d c e d f] e32[) d-. c-. b]-. a[-.-4 g-. fis-. g]-.
    | fis4 r
    | \grace d8( d'8. c16) c bes a g
    | fis4(-3 g8) <bes, g'>-2-5
    | <a fis'>-[-4 r16 g'-]( fis8) fis-.-3
    | << { <a, d fis>2*1/2-4-\fermata \hideNotes <a d fis>4 } { s8-\< s8-\!-\> s8-\! s8 } >>

    \bar "||"
    \key g \minor
    \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartI = \relative g, {
    \key g \major
    \clef bass
    \time 2/4
    \noTupletBracket

    \repeat volta 2 {
	<g b d g>4\arpeggio <e g b e>8\arpeggio <e g b e>\arpeggio
	| <c e a c>4\arpeggio <c' e a>_5
	| <d g b>4_5 <d a' c>
	| <g b>4_3 \grace { g,32[( b d] } g8) r
	| <e, g c e>4\arpeggio <d d'>
	| <cis cis'>( <d d'>8) g-3
	| e'[ b c!] r16 << { g'16-2 | b8.( g16) fis8-. } \\ { cis16 | d4 d8-. } >> r
	| <g,, g'>4 <e' g b e>8 <e g b e>

% 10
	| \grace { c32[( e a] } c4) c,
	| <d d'> d-2
	| \repeat unfold 6 { <g, g'>8 r }
	| <a a'>4 <b b'>
	| <cis cis'> <dis dis'>_4
	| <e e'> <fis fis'>
	| <g g'> <gis gis'>_4
	| <a a'>8 r r4

% 20
	| r32 d,(-5 fis a d fis-3 a d fis_3 a_2 fis d_1 a fis d_1 a)_2
	| g(_3 e_5 g_4 cis e g_5 cis_3 d e) d-. cis-. b-. a-.-1 g-. fis-. e-.
	| d-.-1 d,( fis a d fis a d fis a fis d a fis d a
	| g) e( g cis e g cis d e) d-. cis-. b-. a-. g-. fis-. e-.
	| d4-5 r8 <fis a>_4
	| <g b>4 r8 <b g>8_3
	| << { cis d4( cis8) } \\ { a8[( b g a]) } >>
	| << a4-4 \\ fis >> r8 <a c>_3
	| <g b>4 r8 <gis d' e>_5 \clef violin
	| <a d fis>8_5[ <a d fis> <a d fis> <a d fis>]

% 30
	| <a d g>[ <a d g> <a cis g'> <a cis g'>]
	| <d fis>_2 r r <cis g'>(_4 
	| <d fis>)^2 r \clef bass <a, a'>8. <a g'>16^1
	| \stemDown <d fis>8[-.^2 d-._1 d,]-. \stemNeutral r
    }

    \break

    | <d d'>8 r <d d'> r
    | <c! c'!>4 <b b'>
    | <b b'>8 r <b b'> r
    | <b b'>4 <b b'>
    | r32 c(-5 e g c e-4 g c e-2 g e c-1 g e c-1 g-2
    | f) d( f-4 b-2 d f-5 b-3 c d) c-. b-. a-. g-.-1 f-. e-. d-.

% 40
    | c-1( c, e g c e-4 g b c-2 e c g e_5 c_1 g_2 e_3
    | d)_4 b(_5 d_4 gis b d_5 gis_3 a b) a-. gis-. f-. e-.-1 d-. c-. b-.
    | a4 r8 <fis'! a d>_4
    | <g b d>4 r8 <b, d g>_5
    | <c e a>4_4 r8 <cis e a>_5
    | <d fis a>4_4 r
    | R2
    | \grace d,8( d'8. c16) c(-1 bes a g)-1
    | d8[-2 r16 cis]( d8) d-.-3
    | <d d'>2*1/2-\fermata \hideNotes <d d'>

    \bar "||"
    \key g \minor
    \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsI = {
  s2-\f
  s4. s16.-\> s32-\!
  s2-\p
  s2*5
  s2-\f
  s4 s4-\>
  s2-\p
  s2*19

  s2-\p
  s2*2
  s2-\f
  s2*10
  s8. s16-\p s4
  s2
}
