\version "2.18.2"

Global = {
   \key b \minor
   \time 6/4
   \partial 8
   \set PianoStaff.connectArpeggios = ##t
}

noSee = {
   \override Stem.transparent = ##t
   \override NoteHead.transparent = ##t
   \override Dots.transparent = ##t
}

See = {
   \revert Stem.transparent
   \revert NoteHead.transparent
   \revert Dots.transparent
}

staffDown = {
   \change Staff = Lower
   \voiceOne
}

staffUp = {
   \change Staff = Upper
   \voiceTwo
}

shiftDots = { % Line up dots with shiftOn'd notes
   \override Dots.extra-offset = #'(0.7 . 0)
}

revertDots = { % Revert dots
   \revert Dots.extra-offset
}

suggestAcc = {
  \override Staff.AccidentalSuggestion.X-extent = #ly:accidental-interface::width
  \set suggestAccidentals = ##t
}

noSuggestAcc = {
  \set suggestAccidentals = ##f
}


VoiceI =  \relative c'' { \voiceOne
   \repeat volta 2 {
      fis8
      fis2.~ fis8[ g fis e g cis,]
      d2.~ d8[ d cis b cis e]
      ais,2. b4 b4.\prall ais16 b
      e4. fis8[ d cis] d e cis4. fis8
      d4. cis8[ b cis] d[ g fis e fis d]
      a'2.~ a8[ e d cis d b']
      cis,2. fis4\arpeggio d4.\prall cis8
      d4. cis8 b4~ b8[ a gis fis gis b]
      eis,2. cis'4\arpeggio cis4.\trill bis16 cis
      gis'4. b8 [ a gis] a b gis4. fis8
      eis4. eis8 %{ \shiftDots %} fis4.\arpeggio %{ \revertDots %} gis8 gis4.\trill fis8
      fis2.~ fis2 r8
   }
   \repeat volta 2 {
      cis8
      cis2.~ cis8[ d cis b cis ais]
      \suggestAcc
      b4. cis8[ d! e] d[ cis d b] e4
      \noSuggestAcc
      cis4.\prall b8 a4~ \stemDown a8[ b'a g a fis]
      b4. a8 g4 fis8 e fis4. \mordent g8
      a4. dis,8[ e fis] e fis fis4. \trill e16 fis
      g8[ a g fis g e] fis4 dis4.\prall e8 \stemUp
      e2.~ \stemDown e8[ fis e d e g] \stemUp
      cis,4. d8 e4~ e8[ d cis b cis e]
      a,4. b8[ c d] c[ b c a] d4
      \stemNeutral b4.cis8[ dis e] fis[ g fis b,] a'4
      g4. fis8 e4 d8 cis d4. \prall e8
      fis4. ais,8 b cis b cis cis4.\trill b16 cis
      d8[ e d cis d b] cis4 ais4.\prall b8
      b4. a8[ g fis] g e cis'4 d8 e
      fis,[ e' d cis d b] g'4 \stemUp cis,4.\trill b8
      b2.~ b2 r8
   }
}

VoiceII =  \relative c'' {\voiceTwo
   \repeat volta 2 {
      r8
      <d b>2. s
      r8 cis[ b ais b fis] g2.~
      g8[ g fis e fis cis] d[ e d cis d b]
      r4 cis'2 b4 ais2
      r8 g[ fis e fis d] b[ e d cis d b]
      r8 g''[ fis e d cis] d s8 \staffDown a,4 gis
      a2. \staffUp fis'4\arpeggio b4 ais
      b2. s2.
      cis,2. cis4\arpeggio s4.. \noSee cis'16~ \See
      cis2.~ cis4 b4. a8
      gis4. r8 %{ \shiftDots %} fis4.\arpeggio %{ \revertDots %} r8 eis'2
      s2. <cis ais>2 r8
   }
   \repeat volta 2 {
      r8
      r8 b[ ais gis ais fis] \staffDown ais,4 r4 r4
      r8 fis b4 \staffUp s s2.
      s1.*4
      <b' g>2. s2.
      g8[ a g fis g e] fis2.~
      fis8[ \staffDown b, a g a fis] s2. \staffUp
      s1.*5
      s1 ais'2
      s2. <fis d>2 r8
   }
}

VoiceIII =  \relative c' {
   \repeat volta 2 {
      r8
      r e[ d cis d b] ais4 cis fis,
      b d b e, g e
      fis r r s2.
      cis'8[ b ais gis ais fis] b e, fis4 fis,
      b4 r4 r4 s2.
      fis'8[ b a g a fis] \stemDown b,2. \stemNeutral
      r8 fis'[ e d e cis] ais[ g' fis e fis d]
      b[ a' gis fis gis b] eis,[ cis' b a b d]
      r8 cis,[ b a b gis] a[ b a gis a fis]
      eis[ fis eis dis eis cis] fis[ e'! d! cis d a]
      b[ b' a gis a fis] d' b cis4 cis,
      \voiceTwo  r fis,2_~ fis2 r8
   }
   \repeat volta 2 {
      r8
      fis'4 fis, fis' e8[ fis e d e cis]
      d4. cis8[ b fis'] \oneVoice b[ a gis fis gis e]
      a,[ e' a g fis e] fis d d'4 d,4
      g8[ fis g a b g] c4. b8[ a g]
      fis[ g a fis g c] b[ a b cis dis b]
      e4. d8[ c b] c a b4 b,
      e8[ a g fis g e] cis'[ d cis b cis a]
      s1.
      s2. d8[ g, fis e fis d]
      g[ b a g fis e] dis[ e dis cis dis b]
      e[ dis e fis g e] a4. g8[ fis e ]
      d[ e d cis d b] g'[ fis e d e fis]
      b,4 b'8 a g fis] e[ cis fis e fis fis,]
      g[ b cis dis] e4~ e8[ fis e d e cis]
      ais'4 fis b e, fis fis,
      \voiceTwo b2.~ b2 r8
   }
}

VoiceXtra =  \relative c'' {
   \repeat volta 2 {
     \shiftOn
     \stemUp
      s8
      s1.*6
      s2. cis4\arpeggio s2
      s1.
      s2. fis,4\arpeggio s2
      s1.
      s2 cis'4.\arpeggio s8 s2
      \staffDown
      fis,,2 cis4 fis2 r8
   }
   \repeat volta 2 {
      r8
      s1.*15
      r4 d fis b2 r8
   }
}


\bookpart {
  \header {
    maintainer = "Joel Mayes"
    maintainerEmail = "joel_mayes@dingoblue.net.au"
    maintainerWeb = ""
  }
  \include "../header.ily"
  \header { title = "Courante" }
  \score {
    \new PianoStaff <<
      \context Staff = Upper <<
        \Global
        \clef treble
        \new Voice <<\voiceOne \VoiceI >>
        \new Voice <<\voiceTwo \VoiceII >>
        \new Voice <<\voiceThree \VoiceXtra >>
      >>
      \context Staff = Lower <<
        \Global
        \clef bass
        \new Voice \VoiceIII
      >>
    >>
    \layout { }
    \midi {
      \tempo 4 = 100
    }
  }
}
