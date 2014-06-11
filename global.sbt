credentials += Credentials(Path.userHome / ".credentials")

shellPrompt in Global := { state =>
  val extracted = Project.extract(state)
  import extracted._
  (name in currentRef get structure.data).map { name =>
    s"\033]0;sbt • $name\007\033[32m$name\033[0m \033[34m▶\033[0m "
  }.getOrElse("▶ ")
}

{
  val resetTerminalTitle = (s: State) => s.addExitHook { print("\033]0;\007") }
  onLoad in Global := {
    val previous = (onLoad in Global).value
    resetTerminalTitle compose previous
  }
}
