% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

stemExtend = \once \override Stem #'length = #22
noFlag = \once \override Stem #'flag-style = #'no-flag
afterGraceFraction = #(cons 1 2)

pianoRightPartIII = \relative b' {
  \key g \major
  \time 2/4
  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  
  \override Score.RehearsalMark
  #'break-visibility = #begin-of-line-invisible

  #(revert-auto-beam-setting '(end * * 2 4) 1 4 'Staff)
  #(override-auto-beam-setting '(end 1 16 * *) 1 4 'Staff)
  #(override-auto-beam-setting '(end 1 32 * *) 1 4 'Staff)

  \repeat volta 2 {
    b8-.-3 \afterGrace { b(-\trill_2 } { a16[ b] } d4)
    | g,8-. \afterGrace { g(_2-\trill } { fis16[ g] } b4)
    | a16( b a b c b a g)
    | g(-3 fis) a( g) g(-4 fis e d)
    | b'8-.-4 \afterGrace { b(_2-\trill } { a16[ b] } d4)
    | g,8-. \afterGrace { g(_2-\trill } { fis16[ g] } b4)
    | b16(-4 a) a(-4 g) g( fis) fis( e)
    | e8(-2 d) d4-2
  }

  \break

  \repeat volta 2 {
    | << { a'8[^4 \afterGrace a^3-\trill { gis16[ a] } b8 \afterGrace b](^3-\trill { a16[ b] } | c8) }
	 { fis, \afterGrace fis( { s } gis) \afterGrace gis s | a } >> e'( c a)
    | << { g![ \afterGrace g^3-\trill { fis16[ g] } a8 \afterGrace a](^3-\trill { g16[ a] } | b8) }
	 { e, \afterGrace e( { s } fis) \afterGrace fis s | g } >> d'( b g)
    | e'8-.-4 \afterGrace e(-\trill^3 { dis16[ e] } g4) 
    | d!8-. \afterGrace d(-\trill^3 { cis16[ d] } g4)
    | a,8 <c e>( <b d>) <a, fis'>-.^4
    | <c a'>-[_2-( <b g'>-]-) <b g'>\noBeam r
  }

  \break

  % Var. I

  \repeat volta 2 {
    | b''16(-4 d, g b-3 a cis d d,)
    | g( b, e-2 g-3 fis ais b b,)
    | e(-5 gis,-2 a!-1 c e a8 g!16 ~ \voiceOne
    | g fis8 e16^4 ~ e d^5 cis c)^5 \oneVoice
    | b( d, g-2 b-3 a cis d d,)
    | << { g( b, e^2 fis g b a^4 g ~ | g fis8 e^4 d cis16) } \\
	 { s8 e4 cis8_1 | d_1 b_1 s4 } >>
  }

  \alternative {
    {
      | d16^3 <d fis>-.^4 <e g>-. <cis e>-.^4 d8-. r
    }
    {
      | d16^3 <d fis>-. <e g>-. <cis e>-. d8-. r
    }
  }
  
  \bar "||"
  \break

  \repeat volta 2 {
    | << { a'8. a16 a8 b | c16 r s4. } \\
	 { f,16(_4 d a) f'_3 e( c!) gis'( d) | a' \oneVoice a(^1 e' d) d(^5 c b a) } >>
    | << { g!8. g16 g8 a | b16 r s4. } \\
	 { es,16(_4 c g) es'_3 d( b) fis'!( c) | g' \oneVoice g(^1 d'^4 c) c(^4 b a g) } >>
    | e'8. dis16( e) dis'( e) e,( 
    | d!8.) cis16( d) cis' d <b, d> ~ 
    | <b d> <a c> <c e> <a c>^4 ~ <a c> <g b>8 <fis a>16^4
  }

  \alternative {
    {
      | << { b16 g^4 a fis^4 g8 r } { g16 b,-. c-. a-. b8 r } >>
    }
    {
      | << { b'16 g a fis g8 r } { g16 b,-. c-. a-. b8 r } >>
    }
  }

  \break

  % Var. II

  \repeat volta 2 {
    | << { b'4(^5 a | g^\markup { \finger "3-4" } fis)^\markup { \finger "3-4" } 
	   | e4.(^\markup { \finger "3-4" } <e g>8)( | <d fis> <cis-2 e-3>) d(^2 fis) } \\
	 { d2 ~ | d8 c4 b8 ~ | b a c a | a4 a } >>
    | <b d g>(^\markup { \finger "5-4" } <a d a'>)
    | << { g'4.^5 g8 } \\ { d8( e16.^4 d32 <a cis>8 <a e'>) } \\ { \voiceFour b4 s } >>
    | << { fis'8^4 g fis e } { d e d cis } { a b a a } >>
    | \tieDown <a cis e g>4^( ~ <a d fis>8^)^4 \tieNeutral r
  }

  \repeat volta 2 {
    | \times 2/3 { d16[-.-2 f-.-3 a]-.-1 \noTupletNum d[-.-2 e-. f]-. e[-\prall dis e] e,[ fis gis] }
    | a4 r
    | \times 2/3 { c,16[-.-2 es-.-3 g]-.-1 c[-. d-. es]-. d[-\prall cis d] d,[ e fis] }
    | g4 r
    | r4 \times 2/3 { e16[(->-1 fis g)] g[-.-2 g-.-1 g]-.-2 }
    | \afterGrace { g8(-\trill } { fis16[ g]) } r8 \times 2/3 { b16[(-4 a g)] g[-.-1 g-.-2 g]-.-1 }
    | \times 2/3 { e'[( b c] e[) d-. c]-. b[-. c-. b]-. \acciaccatura b8-3 a16[(-. g-. fis])-.-2 }
    | <a, c d fis>4_(^5 <b d g>8_)_2 r \tupletNum
  }

  \break

  % Var. III

  \repeat volta 2 {
    | r32 g'(-1 b g d' b g' g,) r fis(-1 a fis d' a fis' fis,)
    | r e(-1 g e b' g e' e,) r d(-1 fis d b' fis d' d,)
    | r c( e c a' e c' a) r a,( cis a e' cis a' e)
    | d(-1 a' fis a e a g a fis d a' d, g d fis d)
    | r g( b g d' b g' g,) r fis( a fis d' a fis' fis,)
    | r e( g e b' g e' b) r g( b g e' b g' e)
    | r a,( fis' d) r g,( e' b) r fis( d' a) r e( cis' g)
    | r d(-1 fis d a' fis d' a-1 fis' d-1 a' fis d'8)
  }

  \repeat volta 2 {
    | d,,32(-1 e f g a f-4 e d) c!( e a e b d gis-4 d)
    | a(-1 c a' c, b-1 d a' d,) c(-1 e-3 a e d c b-3 a)
    | c-1 d es f g es-4 d c b d g d a c fis-4 c
    | g-1 b g' b, a-1 c g' c, b-1 d g d c b-3 a g
    | r e'(-1 g e c' g e' c) r g'(-5 e g c, e g, c)
    | r d,(-1 g d b' g d' b) r g'(-5 d g b, d g, b)
    | r e,(-1 c'-4 a) r e( e' c) r d,( d' b) r d,( c' a)
    | r \set Staff = lower g,(-1 b g \set Staff = upper d' b g' d b' g d' b g'8)
  }
  
  \key g \minor
  \break

  % Var. IV

  \repeat volta 2 {
    | g,16.[-1 a32 bes16. c32] d8 d-2
    | g4( f)
    | es16.[ d32 c16. bes32]-3 a8( g)
    | <g-1 bes-4>4( <fis a>8) r
    | g16.[-1 a32 bes16. c32] d8 d-2
    | g4( f)
    | f16( es) d4 e16.(-4 cis32)
    | d8 r r4
  }
  
  \repeat volta 2 {
    | << { a8-2 a4 \afterGrace { bes8-\trill } { a16[ bes] } 
	   | c8 \afterGrace { d-\trill } { c16[ d] } es8 r | a16. es32^3 c4^4 bes16^4 a }
	 { fis8 fis4 \afterGrace { g8 } { s } 
	   | a \afterGrace { bes } { s } c r es16._2 c32 a4 g16_1 fis } >>
    | \grace { d32[(-1 g bes] } d8.)(^\markup { \finger "5-2" } e32 fis) g8 r
    | << { g16[^5( es]) es8^2 r16 g[^4 g^5 g]^4 | g[(^5 d]) d8^3 r16 g[^4 g^5 g]^4 } \\
	 { g,8 s4. | g8 s4. } >>
    | g'16.[(^5 a,32 c16. a32)] g8(^2 bes16 a)
    | g4 r
  }

  \key g \major
  \break

  % Var. V

  \repeat volta 2 {
    | b8.[(-2 \grace { c32[ b a] } b) c]-. e[( d) d8-5 c32( b)]
    | a( g fis-2 g) g8-1 ~ g32 a-. b-. c-.^1 d-. e-. fis-. g-.
    | fis( e dis e d c b-2 c b a gis_2 a_1 e')-. cis-4-. a-. g-.
    | g(^3 fis b a) a8^5 ~ a32 d,(^1 cis^2 d^1 es64^3 e^1 f fis g^1 gis^3 a^1 ais)
    | b16[( \grace { c32[ b a] } b32) c32-. cis16(-2 d]) r 
      d(^\turnSharp^\markup { \finger "4321" } e fis)
    | a[( g ~ g32) \grace { a32[ g fis] } g(-1 a b]) b(-2 a e'16 ~ e32 cis-4 a g
    | fis(-3 a g fis e) e(^\turnSharp^\markup { \finger "4321" } g) b-. b16(^4 d,!8) cis16-.-2
    | <g a cis e>4(->^5 <fis a d>8)^5 r
  }

  \repeat volta 2 {
    | d8.[^5 r32 \lbcOne d128(^1 e f g] a16)[ r32 \lbcTwo e128(^1 fis gis a] 
      b16)[ r32 \lbcTwo fis128(^1 gis a b]
    | c64[) a,-.^1 b-. c-. d^1-. e-. fis-. gis]-. a[^1-. b-. c-. d-. e-. f^1-. fis^2-. g!]^3-. 
      gis8(^4 a16)^5 r
    | c,,8.[^5 r32 \lbcOne c128(^1 d es fis] g!16)[ r32 \lbcTwo d128(^1 e fis g] 
      a16)[ r32 \lbcTwo e128(^1 fis g a]
    | b64[) \stemUp \change Staff=lower g,,^1-. a-. b-. c^1-. d-. e-. fis]-.
      \times 16/15 { g128[(^1 a b \change Staff=upper c^1 d e fis g^1 a b c^1 d es e^1 f])^2 }
      \stemNeutral \oneVoice fis8(^3 g16)^4 r32 g^5
    | dis16[(^2 e8 \grace { fis32[ e dis e] } e'16] ~ e32) d!-. c-. b-. a-. g^3-. fis-. e-.
    | cis16[(^2 d!8 \grace { e32[ d cis d] } d'16] ~ d32[) ais64(^2 c!] b32[) fis64(^2 a!] g32[)
      cis,64(^2 e] d32[) c!64(^4 b])
    | gis32.[(^2 a64])^1 g'!8[(^4 \grace { a32[ g] } fis32) e]^1-. cis(^2 d) r b^2 d( c) r a^4
    | \tieDown <c, d fis a>4^(^5-> ~ <b d g>8^)^5 \tieNeutral r8
  }

  \break

  % Thema e coda

  \repeat volta 2 {
    b'8-.-3 \afterGrace { b(-\trill_2 } { a16[ b] } d4)
    | g,8-. \afterGrace { g(_2-\trill } { fis16[ g] } b4)
    | a16( b a b c b a g)
    | g(-3 fis) a( g) g(-4 fis e d)
    | b'8-.-4 \afterGrace { b(_2-\trill } { a16[ b] } d4)
    | g,8-. \afterGrace { g(_2-\trill } { fis16[ g] } b4)
    | b16(-4 a) a(-4 g) g( fis) fis( e)
    | e8(-2 d) d4-2
  }

  \repeat volta 2 {
    | << { a'8[^4 \afterGrace a^3-\trill { gis16[ a] } b8 \afterGrace b](^3-\trill { a16[ b] } | c8) }
	 { fis, \afterGrace fis( { s } gis) \afterGrace gis s | a } >> e'( c a)
    | << { g![ \afterGrace g^3-\trill { fis16[ g] } a8 \afterGrace a](^3-\trill { g16[ a] } | b8) }
	 { e, \afterGrace e( { s } fis) \afterGrace fis s | g } >> d'( b g)
    | e'8-.-4 \afterGrace e(-\trill^3 { dis16[ e] } g4) 
    | d!8-. \afterGrace d(-\trill^3 { cis16[ d] } g4)
    | a,8 <c e>( <b d>) <a, fis'>-.^4
  }

  \alternative {
    {
      | <c a'>-[_2-( <b g'>-]-) <b g'>\noBeam r
    }
    {
      | <b g'>-[_2 b''32(-3 c a b-] g a-4 fis g e fis-4 d e
    }
  }

  | c8[) a'32(-2 b g a-4] fis g e fis-4 d e c d)-4
  | b( d c b c-1 d e fis g-1 a b c d16) d-.-4
  | d(-5 e,) c'-.-4 a-. a(-\prall^3 g) g(-\prall^3 fis)
  | g8[-1 b32( c a b] g a-4 fis g e fis-4 d e
  | c8[) a'32(-2 b g a]-4 fis g e fis-4 d e c d)-4
  | b(-2 d c b c-1 d e fis g-1 a b c d16) d-.-4
  | d(-5 e,) c'-4-. a-. a(-\prall^3 g) g(-\prall^3 fis)
  | \acciaccatura d8 d'8.(^\markup { \finger "5-4" } e32 d c8[) r16 c]-4
  | ais( b) c( a) g(-3 b) a( fis)
  | \acciaccatura d8 d'8.(^\markup { \finger "5-4" } e32 d c8[) r16 c]-4
  | ais( b) c( a) g(-3 b) a( fis)
  | g32(-1 a b c d c b a g a-4 g fis g a f g
  | e f-4 d e c d-4 b d c d e c a b c a
  | b c d c b a g-3 fis g a g fis g a f g
  | e f-4 d e c d-4 b d c d e c a b c a
  | b8) r d r
  | b r r4

  \mark \markup { \musicglyph #"scripts.ufermata" }
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartIII = \relative g {
  \key g \major
  \clef bass
  \time 2/4
  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  #(revert-auto-beam-setting '(end * * 2 4) 1 4 'Staff)
  #(override-auto-beam-setting '(end 1 16 * *) 1 4 'Staff)
  #(override-auto-beam-setting '(end 1 32 * *) 1 4 'Staff)

  \repeat volta 2 {
    g8-3 d' fis, d'
    | e, b' d,-4 b'
    | << { r8 e,( a4) | r8 a( c!4) } \\ { c,4.( cis8)_4 | d4.(_5 fis8)_4 } >>
    | g d' fis, d'
    | e, b' cis,-4 e
    | d-1 g,-4 a a-2
    | d a d,4
  }

  \repeat volta 2 {
    | << { r8 d''16. c32 b8 e | a,4 r | r8 c16. b32 a8 d | g,4 r }
	 { r8 d16. c32 b8 e | a,4 r | r8 c16. b32 a8 d | g,4 r } >>
    | c'8-4 g' e c
    | b g' d b
    | c4 d8 d,
    | g[-1 d] g,\noBeam r
  }

  % Var. I

  \repeat volta 2 {
    << { r8 g'' r fis ~ 
	 | fis e r d ~ 
	 | d c16_1^( b_2 a4_1^) ~ 
	 | \oneVoice a8[ \change Staff = upper b'_1 a_1 fis]_2 \change Staff = lower 
       } \\
       { g,4_5 d | e b | c4. cis8_4 | d g_1^( fis d^) } >>
    | << { r8 g r fis ~ 
	   | fis e16._( d32 cis8^) a(_5 
	   | \voiceTwo b) g a_4 a_3 } \\
	 { g4 d | e s | s \voiceOne fis'8^1 e^1 } >>
  }

  \alternative {
    {
      | << { \stemExtend \noFlag fis16 s8. } \\ { d16 b g a } >> d,\noBeam c''![( b a)]
    }
    {
      | << { \stemExtend \noFlag fis16 s8. } \\ { d16 b g a } >> d,\noBeam fis'[( a fis])
    }
  }

  \bar "||"

  \repeat volta 2 {
    | <d, d'>8. <d d'>16 <c! c'!>8 <b b'> 
    | <a a'>\noBeam \clef violin gis''''[(-3 a]) r \clef bass 
    | <c,,,, c'>8. <c c'>16 <b b'>8 <a a'> 
    | <g g'>\noBeam \clef violin fis''''[(-3 g)] r
    | << { r16 fis,( g4. | g16 fis( g4) } \\ { c,4._4 c8 | b4. } >>
      \clef bass b8(-3
    | c) a d d,(_5
  }

  \alternative {
    {
      | g16) e-.-1 c-. d-. g,\noBeam g'( f e)
    }
    {
      | g16 e-.-1 c-. d-. g,8 r
    }
  }

  % Var. II

  \repeat volta 2 {
    | << { g'4( fis | e d) | c4.( cis8) | d( g fis d) | g4( fis) | e a,8 cis }
	 { g4( fis_4 | e_\markup { \finger "5-4" } d)_\markup { \finger "5-4" } 
	   | c4.( cis8)_4 | d( g fis_4 d) | g4( fis)_4 | e_5 a,8 cis_4 } >>
    | <d d'> g(-.-3 a-. a)-.-3
    | d[ a] d, r	     
  }

  \repeat volta 2 {
    | \times 2/3 { <d d'>16[-. f'-.-4 a]-. \noTupletNum 
		   d[-. e-.-2 f]-. e[-\prall dis e]-1 e,[ fis-3 gis] }
    | <a, a'>4 r
    | \times 2/3 { <c, c'>16[-. es'-.-4 g]-. c[-. d-.-2 es]-. d[-\prall cis d]-1 d,[ e-3 fis] }
    | <g, g'>4 r
    | << { r8 e'[( g c,]) | r d[( g b,]) } \\ { c2_4 | b } >>
    | r8 c[-4 d d]-2
    | g[ d] g, r \tupletNum
  }

  % Var. III

  \repeat volta 2 {
    | <g g'>8 r <d d'> r
    | <e e'> r <b b'> r
    | <c c'>4 <cis cis'>
    | <d d'>8-[ <a' a'>-] d-3 r
    | <g, g'>4 <d d'>
    | <e e'> <cis cis'>
    | <d d'>8\noBeam g'[-2 a a,]
    | <d, d'> r r4
  }

  \repeat volta 2 {
    | d'32(-5 e f g a f-2 e d) c!( e a e b d gis d)
    | a( c a' c, b d a' d,) c(-4 e a e d-1 c b a)
    | c-2 d-1 es-3 f g es-2 d c b d g d a c fis c
    | g b g' b, a c g' c, b-4 d g d c-1 b a g
    | c8 r c'-2 r
    | b,-5 r b'-2 r
    | c c,-5 d d-2
    | <g,, g'> r r4
  }

  % Var. IV

  \key g \minor

  \repeat volta 2 {
    | \times 2/3 { g'16[-5-. bes-4-. d]-. g[-. bes-2-. g-2]-. 
		   \noTupletNum fis,[-5-. a-4-. d]-. fis[-. a-2-. fis]-1-. }
    | \times 2/3 { es,[-. g-. bes]-. es[-. g-. es]-4-. d,[-. f-. bes]-. d[-. f-. d]-1-. }
    | \times 2/3 { c,[-. es-. a]-. c[-. es-. c]-. es,[-4-. a-. c]-. es[-2-. g-1-. es]-. }
    | \times 2/3 { d,[-5-. g-3-. bes]-. d[-. g-3-. bes]-. d[-. c-. bes]-. a[-1-. g-. fis]-. }
    | \times 2/3 { g,[-. bes-. d]-. g[-. bes-. g]-. f,![-. a-. d]-. f![-. a-. f]-. }
    | \times 2/3 { e,[-. g-. cis]-. e[-. g-. e]-. d,[-. f-. a]-. d[-. f-. d]-. }
    | \times 2/3 { g,[(-5 bes g'] gis,[-5 b gis'] a,[ d a'] a,[ cis a')] }
    | \times 2/3 { d,,[-5-. f-4-. a]-. d[-. f-4-. a]-. } d8-. r
  }

  \repeat volta 2 {
    | \times 2/3 { d,16[-5-. fis-. a]-2-. d[-. cis-4-. d]-. es[-. f!-. es]-. d[-. es-. d]-1-. }
    | \times 2/3 { c![-. d-. c]-. bes[-. c-1-. bes]-. a[-. bes-. a]-. g[-. a-1-. g]-. }
    | \times 2/3 { fis[-. a-2-. c]-. es[-2-. f!-. es]-. d[-. es-. d]-1-. c[-. d-. c]-. }
    | \times 2/3 { bes[-. c-1-. bes]-. a[-. bes-. a]-. g[-. as-3-.( g]-1-. f![-. es-. d]-.) }
    | \stemDown \times 2/3 { c[-5-. es-4-. g]-. c[-. \change Staff=upper es-3-. fis]-.
		   g[-. es-2-. \change Staff=lower c]-. g[-1-. es-2-. c]-. }
    | \times 2/3 { bes[-. d-4-. g]-. bes[-. \change Staff=upper d-4-. fis]-.
		   g[-. d-2-. \change Staff=lower bes]-. g[-1-. d-2-. bes]-. } \stemNeutral
    | \times 2/3 { c[(-3 es a]) c,,[(-5 es a] d,[-5 g bes] d,[ fis a]) }
    | \times 2/3 { g,[-5-. bes-4-. d]-. g[-. bes-4-. d]-. } g8-. r \tupletNum
  }

  % Var. V

  \key g \major

  \repeat volta 2 {
    | <g_4 b d>8 r <fis a d> r
    | <e_4 g b> r <d g b> r
    | <c_5 e a> r <cis_4 a e> r
    | <d_4 fis a> r d, r
    | <g'_4 b d> r <fis a d> r
    | <e_4 a cis> r <cis_5 e a> r
    | <d_4 fis a>-[ <g_5 b e>-] \clef violin <a_5 d fis>-[ <a e' g>-]
    | \clef bass d[ a]-2 <d, fis a d> r
  }

  \repeat volta 2 {
    | << { \stemExtend \noFlag <f a>4 } \\ { <d, f a d> } >> <c e a c>8 <b d gis b>
    | <a c e a> r r4
    | << { \stemExtend \noFlag <es'' g> } \\ { <c, es g c> } >> <b d g b>8 <a c f a>
    | \voiceTwo <g b d g> r r4 \oneVoice \clef violin
    | <c'' g'>8-[_4 <c g'> <c g'> <c g'>-]
    | <b g'>-[ <b g'> <b g'> <b g'>-] \clef bass
    | r <c, e a>_5 <d g b>_5 <d fis c'>
    | g[ d]-2 <g, b d g> r
  }

  % Thema e coda

  \repeat volta 2 {
    g'8-3 d' fis, d'
    | e, b' d,-4 b'
    | << { r8 e,( a4) | r8 a( c!4) } \\ { c,4.( cis8)_4 | d4.(_5 fis8)_4 } >>
    | g d' fis, d'
    | e, b' cis,-4 e
    | d-1 g,-4 a a-2
    | d a d,4
  }

  \repeat volta 2 {
    | << { r8 d''16. c32 b8 e | a,4 r | r8 c16. b32 a8 d | g,4 r }
	 { r8 d16. c32 b8 e | a,4 r | r8 c16. b32 a8 d | g,4 r } >>
    | c'8-4 g' e c
    | b g' d b
    | c4 d8 d,
  }

  \alternative {
    {
      | g[-1 d] g,\noBeam r
    }
    {
      | g'4 r8 <gis e'>_4
    }
  }
  
  | <a e'>4 r8 <fis d'>_4
  | <g! d'>4 r8 b-3
  | c a d d,
  | g4 r8 <gis e'>_4
  | <a e'>4 r8 <fis d'>8_4
  | <g! d'>4 r8 b-3
  | c[ a d d,]
  | b'16_4 d g b, a d fis a,_4
  | g8[ c-2 d d,]
  | b'16 d g b, a d fis a,
  | g8[ c d d,]
  | <g g'>2
  | <g, g'>8 r r4
  | <g g'>2
  | <g, g'>8 r r4
  | g8 r g' r
  | g, r r4

  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsIII = {
  s2-\p
  s2*7
  s2-\f
  s8 s4.-\p
  s2-\f
  s8 s4.-\p
  s2*4

  % Var. I

  s2-\mf
  s2*5
  s2-\dimText
  s16 s8.-\p s4
  s16 s8.-\p s4
  s2-\f
  s16 s8.-\p s4
  s2-\f
  s16 s8.-\p s4
  s2-\mf
  s2*2
  s16 s8.-\p s4
  s16 s8.-\p s4

  % Var. II

  s2-\p
  s2*7
  s2-\f
  s2
  s2-\f
  s2
  s4-\p s4-\<
  s8-\! s8 s8..-\> s32-\!
  s2-\p
  s2

  % Var. III

  s2-\f
  s2*7
  s2-\f
  s2*7

  % Var. IV

  s2-\f
  s2*5
  s4. s8-\>
  s8-\p s4.
  s2-\f
  s2*5
  s4..-\> s16-\!
  s2-\p

  % Var. V

  s2-\p
  s2*2
  s4 s16 s8-\< s32. s64-\!
  s2*4
  s2-\f
  s64 s32.-\> s16 s16.. s64-\! s4-\p
  s2-\f
  s4 s4-\p
  s2*4

  % Thema e coda

  s2-\p
  s2*7
  s2-\f
  s8 s4.-\p
  s2-\f
  s8 s4.-\p
  s2*4
  s8 s4.-\f
  s2*13
  s2-\dimText
  s2
  s4 s4-\p
  s2
}
