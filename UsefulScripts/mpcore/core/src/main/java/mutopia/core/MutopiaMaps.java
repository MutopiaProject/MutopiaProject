/*
 * Filename:         MutopiaMaps.java
 * Original author:  Chris Sawer
 *
 * Description:
 *   Class to set up licence, composer and style maps.
 */

package mutopia.core;

import java.io.*;
import java.util.*;

public class MutopiaMaps
{
   public static Map<String, String> licenceMapVOld = new HashMap<String, String>();
   public static Map<String, String> licenceMapOld = new HashMap<String, String>();
   public static Map<String, String> licenceMapNew = new HashMap<String, String>();
   public static Map<String, String> composerMap = new HashMap<String, String>();
   public static Map<String, String> styleMap = new HashMap<String, String>();
   
   static
   {
      initialiseLicenceMap();
      readDatFileIntoMap("composers.dat", composerMap);
      readDatFileIntoMap("styles.dat", styleMap);
   }
   
   private static void initialiseLicenceMap()
   {
      Calendar now = Calendar.getInstance();

      licenceMapVOld.put("Public Domain",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-align { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Reference: \\footer } } \\line { \\teeny \\line { This sheet " +
                     "music has been placed in the public domain by the typesetter, for details see: \\hspace #-0.5 \\with-url " +
                     "#\"http://creativecommons.org/licenses/publicdomain\" http://creativecommons.org/licenses/publicdomain } } } }");
      licenceMapVOld.put("Creative Commons Attribution 3.0",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-align { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Copyright \u00A9 " + now.get(Calendar.YEAR) + ". \\hspace " +
                     "#0.5 Reference: \\footer } } \\line { \\teeny \\line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: " +
                     "\\hspace #-0.5 \\with-url #\"http://creativecommons.org/licenses/by/3.0\" http://creativecommons.org/licenses/by/3.0 } } } }");
      licenceMapVOld.put("Creative Commons Attribution-ShareAlike 3.0",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-align { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Copyright \u00A9 " + now.get(Calendar.YEAR) + ". \\hspace " +
                     "#0.5 Reference: \\footer } } \\line { \\teeny \\line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details " +
                     "see: \\hspace #-0.5 \\with-url #\"http://creativecommons.org/licenses/by-sa/3.0\" http://creativecommons.org/licenses/by-sa/3.0 } } } }");
      
      licenceMapOld.put("Public Domain",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-column { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Reference: \\footer } } \\line { \\teeny \\line { This sheet " +
                     "music has been placed in the public domain by the typesetter, for details see: \\hspace #-0.5 \\with-url " +
                     "#\"http://creativecommons.org/licenses/publicdomain\" http://creativecommons.org/licenses/publicdomain } } } }");
      licenceMapOld.put("Creative Commons Attribution 3.0",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-column { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Copyright \u00A9 " + now.get(Calendar.YEAR) + ". \\hspace " +
                     "#0.5 Reference: \\footer } } \\line { \\teeny \\line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: " +
                     "\\hspace #-0.5 \\with-url #\"http://creativecommons.org/licenses/by/3.0\" http://creativecommons.org/licenses/by/3.0 } } } }");
      licenceMapOld.put("Creative Commons Attribution-ShareAlike 3.0",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-column { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Copyright \u00A9 " + now.get(Calendar.YEAR) + ". \\hspace " +
                     "#0.5 Reference: \\footer } } \\line { \\teeny \\line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details " +
                     "see: \\hspace #-0.5 \\with-url #\"http://creativecommons.org/licenses/by-sa/3.0\" http://creativecommons.org/licenses/by-sa/3.0 } } } }");
      
      licenceMapNew.put("Public Domain",
                     "copyright =  \\markup { \\override #'(baseline-skip . 0 ) \\right-column { \\sans \\bold \\with-url #\"http://www.MutopiaProject.org\" { " +
                     "\\abs-fontsize #9  \"Mutopia \" \\concat { \\abs-fontsize #12 \\with-color #white \\char ##x01C0 \\abs-fontsize #9 \"Project \" } } } " +
                     "\\override #'(baseline-skip . 0 ) \\center-column { \\abs-fontsize #11.9 \\with-color #grey \\bold { \\char ##x01C0 \\char ##x01C0 } } " +
                     "\\override #'(baseline-skip . 0 ) \\column { \\abs-fontsize #8 \\sans \\concat { \" Typeset using \" \\with-url #\"http://www.lilypond.org\" " +
                     "\"LilyPond\" \" by \" \\maintainer \" \" \\char ##x2014 \" \" \\footer } \\concat { \\concat { \\abs-fontsize #8 \\sans{ \" Placed in the \" " +
                     "\\with-url #\"http://creativecommons.org/licenses/publicdomain\" \"public domain\" \" by the typesetter \" \\char ##x2014 \" free to " +
                     "distribute, modify, and perform\" } } \\abs-fontsize #13 \\with-color #white \\char ##x01C0 } } }");
      licenceMapNew.put("Creative Commons Attribution 3.0",
                     "copyright =  \\markup { \\override #'(baseline-skip . 0 ) \\right-column { \\sans \\bold \\with-url #\"http://www.MutopiaProject.org\" { " +
                     "\\abs-fontsize #9  \"Mutopia \" \\concat { \\abs-fontsize #12 \\with-color #white \\char ##x01C0 \\abs-fontsize #9 \"Project \" } } } " +
                     "\\override #'(baseline-skip . 0 ) \\center-column { \\abs-fontsize #11.9 \\with-color #grey \\bold { \\char ##x01C0 \\char ##x01C0 } } " +
                     "\\override #'(baseline-skip . 0 ) \\column { \\abs-fontsize #8 \\sans \\concat { \" Typeset using \" \\with-url #\"http://www.lilypond.org\" " +
                     "\"LilyPond \" \\char ##x00A9 \" \" " + now.get(Calendar.YEAR) + " \" by \" \\maintainer \" \" \\char ##x2014 \" \" \\footer } \\concat { " + 
                     "\\concat { \\abs-fontsize #8 \\sans { \" \" \\with-url #\"http://creativecommons.org/licenses/by/3.0/\" \"Creative Commons Attribution 3.0 " +
                     "(Unported) License \" \\char ##x2014 \" free to distribute, modify, and perform\" } } \\abs-fontsize #13 \\with-color #white \\char ##x01C0 " +
                     "} } }");
      licenceMapNew.put("Creative Commons Attribution-ShareAlike 3.0",
                     "copyright =  \\markup { \\override #'(baseline-skip . 0 ) \\right-column { \\sans \\bold \\with-url #\"http://www.MutopiaProject.org\" { " +
                     "\\abs-fontsize #9  \"Mutopia \" \\concat { \\abs-fontsize #12 \\with-color #white \\char ##x01C0 \\abs-fontsize #9 \"Project \" } } } " +
                     "\\override #'(baseline-skip . 0 ) \\center-column { \\abs-fontsize #11.9 \\with-color #grey \\bold { \\char ##x01C0 \\char ##x01C0 } } " +
                     "\\override #'(baseline-skip . 0 ) \\column { \\abs-fontsize #8 \\sans \\concat { \" Typeset using \" \\with-url #\"http://www.lilypond.org\" " +
                     "\"LilyPond \" \\char ##x00A9 \" \" " + now.get(Calendar.YEAR) + " \" by \" \\maintainer \" \" \\char ##x2014 \" \" \\footer } \\concat { " +
                     "\\concat { \\abs-fontsize #8 \\sans { \" \" \\with-url #\"http://creativecommons.org/licenses/by-sa/3.0/\" \"Creative Commons Attribution " +
                     "ShareAlike 3.0 (Unported) License \" \\char ##x2014 \" free to distribute, modify, and perform\" } } \\abs-fontsize #13 \\with-color #white " +
                     "\\char ##x01C0 } } }");
      licenceMapNew.put("Creative Commons Attribution 4.0",
                     "copyright =  \\markup { \\override #'(baseline-skip . 0 ) \\right-column { \\sans \\bold \\with-url #\"http://www.MutopiaProject.org\" { " +
                     "\\abs-fontsize #9  \"Mutopia \" \\concat{ \\abs-fontsize #12 \\with-color #white \\char ##x01C0 \\abs-fontsize #9 \"Project \" } } } " +
                     "\\override #'(baseline-skip . 0 ) \\center-column { \\abs-fontsize #11.9 \\with-color #grey \\bold { \\char ##x01C0 \\char ##x01C0 } } " +
                     "\\override #'(baseline-skip . 0 ) \\column { \\abs-fontsize #8 \\sans \\concat { \" Typeset using \" \\with-url #\"http://www.lilypond.org\" " +
                     "\"LilyPond \" \\char ##x00A9 \" \" " + now.get(Calendar.YEAR) + " \" by \" \\maintainer \" \" \\char ##x2014 \" \" \\footer } \\concat { " + 
                     "\\concat { \\abs-fontsize #8 \\sans { \" \" \\with-url #\"http://creativecommons.org/licenses/by/4.0/\" \"Creative Commons Attribution " +
                     "4.0 International License \" \\char ##x2014 \" free to distribute, modify, and perform\" } } \\abs-fontsize #13 \\with-color #white " +
                     "\\char ##x01C0 } } }");
      licenceMapNew.put("Creative Commons Attribution-ShareAlike 4.0",
                     "copyright =  \\markup { \\override #'(baseline-skip . 0 ) \\right-column { \\sans \\bold \\with-url #\"http://www.MutopiaProject.org\" { " +
                     "\\abs-fontsize #9  \"Mutopia \" \\concat { \\abs-fontsize #12 \\with-color #white \\char ##x01C0 \\abs-fontsize #9 \"Project \" } } } " +
                     "\\override #'(baseline-skip . 0 ) \\center-column { \\abs-fontsize #11.9 \\with-color #grey \\bold { \\char ##x01C0 \\char ##x01C0 } } " +
                     "\\override #'(baseline-skip . 0 ) \\column { \\abs-fontsize #8 \\sans \\concat { \" Typeset using \" \\with-url #\"http://www.lilypond.org\" " +
                     "\"LilyPond \" \\char ##x00A9 \" \" " + now.get(Calendar.YEAR) + " \" by \" \\maintainer \" \" \\char ##x2014 \" \" \\footer } \\concat { " + 
                     "\\concat { \\abs-fontsize #8 \\sans{ \" \" \\with-url #\"http://creativecommons.org/licenses/by-sa/4.0/\" \"Creative Commons Attribution " +
                     "ShareAlike 4.0 International License \" \\char ##x2014 \" free to distribute, modify, and perform\" } } \\abs-fontsize #13 " +
                     "\\with-color #white \\char ##x01C0 } } }");
      licenceMapNew.put("Creative Commons Public Domain Dedication 1.0",
                     "copyright =  \\markup { \\override #'(baseline-skip . 0 ) \\right-column { \\sans \\bold \\with-url #\"http://www.MutopiaProject.org\" { " +
                     "\\abs-fontsize #9  \"Mutopia \" \\concat { \\abs-fontsize #12 \\with-color #white \\char ##x01C0 \\abs-fontsize #9 \"Project \" } } } " +
                     "\\override #'(baseline-skip . 0 ) \\center-column { \\abs-fontsize #11.9 \\with-color #grey \\bold { \\char ##x01C0 \\char ##x01C0 } } " +
                     "\\override #'(baseline-skip . 0 ) \\column { \\abs-fontsize #8 \\sans \\concat { \" Typeset using \" \\with-url #\"http://www.lilypond.org\" " +
                     "\"LilyPond\" \" by \" \\maintainer \" \" \\char ##x2014 \" \" \\footer } \\concat { \\concat { \\abs-fontsize #8 \\sans { \" \" " +
                     "\\with-url #\"http://creativecommons.org/publicdomain/zero/1.0/\" \"Creative Commons Public Domain Dedication 1.0 (CC0 Universal) \" " +
                     "\\char ##x2014 \" free to distribute, modify, and perform\" } } \\abs-fontsize #13 \\with-color #white \\char ##x01C0 } } }");
      licenceMapNew.put("Creative Commons Public Domain Mark 1.0",
      	             "copyright =  \\markup { \\override #'(baseline-skip . 0 ) \\right-column { \\sans \\bold \\with-url #\"http://www.MutopiaProject.org\" { " +
                     "\\abs-fontsize #9  \"Mutopia \" \\concat { \\abs-fontsize #12 \\with-color #white \\char ##x01C0 \\abs-fontsize #9 \"Project \" } } } " +
                     "\\override #'(baseline-skip . 0 ) \\center-column { \\abs-fontsize #11.9 \\with-color #grey \\bold { \\char ##x01C0 \\char ##x01C0 } } " +
                     "\\override #'(baseline-skip . 0 ) \\column { \\abs-fontsize #8 \\sans \\concat { \" Typeset using \" \\with-url #\"http://www.lilypond.org\" " +
                     "\"LilyPond\" \" by \" \\maintainer \" \" \\char ##x2014 \" \" \\footer } \\concat { \\concat { \\abs-fontsize #8 \\sans { \" \" " +
                     "\\with-url #\"http://creativecommons.org/publicdomain/mark/1.0/\" \"Creative Commons Public Domain Mark 1.0 \" \\char ##x2014 " +
                     "\" free to distribute, modify, and perform\" } } \\abs-fontsize #13 \\with-color #white \\char ##x01C0 } } }");
   }

   private static void readDatFileIntoMap(String datFile, Map<String, String> map)
   {
      // Get directory
      String mutopiaDir = System.getenv("MUTOPIA_BASE");
      if (mutopiaDir == null)
      {
         throw new RuntimeException("MUTOPIA_BASE not set");
      }
      String filename = mutopiaDir + "/datafiles/" + datFile;

      try
      {
         // Open file
         BufferedReader dataFile = new BufferedReader(new InputStreamReader(new FileInputStream(filename), "UTF-8"));

         // Read key/value pairs
         String key = dataFile.readLine();
         String value = dataFile.readLine();
         while (key != null) // key == null at end of file
         {
            // Check value and put into map
            if (value != null)
            {
               map.put(key, value);
            }
            else
            {
               System.err.println("Inconsistency in data file: " + filename);
            }

            key = dataFile.readLine();
            value = dataFile.readLine();
         }

         dataFile.close();
      }
      catch (FileNotFoundException ex)
      {  
         System.err.println("Data file " + filename + " not found");
      }
      catch (IOException ex)
      {  
         System.err.println(ex);
      }
   }
}
