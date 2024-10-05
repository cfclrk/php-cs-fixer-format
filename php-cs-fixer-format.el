;;; php-cs-fixer-format.el --- Reformat PHP code using php-cs-fixer -*- lexical-binding: t -*-

;; Version: 0.0.1
;; Package-Requires: ((reformatter "0.8"))

;;; Commentary:

;; Reformatter for PHP using php-cs-fixer.

;;; Code:

(require 'reformatter)

(defgroup php-cs-fixer-format nil
  "PHP reformatting using php-cs-fixer."
  :group 'php)

(defcustom php-cs-fixer-format-command "php-cs-fixer"
  "Command used for reformatting."
  :group 'php-cs-fixer-format
  :type 'string)

(defcustom php-cs-fixer-format-arguments nil
  "Arguments to pass to php-cs-fixer."
  :group 'php-cs-fixer-format
  :type '(repeat string))

(reformatter-define php-cs-fixer-format
  :stdin nil
  :stdout nil
  :program php-cs-fixer-format-command
  :args (append '("fix") php-cs-fixer-format-arguments (list input-file))
  :lighter " php-cs-fixer"
  :group 'php-cs-fixer-format)

(provide 'php-cs-fixer-format)

;;; php-cs-fixer-format.el ends here
