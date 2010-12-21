\version "2.12.3"

\header {
  mutopiatitle = "Suite Bergamasque: Clair de Lune"
  mutopiacomposer = "DebussyC"
  mutopiaopus = "L75"
  mutopiainstrument = "Piano"
  source = "E. Fromont (1905)"
  % Plate E. 1404 F.  IMSLP #02907
  style = "Modern"
  copyright = "Public Domain"
  maintainer = "Keith OHara"
  title = "Suite Bergamasque – Clair de Lune"
  composer = "Claude Debussy"
 footer = "Mutopia-2010/12/21-1778"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\pointAndClickOff
\paper {
  %{
  #(set-paper-size "letter")
  annotate-spacing = ##t
  ragged-bottom = ##t
  bottom-margin =12
  %}
  #(layout-set-staff-size 18)
  between-system-padding = 1
  ragged-last-bottom = ##f
}
% Definitios to override page-breaking 
myExplicitBreak = {
  \break
}
myExplicitPageBreak = {
  \pageBreak
}

\include "english.ly"

% restrain the slope of the beams
oflat = {
  \once\override Beam #'damping = #3
}
% Change staff
cu = { \change Staff = "upper" }
cl = { \change Staff = "lower" }
% Suspend collision resolution so notes line up
lu = {\once \override NoteColumn #'ignore-collision = ##t }
% simpler sustain commands
sd =  s8\sustainOn 
su =  s8\sustainOff
sv =  s8\sustainOff\sustainOn

\parallelMusic #'(rhUpRed rhDownGreen lhUpBlue lhDownGrey)
{
  \tempo"Andante très expressif"
  \slurUp \phrasingSlurUp 
  r8\pp \cl <f af>\( \cu <f' af> ~ <f af> 4. <df f>4.\) ~ |
  \stemDown \tieDown s8*9 |
  \dynamicUp \stemUp r8 \lu <f af>4 ~ <f af>2. |
  \dynamicUp \stemDown s8*9_\markup\italic"con sordina" |

  <df f>8\( <c ef> <df f> <c ef>2.\) ~ |
  s8*9 |
  <gf bff>2.~<gf bff>4. |
  s8*9 |

  <c ef>8\( <bf df> <c ef> \stemUp\tieUp\times 3/2 {df f~} \times 3/2 {f df~} |
  s4.  bf'2._~ |
  <f af>2.~<f af>4. |
  s8*9 |

  <df>8 <af c> <bf df> <af c>2.\) ~ |
  bf8 s1 |
  <ef gf>2.~<ef gf>4. |
  s8*9 |

  c8\( bf c bf ef bf af bf af ~ |
  gf2. gf4. |
  ef2. ef4. |
  df2. c4. |

  af8 gf af gf4. f4.\) ~ |
  ef2. ef4. |
  \clef bass df2. c4. |
  \clef bass bf2. a4. |

  f8\( f gf f bf f ef f ef ~ |
  df2.~df4. |
  bf2.^~bf4. |
  af2. gf4. |

  ef8 df ef df4. c4. |
  bf2. af4.|
  af2. gf4. |
  f2. \times 3/2 {ef8 af,~} |

  \barNumberCheck#9

  r8 <f, af>4 \stemNeutral\tieNeutral <f'' af>4. <df f>\) ~ |
  s8*9 |
  s8*9 \clef treble |
  \stemNeutral \once\override Beam #'positions = #'(3 . 3.5)
  <df, af'>8 \cu <f' af> \cl \clef treble <f' af>~<f af>2. |

  \stemUp\tieUp <df f>8\( ef f ef2.\) ~ |
  r8 <gf' bf>4~<gf bf>2. |
  \clef bass r8 <df gf bf df>4 ~ <df gf bf df>2. |
  \clef bass \stemDown <gf,, df'>2. s4. |

  ef8\( <df df,> <ef ef,> <af df, af>4. <f df f,>\) ~|
  s8 af4 s2. |
  r8 <f af>4 <df' f>4. <af df> |
  <f df'>2. s4. |

  f8\( ef f ef4. df\) ~ |
  r8 <gf bf>4~<gf bf>2. |
  r8 <df, gf bf df>4 ~ <df gf bf df>2. |
  <gf df'>2. s4. |

  df8\( <df df,>\< <ef ef,> \times 3/2 {<bf' bf,>\! <af af,>~} \times 3/2 {<af af,> <f f,>} |
  s8 af4 f'2. |
  r8 <f cf'>4 <cf' df f>4.~<cf df f>8 r r |
  \tieDown af2.~af4. |

  f8 ef f \times 3/2 {ef df\>~} \times 3/2 {df[ bf]\)} s8*0\! |
  r8 <f, bf>4~<f bf>2. |
  \tieUp r8 ef4 ~ \times 3/2 {ef8 df8 ~} df4. |
  <<bf2. {s8 <f' bf>4~<f bf>2.}>> |
}
rhUp = \relative c' \rhUpRed 
rhDown = \relative c' \rhDownGreen 
lhUp = \relative c' \lhUpBlue
lhDown= \relative c' \lhDownGrey

\parallelMusic #'(rhUpRed rhDownGreen lhUpBlue lhDownGrey)
{
  \barNumberCheck#15
  \tempo"Tempo rubato" 
  \stemNeutral \tieNeutral
  \times 3/2 {r8  <f bf f'>--(~} <f bf f'> <ef bf' ef>-- <ef bf' ef>-- 
  %{ %} <ef bf' ef>-- <df bf' df>-- <df bf' df>-- |
  s8*9 |
  \tieNeutral
  \times 3/2 {r8\pp \clef treble <f gf bf>--~} <f gf bf> <ef gf bf>-- <ef gf bf>--
  %{ %}  <ef gf bf>-- <df gf bf>-- <df gf bf>-- |
  <ef ef,>2. s4. |

  <df bf' df>8-- <c gf' bf c>-- <c gf' bf c>-- 
  %{ %} \times 3/2 {<c gf' bf c>-- <df bf' df>--} <bf gf' bf>4.--)|
  s8*9 |
  <df gf bf>8-- <c gf' bf>-- <c gf' bf>-- 
  %{ %} \times 3/2 {<c gf' bf>-- <df gf bf>--} <bf df gf>4.--|
  s8*9 |

  \times 3/2 {r8 <f' bf f'>--\(~} <f bf f'> <gf bf gf'>-- <f bf f'>--
  %{ %} <ef bf' ef>-- <f bf f'>-- <ef bf' ef>-- |
  \cl\stemUp bf2. s4. \cu\stemDown |
  \times 3/2 {r8 \clef treble <f' gf bf>--~} <f gf bf> <gf bf ef>-- <f gf bf>--
  %{ %}  <ef gf bf>-- <f gf bf>-- <ef gf bf>-- |
  \clef bass <ef ef,>2. s4. |

  <df bf' df>8-- <ef bf' ef>-- <df bf' df>-- \times3/2{
    <bf' c>-- \acciaccatura{\slurUp ef}<df, bf' df>--
  } <bf gf' bf>4.--\)~|
  s8*9 |
  <df gf bf>8-- <ef gf bf>-- <df gf bf>-- 
  %{ %} \times 3/2 {<c gf' bf>-- <df gf bf>--} <bf ef gf>4.--|
  s8*9 |

  \barNumberCheck#19

  \times 9/6 { <bf gf' bf>8[( <gf gf'> 
  %{ %} <af ef' af> <c c'> <bf gf' bf> <gf gf'>]) } |
  s8*9^\markup\italic"peu à peu,  cresc. et animé . . ." |
  r8*9/6 \stemDown \times 9/6 {gf8[ af c bf gf] } |
  << { \clef bass <af af,>2. s4.}
  %{ %} {s4*9/6 \stemUp <c' ef>4*9/6 <ef gf>4*9/6 } >> |

  r8 <gf c ef gf>-- <gf c ef gf>-- 
  %{ %} <gf c ef gf>-- <gf c ef gf>-- <af c ef af>-- <gf c ef gf>4.-- |
  s8*9 |
  \stemUp r8 \stemNeutral <gf c ef>--_( <gf c ef>-- 
  %{ %} <gf c ef>-- <gf c ef>-- <af c ef>-- <gf c ef>4.--) |
  \stemDown <bff, bff,>2. s4. |

  \stemUp 
  r8*9/6 \times 9/6 {<gf gf'>8[( <af af'> <df df'> <bf bf'> <gf gf'>]) } |
  s8*9/6 df''4. s8*9/6 gf4*9/6 |
  \stemUp r8*9/6 \stemDown \times 9/6 {gf8[ af df bf gf] } |
  << { <bf bf,>2. s4.} 
  %{ %} {s8*9/6 \stemUp <bf' df>4. s8*9/6 <df gf>4*9/6 } >> |

  \stemNeutral
  r8 <gf bf ef gf>-- <gf bf ef gf>-- 
  %{ %} <gf bf ef gf>-- <gf bf ef gf>-- <af c f af>-- <gf bf ef gf>4.-- |
  s8*9 |
  \stemUp r8 \stemNeutral <gf bf ef>--_( <gf bf ef>-- 
  %{ %} <gf bf ef>-- <gf bf ef>-- <af c f>-- <gf bf ef>4.--) |
  \stemDown <af, af,>2. s4. |

  \stemUp 
  r8*9/6 \times 9/6 {<gf gf'>8[( <af af'> <ef' ef'> <df df'> <bf bf'>]) } |
  s8*9/6 <bf, df>4.*9/6 <gf' bf>4*9/6 |
  \stemUp r8*9/6 \stemDown \times 9/6 {gf8[ af ef' df bf] } |
  << { <df df,>2. s4.} 
  %{ %} {s8*9/6 \stemUp <bf' df>4.*9/6 <gf' bf>4*9/6 } >> |

  \stemNeutral
  r8 <bf gf' bf>-- <bf gf' bf>-- <bf gf' bf>-- <bf gf' bf>--
  %{ %} <c af' c>-- <bf gf' bf>-- <df bf' df>-- <ef bf' ef>-- |
  s8*9 |
  \stemUp r8 \clef treble <bf df gf>--_( <bf df gf>-- <bf df gf>-- <bf df gf>--
  %{ %} <c ef af>-- <bf df gf>-- <df gf bf>-- <ef gf bf>--) |
  \stemDown <ef, ef,>2. s4. |

  \stemNeutral
  \ottava #1 <af df af'>2.--\arpeggio <af df af'>4.--\arpeggio |
  s8*9_\markup\whiteout\italic"diminuendo molto" |
  <f af df f>2.--\arpeggio <ff af bf df ff>4.--\arpeggio |
  s8*9 |

  <af df af'>2.--\arpeggio \ottava #0 <af, ef' af>4.--\arpeggio |
  s8*9 |
  <ef gf af df ef>2.--\arpeggio <af, ef' gf c>4.--\arpeggio |
  s8*9 |
  \myExplicitPageBreak
}
rhUp = {\rhUp \relative c'' \rhUpRed}
rhDown = {\rhDown \relative c \rhDownGreen}
lhUp = {\lhUp \relative c' \lhUpBlue }
lhDown= {\lhDown \relative c, \lhDownGrey }

\parallelMusic #'(rhUpRed rhDownGreen lhUpBlue lhDownGrey)
{
  \barNumberCheck#27
  \tempo"Un poco mosso" \newSpacingSection
  \stemUp
  <f af>2.( <af cf>4 df8 ) |
  s8*9 \pp|
  \slurDown \phrasingSlurDown \dynamicUp \stemNeutral  
  \clef bass df16\( af' df f\cu af df\)
  %{ %} \cl f,,\( c' f\cu af c f\) \cl af,,\( ff' af\cu cf ff af\) \cl |
  \clef bass \mergeDifferentlyDottedOn 
  df4. f af |

  <f, af>2.( <af cf>4 af8 ) |
  s8*9 |
  df,,,16\( af' df f\cu af df\) 
  %{ %} \cl f,,\( c' f\cu af c f\) \cl af,,\( ff' af\cu cf af' ff\) \cl |
  df,4. f af |

  <f df'>4(\< <af ef'>8 <df f>4. <f, df'>4 <df' f>8) |
  s8*9 |
  df,,16( af' df f af df f af f df af f af f df af df af) |
  s8*9 |

  <ef g>8\!( <df f> <bf df> <bf df>4.) r4. |
  s4. \slurUp\stemNeutral \cl g'8\( \cu\stemDown f df df8. bf\) |
  ef16( bf' ef g bf ef g ef bf g ef bf \stemDown ef, bf' ef g ef bf) |
  s8*9 |

  bf2.(\p c4 f8) |
  \stemDown s2. s4 af'16 f |
  \stemNeutral
  af16\(ef' gf bf\cu c gf'\)\cl gf,,\( df' gf bf\cu df gf\)\cl f,,\(\<c' f af\! c8\) |
  af4. gf \stemUp f \stemDown |

  bf,2.(\p c4 f8) |
  \stemDown s2. s4 af16 f |
  af,16\( ef' gf bf\cu c gf'\)\cl gf,,\( df' gf bf\cu df gf\)\cl f,,\(\< c' f af\! c8\) |
  af4. gf \stemUp f \stemDown |

  \barNumberCheck#33

  gf4.( ~ gf8*3/2[ f d ef] |
  s4. gf'16 gf, bf f' gf, bf d gf, bf ef gf, bf |
  ef,,16( bf' ef gf bf ef)  s2. |
  \stemUp ef4. \stemDown gf''8*3/2[ f d ef] |

  bf'2. af4.) |
  s8*9 |
  \clef treble \stemNeutral d16\( gf bf\cu bf gf' bf\)\cl 
  %{%} ef,,\( gf bf\cu bf gf' bf\)\cl c,,\( e af\cu c e af\)\cl |
  d4. ef af, |

  <f af>2.( <af cf>4 df8) |
  s8 \once\override TextScript #'outside-staff-priority = ##f 
  %{%} s1^\markup\italic"cresc." |
  \clef bass df,,,16\( af' df f\cu af df\)\cl
  %{%} af,\( c f af\cu c f\)\cl  cf,\( ff af\cu cf ff af\)\cl |
  df,4. f af |

  <f, af>2.( <af cf>4 af8) |
  s8*9 |
  df,,,16\( af' df f\cu af df\)\cl
  %{ %} af,\( c f af\cu c f\)\cl  cf,\( ff af\cu cf af' ff\)\cl |
  df,4. f af | 
  % Use flats so the reader can recognize this as d flat minor,
  %  the same as in the previous measure

}
rhUp = {\rhUp \relative c' \rhUpRed}
rhDown = {\rhDown \relative c' \rhDownGreen}
lhUp = {\lhUp \relative c, \lhUpBlue }
lhDown= {\lhDown \relative c, \lhDownGrey }

\parallelMusic #'(rhUpRed rhDownGreen lhUpBlue lhDownGrey)
{
  \barNumberCheck#37
  \tempo"En animant"
  \key cs \minor \mergeDifferentlyDottedOn \ottava #1
  cs4(       gs8)  e'4(      cs8)   gs'4(       e8)  |
  cs8. cs,16 gs' e e'8. e,16 cs' gs gs'8. gs,16 e' b |
  \key cs \minor \clef treble \stemUp
  cs16\( e gs b8.\) e,16\( gs b cs8.\)  gs16\( b cs e8.\)  |
  b4.^\markup\italic"più cresc." cs e |

  gs4.( fs2.) |
  s8*9 |
  \stemNeutral
  gs,16\( a cs\cu gs' cs a\)\cl fs,\( a cs\cu fs cs' a\)\cl fs,\( a cs\cu fs cs' a\)\cl |
  gs4. fs es |

  fs2.( a4 cs8) |
  s8*9 |
  fs,16\( a cs\cu fs cs' a\)\cl fs,\( a cs\cu fs cs' a\)\cl e,\( a cs e\cu cs' cs,\)\cl |
  e4. ds cs |

  \ottava #0
  fs,,2.( a4 cs8) |
  s8*9 |
  b,16\( ds fs\cu fs cs' a\)\cl a,\( cs e \cu fs cs' a\)\cl gs,\( cs e a\cu e' a\)\cl |
  b4. a gs |

  \ottava #1
  <cs e>8\( <b ds> <a cs> \times 3/2{<gs b> <fs a> ~} <fs a> <e gs> <ds fs>\) |
  s8*9 \f \ottava #0 |
  fs,,16^( cs' e fs a cs e fs e cs a fs) e( fs e cs a fs) |
  \mergeDifferentlyHeadedOn \mergeDifferentlyDottedOn fs2. ~ fs4. |

  <cs e>8\( <b ds> <a cs> <gs b> <fs a> <e gs>^~<e gs> <ds fs> <cs e> \) |
  \dimTextDim s2.\>a,,4.\! |
  \clef bass
  fs,16( cs' e fs a cs e cs a fs e cs) fs,( cs' fs, cs' fs, cs') |
  s8*9 |

}
rhUp = {\rhUp \relative c''' \rhUpRed}
rhDown = {\rhDown \relative c''' \rhDownGreen}
lhUp = {\lhUp \relative c' \lhUpBlue }
lhDown= {\lhDown \relative c' \lhDownGrey }

\parallelMusic #'(rhUpRed rhDownGreen lhUpBlue lhDownGrey)
{
  \barNumberCheck#43
  \tempo"Calmato" \key df \major \tieUp
  <df ef>2.( <ef gf>4 <ef gf bf>8) |
	      \slurDown gf4(\pp af8 bf4 df8 c4.) |
  \key df \major 
  af16( ef' af, ef' af, ef' af, ef' af, ef' af, ef' af, ef' af, ef' af, ef' |
  s8*9 |

  <df ef>2.( <ef gf>4 <ef gf bf>8) ~ |
  gf4( af8 bf4 df8 c4.) |
  af,16 ef' af, ef' af, ef' af, ef' af, ef' af, ef' af, ef' af, ef' af, ef') |
  s8*9 |

  <df gf bf>8( <af' c f> <gf bf ef> <gf bf>4. <gf af>) |
  s4. df8 bf df bf c ef |
  af,16( ef af ef' af, ef' af ef af ef' af, ef af ef af, ef' af, ef) |
  s8*9 |

  <df gf bf>8( <af' c f> <gf bf ef> <gf bf>4. <gf af>) |
  s4. df8 bf df bf c ef |
  af16( ef af ef' af, ef' af ef af ef' af, ef af ef af ef af ef) |
  s8*9 |

  \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn <ef'>2.( gf4 bf8) |
  \slurNeutral\stemDown
  ef'16 ef,( gf bf gf ef) r ef( gf bf gf ef) s4. |
  \clef treble \stemUp df'2. \stemNeutral c16_\( ef gf bf \cu c ef\) \cl |
  gf4_( af8 bf4 df8 c4.) |

  <ef,>2.( gf4 bf8) |
  \slurNeutral\stemDown
  ef'16 ef,( gf bf gf ef) r ef( gf bf gf ef) s4. |
  \stemUp df,2. \stemNeutral c16_\( ef gf bf \cu c ef\) \cl |
  gf4_( af8 bf4 df8 c4.) |

  \ottava #1 <ef>2.^\( ~ ef4. ~ |
  s8*9 |
  \phrasingSlurUp
  gf,16\( bf df\cu ef gf bf\)\cl gf,16\( bf df\cu ef gf c\)\cl gf,16\( bf df\cu ef gf bf\)\cl |
  gf'2.~gf4. |

  <ef>4. df ef\) \ottava #0 |
  s8*9 |
  gf,16\( a df\cu ef gf a\)\cl gf,16\( a df\cu ef gf cf\)\cl gf,16\( a df\cu ef gf a\)\cl |
  gf2.~gf4. |
  \myExplicitPageBreak

}
rhUp = {\rhUp \relative c' \rhUpRed}
rhDown = {\rhDown \relative c' \rhDownGreen}
lhUp = {\lhUp \relative c \lhUpBlue }
lhDown= {\lhDown \relative c' \lhDownGrey }

\parallelMusic #'(rhUpRed rhDownGreen lhUpBlue lhDownGrey)
{
  \barNumberCheck#51
  \tempo"a Tempo 1º" \newSpacingSection 
  \stemNeutral
  r4._\markup\dynamic"ppp" \ottava #1 <f af>4.\( f4. ~ |
  \stemDown \tieDown s8*9 |
  \stemUp 
  f16_\( af c f af c \cu\hideNotes af'4.\) \unHideNotes\cl r4. |
  f2._- f4._- |

  f8 <c ef> <df f> <c ef>2.\) ~ |
  s8*9 |
  f,,16( a c ef f a) r4.  r4.|
  f2._- f4._- |

  \stemUp
  <c ef>8\( <bf df> <c ef> \times 3/2 {<bf df> <df f>~} \times 3/2 {<df f> <bf df>~} |
  s4.  bf'2._~ |
  f,16( af bf df f af) r4.  r4.|
  f2._- f4._- |

  \tieUp <bf df>8 <af c> <bf df> <af c>2.\) |
  bf8 s1 |
  ef,16( gf af c ef gf) r4.  r4.|
  ef2._- ef4._- |

  \barNumberCheck#55

  \ottava #0
  r8 <gf bf>\( <af c> bf ef bf af bf af ~ |
  s4. gf f ~ |
  df,16 ef gf bf df ef r4. <c, ef f af c>4.\arpeggio |
  \slurDown df2.( c4.) |

  af8 <ef gf> <f af> <ef gf>4. <f a,>\) ~ |
  f8 s1 |
  \clef bass
  c,16 gf' bf c ef gf bf4. <c, ef> |
  c,2.( f4.) |

  f8\( <df f> <ef gf> f bf f ef f ef ~ |
  s4. df df |
  \clef treble
  af16 bf df f af bf r4. <gf, bf df ef>4.\arpeggio |
  af2.( gf4.) |

  ef8 <bf df> <c ef> <bf df>4. <af c>4. |
  s8*9 |
  f16( af bf df f af) r4. \clef bass <gf, c>4. |
  f2. \times 3/2{ef8 af,} |

  \barNumberCheck#59

  \ottava #0
  r8 <f, af>4 \stemNeutral <f'' af>4. <df f>\) ~ |
  s8*9 |
  \stemNeutral\tieUp \once\override Beam #'positions = #'(3 . 3.5)
  <df, af'>8[ \cu <f' af> \cl \clef treble <f' af>]~<f af>2. |
  s4. cf'2._> |

  \stemUp <df f>8( ef f ef2.) ~ |
  r8 <gf, bf>4~<gf bf>2. |
  \clef bass \stemUp r8 <df, gf bf df>4 ~ <df gf bf df>2. |
  <gf, df'>2. s4. |

  ef8( <df df,> <ef ef,> <af f af,>4. <f df f,>) ~|
  r8 af4 s2. |
  \slurUp r8 <f af>4 <df' f>4. df |
  << {af2. s4.} {s4. cf'2.} >> |

  f8( ef f ef4. df)  |
  r8 <f bf>4~<f bf>2. |
  r8 ef4~ef4. df4. |
  << {bf,2. s4.} {s8 <f' bf>4~<f bf>2.} >> |

  r8 df,( ef <f bf>4. <f df af>4.) |
  \slurDown s8 af,4( df4.) s |
  s8*9 |
  f,2.~f4. |

  r8 gf( af <bf df>4. <bf gf df>4.) |
  s8 <df bf>4( gf4.) s |
  s8*9 |
  ef2.*1/2 ef'4.^( ef') |

  r8 bf( c <c f>4. <af gf c,>4.) |
  s8 <gf c,>4( af4.) s |
  \times 3/2 {af,8\( ef'8}\clef treble \stemNeutral af''4. \clef bass af,,\) |
  af,,2. s4. |

}
rhUp = {\rhUp \relative c''' \rhUpRed}
rhDown = {\rhDown \relative c'' \rhDownGreen}
lhUp = {\lhUp \relative c' \lhUpBlue }
lhDown= {\lhDown \relative c' \lhDownGrey }

\parallelMusic #'(rhUpRed rhDownGreen lhUpBlue lhDownGrey)
{
  \barNumberCheck#66
  r4\ppp^\markup\italic"morendo jusqu'à la fin" s8 r4 s8 r4 s8 |
  s8*9 |
  \slurDown\phrasingSlurDown\stemNeutral
  df16\( af' df f\cu af df\)\cl f,,\( c' f\cu af c f\)\cl df,,\( af' df f\cu af df\)\cl |
  df4. f df |

  r4 s8 cf4.( df) |
  s4 s8 af4. ff |
  f,,16\( c'f \cu af c f\)\cl\stemUp af,,\(ff' af cf ff gf af4.\) |
  f4. af2. |

  r4 s8 r4 s8 r4 s8 |
  s8*9 |
  \stemNeutral
  df,,16\( af' df f\cu af df\)\cl f,,\( c' f\cu af c f\)\cl df,,\( af' df f\cu af df\)\cl |
  df4. f df |

  r4 s8 \ottava #1 cf'4.( df) |
  s4 s8 af'2. |
  f,,16\( c' f\cu af c f\)\cl\stemUp\clef treble af,,\(cf ff af cf ff~ff4.\) |
  f4. af2. |

  cf4.( df ff) |
  af2. s4. |
  af,,16\( cf ff af cf ff~ff4.\) \clef bass af,,,4. |
  af2. s4. |

  s8*9 |
  \tieNeutral <f' af>2. ~ <f af>4. |
  df,16\( af' df f! af df \clef treble f8 af df f af df\) |
  df,,2. s4. |
  s8*9 |
  <af, df f af>2.\arpeggio r4. |
  <df,, af'df f>2.\arpeggio r4. |
  s8*9 |

}
rhUp = {\rhUp \relative c'' \rhUpRed}
rhDown = {\rhDown \relative c'' \rhDownGreen}
lhUp = {\lhUp \relative c, \lhUpBlue }
lhDown= {\lhDown \relative c, \lhDownGrey }

\score { 
  \new PianoStaff
  <<
    \override Score.SpacingSpanner #'shortest-duration-space = #1.7
    % The 'piano' accidental style has extraNaturals false by default
    %\set PianoStaff.extraNatural = ##f
    #(set-accidental-style 'piano 'Score)
    \set PianoStaff.printKeyCancellation = ##f
    \override PianoStaff.DynamicLineSpanner #'staff-padding = #2
    \override PianoStaff.DynamicText #'self-alignment-X = #LEFT
    \new Staff = "upper" << 
      \key df \major
      \time 9/8
      \override PianoStaff.PhrasingSlur #'height-limit = #5 
      \new Voice = "red" {
	%{colorize } \override NoteHead #'color = #red %}
	\rhUp
      }
      \new Voice = "green" {
	%{colorize } \override NoteHead #'color = #green %}
	\rhDown
      }
      \new Voice = "dynamics" {
      }
    >>
    \new Staff = "lower" << 
      \key df \major
      \time 9/8
      \new Voice = "blue" {
	%{colorize } \override NoteHead #'color = #blue %}
	\lhUp
      }
      \new Voice = "grey" {
	%{colorize } \override NoteHead #'color = #grey %}
	\lhDown
	\bar "|."
      }
      \new Voice = "pedal" {
	\set Staff.pedalSustainStyle = #'bracket
      }
    >>
  >>
  \layout {
    \context {
      \Score
      %\consists "Span_arpeggio_engraver"
    }
  }
  \midi {
    %% Remove the dynamics from the midi output
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}


