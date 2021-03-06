(use-package hydra
    :ensure t)

(defhydra hydra-change-mode-j (:color blue :body-pre (insert "j") :idle 1.0)
  ("k" (progn
         (delete-char -1)
         (evil-normal-state))))
(define-key evil-insert-state-map (kbd "j") 'hydra-change-mode-j/body)


(defhydra hydra-change-mode-f (:color blue :body-pre (insert "f") :idle 1.0)
  ("d" (progn
         (delete-char -1)
         (evil-normal-state))))
(define-key evil-insert-state-map (kbd "f") 'hydra-change-mode-f/body)





(provide 'vim-hydra)
