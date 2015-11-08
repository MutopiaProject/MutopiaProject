\version "2.18.2"

\header {
    title =       "Etude 15"
    opus =        "Op. 60, No. 15"
    composer =    "Matteo Carcassi"
    piece =       "Allegro moderato"

    mutopiatitle = "Etude 15"
    mutopiacomposer = "CarcassiM"
    mutopiaopus = "O 60"
    mutopiainstrument = "Guitar"
    date = "19th C."
    source = "Mayence, B. Schott's Söhne"
    % From Boije 94
    style = "Classical"
    license = "Public Domain"
    maintainer = "Jeff Covey"
    maintainerEmail = "jeff.covey@pobox.com"

 footer = "Mutopia-2015/08/18-16"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

globalA =  { \time 4/4 \skip 1*8 \bar ":|." }
globalB =  { \skip 1*34 \bar "|."           }
midiStuff = \context Staff = "guitar" {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \transposition c  % guitar music actually sounds an
                      % octave lower than written.
}

melodyA =  \relative c' {
  \stemUp
  r16 e[ g e a e g e]  r  g[ c g d' g, c g]
  r  c[ e c f c e c]  r  e[ g e a e g e]
  r  f[ b f c' f, b f]  r  g[ d' g, e' g, d' g,]
  r  g[ c g d' g, c g]  r  e[ g e a e g e]
  r  e,[ g e a e g e]  r  g[ c g d' g, c g]
  r  c[ e c f c e c]  r  e[ a e b' e, a e]
  r  c[ fis c g' c, fis c]  r  fis[ d' fis, e' fis, d' fis,]
  r  b,[ g' b, a' b, g' b,]  g,4 r
}
melodyB =  \relative c' {
  \stemUp
  r16  b'[ d b e b d b]  r  b[ d b e b d b]
  r  c[ d c e c d c]  r  fis[ c' fis, d' fis, c' fis,]
  r  c[ d c e c d c]  r  c[ d c e c d c]
  r  b[ d b e b d b]  r  g'[ b g c g b g]
  %13
  r  b,[ g' b, a' b, g' b,]  r  b[ g' b, a' b, g' b,]
  r  c[ f c g' c, f c]  r  c[ f c g' c, f c]
  r  d[ e d f d e d]  r  d[ b' d, c' d, b' d,]
  r  e[ c' e, d' e, c' e,]  r  c[ a' c, b' c, a' c,]
  r  c[ fis c g' c, fis c]  r  c[ fis c g' c, fis c]
  r  b[ g' b, a' b, g' b,]  r  bes[ e bes fis' bes, e bes]
  r  b[ d b e b d b]  r  c[ fis c g' c, fis c]
  r  b[ g' b, a' b, g' b,]   g,8[ f' e d]
  %21
  r16  e[ g e a e g e]  r  g[ c g d' g, c g]
  r  c[ e c f c e c]  r  e[ g e a e g e]
  r  e[ bes' e, c' e, bes' e,]  r  e[ a e bes' e, a e]
  r  e[ g e a e g e]  r  d[ f d g d f d]
  r  f[ b f c' f, b f]  r  f[ b f c' f, b f]
  r  e[ c' e, d' e, c' e,]  r  dis[ a' dis, b' dis, a' dis,]
  r  e[ g e a e g e]  r  f,[ b f c' f, b f]
  %
  r  e[ c' e,] r  e[ c' e,] r  g[ e' g, f' g, e' g,]
  r  fis[ d' fis,] r  fis[ d' fis,] r  b[ g' b, a' b, g' b,]
  r  c[ e c] r  c[ e c] r  e[ c' e, d' e, c' e,]
  r  a,[ d a cis a d a] r  b[ g' b, a' b, g' b,]
  r  e,[ c' e,] r  e[ c' e,] r  g[ e' g, f' g, e' g,]
  r  fis[ d' fis,] r  fis[ d' fis,] r  b[ g' b, a' b, g' b,]
  r  c[ e c] r  c[ e c] r  e[ c' e, d' e, c' e,]
  r  a,[ d a cis a d a] r  b[ g' b, a' b, g' b,]
  %
  r  e,[ c' e, e' e, c' e,] r  f[ b f g' f, b f]
  r  e[ e' e, d' e, c' e,] r  f[ d' f, c' f, b f]
  r  e[ c' e, e' e, c' e,] r  f[ b f g' f, b f]
  r  e[ e' e, d' e, c' e,] r  f[ d' f, c' f, b f]
  r  e[ c' e, b' e, c' e,] r  g[ c e] r  g,[ c g']
  <e g c>4  r <e, g c> <g c e> <e g c>2 r
}

bassA =  \relative c' {
  \stemDown
  c2 \mf e
  g_\markup { \italic "cresc." } c d \f f e c \>
   c,\! e a \< c  d,\! d \>  g\! \p g,4 \skip 4*1
}
bassB =  \relative c' {
  \stemDown
  g'2 \mf g fis d \>  fis\! \mf d g g \< \!
  g \f g a a gis e, a a d dis \sf e cis \sf d d \sf g r
  c,2 \mf e
  g_\markup { \italic "cresc." } c c \f cis a, d \>  g\! gis \sf a fis \sf g g,
  c4 \p c c2 \sf c4 \p c c2 \sf c4 c a'2 \mf f g,
  c4 \p c c2 \f c4 \p c c2 \sf c4 \p c a'2 \mf f g,
  c \mf c c_\markup { \italic "dim" } c c \mf c c_\markup { \italic "dim" } c c_\markup { \italic "cresc." } c4 e c \skip 4*1 c \f c c2
  \skip 2*1
}

aSectionMusic = <<
        \globalA
        \context Voice = melodyVoiceA { \melodyA }
        \context Voice = bassVoiceA   { \bassA   }
>>
%xaSectionFingerings = <<
%       \context Voice = melodyVoicA { \fingeringsMelodyA }
%       \context Voice = bassVoiceA { \fingeringsBassA }
%      >>

bSectionMusic = <<
        \globalB
        \context Voice = melodyVoiceB { \melodyB }
        \context Voice = bassVoiceB { \bassB }
>>
% bSectionFingerings = <<
%       \context Voice = melodyVoiceB { \fingeringsMelodyB }
%       \context Voice = bassVoiceB { \fingeringsBassB }
% >>

% dvi output =  without fingerings
\score {
    \context Staff = "guitar"     {
      \aSectionMusic
      \bSectionMusic
    }
  \layout {
        line-width = 18.0 \cm
  }
}

\score {
  {
    \midiStuff
    \aSectionMusic
    \bSectionMusic
  }

  \midi {
    \tempo 4 = 80
    }

}
