% III. Con moto

\include "defs.ly"

tenorIC = \relative c' {
   \global   
   \set Score.currentBarNumber = #1
   \autoBeamOff
   \clef "G_8"
   \key f \major
   \time 3/4

   \tempo \markup { \huge "III. Con moto" }
   R2.
   R2.
   R2.
   R2.
   r4 \dto #2.8 #-2.5 \tso #0 #-2.0 r^\f c^"Tutti"
   f2.~ \break
   f2.~
   f4( e8[ f g e])
   c2 a4
\barNumberCheck 10
   d2.~
   d2.~
   d8[( c b c d e])
   f2 e4
   d4( g2) \mark \default
   e2 r4
   R2.
   R2.
   R2.
   R2.
\barNumberCheck 20
   R2.
   R2. \mark \default
   r4 r \dto #-1.5 #-1.5 g,^\f
   c2.
   c2 c4
   f2.~
   f4( e8[ f g e])
   c2 a4
   d2( e4
   f2 fis4
\barNumberCheck 30
   g2 gis4
   a4) a, r8 f'
   e4 a, r8 f' \mark \default
   e4 a, r
   R2.
   d8.^\f d16 d4 r
   R2.
   g8. d16 d4 r
   R2.
   f8. d16 d4 a8[( g16 a]
\barNumberCheck 40
   b8[ a16 g] a8[ e f g] \mark \default
   f8.) f16 f4 f'8[( es16 f]
   g8[ f16 es] f8[ c d es]
   d8[ c b c d e!]
   f8[ e d e f g]
   a8[ g] f2 \mark \default
   e8.) e16 e4 r
   R2.
   r4 r e8[( d16 e]
   f8[ e16 d] e8[ h c d]
\barNumberCheck 50
   cis8[ d]) e4 e
   e4 a, d4~
   d8[( c!16 d] e8[ h] c4
   d4. c8) h4
   a8. a16 a4 r
   R2. \mark \default
   d8. d16 d4 r
   R2.
   d8. d16 d4 r
   R2.
\barNumberCheck 60
   e8. e16 e4 gis,8[( a]
   h8[ c] d[ c16 d] e8[ h]
   c8.) c16 c4 r
   e8. e16 e4 r
   a8. e16 e4 c^\f \mark \default
   f2.~
   f2.~
   f4( e8[ f g e])
   c2 a4
   d2.~
\barNumberCheck 70
   d2.~
   d8[( c b c d e]
   f4) f f
   f2( e8[ d]
   c8[ b c d es c]
   d8[ c d e! f g]
   e4 c f~
   f4 e4. f8)
   f4 r r \mark \default
   r4 d d
\barNumberCheck 80
   d2 c8[( b])
   a4 c f
   f4 c a'8 a
   a2 g4
   f4 r r
   R2.
   R2.
   r4 r c
   f2.~
   f2.~
\barNumberCheck 90
   f2.
   c2.^\fermata \time 2/4
}
tenorIC_words = \lyricmode {
   \lyricsstyle
   In -- ten -- de, in -- ten -- de, in -- ten -- de,
   in -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de.
   Glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a,
   glo -- ri -- a pa -- tri, pa -- tri glo -- ri -- a,
   glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a.
   In -- ten -- de, in -- ten -- de, in -- ten -- de,
   qui de -- du -- cis Jo -- seph,
   qui se -- des su -- per Che -- ru -- bim,
   in -- ten -- de.
}

tenorIIC = \relative c' {
   \global   
   \autoBeamOff
   \clef "G_8"
   \key f \major
   \time 3/4

   R2.
   R2.
   R2.
   R2.
   r4 \dto #2.8 #-2.5 \tso #0 #-2.0 r^\f c^"Tutti"
   f4( e d
   c4 b a
   b2.)
   b4( a) a
\barNumberCheck 10
   d4( c b
   a4 g a
   b8[ a g a b c])
   d2 g,4
   g4( d'2)
   c2 r4
   R2.
   R2.
   R2.
   R2.
\barNumberCheck 20
   R2.
   R2.
   r4 r \dto #-1.5 #-1.5 g^\f
   c2.(
   h4 a g)
   g2 g4~
   g4 c( b!~
   b4 a8[ b] c4~
   c4) b d8[( cis])
   d2( c!4)
\barNumberCheck 30
   h2 h4
   e4 a, r8 d
   cis4 a r8 d
   cis4 a r
   R2.
   \dto #0 #-0.4 a8.^\f a16 a4 d8[( c16 d]
   es8[ d16 c] d8[ a b c]
   b2) b8 g
   e'2.(
   d4) f f
\barNumberCheck 40
   e2.(
   d8.) d16 d4 b4(
   es4. a,8[ b c]
   b8[ a g a b c]
   d8[ c b c d e!]
   f8[ e d c h a]
   gis8.) gis16 gis4 e'8[( d16 e]
   f8[ e16 d] e8[ h c d]
   c8.) c16 c4 c8[( h16 c]
   d8[ c16 h] c8[ gis]) a[( h])
\barNumberCheck 50
   a4 r r
   R2.
   h8. h16 h4 a8[( gis16 a]
   h8[ a16 gis] a8[ fis] gis4
   a8.) a16 a4 r
   R2.
   a8. a16 a4 r
   R2.
   h8. h16 h4 h8[( c]
   d8[ f16 e] d8[ c h a]
\barNumberCheck 60
   gis8.) gis16 gis4 e8[( fis]
   gis8[ a h a] gis4
   a8.) a16 a4 r
   c8. c16 c4 r
   e8. e16 e4 c^\f
   f4( e d
   c4 b a
   b2.)
   b4( a) a
   d4( c b
\barNumberCheck 70
   a4 g << { a } \\ { \small \stemDown \once \override Staff.Accidental #'font-size = #-2 \parenthesize fis } >>
   b8[ a g a b c]
   d4) d d
   d2( c8[ b]
   a8[ g a b] c4~
   c4 b2~
   b4 a g8[ f]
   g8[ a] b2)
   a4 r r
   r4 b b
\barNumberCheck 80
   b2 a8[( g])
   a4 g a8[( b])
   c4 a f'8 f
   f2 e4
   c4 r r
   R2.
   R2.
   r4 r c
   f4( e es
   d2.
\barNumberCheck 90
   c2.)
   a2.^\fermata \time 2/4
}
tenorIIC_words = \lyricmode {
   \lyricsstyle
   In -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de,
   in -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de.
   Glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a,
   glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a,
   glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a.
   In -- ten -- de, in -- ten -- de, in -- ten -- de,
   qui de -- du -- cis Jo -- seph,
   qui se -- des su -- per Che -- ru -- bim,
   in -- ten -- de.
}

bassIC = \relative c' {
   \global   
   \autoBeamOff
   \clef bass
   \key f \major
   \time 3/4
   r4 r8. c16 ^"Solo" a8. c16
   d4.. c16 b8. a16
   g4 d r
   R2.
   r4 \dto #2.8 #-1.5 \tso #0 #-2.0 r^\f c'^"Tutti"
   a4( c b
   a4 g f
   g2.)
   f2 a4
\barNumberCheck 10
   fis4( a g
   fis4 e d
   g8[ a] b2)
   a4( h) c
   c2( h4)
   c2 c,8.^"Solo" d16
   es8 f g[( a]) b[( c])
   d2 c4
   b2( g4)
   f4 r f
\barNumberCheck 20
   b4. b8 a g
   c2 a4
   f2 \dto #-1.8 #-1.5 \tso #0 #-1.8 g4^\f^"Tutti"
   c2.~
   c2.~
   c4( h8[ c d h])
   g2 r4
   r4 r f
   b4 b, r
   r4 r d
\barNumberCheck 30
   g4( f e8[ d]
   cis8[ e]) a4 a
   a2.~
   a4 a, a'8[(^\f g16 a]
   b8[ a16 g] a8[ e f g]
   f2) f8 f
   fis2.(
   g4) b d
   d4.( cis8) d4
   d,2 f8[( e16 f]
\barNumberCheck 40
   g8[ f16 e] a4 a,
   d8.) d16 d4 b'~
   b4( a2
   b4) b, r
   r4 r b'
   f8. f16 f4 r
   r4 r a~
   a4( gis a8[ h]
   e,8.) a16 a4 a~
   a4 e r
\barNumberCheck 50
   a8[( g16 a] b!8[ a16 g] a8[ e]
   f4.) a8 a4
   R2.
   R2.
   a8. a16 a4 a8[(h]
   c8[ e16 d] c8[ h a g]
   fis8.) fis16 fis4 r
   R2.
   g8. g16 g4 g8[( a]
   h8[ d16 c] h8[ a g f!]
\barNumberCheck 60
   e8.) e16 e4 r
   R2.
   a8. a16 a4 r
   a8. a16 a4 r
   c8. c16 c4 c^\f
   a4( c b
   a4 g f
   g2.)
   f2 a4
   fis4( a g
\barNumberCheck 70
   fis4 e d
   g8[ a] b2
   a4) g f
   f8[( e d e f g]
   a4) a r
   r4 r g
   c4 c, c
   c2.
   f4 a a
   a2.(
\barNumberCheck 80
   g2) c4
   f,4 g f8[( g])
   a4 f c'8 c
   c2 b4
   a4 r8. c16 a8. c16
   d4.. c16 b8. a16
   g4 d r
   r4 r c'
   a4( c2~
   c4 b8[ a] b4~
\barNumberCheck 90
   b4 a g)
   f2.^\fermata \time 2/4
}
bassIC_words = \lyricmode {
   \lyricsstyle
   Qui re -- gis Is -- ra -- el, in -- ten -- de,
   in -- ten -- de, in -- ten -- de, in -- ten -- de,
   qui de -- du -- cis ve -- lut o -- vem Jo -- seph,
   qui se -- des su -- per Che -- ru -- bim,
   in -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de.
   Glo -- ri -- a pa -- tri et fi -- li -- o,
   glo -- ri -- a pa -- tri et fi -- li -- o.
   glo -- ri -- a pa -- tri, glo -- ri -- a, glo -- ri -- a,
   glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a.
   In -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de.
   qui de -- du -- cis Jo -- seph,
   qui se -- des su -- per Che -- ru -- bim,
   qui re -- gis Is -- ra -- el, in -- ten -- de, in -- ten -- de.
}

bassIIC = \relative d {
   \global   
   \autoBeamOff
   \clef bass
   \key f \major
   \time 3/4
   R2.
   R2.
   r4 r8. d16^"Solo" g8. a16
   b4.. a16 g8. f16 \autoBeamOn 
   c'4 \dto #2.8 #-2.5 \tso #0 #-2.0 c,^\f c^"Tutti"
   f2.(
   f,2 a4
   c2 e4)
   f2 a4
\barNumberCheck 10
   d,2.~
   d2( fis4
   g2 g,4)
   d'2 e8( f)
   g2.
   c,2 r4
   R2.
   R2.
   R2.
   R2.
\barNumberCheck 20
   R2.
   R2.
   r4 r \dto #-1.5 #-1.5 g'^\f
   c4( h a
   g f e
   d2 g,4)
   c2 c4
   f4 f, r
   r4 r a'
   d4 d, r
\barNumberCheck 30
   R2.
   r4 r r8 d
   a'4 a r8 d,
   a'4 a r
   R2.
   \dto #0 #-1.5 d,8.^\f d16 d4 r
   R2.
   g8. g16 g4 g16[( a g a]
   b8[ a16 g] a8[ e f g]
   f8.) \noBeam f16 f4 d'~
\barNumberCheck 40
   d4( cis2
   d4) a d,
   c4( f4.) f8
   b,4 r g'
   d8. d16 d4 r
   r4 r d
   e4 \melisma d c
   h4 e8 d c h
   a8[ h c d] e8 f16 e
   d8 e16 f e4. \melismaEnd e8
\barNumberCheck 50
   a,4 \melisma cis a
   d8[ cis16 d] f8[ e f d]
   gis4. e8 a4
   f8[ d] \melismaEnd e4 e
   a,8. a16 a4 r
   R2.
   d8. d16 d4 fis8[( g]
   a8[ h] c[ h16 c] d8[ a]
   \autoBeamOff h8.) h16 h4 r
   R2.
\barNumberCheck 60
   e,8. e16 e4 d8[( c]
   h8[ a gis a] e'4
   a8.) a16 a4 r
   a8. a16 a4 r
   a8. a16 a4 c^\f
   f,2.(
   f,2 a4
   c2 e4)
   f2 a4
   d,2.~
\barNumberCheck 70
   d2( fis4
   g2 g,4
   d'4) d d
   d8[( c b c d e]
   f4 a f
   b4) b, r
   r4 r c
   c2.
   f,4 f' f
   f2.(
\barNumberCheck 80
   \autoBeamOff e2) e4
   f4 e d
   c4 c' a8 f
   c2 c4
   f,4 r r
   R2.
   r4 r8. b'16 g8. b16
   c4.. b16 a8. g16
   f2.(
   b,2.
\barNumberCheck 90
   f'2.)
   f,2.^\fermata \time 2/4
}
bassIIC_words = \lyricmode {
   \lyricsstyle
   Qui re -- gis Is -- ra -- el, in -- ten -- de,
   in -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de,
   in -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de.
   Glo -- ri -- a, glo -- ri -- a, glo -- ri -- a pa -- tri et fi -- li -- o,
   et fi -- li -- o,
   et pa -- tri glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a,
   glo -- ri -- a, glo -- ri -- a, glo -- ri -- a, glo -- ri -- a.
   In -- ten -- de, in -- ten -- de, in -- ten -- de, in -- ten -- de.
   qui de -- du -- cis Jo -- seph,
   qui se -- des su -- per Che -- ru -- bim,
   qui re -- gis Is -- ra -- el, in -- ten -- de, in -- ten -- de.
}

vcbC = \relative a, {
   \global   
   \clef bass
   \key f \major
   \time 3/4
   f'4_\f f, r
   d''4 d, r
   b'4 b, r
   g'4 g, r
   c4 c, r
   f'4 f, r
   f'4 f, r
   c''4 c, r
   f4 f, r
\barNumberCheck 10
   d'4 d, r
   d'4 d, r
   g'4 g, r
   d''4 d, e8( f)
   g4 g, r
   c'4 c, r
   f4 f, r
   b'4 b, r
   b'4 b, r
   b'4 b, r
\barNumberCheck 20
   g'4 g, r
   a'4 a, r
   d4 d, r
   c''4_\f c, r
   c'4 c, r
   d'4 d, r
   c'4 c, r
   f4 f, r
   b'4 b, r
   d'4 d, r
\barNumberCheck 30
   g4 f e8 d
   cis4 a r8 d
   a'4 a, r8 d
   a'4 a, r
   R2.
   d8._\f d16 d4 r
   R2.
   g,8. g16 g4 r
   R2.
   d'8. d16 d4 r
\barNumberCheck 40
   R2.
   d8. d16 d4 r
   R2.
   b8. b16 b4 g
   d'8. d16 d4 b
   f'8. f16 f4 d
   e4 d c
   h4 e8 d c h
   a8[ h c d] e8 f16 e
   d8 e16 f e4. e8
\barNumberCheck 50
   a,4 cis a
   d8 cis16 d f8 e f d
   gis4. e8 a4
   f8 d e4 e
   a,8. a16 a4 r
   R2.
   d8. d16 d4 r
   R2.
   h8. h16 h4 r
   R2.
\barNumberCheck 60
   e8. e16 e4 r
   R2.
   a,8. a16 a4 r
   a'8. a16 a4 r
   a8. a16 a4 c_\f
   f,8. f,16 f4 r
   f'8. f,16 f4 r
   c''8. c,16 c4 r
   f8. f,16 f4 r
   d'8. d,16 d4 r
\barNumberCheck 70
   d'8. d,16 d4 r
   g'8. g,16 g4 r
   d''8. d,16 d4 r
   d8 c b c d e
   f4 a f
   b4 b, g'
   c4 c, c
   c2.
   f4 f, r
   f'4 f, r
\barNumberCheck 80
   f'4 f, r
   f'4 e d
   c4 c, r
   c''4 c, r
   f4 f, r
   d''4 d, r
   b'4 b, r
   c'4 c, r
   f4 f, r
   b'4 b, r
\barNumberCheck 90
   f'4 f, r
   f'4 f, r^\fermata \bar "||" \time 2/4
}

scoreC = {
   <<
      \new ChoirStaff <<
         \new Staff = "staffC_tenorI" <<
            \set Staff.instrumentName = "Tenore I"
            \new Voice = "voiceC_tenorI" << \tenorIC >>
            \lyricsto "voiceC_tenorI" \new Lyrics \tenorIC_words
         >>
         \new Staff = "staffC_tenorII" <<
            \set Staff.instrumentName = "Tenore II"
            \new Voice = "voiceC_tenorII" << \tenorIIC >>
            \lyricsto "voiceC_tenorII" \new Lyrics \tenorIIC_words
         >>
         \new Staff = "staffC_bassI" <<
            \set Staff.instrumentName = "Basso I"
            \new Voice = "voiceC_bassI" << \bassIC >>
            \lyricsto "voiceC_bassI" \new Lyrics \bassIC_words
         >>
         \new Staff  = "staffC_bassII" <<
            \set Staff.instrumentName = "Basso II"
            \new Voice = "voiceC_bassII" << \bassIIC >>
            \lyricsto "voiceC_bassII" \new Lyrics \bassIIC_words
         >>
      >>
      \new Staff  = "staffC_vcb" <<
         \set Staff.instrumentName = \markup { \center-column { "Violoncello" "e Basso" } }
         \new Voice = "voiceC_vcb" << \vcbC >>
      >>
   >>
}

