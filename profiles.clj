{:user {:mirrors {"central" {:name "aliyun"
                             :url "https://maven.aliyun.com/repository/public"}
                  "clojars" {:name "tsinghua"
                             :url "https://mirrors.tuna.tsinghua.edu.cn/clojars/"}}}
 :repl {:plugins [[cider/cider-nrepl "0.28.4"
                   :exclusions [org.clojure/clojure]]
                  [mx.cider/enrich-classpath "1.9.0"
                   :exclusions [org.clojure/clojure]]]}}
