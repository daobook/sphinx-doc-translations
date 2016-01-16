��          �               �     �  �   �  �   �  �   $  �     �   �  R  _  )   �  I   �  �   &     �  W   �      �   ,	  2  
  �   F  +   �  2   *  7   ]     �  ,   �  "   �  "   �     "     3     D  #   ]  �  �     
  �     �   �  �   Q  �   E  �     R  �  )   �  I   	  �   S     �  W   �    =  �   Y  2  @  �   s  +   +  2   W  7   �     �  ,   �  "   	  "   ,     O     `     q  #   �   BaseSearch Methods Called by :meth:`feed` to add a document to the search index. This method should should do everything necessary to add a single document to the search index. Called by :meth:`query` to retrieve search results for a search query `q`. This should return an iterable containing tuples of the following format:: Called by the builder to add a doctree to the index. Converts the `doctree` to text and passes it to :meth:`add_document`. You probably won't want to override this unless you need access to the `doctree`. Override :meth:`add_document` instead. Called by the builder to initialize the search indexer. `changed` is a list of pagenames that will be reindexed. You may want to remove these from the search index before indexing begins. Called by the builder when writing has been completed. Use this to perform any finalization or cleanup actions after indexing is complete. Called by the web support api to get search results. This method compiles the regular expression to be used when :meth:`extracting context <extract_context>`, then calls :meth:`handle_query`.  You won't want to override this unless you don't want to use the included :meth:`extract_context` method.  Override :meth:`handle_query` instead. Defines an interface for search adapters. Extract the context for the search query from the document's full `text`. For more information about creating a custom search adapter, please see the documentation of the :class:`BaseSearch` class below. Search Adapters The :meth:`extract_context` method is provided as a simple way to create the `context`. The following methods are defined in the BaseSearch class. Some methods do not need to be overridden, but some (:meth:`~BaseSearch.add_document` and :meth:`~BaseSearch.handle_query`) must be overridden in your subclass. For a working example, look at the built-in adapter for whoosh. To create a custom search adapter you will need to subclass the :class:`BaseSearch` class.  Then create an instance of the new class and pass that as the `search` keyword argument when you create the :class:`~.WebSupport` object:: `pagename` is name of the page being indexed. It is the combination of the source files relative path and filename, minus the extension. For example, if the source file is "ext/builders.rst", the `pagename` would be "ext/builders". This will need to be returned with search results when processing a query. `path` and `title` are the same values that were passed to :meth:`add_document`, and `context` should be a short text snippet of the text surrounding the search query in the document. a list of pagenames that will be re-indexed is the docutils doctree representation of the page the full text of the document to create the context for the full text of the page the length of the context snippet to return. the name of the page being indexed the name of the page to be indexed the page's title the search query the search query string. the title of the page to be indexed Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2013-01-28 12:46+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Spanish (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/es/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 BaseSearch Methods Called by :meth:`feed` to add a document to the search index. This method should should do everything necessary to add a single document to the search index. Called by :meth:`query` to retrieve search results for a search query `q`. This should return an iterable containing tuples of the following format:: Called by the builder to add a doctree to the index. Converts the `doctree` to text and passes it to :meth:`add_document`. You probably won't want to override this unless you need access to the `doctree`. Override :meth:`add_document` instead. Called by the builder to initialize the search indexer. `changed` is a list of pagenames that will be reindexed. You may want to remove these from the search index before indexing begins. Called by the builder when writing has been completed. Use this to perform any finalization or cleanup actions after indexing is complete. Called by the web support api to get search results. This method compiles the regular expression to be used when :meth:`extracting context <extract_context>`, then calls :meth:`handle_query`.  You won't want to override this unless you don't want to use the included :meth:`extract_context` method.  Override :meth:`handle_query` instead. Defines an interface for search adapters. Extract the context for the search query from the document's full `text`. For more information about creating a custom search adapter, please see the documentation of the :class:`BaseSearch` class below. Search Adapters The :meth:`extract_context` method is provided as a simple way to create the `context`. The following methods are defined in the BaseSearch class. Some methods do not need to be overridden, but some (:meth:`~BaseSearch.add_document` and :meth:`~BaseSearch.handle_query`) must be overridden in your subclass. For a working example, look at the built-in adapter for whoosh. To create a custom search adapter you will need to subclass the :class:`BaseSearch` class.  Then create an instance of the new class and pass that as the `search` keyword argument when you create the :class:`~.WebSupport` object:: `pagename` is name of the page being indexed. It is the combination of the source files relative path and filename, minus the extension. For example, if the source file is "ext/builders.rst", the `pagename` would be "ext/builders". This will need to be returned with search results when processing a query. `path` and `title` are the same values that were passed to :meth:`add_document`, and `context` should be a short text snippet of the text surrounding the search query in the document. a list of pagenames that will be re-indexed is the docutils doctree representation of the page the full text of the document to create the context for the full text of the page the length of the context snippet to return. the name of the page being indexed the name of the page to be indexed the page's title the search query the search query string. the title of the page to be indexed 