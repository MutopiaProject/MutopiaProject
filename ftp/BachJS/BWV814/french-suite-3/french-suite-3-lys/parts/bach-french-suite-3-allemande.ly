\version "2.18.2"

Global = {
   \key b \minor
   \time 4/4
   \partial 16*3
}

VoiceI =  \relative c' {
   \repeat volta 2 {
      fis16 b ais	%-1
      b8.\mordent cis16 d b e b fis'8 b,~ b16 b e d	%1
      g e ais b cis, g' fis e d fis b, ais b d g, fis	%2
      g8 b'~ b16 g e d cis e a, g a cis fis, e	%3
      fis8 a'~ a16 fis d cis b d g, fis g b e d	%4
      e8. e,16 fis a d cis d8. b16 e g b cis,	%5
      d fis, b ais b4~ b16 ais e' d e4~	%6
      e16 d gis fis gis4~ gis16 cis, fis eis fis a gis fis	%7
      eis8 cis fis8. e16 d fis, b a b4~	%8
      b16 a gis b eis, d' cis b a eis fis b gis8.- \parenthesize \prall fis16	%9
      fis2~ fis16 b e d e ais, d cis  %10
      d gis, cis b cis4~ \stemDown cis16 fis, d' cis \stemNeutral eis,8.- \parenthesize \prall fis16	%11
      <<\relative fis' { fis2^~ fis4 r16}\\ \relative e' {r16 e d cis d8 cis16 b cis4 r16}>>	%12
   }
   \repeat volta 2 {
      cis'16 gis b
      ais8. cis16 fis, fis' cis e d8. fis16 b, b' fis a	%13
      g e  b d c g' fis a dis,8\prall b r16 e b d	%14
      c e a, c b e g, b a e' fis, a g e' e, g	%15
      fis e' dis a' fis8.\prall e16 e4~ e16 g b, d	%16
      cis8. e16 a, a' e g fis4~ fis16 d ais cis	%17
      b8. d16 g, g' d fis e4~ e16 cis gis b	%18
      ais8. cis16 fis, fis' cis e d4~ d16 b fis a	%19
      g b e, d' cis e g b, ais cis fis,8~ fis16 b fis a	%20
      g b e, g fis b d, fis e b' cis, e d b' b, d	%21
      cis b' ais e' cis8.\prall b16 b g fis' dis e4~	%22
      e16 b gis' eis fis8. e16 d cis d b ais8.- \parenthesize \prall b16	%23
      <<\relative b'{b2~ b4 r16}\\ \relative dis' {r8 dis~ dis16 e dis cis dis4 r16}>>	%24
   }
}


VoiceII =  \relative c {
   \repeat volta 2 {
      r16 r8	%-1
      r16 fis b ais b8 cis d16 b g' fis g8.\mordent fis16	%1
      e8 cis fis fis, b cis d b	%2
      e,16 b' e d cis8 b a g fis e		%3
      d16 a' d cis b8 a g fis e d		%4
      cis16 e a g a8. fis16 b, fis' b a g8 a   %5
      d,4~ d16 b g' fis g8 cis,~ cis16 fis b ais	%6
      b8 b,~ b16 eis a gis a4~ a16 fis b a	%7
      b d cis b a fis b ais b8 a gis16 eis d' cis	%8
      d8 b gis eis fis b, cis cis,	%9
      r16 fis' e' d e fis, d' cis d fis, cis' b cis fis, b ais 	%10
      b4~ b16 eis,16 a gis a8 fis8 cis' cis,	%11
      <<\relative ais {r8 ais8~ ais16 b ais gis ais4 r16}\\ \relative fis {\tieDown fis2~ fis4 r16}>>	%12
   }
   \repeat volta 2 {
      r16 r8	%
      r16 fis' cis e d8 ais8 r16 b fis a g8 dis	%13
      e g a c r16 b fis a g8 e	%14
      a fis g e c' a b g	%15
      a fis b,16 b' fis a g b dis, fis e8 g	%16
      a16 a' e g fis8 cis r16 d ais cis b8 fis	%17
      g16 g' d fis e8 b r16 cis gis b ais8 eis		%18
      fis16 fis' cis e d8 ais r16 b fis a g8 dis	%19
      e8 d e cis r16 fis cis e d8 b		%20
      e8 cis d b g' e fis d	%21
      e cis fis fis, g4~ g16 e cis' ais	%22
      b4~ b16 ais e' cis g'8 e fis fis,	%23
      <<\relative a{r16 a g fis g8 fis16 e fis4 r16}\\ \relative b, {b2~ b4 r16}>> 	%24
   }
}


\bookpart {
  \header {
    maintainer         = "Joel Mayes"
    maintainerEmail    = "joel_mayes@dingoblue.net.au"
  }
  \include "../header.ily"
  \header { title = "Allemande" }

  \score {
    \new PianoStaff <<
      \accidentalStyle Score.piano-cautionary
      \new Staff {
        \Global
        \VoiceI
      }
      \new Staff {
        \Global
        \clef bass
        \VoiceII
      }
    >>
    \layout { }
    \midi {
      \tempo 4 = 80
    }
  }
}
