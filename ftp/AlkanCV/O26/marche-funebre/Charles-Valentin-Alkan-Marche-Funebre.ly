\version "2.18.2"
\language "english"
\header {
    title = "Marche Funebre"
    subtitle = ""
    composer = "Charles Valentin Alkan"
    mutopiacomposer = "AlkanCV"
    mutopiainstrument = "piano"
    source = "F. Lucca, ca.1847"
    style = "Romatic"
    license = "Creative Commons Attribution-ShareAlike 4.0"
    maintainer = "Anonymous"
    opus = "Op. 26"
    maintainer="github.com/thomasmorgan/LilyLib"
}

            \layout {
              \context {
                \Staff
                \RemoveEmptyStaves
              }
            }
            \layout {
              \context {
                \Score
                \consists "Span_arpeggio_engraver"
              }
            }
        \score { <<
<< \new Staff {
\set Score.connectArpeggios = ##t
\clef treble
\key ef \minor
\time 4/4
\tempo 4 = 62
\grace s16. \repeat volta 2{r1 r1 r1 r1 r1 r1 r1 r1} 
<<
{ cf''4. af'8 f'4 f'8. f'16 af'8 gf'8 f'8. ef'16 f'2 gf'4 af'8. bf'16 cf''4. af'8 f'8 af'8 cf''8. ef''16 df''2 bf'4 cf''8. df''16 ef''4. cf''8 bf'4 af'4 bf'2 bf'4 cf''8. df''16 ef''4. cf''8 bf'4 af'4 gf'2 }
\\
 { <d' f' af' cf''>4.\rfz <d' f' af'>8 <d' f'>4 <d' f'>8. <d' f'>16 <c' ef'>4 <a c'>8. <a c'>16 <bf d'>2 <bf ef' gf'>4\f <bf ef' gf'>8. <bf ef' gf'>16 <cf' ef' gf'>2 <df' f'>4 <df' f' af'>8. <df' f' af'>16 <df' f' af'>2 <ef' gf' bf'>4 <ef' gf' bf'>8. <ef' gf' bf'>16 <ef' gf' bf'>4. <ef' gf'>8 <df' gf'>4 <df' f'>4 <d' f' af'>2-> <ef' gf' bf'>4\p <ef' gf' bf'>8. <ef' gf' bf'>16 <ef' gf' bf'>4. <ef' af'>8 gf'4 <df' f'>4 df'2 }
>> \break
 \key fs \minor
\grace s16.<fs' d''>2\p <e' cs'' fs'>2 <ds' c'' fs'>2 <e' cs'' fs'>2 <d' b' fs'>2 <cs' a' fs'>2 <c' gs' fs'>2 <cs' a' fs'>2 <a' fs'' cs''>2-> <gs' e'' cs''>2 <fs' ds'' bs'>2 <e' cs'' a'>2 <fs' ds'' a'>2 <e' cs'' gs'>2 <ds' c'' fs'>2\break
 
<<
{ d''4. b'8 gs'4 gs'8. gs'16 b'8 a'8 gs'8. fs'16 gs'2 a'4 b'8. cs''16 d''4. b'8 gs'8 b'8 cs''8. d''16 e''2 cs''4 d''8. e''16 fs''4. d''8 b'8 d''8 fs''8. a''16 gs''2 }
\\
 { <es' gs' b' d''>4.\rfz <es' gs' b'>8 <es' gs' cs'>4 <es' gs' cs'>8. <es' gs' cs'>16 <d' fs'>4 <b d'>8. <b d'>16 <cs' es' gs'>2 <cs' fs' a'>4\f <cs' fs' a'>8. <cs' fs' a'>16 <d' fs' a'>2 <e' gs'>4 <e' gs' b'>8. <e' gs' b'>16 <e' gs' b'>2 <a' cs'' e'>4\cresc <a' cs'' e'>8.\! <a' cs'' e'>16 <fs' a' cs''>2 <gs' b'>4 <gs' b' cs''>8. <b' cs'' fs''>16 <gs' b' d'' gs''>2 }
>>
 <af'' ef'' c'' af'>4\p <af'' ef'' c'' af'>8. <af'' ef'' c'' af'>16 <ef'' bf' g' ef'>2 <gf'' df'' bf' gf'>4 <gf'' df'' bf' gf'>8. <gf'' df'' bf' gf'>16 <df'' af' f' df'>2 <e'' b' gs' e'>4 <e'' b' gs' e'>8. <e'' b' gs' e'>16 <b' fs' ds' b a>2 \clef bass 
<<
{ e'4 e'8. e'16 e'8 ds'8 cs'8 b8 e'4 fs'8. gs'16 a'2 e'4 e'8. e'16 e'8 ds'8 cs'8 b8 e'4 fs'8. gs'16 a'2 r1 r1 }
\\
 { <e' b gs e>4 <e' b gs e>8. <e' b gs e>16 <fs a b>4 <e a>8 <ds a>8 <e gs b e'>4 <fs b e'>8. <gs b e' gs'>16 <a b fs' a'>2 <e' b gs e>4 <e' b gs e>8. <e' b gs e>16 <fs b>4 <e b>8 <ds b>8 <e gs b e'>4 <fs b e'>8. <gs b e' gs'>16 <a b fs' a'>2 }
>>
 \clef treble \key ef \minor
 \grace s16.r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 \key ef \major

<<
{ g'4\f af'4 g'4 af'8 bf'8 g'4 af'4 g'4 f'4 g'4 af'4 g'4 af'8 bf'8 g'4 af'4 g'2 }
\\
 { ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 }
>>
 
<<
{ g'4\f bf'4 ef''4 bf'8 af'8 g'4 bf'4 ef''4 bf'4 g'4 bf'4 ef''4 bf'8 af'8 g'4 af'8 bf'8 g'4. r8 }
\\
 { ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 }
>>
 
<<
{ c''4\ff g'4 ef''4 c''8 d''8 c''4 g'4 g'2 g'4 c''8 d''8 ef''4 c''8 d''8 c''4 g'4 g'2\> }
\\
 { ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 }
>>
 
<<
{ g'4\p af'4 g'4 af'8 bf'8 g'4 af'4 g'4 f'4 g'4 af'4 g'4 af'8 bf'8 g'4 f'8 ef'8 g'2 }
\\
 { ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 }
>>
 
<<
{ g'4\ff bf'4 ef''4 c''8 d''8 c''4 bf'8 af'8 g'2 g'4 c''8 d''8 ef''4 c''8 d''8 ef''4 g'8 f'8 g'2\> }
\\
 { ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 }
>>
 
<<
{ g'4\pp af'4 g'4 af'8 bf'8 g'4 af'4 g'4 f'4 g'4 af'4 g'4 af'8 bf'8 g'4 f'8 ef'8 g'2 }
\\
 { ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 ef'8 d'8 c'8 bf8 }
>>
 \key ef \minor
r1 r1 r1 r1 r1 r1 r1 r1 
<<
{ cf''4. af'8 f'4 f'8. f'16 af'8 gf'8 f'8. ef'16 f'2 gf'4 af'8. bf'16 cf''4. af'8 f'8 af'8 cf''8. ef''16 df''2 bf'4 cf''8. df''16 ef''4. cf''8 af'8 cf''8 ef''8. gf''16 f''2 }
\\
 { <d' f' af' cf'' bf>4.\rfz <d' f' af' bf>8 <d' f' bf>4 <d' f' bf>8. <d' f' bf>16 <bf cf' ef'>4 <af cf'>8. <af cf'>16 <af bf d'>2 <bf ef' gf'>4\f <bf ef' gf'>8. <bf ef' gf'>16 <cf' ef' gf'>2 <df' f'>4 <df' f' af'>8. <df' f' af'>16 <df' f' af'>2 <ef' gf' bf'>4\cresc <ef' gf' bf'>8.\! <ef' gf' bf'>16 <ef' gf' bf'>2 <f' af'>4 <f' af' cf''>8. <f' af' cf'' ef''>16 <f' af' cf'' df''>2 }
>>
 <gf'' df'' bf' gf'>4\p <gf'' df'' bf' gf'>8. <gf'' df'' bf' gf'>16 <df'' af' f' df'>2 <f'' c'' a' f'>4 <f'' c'' a' f'>8. <f'' c'' a' f'>16 <c'' g' e' c'>2 <e'' b' gs' e'>4 <e'' b' gs' e'>8. <e'' b' gs' e'>16 <b' fs' ds' b a>2 \clef bass 
<<
{ \key e \major
\key e \major
e'4 e'8. e'16 e'8 ds'8 cs'8 b8 e'4 fs'8. gs'16 a'2 e'4 e'8. e'16 e'8 ds'8 \grace {ds'16} cs'8. b16 b8 e'8 fs'8 gs'8 a'2 r1 r1 }
\\
 { <e' b gs e>4\p <e' b gs e>8. <e' b gs e>16 <fs a b>4 <e a>8 <ds a>8 <e gs b e'>4 <fs b e'>8. <gs b e' gs'>16 <a b fs' a'>2 <e' b gs e>4 <e' b gs e>8. <e' b gs e>16 <fs b>2 <e b>4 <fs b e'>8 <gs b e'>8 <a b fs'>2 }
>>
 \key ef \minor
\grace s16.r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1\break
 \key ef \major
\clef bass 
<<
{ <ef g bf>2\mf <ef g bf>4_\markup{\italic { dim. }} <ef af bf>4 <ef g bf>2_\markup{\italic { rall. }} <ef g bf>2\pp }
\\
 { g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 }
>>
 <ef g bf>1\arpeggio\ppp} >>
<< \new Staff {

\clef bass
\key ef \minor
\time 4/4

<<
{ <ef' cf'>2^\markup{Play first repeat one octave lower and \bold {\italic {pp}}, second as written and \bold {\italic {p}}} <df' bf>2 <c' a>2 <df' bf>2 <cf' af>2 <bf gf>2 <a f>2 <bf gf>2 <gf' ef'>2-> <f' df'>2 <ef' c'>2 <df' bf>2 <ef' c'>2 <df' bf>2 <c' a>2 bf2 }
\\
 { \grace {d,32 ef,32 ef32} \stemDown<ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. <ef ef,>8-. <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. <ef ef,>8-. <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. <ef ef,>8-. <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. <ef ef,>8-. <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {e,32 f,32 f32} <f f,>8-. <f f,>8-. <f f,>8-. r8 \grace {e,32 f,32 f32} <f f,>8-. r8 \grace {e,32 f,32 f32} <f f,>8-. r8 \grace {f,32 gf,32 gf32} <gf gf,>8-. <gf gf,>8-. <gf gf,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {e,32 f,32 f32} <f f,>8-. <f f,>8-. <f f,>8-. r8 \grace {e,32 f,32 f32} <f f,>8-. <f f,>8-. <f f,>8-. r8 \grace {a,32 bf,32 bf32} bf,8-. bf,8-. bf,8-. r8 }
>>
\break
 
<<
{ cf'4. af8 f4 f8. f16 af8 gf8 f8. ef16 f2 r2 af,4 cf8. ef16 r2 bf,4 df8. f16 r2.. cf'8 bf4 af4 bf2 bf4 cf'8. df'16 r2 df'4 cf'4 bf2 }
\\
 { <d f af cf' bf,>4. <d f af bf,>8 <d f bf,>4 <d f bf,>8. <d f>16 <c ef bf,>4 <c bf,>8. <c bf,>16 <bf, d>2 <ef gf>4 <ef gf>8. <ef gf>16 <ef gf>2 <df f af cf'>4 <df f af cf'>8. <df f af cf'>16 <f af>2 <ef gf bf df'>4 <ef gf bf df'>8. <ef gf bf df'>16 <ef gf bf cf>4. <ef gf cf>8 <df gf>4 <df f>4 <d f af>2-> <ef gf bf>4 <ef gf bf>8. <ef gf bf>16 <ef gf bf cf>4. <cf ef af>8 <df gf>4 <df f>4 <gf, df>2 }
>>
 \key fs \minor
\grace {f,32 fs,32 fs32} \stemDown<fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. <fs fs,>8-. <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. <fs fs,>8-. <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. <fs fs,>8-. <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. <fs fs,>8-. <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {g,32 gs,32 gs32} <gs gs,>8-. <gs gs,>8-. <gs gs,>8-. r8 \grace {g,32 gs,32 gs32} <gs gs,>8-. r8 \grace {g,32 gs,32 gs32} <gs gs,>8-. r8 \grace {gs,32 a,32 a32} <a a,>8-. <a a,>8-. <a a,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {f,32 fs,32 fs32} <fs fs,>8-. r8 \grace {g,32 gs,32 gs32} <gs gs,>8-. <gs gs,>8-. <gs gs,>8-. r8 \time 2/4 \grace {g,32 gs,32 gs32} <gs gs,>8-. <gs gs,>8-. <gs gs,>8-. r8\time 4/4  
<<
{ d'4. b8 gs4 gs8. gs16 b8 a8 gs8. fs16 gs2 r2 b,4 d8. fs16 r2 cs4 e8. gs16 r2 d4 fs8. a16 r2 e8^\> gs8 b8. d'16\! }
\\
 { <es gs b d' cs>4. <es gs b cs>8 <es gs cs>4 <es gs cs>8. <es gs>16 <fs cs d>4 <cs d>8. <cs d>16 <cs es>2 <fs a cs fs,>4 <fs a cs>8. <fs a cs>16 <fs a>2 <e gs b d'>4 <e gs b d'>8. <e gs b d'>16 <gs b>2 <fs a cs' a,>4 <fs a cs'>8. <fs a cs'>16 <a cs'>2 <gs b d' fs'>4 <gs b d' fs'>8. <gs b d' fs'>16 <e gs b d'>2 }
>>
 <ef' c' af ef>4 <ef' c' af ef>8. <ef' c' af ef>16 \grace {d32 ef32 f32} \afterGrace ef2\trill {d32 ef32} <df' bf gf df>4 <df' bf gf df>8. <df' bf gf df>16 \grace {c32 df32 ef32} \afterGrace df2\trill {c32 df32} <b gs e b,>4 <b gs e b,>8. <b gs e b,>16 \grace {as,32 b,32 cs32} \afterGrace b,2\trill {as,32 b,32} 
<<
{ <b,, b,>4 <b,, b,>8. <b,, b,>16 \grace {as,32 b,32 cs32} \afterGrace b,2\trill {as,32 b,32} <e, b,>4 <e, b,>8. <e, b,>16 b,2 b,4 b,8. b,16 \grace {as,32 b,32 cs32} \afterGrace b,2\trill {as,32 b,32} b,4 b,8. b,16 b,2 }
\\
 { r1 r2 e,8 ds,8 \grace {ds,16} cs,8 b,,8 b,,8 e,8 fs,8 gs,8 a,2 a,8 gs,8 fs,8 e,8 e,8 ds,8 cs,8. b,,16 b,,8 a,,8 gs,,8 fs,,8 e,,4 ds,,4 d,,1 }
>>
\break
 \key ef \minor

<<
{ <ef cf>2^\pp <df bf,>2 <c a,>2 <df bf,>2 <cf af,>2 <bf, gf,>2 <a, f,>2 <bf, gf,>2 <gf ef>2-> <ef cf>2 <af f>2-> \grace {<gf ef>16} <f d>2 <bf gf>4.-> <bf gf>8 <bf gf>4 <af f>4 <gf ef>4 <f d>4 <d cf>2-> <bf gf>4.^\markup{\italic {dim.}} <bf gf>8 <bf gf>4^\> <af f>4 <gf ef>4 <f d>4 ef2\pp <d af cf'>2-> ef2 <d af cf'>2-> ef2 <d af cf'>1-> }
\\
 { \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 \grace {d,,32^\markup{\italic{poco cresc.}} ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {g,,32 af,,32 af,32} <af, af,,>8-. <af, af,,>8-. <af, af,,>8-. r8 \grace {e,,32 f,,32 f,32} <f, f,,>8-. r8 \grace {e,,32 f,,32 f,32} <f, f,,>8-. r8 \grace {a,,32 bf,,32 bf,32} <bf, bf,,>8-. <bf, bf,,>8-. <bf, bf,,>8-. r8 \grace {f,,32 gf,,32 gf,32} <gf, gf,,>8-. r8 \grace {f,,32 gf,,32 gf,32} <gf, gf,,>8-. r8 \grace {bf,,32 cf,32 cf32} <cf cf,>8-. <cf cf,>8-. <cf cf,>8-. r8 \grace {a,,32 bf,,32 bf,32} <bf, bf,,>8-. r8 \grace {a,,32 bf,,32 bf,32} <bf, bf,,>8-. r8 \grace {g,,32 af,,32 af,32} <af, af,,>8-. <af, af,,>8-. <af, af,,>8-. r8 \grace {f,,32 gf,,32 gf,32} <gf, gf,,>8-. r8 \grace {f,,32 gf,,32 gf,32} <gf, gf,,>8-. r8 \grace {bf,,32 cf,32 cf32} <cf cf,>8-. <cf cf,>8-. r4 \grace {a,,32 bf,,32 bf,32} <bf, bf,,>8-. <bf, bf,,>8-. r4 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 r2 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 r2 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 r1\break
\pageBreak

 }
>>
 \repeat volta 2{\key ef \major

<<
{ g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 }
\\
 { ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> }
>>
}\break
 \repeat volta 2{
<<
{ g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 }
\\
 { ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> }
>>
}\break
 
<<
{ g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 }
\\
 { ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> }
>>
\break
 
<<
{ g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 }
\\
 { ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> }
>>
\break
 
<<
{ g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 }
\\
 { ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> }
>>
\break
 
<<
{ g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 g8 f8 ef8 d8 }
\\
 { ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> ef,2-> }
>>
\pageBreak

 \key ef \minor

<<
{ <ef' cf'>2^\markup{Play left hand one octave lower} <df' bf>2 <c' a>2 <df' bf>2 <cf' af>2 <bf gf>2 <a f>2 <bf gf>2 <gf' ef'>2-> <f' df'>2 <ef' c'>2 <df' bf>2 <ef' c'>2 <df' bf>2 <c' a>2 bf2 }
\\
 { \grace {d,32^\p ef,32 ef32} \stemDown<ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. <ef ef,>8-. <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. <ef ef,>8-. <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. <ef ef,>8-. <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. <ef ef,>8-. <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {e,32 f,32 f32} <f f,>8-. <f f,>8-. <f f,>8-. r8 \grace {e,32 f,32 f32} <f f,>8-. r8 \grace {e,32 f,32 f32} <f f,>8-. r8 \grace {f,32 gf,32 gf32} <gf gf,>8-. <gf gf,>8-. <gf gf,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {d,32 ef,32 ef32} <ef ef,>8-. r8 \grace {e,32 f,32 f32} <f f,>8-. <f f,>8-. <f f,>8-. r8 \grace {e,32 f,32 f32} <f f,>8-. <f f,>8-. <f f,>8-. r8 \grace {a,32 bf,32 bf32} bf,8-. bf,8-. bf,8-. r8 }
>>
\break
 
<<
{ cf'4. af8 f4 f8. f16 af8 gf8 f8. ef16 f2 r2 af,4 cf8. ef16 r2 bf,8 df8 f8. af16 r2 cf4 ef8. gf16 r2 df8^\< f8 af8. cf'16\! }
\\
 { <d f af cf' bf,>4. <d f af bf,>8 <d f bf,>4 <d f bf,>8. <d f bf,>16 <c ef bf,>4 <c bf,>8. <c bf,>16 <bf, d>2 <ef gf bf, ef,>4 <ef gf bf,>8. <ef gf bf,>16 <ef gf>2 <df f af cf' f,>4 <df f af cf'>8. <df f af cf'>16 <f af df>2 <ef gf bf df' gf,>4 <ef gf bf df'>8. <ef gf bf df'>16 <ef gf bf>2 <f af cf' ef' af,>4 <f af cf' ef'>8. <f af cf' ef'>16 <af cf' f df'>2 }
>>
 <df' bf gf df>4 <df' bf gf df>8. <df' bf gf df>16 \grace {c32 df32 ef32} \afterGrace df2\trill {c32 df32} <c' a f c>4 <c' a f c>8. <c' a f c>16 \grace {b,32 c32 d32} \afterGrace c2\trill {b,32 c32} <b gs e b,>4 <b gs e b,>8. <b gs e b,>16 \grace {as,32 b,32 cs32} \afterGrace b,2\trill {as,32 b,32} 
<<
{ \key e \major
<b,, b,>4 <b,, b,>8. <b,, b,>16 \grace {as,32 b,32 cs32} \afterGrace b,2\trill {as,32 b,32} <e, b,>4 <e, b,>8. <e, b,>16 b,2 b,4 b,8. b,16 a,2 b,4 b,8. b,16 b,2 }
\\
 { \key e \major
r1 r2 e,8 ds,8 \grace {ds,16} cs,8. b,,16 b,,8 e,8 fs,8 gs,8 e8 ds8 \grace {ds16} cs8. b,16 a,8 gs,8 fs,8 e,8 e,8 ds,8 \grace {ds,16} cs,8. b,,16 b,,8 a,,8 gs,,8 fs,,8 e,,4 ds,,4 d,,1 }
>>
\break
 \key ef \minor

<<
{ <ef cf>2^\pp <df bf,>2 <c a,>2 <df bf,>2 <cf af,>2 <bf, gf,>2 <a, f,>2 <bf, gf,>2 <gf ef>2-> <ef cf>2 <af f>2-> \grace {<gf ef>16} <f d>2 <bf gf>4.-> <bf gf>8 <bf gf>4 <af f>4 <gf ef>4 <f d>4 <c ef>2 <bf gf>4.^\pp <bf gf>8 <bf gf>4 <af f>4 r2\fermata <gf ef>4 <f d>4 r2\fermata ef2^\ppp <d af cf'>2-> ef2 <d af cf'>2-> ef2 <d af cf'>2-> <d af cf'>2->_\markup{\italic { dim. }} <d af cf'>1->_\markup{\italic { dim. }} }
\\
 { \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {g,,32 af,,32 af,32} <af, af,,>8-. <af, af,,>8-. <af, af,,>8-. r8 \grace {e,,32 f,,32 f,32} <f, f,,>8-. r8 \grace {e,,32 f,,32 f,32} <f, f,,>8-. r8 \grace {a,,32 bf,,32 bf,32} <bf, bf,,>8-. <bf, bf,,>8-. <bf, bf,,>8-. r8 \grace {f,,32 gf,,32 gf,32} <gf, gf,,>8-. r8 \grace {f,,32 gf,,32 gf,32} <gf, gf,,>8-. r8 \grace {bf,,32 cf,32 cf32} <cf cf,>8-. <cf cf,>8-. <cf cf,>8-. r8 \grace {a,,32 bf,,32 bf,32} <bf, bf,,>8-. r8 \grace {a,,32 bf,,32 bf,32} <bf, bf,,>8-. r8 \grace {g,,32 af,,32 af,32} <af, af,,>8-. <af, af,,>8-. <af, af,,>8-. r8 \grace {f,,32 gf,,32 gf,32} <gf, gf,,>8-. r8 \grace {f,,32 gf,,32 gf,32} <gf, gf,,>8-. r8 \grace {bf,,32 cf,32 cf32} <cf cf,>8-. <cf cf,>8-. r4 r2 \grace {a,,32 bf,,32 bf,32} <bf, bf,,>8-. <bf, bf,,>8-. r4 r2 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 r2 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. <ef, ef,,>8-. <ef, ef,,>8-. r8 r2 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 \grace {d,,32 ef,,32 ef,32} <ef, ef,,>8-. r8 r1 r1 }
>>
 \key ef \major

<<
{ ef8 d8 c8 bf,8 }
\\
 { <ef, bf,>2 }
>>
 
<<
{ ef8 d8 c8 bf,8 }
\\
 { <ef, bf,>2 }
>>
 
<<
{ ef8 d8 c8 bf,8 }
\\
 { <ef, bf,>2 }
>>
 
<<
{ ef8 d8 c8 bf,8 }
\\
 { <ef, bf,>2 }
>>
 <ef,, bf,, ef, bf,>1\arpeggio} >>
>>
  \layout {
 \context {
 \Score
 \override SpacingSpanner.common-shortest-duration =
 #(ly:make-moment 1/14)
 }
 }
 }
 \midi {
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}