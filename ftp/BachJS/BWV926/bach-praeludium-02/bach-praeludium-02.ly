\version "2.12.1"

%% Updated to version 2.12.1 by Carl M. Bolstad on 2/15/2009.

\header {
  title = 	"Praeludium 2"
  opus = 	"BWV 926"
  composer =	"Johann Sebastian Bach (1685-1750)"

  mutopiatitle =      "Praeludium 2"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV 926"
  mutopiainstrument = "Harpsichord, Piano, Clavichord"
  date = 	      "1720"
  source =		"Bach-Gesellschaft"
  style =		"Baroque"
  copyright = 		"Public Domain"
  maintainer = 		"Allen Garvin"

 footer = "Mutopia-2009/02/22-69"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

voiceone =  \relative {
  \key d \minor
  \time 3/4

   d'8-1[ a'-4 f d a' f] |						% bar 1
   d8[ a' f d a' f] |						% bar 2
   d[ bes'-5 g d bes' g] |					% bar 3
   d[ bes' g d bes' g] |					% bar 4
   cis,-1[ g'-3 e cis g' e] |					% bar 5
   cis[ bes' g e-1 a-4 g] |						% bar 6
   f[ d f a f-1 a] |						% bar 7
   d[ a-1 d f d-1 f] |						% bar 8
   b[( f-3 e d c-3 b] |						% bar 9
   a[ gis-3 fis  e) d'-5 b-2] |					% bar 10
  <a c\mordent>4 r r |						% bar 11
  <a c\mordent>4 r r |						% bar 12
   a'8[( ees-3 d c bes-3 a] |					% bar 13
   g[ fis-3 e  d) c'-5 a-2] |						% bar 14
   bes[\mordent d bes-2 g] g'4 |					% bar 15
   r8  d-5[ c bes a\prall g] |					% bar 16
   a[ c a f] f'4 |						% bar 17
  r8  c-5[ bes a g\prall f] |					% bar 18
   g[ bes a g f e-2] |						% bar 19
   f[ d f-2 a d g,-1] |						% bar 20
  <<
    {\stemUp {  cis[\mordent e cis-3 a-1 e' cis] } \stemNeutral }
    {\context Voice = "ii" { << \stemDown a4 >> } }
  >> |								% bar 21
   a8[ e' cis a bes-3 a] |					% bar 22
   g[ e' cis g e' cis] |					% bar 23
   g[ e' cis g a-3 g] |						% bar 24
   f[ d' bes f d' bes] |					% bar 25
   f[ d' bes f d' bes] |					% bar 26
   fis-2[ c' a fis c' a] |					% bar 27
   fis[ c' a fis c' a] |					% bar 28
   bes[ g-1 fis-2 g d g] |						% bar 29
   bes[ g d bes' g d] |						% bar 30
   ees[ g fis g bes g-3] |					% bar 31
   ees[ bes' g ees bes' g] |					% bar 32
   cis,-1[ bes' g cis, bes' g] |					% bar 33
   cis,[ bes' g cis, a'-4 g] |					% bar 34
   f[ a f d a' f] |						% bar 35
   d[ a' f d cis-2 d-1] |						% bar 36
   e-3[ g e bes-1 g' e] |						% bar 37
   bes[ g' e cis a g'] |					% bar 38
   f16[ d c! bes-3] r4 r |					% bar 39
  r r r  |							% bar 40
  r4 r16  d-1[ f a]  d,[ f a] d-1 |					% bar 41
   f-2[ a f d]  f-4[ d b d-5]  gis,-2[ b a gis] |			% bar 42
  <a e' g\finger \markup \tied-lyric "5~4">4.\arpeggio a'8 <a, d f-4>4 ~ |				% bar 43
   f'8[ e] <<
           { \stemUp { e4.\prall d8 } \stemNeutral }
           { \context Voice = "ii" { << \stemDown cis2 >> } }
         >> |							% bar 44
   d8-4[ c! a d bes g] |	 					% bar 45
   c-5[ a fis-2 bes-4 g e] |						% bar 46
   a-5[ fis d g-5 e-4 cis] |						% bar 47
   <<
     {\voiceOne \stemUp {fis2. } \stemNeutral}
    \new Voice {
      
      \voiceTwo  \stemUp 
      \once \override NoteColumn.force-hshift = #-1.5 d\mordent   }
   {\stemDown a2. \stemNeutral }
 
  
 
   >> \bar "|."					% bar 48

}

  
voicetwo =  \relative c {
  \key d \minor
  \time 3/4
  \clef "bass"
\override Fingering.direction = #DOWN
  d4\mordent-132 r r |						% bar 1
  d, r r |							% bar 2
  d'\mordent r r |						% bar 3
  d, r r |							% bar 4
  d'\mordent r r|						% bar 5
  d, r r |							% bar 6
   d'8-2[ a d f d-5 f] |						% bar 7
   a[ f-4 a d a-3 d] |						% bar 8
  gis,4 r r |							% bar 9
  e gis e |							% bar 10
   a8-3[ e' c-2 a e' c] |						% bar 11
   g![ ees'-1 c g ees' c] |					% bar 12
  fis,4 r r |							% bar 13
  d-4 fis d |							% bar 14
  g\mordent r r8 f! |						% bar 15
  e4\prall r r |						% bar 16
  f\mordent r r8 e |						% bar 17
  d4 r8  f-1[ e d] |					% bar 18
   e[ d cis e-1 d cis] |						% bar 19
  d4 c! bes | 							% bar 20
  a a' a,-4 |							% bar 21
  a-5 a' a, |							% bar 22
  a a' a, |							% bar 23
  a a' a, |							% bar 24
  bes-4 r r |							% bar 25
  bes-5 bes' bes,-4 |						% bar 26
  a r r |							% bar 27
  a-2 d d, |							% bar 28
  g r r |							% bar 29
  g g' g, |							% bar 30
  g-4 r r |							% bar 31
  g g' g, |							% bar 32
  a r r |							% bar 33
  a a' a, |							% bar 34
  a r r |							% bar 35
  a a' a,-1 |							% bar 36
  cis, r r |							% bar 37
  cis cis' cis, |						% bar 38
  d' a'16  g-1[ f e]  f[ a d, f] |					% bar 39
  a,  d-4[ c bes] a  g-2[ f e]  d[ f a d] |				% bar 40
   f-2[ a]  d,-4[ f] a r r8 r4 |					% bar 41
  r r r |							% bar 42
   cis,8-2[ e cis a]  d16[c bes a] |					% bar 43
   a8[ g']  a-2[ g a-1 g,] |						% bar 44
  d'4-3 d' d,-5 |							% bar 45
  d-4 r r |							% bar 46
  d, d' d, |							% bar 47
  d2. \bar "|."
   \mark \markup { \musicglyph "scripts.ufermata" } % bar 48
}

\score {
   \new GrandStaff << 
    
    \new Staff = "one" <<
      \accidentalStyle piano-cautionary
      \voiceone
    >>
    \new Staff = "two" \with { \consists "Mark_engraver" }<<
       \override Staff.RehearsalMark.direction = #DOWN 
   \override Staff.RehearsalMark.rotation = #'(180  0 0)
      \voicetwo
    >>
  >>

   \layout{ %%line-width = 17.0 \cm 
   }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
      }
    }


}
