\version "2.12.2"
  \relative { 
    \time 6/8
    \key b \minor
    \set Staff.midiInstrument = "soprano sax"

    \tempo \markup { Prestissimo \normal-text \italic \tiny { (Gigue) } }

  % Again, like the last movement, this movement is two parts all the way
  % through, so I'm going to write it out that way:  first the entire top
  % part, then the entire lower part.

  % Except that each half is repeated, so I guess I'll do the piece in two halves.

  % Top part:
  \repeat volta 2 {
<<
{
  r2.
  fs'=''8-. fs-. gs-. a-. gs-. fs-. |
  b-. b-. cs-. d-. cs-. b-. |
  <g e>( <a cs,>) <fs d>-. <g b,>( <e cs>) <fs a,>-. |

  %%%%%% measure 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  <cs e,>(\> <d fs,>) <b d,>-. <as cs,>(\! fs')\p fs,-.\f |
  r4 r8 fs'-. fs-. gs-. |
  a-. g-. fs-. e-. d-. cs-. |
  d-. fs-. gs-. a-. b-. cs-. |

  %%%%%% measure 9 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  d-. d-. b-. cs-. cs-. a-. |
  b-. b-. g-. a-. a-. fs-. |
  g-. g-. e-. fs-. fs-. d-. |
  e-. e-. ds-. e-. b-. e-. |
  s4. <d fs, d>8-.\pp r8 r |
}
\\
{
  %% This is the start of the 2nd voice (the lower part): 
  b8-.\f b-. cs-. d-. cs-. b-. |
  a-. a-. cs-. fs-. cs-. a-. |
  <g fs'>-. r <g e'>-. r4 <fs ds'>8-. |
  e-. r r d r r |

  %%%%%% measure 5 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  s2. |
  b'8-. b-. cs-. 

%%%%%%%% The following is to make the 'written-out' crescendo:
%% set words for the cresc.
\set crescendoText = \markup { \normal-text \small { \italic sempre \dynamic f \italic { e poco a poco crescendo } } } 
\set crescendoSpanner = #'text
\override DynamicTextSpanner #'style = #'dashed-line  %% stretches it out with dashes.
	d-.\< cs-. b-. |
  a-. e'-. d-. cs-. b-. as-. |
  b-. d-. b-. cs-. d-. e-.\! |

  %%%%%% measure 9 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  fs-.\ff d-.
  % Change the words for the text decrescendo:
  \set decrescendoText = \markup { \small { \italic { poco a poco diminuendo } } }
  \set decrescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line  %% stretches it out with dashes.
  	d-.\> e-. cs-. cs-. |
  d-. b-. b-. cs-. a-. a-.
  b-. g-. g-. a-. fs-. fs-. 
  g-. e-. fs-. g-. fs-. e-. 
  \stemUp <a, e' cs'>-.\! <e' cs'>-. <g e'>-.
}
>>
  }  %% this is the end of the 1st section to be repeated.
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% Beginning of the 2nd section, also to be repeated: %%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  \repeat volta 2 {
    <<
      {
	%% Beginning of the top part
	s2. |
	fs''='''8-. fs-. e-. cs-. d-. e-. |
	d-. e-. b-. a-. g-. fs-. 
	e-. a,-. cs-. d-. cs-. c-. 
	b-. cs-. ds-. e-. ds-. d-.

        %%%%%% measure 19 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	cs-. cs-. d-. e-. gs-. a-.
	<fs cs>-.-> b,-. cs-. d-. cs-. b-.
	<e b>-.-> a,-. b-. cs-. b-. a-.
	a-. e'-. g,-. d'-. fs,-. cs'-.
	as( fs') r r4 r8 |

        %%%%%% measure 24 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	r2. |
	fs8-. fs-. gs-. a-. gs-. fs-. |
	b-. b-. cs-. d-. cs-. b-.
	<g e>( <a cs,>) <fs d>-. <g b,>( <e cs>) <fs a,>-. |
	s2. |

        %%%%%% measure 29 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	r4 r8 fs8-. fs-. gs-. |
	a-. g-. fs-. e-. d-. cs-. 
	d-. fs-. gs-. a-. b-. cs-.
	d-. d-. b-. cs-. cs-. a-.

        %%%%%% measure 33 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	b-. b-. g-. a-. a-. fs-.
	g-. g-. e-. fs-. fs-. d-.
	e-. e-. ds-. e-. b-. e-.
	s2.
      }
      \\
      {
	%% Beginning of the bottom part
	b'8^.\f b^. a^. g^. a^. b^. |
	as-._\markup { \italic sempre \dynamic f } fs-. gs-. a-. fs-. fs-. |
	b-. a-. g-. fs-. e-. d-. 
	cs-. a-.\p\< g-. fs-. g-. a-. |
	g-. g-. fs-. e-. fs-. gs-. 

  	%%%%%% measure 19 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	a-. a-. b-. cs-. b-. a-.\! |
	d,-.->\f d-.\p\< e-. fs-. e-. d-.\!
	cs-.->\f cs-.\p d-. e-. d-. cs-. |
	b-.\> g'-. a,-. fs'-. g,-. e'-.\! |
	fs-.\pp r es-.\< fs( gs) as-.\! |

  	%%%%%% measure 24 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	b-.\f b-. cs-. d-. cs-. b-.
	a-. a-. cs-. fs-. cs-. a-.
	<g fs'>-. r <g e'>-. r4 <fs ds'>8-. |
	e r r d r r\> |
	\stemUp <e cs'>( <fs d'>) <d b'>-.\! <cs as'>(\p fs')-. fs,-.\f |

  	%%%%%% measure 29 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	\stemDown b8-. b-. cs-. 

%%%%%%%% The following is to make the 'written-out' crescendo:
%% set words for the cresc.
\set crescendoText = \markup { \normal-text \small { \italic sempre \dynamic f \italic { e poco a poco crescendo } } }
\set crescendoSpanner = #'text
\override DynamicTextSpanner #'style = #'dashed-line  %% stretches it out with dashes.

		d-.\< cs-. b-.
	a-. e'-. d-. cs-. b-. as-. |
	b-. d-. b-. cs-. d-. e-.\! |
	fs-.\ff d-. d-. 

%%%%%%%% The following is to make the 'written-out' decrescendo:
%% set words for the decresc.
\set decrescendoText = \markup { \normal-text \small { \italic { poco a poco diminuendo } }  }
\set decrescendoSpanner = #'text
\override DynamicTextSpanner #'style = #'dashed-line  %% stretches it out with dashes.

		e-.\> cs-. cs-. |
	
  	%%%%%% measure 33 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	d-. b-. b-. cs-. a-. a-.
	b-. g-. g-. a-. fs-. fs-.
	g-. e-. fs-. g-. fs-. e-.
	\stemUp <e cs'>\! <e cs'>-. <cs as'>-. <d b'>-.\pp b'8\rest b\rest
      }
    >>
  }  %% end of 2nd section (repeated)
}    %% end of this movement (end of the notes in this file)
