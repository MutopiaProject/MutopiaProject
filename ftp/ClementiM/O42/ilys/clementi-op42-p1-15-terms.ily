\version "2.16.0"

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneVariousTerms = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{
    	    The \caps degree of velocity in every composition is ascertained by some \caps Italian 
    	    word or words prefixed to it: as \caps Adagio, \caps "Poco Allegro", etc.  We shall annex 
    	    a list of the terms mostly in use; beginning by the \caps slowest degree, which is 
    	    \caps Adagio; and gradually proceeding to the \caps quickest, which is
    	    \caps Prestissimo. _______________________________________
    }
    \paragraph{" "}
    \paragraph{
    	    \column {
    	    	    \line{ "1  " \caps Adagio  }
    	    	    \line{ "2  " \caps Grave }
    	    	    \line{ "3  " \caps Largo }
    	    	    \line{ "4  " \caps Lento }
    	    	    \line{ "5  " \caps Larghetto }
    	    }
    	    \column {
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    }
    	    \column {
    	    	    \line{ " 6  " \caps Andantino  }
    	    	    \line{ " 7  " \caps Andante }
    	    	    \line{ " 8  " \caps Allegretto }
    	    	    \line{ " 9  " \caps Moderato }
    	    	    \line{ "10 " \caps "Tempo giusto" }
    	    }
    	    \column {
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    }
    	    \column {
    	    	    \line{ "11  " \caps Maestoso  }
    	    	    \line{ "12 " \caps "Con commodo" }
    	    	    \line{ "13 " \caps Allegro }
    	    	    \line{ "14 " \caps Vivace }
    	    	    \line{ "15 " \caps "Con spirito" }
    	    }
    	    \column {
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    	    \line{ "   " }
    	    }
    	    \column {
    	    	    \line{ "16  " \caps Spiritoso  }
    	    	    \line{ "17 " \caps "Con Brio" }
    	    	    \line{ "18 " \caps "Con Fuoco" }
    	    	    \line{ "19 " \caps Presto }
    	    	    \line{ "20 " \caps Prestissimo }
    	    }
    }
    \paragraph{" "}
    \paragraph{
    	    Various other terms are sometimes added to the preceding, in order to 
    	    \caps modify or extend their meaning, as: \caps "Non Troppo Allegro", not too quick etc.
    }
    \paragraph{" "}
    \paragraph{
    	    We shall subjoin some of the most common, with their explanation.
    }
    \paragraph{
    	    \caps "Molto, di molto", or \caps Assai, very.  \caps " Non troppo", not too much.
    	    \caps "Un poco", a little.  \caps " Quasi", almost. \concat{ \caps Pi \caps \char #249 , } more. 
    	    \caps Meno, less. \concat{ \caps Pi \caps \char #249  } \caps tosto,  rather.  \caps Sempre, always. 
    	    \caps Ma, but.  \caps Con, with.  \caps Senza, without.  \caps "Minuetto a tempo di ballo," 
    	    dancing-minuet time.
    }
    \paragraph{" "}
    \paragraph{
    	    To determine more particularly the style of performing, some of the following terms are also used: 
    	    \caps "  Mesto," or \caps Flebile, in a melancholy style.  \caps Cantabile, in a singing and graceful 
    	    manner.  \caps "  Affettuoso," in an affecting and tender manner. \caps "  Grazioso," in a graceful 
    	    and elegant manner. \caps "  Con moto," with a certain degree of vivacity. \caps "  Brillante," with
    	    brilliancy and spirit. \caps "  Aggitato," agitated; with passion and fire. \caps "  Con espressione," 
    	    or \caps "con anima," with expression; that is, with passionate feeling; where every note has its 
    	    peculiar force and energy; and where even the severity of time may be relaxed for extraordinary 
    	    effects. \caps "  Scherzando," in playful and light manner. \caps "  Sostenuto," to sustain, or hold on, 
    	    the notes their full length. \caps "  Tenuto," or abbreviated thus, \caps ten: to hold a note its 
    	    full length. \caps "  A tempo," in strict time. \caps "  Ad libitum," at pleasure or discretion, with 
    	    regard to time; introducing in certain cases an embelishment. \caps "  Tempo primo," or 
    	    \caps "Primo tempo," in the original time. \caps " Rallentando" or \caps Ritardando, gradually 
    	    slackening the time.
    }
    \paragraph{" "}
    \paragraph{
    	    \caps "Smorzando, Morendo" or \caps Perdendosi, extinguishing gradually the sound, 'till it
    	    be almost lost. \caps "  Calando," or \caps mancando, diminishing by degrees the sound, or 
    	    slackening almost imperceptibly the time; or both. \caps "  Da Capo," abbreviated thus: 
    	    \caps "D.C.," to return to, and end with, the first strain. \caps "  Volti subito" or 
    	    \caps "V.S." turn over quickly.  The \caps Latin word \caps Bis, means \caps twice; it is 
    	    generally placed over a passage within a curve line, which denotes the extent of the repeat.
    }
    \paragraph{" "}
  }
}
