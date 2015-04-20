(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(require 'evil)
;;(evil-mode 1)
(define-key evil-insert-state-map (kbd "RET") #'reindent-then-newline-and-indent)
