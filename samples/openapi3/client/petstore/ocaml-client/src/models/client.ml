(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    client: string option;
} [@@deriving yojson, show ];;

let create () : t = {
    client = None;
}

