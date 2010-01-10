% I first typeset this in original notation (see accompanying file)
% and then moved to translate that into "modern" notation.
% Note values have been halved, bar lines added. For ficta,
% I've kept a light touch, added them at cadences, at 6-7-6
% figures, and to avoid tritones (mi against fa).

\version "2.10.33"
\include "english.ly"

\header {
 mutopiatitle = "Tmeiskin"
 title = \mutopiatitle
 subtitle = "(modern notation)"
 composer = "Jean Japart (fl. 1474-1507)"
 mutopiacomposer = "JapartJ"
 mutopiainstrument = "Recorder"
 source = "Facsimile of Odhecaton Canti A, 3rd edition"
 style = "Renaissance"
 copyright = "Public Domain"
 maintainer = "Allen Garvin"
 maintainerEmail = "allen.garvin@dal.tribalddb.com"
 maintainerWeb = "http://agarvin.nitfol.com/music"
 lastupdated = "2009/Dec/26"
 filename = "27-tmeiskin.mod.ly"

 footer = "Mutopia-2010/01/09-1734"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
 % \set Score.skipBars = ##t
 % \once \override Score.SystemStartBracket #'transparent = ##t
 % \override Score.SpacingSpanner #'spacing-increment = #1.0 % tight spacing
  \key g \dorian
  \time 2/2
}

discantusNotes = \relative c'' {
    \set Staff.instrumentName = "Discantus  "
    % incipit
    \clef "treble"
    g2 g4 g | g1 | g1 | bf2. a8[ g] f1 |
    a2 a | c2. bf4 | a2 g( | g) \set suggestAccidentals = ##t fs \set suggestAccidentals = ##f |
    g1 | r2 g | bf bf | bf a( | a) d( |
    d) \set suggestAccidentals = ##t cs \set suggestAccidentals = ##f | 
    d2. c4 | bf2 a | bf2. a8[ g] | f4 bf2 a4 |
    bf g2 a4( | 
    #(set-accidental-style 'forget)
    a8)[  g \set suggestAccidentals = ##t fs e] fs2 \set suggestAccidentals = ##f | 
    #(set-accidental-style 'default)
    g1 | r2 d | e e | d4. e8 f4 g( | g) e2 a4 | f bf2 a4( |
    a4) g8[ f] g2 | a r4 a |  c2. bf4 |
    a2 g4 a( | a) c4. bf8 a4( | a)  g8[ f] e2 |
    d1 | r2 d | f2. g4 | a bf c2( | c4) bf4 bf2( | 
    bf4) a8[ g] a4 g8[ a] | bf1 | r2 f | bf a | g g |
     c2. bf4 a bf2 a4 g bf4. a8 g4( | 
    #(set-accidental-style 'forget)
    g4) \set suggestAccidentals = ##t fs8[ e] fs2 \set suggestAccidentals = ##f | g1\fermata
    #(set-accidental-style 'default)
    \bar "|."
}

altusNotes = \relative c' {
    \set Staff.instrumentName = "Altus  "
    \clef "treble_8"
    r1 | r1 | r1 | d2 d4 d | d1 f2. e8[ d] |
    c1 | f2 d2( | d4) d4 d2  | bf2. c4 | 
    d \set suggestAccidentals = ##t ef2 \set suggestAccidentals = ##f d8[ c] |
    d2 d2( | d4) e f2 | f2 a2( | a4)  g8[ f] e4 a |
    f1 | r2 f | d bf | f' f | d4 e2 c4( | c4) d2 d4( | d4) ef2 d8[ c] |
    bf4 c d2 | g, c | f,4 bf2 g4( | g) c2 a4( | a) g d'2( | 
    d4) \set suggestAccidentals = ##t ef4 \set suggestAccidentals = ##f d2 | f f |
    f f | f r4 f4( | f) e2 f4( | f) a a2 | f1( | f) |
    d2 bf | c1 | r | f | d2. e8[ f] | g4 f d2( | d) f |
    ef ef | c4 f d g | f g4. f8 f4 | 
    d2 \set suggestAccidentals = ##t ef \set suggestAccidentals = ##f |
    d1 | d\fermata \bar "|."
}

tenorNotes = \relative c' {
     \set Staff.instrumentName = "Tenor  "
     % incipit
     \clef "treble_8"
    r1 | g2 g4 g4 | g1 | g | bf2. a8[ g] | f1 |
    a2 a | c2. bf4 | a2 a | g1( | g) | r2 g |
    bf c | d f | e e | d1( | d) | r2 d | d c4 c | 
    bf2 c | a a | g1( | g) | r2 g | bf bf | c c |
    d2. c4 | bf2 bf | a1 | r2 a | c c | c c4 c | c2 c |
    d1( | d) | c2 d | f2. e4 | d2 bf | c c | bf1( | bf)
    r2 f | bf bf | a g | d'2. c4 | bf2 c | a a | 
    g1\fermata \bar "|."
}

bassusNotes = \relative c {
    \set Staff.instrumentName = "Bassus   "
    \clef "bass"
    g2. a4 | bf c2 bf4 | a2. bf4 | g1 | r | 
    d'2. c8[ bf] | a2 f'2( | f4)  e g2 | d1 |
    ef2. d8[ c] | bf4 c2 bf8[ a] g2 g'( | g) f2 |
    d1 | a' | bf2. a4 | g2 f | g2. f8[ e] |
    d4. c8 f2 | g4 e2 f4( | f8)[ e d c] d2 |
    bf4 c4. d8 ef4( | ef) d8[ c] bf2 | c c | bf4. c8 d4 e( | 
    e)  c2 f4 | d g4. d8 f4 | g ef g2 | d f | f f | 
    f e4 f( | f) a4. g8 f4( | f) e8[ d] a'2 |
    bf1( | bf) | bf2. a8[ g] | f1 | g | f |
    bf,2. c8[ d] | ef4 d4. c8[ bf a] | g2 d' |
    \set suggestAccidentals = ##t ef1 \set suggestAccidentals = ##f | 
    \[ f2 g2 \] | d4 g4. d8 f4 | g2 c, |
    d1 | g,\fermata \bar "|."
    
}

\score {
  \new StaffGroup = choirStaff <<
    \new Voice =
      "discantusNotes" << \global \discantusNotes >>
    \new Voice =
      "altusNotes" << \global \altusNotes >>
    \new Voice =
      "tenorNotes" << \global \tenorNotes >>
    \new Voice =
      "bassusNotes" << \global \bassusNotes >>
  >>
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 98 2)
      }
    }
}

