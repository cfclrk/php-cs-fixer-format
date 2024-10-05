# php-cs-fixer-format

An Emacs package to format PHP code using [php-cs-fixer][1].

This packages using [emacs-reformatter][2].

[1]: https://github.com/PHP-CS-Fixer/PHP-CS-Fixer
[2]: https://github.com/purcell/emacs-reformatter

## Example usage

```emacs-lisp
(use-package php-cs-fixer-format
  :ensure (php-cs-fixer-format
           :host github
           :repo "cfclrk/php-cs-fixer-format")
  :config
  (setq php-cs-fixer-format-arguments
        (list "--config" (expand-file-name "~/.php-cs-fixer.php"))))
```

## Configuration

### php-cs-fixer-format-arguments

A list of arguments that are passed to the `php-cs-fixer fix` command. Defaults to `nil`.
