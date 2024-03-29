(asdf:defsystem "TEMPLATE"
  :description "TEMPLATE"
  :version "0.0.0"
  :author "Gleefre <varedif.a.s@gmail.com>"
  :licence "Apache 2.0"

  :depends-on ("uiop"
               "sketch" "sketch-utils"
               "stopclock"
               "easing"
               "alexandria" "serapeum"
               "deploy"
               "harmony" "cl-mixed-vorbis"
               #+(and linux (not android)) "cl-mixed-pulse"
               #+android "cl-mixed-aaudio"
               #+darwin "cl-mixed-coreaudio"
               #+windows "cl-mixed-wasapi"
               #+bsd "cl-mixed-oss")

  :pathname "src"
  :serial T
  :components ((:file "packages")
               (:file "specials")
               (:file "utils")
               (:file "music")
               (:file "gameplay")
               (:file "draw")
               (:file "game"))

  :defsystem-depends-on (:deploy)
  :build-operation #-darwin "deploy-op" #+darwin "osx-app-deploy-op"
  :build-pathname "TEMPLATE"
  :entry-point "TEMPLATE:start-toplevel")
