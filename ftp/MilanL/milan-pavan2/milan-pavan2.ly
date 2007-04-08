\header {
  lastupdated = "Time-stamp: \"milan-pavan2.ly was last updated on Sun, 17 Oct 1999 06:07am\"";
  filename =    "milan-pavan2.ly";
  title =       "Pavan 2";
  piece =       "Andante";
  opus =        "";
  composer =    "Luis Milan (1536-1561)";

%{ 
i know that 
  piece = "tempo";
isn't correct, but it looks better than attaching it to the first
note.
%}
    
  % needed by mutopia:

  mutopiainstrument =  "Vihuela, Guitar";
  mutopiacomposer =    "Luis Milan (1536-1561)";
  date =               "16th C.";
  style =              "Renaissance";
  copyright =          "public domain";  
  maintainer =         "jeff covey <jeff.covey@pobox.com>";
  tagline =            "\\\\This music is part of the Mutopia project, http://sca.uwaterloo.ca/Mutopia/\\\\It has been typeset and placed in the public domain by jeff covey.\\\\Unrestricted modification and redistribution is permitted and encouraged - copy this music and share it!";
}

\version "1.2.0";


% {{{ global settings

global = \notes {
  \key d; \time 3/2;
  \skip 1.*24;
  \bar ":|";
}
midi_stuff = \context Staff = guitar {
  \property Staff.midiInstrument = "acoustic guitar (nylon)"
  \property Staff.transposing = -12 % guitar music actually sounds an
                                    % octave lower than written.
}

% }}}
  
% {{{ melody

melody = \notes \relative c'' {
  \stemup
  
  fis2 fis g fis1 g2 fis e d cis4 d cis b a gis
  e'2 e d4 cis b1 a2 d1 cis2 d1.
  fis4 g a fis g2
  fis4 g a fis g2
  fis2 e d cis1. e2 e d4 cis b a b cis d2 a' a1 d,1.

  fis1 g2 fis1 g2 fis e d cis1.
  e2 e d4 cis b1 e2 d1 cis2 d1.
      
}

% }}}
% {{{ middle voice

middlevoice = \notes \relative c'' {  
  \stemup
  
  <a2 d> <a d> <b d> <a1 d> <b2 d> <a d> a gis <e1 a> r2
  \stemdown
  a4 d cis b fis2 <d1 g> 
  \stemup
  fis2
  \stemdown
  g <e1 a> <fis1. a>
  
  d'1 b4 cis d1 b4 cis
  <a2 d> g fis a4 e fis gis a gis a2 a fis
  \stemup
  g4 \skip 4*3;
  \stemdown
  a g <{fis2 e1} {d'1 cis2}>
  
  \skip 1.*2; d'1 d2 r4 d cis a2 gis4
  a gis fis e fis gis a b cis a fis2
  \skip 1*1; a4 g
  fis2 <a1 e> <a1. fis>

}

% }}}
% {{{ bass

bass = \notes \relative c' {
  \stemdown
  
  d2 d g, d'1 g,2 d' cis b a1.
  a1 d2 g,4 a b c d2 b a1 d1.
  
  d1 e2 d1 e2 
  d1 fis2 a,1. a4 b cis a b2 <g1 d'> d'2 \skip 2*1; a1 d1.
  
  d'4 cis b a b cis
  d,4 c b a b c
  d2 a b a1. \skip 1.*1; g'4 fis e d cis2 d a1 d1.

}

% }}}
        
\score {
 
      \context Staff = guitar < 
        \global 
        \context Voice=melody      { \melody      }
        \context Voice=middlevoice { \middlevoice }
        \context Voice=bass        { \bass        }
      >

  \paper {
    linewidth = 18.0 \cm;
    gourlay_maxmeasures =4.;
    \translator { \BarNumberingStaffContext }
  }
}

\score {
  \context Staff = guitar < 
    \midi_stuff
    \global 
    \melody
    \middlevoice
    \bass
  >
  \midi { \tempo 4=150; }
}
