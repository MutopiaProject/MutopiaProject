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

%%% Clefs

solDeux =
 #(define-music-function (parser location) ()
    (if (*use-modern-clefs*)
        #{ \clef treble #}
        #{ \clef treble #}))

solUn =
 #(define-music-function (parser location) ()
    (if (*use-modern-clefs*)
        #{ \clef treble #}
        #{ \clef french #}))

utUn =
 #(define-music-function (parser location) ()
    (if (*use-modern-clefs*)
        #{ \clef treble #}
        #{ \clef soprano #}))

utDeux =
 #(define-music-function (parser location) ()
    (if (*use-modern-clefs*)
        #{ \clef alto #}
        #{ \clef mezzosoprano #}))

utTrois =
 #(define-music-function (parser location) ()
    (if (*use-modern-clefs*)
        #{ \clef alto #}
        #{ \clef alto #}))

utQuatre =
 #(define-music-function (parser location) ()
    (if (*use-modern-clefs*)
        #{ \clef "G_8" #}
        #{ \clef tenor #}))

faTrois =
 #(define-music-function (parser location) ()
    (if (*use-modern-clefs*)
        #{ \clef bass #}
        #{ \clef varbaritone #}))

faQuatre =
 #(define-music-function (parser location) ()
    (if (*use-modern-clefs*)
        #{ \clef bass #}
        #{ \clef bass #}))
