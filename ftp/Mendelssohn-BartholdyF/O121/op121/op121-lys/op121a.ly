% I. Allegro moderato

\include "defs.ly"

tenorA = \relative e {
   \global
   \autoBeamOff
   \clef "G_8"
   \key c \major
   \time 4/4

   \tempo \markup { \huge "I. Allegro moderato" }
   R1 * 6
   << { R1 \once \override Score.RehearsalMark #'extra-offset = #'(0 . 1) \mark \default } \\ { s2.. \dto #4 #-2.0 s8^\f } >>
   e2 a4 h
   c4. c8 c c c c
\barNumberCheck 10
   d4. c8 h2
   a2. a4
   a4( d2) a8[( h])
   \autoBeamOn c8( d e4. d8 a h
   c8 h c d e2~
   e8 d c d) \autoBeamOff e4 e
   f4( e d) g
   c,4( f2 e4
   d2 c) \mark \default
   h4 e d c
\barNumberCheck 20
   gis4 a e'2
   h2 r4 h
   cis4. cis8 cis4 cis
   d2 d4 d
   e4. e8 e4 d
   c1 \mark \default
   h2 e
   d4 h c d
   h4.( a8) g2
   R1
\barNumberCheck 30
   R1
   R1
   r4 e' e dis
   e4 d! c( h)
   a4 r r2 \mark \default
   h2 e4 fis
   g4. g8 g g g g
   fis4 h, e2
   dis4 r8 h e4 d8[( c])
   h2 a8[( c h a])
\barNumberCheck 40
   g2 fis4 g8[( a])
   h4 e c a
   h4( e2 dis4) \mark \default
   e4 r r2
   R1
   R1
   R1
   R1
   r4 e^\mf dis h8[( c])
   d!4 d d d
\barNumberCheck 50
   d4( c h) e
   cis1
   d2. c!4 \mark \default
   h4( e2) a,4
   d2 h
   c2( d4) e8[( f])
   g2( e)
   c2 c4( d)
   e1
   e4 r e,( fis)
\barNumberCheck 60
   g2( a) \mark \default
   h2 r
   r4 e dis^\< h8([ c])
   d!4 d d d
   d4( cis) d( e)
   f2. h,4
   e2 d
   cis2( c)
   h4 e^\f e e \mark \default
   e4 e e e
\barNumberCheck 70
   e4( c8[ d]) e2
   f4( e) d2
   c1~(
   c4 cis d e
   d2~ d8[ cis h cis])
   d4 f f f
   f2 h, \mark \default
   r4 e e e
   e4 a, d( c)
   h4 e dis h8[( c])
\barNumberCheck 80
   d!4 d d d
   \autoBeamOn d8( c h a h4) e
   cis2~( cis8 a h cis
   d2 dis
   e1
   a2 e)
   e2 r4 e
   c8( h) a4 d2~ \melisma
   d8( c h4) \melismaEnd e2 \mark #11
   c2 e4 e
\barNumberCheck 90
   \autoBeamOff e4. e8 e e e e
   f4 e d2
   c8 c c c d4 c
   h2 a8 c c c
   c2 c4 c
   f2 f \mark \default
   \autoBeamOn e4. \melisma d8 c h a h
   c8 a e' h c a e' h
   c8 h a gis a g f e
   f8 e d e f g f g
\barNumberCheck 100
   a8 h a h c d c d
   e2 \melismaEnd e
   e1
   e1
   R1
   R1
   R1
   R1
   R1\fermataMarkup \time 2/4
}
tenorA_words = \lyricmode {
   \lyricsstyle
   Ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta tu -- a,
   de se -- de san -- cta, de se -- de san -- cta, de se -- de san -- cta tu -- a
   et co -- gi -- ta de no -- bis,
   et co -- gi -- ta de no -- bis,

   et co -- gi -- ta de no -- bis,
   et co -- gi -- ta de no -- bis,
   % D
   ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta tu -- a,
   de se -- de san -- cta tu -- a,
   et co -- gi -- ta de no -- bis.

   In -- cli -- na De -- us me -- us au -- rem tu -- am,
   in -- cli -- na De -- us au -- rem tu -- am et au -- di, et au -- di,
   % 62
   in -- cli -- na De -- us me -- us au -- rem tu -- am, au -- rem tu -- am, 
   in -- cli -- na De -- us me -- us au -- rem tu -- am, au -- rem,
   in -- cli -- na De -- us,
   % 77
   in -- cli -- na De -- us au -- rem,
   in -- cli -- na De -- us me -- us au -- rem, au -- rem
   in -- cli -- na De -- us,

   ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta tu -- a,
   de se -- de san -- cta tu -- a,
   de se -- de san -- cta,
   de se -- de san -- cta tu -- a.
}

bassIA = \relative e {
   \global
   \autoBeamOff
   \clef bass
   \key c \major
   \time 4/4
   R1 * 9
\barNumberCheck 10
   R1
   R1
   R1
   R1
   \dto #-0.4 #-0.5 e2^\f a4 h
   c4. c8 c c c c
   d4 c h2
   a2 g4( c~
   c4 h a2)
   gis2 r4 e'
\barNumberCheck 20
   d4 c h a
   a4( gis8[ fis]) gis4 gis
   e4. e8 e4 e
   fis2 h4 h
   c4. c8 h4 h
   h4( a8[ g!] fis4 e)
   dis2 r
   R1
   r2 e'
   d4 h c d
\barNumberCheck 30
   h4.( a8) g2
   r4 h h h
   c4 h a2(
   g8[ a]) h4 r e,
   a4 g fis e
   \autoBeamOn dis8( fis h a g fis e dis
   e4. d!8) cis4 a
   d4 g c,!4. c8
   h4 r8 h' h4 a8( g)
   fis8( a g fis e g fis e
\barNumberCheck 40
   dis8 fis e d) c4 h
   h'4 h h8( a) g( fis)
   g2( fis4 h)
   g4 r r2
   R1 *6
\barNumberCheck 50
   r4 a^\mf gis e8( f)
   g!4 g g g
   g4( f e a)
   g2 r4 a
   g1~ \melisma
   g4( c h) \melismaEnd g8( a)
   b4 b b b
   b4( a8 gis] a4) a
   a4( gis a h!)
   c2 e,
\barNumberCheck 60
   e2( fis4 e)
   dis2 r
   R1
   r4 a'^\< gis e8( f)
   g!4 g g g
   f4( a d2~
   d4 c h) h
   h4( e, a2)
   gis4 r r2
   e2^\f a4 h
\barNumberCheck 70
   \autoBeamOff c4. c8 c c c c
   d4 c h2
   a4 g! a b
   \autoBeamOn a2.( cis,4
   d8 e f g a2)
   d,4 d' d d
   d2 g,
   r4 c c c
   c2 h4( a)
   gis8( e fis gis a c h a
\barNumberCheck 80
   gis a h a gis e fis gis)
   a4 a gis e8( f!)
   g!4 g g g
   fis4( a8 h c4 h8 a
   gis4 e'8 d c4 h
   a2.) a4
   gis4( a2 gis4)
   a4 c a8( g) fis4
   r4 d' h8( a) gis4
   e2 a4 h
\barNumberCheck 90
   \autoBeamOff c4. c8 c c c c
   d4 c h2
   a8 e e e e4 e8[( a])
   a4( gis) a8 a a a
   g!2 a4 a
   d4( a) f( d)
   e4 \autoBeamOn \melisma e'8 d c h a h
   c8 a e' h c a e' h
   c8 h a gis a g f e
   f8 e d e f g f g
\barNumberCheck 100
   a8 h a h c d c d
   e2 \melismaEnd c
   h1
   cis1
   R1
   R1
   R1
   R1
   R1\fermataMarkup \time 2/4
}
bassIA_words = \lyricmode {
   \lyricsstyle
   Ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta tu -- a,
   san -- cta, de se -- de san -- cta tu -- a
   et co -- gi -- ta de no -- bis,
   et co -- gi -- ta de no -- bis,

   et co -- gi -- ta de no -- bis,
   et co -- gi -- ta de no -- bis,
   et co -- gi -- ta de no -- bis, de no -- bis Do -- mi -- ne,
   de se -- de san -- cta,
   et co -- gi -- ta de no -- bis.

   In -- cli -- na De -- us me -- us au -- rem,
   in -- cli -- na De -- us me -- us au -- rem tu -- am et au -- di,
   in -- cli -- na De -- us me -- us au -- rem tu -- am.
   Ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta tu -- a,
   de se -- de san -- cta, in -- cli -- na De -- us,
   in -- cli -- na De -- us au -- rem,
   in -- cli -- na De -- us me -- us au -- rem tu -- am, in -- cli -- na, in -- cli -- na,

   ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta tu -- a,
   de se -- de san -- cta tu -- a,
   de se -- de san -- cta,
   de se -- de san -- cta tu -- a.
}

bassIIA = \relative a, {
   \global
   \autoBeamOff
   \clef bass
   \key c \major
   \time 4/4
   R1 * 9
\barNumberCheck 10
   R1
   \dto -0.4 -1.5 a2^\f d4 e
   f4. f8 f f f f
   a4 g f2
   e2. gis4
   a4 e  a2~ \melisma
   a8[ h] c4 g e
   f2 c4 e
   fis4 gis a a,
   e'4. fis8 \melismaEnd gis4 a
\barNumberCheck 20
   h4 e, d c8[( d])
   e2 e4 e
   a,4. a8 a4 a
   d2 g4 g
   c,4. c8 gis4 gis
   a1
   h2 r
   R1
   R1
   R1
\barNumberCheck 30
   h2 e4 fis
   g4. g8 g g g g
   a4 g fis2
   e4 e a h
   c4. c8 c c c c
   h1~ \melisma \autoBeamOn
   h8 d c h a2~
   a8 c h a g4 a \melismaEnd \autoBeamOff
   h4 r8 h, g'4 fis8[( e])
   \autoBeamOn dis8( fis e d c e d c
\barNumberCheck 40
   h4 c8 h) \autoBeamOff a4 h8[( a])
   g4 g a c
   h1
   e4 r r2
   R1 * 6
\barNumberCheck 50
   R1
   R1
   R1
   \autoBeamOn r4 g fis d8( e)
   f!4 f f f
   f4( e8 f g4 f
   e4 d c2
   f,2) f'
   e4.( d8 c4 h)
   a4( h) c4( a)
\barNumberCheck 60
   e'4( d c2)
   h4 h' ais^\< fis8( g)
   a!4 a a a
   gis4( a) h2
   r4 a h cis
   d2. g,4
   c2 gis
   a2( dis,)
   e2 r
   R1
\barNumberCheck 70
   R1
   R1
   r4 c^\f f g
   \autoBeamOff a4. a8 a a a a
   b4 a g2
   f2 r
   r4 g h! g
   c4. c,8 c2
   r4 a' gis a
   e4. e8 e2~
\barNumberCheck 80
   e1
   e1~
   e1
   e1
   e2 a4 h
   c4. c8 c c c c
   d4 c h2
   a2 r4 c
   h8[( a]) g4 r e
   a,2( c4) e
\barNumberCheck 90
   a4. a8 a a a a
   gis4 a e2
   a,8 a a a gis4 a
   e'2 f8 f f f
   f4( e) f f
   d4( f) a( d)
   \autoBeamOn e,4 \melisma e'8 d c h a h
   c8 a e' h c a e' h
   c8 h a gis a g f e
   f8 e d e f g f g
\barNumberCheck 100
   a8 h a h c d c d
   e2 \melismaEnd e,4( a)
   a2( gis)
   a1
   R1
   R1
   R1
   R1
   R1\fermataMarkup \time 2/4
}
bassIIA_words = \lyricmode {
   \lyricsstyle
   Ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta tu -- a,
   de se -- de san -- cta, de se -- de san -- cta tu -- a
   et co -- gi -- ta de no -- bis,
   et co -- gi -- ta de no -- bis,
   ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta tu -- a,
   ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta, de se -- de san -- cta,
   et co -- gi -- ta de no -- bis.
   % 53
   In -- cli -- na De -- us me -- us au -- rem tu -- am et au -- di,
   in -- cli -- na De -- us me -- us au -- rem,
   in -- cli -- na De -- us au -- rem tu -- am.
   % 72
   Ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta tu -- a,
   ad -- spi -- ce Do -- mi -- ne,
   ad -- spi -- ce Do -- mi -- ne De -- us,
   ad -- spi -- ce Do -- mi -- ne de se -- de san -- cta tu -- a,
   in -- cli -- na,

   in -- cli -- na Do -- mi -- ne de se -- de san -- cta tu -- a,
   de se -- de san -- cta tu -- a,
   de se -- de san -- cta,
   de se -- de san -- cta tu -- a.
}

vcbA = \relative a, {
   \global
   \clef bass
   \key c \major
   \time 4/4
   a8_\f c' h a h4 e,
   r8 c' h a h4 e,
   r4 e'8 h c a e' h
   c8 a e' h c h a g
   fis8 a d a h a g f
   e8 gis c gis a e f c
   d4. d8 e4. e8
   a,4 e'8 d c h a gis
   a8 e' c e a g f e
\barNumberCheck 10
   f8 g a c, d4 e
   a,4 a'8 g f d cis a
   d8 a f' e d a f d
   a'8 h c c, d e f g
   c,4 e'8 d c a e' e,
   a8 c e a c h a g
   f8 d e f g f e c
   f8 f, a h c d e c
   fis8 d gis e a f e dis
   e4 c'8 a e' h c a
\barNumberCheck 20
   e'8 e, c a e' h c a
   e'4 e, r e'
   a4 a, r a'
   d4 d, r g
   c4 c, r gis'
   a4 a, r a
   h8 dis fis a g fis g a
   h8 a g fis e g fis d!
   g8 g, a h c e g c
   fis,8 a g fis e g fis e
\barNumberCheck 30
   dis8 a' g fis e c a h
   e,8 h' g' fis e d! c h
   a8 c e g h h, a h
   c8 h a gis a fis gis e
   a4 a' r fis,
   h8 a g a h4 h'
   e,8 h e d cis4 a
   d4 g, c! c
   h8 c' h a g g fis e
   dis8 fis e d c e d c
\barNumberCheck 40
   h4 c8 h a4 h8 a
   g4 g a c
   h1
   e4 e'8 h c a e' h
   c8 a e' h c h a g
   fis8 a d a h a g f
   e8 gis c gis a e f c
   d4 f8 e d c h a
   g4 a h h
   e,4 r e'2_\mf
\barNumberCheck 50
   a,4 c8 d e4 e,
   a2. a4
   d,2 a'
   e'4 cis d c
   h2 g
   c4 c g' f
   e d c2
   f,2 f'
   e4.( d8 c4 h)
   a4( h) c( a)
\barNumberCheck 60
   e'4( d) c2
   h8 cis dis e fis_\< cis fis e
   dis8 h c! a h dis fis h
   e,8 f! e f e d c h
   a8 b' a g f g f e
   d8 c h a g f e d
   c8 d e fis gis e fis gis
   a8 a' gis a dis, c' h a
   e4_\f e'8 h c a e' h
   c8 a e' h c a gis e
\barNumberCheck 70
   a,8 c e a c a gis a
   d,8 f a a, h a' e gis
   a4 c8 b a f e c
   f4 a8 g f d cis a
   d,8 e f g a a' g a
   d,8 d' c d h d a d
   g,8 g f g e g d g
   c,8 c' h c a c g c
   f,8 f g a h h, c d
   e1~
\barNumberCheck 80
   e1~
   e1~
   e1~
   e1~
   e1~
   e1~
   e2. e,4
   f2 fis
   g2 gis
   a2 c4 e
\barNumberCheck 90
   a4. a8 a a a a
   gis4 a e2
   a,8 a a a gis4 a
   e'2 f8 f f f
   c2 f4 f
   d4( f) a( d)
   e,4 e'8 d c h a h
   c8 a e' h c a e' h
   c8 h a gis a g f e
   f8 e d e f g f g
\barNumberCheck 100
   a8 h a h c d c d
   e2 e,
   e2 e
   a,4 cis8 e a g f e
   f8 d e a, f' d h' e,
   c'8 a h e, c' a dis h
   e8 h c d c gis a h
   a4 c, d e
   a,4 r r2^\fermata \bar "||" \time 2/4
}

scoreA = {
   <<
      \new ChoirStaff <<
         \new Staff = "staffA_tenor" <<
            \set Staff.instrumentName = "Tenore"
            \midiFlute
            \new Voice = "voiceA_tenor" << \tenorA >>
            \lyricsto "voiceA_tenor" \new Lyrics \tenorA_words
         >>
         \new Staff = "staffA_bassI" <<
            \set Staff.instrumentName = "Basso I"
            \midiFlute
            \new Voice = "voiceA_bassI" << \bassIA >>
            \lyricsto "voiceA_bassI" \new Lyrics \bassIA_words
         >>
         \new Staff  = "staffA_bassII" <<
            \set Staff.instrumentName = "Basso II"
            \midiFlute
            \new Voice = "voiceA_bassII" << \bassIIA >>
            \lyricsto "voiceA_bassII" \new Lyrics \bassIIA_words
         >>
      >>
      \new Staff  = "staffA_vcb" <<
         \set Staff.instrumentName = \markup { \center-column { "Violoncello" "e Basso" } }
         \midiContrabass
         \new Voice = "voiceA_vcb" << \vcbA >>
      >>
   >>


}
