pianoRightPartIII = \relative b' {
    \key g \major
    \time 2/2
				%\override Hairpin #'minimum-length = #5
    \noTupletBracket

    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \partial 4

    #(override-auto-beam-setting '(end 1 16 * *) 1 4 'Staff)
    
    b8-. c-.
    | cis( d e d) d4 d
    | g( c,!2 b4)
    | e( a,2 g4)
    | fis8( a) d4 r fis,8-. g-.
    | a( g) gis-. a-. b( a) ais-. b-.
    | c( b) cis-. d-. e( d) fis-. g-.
    | a( g) b-. g-. fis( e d cis)
    | e4( d) r2
    | b8 g d b' a fis d a'

% 10
    | g e c g' fis d b fis'
    | e cis a e' es c a es'
    | d a fis' d a' fis d a
    | b d b g c d c a
    | d g d b g' b g d
    | e c' c, a' b, g' a, fis'
    | r g'( a b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.
    | e( d) g( b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.

% 20
    | e( d) g( b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.
    | e( d) r4 r b8-. c!-.
    | cis( d e d) d4 d-.
    | e-. g-. r8 e[( c! a])
    | g2.( b8 a)
    | g4 r r2
    | R1*7
    | r2 r4 <g d'>-.
    | <g e'>-. <g g'>-. r <g, d'>-.
    | <g e'>-. <g g'>-. r2
    | R1
    | r8 g'' b a g fis e d
    | c b a g fis e d c

% 40
    | b g' c, a' d, b' e, c'
    | fis, d' g, e' a, fis' b, g'
    | <c, e a>4 r <a c d fis> r
    | << { \voiceTwo \smallNote <g b d>4 s } \\ { g'2 } >> r
    | << { b,2 } \\ { \voiceOne \shiftNoteRight \smallNote <d, g>4 s } >> <d fis c'>4.( a'8)
    | << { d2. } \\ { \voiceOne \shiftNoteRight \smallNote <d, g>4 s } >> b'8( g)
    | d4 \repeat unfold 3 <a c d>
    | <g b d>4.( e'16 c b4) r
    | d( g2 fis4)
    | <d g> <g b>2( <fis a>4)

% 50
    | << { d'4( g) \appoggiatura fis16 e4 \appoggiatura d16 c4 } \\
	 g1 >>
    | \set doubleSlurs = ##t <g b>2( <fis a>4) \set doubleSlurs = ##f r
    | <b, d g>2( <a d fis>)
    | <g d' g> r
    | R1*5
    | d''16( e d cis d8) e fis16( g fis e fis8) g

% 60
    | a2 \appoggiatura g16 fis4 \appoggiatura e16 d4
    | g4.( e8) cis4 r
    | g'2 \appoggiatura fis16 e4 \appoggiatura d16 cis4
    | a'4.( fis8) d4 r
    | a'2 \appoggiatura g16 fis4 \appoggiatura e16 dis4
    | e16( fis e dis e8) fis g16( a g fis g8) a
    | \times 2/3 { b[( cis d] cis[ b a] \noTupletNum g[ a g] fis[ e d] }
    | \repeat unfold 2 { \times 2/3 { cis[ e a] e[ cis a] d[ fis a] fis[ d a] } }
    | \times 2/3 { cis[ e cis] a[ e cis] \change Staff = lower r8 e,[ cis] a[ e cis] }
    | a4) r r2 \change Staff = upper \tupletNum
    | R1*4
    | fis''''4 fis( e) e(
    | d) d( a2)
    | b4 b( d) d(
    | e) e( fis2)
    | << { g4 g( fis) fis( | cis') } { cis, cis d d | g } >>
    << { \oneVoice <g cis>( \voiceOne d' a) } \\ { s4 fis2 } >>

% 81
    | << { g4 g( fis) fis( | cis') } { cis, cis d d | g } >>
    << { \oneVoice <g cis>( \voiceOne d' a) } \\ { s4 fis2 } >>
    | << { b4.( ais8) b4.( ais8) | b8( ais b ais b ais b ais) } \\ 
	 { d,2 d | d1 } >>
    | b'8( cis d) cis b a! g fis
    | g( a b) a g fis e d
    | cis a e a cis, e a e
    | d gis cis, a' b, d e gis
    | g! e cis e cis e a g
    
% 90
    | fis a g e d fis a d
    | <e, a cis>4 r r2
    | R1*9
    
% 101
    | \times 2/3 { r8 d''[ cis] b[ a gis] \noTupletNum a[ b a] g[ fis eis] }
    | \times 2/3 { fis[ d' cis] b[ a gis] a[ b a] g[ fis eis] }
    | \times 2/3 { fis[ e! d] g[ fis e] a[ g fis] b[ a g] }
    | \times 2/3 { c![ b a] g[ fis e] d[ e d] c![ b ais] }
    | \times 2/3 { b[ d c] b[ a! g] fis[ e d] c[ b a] } \clef bass
    | \times 2/3 { b[ d c] b[ a g] fis[ e d] c[ b a] } \tupletNum
    | b4 r r2 \clef violin
    | r8 b'8[ d f] b[ d f b]
    | r16 d,, e fis! g a b cis d e fis! g a b cis d

% 110
    | << { e,1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	 { s2. s8. \grace { d16[( e]) } s16 } >>
    | d4 r r2
    | R1*7
    | r8 a[ b cis] d e fis g

% 120
    | a4 a2 fis8( d)
    | e4 e2 cis8( a)
    | d4 d8(-\trill cis16 d e4) e8(-\trill d16 e
    | fis4 d) r d8( fis)
    | a4 a2 fis8( d)
    | b'4 b2 g8( e)
    | cis4 cis cis cis
    | d8( dis e f fis g gis a)
    | cis,4 cis cis cis
    | d8( e fis g! gis a ais b)

% 130
    | cis,4 cis cis cis
    | d r d8(-\trill cis16 d e8 b)
    | c!4 r d8(-\trill cis16 d e8 b)
    | c!4 r d8(-\trill cis16 d e8 b)
    | c!4 c c c
    | << { \stemDown c'2 } \\ { \voiceOne \stemDown \smallNote <c, fis a>4 s } >>
    r4-\fermata b8-. c-.
    | cis( d e d) d4 d
    | g( c,!2 b4)
    | e4( a,2 g4)
    | fis8( a) d4 r fis,8-. g-.

% 140
    | a( g) gis-. a-. b( a) ais-. b-.
    | c( b) cis-. d-. e( d) fis-. g-.
    | a( g) b-. g-. fis( e d cis)
    | e4( d) r2
    | b8 g d b' a fis d a'
    | g e c g' fis d b fis'
    | e cis a e' es c a es'
    | d a fis' d a' fis d a
    | b d b g c d c a
    | d g d b g' b g d

% 150
    | e c' c, a' b, g' a, fis'
    | r g'( a b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.
    | e( d) g( b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.
    | e( d) g( b a g fis e)
    | e( d) d-. d-. cis( d) d-. d-.
    | e( d) r4 r b8-. c!-.
    | cis( d e d) d4-. d-.
    | e-. g-. r8 e( c! a)

% 160
    | g2.( b8 a)
    | g4 r r2
    | R1*7
    | r2 r4 dis'(

% 170
    | e) g, b dis,
    | e2 r
    | R1
    | r2 r4 a(
    | c) fis, a e
    | dis2 r
    | R1*3
    | \times 2/3 { b''8[ g e] b[ e \noTupletNum g] b[ g e] b[ e g] }

% 180
    | \times 2/3 { b[ g e] b[ e g] b[ gis d] b[ d gis] }
    | \times 2/3 { c[ a e] c[ e a] c[ a e] c[ e a] }
    | \times 2/3 { c[ a e] c[ e a] cis[ g! e] cis[ e g] }
    | \times 2/3 { d'[ a fis] d[ fis a] d[ a fis] d[ fis a] }
    | \times 2/3 { d[ a fis] d[ fis a] a[ fis c!] a[ c fis] }
    | \times 2/3 { b[ g d] b[ d g] b[ g d] b[ d g] }
    | \times 2/3 { b[ g d] b[ d g] b[ f d] b[ d f] }
    | \times 2/3 { r c[ e] g[ c c,] r c[ e] fis![ c' c,] }
    | \times 2/3 { r c[ dis] fis[ c' c,] r b[ d] f[ b b,] }
    | \times 2/3 { r b[ cis] e[ b' b,] r a[ c] dis[ a' a,] }

% 190
    | \times 2/3 { r a[ dis] fis[ a a,] r g[ b] e[ g g,] }
    | \times 2/3 { r f[ a] c[ f f,] r e[ g] cis[ e e,] }
    | \times 2/3 { dis'[ e fis!] e[ dis cis] b[ c b] a[ g fis] } \tupletNum
    | e4 r r2
    | r2 r8 b'( b' g
    | fis e) b'( g fis e) c'( a
    | g fis) fis4 r2
    | R1
    | r2 r8 a,( a' fis
    | e dis) a'( fis e dis) c'( b)

% 200
    | a( gis) gis2( b4)
    | d!( b d) r
    | r2 r8 g,,!( g'! e
    | d cis) g'( e d cis) bes'( a
    | g fis) fis2( a4)
    | c!( a c) r
    | r2 r8 f,,( f' d
    | c b) f'( d c b) a'( f)
    | \times 2/3 { r g,([ c] e[ c g]) \noTupletNum r e'[( g] c[ g e]) }
    | \times 2/3 { r d([ g] c[ g d]) r d[( g] b[ g d]) }

% 210
    | \times 2/3 { r d([ g] a[ g d]) r f[( a] d[ a f]) }
    | \times 2/3 { r e([ a] d[ a e]) r e[( a] c[ a e]) }
    | \times 2/3 { r e([ a] b[ a e]) r g[( b] e[ b g]) }
    | \times 2/3 { r f([ c'] e[ c f,]) r f[( g] d'[ g, f]) }
    | \times 2/3 { r e([ g] d'[ g, e]) r e[( a] c[ a e]) }
    | \times 2/3 { r d([ a'] c[ a d,]) r d[( g] b[ g d]) }
    | \times 2/3 { r c([ e] a[ e c]) r b[( e] g[ e b]) }
    | \times 2/3 { fis'![ a g] fis[ e d] cis[ b a] g[ fis e] }
    | \times 2/3 { fis[ a g] fis[ e d] } \change Staff=lower \stemUp
    \times 2/3 { cis[ b a] g[ fis e] }
    | \times 2/3 { fis[ e d] g[ fis e] a[ g fis] b[ a g] } 
    \change Staff=upper \stemNeutral

% 220
    | c!( a fis' c a' fis c' a
    | fis' c a' fis c' a e') d-.
    | c-. b-. a-. g-. fis-. e-. d-. cis-.
    | d4( dis e2) ~
    | e4( dis8 e fis e d c!)
    | << { b2 } \\ { \voiceOne \shiftNoteRight \smallNote <d, g>4 s } >> <d fis c'>4.( a'8)
    | << { d2. } \\ { \voiceOne \shiftNoteRight \smallNote <d, g>4 s } >> b'8( g)
    | d4 \repeat unfold 3 <a c d>
    | <g b d>4.( e'16 c b4) r
    | d( g2 fis4)

% 230
    | <d g> <g b>2( <fis a>4)
    | << { d'4( g) \appoggiatura fis16 e4 \appoggiatura d16 c4 } \\
	 g1 >>
    | \set doubleSlurs = ##t <g b>2( <fis a>4) r
    | <bes, d g>2( <a d fis>) \set doubleSlurs = ##f
    | <g d' g> r
    | R1*2
    | \repeat unfold 4 { <c es f>4 }
    | <bes d f>4.( g'16 es d4) r
    | R1

% 240
    | << { <g a>4.( bes16 g fis4) } \\ { e2( d4) } >> r
    | R1
    | << { d'4 d( fis) fis( | a) a( fis2) | fis4 fis( a) a( | c!) c( a2) }
	 { a,4 a d d | fis fis d2 | d4 d fis fis | a a fis2 } >>
    | <fis a>4 <fis a>( <a c>) <a c>(
    | e'8) f d e c d b d
    | c d b c a b g a
    | fis g e fis d e c d

% 250
    | b4 r r2
    | R1*3
    | b'4 b( a) a(
    | g) g( d2)
    | e4 e( g) g(
    | a) a( b2)
    | << { fis4 fis( g) g( | c) c( b d) } \\
	 { d,4 d2 d4 | fis fis( g2) } >>

% 260
    | << { fis4 fis( g) g( | c) c( b d) } \\
	 { d,4 d2 d4( | fis) fis( g2) } >>
    | << { e4.( dis8) e4.( dis8) | e( dis e dis e dis e dis) } \\
	 { g,1 | g } >>
    | e'8( fis g) fis e d! c b
    | c( d e) d c b a g
    | fis a d a fis a d a
    | g cis fis, d' e, g a cis
    | c! a fis a fis a d a
    | b d c a g b d g

% 270
    | <a, d fis>4 r r2
    | R1*9

% 280
    | \times 2/3 { r8 d'[ c] b[ a g] \noTupletNum fis[ c' b] a[ g fis] }
    | \times 2/3 { g[ d' c] b[ a g] fis[ c' b] a[ g fis] }
    | \times 2/3 { g[ b d] c[ b a] g[ a g] f[ e dis] }
    | \times 2/3 { e[ g f] e[ d! c] b[ a g] f[ e d] }
    | \times 2/3 { e[ g f] e[ d c] \change Staff=lower \stemUp b[ a g] f[ e d] }
    \tupletNum
    | e4 \change Staff=upper \stemNeutral r r2
    | r8 e' g bes e g bes e
    | r16 d,, e fis g a b! c d e fis g a b! c d
    | << { a1*3/4\startTrillSpan s8 s8\stopTrillSpan } 
	 { s2. s8. \grace { g16[( a]) } s16 } >>
    | g4 r r2

% 290
    | R1*7
    | r8 d8[ e fis] g a b c
    | d4 d2 b8( g)
    | a4 a2 fis8( d)

% 300
    | g4 g8(-\trill fis16 g a4) a8(-\trill g16 a
    | b4 g) r g8( b)
    | d4 d2 b8( g)
    | e'4 e2 c8( a)
    | fis4 fis fis fis
    | g8( gis a bes b c cis d)
    | fis,4 fis fis fis
    | g8( a g fis g a ais b)
    | dis,4 dis dis dis
    | e8( f fis g gis a ais b)

% 310
    | cis,4 cis cis cis
    | d1\startTrillSpan ~
    | d ~
    | d ~
    | d ~
    | d ~
    | d ~
    | d ~
    | d ~
    | d

% 320
    | cis
    | c!1*3/4 s8\stopTrillSpan
    \tiny \stemUp b16[ c] \stemNeutral \normalsize
    | cis8( d e d) d4 d
    | g( c,!2 b4)
    | e( a,2 g4)
    | fis8( a) d4 r fis,8-. g-.
    | a( g) gis-. a-. b( a) ais-. b-.
    | c( b) cis-. d-. e( d) fis-. g-.
    | a( g) b-. g-. fis( e d cis)
    | e4( d) r2

% 330
    | b8 g d b' a fis d a'
    | g e c g' fis d b fis'
    | e cis a e' es c a es'
    | d a fis' d a' fis d a
    | b d b g c d c a
    | d g d b g' b g d
    | e c' c, a' b, g' a, fis'
    | r8 g' b a g fis e d
    | c b a g fis e d c
    | b g' c, a' d, b' e, c'

% 340
    | fis, d' g, e' a, fis' b, g'
    | <c, e a>4 r <a c d fis> r
    | << { \voiceTwo \smallNote <g bes es>4 s2 } \\ { g'2. } >>
    << { g,8 as | a bes c bes bes4 }
       { es,8 f | fis( g as g) g4 } >> r
    | r2 r4 << { es'8 es | d( es f es) es4 }
	       { g,8 g | fis g as g g4 } >> r
    | r2 r4 << { g'8 g | fis( g as g) g4 g }
	       { es8 es | d es f es es4 es } >>
    | bes'2( cis,)
    | r8 d( d') b!-. g-. d-. b!-. g-.

% 350
    | r c!( c') a-. fis-. c-. a-. fis-.
    | g4 \times 2/3 { g,8[( fis g] \noTupletNum a[ g a] b[ a b] }
    | \times 2/3 { c[ b c] d[ c d] e[ d e] fis[ e fis] }
    | \times 2/3 { g[ fis g] a[ g a] b[ a b] c[ b c] }
    | d4) <d g b> r <d fis a>
    | <b d g> r r <d fis a>
    | <d g b> r r <d fis a>
    | <b d g> r r <d fis a>
    | <d g b> <d g b> <d fis a> <d fis a>
    | <b d g> r <d g b> r

% 360
    | <b d g>2 r4


    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoLeftPartIII = \relative g' {
    \key g \major
    \time 2/2
				%\override Hairpin #'minimum-length = #5
    \noTupletBracket

    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \partial 4

    r4 \clef violin
    | <g b>2 <fis a>
    | <e g> <d fis>
    | <cis e> <c es>
    | <c d>4 r r2 \clef bass
    | <b d>2 <fis d'>
    | <g d'> <fis a>
    | <e b'> <a g'>
    | r4 <d fis> d, r
    | <g, g'>2 <fis fis'>

% 10
    | <e e'> <d d'>
    | <cis cis'> <c c'>
    | <c c'> r
    | <b b'> <fis fis'> 
    | <g g'> <b b'>
    | <c c'>4 <c c'> <d d'> <d d'>
    | <g, g'> r r2 \clef violin
    | \repeat unfold 4 <fis''' a c>4
    | <g b> r r2
    | \repeat unfold 4 <fis a c>4

% 20
    | <g b> r r2
    | \repeat unfold 4 <fis a c>4
    | <g b> r r2
    | r r4 <b, g'>-.
    | <c g'>-. <e g>-. r2 \clef bass
    | << { b8( d b d b d c d) | b4 } \\ { d,1 | g4 } >> r r2
    | R1*7
    | r2 r4 b-.
    | c-. e-. r <b,, b'>-.
    | <c c'>-. <e e'>-. r2
    | R1
    | r2 r4 e''8 d
    | c b a g fis e d c

% 40
    | <b, b'>4 <c c'> <d d'> <e e'>
    | <fis fis'> <g g'> <a a'> <b b'>
    | <c c'> r <d d'> r
    | <g, g'>2 r
    | <g' b> <d a'>
    | <b g'> r
    | fis4 fis fis fis
    | g2 r
    | <g' b> <d a'>
    | <b g'>4 g( d' c)
    | b2 c4 e
    | d2. r4
    | <g, g'>2 <d d'>
    | <b b'> r
    | R1*6 \clef violin

% 60
    | << { fis'''8 a fis a fis a fis a } \\ { d,4 d d d } >>
    | \repeat unfold 2 { << { g8 a g a g a g a } \\ { e4 e e e } >> }
    | fis8 a fis a fis a fis a
    | << { a8 c a c a c a c } \\ { fis,4 fis fis fis } >>
    | << b4 \\ g >> r r2 \clef bass
    | g,4 a b gis
    | <a cis e>2 <a d fis>
    | <a cis e> <a d fis>
    | <a cis e>4 r \change Staff = upper a4 r

% 70
    | R1 \change Staff = lower
    | R1*4 \clef violin
    | <d a'>4 <d a'>( <a g'>) <a g'>(
    | <b fis'>) <b fis'>( \clef bass <fis d'>2)
    | <g d'>4 <g d'>( <fis a>) <fis a>(
    | <a cis>) <a cis>( <d, d'>2)
    | <a' e'>4 <a e'>( <d fis>) <d fis>(

% 80
    | <a e'>) <a e>( <fis d'>2)
    | <a e'>4 <a e'>( <d fis>) <d fis>(
    | <a e'>) <a e'>( <fis d'>2) \clef violin
    | g'4.( fis8) g4.( fis8)
    | g( fis g fis g fis g fis)
    | g( a b) a g fis e dis
    | e( fis g) fis e d! cis b
    | a4 \clef bass a, a a
    | \repeat unfold 12 a

% 91
    | a r r2
    | R1*9 \clef violin
    | r2 \tieUp <cis' a'>_( ~
    | <d a'>4_) r <cis a'>2(
    | d4) e fis g
    | a r \clef bass <fis, d'>2_( ~
    | <g d'>4_) \tieNeutral r r2
    | R1
    | r8 g,,[ b d] g b d g
    | gis,4 r r2
    | <a, a'>4 r r2

% 110
    | a''8( g' cis, g' a, g' cis, g'
    | <d fis>4) r r2
    | R1*8 \clef violin

% 120
    | d8_\markup { \italic "legato" } fis a fis d fis a fis
    | cis g' a g e g a g
    | d fis a fis cis g' a g
    | d fis a fis d fis a fis \clef bass
    | fis, a d a fis a d a
    | g b e b g b e b
    | a e' g e a, e' g e
    | <d fis>4 r r2
    | a8 e' g e a, e' g e
    | <d fis>4 r r2

% 130
    | a8 e' g e a, e' g e
    | <d fis>4 d, r2
    | R1
    | r2 r4 <d d'>(
    | <es es'>) <c c'> <a a'> <fis fis'>
    | << { <d d'>2 } \\ { \voiceOne \shiftNoteRight \smallNote <fis a>4 s } >>
    r4-\fermata r \clef violin
    | <g'' b>2 <fis a>
    | <e g> <d fis>
    | <cis e> <c es>
    | <c d> r \clef bass

% 140
    | <b d> <fis d'>
    | <g d'> <fis a>
    | <e b'> <a g'>
    | r4 <d fis> d, r
    | <g, g'>2 <fis fis'>
    | <e e'> <d d'>
    | <cis cis'> <c c'>
    | <c c'> r
    | <b b'> <fis fis'>
    | <g g'> <b b'>

% 150
    | << { c4 c d d } { c' c d d } >>
    | <g,, g'> r r2 \clef violin
    | \repeat unfold 4 { <fis''' a c>4 }
    | <g b> r r2
    | \repeat unfold 4 { <fis a c>4 }
    | <g b> r r2
    | \repeat unfold 4 { <fis a c>4 }
    | <g b> r r2
    | r2 r4 <b, g'>-.
    | <c g'>-. <e g>-. r2 \clef bass

% 160
    | << { b8( d b d b d c d) } \\ { d,1 } >>
    | <g b>4 r r2
    | R1*7
    | r2 r4 <dis dis'>(

% 170
    | <e e'>) <g, g'> <b b'> <dis, dis'>
    | <e e'>2 r
    | R1
    | r2 r4 <a a'>4(
    | <c c'>) <fis, fis'> <a a'> <e e'>
    | <dis dis'>2 r
    | R1*3
    | r2 r4 <dis dis'>(

% 180
    | <e e'>) <d! d'!> <c c'> <b b'>
    | <a a'>2 r
    | R1
    | r2 r4 <cis cis'>(
    | <d d'>) <c! c'!> <b b'> <a a'>
    | <g g'>2 r
    | R1
    | c'2 <a' e'>
    | <b dis> <gis d>
    | <a cis> <fis! c>

% 190
    | << b1 \\ { dis,2 e } >>
    | <a c>2 <ais cis>
    | b r
    | R1*2 \clef violin
    | <e g b>4 r <e g b> r
    | <e a c>2 r
    | R1*2
    | <b fis' a>4 r <b fis' a> r

% 200
    | R1*2 \clef bass
    | a,4( bes a bes
    | a bes a2)
    | R1*2
    | g4( as g as
    | g as g2)
    | <c, c'>4 r <e e'> r
    | <g g'> r <b b'> r

% 210
    | <d d'> r <f, f'> r
    | <a a'> r <c c'> r
    | <e e'> r <g, g'> r
    | <a a'> r <b b'> r
    | <c c'> r <a a'> r
    | <fis! fis'!> r <g g'> r
    | <c, c'> r <cis cis'> r
    | <d d'>1
    | R1*7
    | <g' b>2 <d a'>
    | <b g'> r
    | fis4 fis fis fis
    | g2 r
    | <g' b> <d a'>

% 230
    | <b g'>4 g( d' c)
    | b2 c4 e
    | d2. r4
    | <g, g'>2 <d d'>
    | <bes bes'> r
    | R1*2
    | \repeat unfold 4 { <a a'>4 }
    | <bes bes'>2 r
    | R1

% 240
    | cis'2( d4) r
    | R1*6 \clef violin
    | c''8 d b c a b gis b
    | a b g! a fis! g e fis
    | d e c d b c a b

% 250
    | g4 r r2
    | R1*3
    | << { d''4 d c c | b b g2 | g4 g d d | fis fis g2 }
	 { g4 g( d) d( | e) e( b2) | c4 c( b) b( | d) d( g,2) } >>
    | << { c'4 c b b | a a b2 | c4 c b b | a a b2 }
	 { a4 a( g) g( | d) d( g2) | a4 a( g) g( | d) d( g2) } >> \clef bass
    | c,4.( b8) c4.( b8)
    | c8( b c b c b c b)
    | c( d e) d c b a gis
    | a( b c) b a g! fis e
    | \repeat unfold 16 d4

% 270
    | d4 r r2
    | R1*9

% 280
    | r2 \clef violin <d' a' c>(
    | <g b>4) r <d a' c>2(
    | <g b>4) r \tieUp <b, g'>2_( ~
    | <c g'>4_) \tieNeutral r r2 \clef bass
    | R1
    | c,,8\rest \stemDown c e g c e g c \stemNeutral
    | cis,4 r r2
    | <d, d'>4 r r2 \clef violin
    | d''8( c' fis, c' d, c' fis, c'
    | <g b>4) r r2
    | R1*8
    | g8_\markup { \italic "legato" } b d b g b d b
    | fis c' d c a c d c

% 300
    | g b d b fis c' d c
    | g b d b g b d b
    | b, d g d b d g d
    | c e a e c e a e
    | d a' c a d, a' c a
    | <g b>4 r r2
    | d8 a' c a d, a' c a
    | <g b>4 r r2
    | b,8( fis' a fis b, fis' a fis
    | e4) r r2

% 310
    | a,8( e' g e a, e' g e
    | <d fis>4) r r2
    | R1*10
    | <g b>2 <fis a>
    | <e g> <d fis>
    | <cis e> <c es>
    | <c d>4 r r2 \clef bass
    | <b d>2 <fis d'>
    | <g d'> <fis a>
    | <e b'> <a g'>
    | r4 <d fis> d, r

% 330
    | <g, g'>2 <fis fis'>
    | <e e'> <d d'>
    | <cis cis'> <c c'>
    | <c c'> r
    | <b b'> <fis fis'> 
    | <g g'> <b b'>
    | <c c'>4 <c c'> <d d'> <d d'>
    | <g, g'> r r e'''8 d
    | c b a g fis e d c
    | << { b4 c d e | fis g a b | c r d r }
         { b,,4 c d e | fis g a b | c r d r } >>
    | <es, es'>1
    | R1*5
    | <es' g bes>1
    | <d g b!>

% 350
    | <d fis! a>
    | g4 << { g, a b | c d e fis | g a b c }
            { g,, a b | c d e fis | g a b c } >>
    | <d d'> r <d, d'> r
    | <g g'> r r <d' d'>
    | <g g'> r r <d d'>
    | <g, g'> r r <d' d'>
    | <g g'> <g g'> <d d'> <d d'>
    | <g, g'> r <g g'> r

% 360
    | <g, g'>2 r4

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDynamicsIII = {
    \standardTextScriptLayout

    s4-\p
    | \skip 1*8
    | s1-\markup { \dynamic "f" \italic "legato" }
    | \skip 1*6
    | s8 s8-\p s2.
    | \skip 1*17
    | s2. s4-\mf
    | s2. \once \override DynamicText #'extra-offset = #'(0 . -0.1) s4-\ff
    | \skip 1*2
    | s8 s8-\f s2.
    | \skip 1*5
    | s1-\p
    | \skip 1*15
    | s1-\markup { \italic "dolce" }
    | \skip 1*6
    | s1-\f
    | \skip 1*7
    | s1-\p
    | \skip 1*7
    | s1-\crescText
    | s1
    | s1-\f
    | s1

% 87
    | s1-\p
    | \skip 1*13
    | s1-\markup { \dynamic "f" \italic "legato" }
    | \skip 1*17
    | s8 s4.-\p s2
    | \skip 1*11
    | s2 s2-\f
    | \skip 1*3
    | s2. s4-\p
    | \skip 1*8
    | s1-\markup { \dynamic "f" \italic "legato" }
    | \skip 1*6
    | s8 s4.-\p s2
    | \skip 1*17
    | s2. s4-\f
    | \skip 1*3
    | s2. s4-\f
    | \skip 1*5
    | s1-\markup { \dynamic "f" \italic "legato" }
    | \skip 1*14
    | s2 s8 s4.-\p
    | \skip 1*3
    | s2 s8 s4.-\p
    | \skip 1*9

% 208
    | s1-\f
    | \skip 1*8
    | s1-\markup { \italic "legato" }
    | \skip 1*5
    | s2 s2-\sf
    | s4 s2.-\p
    | \skip 1*8
    | s1-\p
    | \skip 1*13
    | s1-\crescText
    | s1
    | s1-\f

% 250
    | \skip 1*4
    | s1-\p
    | \skip 1*7
    | s1-\crescText
    | s1
    | s1-\f
    | s1
    | s1-\markup { \dynamic "p" \italic "legato" }
    | \skip 1*13
    | s1-\markup { \dynamic "f" \italic "legato" }
    | \skip 1*16
    | s1-\p
    | \skip 1*24
    | s1-\p
    | \skip 1*7

% 330
    | s1-\markup { \dynamic "f" \italic "legato" }
    | \skip 1*11
    | s2. s4-\p
    | \skip 1*6
    | s1-\crescText
    | s1
    | s1-\ff
    | \skip 1*8
    | s2.
}
