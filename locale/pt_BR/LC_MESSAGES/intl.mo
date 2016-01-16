��    H      \              �  *   �  �   �  &   �  �   �    �  L   �  L   !  /   n  ,   �  &   �  )   �  �   	  �   �	  W   �
  ,     "   L  G   o  �   �  6   c  �  �  9   o  	   �     �  $   �  :   �       !   "  �   D  �   0  �   �  �   W  d   ,     �     �     �  W   �  1   7     i  *   u     �  �   �  C   C  .   �      �  #   �     �  t     A   |  �   �  �   �  �   0  �   �  p   {  =   �     *  $   6     [  %   x  %   �  ,   �  <   �  |   .  ?   �  s   �     _     z  8   �     �  �   �     q  >   �  �  �  )   q  �   �  /      	  �     �!  W   �"  W   0#  :   �#  2   �#  A   �#  5   8$  �   n$  
  C%  F   N&  /   �&  &   �&  B   �&  �   /'  5   �'  +  (  =   B*     �*     �*  #   �*  D   �*  +  +  "   3,  �   V,  �   >-  �   	.    �.  n   �/     0     70     M0  e   g0  :   �0     1  2   1  M   H1  �   �1  N   !2  5   p2  )   �2  (   �2     �2  �   3  A   �3  �   �3  �   �4  �   �5  �   6  r   �6  J   :7  
   �7  $   �7     �7  3   �7  0   8  0   58  F   f8  w   �8  M   %9  {   s9     �9     
:  8   %:     ^:  �   {:     ;  >   0;   (after acceptance) translate on transifex. **gettext** [1]_ is an established standard for internationalization and localization.  It naively maps messages in a program to a translated string. Sphinx uses these facilities to translate whole documents. Add configurations to your `conf.py`:: After Sphinx successfully ran the :class:`~sphinx.builders.gettext.MessageCatalogBuilder` you will find a collection of ``.pot`` files in your output directory.  These are **catalog templates** and contain messages in your original language *only*. An example: you have a document ``usage.rst`` in your Sphinx project.  The gettext builder will put its messages into ``usage.pot``.  Imagine you have Spanish translations [2]_ on your hands in ``usage.po`` --- for your builds to be translated you need to follow these instructions: Another case, msgid is multi-line text and contains reStructuredText syntax: As a result, many pot files are generated under ``_build/locale`` directory. Because nobody expects the Spanish Inquisition! Build mo files and make translated document. Build po files into mo and make html:: Click ``Request language`` and fill form. Compile your message catalog to a locale directory, say ``locale``, so it ends up in ``./locale/es/LC_MESSAGES/usage.mo`` in your source directory (where ``es`` is the language code for Spanish.) :: Complementary to translations provided for Sphinx-generated messages such as navigation bars, Sphinx provides mechanisms facilitating *document* translations in itself.  See the :ref:`intl-options` for details on configuration. Congratulations! You got the translated documentation in the ``_build/html`` directory. Contributing to Sphinx reference translation Create config files for tx command Create your transifex_ account and create new project for your document Currently, transifex does not allow for a translation project to have more than one version of the document, so you'd better include a version number in your project name. Done. You got these directories that contain po files: Every single element in the doctree will end up in a single message which results in lists being equally split into different chunks while large paragraphs will remain as coarsely-grained as they were in the original document.  This grants seamless document updates while still providing a little bit of context for translators in free-text passages.  It is the maintainer's task to split up paragraphs which are too large as there is no sane automated way to do that. Extract document's translatable messages into pot files:: Footnotes For example: Forward the translation on transifex Get translated catalogs and build mo files (ex. for 'de'): Gettext compiles them into a binary format known as **binary catalogs** through :program:`msgfmt` for efficiency reasons.  If you make these files discoverable with :confval:`locale_dirs` for your :confval:`language`, Sphinx will pick them up automatically. Go to `sphinx translation page`_. If a document is updated, it is necessary to generate updated pot files and to apply differences to translated po files. In order to apply the updating difference of a pot file to po file, use the :command:`sphinx-intl update` command. If you want to push all language's po files, you can be done by using :command:`tx push -t` command. Watch out! This operation overwrites translations in transifex. In other words, if you have updated each in the service and local po files, it would take much time and effort to integrate them. Initially project maintainers have to collect all translatable strings (also referred to as *messages*) to make them known to translators.  Sphinx extracts these through invocation of ``sphinx-build -b gettext``. Install `sphinx-intl`_ by :command:`pip install sphinx-intl` or :command:`easy_install sphinx-intl`. Install `transifex-client`_ Internationalization Login to transifex_ service. Please be careful not to break reST notation.  Most po-editors will help you with that. Pull translated po files and make translated html Quick guide Register pot files to ``.tx/config`` file: Run your desired build. See the `GNU gettext utilites <http://www.gnu.org/software/gettext/manual/gettext.html#Introduction>`_ for details on that software suite. Set :confval:`language` to ``es`` (also possible via :option:`-D`). Set :confval:`locale_dirs` to ``["locale/"]``. Setup/Update your `locale_dir`:: Sphinx internationalization details That's all! The recommended way for new contributors to translate Sphinx reference is to join the translation team on Transifex. There is `sphinx translation page`_ for Sphinx-1.2 documentation. They can be delivered to translators which will transform them to ``.po`` files --- so called **message catalogs** --- containing a mapping from the original messages to foreign-language strings. This case-study assumes that :confval:`locale_dirs` is set to 'locale/' and :confval:`gettext_compact` is set to `False` (the Sphinx document is already configured as such). This process will create ``.tx/config`` in the current directory, as well as a ``~/.transifexrc`` file that includes auth information. Transifex_ is one of several services that allow collaborative translation via a web interface.  It has a nifty Python-based command line client that makes it easy to fetch and push translations. Translate po file under ``./locale/de/LC_MESSAGES`` directory. The case of builders.po file for sphinx document: Translate your po files under `./locale/<lang>/LC_MESSAGES/`. Translating Translating locally and on Transifex Translating with sphinx-intl Update your po files by new pot files Upload pot files to transifex service Using Transifex service for team translation Wait acceptance by transifex sphinx translation maintainers. Workflow visualization of translations in Sphinx.  (The stick-figure is taken from an `XKCD comic <http://xkcd.com/779/>`_.) You need :command:`tx` command to upload resources (pot files). You need a :confval:`language` parameter in ``conf.py`` or you may also specify the parameter on the command line:: `./locale/de/LC_MESSAGES/` `./locale/ja/LC_MESSAGES/` `Transifex Client v0.8 &mdash; Transifex documentation`_ ``sphinx-document-test_1_0`` `sphinx-intl`_ is a useful tool to work with Sphinx translation flow. This section describe a easy way to translate with sphinx-intl. and upload pot files: https://www.transifex.com/projects/p/sphinx-document-test_1_0/ Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2015-04-06 06:20+0000
Last-Translator: Takayuki Shimizukawa <shimizukawa@gmail.com>
Language-Team: Portuguese (Brazil) (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/pt_BR/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 (após aceitação) traduza no transifex. **gettext** [1]_ é um padrão para internacionalização e localização (acepção sua localidade).  Nativamente mapeia mensagens em um programa para uma frase traduzida. Sphinx usa essas facilidades para todos os documentos. Adicionar personalizações em seu  `conf.py`:: Após o Sphinx executar :class:`~sphinx.builders.gettext.MessageCatalogBuilder` será encontrada uma coleção de arquivos  ``.pot`` em seu diretório de saida. Essas mensagens são chamadas de **catálogos modelo** e *só* contêm mensagens no seu idioma original. Como exemplo: Um documento ``usage.rst`` em seu Projeto Sphinx. O construtor gettext irá colocar suas mensagens em ``usage.pot``. Imagine que hajam traduções em Espanhol [2]_ em suas mãos, ``usage.po`` --- para suas montagens (builds) que serão traduzidas seguindo as instruções: Outro caso, msgid possui múltiplas linhas de texto e contém sintaxe reStructuredText: Como resultado, diversos arquivos pot serão gerados sob o diretório ``_build/locale`` Porque ninguém espera encontrar a Inquisição Espanhola! Construa seus arquivos mo e o documento traduzido. Construir arquivos mo a partir de arquivos mo e torná-los html:: Clique ``Request language`` e preencha o formulário. Compilar catálogo de mensagem em um diretório específico, digamos ``locale`` o qual irá ficar em ``./locale/es/LC_MESSAGES/usage.mo`` em seu diretório fonte (onde ``es`` is the language code for Spanish.) :: Complementarmente às traduções fornecidas pelas mensagens geradas pelo Sphinx, algumas barras e botões de navegação, Sphinx provê mecanismos para facilitar a tradução propriamente dita do *documento*. Ver :ref:`intl-options`  para detalhes na configuração Parabéns! O documento traduzido está no diretório  ``_build/html``. Contribuindo para tradução Referência Sphinx Criar arquivos config para comandos tx Criar sua conta transifex_ e criar novo projeto para seu documento Atualmente transifex não permite a tradução de um projeto que tenha mais de uma versão de documento, por isso é melhor incluir o número da versão em seu nome de projeto. Feito. Nesses diretórios já teremos os arquivos po: Cada simples elemento do (doctree raíz do documento) irá gerar uma simples mensagem a qual resultará em listas que serão igualmente quebradas em diferentes fragmentos, enquanto grandes parágrafos irão permanecer formatados como no documento original. Isso permite atualizações perfeitas dos documentos, enquanto são mantidos os contextos que os tradutores precisam para traduzir livremente os conteúdos.  A tarefa do mantenedor é quebrar em parágrafos não muito longos para que isso seja racional, pois não há nenhuma automação para isso. Extraia os documentos que serão traduzidos em arquivos pot:: Notas de Rodapé Por exemplo: Avançar na tradução no transifex Obter catálogos traduzidos e construir arquivos mo (ex. para 'de'): Gettext compila esses arquivos em formato binário, conhecidos como **catálogos binários** através do :program:`msgfmt`  por razões e eficiência. O Sphinx pode reconhecer e usar esses arquivos automaticamente, basta declarar sua localidade :confval:`locale_dirs` e seu idioma :confval:`language Ir para sphinx translation page`_. Se um documento foi atualizado, será necessário gerar novos arquivos pot e aplicar as diferenças nos arquivos po. Para aplicar uma atualização diferente de um arquivo pot em um arquivo po, utilize :command:`sphinx-intl update` Se for necessário baixar todos os arquivos po de todos idiomas, isso pode ser feito usando o comando :command:`tx push -t`. Olhos abertos! Essa operação sobrepõe traduções existentes no transifex. Em outras palavras, caso tenha atualizado cada um deles via serviço transifex e arquivos locais po, pode ser necessário muito esforço para integrá-los. Inicialmente os mantenedores do projeto, coletam todas as palavras ou frases que serão traduzidas (também referidas como *mensagens*) para torná-las conhecidas para os tradutores. Sphinx extraí isso através da chamado do comando ``sphinx-build -b gettext``. Instalar `sphinx-intl`_ através de :command:`pip install sphinx-intl` ou :command:`easy_install sphinx-intl`. Install `transifex-client`_ Internacionalização Login serviço tranfifex_ Preste muita atenção para não quebrar a notação reST. Editores de arquivo po ajudam muito nisso. Baixar arquivos po traduzidos e torná-los html traduzidos Guia Rápido Registrar arquivos pot para arquivo ``.tx/config`` Execute sua montagem (executar sphinx para construir seu documento) desejada. See the `GNU gettext utilites <http://www.gnu.org/software/gettext/manual/gettext.html#Introduction>`_ for details on that software suite. Assinale :confval:`language` para ``es`` (também possível via :option:`-D`). Assinale :confval:`locale_dirs` para ``["locale/"]``. Configurar / Atualizar seu `locale_dir`:: Detalhes da Internacionalização Sphinx Isso é tudo, Pessoal! A maneira que recomendamos para novos contribuidores para traduzir o Sphinx é juntar-se a equipe e tradução do seu idioma do Transifex. There is `sphinx translation page`_ for Sphinx-1.2 documentation. Esses arquivos são enviados para os tradutores que irão transformá-los em arquivos ``.po`` --- chamados **catálogos de mensagens** --- contendo um mapeamento das mensagens originais para palavras-frases na língua estrangeira. Nesse exemplo assume que :confval:`locale_dirs` está definido para  'locale/' e :confval:`gettext_compact` está definido para `False` (Documento Sphinx por padrão são configurados assim). Esse processo irá criar `.tx/config``  no diretório corrente, bem como um arquivo ``~/.transifexrc`` que inclui informação de auth. Transifex_ é um dos diversos serviços que permite tradução colaborativa via interface web. Possui diversos comandos Python base que permite que clientes baixem e devolvam traduções Traduzindo arquivo po sob ``./locale/de/LC_MESSAGES``.  Case de construtores de arquivo po para documentos Sphinx: Traduza seues arquivos po sob o diretório `./locale/<lang>/LC_MESSAGES/`. Traduzindo Traduzindo localmente e no Transifex Traduzindo com sphinx-intl Atualize seus arquivos po com os novos arquivos pot Upload de arquivos pot para o serviço transifex Usando o Serviço Transifex para time tradutotes Aguarde o retorno com a aceitação vinda dos mantenedores do projeto. Fluxo de Trabalho para visualizar traduções no Sphinx.  (A figura é obtida em `XKCD comic <http://xkcd.com/779/>`_.) Utilizar o comando  :command:`tx` para fazer upload de recursos arquivos pot. É necessário o parâmetro :confval:`language` em ``conf.py`` ou pode ser especificado um parâmetro na linha de comando:: `./locale/de/LC_MESSAGES/` `./locale/ja/LC_MESSAGES/` `Transifex Client v0.8 &mdash; Transifex documentation`_ ``sphinx-document-test_1_0`` `sphinx-intl`_ is é uma ferramenta fluxo de trabalho de uma tradução com Sphinx.  Essa seção descreve uma maneira fácil de traduzir usando sphinx-intl. e upload arquivos pot: https://www.transifex.com/projects/p/sphinx-document-test_1_0/ 