(ue-ensure-installed '(sql-indent))

(eval-after-load "sql"
  '(load-library "sql-indent"))


(defvar ue-sql-enabled t)
(provide 'ue-sql)
