\version "2.12.0"

\relative g' {
      \global
      \compressFullBarRests
      % The following makes the rehearsal marks show up as letters within a box:
      \set Score.markFormatter = #format-mark-box-letters
      \set Staff.midiInstrument = "violin"
    \partial 4 r4
      R2.*7
      r4 r \breathe r8 g~ \p                                % V 1
      g4 g r8 c~
      %% Takt 10 ======================================================
      c4 af r8 g~
      g8 f~ f4 r8 af~
      af4 g r8 b!~
      b4 c r8 af~
      af4 g r8 af~
      %% Takt 15 ======================================================
      af8 g f4 r8 f~
      f8. g16 ef4 r8 g~\mp                                      % V 2
      g4 g r8 g~
      g4 f r8 ef~
      ef4 d r8 ef~
      %% Takt 20 ======================================================
      ef4 d r8 b~\<
      b4 c  r8 af~
      af8 g~ g4 r8 af~
      af4.. af16 g8. g16
      g4\f r2                                 % V 3
      %% Takt 25 ======================================================
      r8 d' g af bf! c
      af4. af8 g f
      ef8 c f g af4~
      af8 af g c b4\mf
      c4. af8 g f
      %% Takt 30 ======================================================
      ef8 d c2~
      c8 b c d ef f 
      c4 r8 c16\mp d ef8 ef16 f                                % V 4
      g2~ g8 f16 g
      af2~ af8 g16 f
      %% Takt 35 ======================================================
      ef4. d16 ef f8 af
      g8 g16\< a b!8 b16 c d4
      c8\f ef16 d ef8 c g4~
      g4 r8 ef16 d ef8 c16 b
      c8 ef16\> d ef8 c c[ b]
      %% Takt 40 ======================================================
      c4\mp r4 r8 g'16\p fs                                % V 5
      g8 d'16 d, g4 r8 
      
      %%%%%%%% The following is to make the 'written-out' crescendo:
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

            g16\< ef
      af4~ af8 f g4
      ef4 r4 r8 d'16 f
      b,4 r4 r8 g16 f
      %% Takt 45 ======================================================
      g4\f \crescHairpin r4 r8 g | %% \crescHairpin is to go back to the '>'-type cresc.
      g4 r r8 d'16 a
      b4 r8 c16 a \grace c8( b!4)\trill
      c4 r16 d,\mp ef f g4~  |                                  % V 6
      g4 r16 g a b c4~
      %% Takt 50 ======================================================
      c4 r16 a b c b8 g~
      g4 r16 g af! bf! c8 af
      g4 r16 a,\p b c d4
      c4 r16 d\mp ef f g4~
      g4 r16 ef\mf f g af!4
      %% Takt 55 ======================================================
      g2~\< g16 af g f
      ef4\f r16 f ef d c ef d c                                % V 7
      b4 r16 c' b a g af g bf
      af4 r4 r16 af g f
      ef4 r r16 g f ef |
      %% Takt 60 ======================================================
      d4 r16 c' b a b4
      c4 r16 g f ef f af g f
      ef4 r16 bf'\> af g f8. ef16 |
      d8. d16 c ef d c b4 |
      c4\p r r       |                                    % V 8
      %% Takt 65 ======================================================
      r16 d ef f g b c d ef d c bf |
      af16 c, d! e f g f ef d af' g f |
      ef16 
      
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { cresc. poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

          f\< ef d! c8 r r4 |
      r16 fs g a b a b c d4~ |
      d16 g, a b c4 r |
      %% Takt 70 ======================================================
      r16 b, c d ef c d ef f4~ |
      f16\f af g f ef g f ef d4 \crescHairpin |
      c16 c\mf ef c g'8. f16 ef4\trill        |          % V 9
      d4 r8 g4. |
      af4 r bf! |
      %% Takt 75 ======================================================
      r16 ef, g ef af2 |
      g4 r16 g b! g d' b d b |
      c4 r16 ef, g ef af4 |
      g4 r16 ef g ef af4 |
      g4 r16 ef g ef d4 |
      %% Takt 80 ======================================================
      c4\mp r g'     |                                           % V 10
      g4 r g |
      f4 r f |
      ef r f |
      d4 r d |
      %% Takt 85 ======================================================
      c4 r g' |
      g4 r f |
      d4 r d |
      c4 r c'=''4\f   |                                % V 11
      g'2 ef4 |
      %% Takt 90 ======================================================
      f2 g4 |
      af2 f4 |
      g2 d4 |
      ef2 b4 |
      c2 f,4 |
      %% Takt 95 ======================================================
      g2. |
      c,2 r4 |
      r8 g'='\mf a b c4~   |                                       % V 12
      c16 df bf! c af! bf g af f g e g |
      f8 r r4 r8 a |
      %% Takt 100 =====================================================
      d16 ef c d b c a b g af f g |
      ef8 g c bf af[ g16( f]) |
      g16 af f g ef f d ef c8 f~ |
      f16 g ef f d8 b c b |
      c2 c16(^\markup { \dynamic mf Theme } ef d c)     |                                        % V 13
      %% Takt 105 =====================================================
      g'2 ef4 |
      f4~ f16( af g f) g( bf af g) |
      af4~ af16( bf af g) f4 |
      g4~ g16 g( f ef) d( f ef d) |
      ef4~ ef16 ef( d c) b( d c b) |
      %% Takt 110 =====================================================
      c4~ c16  r8. r4 |
      R2.*2 |
      r4 r16 b'='\mp\< d g r g ef c
      af'8\mf f r2
      %% Takt 115 =====================================================     
      r4 r16 c='' ef af r af f d
      b8 g r2
      r4 r16 g=' bf ef r f d g, |
      ef'8 c r2
      r4 r16 c,='\> ef g b, d f b,
      %% Takt 120 =====================================================
      ef8\! r^\markup { \italic { on the string } }  c='16-.\mf ef-. r8 c'16-. ef-. r8               % V 15
      r4 g,16-. b-. r8 ef,16-. c'-. r8
      r4 f,16-. af-. r8 g16-. ef'-. r8
      r4 af,16-. c-. r8 f,16-. d'-. r8
      r4 g,16-. b-. r8 d,16-. d'-. r8
      %% Takt 125 =====================================================
      r4 ef,16-. g-. r8 b,16-. g'-. r8
      r4 c,16-. ef-. r8 r4 |
      r4 g='16-. c-. r8 r4 
      r4 c16-. ef-. r8 r8 <g, g,>->\upbow \f                  % V 16
      r16 c( d a) b4~ b8 <g g,>->  |
      %% Takt 130 =====================================================
      r16 bf!( c g) af!4( g8) ef->
      r16 d'( ef b) << { c4~ c8 c-> } \\ { r8 af~ af af-> } >>
      r16 c=''( d a) << { b4~ b8 b-> } \\ { r8 g(\noBeam d) d-> } >>
      r16 fs'=''( g d) ef4( d8) d-> |
      r16 f=''( g d) ef4( d8) <d af>-> |
      %% Takt 135 =====================================================
      r16 f( g d) ef4( d8) <d g,>-> |
      r16 f(\> g d) ef4~ ef8\mp r | 
      R2.*7
      r2 g,4~\mf                                                   % V 18
      %% Takt 145 =====================================================
      g2 r8 c
      \appoggiatura bf!16 af!2 r8 g
      f8 ef16 d ef8 f16 g af4
      g2 r8 f
      g4. f16 g af4~
      %% Takt 150 =====================================================
      af8 g16 f g8 af16 bf! c8 d
      b4 c4.\> b!8
      c8 g4 g16\p f ef8 g~                                         % V 19
      g2 g4
      af2 g4~
      %% Takt 155 =====================================================
      
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

      g2\< af4
      g2~ g16 af( g f)
      g4~ g16 af( g f) g4~
      g16 af( g f) g4~ g16 af( g) f~
      f16 af( g f) ef4 f~\downbow
      %% Takt 160 =====================================================
      f16 af( g f) ef f( ef d) c8\f r \crescHairpin |
      r4 <c'='' ef,>16 <d f,>( <c ef,> <b d,>) <c ef,>4~ |
      <c ef,>16 <d f,>( <c ef,> <b d,>) <c ef,>4~ <c ef,>16 <d f,>( <c ef,> <b d,>) |
      c8.( f,16 ef) <d'='' f,>( <c ef,> <b d,>) <c ef,>4~ |
      <c ef,>16 <d f,>( <c ef,> <b d,>) <c ef,> <ef ef,>(\< <d f,> <c g>) <b! af>8 <b f> |
      %% Takt 165 =====================================================
      <c ef,>16(\ff <d f,> <c ef,> <b d,>) <c ef,>4 <d f,>16( <f af,!> <ef g,> <d f,>) |
      ef, f( ef d) c'16 d( c bf!) af8 c,16( b) |
      <g' c,>16( af g f) g d( c b) c^\markup { \italic rit. } d c b |
       <<
        {
         ef16( f ef d ef) d ef f <g g,>4  \fermata \bar "||"
        }
        \\
        {
          c,='4~ c16 s s s s4 
        }
      >>
      
      % Bach didn't include this first note of the theme on the first run of the
      % fugue, but I like it:
      \partial 4 c='4\mf \bar "|" |
      g'='2^\markup { \hspace #-3.5 \italic "Thema fugatum" } ef4 |% Thema fugatum
      %% Takt 170 =====================================================
      f2 g4 |
      af2 f4 |
      g4. f8 ef16 g f ef |
      d4~\> d16 d e fs g4\mp |
      r8 bf fs fs g g |
      %% Takt 175 =====================================================
      r8 ef' a, a b b |
      r8 c g g a a |
      r8 bf fs fs g g |
      r16 c bf c af4 r16 g f g |
      ef4 f8 c d4~ |
      %% Takt 180 =====================================================
      d8 a b4 c16 f ef f
      g8 r r16 g f g c, c' bf! c
      af16 c af c af bf af bf g bf g bf
      f16 af g bf af bf af bf af bf af bf
      g af g af g af f g ef\> f d ef
      %% Takt 185 =====================================================
      c16 g' f g ef f d ef c\p d bf c
       a8 bf c a bf g'
      g4 c g
      g4 bf f~
      f8 g a4 g8 fs
      %% Takt 190 =====================================================
      g16 f! e g fs8 g4 fs8
      g4 r c,\mf
      g'2 ef4
      f2 g4
      af2 f4
      %% Takt 195 =====================================================
      g2\> f4~
      f8 ef16\mp g f af g bf af c bf af
      g4 r16 bf af bf g4
      r8 g d d ef ef
      r8 c' f, f g g
      %% Takt 200 =====================================================
      r8 af ef ef f f
      r8 g d d ef ef
      r8 f c c d d
      ef8 bf ef4 r
      R2.*4
      r4 r bf\f
      f'2 d4
      %% Takt 210 =====================================================
      ef2 f4
      g2 ef4
      f4 r16 af g af f bf af bf
      g4 r16 df' c df bf ef df ef
      c4 r16 bf af bf g c bf c
      %% Takt 215 =====================================================
      af8 c b[ b c c]
      r16 d c d a8\> a b b\!
      r16 c\p bf! c r c bf c r c bf c |
      r16 bf a bf r a g a r a g a
      r16 g fs g r g fs g r a! g a |
      %% Takt 220 =====================================================
      r16 fs e fs r fs e fs g4~
      g8 bf\mp fs fs g g
      r8 ef' a, a bf bf
      r8 c g g a a
      r8 bf-. fs16 a g bf a c bf a
      %% Takt 225 =====================================================
      bf2~\< bf16\! c g bf
      a2~ a16 bf fs a
      g2~ g16 a e g
      fs16 a fs a d, fs d fs g8-. f!-.
      ef2~ ef16 g f ef
      %% Takt 230 =====================================================
      d16 f ef g f g f af! d,4~
      d4 c~\> c16 ef d f\!
      b,16\mp d c ef d ef c\< d ef f d e
      f16 af\! g bf af c, af'\> g f ef! d c
      b16\mp d c ef d f ef d c c'\p bf! c
      %% Takt 235 =====================================================
      af16 c af c af bf af bf g bf g bf
      f16 af g bf af bf g af bf c af bf
      g16 g\mp f g r af g af r f ef f
      r16 g af g r f ef f r d c d
      ef8--\< f-- g-- a-- bf_\markup { \italic simile } \! c
      %% Takt 240 =====================================================
      d8 ef f g af bf
      c8\noBeam d,,\mp\< ef f g af
      bf8 c d ef\! f g
      af8\noBeam bf,,\< c d ef f\!
      g4. g8 a16 bf g a
      %% Takt 245 =====================================================
      fs16 g e fs d2~\mf
      d16 a' g bf a c bf a g8-. d-.
      g4 f f
      ef8-. f-. g-. bf-. a-. g-.
      fs16 a g bf a8 fs\f g4~
      %% Takt 250 =====================================================
      g8 g a4 g~
      g8 f4 ef d8~
      d8 d ef4 d8 c
      b8\> c d4~ d8 g\!
      g4 c4. c8
      %% Takt 255 =====================================================
      c4 r r16 c\mf bf af
      g8 af e e f f
      r8 df' g, g a a
      r8 bf f f g\< g |
      af8 bf16 af g4.\f g8
      %% Takt 260 =====================================================
      c4. df8 e,4
      f8 bf4 c8 df4~
      df8 bf c2~\>
      c16 d!\mf bf c a c bf a g4
      r16 a\mp g a fs4 r16 g f g
      %% Takt 265 =====================================================
      ef4 r16 d\p c d bf4
      c4\> r16 c bf c a4\!
      b16-. d-.\mp c-. ef-. d-. f-. ef-. g-. f-. af!-. g-. f-.
      ef16\< g f af g bf af c bf df( c bf)\!
      <<
         \new Voice {
            \grace { bf8( } af2.~)
      %% Takt 270 =====================================================
            \afterGrace af2.( { g16[ af]) }
         }
         \new Voice {
            s2.\startTrillSpan
            s2 s8. s16\stopTrillSpan
         }
      >>
      g4~\> g16 bf( af g) f4~\!
      f8 ef b b c c
      r8 af' d, d e e
      r8 f c c d d
      %% Takt 275 =====================================================
      ef8. f16 g8 a16 b c ef d f
      b,4 c4.\mf bf8
      af2.\>
      g2.
      f2.
      %% Takt 280 =====================================================
      ef2\! f4~
      f16 g f g b,8 d c\< c
      d16 g f g d8 d ef ef
      f16 g f g d8 g\! g g
      g16 g f g d8 g^\markup { \italic rit. }\f g g
      %% Takt 285 =====================================================
      f8\fermata r^\markup { \italic { meno mosso } } r g g16 af f g
      af4 g4. f8
      e16^\markup { \italic { à tempo } } g f af g8 c\< c c
      c16 c bf c g8 g af af\!
      bf16 c bf c g8 c^\markup { \italic rit. }\ff c c
      %% Takt 290 =====================================================
      c16 df c df 
      <<
        {
          bf4. af8~^\eyeglasses
          af16^\markup { \italic Adagio } af g af 
        }
        \\
        {
          % These are cello cues:
          \set fontSize = #-5
          r16_\markup { vcl } c,=' bf c af c f, af |
          c,2.*1/3
          \normalsize
        }
      >>
          d'='16 f e f d f d f
      <e g,>2. \bar "|."
}