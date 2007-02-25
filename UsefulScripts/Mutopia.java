import java.io.*;
import java.util.*;

public class Mutopia
{
   // TODO: Use LILYPOND_BASE environment variable, and handle multiple versions
   private String lilyCommandLine = "/Applications/LilyPond/LilyPond.app/Contents/Resources/bin/lilypond";

   public static void main(String[] args)
   {
      Mutopia mutopia = new Mutopia();
      
      if ((args.length < 2) || (!args[0].startsWith("-")))
      {
         System.err.println("Arguments must be: -d, -f, -c or -r followed by .ly file(s)");
      }
      else
      {
         if (args[0].contains("d"))
         {
            for (int i = 1; i < args.length; i++)
            {
               mutopia.moveIntoDirectory(args[i]);
            }
         }
         
         if (args[0].contains("f"))
         {
            for (int i = 1; i < args.length; i++)
            {
               mutopia.fixFooter(args[i]);
            }
         }
         
         if (args[0].contains("c"))
         {
            for (int i = 1; i < args.length; i++)
            {
               mutopia.checkFields(args[i]);
            }
         }
         
         if (args[0].contains("r"))
         {
            for (int i = 1; i < args.length; i++)
            {
               mutopia.createRDF(args[i], args[i].substring(0, args[i].length() - 3) + ".rdf");
            }
         }
      }
   }
   
   public void moveIntoDirectory(String filename)
   {
      if (!filename.endsWith(".ly"))
      {
         System.err.println("File is not a .ly file");
      }
      else
      {
         File lyFile = new File(filename);
         File directory = new File(filename.substring(0, filename.length() - 3));
         File lyNewFile = new File(directory + File.separator + filename);
         
         if (!lyFile.isFile())
         {
            System.err.println("File " + filename + " not found");
         }
         else if (!directory.mkdir())
         {
            System.err.println("Unable to create directory");
         }
         else
         {
            // Move the file into the new directory
            if (!lyFile.renameTo(lyNewFile))
            {
               System.err.println("Unable to move file " + filename);
            }
         }
      }
   }
   
   public void fixFooter(String filename)
   {
      int headerStart = -1;
      int headerEnd = -1;
      int nestedLevel = 0;
      String licence = null;
      String idString = null;
      
      // Rename file
      File tempFile = new File(filename + "o");
      File lyFile = new File(filename);
      lyFile.renameTo(tempFile);
      
      // Process file
      System.out.println("Processing " + filename);
      try
      {
         BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(tempFile), "UTF-8"));
         BufferedWriter out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(lyFile), "UTF-8"));
         
         String nextLine = in.readLine();
         for (int i = 0; nextLine != null; i++)
         {
            boolean writeThisLine = true;
            
            if (nextLine.matches("\\s*\\\\header\\s*\\{\\s*")) // Start of header
            {
               headerStart = i;
            }
            else if (nextLine.matches("\\s*\\\\header\\s*")) // Start of header
            {
               headerStart = i;
               nestedLevel--; // Header line doesn't include { so it'll be picked up as a nested bracket below
            }
            else if ((headerStart > -1) && (headerEnd == -1)) // Inside header
            {
               if (nextLine.matches(".*\\{")) // Start of nested brackets
               {
                  nestedLevel++;
               }
               else if (nextLine.matches("\\s*\\}\\s*")) // End of nested brackets or header
               {
                  if (nestedLevel > 0) // End of nested brackets
                  {
                     nestedLevel--;
                  }
                  else // End of header
                  {
                     headerEnd = i;
                     
                     // Write out footer
                     if (idString == null)
                     {
                        System.out.println("No ID found: please input one");
                        idString = new Scanner(System.in).next();
                     }
                     out.write(" footer = \"Mutopia-" + getDateStringNow() + "-" + idString + "\"");
                     out.newLine();
                     
                     // Write out tagline
                     if ((licence == null) || (!MutopiaMaps.licenceMap.keySet().contains(licence)))
                     {
                        System.out.println("Warning: Writing empty tagline");
                        out.write(" tagline = \"\"");
                        out.newLine();
                     }
                     else
                     {
                        out.write(" " + MutopiaMaps.licenceMap.get(licence));
                        out.newLine();
                     }
                  }
               }
               else if (nextLine.matches("\\s*copyright\\s*=\\s*\".*\"\\s*")) // Copyright field
               {
                  licence = nextLine.split("\"")[1];
               }
               else if (nextLine.matches("\\s*footer\\s*=.*")) // Footer field
               {
                  // Extract the piece ID if possible
                  if (nextLine.matches("\\s*footer\\s*=\\s*\"Mutopia-.*-.*\"\\s*"))
                  {
                     String foundIdString = nextLine.split("-")[2].split("\"")[0];
                     
                     // If we have an integer, set the idString field
                     try
                     {
                        Integer.parseInt(foundIdString); // Throws exception if ID found is not an integer
                        idString = foundIdString;
                        System.out.println("Found ID " + idString + " from footer: " + nextLine);
                     }
                     catch (NumberFormatException ex)
                     {
                        System.out.println("Warning: discarding malformed footer field: " + nextLine);
                     }
                  }
                  else
                  {
                     System.out.println("Warning: discarding footer field: " + nextLine);
                  }
                  
                  writeThisLine = false;
               }
               else if (nextLine.matches("\\s*tagline\\s*=.*")) // Tagline field
               {
                  System.out.println("Warning: discarding tagline field: " + nextLine);
                  writeThisLine = false;
               }
            }
            
            if (writeThisLine)
            {
               out.write(nextLine);
               out.newLine();
            }
            
            nextLine = in.readLine();
         }
         
         in.close();
         out.close();
      }
      catch (FileNotFoundException ex)
      {
         System.err.println("File not found");
      }
      catch (IOException ex)
      {
         System.err.println(ex);
      }
      
      // Possible problems
      if (headerEnd == -1)
      {
         System.err.println("Unable to find end of header: leaving temporary file");
      }
      else
      {
         tempFile.delete();
      }
   }
   
   private String getDateStringNow()
   {
      Calendar now = Calendar.getInstance();
      int year = now.get(Calendar.YEAR);
      int month = now.get(Calendar.MONTH) + 1;
      int day = now.get(Calendar.DAY_OF_MONTH);
      return year + "/" + (month < 10 ? "0" : "") + month + "/" + (day < 10 ? "0" : "") + day;
   }
   
   public void checkFields(String filenameIn)
   {
      try
      {
         // Open files
         BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(filenameIn), "UTF-8"));
         
         MutopiaPiece myPiece = new MutopiaPiece(filenameIn);
         String nextLine = in.readLine();
         while (nextLine != null)
         {
            if (isField(nextLine))
            {
               addFieldToPiece(myPiece, nextLine);
            }
            nextLine = in.readLine();
         }
         in.close();
         
         myPiece.checkFieldConsistency();
      }
      catch (FileNotFoundException ex)
      {
            System.err.println("File not found");
      }
      catch (IOException ex)
      {
            System.err.println(ex);
      }
   }
   
   public void createRDF(String filenameIn, String filenameOut)
   {
      try
      {
         // Open files
         BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(filenameIn), "UTF-8"));
         BufferedWriter out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filenameOut), "UTF-8"));
         
         MutopiaPiece myPiece = new MutopiaPiece(filenameIn);
         String nextLine = in.readLine();
         while (nextLine != null)
         {
            if (isField(nextLine))
            {
               addFieldToPiece(myPiece, nextLine);
            }
            nextLine = in.readLine();
         }
         
         in.close();
         
         myPiece.deriveCompileStuff(lilyCommandLine);
         
         if (myPiece.checkFieldConsistency() && myPiece.checkCompileConsistency())
         {
            MutopiaRDF.outputRDF(myPiece, out);
         }
         else
         {
            System.err.println("Consistency checks failed");
         }
         
         out.close();
      }
      catch (FileNotFoundException ex)
      {
         System.err.println("File not found");
      }
      catch (IOException ex)
      {
         System.err.println(ex);
      }
   }
   
   private boolean isField(String unparsedLine)
   {
      return unparsedLine.matches("\\s*\\w+\\s*=\\s*\".*\"\\s*");
   }
   
   private boolean addFieldToPiece(MutopiaPiece myPiece, String unparsedLine)
   {
      // Strip out empty fields
      if (unparsedLine.contains("\"\""))
      {
         return false;
      }
      
      String field = unparsedLine.trim().split("\\s*=")[0];
      String value = unparsedLine.split("\"")[1];
      
      myPiece.populateField(field, value);
      
      return true;
   }
}
