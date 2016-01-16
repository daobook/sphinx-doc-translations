��          |               �   ?   �        z   &  �   �  >   N    �  �   �  /   N  1   ~  P   �  J     �  L  ?   �       z     �   �  >   F    �  �   �	  /   F
  1   v
  P   �
  J   �
   :mod:`sphinx.ext.linkcode` -- Add external links to source code Example: In your configuration, you need to specify a :confval:`linkcode_resolve` function that returns an URL based on the object. The argument ``domain`` specifies the language domain the object is in. ``info`` is a dictionary with the following keys guaranteed to be present (dependent on the domain): The function should return ``None`` if no link is to be added. This extension looks at your object descriptions (``.. class::``, ``.. function::`` etc.) and adds external links to code hosted somewhere on the web. The intent is similar to the ``sphinx.ext.viewcode`` extension, but assumes the source code can be found somewhere on the Internet. This is a function ``linkcode_resolve(domain, info)``, which should return the URL to source code corresponding to the object in given domain with given information. ``c``: ``names`` (list of names for the object) ``cpp``: ``names`` (list of names for the object) ``javascript``: ``object`` (name of the object), ``fullname`` (name of the item) ``py``: ``module`` (name of the module), ``fullname`` (name of the object) Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2013-01-28 12:44+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Spanish (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/es/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 :mod:`sphinx.ext.linkcode` -- Add external links to source code Example: In your configuration, you need to specify a :confval:`linkcode_resolve` function that returns an URL based on the object. The argument ``domain`` specifies the language domain the object is in. ``info`` is a dictionary with the following keys guaranteed to be present (dependent on the domain): The function should return ``None`` if no link is to be added. This extension looks at your object descriptions (``.. class::``, ``.. function::`` etc.) and adds external links to code hosted somewhere on the web. The intent is similar to the ``sphinx.ext.viewcode`` extension, but assumes the source code can be found somewhere on the Internet. This is a function ``linkcode_resolve(domain, info)``, which should return the URL to source code corresponding to the object in given domain with given information. ``c``: ``names`` (list of names for the object) ``cpp``: ``names`` (list of names for the object) ``javascript``: ``object`` (name of the object), ``fullname`` (name of the item) ``py``: ``module`` (name of the module), ``fullname`` (name of the object) 