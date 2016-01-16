Þ          ü               Ü     Ý     ð       ó   $  »        Ô  R  _  )   ²  I   Ü     &     ¨  W   ¸      æ   ,	  2  
  ·   F  +   þ  2   *  7   ]       ,   ¯  "   Ü  "   ÿ     "     3     D  #   ]              8  á   9  H      d  ¨     É  *  E   ô  v   :  ´   ±     f  b   y  ¢  Ü  L      Ì  Ë   Y  9   %  *   _  T     *   ß  <   
  0   G  0   x  !   ©     Ë     Þ  6   ý   BaseSearch Methods Called by :meth:`feed` to add a document to the search index. This method should should do everything necessary to add a single document to the search index. Called by :meth:`query` to retrieve search results for a search query `q`. This should return an iterable containing tuples of the following format:: Called by the builder to add a doctree to the index. Converts the `doctree` to text and passes it to :meth:`add_document`. You probably won't want to override this unless you need access to the `doctree`. Override :meth:`add_document` instead. Called by the builder to initialize the search indexer. `changed` is a list of pagenames that will be reindexed. You may want to remove these from the search index before indexing begins. Called by the builder when writing has been completed. Use this to perform any finalization or cleanup actions after indexing is complete. Called by the web support api to get search results. This method compiles the regular expression to be used when :meth:`extracting context <extract_context>`, then calls :meth:`handle_query`.  You won't want to override this unless you don't want to use the included :meth:`extract_context` method.  Override :meth:`handle_query` instead. Defines an interface for search adapters. Extract the context for the search query from the document's full `text`. For more information about creating a custom search adapter, please see the documentation of the :class:`BaseSearch` class below. Search Adapters The :meth:`extract_context` method is provided as a simple way to create the `context`. The following methods are defined in the BaseSearch class. Some methods do not need to be overridden, but some (:meth:`~BaseSearch.add_document` and :meth:`~BaseSearch.handle_query`) must be overridden in your subclass. For a working example, look at the built-in adapter for whoosh. To create a custom search adapter you will need to subclass the :class:`BaseSearch` class.  Then create an instance of the new class and pass that as the `search` keyword argument when you create the :class:`~.WebSupport` object:: `pagename` is name of the page being indexed. It is the combination of the source files relative path and filename, minus the extension. For example, if the source file is "ext/builders.rst", the `pagename` would be "ext/builders". This will need to be returned with search results when processing a query. `path` and `title` are the same values that were passed to :meth:`add_document`, and `context` should be a short text snippet of the text surrounding the search query in the document. a list of pagenames that will be re-indexed is the docutils doctree representation of the page the full text of the document to create the context for the full text of the page the length of the context snippet to return. the name of the page being indexed the name of the page to be indexed the page's title the search query the search query string. the title of the page to be indexed Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2015-09-11 03:39+0000
Last-Translator: Takayuki Shimizukawa <shimizukawa@gmail.com>
Language-Team: Japanese (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/ja/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 BaseSearchã®ã¡ã½ãã :meth:`feed` ã«ãã£ã¦å¼ã°ããæ¤ç´¢ã¤ã³ããã¯ã¹ã«ãã­ã¥ã¡ã³ããè¿½å ãã¾ãããã®é¢æ°ã¯åä¸ã®ãã­ã¥ã¡ã³ããæ¤ç´¢ã¤ã³ããã¯ã¹ã«è¿½å ããããã«å¿è¦ãªãã¹ã¦ã®ãã¨ãè¡ãå¿è¦ãããã¾ãã æ¤ç´¢ã¯ã¨ãªã¼ `q` ã«å¯¾ããæ¤ç´¢çµæãåå¾ããããã« :meth:`query` ã«ãã£ã¦å¼ã³åºããã¾ããããã¯ä»¥ä¸ã®ãã©ã¼ãããã«å¾ã£ã¦ãiterableãªã¿ãã«ãè¿ãå¿è¦ãããã¾ã:: doctreeãã¤ã³ããã¯ã¹ã«è¿½å ããããã«å¼ã°ãã¾ãã `doctree` ããã­ã¹ãã«å¤æãã :meth:`add_document` ã«æ¸¡ãã¾ãããããã `doctree` ã«ã¢ã¯ã»ã¹ããå¿è¦ããªãéãä¸æ¸ãããå¿è¦ã¯ãªãã¯ãã§ããä»£ããã« :meth:`add_document` ãä¸æ¸ããã¦ãã ããã æ¤ç´¢ã®ã¤ã³ãã¯ãµã¼ãåæåããããã«ãã«ãã¼ããå¼ã°ãã¾ãã `changed` ã¯åã¤ã³ããã¯ã¹ããããã¼ã¸ã®ãªã¹ãã§ããã¤ã³ããã¯ã¹ä½æãå§ã¾ãåã«æ¤ç´¢ã¤ã³ããã¯ã¹ããããããåãé¤ããã¨ãã§ãã¾ãã æ¸ãåºããå®äºããæã«ãã«ãã¼ããå¼ã°ãã¾ããããã¯ã¤ã³ããã¯ã¹ä½æãå®äºããå¾ã®å®äºå¦çãå¾çä»ãã«ä½¿ãã¾ãã æ¤ç´¢çµæãåå¾ããããã«Web support APIããå¼ã°ãã¾ãããã®é¢æ°ã¯ :meth:`extract_context <extract_context>` ã§ã³ã³ãã­ã¹ããå±éããæã«æ­£è¦è¡¨ç¾ãã³ã³ãã¤ã«ãããããã :meth:`handle_query` ãå¼ã³åºãã¾ãã :meth:`extract_context` ãå«ã¿ãããªãå ´åã«ã®ã¿ãã®é¢æ°ãä¸æ¸ãããã»ããããã§ããããä»£ããã« :meth:`handle_query` ãä¸æ¸ããã¦ãã ããã æ¤ç´¢ã¢ããã¿ã®ã¤ã³ã¿ãã§ã¼ã¹ãå®ç¾©ãã¦ãã¾ãã ãã­ã¥ã¡ã³ãã®å®å¨ãª `ãã­ã¹ã` ããæ¤ç´¢æå­åã«å¯¾ããã³ã³ãã­ã¹ããå±éãã¾ãã ã«ã¹ã¿ã ã®æ¤ç´¢ã¢ããã¿ãä½ãéã®ããè©³ããæå ±ã¯ãããããèª¬æãã :class:`BaseSearch` ã¯ã©ã¹ã®ãã­ã¥ã¡ã³ããåç§ãã¦ãã ããã æ¤ç´¢ã¢ããã¿ :meth:`extract_context` ã¡ã½ããã¯ `context` ãä½æããããã®ç°¡åãªæ¹æ³ã§ãã ãããã®ã¡ã½ãããBaseSearchã¯ã©ã¹ã«å®ç¾©ããã¦ãã¾ããããã¤ãã®ã¡ã½ããã¯ãªã¼ãã¼ã©ã¤ãããå¿è¦ã¯ããã¾ãããããµãã¯ã©ã¹ã§ãªã¼ãã¼ã©ã¤ãããªããã°ãªããªããã®(:meth:`~BaseSearch.add_document` , :meth:`~BaseSearch.handle_query`)ãããã¾ããçµã¿è¾¼ã¿ã®whooshæ¤ç´¢ã¢ããã¿ããåä½å¯è½ãªãµã³ãã«ã¨ãªã£ã¦ãã¾ãã ã«ã¹ã¿ã ã®æ¤ç´¢ã¢ããã¿ãä½æãããå ´åã«ã«ã¯ã :class:`BaseSearch` ã¯ã©ã¹ã®ãµãã¯ã©ã¹ãä½æããå¿è¦ãããã¾ãããã®å¾ãæ°ããã¯ã©ã¹ã®ã¤ã³ã¹ã¿ã³ã¹ãä½æãã :class:`~.WebSupport` ãªãã¸ã§ã¯ãã®ãä½ãæã«ã `search` ã­ã¼ã¯ã¼ãå¼æ°ã§æ¸¡ãã¾ã:: `pagename` ã¯ã¤ã³ããã¯ã¹ããããã¼ã¸ã®ååã§ããã½ã¼ã¹ãã¡ã¤ã«ã®ç¸å¯¾ãã¹ã¨ãã¡ã¤ã«åã¨æ¡å¼µå­ãé¤ãããã¡ã¤ã«åã®çµã¿åããã§ããä¾ãã°ãããã½ã¼ã¹ãã¡ã¤ã«ã "ext/builders.rst" ã®å ´åã `pagename` ã¯ "ext/builders" ã¨ãªãã§ããããããã¯æ¤ç´¢ã¯ã¨ãªãå¦çããæ¤ç´¢çµæã¨ãã¦ä½¿ããã¾ãã  `path` ã¨ `title` ã¯  :meth:`add_document` ã«æ¸¡ãããåãå¤ã§ããã `context` ã¯ãã­ã¥ã¡ã³ãåã§æ¤ç´¢ã¯ã¨ãªã¼æå­åã®å¨ãã«ããããã­ã¹ãã¹ããããã§ãã åã¤ã³ããã¯ã¹ããããã¼ã¸åã®ãªã¹ãã ãã®ãã¼ã¸ã®docutilsã®doctreeè¡¨ç¾ ã³ã³ãã­ã¹ãä½æã«ä½¿ãããããã­ã¥ã¡ã³ãã®å®å¨ãªãã­ã¹ã ãã®ãã¼ã¸ã®å®å¨ãªãã­ã¹ãã è¿å´ããã³ã³ãã­ã¹ãã®ã¹ããããã®é·ãã ã¤ã³ããã¯ã¹ããããã¼ã¸ã®ååã ã¤ã³ããã¯ã¹ããããã¼ã¸ã®ååã ãã®ãã¼ã¸ã®ã¿ã¤ãã«ã æ¤ç´¢ã¯ã¨ãªã¼ æ¤ç´¢ã¯ã¨ãªã¼æå­åã ã¤ã³ããã¯ã¹ããããã¼ã¸ã®ã¿ã¤ãã«ã 