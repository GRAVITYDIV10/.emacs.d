(setq package-archives '(("gnu"    . "http://mirrors.bfsu.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.bfsu.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.bfsu.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f5661fd54b1e60a4ae373850447efc4158c23b1c7c9d65aa1295a606278da0f8" default))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages '(eglot yaml company yaml-mode dts-mode))
 '(size-indication-mode t)
 '(tab-bar-mode t)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Unifont" :foundry "PfEd" :slant normal :weight medium :height 120 :width normal)))))

(load-theme 'modus-operandi)
(ido-mode 1)
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c-mode-hook 'company-mode)


(require 'ox-publish)
(defvar blog-path (concat (getenv "HOME") "/work/gravitydiv10.github.io"))
(defvar blog-base-directory (concat blog-path "/"))
(defvar blog-publishing-directory (concat blog-path "/"))

(setq org-html-metadata-timestamp-format "%Y-%m-%d")
(setq org-publish-project-alist
      `(("blog"
         :base-extension "org"
         :base-directory ,blog-base-directory
         :publishing-directory ,blog-publishing-directory
         :publishing-function org-html-publish-to-html
         :recursive t

         ;; Disable some defaults
         :html-link-home ""
         :html-link-up ""
         :html-head-include-default-style nil
         :html-head-include-scripts nil
         :html-preamble nil
         :html-postamble nil

         ;; Custom options
         :headline-levels 4
         :language "en"
         :html-html5-fancy t
         :with-date t
         :with-emphasize t              ; *:t
         :with-smart-quotes t           ; *:t
         :with-sub-superscript nil      ; ^:nil
         :with-toc nil                  ; toc:nil
         :section-numbers nil           ; num:nil
         :html-postamble "<p>Last updated: %C</p>"
         :html-wrap-src-lines t)))

(set-default-coding-systems 'utf-8)

(server-start)
