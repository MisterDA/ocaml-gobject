module C = Configurator.V1

let () =
  C.main ~name:"gobject" (fun c ->
      let default : C.Pkg_config.package_conf =
        { libs   = ["-lglib-2.0"]
        ; cflags = []
        }
      in
      let conf =
        match C.Pkg_config.get c with
        | None -> default
        | Some pc ->
           match (C.Pkg_config.query pc ~package:"glib-2.0") with
           | None -> default
           | Some deps -> deps
      in

      let () = List.iter print_endline conf.cflags in

      C.Flags.write_sexp "c_flags.sexp"         conf.cflags;
      C.Flags.write_sexp "c_library_flags.sexp" conf.libs)
