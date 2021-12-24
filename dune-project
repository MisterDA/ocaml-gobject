(lang dune 2.9)
(name gi-gobject)
(formatting disabled)
(generate_opam_files true)
(use_standard_c_and_cxx_flags true)
(source (github ManasJayanth/ocaml-gobject))
(authors "Manas Jayanth <prometheansacrifice@gmail.com>")
(maintainers "Manas Jayanth <prometheansacrifice@gmail.com>")
(license "GPL-3.0-or-later")
(package
 (name gi-gobject)
 (synopsis "OCaml bindings (auto-generated using gi-bindings-generator) for GObject")
 (depends
  (dune-configurator :build)
  (sexplib0 :build)
  ctypes
  ctypes-foreign
  gi-glib2
  (ounit2 :with-test)))
