\version "2.18.2"
\language "english"
\header {
    title = "Marche Funebre"
    subtitle = ""
    composer = "Charles Valentin Alkan"
    date = "1846"
    mutopiacomposer = "AlkanCV"
    mutopiainstrument = "piano"
    maintainer = "Thomas Morgan"
    maintainerEmail = "thomas.j.h.morgan@gmail.com"
    source = "F. Lucca, 1847"
    style = "Romantic"
    license = "Creative Commons Attribution-ShareAlike 4.0"
    maintainer = "Anonymous"
    opus = "Op. 26"
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
\new PianoStaff <<
<< \new Staff = "treble" \with {

}{

\clef bass
\key ef \minor
\time 4/4
\tempo "Moderato" 4 = 126 \grace s8. <cf ef>1(\pp |
<bf, df>1 |
<a, c>1 |
<bf, df>1) |
<af, cf>1( |
<gf, bf,>1 |
<f, a,>1 |
<gf, bf,>1) |
<ef gf>1(-> |
<df f>1 |
<c ef>1 |
<bf, df>1) |
<c ef>1( |
<bf, df>1 |
<a, c>1 |
bf,1) |
\clef treble \grace s8. <cf' ef'>1(->\p |
<bf df'>1 |
<a c'>1 |
<bf df'>1) |
<af cf'>1( |
<gf bf>1 |
<f a>1 |
<gf bf>1) |
<ef' gf'>1(-> |
<df' f'>1 |
<c' ef'>1 |
<bf df'>1) |
<c' ef'>1( |
<bf df'>1 |
<a c'>1 |
bf1) \bar "|." %{ bar %}
<d' f' af' cf''>2.\rfz <d' f' af'>4_\markup{\italic{molto sostenuto}} |
<d' f'>2 <d' f'>4. <d' f'>8 |

<<
{ af'4( gf'4) }
\\
{ <c' ef'>2 }
>>
<a c' f'>4. <a c' ef'>8 |
<bf d' f'>1 |

<<
{ <bf ef' gf'>2(\f <bf ef' gf' af'>4. <bf ef' gf' bf'>8 |
cf''2. af'4) }
\\
{ \omit r1 |
<cf' ef' gf'>1 }
>>
|

<<
{ f'4( af'4 <df' f' af' cf''>4. <df' f' af' ef''>8) }
\\
{ <df' f'>2 \omit r2 }
>>
|
<df' f' af' df''>1 |
<ef' gf' bf'>2 <ef' gf' bf' cf''>4. <ef' gf' bf' df''>8 |
<ef' gf' bf' ef''>2. <ef' gf' cf''>4 |
<df' gf' bf'>2 <df' f' af'>2 |
<d' f' af' bf'>1-> |
<ef' gf' bf'>2(\p <ef' gf' bf' cf''>4. <ef' gf' bf' df''>8 |
<ef' gf' bf' ef''>2. <ef' af' cf''>4) |
<gf' bf'>2 <df' f' af'>2 |
<df' gf'>1 |
 \grace s8.<fs' d''>1(\p |
<e' fs' cs''>1 |
<ds' fs' c''>1 |
<e' fs' cs''>1) |
<d' fs' b'>1( |
<cs' fs' a'>1 |
<c' fs' gs'>1 |
<cs' fs' a'>1) |
<a' cs'' fs''>1(-> |
<gs' cs'' e''>1 |
<fs' bs' ds''>1 |
<e' a' cs''>1) |
<fs' a' ds''>1( |
<e' gs' cs''>1 |
<ds' fs' c''>1) \bar "|." %{ bar %}
\break
<es' gs' b' d''>2.\rfz <es' gs' b'>4_\markup{\italic{molto sostenuto}} |
<cs' es' gs'>2 <cs' es' gs'>4. <cs' es' gs'>8 |

<<
{ b'4( a'4) }
\\
{ <d' fs'>2 }
>>
<b d' gs'>4. <b d' fs'>8 |
<cs' es' gs'>1 |

<<
{ <cs' fs' a'>2(\f <cs' fs' a' b'>4. <cs' fs' a' cs''>8 |
d''2. b'4) }
\\
{ \omit r1 |
<d' fs' a'>1 }
>>
|

<<
{ gs'4( b'4 <e' gs' b' cs''>4. <e' gs' b' d''>8) }
\\
{ <e' gs'>2 \omit r2 }
>>
|
<e' gs' b' e''>1 |
<e' a' cs''>2_\markup{\italic{cresc.}} <e' a' cs'' d''>4. <e' a' cs'' e''>8 |
<fs' a' cs'' fs''>2. d''4 |

<<
{ b'4 d''4 }
\\
{ <gs' b'>2 }
>>
<gs' b' d'' fs''>4. <b' d'' fs'' a''>8 |
<gs' b' d'' gs''>1 |
<af' c'' ef'' af''>2\p <af' c'' ef'' af''>4. <af' c'' ef'' af''>8 |
<ef' g' bf' ef''>1 |
<gf' bf' df'' gf''>2 <gf' bf' df'' gf''>4. <gf' bf' df'' gf''>8 |
<df' f' af' df''>1 |
<e' gs' b' e''>2 <e' gs' b' e''>4. <e' gs' b' e''>8 |
<a b ds' fs' b'>1 |
\clef bass <e gs b e'>2_\markup{\italic{sempre \dynamic{p} e sostenuto}} <e gs b e'>4. <e gs b e'>8 |

<<
{ e'4( ds'4) cs'4 b4 }
\\
{ <fs a b>2 <e a>4 <ds a>4 }
>>
|
<e gs b e'>2 <fs b e' fs'>4. <gs b e' gs'>8 |
<a b fs' a'>1 |
<e gs b e'>2 <e gs b e'>4. <e gs b e'>8 |

<<
{ e'4( ds'4) cs'4 b4 }
\\
{ <fs b>2 <e b>4 ds4 }
>>
|
<e b e'>2 <fs b e' fs'>4. <gs b e' gs'>8 |
<a b fs' a'>1~ |
<a b fs' a'>1 |
r1 |
r1 |
<cf ef>1(\pp |
<bf, df>1 |
<a, c>1 |
<bf, df>1) |
<af, cf>1( |
<gf, bf,>1 |
<f, a,>1 |
<gf, bf,>1) |
<ef gf>1(-> |
<cf ef>1) |
\afterGrace {<f af>1(-> } %{ end after grace passage %}   %{ start after grace %}{<ef gf>8} %{ end after grace %} |
<d f>1) <gf bf>2.-> <gf bf>4 <gf bf>2( <f af>2 <ef gf>2 <d f>2) <cf d>1-> <gf bf>2._\markup{\italic {dim.}} <gf bf>4 <gf bf>2(\> <f af>2) <ef gf>2( <d f>2)\! ef1(\pp <d af cf'>1)->_\markup{\italic{m.s.}} ef1( <d af cf'>1)-> ef1( <d af cf'>1)-> \clef treble \key ef \major

<<
{ g'2(_\markup{\dynamic{f} \italic{e ben vibrato il suono}} af'2 g'2 af'4 bf'4) g'2( af'2 g'2 f'2) g'2_\markup{\italic{sempre legato}} af'2 g'2 af'4 bf'4 g'2 af'2 g'1 }
\\
{ <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 }
>>

<<
{ g'2_\markup{\italic{sempre }\dynamic{f}} bf'2 ef''2 bf'4 af'4 g'2 bf'2 ef''2 bf'2 g'2 bf'2 ef''2 bf'4 af'4 g'2 af'4 bf'4 g'2. r4 }
\\
{ <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 }
>>

<<
{ c''2\ff g'2 ef''2 c''4 d''4 c''2 g'2 g'1 g'2 c''4 d''4 ef''2 c''4 d''4 c''2 g'2 g'2.\> r4\! }
\\
{ ef'4 d'4 c'4 bf4 ef'4 d'4 c'4 bf4 ef'4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 ef'4 d'4 c'4 bf4 ef'4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 }
>>

<<
{ g'2_\markup{\dynamic{p} \italic{e sempre} Ped.} af'2 g'2 af'4 bf'4 g'2 af'2 g'2 f'2 g'2 af'2 g'2 af'4 bf'4 g'2 f'4 ef'4 g'1 }
\\
{ <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 }
>>

<<
{ g'2\ff bf'2 ef''2 c''4 d''4 c''2 bf'4 af'4 g'1 g'2 c''4 d''4 ef''2 c''4 d''4 ef''2 g'4 f'4 g'2.\> r4\! }
\\
{ <g ef'>4 d'4 c'4 bf4 ef'4 d'4 c'4 bf4 ef'4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 ef'4 d'4 c'4 bf4 ef'4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 }
>>

<<
{ g'2_\markup{\dynamic{pp} \italic{e sempre il medesimo} Ped.} af'2 g'2 af'4 bf'4 g'2 af'2 g'2 f'2 g'2 af'2 g'2 af'4 bf'4 g'2 f'4 ef'4 g'1 }
\\
{ <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 <g ef'>4 d'4 c'4 bf4 }
>>
\key ef \minor
\grace s8.<cf' ef'>1( <bf df'>1 <a c'>1 <bf df'>1) <af cf'>1( <gf bf>1 <f a>1 <gf bf>1) <ef' gf'>1(-> <df' f'>1 <c' ef'>1 <bf df'>1) <c' ef'>1( <bf df'>1 <a c'>1 bf1) \bar "|." %{ bar %}
<bf d' f' af' cf''>2.\rfz <bf d' f' af'>4 <bf d' f'>2 <bf d' f'>4. <bf d' f'>8 
<<
{ af'4( gf'4) }
\\
{ <bf c' ef'>2 }
>>
<a c' f'>4. <a c' ef'>8 <af bf d' f'>1 
<<
{ <bf ef' gf'>2\f <bf ef' gf' af'>4. <bf ef' gf' bf'>8 cf''2. af'4 }
\\
{ \omit r1 <cf' ef' gf'>1 }
>>

<<
{ f'4( af'4 <df' f' af' cf''>4. <df' f' af' ef''>8) }
\\
{ <df' f'>2 \omit r2 }
>>
<df' f' af' df''>1 <ef' gf' bf'>2_\markup{\italic{cresc.}} <ef' gf' bf' cf''>4. <ef' gf' bf' df''>8 
<<
{ ef''2. cf''4 }
\\
{ <ef' gf' bf'>1 }
>>

<<
{ af'4 cf''4 }
\\
{ <f' af'>2 }
>>
<f' af' cf'' ef''>4. <f' af' cf'' ef'' gf''>8 <f' af' cf'' df'' f''>1 <gf' bf' df'' gf''>2_\markup{\dynamic{p}\italic{ sostenuto}} <gf' bf' df'' gf''>4. <gf' bf' df'' gf''>8 <df' f' af' df''>1 <f' a' c'' f''>2 <f' a' c'' f''>4. <f' a' c'' f''>8 <c' e' g' c''>1 <e' gs' b' e''>2 <e' gs' b' e''>4. <e' gs' b' e''>8 <a b ds' fs' b'>1 \clef bass <e gs b e'>2_\markup{\italic{sempre }\dynamic{p}} <e gs b e'>4. <e gs b e'>8 
<<
{ e'4( ds'4) cs'4 b4 }
\\
{ <fs a b>2 <e a>4 <ds a>4 }
>>
<e gs b e'>2 <fs b e' fs'>4. <gs b e' gs'>8 <a b fs' a'>1 <e gs b e'>2 <e gs b e'>4. <e gs b e'>8 
<<
{ e'4( ds'4 \acciaccatura {ds'8} %{ end acciaccatura %} cs'4. b8) }
\\
{ <fs b>1 }
>>

<<
{ b4( e'4 \omit r2 <a b fs' a'>1~) <a b fs' a'>1 r1 r1 }
\\
{ <e b>2 <fs b e' fs'>4 <gs b e' gs'>4 \omit r1 \omit r1 }
>>
 \grace s8. <cf ef>1(\pp <bf, df>1 <a, c>1 <bf, df>1) <af, cf>1( <gf, bf,>1 <f, a,>1 <gf, bf,>1) <ef gf>1(-> <cf ef>1) \afterGrace {<f af>1(-> } %{ end after grace passage %}   %{ start after grace %}{<ef gf>8} %{ end after grace %} <d f>1) <gf bf>2.-> <gf bf>4 <gf bf>2( <f af>2 <ef gf>2 <d f>2) <c ds>1 <gf bf>2.-> <gf bf>4 <gf bf>2( <f af>2) r1^\markup{1} <ef gf>2( <d f>2) r1^\markup{1} ef1( <d af cf'>1)->_\markup{\italic{m.s.}} ef1( <d af cf'>1)-> ef1( <d af cf'>1)-> <d af cf'>1->_\markup{\italic{dim.}} <d af cf'>1->_\markup{\italic{dim.}} \clef bass 
<<
{ <ef g bf>1\mf\set Score.connectArpeggios = ##t <ef g bf>2_\markup{\italic{dim.}} <ef af bf>2 <ef g bf>1_\markup{\italic{rall. e dim. molto}} <ef g bf>1\pp }
\\
{ g4( f4 ef4 d4) g4( f4 ef4 d4) g4( f4 ef4 d4) g4( f4 ef4 d4) }
>>
<ef g bf>1\arpeggio\ppp} >>
<< \new Staff = "bass" \with {

}{

\clef bass
\key ef \minor
\time 4/4
\ottava #-1 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 |
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 |
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 |
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 |
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 |
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 |
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 |
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 |
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 |
\grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 <f,, f,>8 r8 <f,, f,>8 r8 r4 |
\grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 r4 \grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 r4 |
\grace {f,,16 gf,,16 gf,16~} %{ end grace %} <gf,, gf,>8 r8 <gf,, gf,>8 r8 <gf,, gf,>8 r8 r4 |
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 |
\grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 <f,, f,>8 r8 <f,, f,>8 r8 r4 |
\grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 <f,, f,>8 r8 <f,, f,>8 r8 r4 |
\grace {a,,16 bf,,16 bf,16} %{ end grace %} bf,,8 r8 bf,,8 r8 bf,,8 r8 r4\ottava #0  |
\grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 \grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 |
\grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 <ef, ef>8 r8 <ef, ef>8 r8 r4 |
\grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 \grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 |
\grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 <ef, ef>8 r8 <ef, ef>8 r8 r4 |
\grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 \grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 |
\grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 <ef, ef>8 r8 <ef, ef>8 r8 r4 |
\grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 \grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 |
\grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 <ef, ef>8 r8 <ef, ef>8 r8 r4 |
\grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 \grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 |
\grace {e,16 f,16 f16~} %{ end grace %} <f, f>8 r8 <f, f>8 r8 <f, f>8 r8 r4 |
\grace {e,16 f,16 f16~} %{ end grace %} <f, f>8 r8 r4 \grace {e,16 f,16 f16~} %{ end grace %} <f, f>8 r8 r4 |
\grace {f,16 gf,16 gf16~} %{ end grace %} <gf, gf>8 r8 <gf, gf>8 r8 <gf, gf>8 r8 r4 |
\grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 \grace {d,16 ef,16 ef16~} %{ end grace %} <ef, ef>8 r8 r4 |
\grace {e,16 f,16 f16~} %{ end grace %} <f, f>8 r8 <f, f>8 r8 <f, f>8 r8 r4 |
\grace {e,16 f,16 f16~} %{ end grace %} <f, f>8 r8 <f, f>8 r8 <f, f>8 r8 r4 |
\grace {a,16 bf,16 bf16} %{ end grace %} bf,8 r8 bf,8 r8 bf,8 r8 r4\break
|
<bf, d f af cf'>2. <bf, d f af>4 |
<bf, d f>2 <bf, d f>4. <d f>8 |

<<
{ af4( gf4) }
\\
{ <bf, c ef>2 }
>>
<bf, c f>4. <bf, c ef>8 |
<bf, d f>1 |
<ef gf>2 <ef gf>4. <ef gf>8 |

<<
{ <ef gf>1 }
\\
{ af,2( cf4. ef8) }
>>
|
<df f af cf'>2 <df f af cf'>4. <df f af cf'>8 |

<<
{ <f af>1 }
\\
{ bf,2 df4. f8 }
>>
\break
|
<ef gf bf df'>2 <ef gf bf df'>4. <ef gf bf df'>8 |
<cf ef gf bf>2. <cf ef gf cf'>4 |
<df gf bf>2 <df f af>2 |
<d f af bf>1-> |
<ef gf bf>2 <ef gf bf cf'>4. <ef gf bf df'>8 |
<cf ef gf bf>2. <cf ef af>4 |
<df gf df'>2 <df f cf'>2 |
<gf, df bf>1 \bar "|." %{ bar %}
\break
\grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 \grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 |
\grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 <fs, fs>8 r8 <fs, fs>8 r8 r4 |
\grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 \grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 |
\grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 <fs, fs>8 r8 <fs, fs>8 r8 r4\break
|
\grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 \grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 |
\grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 <fs, fs>8 r8 <fs, fs>8 r8 r4 |
\grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 \grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 |
\grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 <fs, fs>8 r8 <fs, fs>8 r8 r4\break
|
\grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 \grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 |
\grace {g,16 gs,16 gs16~} %{ end grace %} <gs, gs>8 r8 <gs, gs>8 r8 <gs, gs>8 r8 r4 |
\grace {g,16 gs,16 gs16~} %{ end grace %} <gs, gs>8 r8 r4 \grace {g,16 gs,16 gs16~} %{ end grace %} <gs, gs>8 r8 r4 |
\grace {gs,16 a,16 a16~} %{ end grace %} <a, a>8 r8 <a, a>8 r8 <a, a>8 r8 r4\break
|
\grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 \grace {f,16 fs,16 fs16~} %{ end grace %} <fs, fs>8 r8 r4 |
\grace {g,16 gs,16 gs16~} %{ end grace %} <gs, gs>8 r8 <gs, gs>8 r8 <gs, gs>8 r8 r4 |
\grace {g,16 gs,16 gs16~} %{ end grace %} <gs, gs>8 r8 <gs, gs>8 r8 <gs, gs>8 r8 r4\pageBreak

|
<cs es gs b d'>2. <cs es gs b>4 |
<cs es gs>2 <cs es gs>4. <es gs>8 |

<<
{ b4( a4) }
\\
{ <cs ds fs>2 }
>>
<cs ds gs>4. <cs ds fs>8 |
<cs es gs>1 |
<fs, cs fs a>2 <cs fs a>4. <cs fs a>8 |

<<
{ <fs a>1 }
\\
{ b,2( d4. fs8) }
>>
|
<e gs b d'>2 <e gs b d'>4. <e gs b d'>8 |

<<
{ <gs b>1 }
\\
{ cs2 e4. gs8 }
>>
\break
|
\acciaccatura {a,8} %{ end acciaccatura %} <fs a cs'>2 <fs a cs'>4. <fs a cs'>8 |

<<
{ <a cs'>1 }
\\
{ d2 fs4. a8 }
>>
|
<gs b d' fs'>2 <gs b d' fs'>4. <gs b d' fs'>8 |

<<
{ <e gs b d'>1 }
\\
{ e4\sustainOn gs4^\>  b4. d'8\sustainOff^\!  }
>>
|
<ef af c' ef'>2 <ef af c' ef'>4. <ef af c' ef'>8 |
\grace {d16( ef16 f16} %{ end grace %} \afterGrace {ef1\trill } %{ end after grace passage %}   %{ start after grace %}{d16 ef16)} %{ end after grace %} |
<df gf bf df'>2 <df gf bf df'>4. <df gf bf df'>8 \grace {c16( df16 ef16} %{ end grace %} \afterGrace {df1\trill } %{ end after grace passage %}   %{ start after grace %}{c16 df16)} %{ end after grace %} <b, e gs b>2 <b, e gs b>4. <b, e gs b>8 \grace {as,16( b,16 cs16} %{ end grace %} \afterGrace {b,1\trill } %{ end after grace passage %}   %{ start after grace %}{as,16 b,16)} %{ end after grace %} <b,, b,>2 <b,, b,>4. <b,, b,>8 \grace {as,16( b,16 cs16} %{ end grace %} \afterGrace {b,1\trill } %{ end after grace passage %}   %{ start after grace %}{as,16 b,16)} %{ end after grace %} 
<<
{ b,2 b,4. b,8 b,1 b,2 b,4. b,8 \grace {as,16( b,16 cs16} %{ end grace %} \afterGrace {b,1\trill } %{ end after grace passage %}   %{ start after grace %}{as,16 b,16)} %{ end after grace %} b,2 b,4. b,8 b,2 }
\\
{ ef,2 ef,4. ef,8 e,4( ds,4 \acciaccatura {ds,8} %{ end acciaccatura %} cs,4 b,,4) b,,4( e,4 fs,4 gs,4) a,1 a,4( gs,4 fs,4 e,4) e,4( ds,4 cs,4. b,,8) }
>>
\ottava #-1 b,,4( a,,4 gs,,4 fs,,4) e,,2( ds,,2 d,,1)\ottava #0  \bar "|." %{ bar %}
\break
\ottava #-1 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4\break
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4\break
\grace {d,,16^\markup{\italic{poco cresc.}} ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {g,,16 af,,16 af,16~} %{ end grace %} <af,, af,>8 r8 <af,, af,>8 r8 <af,, af,>8 r8 r4 \grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 r4 \grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 r4 \grace {a,,16 bf,,16 bf,16~} %{ end grace %} <bf,, bf,>8 r8 <bf,, bf,>8 r8 <bf,, bf,>8 r8 r4\break
\grace {f,,16 gf,,16 gf,16~} %{ end grace %} <gf,, gf,>8 r8 r4 \grace {f,,16 gf,,16 gf,16~} %{ end grace %} <gf,, gf,>8 r8 r4 \grace {bf,,16 cf,16 cf16~} %{ end grace %} <cf, cf>8 r8 <cf, cf>8 r8 <cf, cf>8 r8 r4 \grace {a,,16 bf,,16 bf,16~} %{ end grace %} <bf,, bf,>8 r8 r4 \grace {a,,16 bf,,16 bf,16~} %{ end grace %} <bf,, bf,>8 r8 r4 \grace {g,,16 af,,16 af,16~} %{ end grace %} <af,, af,>8 r8 <af,, af,>8 r8 <af,, af,>8 r8 r4 \grace {f,,16 gf,,16 gf,16~} %{ end grace %} <gf,, gf,>8 r8 r4 \grace {f,,16 gf,,16 gf,16~} %{ end grace %} <gf,, gf,>8 r8 r4 \grace {bf,,16 cf,16 cf16~} %{ end grace %} <cf, cf>8 r8 <cf, cf>8 r8 r2 \grace {a,,16 bf,,16 bf,16~} %{ end grace %} <bf,, bf,>8 r8 <bf,, bf,>8 r8 r2 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 r1 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 r1 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 r1\break
\pageBreak

\ottava #0  \repeat volta 2{\key ef \major

<<
{ ef,1_\markup{\italic{sempre }Ped.}_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent }
\\
{ \hideNotes g4(\unHideNotes  f4 ef4 d4) \hideNotes g4(\unHideNotes  f4 ef4 d4) \hideNotes g4(\unHideNotes  f4 ef4 d4) \hideNotes g4(\unHideNotes  f4 ef4 d4) \hideNotes g4(\unHideNotes  f4 ef4 d4) \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 }
>>
}\break
\repeat volta 2{
<<
{ ef,1_\markup{\italic{sempre }Ped.}_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent }
\\
{ \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 }
>>
}\break

<<
{ ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent }
\\
{ g4 f4 ef4 d4 g4 f4 ef4 d4 g4 f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 g4 f4 ef4 d4 g4 f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 }
>>
\break
\bar "|." %{ bar %}

<<
{ ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent }
\\
{ \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 }
>>
\break
\bar "|." %{ bar %}

<<
{ ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent ef,1_\accent }
\\
{ \hideNotes g4\unHideNotes  f4 ef4 d4 g4 f4 ef4 d4 g4 f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 g4 f4 ef4 d4 g4 f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 }
>>
\break
\bar "|." %{ bar %}

<<
{ <ef, bf,>1_\accent <ef, bf,>1_\accent <ef, bf,>1_\accent <ef, bf,>1_\accent <ef, bf,>1_\accent <ef, bf,>1_\accent <ef, bf,>1_\accent <ef, bf,>1_\accent }
\\
{ \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4\noBreak \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 \hideNotes g4\unHideNotes  f4 ef4 d4 }
>>
\pageBreak

\bar "|." %{ bar %}
\key ef \minor
\ottava #-1 \grace {d,,16^\markup{\dynamic{p} \italic{e senza} Ped.} ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 <f,, f,>8 r8 <f,, f,>8 r8 r4 \grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 r4 \grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 r4 \grace {f,,16 gf,,16 gf,16~} %{ end grace %} <gf,, gf,>8 r8 <gf,, gf,>8 r8 <gf,, gf,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 <f,, f,>8 r8 <f,, f,>8 r8 r4 \grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 <f,, f,>8 r8 <f,, f,>8 r8 r4 \grace {a,,16 bf,,16 bf,16} %{ end grace %} bf,,8 r8 bf,,8 r8 bf,,8 r8 r4\break
\ottava #0 \break
<bf, d f af cf'>2. <bf, d f af>4 <bf, d f>2 <bf, d f>4. <d f>8 
<<
{ af4( gf4) }
\\
{ <bf, c ef>2 }
>>
<bf, c f>4. <bf, c ef>8 <bf, d f>1 <ef, bf, ef gf>2 <bf, ef gf>4. <bf, ef gf>8 
<<
{ <ef gf>1 }
\\
{ af,2 cf4. ef8 }
>>
\acciaccatura {f,8} %{ end acciaccatura %} <f, df f af cf'>2 <df f af cf'>4. <df f af cf'>8 
<<
{ <bf, df f af>1 }
\\
{ bf,4\sustainOn  df4 f4. af8\sustainOff  }
>>
\acciaccatura {gf,8} %{ end acciaccatura %} <gf, ef gf bf df'>2 <ef gf bf df'>4. <ef gf bf df'>8 
<<
{ <ef gf bf>1 }
\\
{ cf2 ef4. gf8 }
>>
\acciaccatura {af,8} %{ end acciaccatura %} <af, f af cf' ef'>2 <f af cf' ef'>4. <f af cf' ef'>8 
<<
{ <df f af cf' df'>1 }
\\
{ df4(\sustainOn  ^\< f4 af4. cf'8)\!\sustainOff  }
>>
<df gf bf df'>2 <df gf bf df'>4. <df gf bf df'>8 \grace {c16( df16 ef16} %{ end grace %} \afterGrace {df1\trill } %{ end after grace passage %}   %{ start after grace %}{c16 df16)} %{ end after grace %} <c f a c'>2 <c f a c'>4. <c f a c'>8 \grace {b,16( c16 d16} %{ end grace %} \afterGrace {c1\trill } %{ end after grace passage %}   %{ start after grace %}{b,16 c16)} %{ end after grace %} <b, e gs b>2 <b, e gs b>4. <b, e gs b>8 \grace {as,16( b,16 cs16} %{ end grace %} \afterGrace {b,1\trill } %{ end after grace passage %}   %{ start after grace %}{as,16 b,16)} %{ end after grace %}\break
<b,, b,>2 <b,, b,>4. <b,, b,>8 \grace {as,16( b,16 cs16} %{ end grace %} \afterGrace {b,1\trill } %{ end after grace passage %}   %{ start after grace %}{as,16 b,16)} %{ end after grace %} <e, b,>2 <e, b,>4. <e, b,>8 
<<
{ b,1 b,2 b,4. b,8 }
\\
{ e,4( ds,4 \acciaccatura {ds,8} %{ end acciaccatura %} cs,4. b,,8) b,,4( e,4 fs,4 gs,4) }
>>

<<
{ e4( ds4 \acciaccatura {ds8} %{ end acciaccatura %} cs4. b,8) }
\\
{ a,1 }
>>

<<
{ b,2 b,4. b,8 b,1 }
\\
{ a,4 gs,4 fs,4 e,4 e,4( ds,4 \acciaccatura {ds,8} %{ end acciaccatura %} cs,4. b,,8) }
>>
\ottava #-1 b,,4( a,,4 gs,,4 fs,,4) e,,2( ds,,2 d,,1)\ottava #0 \break
\bar "|." %{ bar %}
\ottava #-1 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4\break
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4\break
\grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {g,,16 af,,16 af,16~} %{ end grace %} <af,, af,>8 r8 <af,, af,>8 r8 <af,, af,>8 r8 r4 \grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 r4 \grace {e,,16 f,,16 f,16~} %{ end grace %} <f,, f,>8 r8 r4 \grace {a,,16 bf,,16 bf,16~} %{ end grace %} <bf,, bf,>8 r8 <bf,, bf,>8 r8 <bf,, bf,>8 r8 r4\break
\grace {f,,16 gf,,16 gf,16~} %{ end grace %} <gf,, gf,>8 r8 r4 \grace {f,,16 gf,,16 gf,16~} %{ end grace %} <gf,, gf,>8 r8 r4 \grace {bf,,16 cf,16 cf16~} %{ end grace %} <cf, cf>8 r8 <cf, cf>8 r8 <cf, cf>8 r8 r4 \grace {a,,16 bf,,16 bf,16~} %{ end grace %} <bf,, bf,>8 r8 r4 \grace {a,,16 bf,,16 bf,16~} %{ end grace %} <bf,, bf,>8 r8 r4 \grace {g,,16 af,,16 af,16~} %{ end grace %} <af,, af,>8 r8 <af,, af,>8 r8 <af,, af,>8 r8 r4 \grace {f,,16^\pp gf,,16 gf,16~} %{ end grace %} <gf,, gf,>8 r8 r4 \grace {f,,16 gf,,16 gf,16~} %{ end grace %} <gf,, gf,>8 r8 r4 \grace {bf,,16 cf,16 cf16~} %{ end grace %} <cf, cf>8 r8 <cf, cf>8 r8 r2 r1^\markup{1} \grace {a,,16 bf,,16 bf,16~^\markup{\italic{smorz.}}} %{ end grace %} <bf,, bf,>8 r8 <bf,, bf,>8 r8 r2 r1^\markup{1} \grace {d,,16 ef,,16 ef,16~^\ppp} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 r1 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 <ef,, ef,>8 r8 <ef,, ef,>8 r8 r4 r1 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 \grace {d,,16 ef,,16 ef,16~} %{ end grace %} <ef,, ef,>8 r8 r4 r1 r1 r1 \bar "||" %{ bar %}
\break
\ottava #0  
<<
{ ef4(\sustainOn d4 c4 bf,4) }
\\
{ <ef, bf,>1 }
>>

<<
{ ef4( d4 c4 bf,4) }
\\
{ <ef, bf,>1 }
>>

<<
{ ef4( d4 c4 bf,4) }
\\
{ <ef, bf,>1 }
>>

<<
{ ef4( d4 c4 bf,4) }
\\
{ <ef, bf,>1 }
>>
\ottava #-1 <ef,, bf,, ef, bf,>1\arpeggio\sustainOff\ottava #0  \bar "|." %{ bar %}
} >>
>>
>>
  \layout {
 \context {
 \Score
 \override SpacingSpanner.common-shortest-duration =
 #(ly:make-moment 1/10)
 }
 }
 \midi { } }