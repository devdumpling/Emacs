;Devon Wells' Emacs configuration                                                                                                                                                                                                         
 
(setq inhibit-startup-message t)          ;TURNS OFF THE STARTUP MESSAGE ON EMACS STARTUP                                                                                                                                                 
(add-to-list 'load-path "/Users/negtrooper1/") ; ADDS HOME DIRECTORY TO LOAD-PATH                                                                                                                                                         
(require 'linum) ;REQUIRES LINUM FOR NUMBERING LINES IN EMACS VIA M-x linum-mode or M-x global-linum-mode                                                                                                                                 
(global-linum-mode 1) ;TURNS ON GLOBAL LINE NUMBERING ON STARTUP                                                                                                                                                                          

;Put backups in a special directory                                                                                                                                                                                                       
(setq backup-directory-alist '(("." . "~/.backup_saves")))
(setq auto-save-file-name-transforms `((".*" ,"~/.backup_saves" t)))

;; C# mode.                                                                                                                                                                                                                               
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

(defun set-csharp-mode-tabs ()
  (require 'flymake)
  (setq indent-tabs-mode t)
  (c-set-style "C#")
  (setq c-basic-offset 8)
  (setq tab-width 8))
(add-hook 'csharp-mode-hook 'set-csharp-mode-tabs)

; Makes CMD key the meta key                                                                                                                                                                                                              
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;For AUCTEX                                                                                                                                                                                                                               
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;Color Themes yo                                                                                                                                                                                                                          
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized-master")
(load-theme 'solarized-dark t)
