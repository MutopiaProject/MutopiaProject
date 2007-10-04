%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Clefs
%%
%% -d modern-clefs to use modern (only G and F) clefs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define *use-modern-clefs* (make-parameter (ly:get-option 'modern-clefs)))

ancientClef = #(define-music-function (parser location) ()
                (*use-modern-clefs* #f)
                (make-music 'SequentialMusic 'void #t))

modernClef = #(define-music-function (parser location) ()
                (*use-modern-clefs* #t)
                (make-music 'SequentialMusic 'void #t))

withClefTag = #(define-music-function (parser location music) (ly:music?)
                #{ \removeWithTag #$(*remove-clef-tag*) $music #})

%%% Voices

voixDessus =
 #(define-music-function (parser location music) (ly:music?)
    (if (*use-modern-clefs*)
        #{ \set Staff.forceClef = ##t \clef treble $music #}
        #{ \set Staff.forceClef = ##t \clef treble $music #}))

basDessus =
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \set Staff.forceClef = ##t \clef treble $music #}
   #{ \set Staff.forceClef = ##t \clef soprano $music #}))

petiteHauteContre =
 #(define-music-function (parser location music) (ly:music?)
   (if (*use-modern-clefs*)
    #{ \set Staff.forceClef = ##t \clef treble $music #}
    #{ \set Staff.forceClef = ##t \clef mezzosoprano $music #}))

voixHauteContre = 
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \set Staff.forceClef = ##t \clef "G_8" $music #}
   #{ \set Staff.forceClef = ##t \clef alto $music #}))

voixTaille = 
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \set Staff.forceClef = ##t \clef "G_8" $music #}
   #{ \set Staff.forceClef = ##t \clef tenor $music #}))

voixBasseTaille = 
#(define-music-function (parser location music) (ly:music?)
  (if (*use-modern-clefs*)
   #{ \set Staff.forceClef = ##t \clef bass $music #}
   #{ \set Staff.forceClef = ##t \clef varbaritone $music #}))

%%% Instruments

dessus = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \set Staff.forceClef = ##t \clef treble $music #}
            #{ \set Staff.forceClef = ##t \clef french $music #}))

hauteContre = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \set Staff.forceClef = ##t \clef treble $music #}
            #{ \set Staff.forceClef = ##t \clef soprano $music #}))

taille = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \set Staff.forceClef = ##t \clef alto $music #}
            #{ \set Staff.forceClef = ##t \clef mezzosoprano $music #}))

quinte = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \set Staff.forceClef = ##t \clef alto $music #}
            #{ \set Staff.forceClef = ##t \clef alto $music #}))

basse = #(define-music-function (parser location music) (ly:music?)
           (if (*use-modern-clefs*)
            #{ \set Staff.forceClef = ##t \clef bass $music #}
            #{ \set Staff.forceClef = ##t \clef bass $music #}))
