/** Generate copyright strings.
 * <p>A <code>CCGenerator</code> can generate a copyright string from
 * a given tag.</p>
 * 
 */
public interface CCGenerator {

    /** Get a copyright string from a tag
     * @param ccTag - key to use for copyright text lookup
     * @return a string of copyright text based on the tag value
     * @throws RuntimeException if the tag cannot be generated
     */
    public String getCopyright(String ccTag ) throws RuntimeException;

    /** Check existence of a copyright key
     * @param ccTag - copyright tag/key to lookup
     * @return true if the generator can create a copyright from this tag
     */
    public boolean hasCopyright(String ccTag);
}
