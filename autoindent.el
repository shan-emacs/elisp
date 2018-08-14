(require 'find-lisp)

(defun indent-file (file-name)
  (save-window-excursion
    (find-file file-name)
    (indent-region (point-min) (point-max))
    (save-buffer "!")))


(mapc 'indent-file (find-lisp-find-files "~/test" "\\.html$"))
