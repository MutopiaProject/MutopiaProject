/*
 * Filename:         MutopiaMaps.java
 * Original author:  Chris Sawer
 *
 * Description:
 *   Class to set up licence, composer and style maps.
 */

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
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-column { \\abs-fontsize #10 \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\concat { \\abs-fontsize #8 www. \\abs-fontsize #11 MutopiaProject " +
                     "\\abs-fontsize #8 .org } \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\abs-fontsize #10 \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\concat { \\abs-fontsize #8 www. " +
                     "\\abs-fontsize #11 LilyPond \\abs-fontsize #8 .org }} by \\concat { \\maintainer . } \\hspace #0.5 Reference: \\footer } } \\line { \\abs-fontsize #8 " +
                     "\\line { This sheet music has been placed in the public domain by the typesetter, for details " +
      		     "\\concat { see: \\hspace #0.3 \\with-url #\"http://creativecommons.org/licenses/publicdomain\" http://creativecommons.org/licenses/publicdomain } } } } }");
      licenceMapNew.put("Creative Commons Attribution 3.0",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-column { \\abs-fontsize #10 \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\concat { \\abs-fontsize #8 www. \\abs-fontsize #11 MutopiaProject " +
                     "\\abs-fontsize #8 .org } \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\abs-fontsize #10 \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\concat { \\abs-fontsize #8 www. \\abs-fontsize " +
                     "#11 LilyPond \\abs-fontsize #8 .org }} by \\concat { \\maintainer . } \\hspace #0.5 Copyright \u00A9 " + now.get(Calendar.YEAR) + ". \\hspace " +
                     "#0.5 Reference: \\footer } } \\line { \\abs-fontsize #8 \\line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details " +
      		     "\\concat { see: \\hspace #0.3 \\with-url #\"http://creativecommons.org/licenses/by/3.0\" http://creativecommons.org/licenses/by/3.0 } } } } }");      
      licenceMapNew.put("Creative Commons Attribution-ShareAlike 3.0",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-column { \\abs-fontsize #10 \\line { Sheet " +
                     "music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\concat { \\abs-fontsize #8 www. \\abs-fontsize #11 MutopiaProject \\abs-fontsize #8 " +
                     ".org } \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. } \\line { " +
                     "\\abs-fontsize #10 \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\concat { \\abs-fontsize #8 www. \\abs-fontsize #11 LilyPond " +
                     "\\abs-fontsize #8 .org }} by \\concat { \\maintainer . } \\hspace #0.5 Copyright \u00A9 " + now.get(Calendar.YEAR) + ". \\hspace #0.5 Reference: " +
                     "\\footer } } \\line { \\abs-fontsize #8 \\line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details " +
                     "\\concat { see: \\hspace #0.3 \\with-url #\"http://creativecommons.org/licenses/by-sa/3.0\" http://creativecommons.org/licenses/by-sa/3.0 } } } } }");
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
