print (
  sys host
  | reject kernel_version long_os_version
  # | insert user $env.USER
)
