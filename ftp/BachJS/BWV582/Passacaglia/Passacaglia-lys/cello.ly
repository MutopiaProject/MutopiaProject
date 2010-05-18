\version "2.12.0"

\relative c {
      \global
      \compressFullBarRests
      \set Staff.midiInstrument = "cello"
    % The following makes the rehearsal marks show up as letters within a box:
      \set Score.markFormatter = #format-mark-box-letters
      \clef bass
      \partial 4 c4\mp
      g'2 ef4
      f2 g4
      af2 f4
      g2 d4
      %% Takt 5 =======================================================
      ef2 b4
      c2 f,4
      g2.
      c,2 \adjustSlash c'4_"//"                                   % V 1
      g'2 ef4
      %% Takt 10 ======================================================
      f2 g4
      af2 f4
      g2 d4
      ef2 b4
      c2 f,4
      %% Takt 15 ======================================================
      g2.
      c,2 c'4                                   % V 2
      g'2 ef4
      f2 g4
      af2 f4
      %% Takt 20 ======================================================
      g2 d4
      ef2\< b4
      c2 f,4
      g2.
      c,2\f c'4                                   % V 3
      %% Takt 25 ======================================================
      g'2 ef4
      f2 g4
      af2 f4
      g2\mf d4
      ef2 b4
      %% Takt 30 ======================================================
      c2 f,4
      g2.\>
      c,2 c'4 \mp                                  % V 4
      g'2 ef4
      f2 g4
      %% Takt 35 ======================================================
      af2 f4
      g2\< d4
      ef2\f b4
      c2 f,4
      g2.\>
      %% Takt 40 ======================================================
      c,2\mp r8 c''16\p c,                           % V 5
      g'4 r r8  
      
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

          ef16\< c
      f4 r r8 g16 ef
      af4 r r8 f16 d
      g4 r r8 g16 d
      %% Takt 45 ======================================================
      ef4\f r r8 g16\crescHairpin b, | %% \crescHairpin is to go back to the '>'-type cresc.
      c4 r r8 f16 f,
      g2.\>
      c,2\mp c'4                                   % V 6
      g'2 ef4
      %% Takt 50 ======================================================
      f2 g4
      af2 f4
      g2\p d4
      ef2\< b4
      c2 f,4
      %% Takt 55 ======================================================
      g2.
      c,2\f c'4                                   % V 7
      g'2 ef4
      f2 g4
      af2 f4
      %% Takt 60 ======================================================
      g2 d4
      ef2 b4
      c2\> f,4
      g2.
      c,2\p c'4                                   % V 8
      %% Takt 65 ======================================================
      g'2 ef4
      f2 g4 
      
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.
    
      af2\< f4
      g2 d4
      ef2 b4
      %% Takt 70 ======================================================
      c2 f,4
      g2.\f \crescHairpin
      c,4 r r16 c'\mf ef c 
      g'4 r4 r16 ef g ef
      f4 r r16 g bf g
      %% Takt 75 ======================================================
      af4 r r16 f af f
      g4 r r16 d f d
      ef4 r r16 b d b
      c4 r r16 f, af f
      g4 r r16 g f g
      %% Takt 80 ======================================================
      c,4\mp r c'4
      g'4 r ef
      f4 r g
      af4 r f
      g4  r d
      %% Takt 85 ======================================================
      ef4 r b
      c4 r f,
      g4 r g
      c,4 r r                                  % V 11
      r2.
      %% measure 90 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      r2 r16 d''='\mp c b |
      c16 d c bf!  af! g f ef d ef d c |
      b16 c b a g a b c b d c b |
      c16 d ef f g a b c d r r8 |
      R2.*2
      %% measure 96 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      r4 r r8 af=\mf                                               % V 12
      g16 af f g ef f d ef c d bf c
      af4. af8 bf c
      f, c' f16 g ef f d! ef c d
      %% Takt 100 =====================================================
      b16 c a b g2
      c4. c,8 d4
      ef8 g c16 d bf c a4
      b8 c g16 af f g ef f d f
      ef16 f d ef c4 r                                           % V 13
      %% Takt 105 =====================================================
      R2.*2
      r2 af''=4 |
      g16( af g f) ef8 d16 c b4\trill |
      c16( ef d c) g'4. g,8 |
      %% Takt 110 =====================================================
      af16( c bf af) ef'8 e f4~ |
      f16 f( ef d) ef4 b |
      c2~ c8 c,\p |
      R2.*4
      r16 ef'=\mf g bf ef r r8 b,16 d g b |
      r16 c, ef g c r r8 f,,16 c' d f |
      r16 g, c ef g r r8 g,16\> b d g\! |
      %% Takt 120 =====================================================
      c,,=,16-.^\markup { \italic { on the string } } \mf c'-. r8 r2                              % V 15
      g16-. g'-. r8 r2
      f,16-. f'-. r8 r2 |
      af,16-. af'-. r8 r2
      g,16-. g'-. r8 r2
      %% Takt 125 =====================================================
      ef,16-. ef'-. r8 r2
      c,16-. c'-. r8 r2
      g16-. g'-. r8 r2
      c,=16-. c'-. r8 r4 c,->\f
      g'2-> ef4->
      %% Takt 130 =====================================================
      f2-> g4->
      af2-> f4->
      g2-> d4->
      ef2-> b4->
      c2-> f,4->
      %% Takt 135 =====================================================
      g2.->\>
      c,2->\mf c'4
      g'2 ef4
      f2 g4
      af2 f4
      %% Takt 140 =====================================================
      g2 d4
      ef2 b4
      c2 f,4
      g2.
      c,2 r8 c'\mf                                                 % V 18
      %% Takt 145 =====================================================
      g'2 r8 ef
      f2 r8 g
      af2 r8 f
      g2 r8 d
      ef2 r8 b
      %% Takt 150 =====================================================
      c2 r8 f,
      g2\> r8 g
      c,2 c'4\mp                                  % V 19
      g'2 ef4
      f2 g4
      %% Takt 155 =====================================================
             
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

      af2\< f4
      g2 d4
      ef2 b4
      c2 f,4
      g2.
      %% Takt 160 =====================================================
      c,2 c'4\f | \crescHairpin
      g'2 ef4
      f2 g4
      af2 f4
      g2*1/2 s4\< d4
      %% Takt 165 =====================================================
      ef2\ff b4
      c=2 f,4 |
      g2.^\markup { \hspace #2 \italic rit. }
      <c, c'>2. \fermata \bar "||"
      
      % This is where the Fugue part of the piece starts:
      \partial 4 r4
      R2.*11
      %% Takt 180 =====================================================
      r4 r c'=\mf
      g'2 ef4
      f2 g4
      af2 f4
      g4.\> d8 ef b
      %% Takt 185 =====================================================
      c4. d8 ef c\!
      d8\p bf fs fs g g
      r8 ef' a, a b b
      r8 c g g a a
      r8 bf fs fs g a
      %% Takt 190 =====================================================
      bf8 c a g d' d,
      g2 r4
      r4 r16 g' f g c, c' bf c
      af16 c af c af bf af bf g bf g bf
      f16 af g bf af bf af bf af bf af bf
      %% Takt 195 =====================================================
      g af g af g af g bf af bf af c
      bf4 bf,2
      ef,4 r r
      R2.*5
      r4. ef'=8-.\mf f-. g-.
      af16 c af c f, af f af d, f d f
      %% Takt 205 =====================================================
      g16 bf g bf ef, g ef g c, ef c ef
      f16 af f af d, f d f bf, d bf d
      ef16 g ef g c, ef c ef a, c a c
      bf4~\> bf16 d\mp c ef d f ef g
      f16 g f ef d f ef f bf, bf' a bf
      %% Takt 210 =====================================================
      g16 bf g bf g af! g af f af f af
      ef16 g f af g bf ef, g c, ef d c
      bf8 r8 r4 r |
      R2.*7
      %% Takt 220 =====================================================
      r4 r g=,\mf
      d'2 bf4
      c2 d4
      ef2 c4
      d4. e8-. fs-. d-.
      %% Takt 225 =====================================================
      g8-. g-. d-. d-. ef!-. ef-.
      f8-. f-. c-. c-. d-. d-.
      ef8-. ef-. bf-. bf-. c-. c-.
      d4. d8 ef-. d-.
      c4 f a,
      %% Takt 230 =====================================================
      bf2 b4
      c8 af! ef\> ef f f
      g8-.\mp a-. b-. g-. c-. bf-.
      af!8-. c-. f,-. f'-. af,-. f'-.
      g,8-. ef'-. b-. b-. c-. c-.
      %% Takt 235 =====================================================
      r8 af'-. d,-. d-. e-. e-.
      r8 f-. c-. c-. d-. d-.
      ef!4->\mf af-> bf->
      ef,4-> f-> g->
      c,16\mp\< ef d f ef g f a g bf a c
      %% Takt 240 =====================================================
      bf8\! r r4 r8 ef,
      af,16\mp\< c bf d c ef d f ef g f af
      g8\! r r4 r8 c,
      f,16 af g bf af c bf d c ef d f
      ef4~ ef16 f d ef c4
      %% Takt 245 =====================================================
      d4~ d16 ef\mf c d bf4
      fs8 g d16 d' c d g, g' f! g
      ef16 g ef g ef f ef f d f d f
      c16 ef d f ef f ef f ef f ef f
      d8-. e-. fs-. d-. g-. g,-.
      %% Takt 250 =====================================================
      c8-. bf!-. a-. d-. bf-. g-.
      c8-. f-. bf,-. ef-. a,-. d-.
      g,-. f'!-. ef-. c-. d-. d,-.
      g4 r r8 g'
      c,4. d8 e c
      %% Takt 255 =====================================================
      f2 f,4->\f
      c'2-> af4->
      bf2-> c4->
      df2-> bf4->
      c4->\>~ c16 e d f e g e g\!
      %% Takt 260 =====================================================
      af,4~\mp af16 c bf df c df c df
      d,!4 e~ e16 e' d e
      f,4~ f16 f' e f c4
      d2 r16 ef\mf d ef
      c4\> d r16\! ef\mp d ef
      %% Takt 265 =====================================================
      c4\> d r16\! ef d ef
      c4\> d d,
      g8\! a b c d b
      c4 r r8 c\f
      f16-- af-- g-- bf-- af-- c-- g-- bf-- f-- af-- ef-- g--
      %% Takt 270 =====================================================
      d16-- f-- ef-- g-- f-- af-- ef-- g-- d-- f-- c-- ef--
      b4\> c af
      g4\! r16 g' f g c, c' bf! c
      af16 c af c af bf af bf g bf g bf
      f16 af g bf af bf af bf af bf af bf
      %% Takt 275 =====================================================
      g2.~
      g16 b\mp g b ef, g ef g c, ef c ef
      f16 af f af d, f d f b,\> d b d
      ef16 g ef g c, ef c ef a, c a c
      d16 f d f b, d b d g, b g b
      %% Takt 280 =====================================================
      c16\! ef c ef af, c af c f, af f af
      g4 r16 g\< b g c g ef' c
      g'4 r16 g f g ef g c, ef
      b4 r16 g' f g ef g c, ef
      g,4\! r16 g'^\markup { \italic rit. }\f f g ef g c, ef
      %% Takt 285 =====================================================
      f,8\fermata r^\markup { \italic { meno mosso } } r f' ef c
      f4 g g,
      c,4^\markup { \italic { à tempo } } r16 c'\< e c f c af' f
      c'4 r16 c bf c af c f, af
      e4\! r16 c'-4^\markup { \italic rit. } \ff bf c af c f, af
      %% Takt 290 =====================================================
      c,4 r16 c bf c af c f,-1 af-4^\markup { \italic Adagio } 
      << { r4
          % The following are viola cues:
          \set fontSize = #-5 { 
            \once \override TextScript #'extra-offset = #'(-1 . -4)
              r16^\markup { vla } af'= g af 
            }
          \normalsize f=4---4
           g2.-0-3 
         }
         \\
         { c,,=,2.~_\eyeglasses |
           c2._\fermata
         }
      >>
      \bar "|."
}