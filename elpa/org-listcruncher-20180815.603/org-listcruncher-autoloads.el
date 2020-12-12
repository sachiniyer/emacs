;;; org-listcruncher-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-listcruncher" "org-listcruncher.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from org-listcruncher.el

(autoload 'org-listcruncher-mk-parseitem-default "org-listcruncher" "\
List item default parsing function generator for org-listcruncher.

This generator can be used to produce a family of parsing
functions with similar structure. It returns a parsing function
that will take a list item line as its only argument.

The generated parsing functions all share the following features.
1. Whether a list item will become a table row is defined by a matching
   TAG at the beginning of the list item. Default is \"item:\" and allowing
   for org bold markers.
2. The row's description is defined by the string following the TAG up to
   a) a character contained in the ENDTAG argument or
   b) the opening parenthesis BRA used for beginning the key/value pairs.
   The default for ENDTAG is \".\".
3. The key/value pairs are separated by commas, and a key is separated from
   its value by a colon key1: val1, key2: val2. The default brackets are
   \"(\" and \")\".

The resulting function can be modified by the following keyword arguments:
- :tag REGEXP defines the TAG used for identifying whether a line will become
  a table row.
- :endtag STRING: Each character contained in that string will act as a terminator
  for the description of an item.
- The :bra and :ket keywords can be used to define strings defining the opening
  and closing parentheses to be used for enclosing the key/value pairs
  The given strings will get regexp quoted.

\(fn &key (TAG \"\\=\\\\=\\*?item:\\=\\\\=\\*?\") (ENDTAG \".\") (BRA \"(\") (KET \")\"))" nil nil)

(autoload 'org-listcruncher-to-table "org-listcruncher" "\
Return a table structure based on parsing the Org list with name LISTNAME.

Optional keyword arguments: The user may use the :parsefn
FUNCTION argument to define another parsing function for the list
items.  The :order keyword takes a list containing column names as
its argument for defining the output table's desired columns
order. The list may contain only a subset of the items.  The
remaining columns will be added in the original order.

\(fn LISTNAME &key (PARSEFN org-listcruncher-parse-fn) (ORDER nil))" nil nil)

(autoload 'org-listcruncher-get-field "org-listcruncher" "\
Return field defined by ROW,COL from the table derived from LISTNAME.

The given list with LISTNAME is parsed by listcruncher to obtain a table.
The field is defined by the two strings for ROW and COL, where the ROW string
corresponds to the contents of the item's \"description\" column and the COL
string corresponds to the column's name.

\(fn LISTNAME ROW COL &key (PARSEFN org-listcruncher-parse-fn))" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-listcruncher" '("org-listcruncher-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-listcruncher-autoloads.el ends here
