resource "zfs_dataset" "homedir" {
  name = "dpool/DATA/myuser"
  mountpoint {
    path = "/home/myuser"
    uid  = 2519
    gid  = 2519
  }
  properties = {
    compression = "zstd-fast"
  }
}
