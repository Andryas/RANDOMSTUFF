;; ATTENTION: Run it in terminal in batch mode.
;;   emacs --script install-packages.el

(require 'package)
(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-list-packages)

;; Runs the installation of each package.
(package-install 'solarized-theme)
(package-install 'helm)
(package-install 'ess)
(package-install 'smartparens)
(package-install 'company)
(package-install 'yafolding)
(package-install 'auto-complete)
(package-install 'neotree)
(package-install 'multiple-cursors)
(package-install 'move-text)
(package-install 'key-comb)
(package-install 'imenu-list)

