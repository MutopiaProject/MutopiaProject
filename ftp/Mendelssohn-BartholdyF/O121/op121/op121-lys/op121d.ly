% IV. Adagio

\include "defs.ly"

tenorID = \relative e' {
   \global
   \set Score.currentBarNumber = #1
   \autoBeamOff
   \clef "G_8"
   \key f \major
   \time 2/4

   \tempo \markup { \huge "IV. Adagio" }
   R2
   R2
   R2
   R2
   R2^\fermataMarkup
   e4^\p^"Solo" e8 e
   e4.( d16[ e])
   f4 r8 d
   e8( g4 f16[ e]
\barNumberCheck 10
   d8.) cis16 cis4
   r4 r8 e
   e4.( d16[ e])
   f4 f8 f
   g4( f8[ e]
   d8.[ c16]) c4 \mark \default
   r4 fis8^\f fis16 fis
   g4 fis
   r4 fis8[( g])
   a4. d,8
\barNumberCheck 20
   d4.( c8)
   b8[(^\> c]) d[( e])
   f2(^\p
   e8[ d]) c c
   c4( d)
   e2~
   e2^\fermata
   r4 d(^\p
   e2~)
   e8. e16 e4^\fermata
\barNumberCheck 30
   a,4(^\f \acciaccatura c8 b8.) a16
   a4^\fermata
}
tenorID_words = \lyricmode {
   \lyricsstyle
   Glo -- ri -- a pa -- tri et fi -- li -- o et spi -- ri -- tu -- i san -- cto,
   glo -- ri -- a pa -- tri et fi -- li -- o et spi -- ri -- tu -- i san -- cto, __
   glo -- ri -- a, glo -- ri -- a.
}

tenorIID = \relative c' {
   \global
   \autoBeamOff
   \clef "G_8"
   \key f \major
   \time 2/4

   R2
   R2
   R2
   R2
   R2^\fermataMarkup
   cis4^\p^"Solo" cis8 cis
   d4( cis8[ h16 cis])
   d4 r8 f,
   g4 a
\barNumberCheck 10
   d,4 r
   r4 r8 cis'
   d4( cis8[ h16 cis])
   d4 c!8 c
   e8[( d] c4
   b8.[ a16]) a4
   r4 d8^\f d16 d
   d4 d
   r4 c8[( b])
   a4 d8[( c])
\barNumberCheck 20
   b4( fis)
   g8[(^\> a]) b4
   c4.(^\p f,8
   g4) a8 b
   c4( f,
   a4 c
   d4) cis^\fermata
   r4 f,(^\p
   a4 c!
   d8.) d16 cis4^\fermata
\barNumberCheck 30
   a4(^\f \acciaccatura c8 b8.) a16
   a4^\fermata
}
tenorIID_words = \lyricmode {
   \lyricsstyle
   Glo -- ri -- a pa -- tri et fi -- li -- o et spi -- ri -- tu -- i san -- cto,
   glo -- ri -- a pa -- tri et fi -- li -- o et spi -- ri -- tu -- i san -- cto,
   glo -- ri -- a, glo -- ri -- a.
}

bassID = \relative a {
   \global
   \autoBeamOff
   \clef bass
   \key f \major
   \time 2/4

   a8^"Solo" a16 a a8 a16 a
   b4 a
   r16 a a a a16. a32 a16 a
   c4 a
   a8[( g]) a4^\fermata
   a8 a16 a a8 a16 a
   b4 a
   r16 a a a a16. a32 a16 a
   c4 a
\barNumberCheck 10
   a8[( g]) a4
   a8^\< a16 a a8 a16 a
   b4 a
   r16 a a a a16. a32 a16 a
   c4 a
   a8[( g]) a4
   a8^\f a16 a a8 a16 a
   b4 a
   r16 a a a a16. a32 a16 a
   c4 a
\barNumberCheck 20
   a8[( g]) a4
   R2
   a8^\p a16 a a8 a16 a
   b4 a
   r16 a a a a16. a32 a16 a
   c4 a
   a8[( g]) a4^\fermata
   a8^\p a16 a a16. a32 a16 a
   c4 a
   a8[( g]) a4^\fermata
\barNumberCheck 30
   R2
   r4^\fermata \bar "||"
}
bassID_words = \lyricmode {
   \lyricsstyle
   A -- pe -- ri o -- cu -- los tu -- os et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram.
   A -- pe -- ri o -- cu -- los tu -- os et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram,
   a -- pe -- ri o -- cu -- los tu -- os et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram,
   a -- pe -- ri o -- cu -- los tu -- os et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram,
   a -- pe -- ri o -- cu -- los tu -- os et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram,
   et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram.
}

bassIID = \relative d {
   \global
   \autoBeamOff
   \clef bass
   \key f \major
   \time 2/4

   R2
   R2
   R2
   R2
   R2^\fermataMarkup
   R2
   R2
   d4^\p ^"Solo" d8 d
   c2(
\barNumberCheck 10
   b4) a
   r a
   g4( a)
   d4 f8 f
   c4( f
   b,4) f
   r4 d'8^\f d16 d
   g4 d
   r4 d
   fis2
\barNumberCheck 20
   g4 d
   R2
   r4 f!^\p
   c4( f,)
   f'4  d8 d
   a2(
   b4) a^\fermata
   r4 d^\p \melisma
   a2(
   b8.) \melismaEnd b16 a4^\fermata
   a'4(^\f \acciaccatura c8 b8.) a16
   a4^\fermata
}
bassIID_words = \lyricmode {
   \lyricsstyle
   Glo -- ri -- a pa -- tri et spi -- ri -- tu -- i san -- cto,
   glo -- ri -- a pa -- tri et fi -- li -- o et spi -- ri -- tu -- i san -- cto,
   glo -- ri -- a, glo -- ri -- a.
}

vcbD = {
   \global
   \clef bass
   \key f \major
   \time 2/4

   R2 * 4 R2^\fermataMarkup
   R2 * 20
   r4 r4^\fermata
   R2
   R2
   r4 r4^\fermata
   R2 r4 ^\fermata
}

scoreD = {
   <<
      \new ChoirStaff <<
         \new Staff = "staffD_tenorI" <<
            \set Staff.instrumentName = "Tenore I"
            \new Voice = "voiceD_tenorI" << \tenorID >>
            \lyricsto "voiceD_tenorI" \new Lyrics \tenorID_words
         >>
         \new Staff = "staffD_tenorII" <<
            \set Staff.instrumentName = "Tenore II"
            \new Voice = "voiceD_tenorII" << \tenorIID >>
            \lyricsto "voiceD_tenorII" \new Lyrics \tenorIID_words
         >>
         \new Staff = "staffD_bassI" <<
            \set Staff.instrumentName = "Basso I"
            \new Voice = "voiceD_bassI" << \bassID >>
            \lyricsto "voiceD_bassI" \new Lyrics \bassID_words
         >>
         \new Staff  = "staffD_bassII" <<
            \set Staff.instrumentName = "Basso II"
            \new Voice = "voiceD_bassII" << \bassIID >>
            \lyricsto "voiceD_bassII" \new Lyrics \bassIID_words
         >>
      >>
      \new Staff  = "staffD_vcb" <<
         \set Staff.instrumentName = \markup { \center-column { "Violoncello" "e Basso" } }
         \new Voice = "voiceD_vcb" << \vcbD >>
      >>
   >>
}

