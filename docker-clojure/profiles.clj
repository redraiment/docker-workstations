{:user {:mirrors {"aliyun" {:name "aliyun"
                            :url "https://maven.aliyun.com/repository/public"}
                  "clojars" {:name "tsinghua"
                             :url "https://mirrors.tuna.tsinghua.edu.cn/clojars/"}
                  "central" {:name "maven central"
                             :url "https://repo.maven.apache.org/maven2"}}}
 :repl {:plugins [[cider/cider-nrepl "0.28.4"
                   :exclusions [org.clojure/clojure]]
                  [mx.cider/enrich-classpath "1.9.0"
                   :exclusions [org.clojure/clojure]]]}}
