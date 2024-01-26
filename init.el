(setq package-archives '(("gnu"    . "http://mirrors.bfsu.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.bfsu.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.bfsu.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages '(company yaml-mode dts-mode))
 '(size-indication-mode t)
 '(tab-bar-mode t))
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
