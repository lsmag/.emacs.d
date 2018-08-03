

;;; Code:
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
	("marmalade" . "https://marmalade-repo.org/packages/")
	("melpa" . "https://melpa.org/packages/")
	("org" . "http://orgmode.org/elpa/")))

(require 'package)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
(unless (package-installed-p 'org)
  (package-install 'org))

(require 'org)
(setq lsmag/settings-org-file "settings.org")
(setq lsmag/settings-org-path
      (expand-file-name
       (concat user-emacs-directory lsmag/settings-org-file)))
(org-babel-load-file lsmag/settings-org-path)
